# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
    AdminEmail = Shapes::StringShape.new(name: 'AdminEmail')
    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    ArchiveArn = Shapes::StringShape.new(name: 'ArchiveArn')
    ArchivingOptions = Shapes::StructureShape.new(name: 'ArchivingOptions')
    Attachment = Shapes::StructureShape.new(name: 'Attachment')
    AttachmentContentDescription = Shapes::StringShape.new(name: 'AttachmentContentDescription')
    AttachmentContentDisposition = Shapes::StringShape.new(name: 'AttachmentContentDisposition')
    AttachmentContentId = Shapes::StringShape.new(name: 'AttachmentContentId')
    AttachmentContentTransferEncoding = Shapes::StringShape.new(name: 'AttachmentContentTransferEncoding')
    AttachmentContentType = Shapes::StringShape.new(name: 'AttachmentContentType')
    AttachmentFileName = Shapes::StringShape.new(name: 'AttachmentFileName')
    AttachmentList = Shapes::ListShape.new(name: 'AttachmentList')
    AttributesData = Shapes::StringShape.new(name: 'AttributesData')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BatchGetMetricDataQueries = Shapes::ListShape.new(name: 'BatchGetMetricDataQueries')
    BatchGetMetricDataQuery = Shapes::StructureShape.new(name: 'BatchGetMetricDataQuery')
    BatchGetMetricDataRequest = Shapes::StructureShape.new(name: 'BatchGetMetricDataRequest')
    BatchGetMetricDataResponse = Shapes::StructureShape.new(name: 'BatchGetMetricDataResponse')
    BehaviorOnMxFailure = Shapes::StringShape.new(name: 'BehaviorOnMxFailure')
    BlacklistEntries = Shapes::ListShape.new(name: 'BlacklistEntries')
    BlacklistEntry = Shapes::StructureShape.new(name: 'BlacklistEntry')
    BlacklistItemName = Shapes::StringShape.new(name: 'BlacklistItemName')
    BlacklistItemNames = Shapes::ListShape.new(name: 'BlacklistItemNames')
    BlacklistReport = Shapes::MapShape.new(name: 'BlacklistReport')
    BlacklistingDescription = Shapes::StringShape.new(name: 'BlacklistingDescription')
    Body = Shapes::StructureShape.new(name: 'Body')
    Bounce = Shapes::StructureShape.new(name: 'Bounce')
    BounceSubType = Shapes::StringShape.new(name: 'BounceSubType')
    BounceType = Shapes::StringShape.new(name: 'BounceType')
    BulkEmailContent = Shapes::StructureShape.new(name: 'BulkEmailContent')
    BulkEmailEntry = Shapes::StructureShape.new(name: 'BulkEmailEntry')
    BulkEmailEntryList = Shapes::ListShape.new(name: 'BulkEmailEntryList')
    BulkEmailEntryResult = Shapes::StructureShape.new(name: 'BulkEmailEntryResult')
    BulkEmailEntryResultList = Shapes::ListShape.new(name: 'BulkEmailEntryResultList')
    BulkEmailStatus = Shapes::StringShape.new(name: 'BulkEmailStatus')
    CampaignId = Shapes::StringShape.new(name: 'CampaignId')
    CancelExportJobRequest = Shapes::StructureShape.new(name: 'CancelExportJobRequest')
    CancelExportJobResponse = Shapes::StructureShape.new(name: 'CancelExportJobResponse')
    CaseId = Shapes::StringShape.new(name: 'CaseId')
    Charset = Shapes::StringShape.new(name: 'Charset')
    CloudWatchDestination = Shapes::StructureShape.new(name: 'CloudWatchDestination')
    CloudWatchDimensionConfiguration = Shapes::StructureShape.new(name: 'CloudWatchDimensionConfiguration')
    CloudWatchDimensionConfigurations = Shapes::ListShape.new(name: 'CloudWatchDimensionConfigurations')
    Complaint = Shapes::StructureShape.new(name: 'Complaint')
    ComplaintFeedbackType = Shapes::StringShape.new(name: 'ComplaintFeedbackType')
    ComplaintSubType = Shapes::StringShape.new(name: 'ComplaintSubType')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConfigurationSetName = Shapes::StringShape.new(name: 'ConfigurationSetName')
    ConfigurationSetNameList = Shapes::ListShape.new(name: 'ConfigurationSetNameList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Contact = Shapes::StructureShape.new(name: 'Contact')
    ContactLanguage = Shapes::StringShape.new(name: 'ContactLanguage')
    ContactList = Shapes::StructureShape.new(name: 'ContactList')
    ContactListDestination = Shapes::StructureShape.new(name: 'ContactListDestination')
    ContactListImportAction = Shapes::StringShape.new(name: 'ContactListImportAction')
    ContactListName = Shapes::StringShape.new(name: 'ContactListName')
    Content = Shapes::StructureShape.new(name: 'Content')
    Counter = Shapes::IntegerShape.new(name: 'Counter')
    CreateConfigurationSetEventDestinationRequest = Shapes::StructureShape.new(name: 'CreateConfigurationSetEventDestinationRequest')
    CreateConfigurationSetEventDestinationResponse = Shapes::StructureShape.new(name: 'CreateConfigurationSetEventDestinationResponse')
    CreateConfigurationSetRequest = Shapes::StructureShape.new(name: 'CreateConfigurationSetRequest')
    CreateConfigurationSetResponse = Shapes::StructureShape.new(name: 'CreateConfigurationSetResponse')
    CreateContactListRequest = Shapes::StructureShape.new(name: 'CreateContactListRequest')
    CreateContactListResponse = Shapes::StructureShape.new(name: 'CreateContactListResponse')
    CreateContactRequest = Shapes::StructureShape.new(name: 'CreateContactRequest')
    CreateContactResponse = Shapes::StructureShape.new(name: 'CreateContactResponse')
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
    CreateExportJobRequest = Shapes::StructureShape.new(name: 'CreateExportJobRequest')
    CreateExportJobResponse = Shapes::StructureShape.new(name: 'CreateExportJobResponse')
    CreateImportJobRequest = Shapes::StructureShape.new(name: 'CreateImportJobRequest')
    CreateImportJobResponse = Shapes::StructureShape.new(name: 'CreateImportJobResponse')
    CreateMultiRegionEndpointRequest = Shapes::StructureShape.new(name: 'CreateMultiRegionEndpointRequest')
    CreateMultiRegionEndpointResponse = Shapes::StructureShape.new(name: 'CreateMultiRegionEndpointResponse')
    CreateTenantRequest = Shapes::StructureShape.new(name: 'CreateTenantRequest')
    CreateTenantResourceAssociationRequest = Shapes::StructureShape.new(name: 'CreateTenantResourceAssociationRequest')
    CreateTenantResourceAssociationResponse = Shapes::StructureShape.new(name: 'CreateTenantResourceAssociationResponse')
    CreateTenantResponse = Shapes::StructureShape.new(name: 'CreateTenantResponse')
    CustomRedirectDomain = Shapes::StringShape.new(name: 'CustomRedirectDomain')
    CustomVerificationEmailTemplateMetadata = Shapes::StructureShape.new(name: 'CustomVerificationEmailTemplateMetadata')
    CustomVerificationEmailTemplatesList = Shapes::ListShape.new(name: 'CustomVerificationEmailTemplatesList')
    DailyVolume = Shapes::StructureShape.new(name: 'DailyVolume')
    DailyVolumes = Shapes::ListShape.new(name: 'DailyVolumes')
    DashboardAttributes = Shapes::StructureShape.new(name: 'DashboardAttributes')
    DashboardOptions = Shapes::StructureShape.new(name: 'DashboardOptions')
    DataFormat = Shapes::StringShape.new(name: 'DataFormat')
    DedicatedIp = Shapes::StructureShape.new(name: 'DedicatedIp')
    DedicatedIpList = Shapes::ListShape.new(name: 'DedicatedIpList')
    DedicatedIpPool = Shapes::StructureShape.new(name: 'DedicatedIpPool')
    DefaultDimensionValue = Shapes::StringShape.new(name: 'DefaultDimensionValue')
    DeleteConfigurationSetEventDestinationRequest = Shapes::StructureShape.new(name: 'DeleteConfigurationSetEventDestinationRequest')
    DeleteConfigurationSetEventDestinationResponse = Shapes::StructureShape.new(name: 'DeleteConfigurationSetEventDestinationResponse')
    DeleteConfigurationSetRequest = Shapes::StructureShape.new(name: 'DeleteConfigurationSetRequest')
    DeleteConfigurationSetResponse = Shapes::StructureShape.new(name: 'DeleteConfigurationSetResponse')
    DeleteContactListRequest = Shapes::StructureShape.new(name: 'DeleteContactListRequest')
    DeleteContactListResponse = Shapes::StructureShape.new(name: 'DeleteContactListResponse')
    DeleteContactRequest = Shapes::StructureShape.new(name: 'DeleteContactRequest')
    DeleteContactResponse = Shapes::StructureShape.new(name: 'DeleteContactResponse')
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
    DeleteMultiRegionEndpointRequest = Shapes::StructureShape.new(name: 'DeleteMultiRegionEndpointRequest')
    DeleteMultiRegionEndpointResponse = Shapes::StructureShape.new(name: 'DeleteMultiRegionEndpointResponse')
    DeleteSuppressedDestinationRequest = Shapes::StructureShape.new(name: 'DeleteSuppressedDestinationRequest')
    DeleteSuppressedDestinationResponse = Shapes::StructureShape.new(name: 'DeleteSuppressedDestinationResponse')
    DeleteTenantRequest = Shapes::StructureShape.new(name: 'DeleteTenantRequest')
    DeleteTenantResourceAssociationRequest = Shapes::StructureShape.new(name: 'DeleteTenantResourceAssociationRequest')
    DeleteTenantResourceAssociationResponse = Shapes::StructureShape.new(name: 'DeleteTenantResourceAssociationResponse')
    DeleteTenantResponse = Shapes::StructureShape.new(name: 'DeleteTenantResponse')
    DeliverabilityDashboardAccountStatus = Shapes::StringShape.new(name: 'DeliverabilityDashboardAccountStatus')
    DeliverabilityTestReport = Shapes::StructureShape.new(name: 'DeliverabilityTestReport')
    DeliverabilityTestReports = Shapes::ListShape.new(name: 'DeliverabilityTestReports')
    DeliverabilityTestStatus = Shapes::StringShape.new(name: 'DeliverabilityTestStatus')
    DeliverabilityTestSubject = Shapes::StringShape.new(name: 'DeliverabilityTestSubject')
    DeliveryEventType = Shapes::StringShape.new(name: 'DeliveryEventType')
    DeliveryOptions = Shapes::StructureShape.new(name: 'DeliveryOptions')
    Description = Shapes::StringShape.new(name: 'Description')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    Details = Shapes::StructureShape.new(name: 'Details')
    DiagnosticCode = Shapes::StringShape.new(name: 'DiagnosticCode')
    DimensionName = Shapes::StringShape.new(name: 'DimensionName')
    DimensionValueSource = Shapes::StringShape.new(name: 'DimensionValueSource')
    Dimensions = Shapes::MapShape.new(name: 'Dimensions')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    DkimAttributes = Shapes::StructureShape.new(name: 'DkimAttributes')
    DkimSigningAttributes = Shapes::StructureShape.new(name: 'DkimSigningAttributes')
    DkimSigningAttributesOrigin = Shapes::StringShape.new(name: 'DkimSigningAttributesOrigin')
    DkimSigningKeyLength = Shapes::StringShape.new(name: 'DkimSigningKeyLength')
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
    EmailAddressFilterList = Shapes::ListShape.new(name: 'EmailAddressFilterList')
    EmailAddressList = Shapes::ListShape.new(name: 'EmailAddressList')
    EmailContent = Shapes::StructureShape.new(name: 'EmailContent')
    EmailInsights = Shapes::StructureShape.new(name: 'EmailInsights')
    EmailInsightsList = Shapes::ListShape.new(name: 'EmailInsightsList')
    EmailSubject = Shapes::StringShape.new(name: 'EmailSubject')
    EmailSubjectFilterList = Shapes::ListShape.new(name: 'EmailSubjectFilterList')
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
    EndpointId = Shapes::StringShape.new(name: 'EndpointId')
    EndpointName = Shapes::StringShape.new(name: 'EndpointName')
    EngagementEventType = Shapes::StringShape.new(name: 'EngagementEventType')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Esp = Shapes::StringShape.new(name: 'Esp')
    Esps = Shapes::ListShape.new(name: 'Esps')
    EventBridgeDestination = Shapes::StructureShape.new(name: 'EventBridgeDestination')
    EventDestination = Shapes::StructureShape.new(name: 'EventDestination')
    EventDestinationDefinition = Shapes::StructureShape.new(name: 'EventDestinationDefinition')
    EventDestinationName = Shapes::StringShape.new(name: 'EventDestinationName')
    EventDestinations = Shapes::ListShape.new(name: 'EventDestinations')
    EventDetails = Shapes::StructureShape.new(name: 'EventDetails')
    EventType = Shapes::StringShape.new(name: 'EventType')
    EventTypes = Shapes::ListShape.new(name: 'EventTypes')
    ExportDataSource = Shapes::StructureShape.new(name: 'ExportDataSource')
    ExportDestination = Shapes::StructureShape.new(name: 'ExportDestination')
    ExportDimensionValue = Shapes::ListShape.new(name: 'ExportDimensionValue')
    ExportDimensions = Shapes::MapShape.new(name: 'ExportDimensions')
    ExportJobSummary = Shapes::StructureShape.new(name: 'ExportJobSummary')
    ExportJobSummaryList = Shapes::ListShape.new(name: 'ExportJobSummaryList')
    ExportMetric = Shapes::StructureShape.new(name: 'ExportMetric')
    ExportMetrics = Shapes::ListShape.new(name: 'ExportMetrics')
    ExportSourceType = Shapes::StringShape.new(name: 'ExportSourceType')
    ExportStatistics = Shapes::StructureShape.new(name: 'ExportStatistics')
    ExportedRecordsCount = Shapes::IntegerShape.new(name: 'ExportedRecordsCount')
    FailedRecordsCount = Shapes::IntegerShape.new(name: 'FailedRecordsCount')
    FailedRecordsS3Url = Shapes::StringShape.new(name: 'FailedRecordsS3Url')
    FailureInfo = Shapes::StructureShape.new(name: 'FailureInfo')
    FailureRedirectionURL = Shapes::StringShape.new(name: 'FailureRedirectionURL')
    FeatureStatus = Shapes::StringShape.new(name: 'FeatureStatus')
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
    GetContactListRequest = Shapes::StructureShape.new(name: 'GetContactListRequest')
    GetContactListResponse = Shapes::StructureShape.new(name: 'GetContactListResponse')
    GetContactRequest = Shapes::StructureShape.new(name: 'GetContactRequest')
    GetContactResponse = Shapes::StructureShape.new(name: 'GetContactResponse')
    GetCustomVerificationEmailTemplateRequest = Shapes::StructureShape.new(name: 'GetCustomVerificationEmailTemplateRequest')
    GetCustomVerificationEmailTemplateResponse = Shapes::StructureShape.new(name: 'GetCustomVerificationEmailTemplateResponse')
    GetDedicatedIpPoolRequest = Shapes::StructureShape.new(name: 'GetDedicatedIpPoolRequest')
    GetDedicatedIpPoolResponse = Shapes::StructureShape.new(name: 'GetDedicatedIpPoolResponse')
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
    GetExportJobRequest = Shapes::StructureShape.new(name: 'GetExportJobRequest')
    GetExportJobResponse = Shapes::StructureShape.new(name: 'GetExportJobResponse')
    GetImportJobRequest = Shapes::StructureShape.new(name: 'GetImportJobRequest')
    GetImportJobResponse = Shapes::StructureShape.new(name: 'GetImportJobResponse')
    GetMessageInsightsRequest = Shapes::StructureShape.new(name: 'GetMessageInsightsRequest')
    GetMessageInsightsResponse = Shapes::StructureShape.new(name: 'GetMessageInsightsResponse')
    GetMultiRegionEndpointRequest = Shapes::StructureShape.new(name: 'GetMultiRegionEndpointRequest')
    GetMultiRegionEndpointResponse = Shapes::StructureShape.new(name: 'GetMultiRegionEndpointResponse')
    GetReputationEntityRequest = Shapes::StructureShape.new(name: 'GetReputationEntityRequest')
    GetReputationEntityResponse = Shapes::StructureShape.new(name: 'GetReputationEntityResponse')
    GetSuppressedDestinationRequest = Shapes::StructureShape.new(name: 'GetSuppressedDestinationRequest')
    GetSuppressedDestinationResponse = Shapes::StructureShape.new(name: 'GetSuppressedDestinationResponse')
    GetTenantRequest = Shapes::StructureShape.new(name: 'GetTenantRequest')
    GetTenantResponse = Shapes::StructureShape.new(name: 'GetTenantResponse')
    GuardianAttributes = Shapes::StructureShape.new(name: 'GuardianAttributes')
    GuardianOptions = Shapes::StructureShape.new(name: 'GuardianOptions')
    HttpsPolicy = Shapes::StringShape.new(name: 'HttpsPolicy')
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
    InsightsEmailAddress = Shapes::StringShape.new(name: 'InsightsEmailAddress')
    InsightsEvent = Shapes::StructureShape.new(name: 'InsightsEvent')
    InsightsEvents = Shapes::ListShape.new(name: 'InsightsEvents')
    InternalServiceErrorException = Shapes::StructureShape.new(name: 'InternalServiceErrorException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    Ip = Shapes::StringShape.new(name: 'Ip')
    IpList = Shapes::ListShape.new(name: 'IpList')
    Isp = Shapes::StringShape.new(name: 'Isp')
    IspFilterList = Shapes::ListShape.new(name: 'IspFilterList')
    IspName = Shapes::StringShape.new(name: 'IspName')
    IspNameList = Shapes::ListShape.new(name: 'IspNameList')
    IspPlacement = Shapes::StructureShape.new(name: 'IspPlacement')
    IspPlacements = Shapes::ListShape.new(name: 'IspPlacements')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    KinesisFirehoseDestination = Shapes::StructureShape.new(name: 'KinesisFirehoseDestination')
    LastDeliveryEventList = Shapes::ListShape.new(name: 'LastDeliveryEventList')
    LastEngagementEventList = Shapes::ListShape.new(name: 'LastEngagementEventList')
    LastFreshStart = Shapes::TimestampShape.new(name: 'LastFreshStart')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListConfigurationSetsRequest = Shapes::StructureShape.new(name: 'ListConfigurationSetsRequest')
    ListConfigurationSetsResponse = Shapes::StructureShape.new(name: 'ListConfigurationSetsResponse')
    ListContactListsRequest = Shapes::StructureShape.new(name: 'ListContactListsRequest')
    ListContactListsResponse = Shapes::StructureShape.new(name: 'ListContactListsResponse')
    ListContactsFilter = Shapes::StructureShape.new(name: 'ListContactsFilter')
    ListContactsRequest = Shapes::StructureShape.new(name: 'ListContactsRequest')
    ListContactsResponse = Shapes::StructureShape.new(name: 'ListContactsResponse')
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
    ListExportJobsRequest = Shapes::StructureShape.new(name: 'ListExportJobsRequest')
    ListExportJobsResponse = Shapes::StructureShape.new(name: 'ListExportJobsResponse')
    ListImportJobsRequest = Shapes::StructureShape.new(name: 'ListImportJobsRequest')
    ListImportJobsResponse = Shapes::StructureShape.new(name: 'ListImportJobsResponse')
    ListManagementOptions = Shapes::StructureShape.new(name: 'ListManagementOptions')
    ListMultiRegionEndpointsRequest = Shapes::StructureShape.new(name: 'ListMultiRegionEndpointsRequest')
    ListMultiRegionEndpointsResponse = Shapes::StructureShape.new(name: 'ListMultiRegionEndpointsResponse')
    ListOfContactLists = Shapes::ListShape.new(name: 'ListOfContactLists')
    ListOfContacts = Shapes::ListShape.new(name: 'ListOfContacts')
    ListOfDedicatedIpPools = Shapes::ListShape.new(name: 'ListOfDedicatedIpPools')
    ListRecommendationFilterValue = Shapes::StringShape.new(name: 'ListRecommendationFilterValue')
    ListRecommendationsFilter = Shapes::MapShape.new(name: 'ListRecommendationsFilter')
    ListRecommendationsFilterKey = Shapes::StringShape.new(name: 'ListRecommendationsFilterKey')
    ListRecommendationsRequest = Shapes::StructureShape.new(name: 'ListRecommendationsRequest')
    ListRecommendationsResponse = Shapes::StructureShape.new(name: 'ListRecommendationsResponse')
    ListReputationEntitiesRequest = Shapes::StructureShape.new(name: 'ListReputationEntitiesRequest')
    ListReputationEntitiesResponse = Shapes::StructureShape.new(name: 'ListReputationEntitiesResponse')
    ListResourceTenantsRequest = Shapes::StructureShape.new(name: 'ListResourceTenantsRequest')
    ListResourceTenantsResponse = Shapes::StructureShape.new(name: 'ListResourceTenantsResponse')
    ListSuppressedDestinationsRequest = Shapes::StructureShape.new(name: 'ListSuppressedDestinationsRequest')
    ListSuppressedDestinationsResponse = Shapes::StructureShape.new(name: 'ListSuppressedDestinationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTenantResourcesFilter = Shapes::MapShape.new(name: 'ListTenantResourcesFilter')
    ListTenantResourcesFilterKey = Shapes::StringShape.new(name: 'ListTenantResourcesFilterKey')
    ListTenantResourcesFilterValue = Shapes::StringShape.new(name: 'ListTenantResourcesFilterValue')
    ListTenantResourcesRequest = Shapes::StructureShape.new(name: 'ListTenantResourcesRequest')
    ListTenantResourcesResponse = Shapes::StructureShape.new(name: 'ListTenantResourcesResponse')
    ListTenantsRequest = Shapes::StructureShape.new(name: 'ListTenantsRequest')
    ListTenantsResponse = Shapes::StructureShape.new(name: 'ListTenantsResponse')
    MailFromAttributes = Shapes::StructureShape.new(name: 'MailFromAttributes')
    MailFromDomainName = Shapes::StringShape.new(name: 'MailFromDomainName')
    MailFromDomainNotVerifiedException = Shapes::StructureShape.new(name: 'MailFromDomainNotVerifiedException')
    MailFromDomainStatus = Shapes::StringShape.new(name: 'MailFromDomainStatus')
    MailType = Shapes::StringShape.new(name: 'MailType')
    Max24HourSend = Shapes::FloatShape.new(name: 'Max24HourSend')
    MaxDeliverySeconds = Shapes::IntegerShape.new(name: 'MaxDeliverySeconds')
    MaxItems = Shapes::IntegerShape.new(name: 'MaxItems')
    MaxSendRate = Shapes::FloatShape.new(name: 'MaxSendRate')
    Message = Shapes::StructureShape.new(name: 'Message')
    MessageContent = Shapes::StringShape.new(name: 'MessageContent')
    MessageData = Shapes::StringShape.new(name: 'MessageData')
    MessageHeader = Shapes::StructureShape.new(name: 'MessageHeader')
    MessageHeaderList = Shapes::ListShape.new(name: 'MessageHeaderList')
    MessageHeaderName = Shapes::StringShape.new(name: 'MessageHeaderName')
    MessageHeaderValue = Shapes::StringShape.new(name: 'MessageHeaderValue')
    MessageInsightsDataSource = Shapes::StructureShape.new(name: 'MessageInsightsDataSource')
    MessageInsightsExportMaxResults = Shapes::IntegerShape.new(name: 'MessageInsightsExportMaxResults')
    MessageInsightsFilters = Shapes::StructureShape.new(name: 'MessageInsightsFilters')
    MessageRejected = Shapes::StructureShape.new(name: 'MessageRejected')
    MessageTag = Shapes::StructureShape.new(name: 'MessageTag')
    MessageTagList = Shapes::ListShape.new(name: 'MessageTagList')
    MessageTagName = Shapes::StringShape.new(name: 'MessageTagName')
    MessageTagValue = Shapes::StringShape.new(name: 'MessageTagValue')
    Metric = Shapes::StringShape.new(name: 'Metric')
    MetricAggregation = Shapes::StringShape.new(name: 'MetricAggregation')
    MetricDataError = Shapes::StructureShape.new(name: 'MetricDataError')
    MetricDataErrorList = Shapes::ListShape.new(name: 'MetricDataErrorList')
    MetricDataResult = Shapes::StructureShape.new(name: 'MetricDataResult')
    MetricDataResultList = Shapes::ListShape.new(name: 'MetricDataResultList')
    MetricDimensionName = Shapes::StringShape.new(name: 'MetricDimensionName')
    MetricDimensionValue = Shapes::StringShape.new(name: 'MetricDimensionValue')
    MetricNamespace = Shapes::StringShape.new(name: 'MetricNamespace')
    MetricValueList = Shapes::ListShape.new(name: 'MetricValueList')
    MetricsDataSource = Shapes::StructureShape.new(name: 'MetricsDataSource')
    MultiRegionEndpoint = Shapes::StructureShape.new(name: 'MultiRegionEndpoint')
    MultiRegionEndpoints = Shapes::ListShape.new(name: 'MultiRegionEndpoints')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NextTokenV2 = Shapes::StringShape.new(name: 'NextTokenV2')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OutboundMessageId = Shapes::StringShape.new(name: 'OutboundMessageId')
    OverallVolume = Shapes::StructureShape.new(name: 'OverallVolume')
    PageSizeV2 = Shapes::IntegerShape.new(name: 'PageSizeV2')
    Percentage = Shapes::FloatShape.new(name: 'Percentage')
    Percentage100Wrapper = Shapes::IntegerShape.new(name: 'Percentage100Wrapper')
    PinpointDestination = Shapes::StructureShape.new(name: 'PinpointDestination')
    PlacementStatistics = Shapes::StructureShape.new(name: 'PlacementStatistics')
    Policy = Shapes::StringShape.new(name: 'Policy')
    PolicyMap = Shapes::MapShape.new(name: 'PolicyMap')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PoolName = Shapes::StringShape.new(name: 'PoolName')
    PrimaryNameServer = Shapes::StringShape.new(name: 'PrimaryNameServer')
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
    PutAccountVdmAttributesRequest = Shapes::StructureShape.new(name: 'PutAccountVdmAttributesRequest')
    PutAccountVdmAttributesResponse = Shapes::StructureShape.new(name: 'PutAccountVdmAttributesResponse')
    PutConfigurationSetArchivingOptionsRequest = Shapes::StructureShape.new(name: 'PutConfigurationSetArchivingOptionsRequest')
    PutConfigurationSetArchivingOptionsResponse = Shapes::StructureShape.new(name: 'PutConfigurationSetArchivingOptionsResponse')
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
    PutConfigurationSetVdmOptionsRequest = Shapes::StructureShape.new(name: 'PutConfigurationSetVdmOptionsRequest')
    PutConfigurationSetVdmOptionsResponse = Shapes::StructureShape.new(name: 'PutConfigurationSetVdmOptionsResponse')
    PutDedicatedIpInPoolRequest = Shapes::StructureShape.new(name: 'PutDedicatedIpInPoolRequest')
    PutDedicatedIpInPoolResponse = Shapes::StructureShape.new(name: 'PutDedicatedIpInPoolResponse')
    PutDedicatedIpPoolScalingAttributesRequest = Shapes::StructureShape.new(name: 'PutDedicatedIpPoolScalingAttributesRequest')
    PutDedicatedIpPoolScalingAttributesResponse = Shapes::StructureShape.new(name: 'PutDedicatedIpPoolScalingAttributesResponse')
    PutDedicatedIpWarmupAttributesRequest = Shapes::StructureShape.new(name: 'PutDedicatedIpWarmupAttributesRequest')
    PutDedicatedIpWarmupAttributesResponse = Shapes::StructureShape.new(name: 'PutDedicatedIpWarmupAttributesResponse')
    PutDeliverabilityDashboardOptionRequest = Shapes::StructureShape.new(name: 'PutDeliverabilityDashboardOptionRequest')
    PutDeliverabilityDashboardOptionResponse = Shapes::StructureShape.new(name: 'PutDeliverabilityDashboardOptionResponse')
    PutEmailIdentityConfigurationSetAttributesRequest = Shapes::StructureShape.new(name: 'PutEmailIdentityConfigurationSetAttributesRequest')
    PutEmailIdentityConfigurationSetAttributesResponse = Shapes::StructureShape.new(name: 'PutEmailIdentityConfigurationSetAttributesResponse')
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
    QueryErrorCode = Shapes::StringShape.new(name: 'QueryErrorCode')
    QueryErrorMessage = Shapes::StringShape.new(name: 'QueryErrorMessage')
    QueryIdentifier = Shapes::StringShape.new(name: 'QueryIdentifier')
    RawAttachmentData = Shapes::BlobShape.new(name: 'RawAttachmentData')
    RawMessage = Shapes::StructureShape.new(name: 'RawMessage')
    RawMessageData = Shapes::BlobShape.new(name: 'RawMessageData')
    RblName = Shapes::StringShape.new(name: 'RblName')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    RecommendationDescription = Shapes::StringShape.new(name: 'RecommendationDescription')
    RecommendationImpact = Shapes::StringShape.new(name: 'RecommendationImpact')
    RecommendationStatus = Shapes::StringShape.new(name: 'RecommendationStatus')
    RecommendationType = Shapes::StringShape.new(name: 'RecommendationType')
    RecommendationsList = Shapes::ListShape.new(name: 'RecommendationsList')
    Region = Shapes::StringShape.new(name: 'Region')
    Regions = Shapes::ListShape.new(name: 'Regions')
    RenderedEmailTemplate = Shapes::StringShape.new(name: 'RenderedEmailTemplate')
    ReplacementEmailContent = Shapes::StructureShape.new(name: 'ReplacementEmailContent')
    ReplacementTemplate = Shapes::StructureShape.new(name: 'ReplacementTemplate')
    ReportId = Shapes::StringShape.new(name: 'ReportId')
    ReportName = Shapes::StringShape.new(name: 'ReportName')
    ReputationEntitiesList = Shapes::ListShape.new(name: 'ReputationEntitiesList')
    ReputationEntity = Shapes::StructureShape.new(name: 'ReputationEntity')
    ReputationEntityFilter = Shapes::MapShape.new(name: 'ReputationEntityFilter')
    ReputationEntityFilterKey = Shapes::StringShape.new(name: 'ReputationEntityFilterKey')
    ReputationEntityFilterValue = Shapes::StringShape.new(name: 'ReputationEntityFilterValue')
    ReputationEntityReference = Shapes::StringShape.new(name: 'ReputationEntityReference')
    ReputationEntityType = Shapes::StringShape.new(name: 'ReputationEntityType')
    ReputationOptions = Shapes::StructureShape.new(name: 'ReputationOptions')
    ResourceTenantMetadata = Shapes::StructureShape.new(name: 'ResourceTenantMetadata')
    ResourceTenantMetadataList = Shapes::ListShape.new(name: 'ResourceTenantMetadataList')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ReviewDetails = Shapes::StructureShape.new(name: 'ReviewDetails')
    ReviewStatus = Shapes::StringShape.new(name: 'ReviewStatus')
    Route = Shapes::StructureShape.new(name: 'Route')
    RouteDetails = Shapes::StructureShape.new(name: 'RouteDetails')
    Routes = Shapes::ListShape.new(name: 'Routes')
    RoutesDetails = Shapes::ListShape.new(name: 'RoutesDetails')
    S3Url = Shapes::StringShape.new(name: 'S3Url')
    SOARecord = Shapes::StructureShape.new(name: 'SOARecord')
    ScalingMode = Shapes::StringShape.new(name: 'ScalingMode')
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
    SendingStatus = Shapes::StringShape.new(name: 'SendingStatus')
    SentLast24Hours = Shapes::FloatShape.new(name: 'SentLast24Hours')
    SerialNumber = Shapes::IntegerShape.new(name: 'SerialNumber')
    SnsDestination = Shapes::StructureShape.new(name: 'SnsDestination')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusCause = Shapes::StringShape.new(name: 'StatusCause')
    StatusRecord = Shapes::StructureShape.new(name: 'StatusRecord')
    Subject = Shapes::StringShape.new(name: 'Subject')
    SubscriptionStatus = Shapes::StringShape.new(name: 'SubscriptionStatus')
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
    Tenant = Shapes::StructureShape.new(name: 'Tenant')
    TenantId = Shapes::StringShape.new(name: 'TenantId')
    TenantInfo = Shapes::StructureShape.new(name: 'TenantInfo')
    TenantInfoList = Shapes::ListShape.new(name: 'TenantInfoList')
    TenantName = Shapes::StringShape.new(name: 'TenantName')
    TenantResource = Shapes::StructureShape.new(name: 'TenantResource')
    TenantResourceList = Shapes::ListShape.new(name: 'TenantResourceList')
    TestRenderEmailTemplateRequest = Shapes::StructureShape.new(name: 'TestRenderEmailTemplateRequest')
    TestRenderEmailTemplateResponse = Shapes::StructureShape.new(name: 'TestRenderEmailTemplateResponse')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampList = Shapes::ListShape.new(name: 'TimestampList')
    TlsPolicy = Shapes::StringShape.new(name: 'TlsPolicy')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    Topic = Shapes::StructureShape.new(name: 'Topic')
    TopicFilter = Shapes::StructureShape.new(name: 'TopicFilter')
    TopicName = Shapes::StringShape.new(name: 'TopicName')
    TopicPreference = Shapes::StructureShape.new(name: 'TopicPreference')
    TopicPreferenceList = Shapes::ListShape.new(name: 'TopicPreferenceList')
    Topics = Shapes::ListShape.new(name: 'Topics')
    TrackingOptions = Shapes::StructureShape.new(name: 'TrackingOptions')
    UnsubscribeAll = Shapes::BooleanShape.new(name: 'UnsubscribeAll')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateConfigurationSetEventDestinationRequest = Shapes::StructureShape.new(name: 'UpdateConfigurationSetEventDestinationRequest')
    UpdateConfigurationSetEventDestinationResponse = Shapes::StructureShape.new(name: 'UpdateConfigurationSetEventDestinationResponse')
    UpdateContactListRequest = Shapes::StructureShape.new(name: 'UpdateContactListRequest')
    UpdateContactListResponse = Shapes::StructureShape.new(name: 'UpdateContactListResponse')
    UpdateContactRequest = Shapes::StructureShape.new(name: 'UpdateContactRequest')
    UpdateContactResponse = Shapes::StructureShape.new(name: 'UpdateContactResponse')
    UpdateCustomVerificationEmailTemplateRequest = Shapes::StructureShape.new(name: 'UpdateCustomVerificationEmailTemplateRequest')
    UpdateCustomVerificationEmailTemplateResponse = Shapes::StructureShape.new(name: 'UpdateCustomVerificationEmailTemplateResponse')
    UpdateEmailIdentityPolicyRequest = Shapes::StructureShape.new(name: 'UpdateEmailIdentityPolicyRequest')
    UpdateEmailIdentityPolicyResponse = Shapes::StructureShape.new(name: 'UpdateEmailIdentityPolicyResponse')
    UpdateEmailTemplateRequest = Shapes::StructureShape.new(name: 'UpdateEmailTemplateRequest')
    UpdateEmailTemplateResponse = Shapes::StructureShape.new(name: 'UpdateEmailTemplateResponse')
    UpdateReputationEntityCustomerManagedStatusRequest = Shapes::StructureShape.new(name: 'UpdateReputationEntityCustomerManagedStatusRequest')
    UpdateReputationEntityCustomerManagedStatusResponse = Shapes::StructureShape.new(name: 'UpdateReputationEntityCustomerManagedStatusResponse')
    UpdateReputationEntityPolicyRequest = Shapes::StructureShape.new(name: 'UpdateReputationEntityPolicyRequest')
    UpdateReputationEntityPolicyResponse = Shapes::StructureShape.new(name: 'UpdateReputationEntityPolicyResponse')
    UseCaseDescription = Shapes::StringShape.new(name: 'UseCaseDescription')
    UseDefaultIfPreferenceUnavailable = Shapes::BooleanShape.new(name: 'UseDefaultIfPreferenceUnavailable')
    VdmAttributes = Shapes::StructureShape.new(name: 'VdmAttributes')
    VdmOptions = Shapes::StructureShape.new(name: 'VdmOptions')
    VerificationError = Shapes::StringShape.new(name: 'VerificationError')
    VerificationInfo = Shapes::StructureShape.new(name: 'VerificationInfo')
    VerificationStatus = Shapes::StringShape.new(name: 'VerificationStatus')
    Volume = Shapes::IntegerShape.new(name: 'Volume')
    VolumeStatistics = Shapes::StructureShape.new(name: 'VolumeStatistics')
    WarmupStatus = Shapes::StringShape.new(name: 'WarmupStatus')
    WebsiteURL = Shapes::StringShape.new(name: 'WebsiteURL')

    AccountDetails.add_member(:mail_type, Shapes::ShapeRef.new(shape: MailType, location_name: "MailType"))
    AccountDetails.add_member(:website_url, Shapes::ShapeRef.new(shape: WebsiteURL, location_name: "WebsiteURL"))
    AccountDetails.add_member(:contact_language, Shapes::ShapeRef.new(shape: ContactLanguage, location_name: "ContactLanguage"))
    AccountDetails.add_member(:use_case_description, Shapes::ShapeRef.new(shape: UseCaseDescription, deprecated: true, location_name: "UseCaseDescription"))
    AccountDetails.add_member(:additional_contact_email_addresses, Shapes::ShapeRef.new(shape: AdditionalContactEmailAddresses, location_name: "AdditionalContactEmailAddresses"))
    AccountDetails.add_member(:review_details, Shapes::ShapeRef.new(shape: ReviewDetails, location_name: "ReviewDetails"))
    AccountDetails.struct_class = Types::AccountDetails

    AccountSuspendedException.struct_class = Types::AccountSuspendedException

    AdditionalContactEmailAddresses.member = Shapes::ShapeRef.new(shape: AdditionalContactEmailAddress)

    AlreadyExistsException.struct_class = Types::AlreadyExistsException

    ArchivingOptions.add_member(:archive_arn, Shapes::ShapeRef.new(shape: ArchiveArn, location_name: "ArchiveArn"))
    ArchivingOptions.struct_class = Types::ArchivingOptions

    Attachment.add_member(:raw_content, Shapes::ShapeRef.new(shape: RawAttachmentData, required: true, location_name: "RawContent"))
    Attachment.add_member(:content_disposition, Shapes::ShapeRef.new(shape: AttachmentContentDisposition, location_name: "ContentDisposition"))
    Attachment.add_member(:file_name, Shapes::ShapeRef.new(shape: AttachmentFileName, required: true, location_name: "FileName"))
    Attachment.add_member(:content_description, Shapes::ShapeRef.new(shape: AttachmentContentDescription, location_name: "ContentDescription"))
    Attachment.add_member(:content_id, Shapes::ShapeRef.new(shape: AttachmentContentId, location_name: "ContentId"))
    Attachment.add_member(:content_transfer_encoding, Shapes::ShapeRef.new(shape: AttachmentContentTransferEncoding, location_name: "ContentTransferEncoding"))
    Attachment.add_member(:content_type, Shapes::ShapeRef.new(shape: AttachmentContentType, location_name: "ContentType"))
    Attachment.struct_class = Types::Attachment

    AttachmentList.member = Shapes::ShapeRef.new(shape: Attachment)

    BadRequestException.struct_class = Types::BadRequestException

    BatchGetMetricDataQueries.member = Shapes::ShapeRef.new(shape: BatchGetMetricDataQuery)

    BatchGetMetricDataQuery.add_member(:id, Shapes::ShapeRef.new(shape: QueryIdentifier, required: true, location_name: "Id"))
    BatchGetMetricDataQuery.add_member(:namespace, Shapes::ShapeRef.new(shape: MetricNamespace, required: true, location_name: "Namespace"))
    BatchGetMetricDataQuery.add_member(:metric, Shapes::ShapeRef.new(shape: Metric, required: true, location_name: "Metric"))
    BatchGetMetricDataQuery.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "Dimensions"))
    BatchGetMetricDataQuery.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartDate"))
    BatchGetMetricDataQuery.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndDate"))
    BatchGetMetricDataQuery.struct_class = Types::BatchGetMetricDataQuery

    BatchGetMetricDataRequest.add_member(:queries, Shapes::ShapeRef.new(shape: BatchGetMetricDataQueries, required: true, location_name: "Queries"))
    BatchGetMetricDataRequest.struct_class = Types::BatchGetMetricDataRequest

    BatchGetMetricDataResponse.add_member(:results, Shapes::ShapeRef.new(shape: MetricDataResultList, location_name: "Results"))
    BatchGetMetricDataResponse.add_member(:errors, Shapes::ShapeRef.new(shape: MetricDataErrorList, location_name: "Errors"))
    BatchGetMetricDataResponse.struct_class = Types::BatchGetMetricDataResponse

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

    Bounce.add_member(:bounce_type, Shapes::ShapeRef.new(shape: BounceType, location_name: "BounceType"))
    Bounce.add_member(:bounce_sub_type, Shapes::ShapeRef.new(shape: BounceSubType, location_name: "BounceSubType"))
    Bounce.add_member(:diagnostic_code, Shapes::ShapeRef.new(shape: DiagnosticCode, location_name: "DiagnosticCode"))
    Bounce.struct_class = Types::Bounce

    BulkEmailContent.add_member(:template, Shapes::ShapeRef.new(shape: Template, location_name: "Template"))
    BulkEmailContent.struct_class = Types::BulkEmailContent

    BulkEmailEntry.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "Destination"))
    BulkEmailEntry.add_member(:replacement_tags, Shapes::ShapeRef.new(shape: MessageTagList, location_name: "ReplacementTags"))
    BulkEmailEntry.add_member(:replacement_email_content, Shapes::ShapeRef.new(shape: ReplacementEmailContent, location_name: "ReplacementEmailContent"))
    BulkEmailEntry.add_member(:replacement_headers, Shapes::ShapeRef.new(shape: MessageHeaderList, location_name: "ReplacementHeaders"))
    BulkEmailEntry.struct_class = Types::BulkEmailEntry

    BulkEmailEntryList.member = Shapes::ShapeRef.new(shape: BulkEmailEntry)

    BulkEmailEntryResult.add_member(:status, Shapes::ShapeRef.new(shape: BulkEmailStatus, location_name: "Status"))
    BulkEmailEntryResult.add_member(:error, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Error"))
    BulkEmailEntryResult.add_member(:message_id, Shapes::ShapeRef.new(shape: OutboundMessageId, location_name: "MessageId"))
    BulkEmailEntryResult.struct_class = Types::BulkEmailEntryResult

    BulkEmailEntryResultList.member = Shapes::ShapeRef.new(shape: BulkEmailEntryResult)

    CancelExportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "JobId"))
    CancelExportJobRequest.struct_class = Types::CancelExportJobRequest

    CancelExportJobResponse.struct_class = Types::CancelExportJobResponse

    CloudWatchDestination.add_member(:dimension_configurations, Shapes::ShapeRef.new(shape: CloudWatchDimensionConfigurations, required: true, location_name: "DimensionConfigurations"))
    CloudWatchDestination.struct_class = Types::CloudWatchDestination

    CloudWatchDimensionConfiguration.add_member(:dimension_name, Shapes::ShapeRef.new(shape: DimensionName, required: true, location_name: "DimensionName"))
    CloudWatchDimensionConfiguration.add_member(:dimension_value_source, Shapes::ShapeRef.new(shape: DimensionValueSource, required: true, location_name: "DimensionValueSource"))
    CloudWatchDimensionConfiguration.add_member(:default_dimension_value, Shapes::ShapeRef.new(shape: DefaultDimensionValue, required: true, location_name: "DefaultDimensionValue"))
    CloudWatchDimensionConfiguration.struct_class = Types::CloudWatchDimensionConfiguration

    CloudWatchDimensionConfigurations.member = Shapes::ShapeRef.new(shape: CloudWatchDimensionConfiguration)

    Complaint.add_member(:complaint_sub_type, Shapes::ShapeRef.new(shape: ComplaintSubType, location_name: "ComplaintSubType"))
    Complaint.add_member(:complaint_feedback_type, Shapes::ShapeRef.new(shape: ComplaintFeedbackType, location_name: "ComplaintFeedbackType"))
    Complaint.struct_class = Types::Complaint

    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConfigurationSetNameList.member = Shapes::ShapeRef.new(shape: ConfigurationSetName)

    ConflictException.struct_class = Types::ConflictException

    Contact.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    Contact.add_member(:topic_preferences, Shapes::ShapeRef.new(shape: TopicPreferenceList, location_name: "TopicPreferences"))
    Contact.add_member(:topic_default_preferences, Shapes::ShapeRef.new(shape: TopicPreferenceList, location_name: "TopicDefaultPreferences"))
    Contact.add_member(:unsubscribe_all, Shapes::ShapeRef.new(shape: UnsubscribeAll, location_name: "UnsubscribeAll"))
    Contact.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    Contact.struct_class = Types::Contact

    ContactList.add_member(:contact_list_name, Shapes::ShapeRef.new(shape: ContactListName, location_name: "ContactListName"))
    ContactList.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    ContactList.struct_class = Types::ContactList

    ContactListDestination.add_member(:contact_list_name, Shapes::ShapeRef.new(shape: ContactListName, required: true, location_name: "ContactListName"))
    ContactListDestination.add_member(:contact_list_import_action, Shapes::ShapeRef.new(shape: ContactListImportAction, required: true, location_name: "ContactListImportAction"))
    ContactListDestination.struct_class = Types::ContactListDestination

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
    CreateConfigurationSetRequest.add_member(:vdm_options, Shapes::ShapeRef.new(shape: VdmOptions, location_name: "VdmOptions"))
    CreateConfigurationSetRequest.add_member(:archiving_options, Shapes::ShapeRef.new(shape: ArchivingOptions, location_name: "ArchivingOptions"))
    CreateConfigurationSetRequest.struct_class = Types::CreateConfigurationSetRequest

    CreateConfigurationSetResponse.struct_class = Types::CreateConfigurationSetResponse

    CreateContactListRequest.add_member(:contact_list_name, Shapes::ShapeRef.new(shape: ContactListName, required: true, location_name: "ContactListName"))
    CreateContactListRequest.add_member(:topics, Shapes::ShapeRef.new(shape: Topics, location_name: "Topics"))
    CreateContactListRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateContactListRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateContactListRequest.struct_class = Types::CreateContactListRequest

    CreateContactListResponse.struct_class = Types::CreateContactListResponse

    CreateContactRequest.add_member(:contact_list_name, Shapes::ShapeRef.new(shape: ContactListName, required: true, location: "uri", location_name: "ContactListName"))
    CreateContactRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "EmailAddress"))
    CreateContactRequest.add_member(:topic_preferences, Shapes::ShapeRef.new(shape: TopicPreferenceList, location_name: "TopicPreferences"))
    CreateContactRequest.add_member(:unsubscribe_all, Shapes::ShapeRef.new(shape: UnsubscribeAll, location_name: "UnsubscribeAll"))
    CreateContactRequest.add_member(:attributes_data, Shapes::ShapeRef.new(shape: AttributesData, location_name: "AttributesData"))
    CreateContactRequest.struct_class = Types::CreateContactRequest

    CreateContactResponse.struct_class = Types::CreateContactResponse

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
    CreateDedicatedIpPoolRequest.add_member(:scaling_mode, Shapes::ShapeRef.new(shape: ScalingMode, location_name: "ScalingMode"))
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
    CreateEmailIdentityRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    CreateEmailIdentityRequest.struct_class = Types::CreateEmailIdentityRequest

    CreateEmailIdentityResponse.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, location_name: "IdentityType"))
    CreateEmailIdentityResponse.add_member(:verified_for_sending_status, Shapes::ShapeRef.new(shape: Enabled, location_name: "VerifiedForSendingStatus"))
    CreateEmailIdentityResponse.add_member(:dkim_attributes, Shapes::ShapeRef.new(shape: DkimAttributes, location_name: "DkimAttributes"))
    CreateEmailIdentityResponse.struct_class = Types::CreateEmailIdentityResponse

    CreateEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location_name: "TemplateName"))
    CreateEmailTemplateRequest.add_member(:template_content, Shapes::ShapeRef.new(shape: EmailTemplateContent, required: true, location_name: "TemplateContent"))
    CreateEmailTemplateRequest.struct_class = Types::CreateEmailTemplateRequest

    CreateEmailTemplateResponse.struct_class = Types::CreateEmailTemplateResponse

    CreateExportJobRequest.add_member(:export_data_source, Shapes::ShapeRef.new(shape: ExportDataSource, required: true, location_name: "ExportDataSource"))
    CreateExportJobRequest.add_member(:export_destination, Shapes::ShapeRef.new(shape: ExportDestination, required: true, location_name: "ExportDestination"))
    CreateExportJobRequest.struct_class = Types::CreateExportJobRequest

    CreateExportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    CreateExportJobResponse.struct_class = Types::CreateExportJobResponse

    CreateImportJobRequest.add_member(:import_destination, Shapes::ShapeRef.new(shape: ImportDestination, required: true, location_name: "ImportDestination"))
    CreateImportJobRequest.add_member(:import_data_source, Shapes::ShapeRef.new(shape: ImportDataSource, required: true, location_name: "ImportDataSource"))
    CreateImportJobRequest.struct_class = Types::CreateImportJobRequest

    CreateImportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    CreateImportJobResponse.struct_class = Types::CreateImportJobResponse

    CreateMultiRegionEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "EndpointName"))
    CreateMultiRegionEndpointRequest.add_member(:details, Shapes::ShapeRef.new(shape: Details, required: true, location_name: "Details"))
    CreateMultiRegionEndpointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMultiRegionEndpointRequest.struct_class = Types::CreateMultiRegionEndpointRequest

    CreateMultiRegionEndpointResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    CreateMultiRegionEndpointResponse.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: EndpointId, location_name: "EndpointId"))
    CreateMultiRegionEndpointResponse.struct_class = Types::CreateMultiRegionEndpointResponse

    CreateTenantRequest.add_member(:tenant_name, Shapes::ShapeRef.new(shape: TenantName, required: true, location_name: "TenantName"))
    CreateTenantRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTenantRequest.struct_class = Types::CreateTenantRequest

    CreateTenantResourceAssociationRequest.add_member(:tenant_name, Shapes::ShapeRef.new(shape: TenantName, required: true, location_name: "TenantName"))
    CreateTenantResourceAssociationRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    CreateTenantResourceAssociationRequest.struct_class = Types::CreateTenantResourceAssociationRequest

    CreateTenantResourceAssociationResponse.struct_class = Types::CreateTenantResourceAssociationResponse

    CreateTenantResponse.add_member(:tenant_name, Shapes::ShapeRef.new(shape: TenantName, location_name: "TenantName"))
    CreateTenantResponse.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantId, location_name: "TenantId"))
    CreateTenantResponse.add_member(:tenant_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "TenantArn"))
    CreateTenantResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    CreateTenantResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTenantResponse.add_member(:sending_status, Shapes::ShapeRef.new(shape: SendingStatus, location_name: "SendingStatus"))
    CreateTenantResponse.struct_class = Types::CreateTenantResponse

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

    DashboardAttributes.add_member(:engagement_metrics, Shapes::ShapeRef.new(shape: FeatureStatus, location_name: "EngagementMetrics"))
    DashboardAttributes.struct_class = Types::DashboardAttributes

    DashboardOptions.add_member(:engagement_metrics, Shapes::ShapeRef.new(shape: FeatureStatus, location_name: "EngagementMetrics"))
    DashboardOptions.struct_class = Types::DashboardOptions

    DedicatedIp.add_member(:ip, Shapes::ShapeRef.new(shape: Ip, required: true, location_name: "Ip"))
    DedicatedIp.add_member(:warmup_status, Shapes::ShapeRef.new(shape: WarmupStatus, required: true, location_name: "WarmupStatus"))
    DedicatedIp.add_member(:warmup_percentage, Shapes::ShapeRef.new(shape: Percentage100Wrapper, required: true, location_name: "WarmupPercentage"))
    DedicatedIp.add_member(:pool_name, Shapes::ShapeRef.new(shape: PoolName, location_name: "PoolName"))
    DedicatedIp.struct_class = Types::DedicatedIp

    DedicatedIpList.member = Shapes::ShapeRef.new(shape: DedicatedIp)

    DedicatedIpPool.add_member(:pool_name, Shapes::ShapeRef.new(shape: PoolName, required: true, location_name: "PoolName"))
    DedicatedIpPool.add_member(:scaling_mode, Shapes::ShapeRef.new(shape: ScalingMode, required: true, location_name: "ScalingMode"))
    DedicatedIpPool.struct_class = Types::DedicatedIpPool

    DeleteConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    DeleteConfigurationSetEventDestinationRequest.add_member(:event_destination_name, Shapes::ShapeRef.new(shape: EventDestinationName, required: true, location: "uri", location_name: "EventDestinationName"))
    DeleteConfigurationSetEventDestinationRequest.struct_class = Types::DeleteConfigurationSetEventDestinationRequest

    DeleteConfigurationSetEventDestinationResponse.struct_class = Types::DeleteConfigurationSetEventDestinationResponse

    DeleteConfigurationSetRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    DeleteConfigurationSetRequest.struct_class = Types::DeleteConfigurationSetRequest

    DeleteConfigurationSetResponse.struct_class = Types::DeleteConfigurationSetResponse

    DeleteContactListRequest.add_member(:contact_list_name, Shapes::ShapeRef.new(shape: ContactListName, required: true, location: "uri", location_name: "ContactListName"))
    DeleteContactListRequest.struct_class = Types::DeleteContactListRequest

    DeleteContactListResponse.struct_class = Types::DeleteContactListResponse

    DeleteContactRequest.add_member(:contact_list_name, Shapes::ShapeRef.new(shape: ContactListName, required: true, location: "uri", location_name: "ContactListName"))
    DeleteContactRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location: "uri", location_name: "EmailAddress"))
    DeleteContactRequest.struct_class = Types::DeleteContactRequest

    DeleteContactResponse.struct_class = Types::DeleteContactResponse

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

    DeleteMultiRegionEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location: "uri", location_name: "EndpointName"))
    DeleteMultiRegionEndpointRequest.struct_class = Types::DeleteMultiRegionEndpointRequest

    DeleteMultiRegionEndpointResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    DeleteMultiRegionEndpointResponse.struct_class = Types::DeleteMultiRegionEndpointResponse

    DeleteSuppressedDestinationRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location: "uri", location_name: "EmailAddress"))
    DeleteSuppressedDestinationRequest.struct_class = Types::DeleteSuppressedDestinationRequest

    DeleteSuppressedDestinationResponse.struct_class = Types::DeleteSuppressedDestinationResponse

    DeleteTenantRequest.add_member(:tenant_name, Shapes::ShapeRef.new(shape: TenantName, required: true, location_name: "TenantName"))
    DeleteTenantRequest.struct_class = Types::DeleteTenantRequest

    DeleteTenantResourceAssociationRequest.add_member(:tenant_name, Shapes::ShapeRef.new(shape: TenantName, required: true, location_name: "TenantName"))
    DeleteTenantResourceAssociationRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    DeleteTenantResourceAssociationRequest.struct_class = Types::DeleteTenantResourceAssociationRequest

    DeleteTenantResourceAssociationResponse.struct_class = Types::DeleteTenantResourceAssociationResponse

    DeleteTenantResponse.struct_class = Types::DeleteTenantResponse

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
    DeliveryOptions.add_member(:max_delivery_seconds, Shapes::ShapeRef.new(shape: MaxDeliverySeconds, location_name: "MaxDeliverySeconds"))
    DeliveryOptions.struct_class = Types::DeliveryOptions

    Destination.add_member(:to_addresses, Shapes::ShapeRef.new(shape: EmailAddressList, location_name: "ToAddresses"))
    Destination.add_member(:cc_addresses, Shapes::ShapeRef.new(shape: EmailAddressList, location_name: "CcAddresses"))
    Destination.add_member(:bcc_addresses, Shapes::ShapeRef.new(shape: EmailAddressList, location_name: "BccAddresses"))
    Destination.struct_class = Types::Destination

    Details.add_member(:routes_details, Shapes::ShapeRef.new(shape: RoutesDetails, required: true, location_name: "RoutesDetails"))
    Details.struct_class = Types::Details

    Dimensions.key = Shapes::ShapeRef.new(shape: MetricDimensionName)
    Dimensions.value = Shapes::ShapeRef.new(shape: MetricDimensionValue)

    DkimAttributes.add_member(:signing_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "SigningEnabled"))
    DkimAttributes.add_member(:status, Shapes::ShapeRef.new(shape: DkimStatus, location_name: "Status"))
    DkimAttributes.add_member(:tokens, Shapes::ShapeRef.new(shape: DnsTokenList, location_name: "Tokens"))
    DkimAttributes.add_member(:signing_attributes_origin, Shapes::ShapeRef.new(shape: DkimSigningAttributesOrigin, location_name: "SigningAttributesOrigin"))
    DkimAttributes.add_member(:next_signing_key_length, Shapes::ShapeRef.new(shape: DkimSigningKeyLength, location_name: "NextSigningKeyLength"))
    DkimAttributes.add_member(:current_signing_key_length, Shapes::ShapeRef.new(shape: DkimSigningKeyLength, location_name: "CurrentSigningKeyLength"))
    DkimAttributes.add_member(:last_key_generation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastKeyGenerationTimestamp"))
    DkimAttributes.struct_class = Types::DkimAttributes

    DkimSigningAttributes.add_member(:domain_signing_selector, Shapes::ShapeRef.new(shape: Selector, location_name: "DomainSigningSelector"))
    DkimSigningAttributes.add_member(:domain_signing_private_key, Shapes::ShapeRef.new(shape: PrivateKey, location_name: "DomainSigningPrivateKey"))
    DkimSigningAttributes.add_member(:next_signing_key_length, Shapes::ShapeRef.new(shape: DkimSigningKeyLength, location_name: "NextSigningKeyLength"))
    DkimSigningAttributes.add_member(:domain_signing_attributes_origin, Shapes::ShapeRef.new(shape: DkimSigningAttributesOrigin, location_name: "DomainSigningAttributesOrigin"))
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

    EmailAddressFilterList.member = Shapes::ShapeRef.new(shape: InsightsEmailAddress)

    EmailAddressList.member = Shapes::ShapeRef.new(shape: EmailAddress)

    EmailContent.add_member(:simple, Shapes::ShapeRef.new(shape: Message, location_name: "Simple"))
    EmailContent.add_member(:raw, Shapes::ShapeRef.new(shape: RawMessage, location_name: "Raw"))
    EmailContent.add_member(:template, Shapes::ShapeRef.new(shape: Template, location_name: "Template"))
    EmailContent.struct_class = Types::EmailContent

    EmailInsights.add_member(:destination, Shapes::ShapeRef.new(shape: InsightsEmailAddress, location_name: "Destination"))
    EmailInsights.add_member(:isp, Shapes::ShapeRef.new(shape: Isp, location_name: "Isp"))
    EmailInsights.add_member(:events, Shapes::ShapeRef.new(shape: InsightsEvents, location_name: "Events"))
    EmailInsights.struct_class = Types::EmailInsights

    EmailInsightsList.member = Shapes::ShapeRef.new(shape: EmailInsights)

    EmailSubjectFilterList.member = Shapes::ShapeRef.new(shape: EmailSubject)

    EmailTemplateContent.add_member(:subject, Shapes::ShapeRef.new(shape: EmailTemplateSubject, location_name: "Subject"))
    EmailTemplateContent.add_member(:text, Shapes::ShapeRef.new(shape: EmailTemplateText, location_name: "Text"))
    EmailTemplateContent.add_member(:html, Shapes::ShapeRef.new(shape: EmailTemplateHtml, location_name: "Html"))
    EmailTemplateContent.struct_class = Types::EmailTemplateContent

    EmailTemplateMetadata.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: "TemplateName"))
    EmailTemplateMetadata.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    EmailTemplateMetadata.struct_class = Types::EmailTemplateMetadata

    EmailTemplateMetadataList.member = Shapes::ShapeRef.new(shape: EmailTemplateMetadata)

    Esps.member = Shapes::ShapeRef.new(shape: Esp)

    EventBridgeDestination.add_member(:event_bus_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "EventBusArn"))
    EventBridgeDestination.struct_class = Types::EventBridgeDestination

    EventDestination.add_member(:name, Shapes::ShapeRef.new(shape: EventDestinationName, required: true, location_name: "Name"))
    EventDestination.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "Enabled"))
    EventDestination.add_member(:matching_event_types, Shapes::ShapeRef.new(shape: EventTypes, required: true, location_name: "MatchingEventTypes"))
    EventDestination.add_member(:kinesis_firehose_destination, Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: "KinesisFirehoseDestination"))
    EventDestination.add_member(:cloud_watch_destination, Shapes::ShapeRef.new(shape: CloudWatchDestination, location_name: "CloudWatchDestination"))
    EventDestination.add_member(:sns_destination, Shapes::ShapeRef.new(shape: SnsDestination, location_name: "SnsDestination"))
    EventDestination.add_member(:event_bridge_destination, Shapes::ShapeRef.new(shape: EventBridgeDestination, location_name: "EventBridgeDestination"))
    EventDestination.add_member(:pinpoint_destination, Shapes::ShapeRef.new(shape: PinpointDestination, location_name: "PinpointDestination"))
    EventDestination.struct_class = Types::EventDestination

    EventDestinationDefinition.add_member(:enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "Enabled"))
    EventDestinationDefinition.add_member(:matching_event_types, Shapes::ShapeRef.new(shape: EventTypes, location_name: "MatchingEventTypes"))
    EventDestinationDefinition.add_member(:kinesis_firehose_destination, Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: "KinesisFirehoseDestination"))
    EventDestinationDefinition.add_member(:cloud_watch_destination, Shapes::ShapeRef.new(shape: CloudWatchDestination, location_name: "CloudWatchDestination"))
    EventDestinationDefinition.add_member(:sns_destination, Shapes::ShapeRef.new(shape: SnsDestination, location_name: "SnsDestination"))
    EventDestinationDefinition.add_member(:event_bridge_destination, Shapes::ShapeRef.new(shape: EventBridgeDestination, location_name: "EventBridgeDestination"))
    EventDestinationDefinition.add_member(:pinpoint_destination, Shapes::ShapeRef.new(shape: PinpointDestination, location_name: "PinpointDestination"))
    EventDestinationDefinition.struct_class = Types::EventDestinationDefinition

    EventDestinations.member = Shapes::ShapeRef.new(shape: EventDestination)

    EventDetails.add_member(:bounce, Shapes::ShapeRef.new(shape: Bounce, location_name: "Bounce"))
    EventDetails.add_member(:complaint, Shapes::ShapeRef.new(shape: Complaint, location_name: "Complaint"))
    EventDetails.struct_class = Types::EventDetails

    EventTypes.member = Shapes::ShapeRef.new(shape: EventType)

    ExportDataSource.add_member(:metrics_data_source, Shapes::ShapeRef.new(shape: MetricsDataSource, location_name: "MetricsDataSource"))
    ExportDataSource.add_member(:message_insights_data_source, Shapes::ShapeRef.new(shape: MessageInsightsDataSource, location_name: "MessageInsightsDataSource"))
    ExportDataSource.struct_class = Types::ExportDataSource

    ExportDestination.add_member(:data_format, Shapes::ShapeRef.new(shape: DataFormat, required: true, location_name: "DataFormat"))
    ExportDestination.add_member(:s3_url, Shapes::ShapeRef.new(shape: S3Url, location_name: "S3Url"))
    ExportDestination.struct_class = Types::ExportDestination

    ExportDimensionValue.member = Shapes::ShapeRef.new(shape: MetricDimensionValue)

    ExportDimensions.key = Shapes::ShapeRef.new(shape: MetricDimensionName)
    ExportDimensions.value = Shapes::ShapeRef.new(shape: ExportDimensionValue)

    ExportJobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    ExportJobSummary.add_member(:export_source_type, Shapes::ShapeRef.new(shape: ExportSourceType, location_name: "ExportSourceType"))
    ExportJobSummary.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    ExportJobSummary.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ExportJobSummary.add_member(:completed_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletedTimestamp"))
    ExportJobSummary.struct_class = Types::ExportJobSummary

    ExportJobSummaryList.member = Shapes::ShapeRef.new(shape: ExportJobSummary)

    ExportMetric.add_member(:name, Shapes::ShapeRef.new(shape: Metric, location_name: "Name"))
    ExportMetric.add_member(:aggregation, Shapes::ShapeRef.new(shape: MetricAggregation, location_name: "Aggregation"))
    ExportMetric.struct_class = Types::ExportMetric

    ExportMetrics.member = Shapes::ShapeRef.new(shape: ExportMetric)

    ExportStatistics.add_member(:processed_records_count, Shapes::ShapeRef.new(shape: ProcessedRecordsCount, location_name: "ProcessedRecordsCount"))
    ExportStatistics.add_member(:exported_records_count, Shapes::ShapeRef.new(shape: ExportedRecordsCount, location_name: "ExportedRecordsCount"))
    ExportStatistics.struct_class = Types::ExportStatistics

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
    GetAccountResponse.add_member(:vdm_attributes, Shapes::ShapeRef.new(shape: VdmAttributes, location_name: "VdmAttributes"))
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
    GetConfigurationSetResponse.add_member(:vdm_options, Shapes::ShapeRef.new(shape: VdmOptions, location_name: "VdmOptions"))
    GetConfigurationSetResponse.add_member(:archiving_options, Shapes::ShapeRef.new(shape: ArchivingOptions, location_name: "ArchivingOptions"))
    GetConfigurationSetResponse.struct_class = Types::GetConfigurationSetResponse

    GetContactListRequest.add_member(:contact_list_name, Shapes::ShapeRef.new(shape: ContactListName, required: true, location: "uri", location_name: "ContactListName"))
    GetContactListRequest.struct_class = Types::GetContactListRequest

    GetContactListResponse.add_member(:contact_list_name, Shapes::ShapeRef.new(shape: ContactListName, location_name: "ContactListName"))
    GetContactListResponse.add_member(:topics, Shapes::ShapeRef.new(shape: Topics, location_name: "Topics"))
    GetContactListResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetContactListResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    GetContactListResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    GetContactListResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    GetContactListResponse.struct_class = Types::GetContactListResponse

    GetContactRequest.add_member(:contact_list_name, Shapes::ShapeRef.new(shape: ContactListName, required: true, location: "uri", location_name: "ContactListName"))
    GetContactRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location: "uri", location_name: "EmailAddress"))
    GetContactRequest.struct_class = Types::GetContactRequest

    GetContactResponse.add_member(:contact_list_name, Shapes::ShapeRef.new(shape: ContactListName, location_name: "ContactListName"))
    GetContactResponse.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    GetContactResponse.add_member(:topic_preferences, Shapes::ShapeRef.new(shape: TopicPreferenceList, location_name: "TopicPreferences"))
    GetContactResponse.add_member(:topic_default_preferences, Shapes::ShapeRef.new(shape: TopicPreferenceList, location_name: "TopicDefaultPreferences"))
    GetContactResponse.add_member(:unsubscribe_all, Shapes::ShapeRef.new(shape: UnsubscribeAll, location_name: "UnsubscribeAll"))
    GetContactResponse.add_member(:attributes_data, Shapes::ShapeRef.new(shape: AttributesData, location_name: "AttributesData"))
    GetContactResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    GetContactResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    GetContactResponse.struct_class = Types::GetContactResponse

    GetCustomVerificationEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location: "uri", location_name: "TemplateName"))
    GetCustomVerificationEmailTemplateRequest.struct_class = Types::GetCustomVerificationEmailTemplateRequest

    GetCustomVerificationEmailTemplateResponse.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: "TemplateName"))
    GetCustomVerificationEmailTemplateResponse.add_member(:from_email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "FromEmailAddress"))
    GetCustomVerificationEmailTemplateResponse.add_member(:template_subject, Shapes::ShapeRef.new(shape: EmailTemplateSubject, location_name: "TemplateSubject"))
    GetCustomVerificationEmailTemplateResponse.add_member(:template_content, Shapes::ShapeRef.new(shape: TemplateContent, location_name: "TemplateContent"))
    GetCustomVerificationEmailTemplateResponse.add_member(:success_redirection_url, Shapes::ShapeRef.new(shape: SuccessRedirectionURL, location_name: "SuccessRedirectionURL"))
    GetCustomVerificationEmailTemplateResponse.add_member(:failure_redirection_url, Shapes::ShapeRef.new(shape: FailureRedirectionURL, location_name: "FailureRedirectionURL"))
    GetCustomVerificationEmailTemplateResponse.struct_class = Types::GetCustomVerificationEmailTemplateResponse

    GetDedicatedIpPoolRequest.add_member(:pool_name, Shapes::ShapeRef.new(shape: PoolName, required: true, location: "uri", location_name: "PoolName"))
    GetDedicatedIpPoolRequest.struct_class = Types::GetDedicatedIpPoolRequest

    GetDedicatedIpPoolResponse.add_member(:dedicated_ip_pool, Shapes::ShapeRef.new(shape: DedicatedIpPool, location_name: "DedicatedIpPool"))
    GetDedicatedIpPoolResponse.struct_class = Types::GetDedicatedIpPoolResponse

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
    GetEmailIdentityResponse.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    GetEmailIdentityResponse.add_member(:verification_status, Shapes::ShapeRef.new(shape: VerificationStatus, location_name: "VerificationStatus"))
    GetEmailIdentityResponse.add_member(:verification_info, Shapes::ShapeRef.new(shape: VerificationInfo, location_name: "VerificationInfo"))
    GetEmailIdentityResponse.struct_class = Types::GetEmailIdentityResponse

    GetEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location: "uri", location_name: "TemplateName"))
    GetEmailTemplateRequest.struct_class = Types::GetEmailTemplateRequest

    GetEmailTemplateResponse.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location_name: "TemplateName"))
    GetEmailTemplateResponse.add_member(:template_content, Shapes::ShapeRef.new(shape: EmailTemplateContent, required: true, location_name: "TemplateContent"))
    GetEmailTemplateResponse.struct_class = Types::GetEmailTemplateResponse

    GetExportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "JobId"))
    GetExportJobRequest.struct_class = Types::GetExportJobRequest

    GetExportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    GetExportJobResponse.add_member(:export_source_type, Shapes::ShapeRef.new(shape: ExportSourceType, location_name: "ExportSourceType"))
    GetExportJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    GetExportJobResponse.add_member(:export_destination, Shapes::ShapeRef.new(shape: ExportDestination, location_name: "ExportDestination"))
    GetExportJobResponse.add_member(:export_data_source, Shapes::ShapeRef.new(shape: ExportDataSource, location_name: "ExportDataSource"))
    GetExportJobResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    GetExportJobResponse.add_member(:completed_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletedTimestamp"))
    GetExportJobResponse.add_member(:failure_info, Shapes::ShapeRef.new(shape: FailureInfo, location_name: "FailureInfo"))
    GetExportJobResponse.add_member(:statistics, Shapes::ShapeRef.new(shape: ExportStatistics, location_name: "Statistics"))
    GetExportJobResponse.struct_class = Types::GetExportJobResponse

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

    GetMessageInsightsRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: OutboundMessageId, required: true, location: "uri", location_name: "MessageId"))
    GetMessageInsightsRequest.struct_class = Types::GetMessageInsightsRequest

    GetMessageInsightsResponse.add_member(:message_id, Shapes::ShapeRef.new(shape: OutboundMessageId, location_name: "MessageId"))
    GetMessageInsightsResponse.add_member(:from_email_address, Shapes::ShapeRef.new(shape: InsightsEmailAddress, location_name: "FromEmailAddress"))
    GetMessageInsightsResponse.add_member(:subject, Shapes::ShapeRef.new(shape: EmailSubject, location_name: "Subject"))
    GetMessageInsightsResponse.add_member(:email_tags, Shapes::ShapeRef.new(shape: MessageTagList, location_name: "EmailTags"))
    GetMessageInsightsResponse.add_member(:insights, Shapes::ShapeRef.new(shape: EmailInsightsList, location_name: "Insights"))
    GetMessageInsightsResponse.struct_class = Types::GetMessageInsightsResponse

    GetMultiRegionEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location: "uri", location_name: "EndpointName"))
    GetMultiRegionEndpointRequest.struct_class = Types::GetMultiRegionEndpointRequest

    GetMultiRegionEndpointResponse.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "EndpointName"))
    GetMultiRegionEndpointResponse.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: EndpointId, location_name: "EndpointId"))
    GetMultiRegionEndpointResponse.add_member(:routes, Shapes::ShapeRef.new(shape: Routes, location_name: "Routes"))
    GetMultiRegionEndpointResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    GetMultiRegionEndpointResponse.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    GetMultiRegionEndpointResponse.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    GetMultiRegionEndpointResponse.struct_class = Types::GetMultiRegionEndpointResponse

    GetReputationEntityRequest.add_member(:reputation_entity_reference, Shapes::ShapeRef.new(shape: ReputationEntityReference, required: true, location: "uri", location_name: "ReputationEntityReference"))
    GetReputationEntityRequest.add_member(:reputation_entity_type, Shapes::ShapeRef.new(shape: ReputationEntityType, required: true, location: "uri", location_name: "ReputationEntityType"))
    GetReputationEntityRequest.struct_class = Types::GetReputationEntityRequest

    GetReputationEntityResponse.add_member(:reputation_entity, Shapes::ShapeRef.new(shape: ReputationEntity, location_name: "ReputationEntity"))
    GetReputationEntityResponse.struct_class = Types::GetReputationEntityResponse

    GetSuppressedDestinationRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location: "uri", location_name: "EmailAddress"))
    GetSuppressedDestinationRequest.struct_class = Types::GetSuppressedDestinationRequest

    GetSuppressedDestinationResponse.add_member(:suppressed_destination, Shapes::ShapeRef.new(shape: SuppressedDestination, required: true, location_name: "SuppressedDestination"))
    GetSuppressedDestinationResponse.struct_class = Types::GetSuppressedDestinationResponse

    GetTenantRequest.add_member(:tenant_name, Shapes::ShapeRef.new(shape: TenantName, required: true, location_name: "TenantName"))
    GetTenantRequest.struct_class = Types::GetTenantRequest

    GetTenantResponse.add_member(:tenant, Shapes::ShapeRef.new(shape: Tenant, location_name: "Tenant"))
    GetTenantResponse.struct_class = Types::GetTenantResponse

    GuardianAttributes.add_member(:optimized_shared_delivery, Shapes::ShapeRef.new(shape: FeatureStatus, location_name: "OptimizedSharedDelivery"))
    GuardianAttributes.struct_class = Types::GuardianAttributes

    GuardianOptions.add_member(:optimized_shared_delivery, Shapes::ShapeRef.new(shape: FeatureStatus, location_name: "OptimizedSharedDelivery"))
    GuardianOptions.struct_class = Types::GuardianOptions

    IdentityInfo.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, location_name: "IdentityType"))
    IdentityInfo.add_member(:identity_name, Shapes::ShapeRef.new(shape: Identity, location_name: "IdentityName"))
    IdentityInfo.add_member(:sending_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "SendingEnabled"))
    IdentityInfo.add_member(:verification_status, Shapes::ShapeRef.new(shape: VerificationStatus, location_name: "VerificationStatus"))
    IdentityInfo.struct_class = Types::IdentityInfo

    IdentityInfoList.member = Shapes::ShapeRef.new(shape: IdentityInfo)

    ImportDataSource.add_member(:s3_url, Shapes::ShapeRef.new(shape: S3Url, required: true, location_name: "S3Url"))
    ImportDataSource.add_member(:data_format, Shapes::ShapeRef.new(shape: DataFormat, required: true, location_name: "DataFormat"))
    ImportDataSource.struct_class = Types::ImportDataSource

    ImportDestination.add_member(:suppression_list_destination, Shapes::ShapeRef.new(shape: SuppressionListDestination, location_name: "SuppressionListDestination"))
    ImportDestination.add_member(:contact_list_destination, Shapes::ShapeRef.new(shape: ContactListDestination, location_name: "ContactListDestination"))
    ImportDestination.struct_class = Types::ImportDestination

    ImportJobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    ImportJobSummary.add_member(:import_destination, Shapes::ShapeRef.new(shape: ImportDestination, location_name: "ImportDestination"))
    ImportJobSummary.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    ImportJobSummary.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    ImportJobSummary.add_member(:processed_records_count, Shapes::ShapeRef.new(shape: ProcessedRecordsCount, location_name: "ProcessedRecordsCount"))
    ImportJobSummary.add_member(:failed_records_count, Shapes::ShapeRef.new(shape: FailedRecordsCount, location_name: "FailedRecordsCount"))
    ImportJobSummary.struct_class = Types::ImportJobSummary

    ImportJobSummaryList.member = Shapes::ShapeRef.new(shape: ImportJobSummary)

    InboxPlacementTrackingOption.add_member(:global, Shapes::ShapeRef.new(shape: Enabled, location_name: "Global"))
    InboxPlacementTrackingOption.add_member(:tracked_isps, Shapes::ShapeRef.new(shape: IspNameList, location_name: "TrackedIsps"))
    InboxPlacementTrackingOption.struct_class = Types::InboxPlacementTrackingOption

    InsightsEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    InsightsEvent.add_member(:type, Shapes::ShapeRef.new(shape: EventType, location_name: "Type"))
    InsightsEvent.add_member(:details, Shapes::ShapeRef.new(shape: EventDetails, location_name: "Details"))
    InsightsEvent.struct_class = Types::InsightsEvent

    InsightsEvents.member = Shapes::ShapeRef.new(shape: InsightsEvent)

    InternalServiceErrorException.struct_class = Types::InternalServiceErrorException

    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    IpList.member = Shapes::ShapeRef.new(shape: Ip)

    IspFilterList.member = Shapes::ShapeRef.new(shape: Isp)

    IspNameList.member = Shapes::ShapeRef.new(shape: IspName)

    IspPlacement.add_member(:isp_name, Shapes::ShapeRef.new(shape: IspName, location_name: "IspName"))
    IspPlacement.add_member(:placement_statistics, Shapes::ShapeRef.new(shape: PlacementStatistics, location_name: "PlacementStatistics"))
    IspPlacement.struct_class = Types::IspPlacement

    IspPlacements.member = Shapes::ShapeRef.new(shape: IspPlacement)

    KinesisFirehoseDestination.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "IamRoleArn"))
    KinesisFirehoseDestination.add_member(:delivery_stream_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "DeliveryStreamArn"))
    KinesisFirehoseDestination.struct_class = Types::KinesisFirehoseDestination

    LastDeliveryEventList.member = Shapes::ShapeRef.new(shape: DeliveryEventType)

    LastEngagementEventList.member = Shapes::ShapeRef.new(shape: EngagementEventType)

    LimitExceededException.struct_class = Types::LimitExceededException

    ListConfigurationSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListConfigurationSetsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "PageSize"))
    ListConfigurationSetsRequest.struct_class = Types::ListConfigurationSetsRequest

    ListConfigurationSetsResponse.add_member(:configuration_sets, Shapes::ShapeRef.new(shape: ConfigurationSetNameList, location_name: "ConfigurationSets"))
    ListConfigurationSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConfigurationSetsResponse.struct_class = Types::ListConfigurationSetsResponse

    ListContactListsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location: "querystring", location_name: "PageSize"))
    ListContactListsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListContactListsRequest.struct_class = Types::ListContactListsRequest

    ListContactListsResponse.add_member(:contact_lists, Shapes::ShapeRef.new(shape: ListOfContactLists, location_name: "ContactLists"))
    ListContactListsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListContactListsResponse.struct_class = Types::ListContactListsResponse

    ListContactsFilter.add_member(:filtered_status, Shapes::ShapeRef.new(shape: SubscriptionStatus, location_name: "FilteredStatus"))
    ListContactsFilter.add_member(:topic_filter, Shapes::ShapeRef.new(shape: TopicFilter, location_name: "TopicFilter"))
    ListContactsFilter.struct_class = Types::ListContactsFilter

    ListContactsRequest.add_member(:contact_list_name, Shapes::ShapeRef.new(shape: ContactListName, required: true, location: "uri", location_name: "ContactListName"))
    ListContactsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListContactsFilter, location_name: "Filter"))
    ListContactsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location_name: "PageSize"))
    ListContactsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListContactsRequest.struct_class = Types::ListContactsRequest

    ListContactsResponse.add_member(:contacts, Shapes::ShapeRef.new(shape: ListOfContacts, location_name: "Contacts"))
    ListContactsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListContactsResponse.struct_class = Types::ListContactsResponse

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

    ListExportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListExportJobsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location_name: "PageSize"))
    ListExportJobsRequest.add_member(:export_source_type, Shapes::ShapeRef.new(shape: ExportSourceType, location_name: "ExportSourceType"))
    ListExportJobsRequest.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    ListExportJobsRequest.struct_class = Types::ListExportJobsRequest

    ListExportJobsResponse.add_member(:export_jobs, Shapes::ShapeRef.new(shape: ExportJobSummaryList, location_name: "ExportJobs"))
    ListExportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListExportJobsResponse.struct_class = Types::ListExportJobsResponse

    ListImportJobsRequest.add_member(:import_destination_type, Shapes::ShapeRef.new(shape: ImportDestinationType, location_name: "ImportDestinationType"))
    ListImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListImportJobsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location_name: "PageSize"))
    ListImportJobsRequest.struct_class = Types::ListImportJobsRequest

    ListImportJobsResponse.add_member(:import_jobs, Shapes::ShapeRef.new(shape: ImportJobSummaryList, location_name: "ImportJobs"))
    ListImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListImportJobsResponse.struct_class = Types::ListImportJobsResponse

    ListManagementOptions.add_member(:contact_list_name, Shapes::ShapeRef.new(shape: ContactListName, required: true, location_name: "ContactListName"))
    ListManagementOptions.add_member(:topic_name, Shapes::ShapeRef.new(shape: TopicName, location_name: "TopicName"))
    ListManagementOptions.struct_class = Types::ListManagementOptions

    ListMultiRegionEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenV2, location: "querystring", location_name: "NextToken"))
    ListMultiRegionEndpointsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: PageSizeV2, location: "querystring", location_name: "PageSize"))
    ListMultiRegionEndpointsRequest.struct_class = Types::ListMultiRegionEndpointsRequest

    ListMultiRegionEndpointsResponse.add_member(:multi_region_endpoints, Shapes::ShapeRef.new(shape: MultiRegionEndpoints, location_name: "MultiRegionEndpoints"))
    ListMultiRegionEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenV2, location_name: "NextToken"))
    ListMultiRegionEndpointsResponse.struct_class = Types::ListMultiRegionEndpointsResponse

    ListOfContactLists.member = Shapes::ShapeRef.new(shape: ContactList)

    ListOfContacts.member = Shapes::ShapeRef.new(shape: Contact)

    ListOfDedicatedIpPools.member = Shapes::ShapeRef.new(shape: PoolName)

    ListRecommendationsFilter.key = Shapes::ShapeRef.new(shape: ListRecommendationsFilterKey)
    ListRecommendationsFilter.value = Shapes::ShapeRef.new(shape: ListRecommendationFilterValue)

    ListRecommendationsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListRecommendationsFilter, location_name: "Filter"))
    ListRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRecommendationsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location_name: "PageSize"))
    ListRecommendationsRequest.struct_class = Types::ListRecommendationsRequest

    ListRecommendationsResponse.add_member(:recommendations, Shapes::ShapeRef.new(shape: RecommendationsList, location_name: "Recommendations"))
    ListRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRecommendationsResponse.struct_class = Types::ListRecommendationsResponse

    ListReputationEntitiesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ReputationEntityFilter, location_name: "Filter"))
    ListReputationEntitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListReputationEntitiesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location_name: "PageSize"))
    ListReputationEntitiesRequest.struct_class = Types::ListReputationEntitiesRequest

    ListReputationEntitiesResponse.add_member(:reputation_entities, Shapes::ShapeRef.new(shape: ReputationEntitiesList, location_name: "ReputationEntities"))
    ListReputationEntitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListReputationEntitiesResponse.struct_class = Types::ListReputationEntitiesResponse

    ListResourceTenantsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    ListResourceTenantsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location_name: "PageSize"))
    ListResourceTenantsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceTenantsRequest.struct_class = Types::ListResourceTenantsRequest

    ListResourceTenantsResponse.add_member(:resource_tenants, Shapes::ShapeRef.new(shape: ResourceTenantMetadataList, location_name: "ResourceTenants"))
    ListResourceTenantsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceTenantsResponse.struct_class = Types::ListResourceTenantsResponse

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

    ListTenantResourcesFilter.key = Shapes::ShapeRef.new(shape: ListTenantResourcesFilterKey)
    ListTenantResourcesFilter.value = Shapes::ShapeRef.new(shape: ListTenantResourcesFilterValue)

    ListTenantResourcesRequest.add_member(:tenant_name, Shapes::ShapeRef.new(shape: TenantName, required: true, location_name: "TenantName"))
    ListTenantResourcesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListTenantResourcesFilter, location_name: "Filter"))
    ListTenantResourcesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location_name: "PageSize"))
    ListTenantResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTenantResourcesRequest.struct_class = Types::ListTenantResourcesRequest

    ListTenantResourcesResponse.add_member(:tenant_resources, Shapes::ShapeRef.new(shape: TenantResourceList, location_name: "TenantResources"))
    ListTenantResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTenantResourcesResponse.struct_class = Types::ListTenantResourcesResponse

    ListTenantsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTenantsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: MaxItems, location_name: "PageSize"))
    ListTenantsRequest.struct_class = Types::ListTenantsRequest

    ListTenantsResponse.add_member(:tenants, Shapes::ShapeRef.new(shape: TenantInfoList, location_name: "Tenants"))
    ListTenantsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTenantsResponse.struct_class = Types::ListTenantsResponse

    MailFromAttributes.add_member(:mail_from_domain, Shapes::ShapeRef.new(shape: MailFromDomainName, required: true, location_name: "MailFromDomain"))
    MailFromAttributes.add_member(:mail_from_domain_status, Shapes::ShapeRef.new(shape: MailFromDomainStatus, required: true, location_name: "MailFromDomainStatus"))
    MailFromAttributes.add_member(:behavior_on_mx_failure, Shapes::ShapeRef.new(shape: BehaviorOnMxFailure, required: true, location_name: "BehaviorOnMxFailure"))
    MailFromAttributes.struct_class = Types::MailFromAttributes

    MailFromDomainNotVerifiedException.struct_class = Types::MailFromDomainNotVerifiedException

    Message.add_member(:subject, Shapes::ShapeRef.new(shape: Content, required: true, location_name: "Subject"))
    Message.add_member(:body, Shapes::ShapeRef.new(shape: Body, required: true, location_name: "Body"))
    Message.add_member(:headers, Shapes::ShapeRef.new(shape: MessageHeaderList, location_name: "Headers"))
    Message.add_member(:attachments, Shapes::ShapeRef.new(shape: AttachmentList, location_name: "Attachments"))
    Message.struct_class = Types::Message

    MessageHeader.add_member(:name, Shapes::ShapeRef.new(shape: MessageHeaderName, required: true, location_name: "Name"))
    MessageHeader.add_member(:value, Shapes::ShapeRef.new(shape: MessageHeaderValue, required: true, location_name: "Value"))
    MessageHeader.struct_class = Types::MessageHeader

    MessageHeaderList.member = Shapes::ShapeRef.new(shape: MessageHeader)

    MessageInsightsDataSource.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartDate"))
    MessageInsightsDataSource.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndDate"))
    MessageInsightsDataSource.add_member(:include, Shapes::ShapeRef.new(shape: MessageInsightsFilters, location_name: "Include"))
    MessageInsightsDataSource.add_member(:exclude, Shapes::ShapeRef.new(shape: MessageInsightsFilters, location_name: "Exclude"))
    MessageInsightsDataSource.add_member(:max_results, Shapes::ShapeRef.new(shape: MessageInsightsExportMaxResults, location_name: "MaxResults"))
    MessageInsightsDataSource.struct_class = Types::MessageInsightsDataSource

    MessageInsightsFilters.add_member(:from_email_address, Shapes::ShapeRef.new(shape: EmailAddressFilterList, location_name: "FromEmailAddress"))
    MessageInsightsFilters.add_member(:destination, Shapes::ShapeRef.new(shape: EmailAddressFilterList, location_name: "Destination"))
    MessageInsightsFilters.add_member(:subject, Shapes::ShapeRef.new(shape: EmailSubjectFilterList, location_name: "Subject"))
    MessageInsightsFilters.add_member(:isp, Shapes::ShapeRef.new(shape: IspFilterList, location_name: "Isp"))
    MessageInsightsFilters.add_member(:last_delivery_event, Shapes::ShapeRef.new(shape: LastDeliveryEventList, location_name: "LastDeliveryEvent"))
    MessageInsightsFilters.add_member(:last_engagement_event, Shapes::ShapeRef.new(shape: LastEngagementEventList, location_name: "LastEngagementEvent"))
    MessageInsightsFilters.struct_class = Types::MessageInsightsFilters

    MessageRejected.struct_class = Types::MessageRejected

    MessageTag.add_member(:name, Shapes::ShapeRef.new(shape: MessageTagName, required: true, location_name: "Name"))
    MessageTag.add_member(:value, Shapes::ShapeRef.new(shape: MessageTagValue, required: true, location_name: "Value"))
    MessageTag.struct_class = Types::MessageTag

    MessageTagList.member = Shapes::ShapeRef.new(shape: MessageTag)

    MetricDataError.add_member(:id, Shapes::ShapeRef.new(shape: QueryIdentifier, location_name: "Id"))
    MetricDataError.add_member(:code, Shapes::ShapeRef.new(shape: QueryErrorCode, location_name: "Code"))
    MetricDataError.add_member(:message, Shapes::ShapeRef.new(shape: QueryErrorMessage, location_name: "Message"))
    MetricDataError.struct_class = Types::MetricDataError

    MetricDataErrorList.member = Shapes::ShapeRef.new(shape: MetricDataError)

    MetricDataResult.add_member(:id, Shapes::ShapeRef.new(shape: QueryIdentifier, location_name: "Id"))
    MetricDataResult.add_member(:timestamps, Shapes::ShapeRef.new(shape: TimestampList, location_name: "Timestamps"))
    MetricDataResult.add_member(:values, Shapes::ShapeRef.new(shape: MetricValueList, location_name: "Values"))
    MetricDataResult.struct_class = Types::MetricDataResult

    MetricDataResultList.member = Shapes::ShapeRef.new(shape: MetricDataResult)

    MetricValueList.member = Shapes::ShapeRef.new(shape: Counter)

    MetricsDataSource.add_member(:dimensions, Shapes::ShapeRef.new(shape: ExportDimensions, required: true, location_name: "Dimensions"))
    MetricsDataSource.add_member(:namespace, Shapes::ShapeRef.new(shape: MetricNamespace, required: true, location_name: "Namespace"))
    MetricsDataSource.add_member(:metrics, Shapes::ShapeRef.new(shape: ExportMetrics, required: true, location_name: "Metrics"))
    MetricsDataSource.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartDate"))
    MetricsDataSource.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndDate"))
    MetricsDataSource.struct_class = Types::MetricsDataSource

    MultiRegionEndpoint.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, location_name: "EndpointName"))
    MultiRegionEndpoint.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    MultiRegionEndpoint.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: EndpointId, location_name: "EndpointId"))
    MultiRegionEndpoint.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, location_name: "Regions"))
    MultiRegionEndpoint.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    MultiRegionEndpoint.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    MultiRegionEndpoint.struct_class = Types::MultiRegionEndpoint

    MultiRegionEndpoints.member = Shapes::ShapeRef.new(shape: MultiRegionEndpoint)

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
    PutAccountDetailsRequest.add_member(:use_case_description, Shapes::ShapeRef.new(shape: UseCaseDescription, deprecated: true, location_name: "UseCaseDescription"))
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

    PutAccountVdmAttributesRequest.add_member(:vdm_attributes, Shapes::ShapeRef.new(shape: VdmAttributes, required: true, location_name: "VdmAttributes"))
    PutAccountVdmAttributesRequest.struct_class = Types::PutAccountVdmAttributesRequest

    PutAccountVdmAttributesResponse.struct_class = Types::PutAccountVdmAttributesResponse

    PutConfigurationSetArchivingOptionsRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    PutConfigurationSetArchivingOptionsRequest.add_member(:archive_arn, Shapes::ShapeRef.new(shape: ArchiveArn, location_name: "ArchiveArn"))
    PutConfigurationSetArchivingOptionsRequest.struct_class = Types::PutConfigurationSetArchivingOptionsRequest

    PutConfigurationSetArchivingOptionsResponse.struct_class = Types::PutConfigurationSetArchivingOptionsResponse

    PutConfigurationSetDeliveryOptionsRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:tls_policy, Shapes::ShapeRef.new(shape: TlsPolicy, location_name: "TlsPolicy"))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:sending_pool_name, Shapes::ShapeRef.new(shape: SendingPoolName, location_name: "SendingPoolName"))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:max_delivery_seconds, Shapes::ShapeRef.new(shape: MaxDeliverySeconds, location_name: "MaxDeliverySeconds"))
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
    PutConfigurationSetTrackingOptionsRequest.add_member(:https_policy, Shapes::ShapeRef.new(shape: HttpsPolicy, location_name: "HttpsPolicy"))
    PutConfigurationSetTrackingOptionsRequest.struct_class = Types::PutConfigurationSetTrackingOptionsRequest

    PutConfigurationSetTrackingOptionsResponse.struct_class = Types::PutConfigurationSetTrackingOptionsResponse

    PutConfigurationSetVdmOptionsRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, required: true, location: "uri", location_name: "ConfigurationSetName"))
    PutConfigurationSetVdmOptionsRequest.add_member(:vdm_options, Shapes::ShapeRef.new(shape: VdmOptions, location_name: "VdmOptions"))
    PutConfigurationSetVdmOptionsRequest.struct_class = Types::PutConfigurationSetVdmOptionsRequest

    PutConfigurationSetVdmOptionsResponse.struct_class = Types::PutConfigurationSetVdmOptionsResponse

    PutDedicatedIpInPoolRequest.add_member(:ip, Shapes::ShapeRef.new(shape: Ip, required: true, location: "uri", location_name: "IP"))
    PutDedicatedIpInPoolRequest.add_member(:destination_pool_name, Shapes::ShapeRef.new(shape: PoolName, required: true, location_name: "DestinationPoolName"))
    PutDedicatedIpInPoolRequest.struct_class = Types::PutDedicatedIpInPoolRequest

    PutDedicatedIpInPoolResponse.struct_class = Types::PutDedicatedIpInPoolResponse

    PutDedicatedIpPoolScalingAttributesRequest.add_member(:pool_name, Shapes::ShapeRef.new(shape: PoolName, required: true, location: "uri", location_name: "PoolName"))
    PutDedicatedIpPoolScalingAttributesRequest.add_member(:scaling_mode, Shapes::ShapeRef.new(shape: ScalingMode, required: true, location_name: "ScalingMode"))
    PutDedicatedIpPoolScalingAttributesRequest.struct_class = Types::PutDedicatedIpPoolScalingAttributesRequest

    PutDedicatedIpPoolScalingAttributesResponse.struct_class = Types::PutDedicatedIpPoolScalingAttributesResponse

    PutDedicatedIpWarmupAttributesRequest.add_member(:ip, Shapes::ShapeRef.new(shape: Ip, required: true, location: "uri", location_name: "IP"))
    PutDedicatedIpWarmupAttributesRequest.add_member(:warmup_percentage, Shapes::ShapeRef.new(shape: Percentage100Wrapper, required: true, location_name: "WarmupPercentage"))
    PutDedicatedIpWarmupAttributesRequest.struct_class = Types::PutDedicatedIpWarmupAttributesRequest

    PutDedicatedIpWarmupAttributesResponse.struct_class = Types::PutDedicatedIpWarmupAttributesResponse

    PutDeliverabilityDashboardOptionRequest.add_member(:dashboard_enabled, Shapes::ShapeRef.new(shape: Enabled, required: true, location_name: "DashboardEnabled"))
    PutDeliverabilityDashboardOptionRequest.add_member(:subscribed_domains, Shapes::ShapeRef.new(shape: DomainDeliverabilityTrackingOptions, location_name: "SubscribedDomains"))
    PutDeliverabilityDashboardOptionRequest.struct_class = Types::PutDeliverabilityDashboardOptionRequest

    PutDeliverabilityDashboardOptionResponse.struct_class = Types::PutDeliverabilityDashboardOptionResponse

    PutEmailIdentityConfigurationSetAttributesRequest.add_member(:email_identity, Shapes::ShapeRef.new(shape: Identity, required: true, location: "uri", location_name: "EmailIdentity"))
    PutEmailIdentityConfigurationSetAttributesRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    PutEmailIdentityConfigurationSetAttributesRequest.struct_class = Types::PutEmailIdentityConfigurationSetAttributesRequest

    PutEmailIdentityConfigurationSetAttributesResponse.struct_class = Types::PutEmailIdentityConfigurationSetAttributesResponse

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

    Recommendation.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceArn"))
    Recommendation.add_member(:type, Shapes::ShapeRef.new(shape: RecommendationType, location_name: "Type"))
    Recommendation.add_member(:description, Shapes::ShapeRef.new(shape: RecommendationDescription, location_name: "Description"))
    Recommendation.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationStatus, location_name: "Status"))
    Recommendation.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    Recommendation.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    Recommendation.add_member(:impact, Shapes::ShapeRef.new(shape: RecommendationImpact, location_name: "Impact"))
    Recommendation.struct_class = Types::Recommendation

    RecommendationsList.member = Shapes::ShapeRef.new(shape: Recommendation)

    Regions.member = Shapes::ShapeRef.new(shape: Region)

    ReplacementEmailContent.add_member(:replacement_template, Shapes::ShapeRef.new(shape: ReplacementTemplate, location_name: "ReplacementTemplate"))
    ReplacementEmailContent.struct_class = Types::ReplacementEmailContent

    ReplacementTemplate.add_member(:replacement_template_data, Shapes::ShapeRef.new(shape: EmailTemplateData, location_name: "ReplacementTemplateData"))
    ReplacementTemplate.struct_class = Types::ReplacementTemplate

    ReputationEntitiesList.member = Shapes::ShapeRef.new(shape: ReputationEntity)

    ReputationEntity.add_member(:reputation_entity_reference, Shapes::ShapeRef.new(shape: ReputationEntityReference, location_name: "ReputationEntityReference"))
    ReputationEntity.add_member(:reputation_entity_type, Shapes::ShapeRef.new(shape: ReputationEntityType, location_name: "ReputationEntityType"))
    ReputationEntity.add_member(:reputation_management_policy, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ReputationManagementPolicy"))
    ReputationEntity.add_member(:customer_managed_status, Shapes::ShapeRef.new(shape: StatusRecord, location_name: "CustomerManagedStatus"))
    ReputationEntity.add_member(:aws_ses_managed_status, Shapes::ShapeRef.new(shape: StatusRecord, location_name: "AwsSesManagedStatus"))
    ReputationEntity.add_member(:sending_status_aggregate, Shapes::ShapeRef.new(shape: SendingStatus, location_name: "SendingStatusAggregate"))
    ReputationEntity.add_member(:reputation_impact, Shapes::ShapeRef.new(shape: RecommendationImpact, location_name: "ReputationImpact"))
    ReputationEntity.struct_class = Types::ReputationEntity

    ReputationEntityFilter.key = Shapes::ShapeRef.new(shape: ReputationEntityFilterKey)
    ReputationEntityFilter.value = Shapes::ShapeRef.new(shape: ReputationEntityFilterValue)

    ReputationOptions.add_member(:reputation_metrics_enabled, Shapes::ShapeRef.new(shape: Enabled, location_name: "ReputationMetricsEnabled"))
    ReputationOptions.add_member(:last_fresh_start, Shapes::ShapeRef.new(shape: LastFreshStart, location_name: "LastFreshStart"))
    ReputationOptions.struct_class = Types::ReputationOptions

    ResourceTenantMetadata.add_member(:tenant_name, Shapes::ShapeRef.new(shape: TenantName, location_name: "TenantName"))
    ResourceTenantMetadata.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantId, location_name: "TenantId"))
    ResourceTenantMetadata.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceArn"))
    ResourceTenantMetadata.add_member(:associated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "AssociatedTimestamp"))
    ResourceTenantMetadata.struct_class = Types::ResourceTenantMetadata

    ResourceTenantMetadataList.member = Shapes::ShapeRef.new(shape: ResourceTenantMetadata)

    ReviewDetails.add_member(:status, Shapes::ShapeRef.new(shape: ReviewStatus, location_name: "Status"))
    ReviewDetails.add_member(:case_id, Shapes::ShapeRef.new(shape: CaseId, location_name: "CaseId"))
    ReviewDetails.struct_class = Types::ReviewDetails

    Route.add_member(:region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "Region"))
    Route.struct_class = Types::Route

    RouteDetails.add_member(:region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "Region"))
    RouteDetails.struct_class = Types::RouteDetails

    Routes.member = Shapes::ShapeRef.new(shape: Route)

    RoutesDetails.member = Shapes::ShapeRef.new(shape: RouteDetails)

    SOARecord.add_member(:primary_name_server, Shapes::ShapeRef.new(shape: PrimaryNameServer, location_name: "PrimaryNameServer"))
    SOARecord.add_member(:admin_email, Shapes::ShapeRef.new(shape: AdminEmail, location_name: "AdminEmail"))
    SOARecord.add_member(:serial_number, Shapes::ShapeRef.new(shape: SerialNumber, location_name: "SerialNumber"))
    SOARecord.struct_class = Types::SOARecord

    SendBulkEmailRequest.add_member(:from_email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "FromEmailAddress"))
    SendBulkEmailRequest.add_member(:from_email_address_identity_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "FromEmailAddressIdentityArn"))
    SendBulkEmailRequest.add_member(:reply_to_addresses, Shapes::ShapeRef.new(shape: EmailAddressList, location_name: "ReplyToAddresses"))
    SendBulkEmailRequest.add_member(:feedback_forwarding_email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "FeedbackForwardingEmailAddress"))
    SendBulkEmailRequest.add_member(:feedback_forwarding_email_address_identity_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "FeedbackForwardingEmailAddressIdentityArn"))
    SendBulkEmailRequest.add_member(:default_email_tags, Shapes::ShapeRef.new(shape: MessageTagList, location_name: "DefaultEmailTags"))
    SendBulkEmailRequest.add_member(:default_content, Shapes::ShapeRef.new(shape: BulkEmailContent, required: true, location_name: "DefaultContent"))
    SendBulkEmailRequest.add_member(:bulk_email_entries, Shapes::ShapeRef.new(shape: BulkEmailEntryList, required: true, location_name: "BulkEmailEntries"))
    SendBulkEmailRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: "ConfigurationSetName"))
    SendBulkEmailRequest.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: EndpointId, location_name: "EndpointId", metadata: {"contextParam" => {"name" => "EndpointId"}}))
    SendBulkEmailRequest.add_member(:tenant_name, Shapes::ShapeRef.new(shape: TenantName, location_name: "TenantName"))
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
    SendEmailRequest.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: EndpointId, location_name: "EndpointId", metadata: {"contextParam" => {"name" => "EndpointId"}}))
    SendEmailRequest.add_member(:tenant_name, Shapes::ShapeRef.new(shape: TenantName, location_name: "TenantName"))
    SendEmailRequest.add_member(:list_management_options, Shapes::ShapeRef.new(shape: ListManagementOptions, location_name: "ListManagementOptions"))
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

    StatusRecord.add_member(:status, Shapes::ShapeRef.new(shape: SendingStatus, location_name: "Status"))
    StatusRecord.add_member(:cause, Shapes::ShapeRef.new(shape: StatusCause, location_name: "Cause"))
    StatusRecord.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTimestamp"))
    StatusRecord.struct_class = Types::StatusRecord

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
    Template.add_member(:template_content, Shapes::ShapeRef.new(shape: EmailTemplateContent, location_name: "TemplateContent"))
    Template.add_member(:template_data, Shapes::ShapeRef.new(shape: EmailTemplateData, location_name: "TemplateData"))
    Template.add_member(:headers, Shapes::ShapeRef.new(shape: MessageHeaderList, location_name: "Headers"))
    Template.add_member(:attachments, Shapes::ShapeRef.new(shape: AttachmentList, location_name: "Attachments"))
    Template.struct_class = Types::Template

    Tenant.add_member(:tenant_name, Shapes::ShapeRef.new(shape: TenantName, location_name: "TenantName"))
    Tenant.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantId, location_name: "TenantId"))
    Tenant.add_member(:tenant_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "TenantArn"))
    Tenant.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    Tenant.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Tenant.add_member(:sending_status, Shapes::ShapeRef.new(shape: SendingStatus, location_name: "SendingStatus"))
    Tenant.struct_class = Types::Tenant

    TenantInfo.add_member(:tenant_name, Shapes::ShapeRef.new(shape: TenantName, location_name: "TenantName"))
    TenantInfo.add_member(:tenant_id, Shapes::ShapeRef.new(shape: TenantId, location_name: "TenantId"))
    TenantInfo.add_member(:tenant_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "TenantArn"))
    TenantInfo.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTimestamp"))
    TenantInfo.struct_class = Types::TenantInfo

    TenantInfoList.member = Shapes::ShapeRef.new(shape: TenantInfo)

    TenantResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    TenantResource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceArn"))
    TenantResource.struct_class = Types::TenantResource

    TenantResourceList.member = Shapes::ShapeRef.new(shape: TenantResource)

    TestRenderEmailTemplateRequest.add_member(:template_name, Shapes::ShapeRef.new(shape: EmailTemplateName, required: true, location: "uri", location_name: "TemplateName"))
    TestRenderEmailTemplateRequest.add_member(:template_data, Shapes::ShapeRef.new(shape: EmailTemplateData, required: true, location_name: "TemplateData"))
    TestRenderEmailTemplateRequest.struct_class = Types::TestRenderEmailTemplateRequest

    TestRenderEmailTemplateResponse.add_member(:rendered_template, Shapes::ShapeRef.new(shape: RenderedEmailTemplate, required: true, location_name: "RenderedTemplate"))
    TestRenderEmailTemplateResponse.struct_class = Types::TestRenderEmailTemplateResponse

    TimestampList.member = Shapes::ShapeRef.new(shape: Timestamp)

    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    Topic.add_member(:topic_name, Shapes::ShapeRef.new(shape: TopicName, required: true, location_name: "TopicName"))
    Topic.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "DisplayName"))
    Topic.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Topic.add_member(:default_subscription_status, Shapes::ShapeRef.new(shape: SubscriptionStatus, required: true, location_name: "DefaultSubscriptionStatus"))
    Topic.struct_class = Types::Topic

    TopicFilter.add_member(:topic_name, Shapes::ShapeRef.new(shape: TopicName, location_name: "TopicName"))
    TopicFilter.add_member(:use_default_if_preference_unavailable, Shapes::ShapeRef.new(shape: UseDefaultIfPreferenceUnavailable, location_name: "UseDefaultIfPreferenceUnavailable"))
    TopicFilter.struct_class = Types::TopicFilter

    TopicPreference.add_member(:topic_name, Shapes::ShapeRef.new(shape: TopicName, required: true, location_name: "TopicName"))
    TopicPreference.add_member(:subscription_status, Shapes::ShapeRef.new(shape: SubscriptionStatus, required: true, location_name: "SubscriptionStatus"))
    TopicPreference.struct_class = Types::TopicPreference

    TopicPreferenceList.member = Shapes::ShapeRef.new(shape: TopicPreference)

    Topics.member = Shapes::ShapeRef.new(shape: Topic)

    TrackingOptions.add_member(:custom_redirect_domain, Shapes::ShapeRef.new(shape: CustomRedirectDomain, required: true, location_name: "CustomRedirectDomain"))
    TrackingOptions.add_member(:https_policy, Shapes::ShapeRef.new(shape: HttpsPolicy, location_name: "HttpsPolicy"))
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

    UpdateContactListRequest.add_member(:contact_list_name, Shapes::ShapeRef.new(shape: ContactListName, required: true, location: "uri", location_name: "ContactListName"))
    UpdateContactListRequest.add_member(:topics, Shapes::ShapeRef.new(shape: Topics, location_name: "Topics"))
    UpdateContactListRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateContactListRequest.struct_class = Types::UpdateContactListRequest

    UpdateContactListResponse.struct_class = Types::UpdateContactListResponse

    UpdateContactRequest.add_member(:contact_list_name, Shapes::ShapeRef.new(shape: ContactListName, required: true, location: "uri", location_name: "ContactListName"))
    UpdateContactRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location: "uri", location_name: "EmailAddress"))
    UpdateContactRequest.add_member(:topic_preferences, Shapes::ShapeRef.new(shape: TopicPreferenceList, location_name: "TopicPreferences"))
    UpdateContactRequest.add_member(:unsubscribe_all, Shapes::ShapeRef.new(shape: UnsubscribeAll, location_name: "UnsubscribeAll"))
    UpdateContactRequest.add_member(:attributes_data, Shapes::ShapeRef.new(shape: AttributesData, location_name: "AttributesData"))
    UpdateContactRequest.struct_class = Types::UpdateContactRequest

    UpdateContactResponse.struct_class = Types::UpdateContactResponse

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

    UpdateReputationEntityCustomerManagedStatusRequest.add_member(:reputation_entity_type, Shapes::ShapeRef.new(shape: ReputationEntityType, required: true, location: "uri", location_name: "ReputationEntityType"))
    UpdateReputationEntityCustomerManagedStatusRequest.add_member(:reputation_entity_reference, Shapes::ShapeRef.new(shape: ReputationEntityReference, required: true, location: "uri", location_name: "ReputationEntityReference"))
    UpdateReputationEntityCustomerManagedStatusRequest.add_member(:sending_status, Shapes::ShapeRef.new(shape: SendingStatus, required: true, location_name: "SendingStatus"))
    UpdateReputationEntityCustomerManagedStatusRequest.struct_class = Types::UpdateReputationEntityCustomerManagedStatusRequest

    UpdateReputationEntityCustomerManagedStatusResponse.struct_class = Types::UpdateReputationEntityCustomerManagedStatusResponse

    UpdateReputationEntityPolicyRequest.add_member(:reputation_entity_type, Shapes::ShapeRef.new(shape: ReputationEntityType, required: true, location: "uri", location_name: "ReputationEntityType"))
    UpdateReputationEntityPolicyRequest.add_member(:reputation_entity_reference, Shapes::ShapeRef.new(shape: ReputationEntityReference, required: true, location: "uri", location_name: "ReputationEntityReference"))
    UpdateReputationEntityPolicyRequest.add_member(:reputation_entity_policy, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ReputationEntityPolicy"))
    UpdateReputationEntityPolicyRequest.struct_class = Types::UpdateReputationEntityPolicyRequest

    UpdateReputationEntityPolicyResponse.struct_class = Types::UpdateReputationEntityPolicyResponse

    VdmAttributes.add_member(:vdm_enabled, Shapes::ShapeRef.new(shape: FeatureStatus, required: true, location_name: "VdmEnabled"))
    VdmAttributes.add_member(:dashboard_attributes, Shapes::ShapeRef.new(shape: DashboardAttributes, location_name: "DashboardAttributes"))
    VdmAttributes.add_member(:guardian_attributes, Shapes::ShapeRef.new(shape: GuardianAttributes, location_name: "GuardianAttributes"))
    VdmAttributes.struct_class = Types::VdmAttributes

    VdmOptions.add_member(:dashboard_options, Shapes::ShapeRef.new(shape: DashboardOptions, location_name: "DashboardOptions"))
    VdmOptions.add_member(:guardian_options, Shapes::ShapeRef.new(shape: GuardianOptions, location_name: "GuardianOptions"))
    VdmOptions.struct_class = Types::VdmOptions

    VerificationInfo.add_member(:last_checked_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastCheckedTimestamp"))
    VerificationInfo.add_member(:last_success_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastSuccessTimestamp"))
    VerificationInfo.add_member(:error_type, Shapes::ShapeRef.new(shape: VerificationError, location_name: "ErrorType"))
    VerificationInfo.add_member(:soa_record, Shapes::ShapeRef.new(shape: SOARecord, location_name: "SOARecord"))
    VerificationInfo.struct_class = Types::VerificationInfo

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
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "email",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "Amazon SES V2",
        "serviceFullName" => "Amazon Simple Email Service",
        "serviceId" => "SESv2",
        "signatureVersion" => "v4",
        "signingName" => "ses",
        "uid" => "sesv2-2019-09-27",
      }

      api.add_operation(:batch_get_metric_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetMetricData"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/metrics/batch"
        o.input = Shapes::ShapeRef.new(shape: BatchGetMetricDataRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetMetricDataResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:cancel_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelExportJob"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/export-jobs/{JobId}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

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

      api.add_operation(:create_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContact"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/contact-lists/{ContactListName}/contacts"
        o.input = Shapes::ShapeRef.new(shape: CreateContactRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
      end)

      api.add_operation(:create_contact_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContactList"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/contact-lists"
        o.input = Shapes::ShapeRef.new(shape: CreateContactListRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContactListResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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

      api.add_operation(:create_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/export-jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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

      api.add_operation(:create_multi_region_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMultiRegionEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/multi-region-endpoints"
        o.input = Shapes::ShapeRef.new(shape: CreateMultiRegionEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMultiRegionEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_tenant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTenant"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/tenants"
        o.input = Shapes::ShapeRef.new(shape: CreateTenantRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTenantResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_tenant_resource_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTenantResourceAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/tenants/resources"
        o.input = Shapes::ShapeRef.new(shape: CreateTenantResourceAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTenantResourceAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
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

      api.add_operation(:delete_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContact"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}"
        o.input = Shapes::ShapeRef.new(shape: DeleteContactRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:delete_contact_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContactList"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/email/contact-lists/{ContactListName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteContactListRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteContactListResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
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

      api.add_operation(:delete_multi_region_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMultiRegionEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/email/multi-region-endpoints/{EndpointName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMultiRegionEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMultiRegionEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
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

      api.add_operation(:delete_tenant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTenant"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/tenants/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteTenantRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTenantResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_tenant_resource_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTenantResourceAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/tenants/resources/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteTenantResourceAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTenantResourceAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
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

      api.add_operation(:get_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContact"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}"
        o.input = Shapes::ShapeRef.new(shape: GetContactRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_contact_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContactList"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/contact-lists/{ContactListName}"
        o.input = Shapes::ShapeRef.new(shape: GetContactListRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContactListResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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

      api.add_operation(:get_dedicated_ip_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDedicatedIpPool"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/dedicated-ip-pools/{PoolName}"
        o.input = Shapes::ShapeRef.new(shape: GetDedicatedIpPoolRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDedicatedIpPoolResponse)
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

      api.add_operation(:get_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExportJob"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/export-jobs/{JobId}"
        o.input = Shapes::ShapeRef.new(shape: GetExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
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

      api.add_operation(:get_message_insights, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMessageInsights"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/insights/{MessageId}/"
        o.input = Shapes::ShapeRef.new(shape: GetMessageInsightsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMessageInsightsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_multi_region_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMultiRegionEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/multi-region-endpoints/{EndpointName}"
        o.input = Shapes::ShapeRef.new(shape: GetMultiRegionEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMultiRegionEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_reputation_entity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReputationEntity"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}"
        o.input = Shapes::ShapeRef.new(shape: GetReputationEntityRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReputationEntityResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
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

      api.add_operation(:get_tenant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTenant"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/tenants/get"
        o.input = Shapes::ShapeRef.new(shape: GetTenantRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTenantResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
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

      api.add_operation(:list_contact_lists, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContactLists"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/contact-lists"
        o.input = Shapes::ShapeRef.new(shape: ListContactListsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContactListsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_contacts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContacts"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/contact-lists/{ContactListName}/contacts/list"
        o.input = Shapes::ShapeRef.new(shape: ListContactsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContactsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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

      api.add_operation(:list_export_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/list-export-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListExportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListExportJobsResponse)
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
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/import-jobs/list"
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

      api.add_operation(:list_multi_region_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMultiRegionEndpoints"
        o.http_method = "GET"
        o.http_request_uri = "/v2/email/multi-region-endpoints"
        o.input = Shapes::ShapeRef.new(shape: ListMultiRegionEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMultiRegionEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/vdm/recommendations"
        o.input = Shapes::ShapeRef.new(shape: ListRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecommendationsResponse)
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

      api.add_operation(:list_reputation_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReputationEntities"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/reputation/entities"
        o.input = Shapes::ShapeRef.new(shape: ListReputationEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReputationEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_tenants, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceTenants"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/resources/tenants/list"
        o.input = Shapes::ShapeRef.new(shape: ListResourceTenantsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceTenantsResponse)
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

      api.add_operation(:list_tenant_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTenantResources"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/tenants/resources/list"
        o.input = Shapes::ShapeRef.new(shape: ListTenantResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTenantResourcesResponse)
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

      api.add_operation(:list_tenants, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTenants"
        o.http_method = "POST"
        o.http_request_uri = "/v2/email/tenants/list"
        o.input = Shapes::ShapeRef.new(shape: ListTenantsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTenantsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "page_size",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:put_account_vdm_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccountVdmAttributes"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/account/vdm"
        o.input = Shapes::ShapeRef.new(shape: PutAccountVdmAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAccountVdmAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:put_configuration_set_archiving_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConfigurationSetArchivingOptions"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/configuration-sets/{ConfigurationSetName}/archiving-options"
        o.input = Shapes::ShapeRef.new(shape: PutConfigurationSetArchivingOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutConfigurationSetArchivingOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
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

      api.add_operation(:put_configuration_set_vdm_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConfigurationSetVdmOptions"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/configuration-sets/{ConfigurationSetName}/vdm-options"
        o.input = Shapes::ShapeRef.new(shape: PutConfigurationSetVdmOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutConfigurationSetVdmOptionsResponse)
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

      api.add_operation(:put_dedicated_ip_pool_scaling_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDedicatedIpPoolScalingAttributes"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/dedicated-ip-pools/{PoolName}/scaling"
        o.input = Shapes::ShapeRef.new(shape: PutDedicatedIpPoolScalingAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDedicatedIpPoolScalingAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
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

      api.add_operation(:put_email_identity_configuration_set_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEmailIdentityConfigurationSetAttributes"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/identities/{EmailIdentity}/configuration-set"
        o.input = Shapes::ShapeRef.new(shape: PutEmailIdentityConfigurationSetAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEmailIdentityConfigurationSetAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
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

      api.add_operation(:update_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContact"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_contact_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContactList"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/contact-lists/{ContactListName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateContactListRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContactListResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
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

      api.add_operation(:update_reputation_entity_customer_managed_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateReputationEntityCustomerManagedStatus"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}/customer-managed-status"
        o.input = Shapes::ShapeRef.new(shape: UpdateReputationEntityCustomerManagedStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateReputationEntityCustomerManagedStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_reputation_entity_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateReputationEntityPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}/policy"
        o.input = Shapes::ShapeRef.new(shape: UpdateReputationEntityPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateReputationEntityPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
