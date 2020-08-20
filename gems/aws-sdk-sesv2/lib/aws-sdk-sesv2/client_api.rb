# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SESV2
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountDetails = Shapes::StructureShape.new(name: 'AccountDetails')
    AccountSuspendedException = Shapes::StructureShape.new(name: 'AccountSuspendedException')
    AdditionalContactEmailAddress = Shapes::StringShape.new(name: 'AdditionalContactEmailAddress')
    AdditionalContactEmailAddresses = Shapes::ListShape.new(name: 'AdditionalContactEmailAddresses')
    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BehaviorOnMxFailure = Shapes::StringShape.new(name: 'BehaviorOnMxFailure')
    BlacklistEntries = Shapes::ListShape.new(name: 'BlacklistEntries')
    BlacklistEntry = Shapes::StructureShape.new(name: 'BlacklistEntry')
    BlacklistItemName = Shapes::StringShape.new(name: 'BlacklistItemName')
    BlacklistItemNames = Shapes::ListShape.new(name: 'BlacklistItemNames')
    BlacklistReport = Shapes::MapShape.new(name: 'BlacklistReport')
    BlacklistingDescription = Shapes::StringShape.new(name: 'BlacklistingDescription')
    Body = Shapes::StructureShape.new(name: 'Body')
    BulkEmailContent = Shapes::StructureShape.new(name: 'BulkEmailContent')
    BulkEmailEntry = Shapes::StructureShape.new(name: 'BulkEmailEntry')
    BulkEmailEntryList = Shapes::ListShape.new(name: 'BulkEmailEntryList')
    BulkEmailEntryResult = Shapes::StructureShape.new(name: 'BulkEmailEntryResult')
    BulkEmailEntryResultList = Shapes::ListShape.new(name: 'BulkEmailEntryResultList')
    BulkEmailStatus = Shapes::StringShape.new(name: 'BulkEmailStatus')
    CampaignId = Shapes::StringShape.new(name: 'CampaignId')
    CaseId = Shapes::StringShape.new(name: 'CaseId')
    Charset = Shapes::StringShape.new(name: 'Charset')
    CloudWatchDestination = Shapes::StructureShape.new(name: 'CloudWatchDestination')
    CloudWatchDimensionConfiguration = Shapes::StructureShape.new(name: 'CloudWatchDimensionConfiguration')
    CloudWatchDimensionConfigurations = Shapes::ListShape.new(name: 'CloudWatchDimensionConfigurations')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConfigurationSetName = Shapes::StringShape.new(name: 'ConfigurationSetName')
    ConfigurationSetNameList = Shapes::ListShape.new(name: 'ConfigurationSetNameList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContactLanguage = Shapes::StringShape.new(name: 'ContactLanguage')
    Content = Shapes::StructureShape.new(name: 'Content')
    CreateConfigurationSetEventDestinationRequest = Shapes::StructureShape.new(name: 'CreateConfigurationSetEventDestinationRequest')
    CreateConfigurationSetEventDestinationResponse = Shapes::StructureShape.new(name: 'CreateConfigurationSetEventDestinationResponse')
    CreateConfigurationSetRequest = Shapes::StructureShape.new(name: 'CreateConfigurationSetRequest')
    CreateConfigurationSetResponse = Shapes::StructureShape.new(name: 'CreateConfigurationSetResponse')
    CreateCustomVerificationEmailTemplateRequest = Shapes::StructureShape.new(name: 'CreateCustomVerificationEmailTemplateRequest')
    CreateCustomVerificationEmailTemplateResponse = Shapes::StructureShape.new(name: 'CreateCustomVerificationEmailTemplateResponse')
    CreateDedicatedIpPoolRequest = Shapes::StructureShape.new(name: 'CreateDedicatedIpPoolRequest')
    CreateDedicatedIpPoolResponse = Shapes::StructureShape.new(name: 'CreateDedicatedIpPoolResponse')
    CreateDeliverabilityTestReportRequest = Shapes::StructureShape.new(name: 'CreateDeliverabilityTestReportRequest')
    CreateDeliverabilityTestReportResponse = Shapes::StructureShape.new(name: 'CreateDeliverabilityTestReportResponse')
    CreateEmailIdentityPolicyRequest = Shapes::StructureShape.new(name: 'CreateEmailIdentityPolicyRequest')
    CreateEmailIdentityPolicyResponse = Shapes::StructureShape.new(name: 'CreateEmailIdentityPolicyResponse')
    CreateEmailIdentityRequest = Shapes::StructureShape.new(name: 'CreateEmailIdentityRequest')
    CreateEmailIdentityResponse = Shapes::StructureShape.new(name: 'CreateEmailIdentityResponse')
    CreateEmailTemplateRequest = Shapes::StructureShape.new(name: 'CreateEmailTemplateRequest')
    CreateEmailTemplateResponse = Shapes::StructureShape.new(name: 'CreateEmailTemplateResponse')
    CreateImportJobRequest = Shapes::StructureShape.new(name: 'CreateImportJobRequest')
    CreateImportJobResponse = Shapes::StructureShape.new(name: 'CreateImportJobResponse')
    CustomRedirectDomain = Shapes::StringShape.new(name: 'CustomRedirectDomain')
    CustomVerificationEmailTemplateMetadata = Shapes::StructureShape.new(name: 'CustomVerificationEmailTemplateMetadata')
    CustomVerificationEmailTemplatesList = Shapes::ListShape.new(name: 'CustomVerificationEmailTemplatesList')
    DailyVolume = Shapes::StructureShape.new(name: 'DailyVolume')
    DailyVolumes = Shapes::ListShape.new(name: 'DailyVolumes')
    DataFormat = Shapes::StringShape.new(name: 'DataFormat')
    DedicatedIp = Shapes::StructureShape.new(name: 'DedicatedIp')
    DedicatedIpList = Shapes::ListShape.new(name: 'DedicatedIpList')
    DefaultDimensionValue = Shapes::StringShape.new(name: 'DefaultDimensionValue')
    DeleteConfigurationSetEventDestinationRequest = Shapes::StructureShape.new(name: 'DeleteConfigurationSetEventDestinationRequest')
    DeleteConfigurationSetEventDestinationResponse = Shapes::StructureShape.new(name: 'DeleteConfigurationSetEventDestinationResponse')
    DeleteConfigurationSetRequest = Shapes::StructureShape.new(name: 'DeleteConfigurationSetRequest')
    DeleteConfigurationSetResponse = Shapes::StructureShape.new(name: 'DeleteConfigurationSetResponse')
    DeleteCustomVerificationEmailTemplateRequest = Shapes::StructureShape.new(name: 'DeleteCustomVerificationEmailTemplateRequest')
    DeleteCustomVerificationEmailTemplateResponse = Shapes::StructureShape.new(name: 'DeleteCustomVerificationEmailTemplateResponse')
    DeleteDedicatedIpPoolRequest = Shapes::StructureShape.new(name: 'DeleteDedicatedIpPoolRequest')
    DeleteDedicatedIpPoolResponse = Shapes::StructureShape.new(name: 'DeleteDedicatedIpPoolResponse')
    DeleteEmailIdentityPolicyRequest = Shapes::StructureShape.new(name: 'DeleteEmailIdentityPolicyRequest')
    DeleteEmailIdentityPolicyResponse = Shapes::StructureShape.new(name: 'DeleteEmailIdentityPolicyResponse')
    DeleteEmailIdentityRequest = Shapes::StructureShape.new(name: 'DeleteEmailIdentityRequest')
    DeleteEmailIdentityResponse = Shapes::StructureShape.new(name: 'DeleteEmailIdentityResponse')
    DeleteEmailTemplateRequest = Shapes::StructureShape.new(name: 'DeleteEmailTemplateRequest')
    DeleteEmailTemplateResponse = Shapes::StructureShape.new(name: 'DeleteEmailTemplateResponse')
    DeleteSuppressedDestinationRequest = Shapes::StructureShape.new(name: 'DeleteSuppressedDestinationRequest')
    DeleteSuppressedDestinationResponse = Shapes::StructureShape.new(name: 'DeleteSuppressedDestinationResponse')
    DeliverabilityDashboardAccountStatus = Shapes::StringShape.new(name: 'DeliverabilityDashboardAccountStatus')
    DeliverabilityTestReport = Shapes::StructureShape.new(name: 'DeliverabilityTestReport')
    DeliverabilityTestReports = Shapes::ListShape.new(name: 'DeliverabilityTestReports')
    DeliverabilityTestStatus = Shapes::StringShape.new(name: 'DeliverabilityTestStatus')
    DeliverabilityTestSubject = Shapes::StringShape.new(name: 'DeliverabilityTestSubject')
    DeliveryOptions = Shapes::StructureShape.new(name: 'DeliveryOptions')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    DimensionName = Shapes::StringShape.new(name: 'DimensionName')
    DimensionValueSource = Shapes::StringShape.new(name: 'DimensionValueSource')
    DkimAttributes = Shapes::StructureShape.new(name: 'DkimAttributes')
    DkimSigningAttributes = Shapes::StructureShape.new(name: 'DkimSigningAttributes')
    DkimSigningAttributesOrigin = Shapes::StringShape.new(name: 'DkimSigningAttributesOrigin')
    DkimStatus = Shapes::StringShape.new(name: 'DkimStatus')
    DnsToken = Shapes::StringShape.new(name: 'DnsToken')
    DnsTokenList = Shapes::ListShape.new(name: 'DnsTokenList')
    Domain = Shapes::StringShape.new(name: 'Domain')
    DomainDeliverabilityCampaign = Shapes::StructureShape.new(name: 'DomainDeliverabilityCampaign')
    DomainDeliverabilityCampaignList = Shapes::ListShape.new(name: 'DomainDeliverabilityCampaignList')
    DomainDeliverabilityTrackingOption = Shapes::StructureShape.new(name: 'DomainDeliverabilityTrackingOption')
    DomainDeliverabilityTrackingOptions = Shapes::ListShape.new(name: 'DomainDeliverabilityTrackingOptions')
    DomainIspPlacement = Shapes::StructureShape.new(name: 'DomainIspPlacement')
    DomainIspPlacements = Shapes::ListShape.new(name: 'DomainIspPlacements')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EmailAddressList = Shapes::ListShape.new(name: 'EmailAddressList')
    EmailContent = Shapes::StructureShape.new(name: 'EmailContent')
    EmailTemplateContent = Shapes::StructureShape.new(name: 'EmailTemplateContent')
    EmailTemplateData = Shapes::StringShape.new(name: 'EmailTemplateData')
    EmailTemplateHtml = Shapes::StringShape.new(name: 'EmailTemplateHtml')
    EmailTemplateMetadata = Shapes::StructureShape.new(name: 'EmailTemplateMetadata')
    EmailTemplateMetadataList = Shapes::ListShape.new(name: 'EmailTemplateMetadataList')
    EmailTemplateName = Shapes::StringShape.new(name: 'EmailTemplateName')
    EmailTemplateSubject = Shapes::StringShape.new(name: 'EmailTemplateSubject')
    EmailTemplateText = Shapes::StringShape.new(name: 'EmailTemplateText')
    Enabled = Shapes::BooleanShape.new(name: 'Enabled')
    EnabledWrapper = Shapes::BooleanShape.new(name: 'EnabledWrapper')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Esp = Shapes::StringShape.new(name: 'Esp')
    Esps = Shapes::ListShape.new(name: 'Esps')
    EventDestination = Shapes::StructureShape.new(name: 'EventDestination')
    EventDestinationDefinition = Shapes::StructureShape.new(name: 'EventDestinationDefinition')
    EventDestinationName = Shapes::StringShape.new(name: 'EventDestinationName')
    EventDestinations = Shapes::ListShape.new(name: 'EventDestinations')
    EventType = Shapes::StringShape.new(name: 'EventType')
    EventTypes = Shapes::ListShape.new(name: 'EventTypes')
    FailedRecordsCount = Shapes::IntegerShape.new(name: 'FailedRecordsCount')
    FailedRecordsS3Url = Shapes::StringShape.new(name: 'FailedRecordsS3Url')
    FailureInfo = Shapes::StructureShape.new(name: 'FailureInfo')
    FailureRedirectionURL = Shapes::StringShape.new(name: 'FailureRedirectionURL')
    FeedbackId = Shapes::StringShape.new(name: 'FeedbackId')
    GeneralEnforcementStatus = Shapes::StringShape.new(name: 'GeneralEnforcementStatus')
    GetAccountRequest = Shapes::StructureShape.new(name: 'GetAccountRequest')
    GetAccountResponse = Shapes::StructureShape.new(name: 'GetAccountResponse')
    GetBlacklistReportsRequest = Shapes::StructureShape.new(name: 'GetBlacklistReportsRequest')
    GetBlacklistReportsResponse = Shapes::StructureShape.new(name: 'GetBlacklistReportsResponse')
    GetConfigurationSetEventDestinationsRequest = Shapes::StructureShape.new(name: 'GetConfigurationSetEventDestinationsRequest')
    GetConfigurationSetEventDestinationsResponse = Shapes::StructureShape.new(name: 'GetConfigurationSetEventDestinationsResponse')
    GetConfigurationSetRequest = Shapes::StructureShape.new(name: 'GetConfigurationSetRequest')
    GetConfigurationSetResponse = Shapes::StructureShape.new(name: 'GetConfigurationSetResponse')
    GetCustomVerificationEmailTemplateRequest = Shapes::StructureShape.new(name: 'GetCustomVerificationEmailTemplateRequest')
    GetCustomVerificationEmailTemplateResponse = Shapes::StructureShape.new(name: 'GetCustomVerificationEmailTemplateResponse')
    GetDedicatedIpRequest = Shapes::StructureShape.new(name: 'GetDedicatedIpRequest')
    GetDedicatedIpResponse = Shapes::StructureShape.new(name: 'GetDedicatedIpResponse')
    GetDedicatedIpsRequest = Shapes::StructureShape.new(name: 'GetDedicatedIpsRequest')
    GetDedicatedIpsResponse = Shapes::StructureShape.new(name: 'GetDedicatedIpsResponse')
    GetDeliverabilityDashboardOptionsRequest = Shapes::StructureShape.new(name: 'GetDeliverabilityDashboardOptionsRequest')
    GetDeliverabilityDashboardOptionsResponse = Shapes::StructureShape.new(name: 'GetDeliverabilityDashboardOptionsResponse')
    GetDeliverabilityTestReportRequest = Shapes::StructureShape.new(name: 'GetDeliverabilityTestReportRequest')
    GetDeliverabilityTestReportResponse = Shapes::StructureShape.new(name: 'GetDeliverabilityTestReportResponse')
    GetDomainDeliverabilityCampaignRequest = Shapes::StructureShape.new(name: 'GetDomainDeliverabilityCampaignRequest')
    GetDomainDeliverabilityCampaignResponse = Shapes::StructureShape.new(name: 'GetDomainDeliverabilityCampaignResponse')
    GetDomainStatisticsReportRequest = Shapes::StructureShape.new(name: 'GetDomainStatisticsReportRequest')
    GetDomainStatisticsReportResponse = Shapes::StructureShape.new(name: 'GetDomainStatisticsReportResponse')
    GetEmailIdentityPoliciesRequest = Shapes::StructureShape.new(name: 'GetEmailIdentityPoliciesRequest')
    GetEmailIdentityPoliciesResponse = Shapes::StructureShape.new(name: 'GetEmailIdentityPoliciesResponse')
    GetEmailIdentityRequest = Shapes::StructureShape.new(name: 'GetEmailIdentityRequest')
    GetEmailIdentityResponse = Shapes::StructureShape.new(name: 'GetEmailIdentityResponse')
    GetEmailTemplateRequest = Shapes::StructureShape.new(name: 'GetEmailTemplateRequest')
    GetEmailTemplateResponse = Shapes::StructureShape.new(name: 'GetEmailTemplateResponse')
    GetImportJobRequest = Shapes::StructureShape.new(name: 'GetImportJobRequest')
    GetImportJobResponse = Shapes::StructureShape.new(name: 'GetImportJobResponse')
    GetSuppressedDestinationRequest = Shapes::StructureShape.new(name: 'GetSuppressedDestinationRequest')
    GetSuppressedDestinationResponse = Shapes::StructureShape.new(name: 'GetSuppressedDestinationResponse')
    Identity = Shapes::StringShape.new(name: 'Identity')
    IdentityInfo = Shapes::StructureShape.new(name: 'IdentityInfo')
    IdentityInfoList = Shapes::ListShape.new(name: 'IdentityInfoList')
    IdentityType = Shapes::StringShape.new(name: 'IdentityType')
    ImageUrl = Shapes::StringShape.new(name: 'ImageUrl')
    ImportDataSource = Shapes::StructureShape.new(name: 'ImportDataSource')
    ImportDestination = Shapes::StructureShape.new(name: 'ImportDestination')
    ImportDestinationType = Shapes::StringShape.new(name: 'ImportDestinationType')
    ImportJobSummary = Shapes::StructureShape.new(name: 'ImportJobSummary')
    ImportJobSummaryList = Shapes::ListShape.new(name: 'ImportJobSummaryList')
    InboxPlacementTrackingOption = Shapes::StructureShape.new(name: 'InboxPlacementTrackingOption')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    Ip = Shapes::StringShape.new(name: 'Ip')
    IpList = Shapes::ListShape.new(name: 'IpList')
    IspName = Shapes::StringShape.new(name: 'IspName')
    IspNameList = Shapes::ListShape.new(name: 'IspNameList')
    IspPlacement = Shapes::StructureShape.new(name: 'IspPlacement')
    IspPlacements = Shapes::ListShape.new(name: 'IspPlacements')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    KinesisFirehoseDestination = Shapes::StructureShape.new(name: 'KinesisFirehoseDestination')
    LastFreshStart = Shapes::TimestampShape.new(name: 'LastFreshStart')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListConfigurationSetsRequest = Shapes::StructureShape.new(name: 'ListConfigurationSetsRequest')
    ListConfigurationSetsResponse = Shapes::StructureShape.new(name: 'ListConfigurationSetsResponse')
    ListCustomVerificationEmailTemplatesRequest = Shapes::StructureShape.new(name: 'ListCustomVerificationEmailTemplatesRequest')
    ListCustomVerificationEmailTemplatesResponse = Shapes::StructureShape.new(name: 'ListCustomVerificationEmailTemplatesResponse')
    ListDedicatedIpPoolsRequest = Shapes::StructureShape.new(name: 'ListDedicatedIpPoolsRequest')
    ListDedicatedIpPoolsResponse = Shapes::StructureShape.new(name: 'ListDedicatedIpPoolsResponse')
    ListDeliverabilityTestReportsRequest = Shapes::StructureShape.new(name: 'ListDeliverabilityTestReportsRequest')
    ListDeliverabilityTestReportsResponse = Shapes::StructureShape.new(name: 'ListDeliverabilityTestReportsResponse')
    ListDomainDeliverabilityCampaignsRequest = Shapes::StructureShape.new(name: 'ListDomainDeliverabilityCampaignsRequest')
    ListDomainDeliverabilityCampaignsResponse = Shapes::StructureShape.new(name: 'ListDomainDeliverabilityCampaignsResponse')
    ListEmailIdentitiesRequest = Shapes::StructureShape.new(name: 'ListEmailIdentitiesRequest')
    ListEmailIdentitiesResponse = Shapes::StructureShape.new(name: 'ListEmailIdentitiesResponse')
    ListEmailTemplatesRequest = Shapes::StructureShape.new(name: 'ListEmailTemplatesRequest')
    ListEmailTemplatesResponse = Shapes::StructureShape.new(name: 'ListEmailTemplatesResponse')
    ListImportJobsRequest = Shapes::StructureShape.new(name: 'ListImportJobsRequest')
    ListImportJobsResponse = Shapes::StructureShape.new(name: 'ListImportJobsResponse')
    ListOfDedicatedIpPools = Shapes::ListShape.new(name: 'ListOfDedicatedIpPools')
    ListSuppressedDestinationsRequest = Shapes::StructureShape.new(name: 'ListSuppressedDestinationsRequest')
    ListSuppressedDestinationsResponse = Shapes::StructureShape.new(name: 'ListSuppressedDestinationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MailFromAttributes = Shapes::StructureShape.new(name: 'MailFromAttributes')
    MailFromDomainName = Shapes::StringShape.new(name: 'MailFromDomainName')
    MailFromDomainNotVerifiedException = Shapes::StructureShape.new(name: 'MailFromDomainNotVerifiedException')
    MailFromDomainStatus = Shapes::StringShape.new(name: 'MailFromDomainStatus')
    MailType = Shapes::StringShape.new(name: 'MailType')
    Max24HourSend = Shapes::FloatShape.new(name: 'Max24HourSend')
    MaxItems = Shapes::IntegerShape.new(name: 'MaxItems')
    MaxSendRate = Shapes::FloatShape.new(name: 'MaxSendRate')
    Message = Shapes::StructureShape.new(name: 'Message')
    MessageContent = Shapes::StringShape.new(name: 'MessageContent')
    MessageData = Shapes::StringShape.new(name: 'MessageData')
    MessageRejected = Shapes::StructureShape.new(name: 'MessageRejected')
    MessageTag = Shapes::StructureShape.new(name: 'MessageTag')
    MessageTagList = Shapes::ListShape.new(name: 'MessageTagList')
    MessageTagName = Shapes::StringShape.new(name: 'MessageTagName')
    MessageTagValue = Shapes::StringShape.new(name: 'MessageTagValue')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OutboundMessageId = Shapes::StringShape.new(name: 'OutboundMessageId')
    OverallVolume = Shapes::StructureShape.new(name: 'OverallVolume')
    Percentage = Shapes::FloatShape.new(name: 'Percentage')
    Percentage100Wrapper = Shapes::IntegerShape.new(name: 'Percentage100Wrapper')
    PinpointDestination = Shapes::StructureShape.new(name: 'PinpointDestination')
    PlacementStatistics = Shapes::StructureShape.new(name: 'PlacementStatistics')
    Policy = Shapes::StringShape.new(name: 'Policy')
    PolicyMap = Shapes::MapShape.new(name: 'PolicyMap')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PoolName = Shapes::StringShape.new(name: 'PoolName')
    PrivateKey = Shapes::StringShape.new(name: 'PrivateKey')
    ProcessedRecordsCount = Shapes::IntegerShape.new(name: 'ProcessedRecordsCount')
    PutAccountDedicatedIpWarmupAttributesRequest = Shapes::StructureShape.new(name: 'PutAccountDedicatedIpWarmupAttributesRequest')
    PutAccountDedicatedIpWarmupAttributesResponse = Shapes::StructureShape.new(name: 'PutAccountDedicatedIpWarmupAttributesResponse')
    PutAccountDetailsRequest = Shapes::StructureShape.new(name: 'PutAccountDetailsRequest')
    PutAccountDetailsResponse = Shapes::StructureShape.new(name: 'PutAccountDetailsResponse')
    PutAccountSendingAttributesRequest = Shapes::StructureShape.new(name: 'PutAccountSendingAttributesRequest')
    PutAccountSendingAttributesResponse = Shapes::StructureShape.new(name: 'PutAccountSendingAttributesResponse')
    PutAccountSuppressionAttributesRequest = Shapes::StructureShape.new(name: 'PutAccountSuppressionAttributesRequest')
    PutAccountSuppressionAttributesResponse = Shapes::StructureShape.new(name: 'PutAccountSuppressionAttributesResponse')
    PutConfigurationSetDeliveryOptionsRequest = Shapes::StructureShape.new(name: 'PutConfigurationSetDeliveryOptionsRequest')
    PutConfigurationSetDeliveryOptionsResponse = Shapes::StructureShape.new(name: 'PutConfigurationSetDeliveryOptionsResponse')
    PutConfigurationSetReputationOptionsRequest = Shapes::StructureShape.new(name: 'PutConfigurationSetReputationOptionsRequest')
    PutConfigurationSetReputationOptionsResponse = Shapes::StructureShape.new(name: 'PutConfigurationSetReputationOptionsResponse')
    PutConfigurationSetSendingOptionsRequest = Shapes::StructureShape.new(name: 'PutConfigurationSetSendingOptionsRequest')
    PutConfigurationSetSendingOptionsResponse = Shapes::StructureShape.new(name: 'PutConfigurationSetSendingOptionsResponse')
    PutConfigurationSetSuppressionOptionsRequest = Shapes::StructureShape.new(name: 'PutConfigurationSetSuppressionOptionsRequest')
    PutConfigurationSetSuppressionOptionsResponse = Shapes::StructureShape.new(name: 'PutConfigurationSetSuppressionOptionsResponse')
    PutConfigurationSetTrackingOptionsRequest = Shapes::StructureShape.new(name: 'PutConfigurationSetTrackingOptionsRequest')
    PutConfigurationSetTrackingOptionsResponse = Shapes::StructureShape.new(name: 'PutConfigurationSetTrackingOptionsResponse')
    PutDedicatedIpInPoolRequest = Shapes::StructureShape.new(name: 'PutDedicatedIpInPoolRequest')
    PutDedicatedIpInPoolResponse = Shapes::StructureShape.new(name: 'PutDedicatedIpInPoolResponse')
    PutDedicatedIpWarmupAttributesRequest = Shapes::StructureShape.new(name: 'PutDedicatedIpWarmupAttributesRequest')
    PutDedicatedIpWarmupAttributesResponse = Shapes::StructureShape.new(name: 'PutDedicatedIpWarmupAttributesResponse')
    PutDeliverabilityDashboardOptionRequest = Shapes::StructureShape.new(name: 'PutDeliverabilityDashboardOptionRequest')
    PutDeliverabilityDashboardOptionResponse = Shapes::StructureShape.new(name: 'PutDeliverabilityDashboardOptionResponse')
    PutEmailIdentityDkimAttributesRequest = Shapes::StructureShape.new(name: 'PutEmailIdentityDkimAttributesRequest')
    PutEmailIdentityDkimAttributesResponse = Shapes::StructureShape.new(name: 'PutEmailIdentityDkimAttributesResponse')
    PutEmailIdentityDkimSigningAttributesRequest = Shapes::StructureShape.new(name: 'PutEmailIdentityDkimSigningAttributesRequest')
    PutEmailIdentityDkimSigningAttributesResponse = Shapes::StructureShape.new(name: 'PutEmailIdentityDkimSigningAttributesResponse')
    PutEmailIdentityFeedbackAttributesRequest = Shapes::StructureShape.new(name: 'PutEmailIdentityFeedbackAttributesRequest')
    PutEmailIdentityFeedbackAttributesResponse = Shapes::StructureShape.new(name: 'PutEmailIdentityFeedbackAttributesResponse')
    PutEmailIdentityMailFromAttributesRequest = Shapes::StructureShape.new(name: 'PutEmailIdentityMailFromAttributesRequest')
    PutEmailIdentityMailFromAttributesResponse = Shapes::StructureShape.new(name: 'PutEmailIdentityMailFromAttributesResponse')
    PutSuppressedDestinationRequest = Shapes::StructureShape.new(name: 'PutSuppressedDestinationRequest')
    PutSuppressedDestinationResponse = Shapes::StructureShape.new(name: 'PutSuppressedDestinationResponse')
    RawMessage = Shapes::StructureShape.new(name: 'RawMessage')
    RawMessageData = Shapes::BlobShape.new(name: 'RawMessageData')
    RblName = Shapes::StringShape.new(name: 'RblName')
    RenderedEmailTemplate = Shapes::StringShape.new(name: 'RenderedEmailTemplate')
    ReplacementEmailContent = Shapes::StructureShape.new(name: 'ReplacementEmailContent')
    ReplacementTemplate = Shapes::StructureShape.new(name: 'ReplacementTemplate')
    ReportId = Shapes::StringShape.new(name: 'ReportId')
    ReportName = Shapes::StringShape.new(name: 'ReportName')
    ReputationOptions = Shapes::StructureShape.new(name: 'ReputationOptions')
    ReviewDetails = Shapes::StructureShape.new(name: 'ReviewDetails')
    ReviewStatus = Shapes::StringShape.new(name: 'ReviewStatus')
    S3Url = Shapes::StringShape.new(name: 'S3Url')
    Selector = Shapes::StringShape.new(name: 'Selector')
    SendBulkEmailRequest = Shapes::StructureShape.new(name: 'SendBulkEmailRequest')
    SendBulkEmailResponse = Shapes::StructureShape.new(name: 'SendBulkEmailResponse')
    SendCustomVerificationEmailRequest = Shapes::StructureShape.new(name: 'SendCustomVerificationEmailRequest')
    SendCustomVerificationEmailResponse = Shapes::StructureShape.new(name: 'SendCustomVerificationEmailResponse')
    SendEmailRequest = Shapes::StructureShape.new(name: 'SendEmailRequest')
    SendEmailResponse = Shapes::StructureShape.new(name: 'SendEmailResponse')
    SendQuota = Shapes::StructureShape.new(name: 'SendQuota')
    SendingOptions = Shapes::StructureShape.new(name: 'SendingOptions')
    SendingPausedException = Shapes::StructureShape.new(name: 'SendingPausedException')
    SendingPoolName = Shapes::StringShape.new(name: 'SendingPoolName')
    SentLast24Hours = Shapes::FloatShape.new(name: 'SentLast24Hours')
    SnsDestination = Shapes::StructureShape.new(name: 'SnsDestination')
    Subject = Shapes::StringShape.new(name: 'Subject')
    SuccessRedirectionURL = Shapes::StringShape.new(name: 'SuccessRedirectionURL')
    SuppressedDestination = Shapes::StructureShape.new(name: 'SuppressedDestination')
    SuppressedDestinationAttributes = Shapes::StructureShape.new(name: 'SuppressedDestinationAttributes')
    SuppressedDestinationSummaries = Shapes::ListShape.new(name: 'SuppressedDestinationSummaries')
    SuppressedDestinationSummary = Shapes::StructureShape.new(name: 'SuppressedDestinationSummary')
    SuppressionAttributes = Shapes::StructureShape.new(name: 'SuppressionAttributes')
    SuppressionListDestination = Shapes::StructureShape.new(name: 'SuppressionListDestination')
    SuppressionListImportAction = Shapes::StringShape.new(name: 'SuppressionListImportAction')
    SuppressionListReason = Shapes::StringShape.new(name: 'SuppressionListReason')
    SuppressionListReasons = Shapes::ListShape.new(name: 'SuppressionListReasons')
    SuppressionOptions = Shapes::StructureShape.new(name: 'SuppressionOptions')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Template = Shapes::StructureShape.new(name: 'Template')
    TemplateContent = Shapes::StringShape.new(name: 'TemplateContent')
    TestRenderEmailTemplateRequest = Shapes::StructureShape.new(name: 'TestRenderEmailTemplateRequest')
    TestRenderEmailTemplateResponse = Shapes::StructureShape.new(name: 'TestRenderEmailTemplateResponse')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TlsPolicy = Shapes::StringShape.new(name: 'TlsPolicy')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TrackingOptions = Shapes::StructureShape.new(name: 'TrackingOptions')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateConfigurationSetEventDestinationRequest = Shapes::StructureShape.new(name: 'UpdateConfigurationSetEventDestinationRequest')
    UpdateConfigurationSetEventDestinationResponse = Shapes::StructureShape.new(name: 'UpdateConfigurationSetEventDestinationResponse')
    UpdateCustomVerificationEmailTemplateRequest = Shapes::StructureShape.new(name: 'UpdateCustomVerificationEmailTemplateRequest')
    UpdateCustomVerificationEmailTemplateResponse = Shapes::StructureShape.new(name: 'UpdateCustomVerificationEmailTemplateResponse')
    UpdateEmailIdentityPolicyRequest = Shapes::StructureShape.new(name: 'UpdateEmailIdentityPolicyRequest')
    UpdateEmailIdentityPolicyResponse = Shapes::StructureShape.new(name: 'UpdateEmailIdentityPolicyResponse')
    UpdateEmailTemplateRequest = Shapes::StructureShape.new(name: 'UpdateEmailTemplateRequest')
    UpdateEmailTemplateResponse = Shapes::StructureShape.new(name: 'UpdateEmailTemplateResponse')
    UseCaseDescription = Shapes::StringShape.new(name: 'UseCaseDescription')
    Volume = Shapes::IntegerShape.new(name: 'Volume')
    VolumeStatistics = Shapes::StructureShape.new(name: 'VolumeStatistics')
    WarmupStatus = Shapes::StringShape.new(name: 'WarmupStatus')
    WebsiteURL = Shapes::StringShape.new(name: 'WebsiteURL')

    AccountDetails.add_member(:mail_type, Shapes::ShapeRef.new(shape: MailType, location_name: "MailType"))
    AccountDetails.add_member(:website_url, Shapes::ShapeRef.new(shape: WebsiteURL, location_name: "WebsiteURL"))
    AccountDetails.add_member(:contact_language, Shapes::ShapeRef.new(shape: ContactLanguage, location_name: "ContactLanguage"))
    AccountDetails.add_member(:use_case_description, Shapes::ShapeRef.new(shape: UseCaseDescription, location_name: "UseCaseDescription"))
    AccountDetails.add_member(:additional_contact_email_addresses, Shapes::ShapeRef.new(shape: AdditionalContactEmailAddresses, location_name: "AdditionalContactEmailAddresses"))
    AccountDetails.add_member(:review_details, Shapes::ShapeRef.new(shape: ReviewDetails, location_name: "ReviewDetails"))
    AccountDetails.struct_class = Types::AccountDetails

    AccountSuspendedException.struct_class = Types::AccountSuspendedException

    AdditionalContactEmailAddresses.member = Shapes::ShapeRef.new(shape: AdditionalContactEmailAddress)

    AlreadyExistsException.struct_class = Types::AlreadyExistsException

    BadRequestException.struct_class = Types::BadRequestException

    BlacklistEntries.member = Shapes::ShapeRef.new(shape: BlacklistEntry)

    BlacklistEntry.add_member(:rbl_name, Shapes::ShapeRef.new(shape: RblName, location_name: "RblName"))
    BlacklistEntry.add_member(:listing_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ListingTime"))
    BlacklistEntry.add_member(:description, Shapes::ShapeRef.new(shape: BlacklistingDescription, location_name: "Description"))
    BlacklistEntry.struct_class = Types::BlacklistEntry

    BlacklistItemNames.member = Shapes::ShapeRef.new(shape: BlacklistItemName)

    BlacklistReport.key = Shapes::ShapeRef.new(shape: BlacklistItemName)
    BlacklistReport.value = Shapes::ShapeRef.new(shape: BlacklistEntries)

    Body.add_member(:text, Shapes::ShapeRef.new(shape: Content, location_name: "Text"))
    Body.add_member(:html, Shapes::ShapeRef.new(shape: Content, location_name: "Html"))
    Body.struct_class = Types::Body

    BulkEmailContent.add_member(:template, Shapes::ShapeRef.new(shape: Template, location_name: "Template"))
    BulkEmailContent.struct_class = Types::BulkEmailContent

    BulkEmailEntry.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "Destination"))
    BulkEmailEntry.add_member(:replacement_tags, Shapes::ShapeRef.new(shape: MessageTagList, location_name: "ReplacementTags"))
    BulkEmailEntry.add_member(:replacement_email_content, Shapes::ShapeRef.new(shape: ReplacementEmailContent, location_name: "ReplacementEmailContent"))
    BulkEmailEntry.struct_class = Types::BulkEmailEntry

    BulkEmailEntryList.member = Shapes::ShapeRef.new(shape: BulkEmailEntry)

    BulkEmailEntryResult.add_member(:status, Shapes::ShapeRef.new(shape: BulkEmailStatus, location_name: "Status"))
    BulkEmailEntryResult.add_member(:error, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Error"))
    BulkEmailEntryResult.add_member(:message_id, Shapes::ShapeRef.new(shape: OutboundMessageId, location_name: "MessageId"))
    BulkEmailEntryResult.struct_class = Types::BulkEmailEntryResult

    BulkEmailEntryResultList.member = Shapes::ShapeRef.new(shape: BulkEmailEntryResult)

    CloudWatchDestination.add_member(:dimension_configurations, Shapes::ShapeRef.new(shape: CloudWatchDimensionConfigurations, required: true, location_name: "DimensionConfigurations"))
    CloudWatchDestination.struct_class = Types::CloudWatchDestination

    CloudWatchDimensionConfiguration.add_member(:dimension_name, Shapes::ShapeRef.new(shape: DimensionName, required: true, location_name: "DimensionName"))
    CloudWatchDimensionConfiguration.add_member(:dimension_value_source, Shapes::ShapeRef.new(shape: DimensionValueSource, required: true, location_name: "DimensionValueSource"))
    CloudWatchDimensionConfiguration.add_member(:default_dimension_value, Shapes::ShapeRef.new(shape: DefaultDimensionValue, required: true, location_name: "DefaultDimensionValue"))
    CloudWatchDimensionConfiguration.struct_class = Types::CloudWatchDimensionConfiguration

    CloudWatchDimensionConfigurations.member = Shapes::ShapeRef.new(shape: CloudWatchDimensionConfiguration)

    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConfigurationSetNameList.member = Shapes::ShapeRef.new(shape: ConfigurationSetName)

    ConflictException.struct_class = Types::ConflictException

    Content.add_member(:data, Shapes::ShapeRef.new(shape: MessageData, required: true, location_name: "Data"))
    Content.add_member(:charset, Shapes::ShapeRef.new(shape: Charset, location_name: "Charset"))
    Content.struct_class = Types::Content

    CreateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, Shapes::ShapeRef.new(shape: EventDestinationName, required: true, location_name: "EventDestinationName"))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination, Shapes::ShapeRef.new(shape: EventDestinationDefinition, required: true, location_name: "EventDestination"))
    CreateConfigurationSetEventDestinationRequest.struct_class = Types::CreateConfigurationSetEventDestinationRequest

    CreateConfigurationSetEventDestinationResponse.struct_class = Types::CreateConfigurationSetEventDestinationResponse

    CreateConfigurationSetRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location_name: "ConfigurationSetName"))
    CreateConfigurationSetRequest.add_member(:tracking_options, Shapes::ShapeRef.new(shape: TrackingOptions, location_name: "TrackingOptions"))
    CreateConfigurationSetRequest.add_member(:delivery_options, Shapes::ShapeRef.new(shape: DeliveryOptions, location_name: "DeliveryOptions"))
    CreateConfigurationSetRequest.add_member(:reputation_options, Shapes::ShapeRef.new(shape: ReputationOptions, location_name: "ReputationOptions"))
    CreateConfigurationSetRequest.add_member(:sending_options, Shapes::ShapeRef.new(shape: SendingOptions, location_name: "SendingOptions"))
    CreateConfigurationSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateConfigurationSetRequest.add_member(:suppression_options, Shapes::ShapeRef.new(shape: SuppressionOptions, location_name: "SuppressionOptions"))
    CreateConfigurationSetRequest.struct_class = Types::CreateConfigurationSetRequest

    CreateConfigurationSetResponse.struct_class = Types::CreateConfigurationSetResponse

    CreateCustomVerificationEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location_name: "TemplateName"))
    CreateCustomVerificationEmailTemplateRequest.add_member(:from_email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "FromEmailAddress"))
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_subject, Shapes::ShapeRef.new(shape: EmailTemplateSubject, required: true, location_name: "TemplateSubject"))
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_content, Shapes::ShapeRef.new(shape: TemplateContent, required: true, location_name: "TemplateContent"))
    CreateCustomVerificationEmailTemplateRequest.add_member(:success_redirection_url, Shapes::ShapeRef.new(shape: SuccessRedirectionURL, required: true, location_name: "SuccessRedirectionURL"))
    CreateCustomVerificationEmailTemplateRequest.add_member(:failure_redirection_url, Shapes::ShapeRef.new(shape: FailureRedirectionURL, required: true, location_name: "FailureRedirectionURL"))
    CreateCustomVerificationEmailTemplateRequest.struct_class = Types::CreateCustomVerificationEmailTemplateRequest

    CreateCustomVerificationEmailTemplateResponse.struct_class = Types::CreateCustomVerificationEmailTemplateResponse

    CreateDedicatedIpPoolRequest.add_member(:pool_name, Shapes::ShapeRef.new(shape: PoolName, required: true, location_name: "PoolName"))
    CreateDedicatedIpPoolRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDedicatedIpPoolRequest.struct_class = Types::CreateDedicatedIpPoolRequest

    CreateDedicatedIpPoolResponse.struct_class = Types::CreateDedicatedIpPoolResponse

    CreateDeliverabilityTestReportRequest.add_member(:report_name, Shapes::ShapeRef.new(shape: ReportName, location_name: "ReportName"))
    CreateDeliverabilityTestReportRequest.add_member(:from_email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "FromEmailAddress"))
    CreateDeliverabilityTestReportRequest.add_member(:content, Shapes::ShapeRef.new(shape: EmailContent, required: true, location_name: "Content"))
    CreateDeliverabilityTestReportRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDeliverabilityTestReportRequest.struct_class = Types::CreateDeliverabilityTestReportRequest

    CreateDeliverabilityTestReportResponse.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location_name: "ReportId"))
    CreateDeliverabilityTestReportResponse.add_member(:deliverability_test_status, Shapes::ShapeRef.new(shape: DeliverabilityTestStatus, required: true, location_name: "DeliverabilityTestStatus"))
    CreateDeliverabilityTestReportResponse.struct_class = Types::CreateDeliverabilityTestReportResponse

    CreateEmailIdentityPolicyRequest.add_member(:email_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location: "uri", location_name: "EmailIdentity"))
    CreateEmailIdentityPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "PolicyName"))
    CreateEmailIdentityPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "Policy"))
    CreateEmailIdentityPolicyRequest.struct_class = Types::CreateEmailIdentityPolicyRequest

    CreateEmailIdentityPolicyResponse.struct_class = Types::CreateEmailIdentityPolicyResponse

    CreateEmailIdentityRequest.add_member(:email_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location_name: "EmailIdentity"))
    CreateEmailIdentityRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEmailIdentityRequest.add_member(:dkim_signing_attributes, Shapes::ShapeRef.new(shape: DkimSigningAttributes, location_name: "DkimSigningAttributes"))
    CreateEmailIdentityRequest.struct_class = Types::CreateEmailIdentityRequest

    CreateEmailIdentityResponse.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, location_name: "IdentityType"))
    CreateEmailIdentityResponse.add_member(:verified_for_sending_status, Shapes::ShapeRef.new(shape: Enabled, location_name: "VerifiedForSendingStatus"))
    CreateEmailIdentityResponse.add_member(:dkim_attributes, Shapes::ShapeRef.new(shape: DkimAttributes, location_name: "DkimAttributes"))
    CreateEmailIdentityResponse.struct_class = Types::CreateEmailIdentityResponse

    CreateEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location_name: "TemplateName"))
    CreateEmailTemplateRequest.add_member(:template_content, Shapes::ShapeRef.new(shape: EmailTemplateContent, required: true, location_name: "TemplateContent"))
    CreateEmailTemplateRequest.struct_class = Types::CreateEmailTemplateRequest

    CreateEmailTemplateResponse.struct_class = Types::CreateEmailTemplateResponse

    CreateImportJobRequest.add_member(:import_destination, Shapes::ShapeRef.new(shape: ImportDestination, required: true, location_name: "ImportDestination"))
    CreateImportJobRequest.add_member(:import_data_source, Shapes::ShapeRef.new(shape: ImportDataSource, required: true, location_name: "ImportDataSource"))
    CreateImportJobRequest.struct_class = Types::CreateImportJobRequest

    CreateImportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    CreateImportJobResponse.struct_class = Types::CreateImportJobResponse

    CustomVerificationEmailTemplateMetadata.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: "TemplateName"))
    CustomVerificationEmailTemplateMetadata.add_member(:from_email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "FromEmailAddress"))
    CustomVerificationEmailTemplateMetadata.add_member(:template_subject, Shapes::ShapeRef.new(shape: EmailTemplateSubject, location_name: "TemplateSubject"))
    CustomVerificationEmailTemplateMetadata.add_member(:success_redirection_url, Shapes::ShapeRef.new(shape: SuccessRedirectionURL, location_name: "SuccessRedirectionURL"))
    CustomVerificationEmailTemplateMetadata.add_member(:failure_redirection_url, Shapes::ShapeRef.new(shape: FailureRedirectionURL, location_name: "FailureRedirectionURL"))
    CustomVerificationEmailTemplateMetadata.struct_class = Types::CustomVerificationEmailTemplateMetadata

    CustomVerificationEmailTemplatesList.member = Shapes::ShapeRef.new(shape: CustomVerificationEmailTemplateMetadata)

    DailyVolume.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartDate"))
    DailyVolume.add_member(:volume_statistics, Shapes::ShapeRef.new(shape: VolumeStatistics, location_name: "VolumeStatistics"))
    DailyVolume.add_member(:domain_isp_placements, Shapes::ShapeRef.new(shape: DomainIspPlacements, location_name: "DomainIspPlacements"))
    DailyVolume.struct_class = Types::DailyVolume

    DailyVolumes.member = Shapes::ShapeRef.new(shape: DailyVolume)

    DedicatedIp.add_member(:ip, Shapes::ShapeRef.new(shape: Ip, required: true, location_name: "Ip"))
    DedicatedIp.add_member(:warmup_status, Shapes::ShapeRef.new(shape: WarmupStatus, required: true, location_name: "WarmupStatus"))
    DedicatedIp.add_member(:warmup_percentage, Shapes::ShapeRef.new(shape: Percentage100Wrapper, required: true, location_name: "WarmupPercentage"))
    DedicatedIp.add_member(:pool_name, Shapes::ShapeRef.new(shape: PoolName, location_name: "PoolName"))
    DedicatedIp.struct_class = Types::DedicatedIp

    DedicatedIpList.member = Shapes::ShapeRef.new(shape: DedicatedIp)

    DeleteConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    DeleteConfigurationSetEventDestinationRequest.add_member(:event_destination_name, Shapes::ShapeRef.new(shape: EventDestinationName, required: true, location: "uri", location_name: "EventDestinationName"))
    DeleteConfigurationSetEventDestinationRequest.struct_class = Types::DeleteConfigurationSetEventDestinationRequest

    DeleteConfigurationSetEventDestinationResponse.struct_class = Types::DeleteConfigurationSetEventDestinationResponse

    DeleteConfigurationSetRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    DeleteConfigurationSetRequest.struct_class = Types::DeleteConfigurationSetRequest

    DeleteConfigurationSetResponse.struct_class = Types::DeleteConfigurationSetResponse

    DeleteCustomVerificationEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location: "uri", location_name: "TemplateName"))
    DeleteCustomVerificationEmailTemplateRequest.struct_class = Types::DeleteCustomVerificationEmailTemplateRequest

    DeleteCustomVerificationEmailTemplateResponse.struct_class = Types::DeleteCustomVerificationEmailTemplateResponse

    DeleteDedicatedIpPoolRequest.add_member(:pool_name, Shapes::ShapeRef.new(shape: PoolName, required: true, location: "uri", location_name: "PoolName"))
    DeleteDedicatedIpPoolRequest.struct_class = Types::DeleteDedicatedIpPoolRequest

    DeleteDedicatedIpPoolResponse.struct_class = Types::DeleteDedicatedIpPoolResponse

    DeleteEmailIdentityPolicyRequest.add_member(:email_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location: "uri", location_name: "EmailIdentity"))
    DeleteEmailIdentityPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "PolicyName"))
    DeleteEmailIdentityPolicyRequest.struct_class = Types::DeleteEmailIdentityPolicyRequest

    DeleteEmailIdentityPolicyResponse.struct_class = Types::DeleteEmailIdentityPolicyResponse

    DeleteEmailIdentityRequest.add_member(:email_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location: "uri", location_name: "EmailIdentity"))
    DeleteEmailIdentityRequest.struct_class = Types::DeleteEmailIdentityRequest

    DeleteEmailIdentityResponse.struct_class = Types::DeleteEmailIdentityResponse

    DeleteEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location: "uri", location_name: "TemplateName"))
    DeleteEmailTemplateRequest.struct_class = Types::DeleteEmailTemplateRequest

    DeleteEmailTemplateResponse.struct_class = Types::DeleteEmailTemplateResponse

    DeleteSuppressedDestinationRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location: "uri", location_name: "EmailAddress"))
    DeleteSuppressedDestinationRequest.struct_class = Types::DeleteSuppressedDestinationRequest

    DeleteSuppressedDestinationResponse.struct_class = Types::DeleteSuppressedDestinationResponse

    DeliverabilityTestReport.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, location_name: "ReportId"))
    DeliverabilityTestReport.add_member(:report_name, Shapes::ShapeRef.new(shape: ReportName, location_name: "ReportName"))
    DeliverabilityTestReport.add_member(:subject, Shapes::ShapeRef.new(shape: DeliverabilityTestSubject, location_name: "Subject"))
    DeliverabilityTestReport.add_member(:from_email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "FromEmailAddress"))
    DeliverabilityTestReport.add_member(:create_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateDate"))
    DeliverabilityTestReport.add_member(:deliverability_test_status, Shapes::ShapeRef.new(shape: DeliverabilityTestStatus, location_name: "DeliverabilityTestStatus"))
    DeliverabilityTestReport.struct_class = Types::DeliverabilityTestReport

    DeliverabilityTestReports.member = Shapes::ShapeRef.new(shape: DeliverabilityTestReport)

    DeliveryOptions.add_member(:tls_policy, Shapes::ShapeRef.new(shape: TlsPolicy, location_name: "TlsPolicy"))
    DeliveryOptions.add_member(:sending_pool_name, Shapes::ShapeRef.new(shape: PoolName, location_name: "SendingPoolName"))
    DeliveryOptions.struct_class = Types::DeliveryOptions

    Destination.add_member(:to_addresses, Shapes::ShapeRef.new(shape: EmailAddressList, location_name: "ToAddresses"))
    Destination.add_member(:cc_addresses, Shapes::ShapeRef.new(shape: EmailAddressList, location_name: "CcAddresses"))
    Destination.add_member(:bcc_addresses, Shapes::ShapeRef.new(shape: EmailAddressList, location_name: "BccAddresses"))
    Destination.struct_class = Types::Destination

    DkimAttributes.add_member(:signing_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "SigningEnabled"))
    DkimAttributes.add_member(:status, Shapes::ShapeRef.new(shape: DkimStatus, location_name: "Status"))
    DkimAttributes.add_member(:tokens, Shapes::ShapeRef.new(shape: DnsTokenList, location_name: "Tokens"))
    DkimAttributes.add_member(:signing_attributes_origin, Shapes::ShapeRef.new(shape: DkimSigningAttributesOrigin, location_name: "SigningAttributesOrigin"))
    DkimAttributes.struct_class = Types::DkimAttributes

    DkimSigningAttributes.add_member(:domain_signing_selector, Shapes::ShapeRef.new(shape: Selector, required: true, location_name: "DomainSigningSelector"))
    DkimSigningAttributes.add_member(:domain_signing_private_key, Shapes::ShapeRef.new(shape: PrivateKey, required: true, location_name: "DomainSigningPrivateKey"))
    DkimSigningAttributes.struct_class = Types::DkimSigningAttributes

    DnsTokenList.member = Shapes::ShapeRef.new(shape: DnsToken)

    DomainDeliverabilityCampaign.add_member(:campaign_id, Shapes::ShapeRef.new(shape: CampaignId, location_name: "CampaignId"))
    DomainDeliverabilityCampaign.add_member(:image_url, Shapes::ShapeRef.new(shape: ImageUrl, location_name: "ImageUrl"))
    DomainDeliverabilityCampaign.add_member(:subject, Shapes::ShapeRef.new(shape: Subject, location_name: "Subject"))
    DomainDeliverabilityCampaign.add_member(:from_address, Shapes::ShapeRef.new(shape: Identity, location_name: "FromAddress"))
    DomainDeliverabilityCampaign.add_member(:sending_ips, Shapes::ShapeRef.new(shape: IpList, location_name: "SendingIps"))
    DomainDeliverabilityCampaign.add_member(:first_seen_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "FirstSeenDateTime"))
    DomainDeliverabilityCampaign.add_member(:last_seen_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastSeenDateTime"))
    DomainDeliverabilityCampaign.add_member(:inbox_count, Shapes::ShapeRef.new(shape: Volume, location_name: "InboxCount"))
    DomainDeliverabilityCampaign.add_member(:spam_count, Shapes::ShapeRef.new(shape: Volume, location_name: "SpamCount"))
    DomainDeliverabilityCampaign.add_member(:read_rate, Shapes::ShapeRef.new(shape: Percentage, location_name: "ReadRate"))
    DomainDeliverabilityCampaign.add_member(:delete_rate, Shapes::ShapeRef.new(shape: Percentage, location_name: "DeleteRate"))
    DomainDeliverabilityCampaign.add_member(:read_delete_rate, Shapes::ShapeRef.new(shape: Percentage, location_name: "ReadDeleteRate"))
    DomainDeliverabilityCampaign.add_member(:projected_volume, Shapes::ShapeRef.new(shape: Volume, location_name: "ProjectedVolume"))
    DomainDeliverabilityCampaign.add_member(:esps, Shapes::ShapeRef.new(shape: Esps, location_name: "Esps"))
    DomainDeliverabilityCampaign.struct_class = Types::DomainDeliverabilityCampaign

    DomainDeliverabilityCampaignList.member = Shapes::ShapeRef.new(shape: DomainDeliverabilityCampaign)

    DomainDeliverabilityTrackingOption.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, location_name: "Domain"))
    DomainDeliverabilityTrackingOption.add_member(:subscription_start_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubscriptionStartDate"))
    DomainDeliverabilityTrackingOption.add_member(:inbox_placement_tracking_option, Shapes::ShapeRef.new(shape: InboxPlacementTrackingOption, location_name: "InboxPlacementTrackingOption"))
    DomainDeliverabilityTrackingOption.struct_class = Types::DomainDeliverabilityTrackingOption

    DomainDeliverabilityTrackingOptions.member = Shapes::ShapeRef.new(shape: DomainDeliverabilityTrackingOption)

    DomainIspPlacement.add_member(:isp_name, Shapes::ShapeRef.new(shape: IspName, location_name: "IspName"))
    DomainIspPlacement.add_member(:inbox_raw_count, Shapes::ShapeRef.new(shape: Volume, location_name: "InboxRawCount"))
    DomainIspPlacement.add_member(:spam_raw_count, Shapes::ShapeRef.new(shape: Volume, location_name: "SpamRawCount"))
    DomainIspPlacement.add_member(:inbox_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "InboxPercentage"))
    DomainIspPlacement.add_member(:spam_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "SpamPercentage"))
    DomainIspPlacement.struct_class = Types::DomainIspPlacement

    DomainIspPlacements.member = Shapes::ShapeRef.new(shape: DomainIspPlacement)

    EmailAddressList.member = Shapes::ShapeRef.new(shape: EmailAddress)

    EmailContent.add_member(:simple, Shapes::ShapeRef.new(shape: Message, location_name: "Simple"))
    EmailContent.add_member(:raw, Shapes::ShapeRef.new(shape: RawMessage, location_name: "Raw"))
    EmailContent.add_member(:template, Shapes::ShapeRef.new(shape: Template, location_name: "Template"))
    EmailContent.struct_class = Types::EmailContent

    EmailTemplateContent.add_member(:subject, Shapes::ShapeRef.new(shape: EmailTemplateSubject, location_name: "Subject"))
    EmailTemplateContent.add_member(:text, Shapes::ShapeRef.new(shape: EmailTemplateText, location_name: "Text"))
    EmailTemplateContent.add_member(:html, Shapes::ShapeRef.new(shape: EmailTemplateHtml, location_name: "Html"))
    EmailTemplateContent.struct_class = Types::EmailTemplateContent

    EmailTemplateMetadata.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: "TemplateName"))
    EmailTemplateMetadata.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    EmailTemplateMetadata.struct_class = Types::EmailTemplateMetadata

    EmailTemplateMetadataList.member = Shapes::ShapeRef.new(shape: EmailTemplateMetadata)

    Esps.member = Shapes::ShapeRef.new(shape: Esp)

    EventDestination.add_member(:name, Shapes::ShapeRef.new(shape: EventDestinationName, required: true, location_name: "Name"))
    EventDestination.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "Enabled"))
    EventDestination.add_member(:matching_event_types, Shapes::ShapeRef.new(shape: EventTypes, required: true, location_name: "MatchingEventTypes"))
    EventDestination.add_member(:kinesis_firehose_destination, Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: "KinesisFirehoseDestination"))
    EventDestination.add_member(:cloud_watch_destination, Shapes::ShapeRef.new(shape: CloudWatchDestination, location_name: "CloudWatchDestination"))
    EventDestination.add_member(:sns_destination, Shapes::ShapeRef.new(shape: SnsDestination, location_name: "SnsDestination"))
    EventDestination.add_member(:pinpoint_destination, Shapes::ShapeRef.new(shape: PinpointDestination, location_name: "PinpointDestination"))
    EventDestination.struct_class = Types::EventDestination

    EventDestinationDefinition.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "Enabled"))
    EventDestinationDefinition.add_member(:matching_event_types, Shapes::ShapeRef.new(shape: EventTypes, location_name: "MatchingEventTypes"))
    EventDestinationDefinition.add_member(:kinesis_firehose_destination, Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: "KinesisFirehoseDestination"))
    EventDestinationDefinition.add_member(:cloud_watch_destination, Shapes::ShapeRef.new(shape: CloudWatchDestination, location_name: "CloudWatchDestination"))
    EventDestinationDefinition.add_member(:sns_destination, Shapes::ShapeRef.new(shape: SnsDestination, location_name: "SnsDestination"))
    EventDestinationDefinition.add_member(:pinpoint_destination, Shapes::ShapeRef.new(shape: PinpointDestination, location_name: "PinpointDestination"))
    EventDestinationDefinition.struct_class = Types::EventDestinationDefinition

    EventDestinations.member = Shapes::ShapeRef.new(shape: EventDestination)

    EventTypes.member = Shapes::ShapeRef.new(shape: EventType)

    FailureInfo.add_member(:failed_records_s3_url, Shapes::ShapeRef.new(shape: FailedRecordsS3Url, location_name: "FailedRecordsS3Url"))
    FailureInfo.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    FailureInfo.struct_class = Types::FailureInfo

    GetAccountRequest.struct_class = Types::GetAccountRequest

    GetAccountResponse.add_member(:dedicated_ip_auto_warmup_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "DedicatedIpAutoWarmupEnabled"))
    GetAccountResponse.add_member(:enforcement_status, Shapes::ShapeRef.new(shape: GeneralEnforcementStatus, location_name: "EnforcementStatus"))
    GetAccountResponse.add_member(:production_access_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "ProductionAccessEnabled"))
    GetAccountResponse.add_member(:send_quota, Shapes::ShapeRef.new(shape: SendQuota, location_name: "SendQuota"))
    GetAccountResponse.add_member(:sending_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "SendingEnabled"))
    GetAccountResponse.add_member(:suppression_attributes, Shapes::ShapeRef.new(shape: SuppressionAttributes, location_name: "SuppressionAttributes"))
    GetAccountResponse.add_member(:details, Shapes::ShapeRef.new(shape: AccountDetails, location_name: "Details"))
    GetAccountResponse.struct_class = Types::GetAccountResponse

    GetBlacklistReportsRequest.add_member(:blacklist_item_names, Shapes::ShapeRef.new(shape: BlacklistItemNames, required: true, location: "querystring", location_name: "BlacklistItemNames"))
    GetBlacklistReportsRequest.struct_class = Types::GetBlacklistReportsRequest

    GetBlacklistReportsResponse.add_member(:blacklist_report, Shapes::ShapeRef.new(shape: BlacklistReport, required: true, location_name: "BlacklistReport"))
    GetBlacklistReportsResponse.struct_class = Types::GetBlacklistReportsResponse

    GetConfigurationSetEventDestinationsRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    GetConfigurationSetEventDestinationsRequest.struct_class = Types::GetConfigurationSetEventDestinationsRequest

    GetConfigurationSetEventDestinationsResponse.add_member(:event_destinations, Shapes::ShapeRef.new(shape: EventDestinations, location_name: "EventDestinations"))
    GetConfigurationSetEventDestinationsResponse.struct_class = Types::GetConfigurationSetEventDestinationsResponse

    GetConfigurationSetRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    GetConfigurationSetRequest.struct_class = Types::GetConfigurationSetRequest

    GetConfigurationSetResponse.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    GetConfigurationSetResponse.add_member(:tracking_options, Shapes::ShapeRef.new(shape: TrackingOptions, location_name: "TrackingOptions"))
    GetConfigurationSetResponse.add_member(:delivery_options, Shapes::ShapeRef.new(shape: DeliveryOptions, location_name: "DeliveryOptions"))
    GetConfigurationSetResponse.add_member(:reputation_options, Shapes::ShapeRef.new(shape: ReputationOptions, location_name: "ReputationOptions"))
    GetConfigurationSetResponse.add_member(:sending_options, Shapes::ShapeRef.new(shape: SendingOptions, location_name: "SendingOptions"))
    GetConfigurationSetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    GetConfigurationSetResponse.add_member(:suppression_options, Shapes::ShapeRef.new(shape: SuppressionOptions, location_name: "SuppressionOptions"))
    GetConfigurationSetResponse.struct_class = Types::GetConfigurationSetResponse

    GetCustomVerificationEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location: "uri", location_name: "TemplateName"))
    GetCustomVerificationEmailTemplateRequest.struct_class = Types::GetCustomVerificationEmailTemplateRequest

    GetCustomVerificationEmailTemplateResponse.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: "TemplateName"))
    GetCustomVerificationEmailTemplateResponse.add_member(:from_email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "FromEmailAddress"))
    GetCustomVerificationEmailTemplateResponse.add_member(:template_subject, Shapes::ShapeRef.new(shape: EmailTemplateSubject, location_name: "TemplateSubject"))
    GetCustomVerificationEmailTemplateResponse.add_member(:template_content, Shapes::ShapeRef.new(shape: TemplateContent, location_name: "TemplateContent"))
    GetCustomVerificationEmailTemplateResponse.add_member(:success_redirection_url, Shapes::ShapeRef.new(shape: SuccessRedirectionURL, location_name: "SuccessRedirectionURL"))
    GetCustomVerificationEmailTemplateResponse.add_member(:failure_redirection_url, Shapes::ShapeRef.new(shape: FailureRedirectionURL, location_name: "FailureRedirectionURL"))
    GetCustomVerificationEmailTemplateResponse.struct_class = Types::GetCustomVerificationEmailTemplateResponse

    GetDedicatedIpRequest.add_member(:ip, Shapes::ShapeRef.new(shape: Ip, required: true, location: "uri", location_name: "IP"))
    GetDedicatedIpRequest.struct_class = Types::GetDedicatedIpRequest

    GetDedicatedIpResponse.add_member(:dedicated_ip, Shapes::ShapeRef.new(shape: DedicatedIp, location_name: "DedicatedIp"))
    GetDedicatedIpResponse.struct_class = Types::GetDedicatedIpResponse

    GetDedicatedIpsRequest.add_member(:pool_name, Shapes::ShapeRef.new(shape: PoolName, location: "querystring", location_name: "PoolName"))
    GetDedicatedIpsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    GetDedicatedIpsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "PageSize"))
    GetDedicatedIpsRequest.struct_class = Types::GetDedicatedIpsRequest

    GetDedicatedIpsResponse.add_member(:dedicated_ips, Shapes::ShapeRef.new(shape: DedicatedIpList, location_name: "DedicatedIps"))
    GetDedicatedIpsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetDedicatedIpsResponse.struct_class = Types::GetDedicatedIpsResponse

    GetDeliverabilityDashboardOptionsRequest.struct_class = Types::GetDeliverabilityDashboardOptionsRequest

    GetDeliverabilityDashboardOptionsResponse.add_member(:dashboard_enabled, Shapes::ShapeRef.new(shape: Enabled, required: true, location_name: "DashboardEnabled"))
    GetDeliverabilityDashboardOptionsResponse.add_member(:subscription_expiry_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubscriptionExpiryDate"))
    GetDeliverabilityDashboardOptionsResponse.add_member(:account_status, Shapes::ShapeRef.new(shape: DeliverabilityDashboardAccountStatus, location_name: "AccountStatus"))
    GetDeliverabilityDashboardOptionsResponse.add_member(:active_subscribed_domains, Shapes::ShapeRef.new(shape: DomainDeliverabilityTrackingOptions, location_name: "ActiveSubscribedDomains"))
    GetDeliverabilityDashboardOptionsResponse.add_member(:pending_expiration_subscribed_domains, Shapes::ShapeRef.new(shape: DomainDeliverabilityTrackingOptions, location_name: "PendingExpirationSubscribedDomains"))
    GetDeliverabilityDashboardOptionsResponse.struct_class = Types::GetDeliverabilityDashboardOptionsResponse

    GetDeliverabilityTestReportRequest.add_member(:report_id, Shapes::ShapeRef.new(shape: ReportId, required: true, location: "uri", location_name: "ReportId"))
    GetDeliverabilityTestReportRequest.struct_class = Types::GetDeliverabilityTestReportRequest

    GetDeliverabilityTestReportResponse.add_member(:deliverability_test_report, Shapes::ShapeRef.new(shape: DeliverabilityTestReport, required: true, location_name: "DeliverabilityTestReport"))
    GetDeliverabilityTestReportResponse.add_member(:overall_placement, Shapes::ShapeRef.new(shape: PlacementStatistics, required: true, location_name: "OverallPlacement"))
    GetDeliverabilityTestReportResponse.add_member(:isp_placements, Shapes::ShapeRef.new(shape: IspPlacements, required: true, location_name: "IspPlacements"))
    GetDeliverabilityTestReportResponse.add_member(:message, Shapes::ShapeRef.new(shape: MessageContent, location_name: "Message"))
    GetDeliverabilityTestReportResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    GetDeliverabilityTestReportResponse.struct_class = Types::GetDeliverabilityTestReportResponse

    GetDomainDeliverabilityCampaignRequest.add_member(:campaign_id, Shapes::ShapeRef.new(shape: CampaignId, required: true, location: "uri", location_name: "CampaignId"))
    GetDomainDeliverabilityCampaignRequest.struct_class = Types::GetDomainDeliverabilityCampaignRequest

    GetDomainDeliverabilityCampaignResponse.add_member(:domain_deliverability_campaign, Shapes::ShapeRef.new(shape: DomainDeliverabilityCampaign, required: true, location_name: "DomainDeliverabilityCampaign"))
    GetDomainDeliverabilityCampaignResponse.struct_class = Types::GetDomainDeliverabilityCampaignResponse

    GetDomainStatisticsReportRequest.add_member(:domain, Shapes::ShapeRef.new(shape: Identity, required: true, location: "uri", location_name: "Domain"))
    GetDomainStatisticsReportRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "StartDate"))
    GetDomainStatisticsReportRequest.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "EndDate"))
    GetDomainStatisticsReportRequest.struct_class = Types::GetDomainStatisticsReportRequest

    GetDomainStatisticsReportResponse.add_member(:overall_volume, Shapes::ShapeRef.new(shape: OverallVolume, required: true, location_name: "OverallVolume"))
    GetDomainStatisticsReportResponse.add_member(:daily_volumes, Shapes::ShapeRef.new(shape: DailyVolumes, required: true, location_name: "DailyVolumes"))
    GetDomainStatisticsReportResponse.struct_class = Types::GetDomainStatisticsReportResponse

    GetEmailIdentityPoliciesRequest.add_member(:email_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location: "uri", location_name: "EmailIdentity"))
    GetEmailIdentityPoliciesRequest.struct_class = Types::GetEmailIdentityPoliciesRequest

    GetEmailIdentityPoliciesResponse.add_member(:policies, Shapes::ShapeRef.new(shape: PolicyMap, location_name: "Policies"))
    GetEmailIdentityPoliciesResponse.struct_class = Types::GetEmailIdentityPoliciesResponse

    GetEmailIdentityRequest.add_member(:email_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location: "uri", location_name: "EmailIdentity"))
    GetEmailIdentityRequest.struct_class = Types::GetEmailIdentityRequest

    GetEmailIdentityResponse.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, location_name: "IdentityType"))
    GetEmailIdentityResponse.add_member(:feedback_forwarding_status, Shapes::ShapeRef.new(shape: Enabled, location_name: "FeedbackForwardingStatus"))
    GetEmailIdentityResponse.add_member(:verified_for_sending_status, Shapes::ShapeRef.new(shape: Enabled, location_name: "VerifiedForSendingStatus"))
    GetEmailIdentityResponse.add_member(:dkim_attributes, Shapes::ShapeRef.new(shape: DkimAttributes, location_name: "DkimAttributes"))
    GetEmailIdentityResponse.add_member(:mail_from_attributes, Shapes::ShapeRef.new(shape: MailFromAttributes, location_name: "MailFromAttributes"))
    GetEmailIdentityResponse.add_member(:policies, Shapes::ShapeRef.new(shape: PolicyMap, location_name: "Policies"))
    GetEmailIdentityResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    GetEmailIdentityResponse.struct_class = Types::GetEmailIdentityResponse

    GetEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location: "uri", location_name: "TemplateName"))
    GetEmailTemplateRequest.struct_class = Types::GetEmailTemplateRequest

    GetEmailTemplateResponse.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location_name: "TemplateName"))
    GetEmailTemplateResponse.add_member(:template_content, Shapes::ShapeRef.new(shape: EmailTemplateContent, required: true, location_name: "TemplateContent"))
    GetEmailTemplateResponse.struct_class = Types::GetEmailTemplateResponse

    GetImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "JobId"))
    GetImportJobRequest.struct_class = Types::GetImportJobRequest

    GetImportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetImportJobResponse.add_member(:import_destination, Shapes::ShapeRef.new(shape: ImportDestination, location_name: "ImportDestination"))
    GetImportJobResponse.add_member(:import_data_source, Shapes::ShapeRef.new(shape: ImportDataSource, location_name: "ImportDataSource"))
    GetImportJobResponse.add_member(:failure_info, Shapes::ShapeRef.new(shape: FailureInfo, location_name: "FailureInfo"))
    GetImportJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    GetImportJobResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    GetImportJobResponse.add_member(:completed_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletedTimestamp"))
    GetImportJobResponse.add_member(:processed_records_count, Shapes::ShapeRef.new(shape: ProcessedRecordsCount, location_name: "ProcessedRecordsCount"))
    GetImportJobResponse.add_member(:failed_records_count, Shapes::ShapeRef.new(shape: FailedRecordsCount, location_name: "FailedRecordsCount"))
    GetImportJobResponse.struct_class = Types::GetImportJobResponse

    GetSuppressedDestinationRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location: "uri", location_name: "EmailAddress"))
    GetSuppressedDestinationRequest.struct_class = Types::GetSuppressedDestinationRequest

    GetSuppressedDestinationResponse.add_member(:suppressed_destination, Shapes::ShapeRef.new(shape: SuppressedDestination, required: true, location_name: "SuppressedDestination"))
    GetSuppressedDestinationResponse.struct_class = Types::GetSuppressedDestinationResponse

    IdentityInfo.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, location_name: "IdentityType"))
    IdentityInfo.add_member(:identity_name, Shapes::ShapeRef.new(shape: Identity, location_name: "IdentityName"))
    IdentityInfo.add_member(:sending_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "SendingEnabled"))
    IdentityInfo.struct_class = Types::IdentityInfo

    IdentityInfoList.member = Shapes::ShapeRef.new(shape: IdentityInfo)

    ImportDataSource.add_member(:s3_url, Shapes::ShapeRef.new(shape: S3Url, required: true, location_name: "S3Url"))
    ImportDataSource.add_member(:data_format, Shapes::ShapeRef.new(shape: DataFormat, required: true, location_name: "DataFormat"))
    ImportDataSource.struct_class = Types::ImportDataSource

    ImportDestination.add_member(:suppression_list_destination, Shapes::ShapeRef.new(shape: SuppressionListDestination, required: true, location_name: "SuppressionListDestination"))
    ImportDestination.struct_class = Types::ImportDestination

    ImportJobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    ImportJobSummary.add_member(:import_destination, Shapes::ShapeRef.new(shape: ImportDestination, location_name: "ImportDestination"))
    ImportJobSummary.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    ImportJobSummary.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ImportJobSummary.struct_class = Types::ImportJobSummary

    ImportJobSummaryList.member = Shapes::ShapeRef.new(shape: ImportJobSummary)

    InboxPlacementTrackingOption.add_member(:global, Shapes::ShapeRef.new(shape: Enabled, location_name: "Global"))
    InboxPlacementTrackingOption.add_member(:tracked_isps, Shapes::ShapeRef.new(shape: IspNameList, location_name: "TrackedIsps"))
    InboxPlacementTrackingOption.struct_class = Types::InboxPlacementTrackingOption

    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    IpList.member = Shapes::ShapeRef.new(shape: Ip)

    IspNameList.member = Shapes::ShapeRef.new(shape: IspName)

    IspPlacement.add_member(:isp_name, Shapes::ShapeRef.new(shape: IspName, location_name: "IspName"))
    IspPlacement.add_member(:placement_statistics, Shapes::ShapeRef.new(shape: PlacementStatistics, location_name: "PlacementStatistics"))
    IspPlacement.struct_class = Types::IspPlacement

    IspPlacements.member = Shapes::ShapeRef.new(shape: IspPlacement)

    KinesisFirehoseDestination.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "IamRoleArn"))
    KinesisFirehoseDestination.add_member(:delivery_stream_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "DeliveryStreamArn"))
    KinesisFirehoseDestination.struct_class = Types::KinesisFirehoseDestination

    LimitExceededException.struct_class = Types::LimitExceededException

    ListConfigurationSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListConfigurationSetsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "PageSize"))
    ListConfigurationSetsRequest.struct_class = Types::ListConfigurationSetsRequest

    ListConfigurationSetsResponse.add_member(:configuration_sets, Shapes::ShapeRef.new(shape: ConfigurationSetNameList, location_name: "ConfigurationSets"))
    ListConfigurationSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConfigurationSetsResponse.struct_class = Types::ListConfigurationSetsResponse

    ListCustomVerificationEmailTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListCustomVerificationEmailTemplatesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "PageSize"))
    ListCustomVerificationEmailTemplatesRequest.struct_class = Types::ListCustomVerificationEmailTemplatesRequest

    ListCustomVerificationEmailTemplatesResponse.add_member(:custom_verification_email_templates, Shapes::ShapeRef.new(shape: CustomVerificationEmailTemplatesList, location_name: "CustomVerificationEmailTemplates"))
    ListCustomVerificationEmailTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCustomVerificationEmailTemplatesResponse.struct_class = Types::ListCustomVerificationEmailTemplatesResponse

    ListDedicatedIpPoolsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListDedicatedIpPoolsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "PageSize"))
    ListDedicatedIpPoolsRequest.struct_class = Types::ListDedicatedIpPoolsRequest

    ListDedicatedIpPoolsResponse.add_member(:dedicated_ip_pools, Shapes::ShapeRef.new(shape: ListOfDedicatedIpPools, location_name: "DedicatedIpPools"))
    ListDedicatedIpPoolsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDedicatedIpPoolsResponse.struct_class = Types::ListDedicatedIpPoolsResponse

    ListDeliverabilityTestReportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListDeliverabilityTestReportsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "PageSize"))
    ListDeliverabilityTestReportsRequest.struct_class = Types::ListDeliverabilityTestReportsRequest

    ListDeliverabilityTestReportsResponse.add_member(:deliverability_test_reports, Shapes::ShapeRef.new(shape: DeliverabilityTestReports, required: true, location_name: "DeliverabilityTestReports"))
    ListDeliverabilityTestReportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDeliverabilityTestReportsResponse.struct_class = Types::ListDeliverabilityTestReportsResponse

    ListDomainDeliverabilityCampaignsRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "StartDate"))
    ListDomainDeliverabilityCampaignsRequest.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "EndDate"))
    ListDomainDeliverabilityCampaignsRequest.add_member(:subscribed_domain, Shapes::ShapeRef.new(shape: Domain, required: true, location: "uri", location_name: "SubscribedDomain"))
    ListDomainDeliverabilityCampaignsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListDomainDeliverabilityCampaignsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "PageSize"))
    ListDomainDeliverabilityCampaignsRequest.struct_class = Types::ListDomainDeliverabilityCampaignsRequest

    ListDomainDeliverabilityCampaignsResponse.add_member(:domain_deliverability_campaigns, Shapes::ShapeRef.new(shape: DomainDeliverabilityCampaignList, required: true, location_name: "DomainDeliverabilityCampaigns"))
    ListDomainDeliverabilityCampaignsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDomainDeliverabilityCampaignsResponse.struct_class = Types::ListDomainDeliverabilityCampaignsResponse

    ListEmailIdentitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListEmailIdentitiesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "PageSize"))
    ListEmailIdentitiesRequest.struct_class = Types::ListEmailIdentitiesRequest

    ListEmailIdentitiesResponse.add_member(:email_identities, Shapes::ShapeRef.new(shape: IdentityInfoList, location_name: "EmailIdentities"))
    ListEmailIdentitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEmailIdentitiesResponse.struct_class = Types::ListEmailIdentitiesResponse

    ListEmailTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListEmailTemplatesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "PageSize"))
    ListEmailTemplatesRequest.struct_class = Types::ListEmailTemplatesRequest

    ListEmailTemplatesResponse.add_member(:templates_metadata, Shapes::ShapeRef.new(shape: EmailTemplateMetadataList, location_name: "TemplatesMetadata"))
    ListEmailTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEmailTemplatesResponse.struct_class = Types::ListEmailTemplatesResponse

    ListImportJobsRequest.add_member(:import_destination_type, Shapes::ShapeRef.new(shape: ImportDestinationType, location_name: "ImportDestinationType"))
    ListImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListImportJobsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "PageSize"))
    ListImportJobsRequest.struct_class = Types::ListImportJobsRequest

    ListImportJobsResponse.add_member(:import_jobs, Shapes::ShapeRef.new(shape: ImportJobSummaryList, location_name: "ImportJobs"))
    ListImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListImportJobsResponse.struct_class = Types::ListImportJobsResponse

    ListOfDedicatedIpPools.member = Shapes::ShapeRef.new(shape: PoolName)

    ListSuppressedDestinationsRequest.add_member(:reasons, Shapes::ShapeRef.new(shape: SuppressionListReasons, location: "querystring", location_name: "Reason"))
    ListSuppressedDestinationsRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "StartDate"))
    ListSuppressedDestinationsRequest.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "EndDate"))
    ListSuppressedDestinationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListSuppressedDestinationsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "PageSize"))
    ListSuppressedDestinationsRequest.struct_class = Types::ListSuppressedDestinationsRequest

    ListSuppressedDestinationsResponse.add_member(:suppressed_destination_summaries, Shapes::ShapeRef.new(shape: SuppressedDestinationSummaries, location_name: "SuppressedDestinationSummaries"))
    ListSuppressedDestinationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSuppressedDestinationsResponse.struct_class = Types::ListSuppressedDestinationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MailFromAttributes.add_member(:mail_from_domain, Shapes::ShapeRef.new(shape: MailFromDomainName, required: true, location_name: "MailFromDomain"))
    MailFromAttributes.add_member(:mail_from_domain_status, Shapes::ShapeRef.new(shape: MailFromDomainStatus, required: true, location_name: "MailFromDomainStatus"))
    MailFromAttributes.add_member(:behavior_on_mx_failure, Shapes::ShapeRef.new(shape: BehaviorOnMxFailure, required: true, location_name: "BehaviorOnMxFailure"))
    MailFromAttributes.struct_class = Types::MailFromAttributes

    MailFromDomainNotVerifiedException.struct_class = Types::MailFromDomainNotVerifiedException

    Message.add_member(:subject, Shapes::ShapeRef.new(shape: Content, required: true, location_name: "Subject"))
    Message.add_member(:body, Shapes::ShapeRef.new(shape: Body, required: true, location_name: "Body"))
    Message.struct_class = Types::Message

    MessageRejected.struct_class = Types::MessageRejected

    MessageTag.add_member(:name, Shapes::ShapeRef.new(shape: MessageTagName, required: true, location_name: "Name"))
    MessageTag.add_member(:value, Shapes::ShapeRef.new(shape: MessageTagValue, required: true, location_name: "Value"))
    MessageTag.struct_class = Types::MessageTag

    MessageTagList.member = Shapes::ShapeRef.new(shape: MessageTag)

    NotFoundException.struct_class = Types::NotFoundException

    OverallVolume.add_member(:volume_statistics, Shapes::ShapeRef.new(shape: VolumeStatistics, location_name: "VolumeStatistics"))
    OverallVolume.add_member(:read_rate_percent, Shapes::ShapeRef.new(shape: Percentage, location_name: "ReadRatePercent"))
    OverallVolume.add_member(:domain_isp_placements, Shapes::ShapeRef.new(shape: DomainIspPlacements, location_name: "DomainIspPlacements"))
    OverallVolume.struct_class = Types::OverallVolume

    PinpointDestination.add_member(:application_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ApplicationArn"))
    PinpointDestination.struct_class = Types::PinpointDestination

    PlacementStatistics.add_member(:inbox_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "InboxPercentage"))
    PlacementStatistics.add_member(:spam_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "SpamPercentage"))
    PlacementStatistics.add_member(:missing_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "MissingPercentage"))
    PlacementStatistics.add_member(:spf_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "SpfPercentage"))
    PlacementStatistics.add_member(:dkim_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "DkimPercentage"))
    PlacementStatistics.struct_class = Types::PlacementStatistics

    PolicyMap.key = Shapes::ShapeRef.new(shape: PolicyName)
    PolicyMap.value = Shapes::ShapeRef.new(shape: Policy)

    PutAccountDedicatedIpWarmupAttributesRequest.add_member(:auto_warmup_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "AutoWarmupEnabled"))
    PutAccountDedicatedIpWarmupAttributesRequest.struct_class = Types::PutAccountDedicatedIpWarmupAttributesRequest

    PutAccountDedicatedIpWarmupAttributesResponse.struct_class = Types::PutAccountDedicatedIpWarmupAttributesResponse

    PutAccountDetailsRequest.add_member(:mail_type, Shapes::ShapeRef.new(shape: MailType, required: true, location_name: "MailType"))
    PutAccountDetailsRequest.add_member(:website_url, Shapes::ShapeRef.new(shape: WebsiteURL, required: true, location_name: "WebsiteURL"))
    PutAccountDetailsRequest.add_member(:contact_language, Shapes::ShapeRef.new(shape: ContactLanguage, location_name: "ContactLanguage"))
    PutAccountDetailsRequest.add_member(:use_case_description, Shapes::ShapeRef.new(shape: UseCaseDescription, required: true, location_name: "UseCaseDescription"))
    PutAccountDetailsRequest.add_member(:additional_contact_email_addresses, Shapes::ShapeRef.new(shape: AdditionalContactEmailAddresses, location_name: "AdditionalContactEmailAddresses"))
    PutAccountDetailsRequest.add_member(:production_access_enabled, Shapes::ShapeRef.new(shape: EnabledWrapper, location_name: "ProductionAccessEnabled"))
    PutAccountDetailsRequest.struct_class = Types::PutAccountDetailsRequest

    PutAccountDetailsResponse.struct_class = Types::PutAccountDetailsResponse

    PutAccountSendingAttributesRequest.add_member(:sending_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "SendingEnabled"))
    PutAccountSendingAttributesRequest.struct_class = Types::PutAccountSendingAttributesRequest

    PutAccountSendingAttributesResponse.struct_class = Types::PutAccountSendingAttributesResponse

    PutAccountSuppressionAttributesRequest.add_member(:suppressed_reasons, Shapes::ShapeRef.new(shape: SuppressionListReasons, location_name: "SuppressedReasons"))
    PutAccountSuppressionAttributesRequest.struct_class = Types::PutAccountSuppressionAttributesRequest

    PutAccountSuppressionAttributesResponse.struct_class = Types::PutAccountSuppressionAttributesResponse

    PutConfigurationSetDeliveryOptionsRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:tls_policy, Shapes::ShapeRef.new(shape: TlsPolicy, location_name: "TlsPolicy"))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:sending_pool_name, Shapes::ShapeRef.new(shape: SendingPoolName, location_name: "SendingPoolName"))
    PutConfigurationSetDeliveryOptionsRequest.struct_class = Types::PutConfigurationSetDeliveryOptionsRequest

    PutConfigurationSetDeliveryOptionsResponse.struct_class = Types::PutConfigurationSetDeliveryOptionsResponse

    PutConfigurationSetReputationOptionsRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    PutConfigurationSetReputationOptionsRequest.add_member(:reputation_metrics_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "ReputationMetricsEnabled"))
    PutConfigurationSetReputationOptionsRequest.struct_class = Types::PutConfigurationSetReputationOptionsRequest

    PutConfigurationSetReputationOptionsResponse.struct_class = Types::PutConfigurationSetReputationOptionsResponse

    PutConfigurationSetSendingOptionsRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    PutConfigurationSetSendingOptionsRequest.add_member(:sending_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "SendingEnabled"))
    PutConfigurationSetSendingOptionsRequest.struct_class = Types::PutConfigurationSetSendingOptionsRequest

    PutConfigurationSetSendingOptionsResponse.struct_class = Types::PutConfigurationSetSendingOptionsResponse

    PutConfigurationSetSuppressionOptionsRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    PutConfigurationSetSuppressionOptionsRequest.add_member(:suppressed_reasons, Shapes::ShapeRef.new(shape: SuppressionListReasons, location_name: "SuppressedReasons"))
    PutConfigurationSetSuppressionOptionsRequest.struct_class = Types::PutConfigurationSetSuppressionOptionsRequest

    PutConfigurationSetSuppressionOptionsResponse.struct_class = Types::PutConfigurationSetSuppressionOptionsResponse

    PutConfigurationSetTrackingOptionsRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    PutConfigurationSetTrackingOptionsRequest.add_member(:custom_redirect_domain, Shapes::ShapeRef.new(shape: CustomRedirectDomain, location_name: "CustomRedirectDomain"))
    PutConfigurationSetTrackingOptionsRequest.struct_class = Types::PutConfigurationSetTrackingOptionsRequest

    PutConfigurationSetTrackingOptionsResponse.struct_class = Types::PutConfigurationSetTrackingOptionsResponse

    PutDedicatedIpInPoolRequest.add_member(:ip, Shapes::ShapeRef.new(shape: Ip, required: true, location: "uri", location_name: "IP"))
    PutDedicatedIpInPoolRequest.add_member(:destination_pool_name, Shapes::ShapeRef.new(shape: PoolName, required: true, location_name: "DestinationPoolName"))
    PutDedicatedIpInPoolRequest.struct_class = Types::PutDedicatedIpInPoolRequest

    PutDedicatedIpInPoolResponse.struct_class = Types::PutDedicatedIpInPoolResponse

    PutDedicatedIpWarmupAttributesRequest.add_member(:ip, Shapes::ShapeRef.new(shape: Ip, required: true, location: "uri", location_name: "IP"))
    PutDedicatedIpWarmupAttributesRequest.add_member(:warmup_percentage, Shapes::ShapeRef.new(shape: Percentage100Wrapper, required: true, location_name: "WarmupPercentage"))
    PutDedicatedIpWarmupAttributesRequest.struct_class = Types::PutDedicatedIpWarmupAttributesRequest

    PutDedicatedIpWarmupAttributesResponse.struct_class = Types::PutDedicatedIpWarmupAttributesResponse

    PutDeliverabilityDashboardOptionRequest.add_member(:dashboard_enabled, Shapes::ShapeRef.new(shape: Enabled, required: true, location_name: "DashboardEnabled"))
    PutDeliverabilityDashboardOptionRequest.add_member(:subscribed_domains, Shapes::ShapeRef.new(shape: DomainDeliverabilityTrackingOptions, location_name: "SubscribedDomains"))
    PutDeliverabilityDashboardOptionRequest.struct_class = Types::PutDeliverabilityDashboardOptionRequest

    PutDeliverabilityDashboardOptionResponse.struct_class = Types::PutDeliverabilityDashboardOptionResponse

    PutEmailIdentityDkimAttributesRequest.add_member(:email_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location: "uri", location_name: "EmailIdentity"))
    PutEmailIdentityDkimAttributesRequest.add_member(:signing_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "SigningEnabled"))
    PutEmailIdentityDkimAttributesRequest.struct_class = Types::PutEmailIdentityDkimAttributesRequest

    PutEmailIdentityDkimAttributesResponse.struct_class = Types::PutEmailIdentityDkimAttributesResponse

    PutEmailIdentityDkimSigningAttributesRequest.add_member(:email_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location: "uri", location_name: "EmailIdentity"))
    PutEmailIdentityDkimSigningAttributesRequest.add_member(:signing_attributes_origin, Shapes::ShapeRef.new(shape: DkimSigningAttributesOrigin, required: true, location_name: "SigningAttributesOrigin"))
    PutEmailIdentityDkimSigningAttributesRequest.add_member(:signing_attributes, Shapes::ShapeRef.new(shape: DkimSigningAttributes, location_name: "SigningAttributes"))
    PutEmailIdentityDkimSigningAttributesRequest.struct_class = Types::PutEmailIdentityDkimSigningAttributesRequest

    PutEmailIdentityDkimSigningAttributesResponse.add_member(:dkim_status, Shapes::ShapeRef.new(shape: DkimStatus, location_name: "DkimStatus"))
    PutEmailIdentityDkimSigningAttributesResponse.add_member(:dkim_tokens, Shapes::ShapeRef.new(shape: DnsTokenList, location_name: "DkimTokens"))
    PutEmailIdentityDkimSigningAttributesResponse.struct_class = Types::PutEmailIdentityDkimSigningAttributesResponse

    PutEmailIdentityFeedbackAttributesRequest.add_member(:email_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location: "uri", location_name: "EmailIdentity"))
    PutEmailIdentityFeedbackAttributesRequest.add_member(:email_forwarding_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "EmailForwardingEnabled"))
    PutEmailIdentityFeedbackAttributesRequest.struct_class = Types::PutEmailIdentityFeedbackAttributesRequest

    PutEmailIdentityFeedbackAttributesResponse.struct_class = Types::PutEmailIdentityFeedbackAttributesResponse

    PutEmailIdentityMailFromAttributesRequest.add_member(:email_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location: "uri", location_name: "EmailIdentity"))
    PutEmailIdentityMailFromAttributesRequest.add_member(:mail_from_domain, Shapes::ShapeRef.new(shape: MailFromDomainName, location_name: "MailFromDomain"))
    PutEmailIdentityMailFromAttributesRequest.add_member(:behavior_on_mx_failure, Shapes::ShapeRef.new(shape: BehaviorOnMxFailure, location_name: "BehaviorOnMxFailure"))
    PutEmailIdentityMailFromAttributesRequest.struct_class = Types::PutEmailIdentityMailFromAttributesRequest

    PutEmailIdentityMailFromAttributesResponse.struct_class = Types::PutEmailIdentityMailFromAttributesResponse

    PutSuppressedDestinationRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "EmailAddress"))
    PutSuppressedDestinationRequest.add_member(:reason, Shapes::ShapeRef.new(shape: SuppressionListReason, required: true, location_name: "Reason"))
    PutSuppressedDestinationRequest.struct_class = Types::PutSuppressedDestinationRequest

    PutSuppressedDestinationResponse.struct_class = Types::PutSuppressedDestinationResponse

    RawMessage.add_member(:data, Shapes::ShapeRef.new(shape: RawMessageData, required: true, location_name: "Data"))
    RawMessage.struct_class = Types::RawMessage

    ReplacementEmailContent.add_member(:replacement_template, Shapes::ShapeRef.new(shape: ReplacementTemplate, location_name: "ReplacementTemplate"))
    ReplacementEmailContent.struct_class = Types::ReplacementEmailContent

    ReplacementTemplate.add_member(:replacement_template_data, Shapes::ShapeRef.new(shape: EmailTemplateData, location_name: "ReplacementTemplateData"))
    ReplacementTemplate.struct_class = Types::ReplacementTemplate

    ReputationOptions.add_member(:reputation_metrics_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "ReputationMetricsEnabled"))
    ReputationOptions.add_member(:last_fresh_start, Shapes::ShapeRef.new(shape: LastFreshStart, location_name: "LastFreshStart"))
    ReputationOptions.struct_class = Types::ReputationOptions

    ReviewDetails.add_member(:status, Shapes::ShapeRef.new(shape: ReviewStatus, location_name: "Status"))
    ReviewDetails.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, location_name: "CaseId"))
    ReviewDetails.struct_class = Types::ReviewDetails

    SendBulkEmailRequest.add_member(:from_email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "FromEmailAddress"))
    SendBulkEmailRequest.add_member(:from_email_address_identity_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "FromEmailAddressIdentityArn"))
    SendBulkEmailRequest.add_member(:reply_to_addresses, Shapes::ShapeRef.new(shape: EmailAddressList, location_name: "ReplyToAddresses"))
    SendBulkEmailRequest.add_member(:feedback_forwarding_email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "FeedbackForwardingEmailAddress"))
    SendBulkEmailRequest.add_member(:feedback_forwarding_email_address_identity_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "FeedbackForwardingEmailAddressIdentityArn"))
    SendBulkEmailRequest.add_member(:default_email_tags, Shapes::ShapeRef.new(shape: MessageTagList, location_name: "DefaultEmailTags"))
    SendBulkEmailRequest.add_member(:default_content, Shapes::ShapeRef.new(shape: BulkEmailContent, required: true, location_name: "DefaultContent"))
    SendBulkEmailRequest.add_member(:bulk_email_entries, Shapes::ShapeRef.new(shape: BulkEmailEntryList, required: true, location_name: "BulkEmailEntries"))
    SendBulkEmailRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    SendBulkEmailRequest.struct_class = Types::SendBulkEmailRequest

    SendBulkEmailResponse.add_member(:bulk_email_entry_results, Shapes::ShapeRef.new(shape: BulkEmailEntryResultList, required: true, location_name: "BulkEmailEntryResults"))
    SendBulkEmailResponse.struct_class = Types::SendBulkEmailResponse

    SendCustomVerificationEmailRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "EmailAddress"))
    SendCustomVerificationEmailRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location_name: "TemplateName"))
    SendCustomVerificationEmailRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    SendCustomVerificationEmailRequest.struct_class = Types::SendCustomVerificationEmailRequest

    SendCustomVerificationEmailResponse.add_member(:message_id, Shapes::ShapeRef.new(shape: OutboundMessageId, location_name: "MessageId"))
    SendCustomVerificationEmailResponse.struct_class = Types::SendCustomVerificationEmailResponse

    SendEmailRequest.add_member(:from_email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "FromEmailAddress"))
    SendEmailRequest.add_member(:from_email_address_identity_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "FromEmailAddressIdentityArn"))
    SendEmailRequest.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, location_name: "Destination"))
    SendEmailRequest.add_member(:reply_to_addresses, Shapes::ShapeRef.new(shape: EmailAddressList, location_name: "ReplyToAddresses"))
    SendEmailRequest.add_member(:feedback_forwarding_email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "FeedbackForwardingEmailAddress"))
    SendEmailRequest.add_member(:feedback_forwarding_email_address_identity_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "FeedbackForwardingEmailAddressIdentityArn"))
    SendEmailRequest.add_member(:content, Shapes::ShapeRef.new(shape: EmailContent, required: true, location_name: "Content"))
    SendEmailRequest.add_member(:email_tags, Shapes::ShapeRef.new(shape: MessageTagList, location_name: "EmailTags"))
    SendEmailRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    SendEmailRequest.struct_class = Types::SendEmailRequest

    SendEmailResponse.add_member(:message_id, Shapes::ShapeRef.new(shape: OutboundMessageId, location_name: "MessageId"))
    SendEmailResponse.struct_class = Types::SendEmailResponse

    SendQuota.add_member(:max_24_hour_send, Shapes::ShapeRef.new(shape: Max24HourSend, location_name: "Max24HourSend"))
    SendQuota.add_member(:max_send_rate, Shapes::ShapeRef.new(shape: MaxSendRate, location_name: "MaxSendRate"))
    SendQuota.add_member(:sent_last_24_hours, Shapes::ShapeRef.new(shape: SentLast24Hours, location_name: "SentLast24Hours"))
    SendQuota.struct_class = Types::SendQuota

    SendingOptions.add_member(:sending_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "SendingEnabled"))
    SendingOptions.struct_class = Types::SendingOptions

    SendingPausedException.struct_class = Types::SendingPausedException

    SnsDestination.add_member(:topic_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "TopicArn"))
    SnsDestination.struct_class = Types::SnsDestination

    SuppressedDestination.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "EmailAddress"))
    SuppressedDestination.add_member(:reason, Shapes::ShapeRef.new(shape: SuppressionListReason, required: true, location_name: "Reason"))
    SuppressedDestination.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdateTime"))
    SuppressedDestination.add_member(:attributes, Shapes::ShapeRef.new(shape: SuppressedDestinationAttributes, location_name: "Attributes"))
    SuppressedDestination.struct_class = Types::SuppressedDestination

    SuppressedDestinationAttributes.add_member(:message_id, Shapes::ShapeRef.new(shape: OutboundMessageId, location_name: "MessageId"))
    SuppressedDestinationAttributes.add_member(:feedback_id, Shapes::ShapeRef.new(shape: FeedbackId, location_name: "FeedbackId"))
    SuppressedDestinationAttributes.struct_class = Types::SuppressedDestinationAttributes

    SuppressedDestinationSummaries.member = Shapes::ShapeRef.new(shape: SuppressedDestinationSummary)

    SuppressedDestinationSummary.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "EmailAddress"))
    SuppressedDestinationSummary.add_member(:reason, Shapes::ShapeRef.new(shape: SuppressionListReason, required: true, location_name: "Reason"))
    SuppressedDestinationSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdateTime"))
    SuppressedDestinationSummary.struct_class = Types::SuppressedDestinationSummary

    SuppressionAttributes.add_member(:suppressed_reasons, Shapes::ShapeRef.new(shape: SuppressionListReasons, location_name: "SuppressedReasons"))
    SuppressionAttributes.struct_class = Types::SuppressionAttributes

    SuppressionListDestination.add_member(:suppression_list_import_action, Shapes::ShapeRef.new(shape: SuppressionListImportAction, required: true, location_name: "SuppressionListImportAction"))
    SuppressionListDestination.struct_class = Types::SuppressionListDestination

    SuppressionListReasons.member = Shapes::ShapeRef.new(shape: SuppressionListReason)

    SuppressionOptions.add_member(:suppressed_reasons, Shapes::ShapeRef.new(shape: SuppressionListReasons, location_name: "SuppressedReasons"))
    SuppressionOptions.struct_class = Types::SuppressionOptions

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Template.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: "TemplateName"))
    Template.add_member(:template_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "TemplateArn"))
    Template.add_member(:template_data, Shapes::ShapeRef.new(shape: EmailTemplateData, location_name: "TemplateData"))
    Template.struct_class = Types::Template

    TestRenderEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location: "uri", location_name: "TemplateName"))
    TestRenderEmailTemplateRequest.add_member(:template_data, Shapes::ShapeRef.new(shape: EmailTemplateData, required: true, location_name: "TemplateData"))
    TestRenderEmailTemplateRequest.struct_class = Types::TestRenderEmailTemplateRequest

    TestRenderEmailTemplateResponse.add_member(:rendered_template, Shapes::ShapeRef.new(shape: RenderedEmailTemplate, required: true, location_name: "RenderedTemplate"))
    TestRenderEmailTemplateResponse.struct_class = Types::TestRenderEmailTemplateResponse

    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    TrackingOptions.add_member(:custom_redirect_domain, Shapes::ShapeRef.new(shape: CustomRedirectDomain, required: true, location_name: "CustomRedirectDomain"))
    TrackingOptions.struct_class = Types::TrackingOptions

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, Shapes::ShapeRef.new(shape: EventDestinationName, required: true, location: "uri", location_name: "EventDestinationName"))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination, Shapes::ShapeRef.new(shape: EventDestinationDefinition, required: true, location_name: "EventDestination"))
    UpdateConfigurationSetEventDestinationRequest.struct_class = Types::UpdateConfigurationSetEventDestinationRequest

    UpdateConfigurationSetEventDestinationResponse.struct_class = Types::UpdateConfigurationSetEventDestinationResponse

    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location: "uri", location_name: "TemplateName"))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:from_email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "FromEmailAddress"))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_subject, Shapes::ShapeRef.new(shape: EmailTemplateSubject, required: true, location_name: "TemplateSubject"))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_content, Shapes::ShapeRef.new(shape: TemplateContent, required: true, location_name: "TemplateContent"))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:success_redirection_url, Shapes::ShapeRef.new(shape: SuccessRedirectionURL, required: true, location_name: "SuccessRedirectionURL"))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:failure_redirection_url, Shapes::ShapeRef.new(shape: FailureRedirectionURL, required: true, location_name: "FailureRedirectionURL"))
    UpdateCustomVerificationEmailTemplateRequest.struct_class = Types::UpdateCustomVerificationEmailTemplateRequest

    UpdateCustomVerificationEmailTemplateResponse.struct_class = Types::UpdateCustomVerificationEmailTemplateResponse

    UpdateEmailIdentityPolicyRequest.add_member(:email_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location: "uri", location_name: "EmailIdentity"))
    UpdateEmailIdentityPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location: "uri", location_name: "PolicyName"))
    UpdateEmailIdentityPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "Policy"))
    UpdateEmailIdentityPolicyRequest.struct_class = Types::UpdateEmailIdentityPolicyRequest

    UpdateEmailIdentityPolicyResponse.struct_class = Types::UpdateEmailIdentityPolicyResponse

    UpdateEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location: "uri", location_name: "TemplateName"))
    UpdateEmailTemplateRequest.add_member(:template_content, Shapes::ShapeRef.new(shape: EmailTemplateContent, required: true, location_name: "TemplateContent"))
    UpdateEmailTemplateRequest.struct_class = Types::UpdateEmailTemplateRequest

    UpdateEmailTemplateResponse.struct_class = Types::UpdateEmailTemplateResponse

    VolumeStatistics.add_member(:inbox_raw_count, Shapes::ShapeRef.new(shape: Volume, location_name: "InboxRawCount"))
    VolumeStatistics.add_member(:spam_raw_count, Shapes::ShapeRef.new(shape: Volume, location_name: "SpamRawCount"))
    VolumeStatistics.add_member(:projected_inbox, Shapes::ShapeRef.new(shape: Volume, location_name: "ProjectedInbox"))
    VolumeStatistics.add_member(:projected_spam, Shapes::ShapeRef.new(shape: Volume, location_name: "ProjectedSpam"))
    VolumeStatistics.struct_class = Types::VolumeStatistics


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-09-27"

      api.metadata = {
        "apiVersion" => "2019-09-27",
        "endpointPrefix" => "email",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Amazon SES V2",
        "serviceFullName" => "Amazon Simple Email Service",
        "serviceId" => "SESv2",
        "signatureVersion" => "v4",
        "signingName" => "ses",
        "uid" => "sesv2-2019-09-27",
      }

      api.add_operation(:create_configuration_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfigurationSet"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/configuration-sets"
        o.input = Shapes::ShapeRef.new(shape: CreateConfigurationSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConfigurationSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:create_configuration_set_event_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfigurationSetEventDestination"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations"
        o.input = Shapes::ShapeRef.new(shape: CreateConfigurationSetEventDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConfigurationSetEventDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_custom_verification_email_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomVerificationEmailTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/custom-verification-email-templates"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomVerificationEmailTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomVerificationEmailTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_dedicated_ip_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDedicatedIpPool"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/dedicated-ip-pools"
        o.input = Shapes::ShapeRef.new(shape: CreateDedicatedIpPoolRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDedicatedIpPoolResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:create_deliverability_test_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeliverabilityTestReport"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/deliverability-dashboard/test"
        o.input = Shapes::ShapeRef.new(shape: CreateDeliverabilityTestReportRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDeliverabilityTestReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccountSuspendedException)
        o.errors << Shapes::ShapeRef.new(shape: SendingPausedException)
        o.errors << Shapes::ShapeRef.new(shape: MessageRejected)
        o.errors << Shapes::ShapeRef.new(shape: MailFromDomainNotVerifiedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:create_email_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEmailIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/identities"
        o.input = Shapes::ShapeRef.new(shape: CreateEmailIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEmailIdentityResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:create_email_identity_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEmailIdentityPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}"
        o.input = Shapes::ShapeRef.new(shape: CreateEmailIdentityPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEmailIdentityPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_email_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEmailTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/templates"
        o.input = Shapes::ShapeRef.new(shape: CreateEmailTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEmailTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/import-jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_configuration_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfigurationSet"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/email/configuration-sets/{ConfigurationSetName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigurationSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConfigurationSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_configuration_set_event_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfigurationSetEventDestination"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigurationSetEventDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConfigurationSetEventDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_custom_verification_email_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomVerificationEmailTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/email/custom-verification-email-templates/{TemplateName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomVerificationEmailTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCustomVerificationEmailTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_dedicated_ip_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDedicatedIpPool"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/email/dedicated-ip-pools/{PoolName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDedicatedIpPoolRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDedicatedIpPoolResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_email_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEmailIdentity"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/email/identities/{EmailIdentity}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEmailIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEmailIdentityResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:delete_email_identity_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEmailIdentityPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEmailIdentityPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEmailIdentityPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_email_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEmailTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/email/templates/{TemplateName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEmailTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEmailTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_suppressed_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSuppressedDestination"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/email/suppression/addresses/{EmailAddress}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSuppressedDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSuppressedDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccount"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/account"
        o.input = Shapes::ShapeRef.new(shape: GetAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_blacklist_reports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBlacklistReports"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/deliverability-dashboard/blacklist-report"
        o.input = Shapes::ShapeRef.new(shape: GetBlacklistReportsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBlacklistReportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_configuration_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfigurationSet"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/configuration-sets/{ConfigurationSetName}"
        o.input = Shapes::ShapeRef.new(shape: GetConfigurationSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConfigurationSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_configuration_set_event_destinations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfigurationSetEventDestinations"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations"
        o.input = Shapes::ShapeRef.new(shape: GetConfigurationSetEventDestinationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConfigurationSetEventDestinationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_custom_verification_email_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCustomVerificationEmailTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/custom-verification-email-templates/{TemplateName}"
        o.input = Shapes::ShapeRef.new(shape: GetCustomVerificationEmailTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCustomVerificationEmailTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_dedicated_ip, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDedicatedIp"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/dedicated-ips/{IP}"
        o.input = Shapes::ShapeRef.new(shape: GetDedicatedIpRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDedicatedIpResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_dedicated_ips, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDedicatedIps"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/dedicated-ips"
        o.input = Shapes::ShapeRef.new(shape: GetDedicatedIpsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDedicatedIpsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_deliverability_dashboard_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeliverabilityDashboardOptions"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/deliverability-dashboard"
        o.input = Shapes::ShapeRef.new(shape: GetDeliverabilityDashboardOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeliverabilityDashboardOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_deliverability_test_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeliverabilityTestReport"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/deliverability-dashboard/test-reports/{ReportId}"
        o.input = Shapes::ShapeRef.new(shape: GetDeliverabilityTestReportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeliverabilityTestReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_domain_deliverability_campaign, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomainDeliverabilityCampaign"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/deliverability-dashboard/campaigns/{CampaignId}"
        o.input = Shapes::ShapeRef.new(shape: GetDomainDeliverabilityCampaignRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainDeliverabilityCampaignResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_domain_statistics_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomainStatisticsReport"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/deliverability-dashboard/statistics-report/{Domain}"
        o.input = Shapes::ShapeRef.new(shape: GetDomainStatisticsReportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainStatisticsReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_email_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEmailIdentity"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/identities/{EmailIdentity}"
        o.input = Shapes::ShapeRef.new(shape: GetEmailIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEmailIdentityResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_email_identity_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEmailIdentityPolicies"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/identities/{EmailIdentity}/policies"
        o.input = Shapes::ShapeRef.new(shape: GetEmailIdentityPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEmailIdentityPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_email_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEmailTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/templates/{TemplateName}"
        o.input = Shapes::ShapeRef.new(shape: GetEmailTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEmailTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImportJob"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/import-jobs/{JobId}"
        o.input = Shapes::ShapeRef.new(shape: GetImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:get_suppressed_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSuppressedDestination"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/suppression/addresses/{EmailAddress}"
        o.input = Shapes::ShapeRef.new(shape: GetSuppressedDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSuppressedDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:list_configuration_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfigurationSets"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/configuration-sets"
        o.input = Shapes::ShapeRef.new(shape: ListConfigurationSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConfigurationSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_custom_verification_email_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomVerificationEmailTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/custom-verification-email-templates"
        o.input = Shapes::ShapeRef.new(shape: ListCustomVerificationEmailTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomVerificationEmailTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dedicated_ip_pools, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDedicatedIpPools"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/dedicated-ip-pools"
        o.input = Shapes::ShapeRef.new(shape: ListDedicatedIpPoolsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDedicatedIpPoolsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_deliverability_test_reports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeliverabilityTestReports"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/deliverability-dashboard/test-reports"
        o.input = Shapes::ShapeRef.new(shape: ListDeliverabilityTestReportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeliverabilityTestReportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_domain_deliverability_campaigns, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomainDeliverabilityCampaigns"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns"
        o.input = Shapes::ShapeRef.new(shape: ListDomainDeliverabilityCampaignsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainDeliverabilityCampaignsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_email_identities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEmailIdentities"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/identities"
        o.input = Shapes::ShapeRef.new(shape: ListEmailIdentitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEmailIdentitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_email_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEmailTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/templates"
        o.input = Shapes::ShapeRef.new(shape: ListEmailTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEmailTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/import-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_suppressed_destinations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSuppressedDestinations"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/suppression/addresses"
        o.input = Shapes::ShapeRef.new(shape: ListSuppressedDestinationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSuppressedDestinationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/tags"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:put_account_dedicated_ip_warmup_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccountDedicatedIpWarmupAttributes"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/account/dedicated-ips/warmup"
        o.input = Shapes::ShapeRef.new(shape: PutAccountDedicatedIpWarmupAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAccountDedicatedIpWarmupAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_account_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccountDetails"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/account/details"
        o.input = Shapes::ShapeRef.new(shape: PutAccountDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAccountDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_account_sending_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccountSendingAttributes"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/account/sending"
        o.input = Shapes::ShapeRef.new(shape: PutAccountSendingAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAccountSendingAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_account_suppression_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccountSuppressionAttributes"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/account/suppression"
        o.input = Shapes::ShapeRef.new(shape: PutAccountSuppressionAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAccountSuppressionAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_configuration_set_delivery_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConfigurationSetDeliveryOptions"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/configuration-sets/{ConfigurationSetName}/delivery-options"
        o.input = Shapes::ShapeRef.new(shape: PutConfigurationSetDeliveryOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutConfigurationSetDeliveryOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_configuration_set_reputation_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConfigurationSetReputationOptions"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/configuration-sets/{ConfigurationSetName}/reputation-options"
        o.input = Shapes::ShapeRef.new(shape: PutConfigurationSetReputationOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutConfigurationSetReputationOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_configuration_set_sending_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConfigurationSetSendingOptions"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/configuration-sets/{ConfigurationSetName}/sending"
        o.input = Shapes::ShapeRef.new(shape: PutConfigurationSetSendingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutConfigurationSetSendingOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_configuration_set_suppression_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConfigurationSetSuppressionOptions"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/configuration-sets/{ConfigurationSetName}/suppression-options"
        o.input = Shapes::ShapeRef.new(shape: PutConfigurationSetSuppressionOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutConfigurationSetSuppressionOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_configuration_set_tracking_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConfigurationSetTrackingOptions"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/configuration-sets/{ConfigurationSetName}/tracking-options"
        o.input = Shapes::ShapeRef.new(shape: PutConfigurationSetTrackingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutConfigurationSetTrackingOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_dedicated_ip_in_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDedicatedIpInPool"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/dedicated-ips/{IP}/pool"
        o.input = Shapes::ShapeRef.new(shape: PutDedicatedIpInPoolRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDedicatedIpInPoolResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_dedicated_ip_warmup_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDedicatedIpWarmupAttributes"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/dedicated-ips/{IP}/warmup"
        o.input = Shapes::ShapeRef.new(shape: PutDedicatedIpWarmupAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDedicatedIpWarmupAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_deliverability_dashboard_option, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDeliverabilityDashboardOption"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/deliverability-dashboard"
        o.input = Shapes::ShapeRef.new(shape: PutDeliverabilityDashboardOptionRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDeliverabilityDashboardOptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_email_identity_dkim_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEmailIdentityDkimAttributes"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/identities/{EmailIdentity}/dkim"
        o.input = Shapes::ShapeRef.new(shape: PutEmailIdentityDkimAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEmailIdentityDkimAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_email_identity_dkim_signing_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEmailIdentityDkimSigningAttributes"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/email/identities/{EmailIdentity}/dkim/signing"
        o.input = Shapes::ShapeRef.new(shape: PutEmailIdentityDkimSigningAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEmailIdentityDkimSigningAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_email_identity_feedback_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEmailIdentityFeedbackAttributes"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/identities/{EmailIdentity}/feedback"
        o.input = Shapes::ShapeRef.new(shape: PutEmailIdentityFeedbackAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEmailIdentityFeedbackAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_email_identity_mail_from_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEmailIdentityMailFromAttributes"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/identities/{EmailIdentity}/mail-from"
        o.input = Shapes::ShapeRef.new(shape: PutEmailIdentityMailFromAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEmailIdentityMailFromAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:put_suppressed_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSuppressedDestination"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/suppression/addresses"
        o.input = Shapes::ShapeRef.new(shape: PutSuppressedDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutSuppressedDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:send_bulk_email, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendBulkEmail"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/outbound-bulk-emails"
        o.input = Shapes::ShapeRef.new(shape: SendBulkEmailRequest)
        o.output = Shapes::ShapeRef.new(shape: SendBulkEmailResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSuspendedException)
        o.errors << Shapes::ShapeRef.new(shape: SendingPausedException)
        o.errors << Shapes::ShapeRef.new(shape: MessageRejected)
        o.errors << Shapes::ShapeRef.new(shape: MailFromDomainNotVerifiedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:send_custom_verification_email, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendCustomVerificationEmail"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/outbound-custom-verification-emails"
        o.input = Shapes::ShapeRef.new(shape: SendCustomVerificationEmailRequest)
        o.output = Shapes::ShapeRef.new(shape: SendCustomVerificationEmailResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MessageRejected)
        o.errors << Shapes::ShapeRef.new(shape: SendingPausedException)
        o.errors << Shapes::ShapeRef.new(shape: MailFromDomainNotVerifiedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:send_email, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendEmail"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/outbound-emails"
        o.input = Shapes::ShapeRef.new(shape: SendEmailRequest)
        o.output = Shapes::ShapeRef.new(shape: SendEmailResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccountSuspendedException)
        o.errors << Shapes::ShapeRef.new(shape: SendingPausedException)
        o.errors << Shapes::ShapeRef.new(shape: MessageRejected)
        o.errors << Shapes::ShapeRef.new(shape: MailFromDomainNotVerifiedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/tags"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:test_render_email_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestRenderEmailTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/templates/{TemplateName}/render"
        o.input = Shapes::ShapeRef.new(shape: TestRenderEmailTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: TestRenderEmailTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/email/tags"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_configuration_set_event_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfigurationSetEventDestination"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfigurationSetEventDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConfigurationSetEventDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_custom_verification_email_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCustomVerificationEmailTemplate"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/custom-verification-email-templates/{TemplateName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCustomVerificationEmailTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCustomVerificationEmailTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_email_identity_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEmailIdentityPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEmailIdentityPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEmailIdentityPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:update_email_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEmailTemplate"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/templates/{TemplateName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEmailTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEmailTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)
    end

  end
end
