# frozen_string_literal: true

# This is generated code!

module Aws::SESv2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#AccountDetails', name: 'AccountDetails')
    AccountSuspendedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#AccountSuspendedException', name: 'AccountSuspendedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AdditionalContactEmailAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#AdditionalContactEmailAddress', name: 'AdditionalContactEmailAddress', traits: {"smithy.api#length" => {"min" => 6, "max" => 254}, "smithy.api#pattern" => "^(.+)@(.+)$", "smithy.api#sensitive" => {}})
    AdditionalContactEmailAddresses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#AdditionalContactEmailAddresses', name: 'AdditionalContactEmailAddresses', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#sensitive" => {}})
    AdminEmail = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#AdminEmail', name: 'AdminEmail')
    AlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#AlreadyExistsException', name: 'AlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1}})
    ArchiveArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#ArchiveArn', name: 'ArchiveArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "^arn:(aws|aws-[a-z-]+):ses:[a-z]{2}-[a-z-]+-[0-9]:[0-9]{1,20}:mailmanager-archive/a-[a-z0-9]{24,62}$"})
    ArchivingOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ArchivingOptions', name: 'ArchivingOptions')
    Attachment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#Attachment', name: 'Attachment')
    AttachmentContentDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#AttachmentContentDescription', name: 'AttachmentContentDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    AttachmentContentDisposition = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#AttachmentContentDisposition', name: 'AttachmentContentDisposition')
    AttachmentContentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#AttachmentContentId', name: 'AttachmentContentId', traits: {"smithy.api#length" => {"min" => 1, "max" => 78}})
    AttachmentContentTransferEncoding = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#AttachmentContentTransferEncoding', name: 'AttachmentContentTransferEncoding')
    AttachmentContentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#AttachmentContentType', name: 'AttachmentContentType', traits: {"smithy.api#length" => {"min" => 1, "max" => 78}})
    AttachmentFileName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#AttachmentFileName', name: 'AttachmentFileName', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    AttachmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#AttachmentList', name: 'AttachmentList')
    AttributesData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#AttributesData', name: 'AttributesData')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchGetMetricDataQueries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#BatchGetMetricDataQueries', name: 'BatchGetMetricDataQueries', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    BatchGetMetricDataQuery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#BatchGetMetricDataQuery', name: 'BatchGetMetricDataQuery')
    BatchGetMetricDataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#BatchGetMetricDataRequest', name: 'BatchGetMetricDataRequest')
    BatchGetMetricDataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#BatchGetMetricDataResponse', name: 'BatchGetMetricDataResponse')
    BehaviorOnMxFailure = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#BehaviorOnMxFailure', name: 'BehaviorOnMxFailure')
    BlacklistEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#BlacklistEntries', name: 'BlacklistEntries')
    BlacklistEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#BlacklistEntry', name: 'BlacklistEntry')
    BlacklistItemName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#BlacklistItemName', name: 'BlacklistItemName')
    BlacklistItemNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#BlacklistItemNames', name: 'BlacklistItemNames')
    BlacklistReport = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sesv2#BlacklistReport', name: 'BlacklistReport')
    BlacklistingDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#BlacklistingDescription', name: 'BlacklistingDescription')
    Body = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#Body', name: 'Body')
    Bounce = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#Bounce', name: 'Bounce')
    BounceSubType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#BounceSubType', name: 'BounceSubType')
    BounceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#BounceType', name: 'BounceType')
    BulkEmailContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#BulkEmailContent', name: 'BulkEmailContent')
    BulkEmailEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#BulkEmailEntry', name: 'BulkEmailEntry')
    BulkEmailEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#BulkEmailEntryList', name: 'BulkEmailEntryList')
    BulkEmailEntryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#BulkEmailEntryResult', name: 'BulkEmailEntryResult')
    BulkEmailEntryResultList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#BulkEmailEntryResultList', name: 'BulkEmailEntryResultList')
    BulkEmailStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#BulkEmailStatus', name: 'BulkEmailStatus')
    CampaignId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#CampaignId', name: 'CampaignId')
    CancelExportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CancelExportJobRequest', name: 'CancelExportJobRequest')
    CancelExportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CancelExportJobResponse', name: 'CancelExportJobResponse')
    CaseId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#CaseId', name: 'CaseId')
    Charset = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#Charset', name: 'Charset')
    CloudWatchDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CloudWatchDestination', name: 'CloudWatchDestination')
    CloudWatchDimensionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CloudWatchDimensionConfiguration', name: 'CloudWatchDimensionConfiguration')
    CloudWatchDimensionConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#CloudWatchDimensionConfigurations', name: 'CloudWatchDimensionConfigurations')
    Complaint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#Complaint', name: 'Complaint')
    ComplaintFeedbackType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#ComplaintFeedbackType', name: 'ComplaintFeedbackType')
    ComplaintSubType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#ComplaintSubType', name: 'ComplaintSubType')
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ConfigurationSetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#ConfigurationSetName', name: 'ConfigurationSetName')
    ConfigurationSetNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#ConfigurationSetNameList', name: 'ConfigurationSetNameList')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Contact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#Contact', name: 'Contact')
    ContactLanguage = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#ContactLanguage', name: 'ContactLanguage')
    ContactList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ContactList', name: 'ContactList')
    ContactListDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ContactListDestination', name: 'ContactListDestination')
    ContactListImportAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#ContactListImportAction', name: 'ContactListImportAction')
    ContactListName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#ContactListName', name: 'ContactListName')
    Content = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#Content', name: 'Content')
    Counter = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sesv2#Counter', name: 'Counter', traits: {"smithy.api#default" => 0})
    CreateConfigurationSetEventDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateConfigurationSetEventDestinationRequest', name: 'CreateConfigurationSetEventDestinationRequest')
    CreateConfigurationSetEventDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateConfigurationSetEventDestinationResponse', name: 'CreateConfigurationSetEventDestinationResponse')
    CreateConfigurationSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateConfigurationSetRequest', name: 'CreateConfigurationSetRequest')
    CreateConfigurationSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateConfigurationSetResponse', name: 'CreateConfigurationSetResponse')
    CreateContactListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateContactListRequest', name: 'CreateContactListRequest')
    CreateContactListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateContactListResponse', name: 'CreateContactListResponse')
    CreateContactRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateContactRequest', name: 'CreateContactRequest')
    CreateContactResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateContactResponse', name: 'CreateContactResponse')
    CreateCustomVerificationEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateCustomVerificationEmailTemplateRequest', name: 'CreateCustomVerificationEmailTemplateRequest')
    CreateCustomVerificationEmailTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateCustomVerificationEmailTemplateResponse', name: 'CreateCustomVerificationEmailTemplateResponse')
    CreateDedicatedIpPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateDedicatedIpPoolRequest', name: 'CreateDedicatedIpPoolRequest')
    CreateDedicatedIpPoolResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateDedicatedIpPoolResponse', name: 'CreateDedicatedIpPoolResponse')
    CreateDeliverabilityTestReportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateDeliverabilityTestReportRequest', name: 'CreateDeliverabilityTestReportRequest')
    CreateDeliverabilityTestReportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateDeliverabilityTestReportResponse', name: 'CreateDeliverabilityTestReportResponse')
    CreateEmailIdentityPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateEmailIdentityPolicyRequest', name: 'CreateEmailIdentityPolicyRequest')
    CreateEmailIdentityPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateEmailIdentityPolicyResponse', name: 'CreateEmailIdentityPolicyResponse')
    CreateEmailIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateEmailIdentityRequest', name: 'CreateEmailIdentityRequest')
    CreateEmailIdentityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateEmailIdentityResponse', name: 'CreateEmailIdentityResponse')
    CreateEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateEmailTemplateRequest', name: 'CreateEmailTemplateRequest')
    CreateEmailTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateEmailTemplateResponse', name: 'CreateEmailTemplateResponse')
    CreateExportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateExportJobRequest', name: 'CreateExportJobRequest')
    CreateExportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateExportJobResponse', name: 'CreateExportJobResponse')
    CreateImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateImportJobRequest', name: 'CreateImportJobRequest')
    CreateImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateImportJobResponse', name: 'CreateImportJobResponse')
    CreateMultiRegionEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateMultiRegionEndpointRequest', name: 'CreateMultiRegionEndpointRequest')
    CreateMultiRegionEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateMultiRegionEndpointResponse', name: 'CreateMultiRegionEndpointResponse')
    CreateTenantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateTenantRequest', name: 'CreateTenantRequest')
    CreateTenantResourceAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateTenantResourceAssociationRequest', name: 'CreateTenantResourceAssociationRequest')
    CreateTenantResourceAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateTenantResourceAssociationResponse', name: 'CreateTenantResourceAssociationResponse')
    CreateTenantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CreateTenantResponse', name: 'CreateTenantResponse')
    CustomRedirectDomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#CustomRedirectDomain', name: 'CustomRedirectDomain')
    CustomVerificationEmailTemplateMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#CustomVerificationEmailTemplateMetadata', name: 'CustomVerificationEmailTemplateMetadata')
    CustomVerificationEmailTemplatesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#CustomVerificationEmailTemplatesList', name: 'CustomVerificationEmailTemplatesList')
    DailyVolume = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DailyVolume', name: 'DailyVolume')
    DailyVolumes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#DailyVolumes', name: 'DailyVolumes')
    DashboardAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DashboardAttributes', name: 'DashboardAttributes')
    DashboardOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DashboardOptions', name: 'DashboardOptions')
    DataFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#DataFormat', name: 'DataFormat')
    DedicatedIp = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DedicatedIp', name: 'DedicatedIp')
    DedicatedIpList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#DedicatedIpList', name: 'DedicatedIpList')
    DedicatedIpPool = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DedicatedIpPool', name: 'DedicatedIpPool')
    DefaultDimensionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#DefaultDimensionValue', name: 'DefaultDimensionValue')
    DeleteConfigurationSetEventDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteConfigurationSetEventDestinationRequest', name: 'DeleteConfigurationSetEventDestinationRequest')
    DeleteConfigurationSetEventDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteConfigurationSetEventDestinationResponse', name: 'DeleteConfigurationSetEventDestinationResponse')
    DeleteConfigurationSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteConfigurationSetRequest', name: 'DeleteConfigurationSetRequest')
    DeleteConfigurationSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteConfigurationSetResponse', name: 'DeleteConfigurationSetResponse')
    DeleteContactListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteContactListRequest', name: 'DeleteContactListRequest')
    DeleteContactListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteContactListResponse', name: 'DeleteContactListResponse')
    DeleteContactRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteContactRequest', name: 'DeleteContactRequest')
    DeleteContactResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteContactResponse', name: 'DeleteContactResponse')
    DeleteCustomVerificationEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteCustomVerificationEmailTemplateRequest', name: 'DeleteCustomVerificationEmailTemplateRequest')
    DeleteCustomVerificationEmailTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteCustomVerificationEmailTemplateResponse', name: 'DeleteCustomVerificationEmailTemplateResponse')
    DeleteDedicatedIpPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteDedicatedIpPoolRequest', name: 'DeleteDedicatedIpPoolRequest')
    DeleteDedicatedIpPoolResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteDedicatedIpPoolResponse', name: 'DeleteDedicatedIpPoolResponse')
    DeleteEmailIdentityPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteEmailIdentityPolicyRequest', name: 'DeleteEmailIdentityPolicyRequest')
    DeleteEmailIdentityPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteEmailIdentityPolicyResponse', name: 'DeleteEmailIdentityPolicyResponse')
    DeleteEmailIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteEmailIdentityRequest', name: 'DeleteEmailIdentityRequest')
    DeleteEmailIdentityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteEmailIdentityResponse', name: 'DeleteEmailIdentityResponse')
    DeleteEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteEmailTemplateRequest', name: 'DeleteEmailTemplateRequest')
    DeleteEmailTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteEmailTemplateResponse', name: 'DeleteEmailTemplateResponse')
    DeleteMultiRegionEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteMultiRegionEndpointRequest', name: 'DeleteMultiRegionEndpointRequest')
    DeleteMultiRegionEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteMultiRegionEndpointResponse', name: 'DeleteMultiRegionEndpointResponse')
    DeleteSuppressedDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteSuppressedDestinationRequest', name: 'DeleteSuppressedDestinationRequest')
    DeleteSuppressedDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteSuppressedDestinationResponse', name: 'DeleteSuppressedDestinationResponse')
    DeleteTenantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteTenantRequest', name: 'DeleteTenantRequest')
    DeleteTenantResourceAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteTenantResourceAssociationRequest', name: 'DeleteTenantResourceAssociationRequest')
    DeleteTenantResourceAssociationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteTenantResourceAssociationResponse', name: 'DeleteTenantResourceAssociationResponse')
    DeleteTenantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeleteTenantResponse', name: 'DeleteTenantResponse')
    DeliverabilityDashboardAccountStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#DeliverabilityDashboardAccountStatus', name: 'DeliverabilityDashboardAccountStatus')
    DeliverabilityTestReport = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeliverabilityTestReport', name: 'DeliverabilityTestReport')
    DeliverabilityTestReports = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#DeliverabilityTestReports', name: 'DeliverabilityTestReports')
    DeliverabilityTestStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#DeliverabilityTestStatus', name: 'DeliverabilityTestStatus')
    DeliverabilityTestSubject = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#DeliverabilityTestSubject', name: 'DeliverabilityTestSubject')
    DeliveryEventType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#DeliveryEventType', name: 'DeliveryEventType')
    DeliveryOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DeliveryOptions', name: 'DeliveryOptions')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#Description', name: 'Description')
    Destination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#Destination', name: 'Destination')
    Details = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#Details', name: 'Details')
    DiagnosticCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#DiagnosticCode', name: 'DiagnosticCode')
    DimensionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#DimensionName', name: 'DimensionName')
    DimensionValueSource = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#DimensionValueSource', name: 'DimensionValueSource')
    Dimensions = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sesv2#Dimensions', name: 'Dimensions', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    DisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#DisplayName', name: 'DisplayName')
    DkimAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DkimAttributes', name: 'DkimAttributes')
    DkimSigningAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DkimSigningAttributes', name: 'DkimSigningAttributes')
    DkimSigningAttributesOrigin = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#DkimSigningAttributesOrigin', name: 'DkimSigningAttributesOrigin')
    DkimSigningKeyLength = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#DkimSigningKeyLength', name: 'DkimSigningKeyLength')
    DkimStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#DkimStatus', name: 'DkimStatus')
    DnsToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#DnsToken', name: 'DnsToken')
    DnsTokenList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#DnsTokenList', name: 'DnsTokenList')
    Domain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#Domain', name: 'Domain')
    DomainDeliverabilityCampaign = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DomainDeliverabilityCampaign', name: 'DomainDeliverabilityCampaign')
    DomainDeliverabilityCampaignList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#DomainDeliverabilityCampaignList', name: 'DomainDeliverabilityCampaignList')
    DomainDeliverabilityTrackingOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DomainDeliverabilityTrackingOption', name: 'DomainDeliverabilityTrackingOption')
    DomainDeliverabilityTrackingOptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#DomainDeliverabilityTrackingOptions', name: 'DomainDeliverabilityTrackingOptions')
    DomainIspPlacement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#DomainIspPlacement', name: 'DomainIspPlacement')
    DomainIspPlacements = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#DomainIspPlacements', name: 'DomainIspPlacements')
    EmailAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#EmailAddress', name: 'EmailAddress')
    EmailAddressFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#EmailAddressFilterList', name: 'EmailAddressFilterList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    EmailAddressList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#EmailAddressList', name: 'EmailAddressList')
    EmailContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#EmailContent', name: 'EmailContent')
    EmailInsights = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#EmailInsights', name: 'EmailInsights')
    EmailInsightsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#EmailInsightsList', name: 'EmailInsightsList')
    EmailSubject = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#EmailSubject', name: 'EmailSubject', traits: {"smithy.api#length" => {"min" => 1, "max" => 998}, "smithy.api#sensitive" => {}})
    EmailSubjectFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#EmailSubjectFilterList', name: 'EmailSubjectFilterList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    EmailTemplateContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#EmailTemplateContent', name: 'EmailTemplateContent')
    EmailTemplateData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#EmailTemplateData', name: 'EmailTemplateData', traits: {"smithy.api#length" => {"min" => 0, "max" => 262144}})
    EmailTemplateHtml = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#EmailTemplateHtml', name: 'EmailTemplateHtml')
    EmailTemplateMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#EmailTemplateMetadata', name: 'EmailTemplateMetadata')
    EmailTemplateMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#EmailTemplateMetadataList', name: 'EmailTemplateMetadataList')
    EmailTemplateName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#EmailTemplateName', name: 'EmailTemplateName', traits: {"smithy.api#length" => {"min" => 1}})
    EmailTemplateSubject = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#EmailTemplateSubject', name: 'EmailTemplateSubject')
    EmailTemplateText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#EmailTemplateText', name: 'EmailTemplateText')
    Enabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sesv2#Enabled', name: 'Enabled', traits: {"smithy.api#default" => false})
    EnabledWrapper = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sesv2#EnabledWrapper', name: 'EnabledWrapper')
    EndpointId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#EndpointId', name: 'EndpointId')
    EndpointName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#EndpointName', name: 'EndpointName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w\\-_]+$"})
    EngagementEventType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#EngagementEventType', name: 'EngagementEventType')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#ErrorMessage', name: 'ErrorMessage')
    Esp = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#Esp', name: 'Esp')
    Esps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#Esps', name: 'Esps')
    EventBridgeDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#EventBridgeDestination', name: 'EventBridgeDestination')
    EventDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#EventDestination', name: 'EventDestination')
    EventDestinationDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#EventDestinationDefinition', name: 'EventDestinationDefinition')
    EventDestinationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#EventDestinationName', name: 'EventDestinationName')
    EventDestinations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#EventDestinations', name: 'EventDestinations')
    EventDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#EventDetails', name: 'EventDetails')
    EventType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#EventType', name: 'EventType')
    EventTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#EventTypes', name: 'EventTypes')
    ExportDataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ExportDataSource', name: 'ExportDataSource')
    ExportDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ExportDestination', name: 'ExportDestination')
    ExportDimensionValue = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#ExportDimensionValue', name: 'ExportDimensionValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ExportDimensions = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sesv2#ExportDimensions', name: 'ExportDimensions', traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    ExportJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ExportJobSummary', name: 'ExportJobSummary')
    ExportJobSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#ExportJobSummaryList', name: 'ExportJobSummaryList')
    ExportMetric = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ExportMetric', name: 'ExportMetric')
    ExportMetrics = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#ExportMetrics', name: 'ExportMetrics', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ExportSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#ExportSourceType', name: 'ExportSourceType')
    ExportStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ExportStatistics', name: 'ExportStatistics')
    ExportedRecordsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sesv2#ExportedRecordsCount', name: 'ExportedRecordsCount')
    FailedRecordsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sesv2#FailedRecordsCount', name: 'FailedRecordsCount')
    FailedRecordsS3Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#FailedRecordsS3Url', name: 'FailedRecordsS3Url')
    FailureInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#FailureInfo', name: 'FailureInfo')
    FailureRedirectionURL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#FailureRedirectionURL', name: 'FailureRedirectionURL')
    FeatureStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#FeatureStatus', name: 'FeatureStatus')
    FeedbackId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#FeedbackId', name: 'FeedbackId')
    GeneralEnforcementStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#GeneralEnforcementStatus', name: 'GeneralEnforcementStatus')
    GetAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetAccountRequest', name: 'GetAccountRequest')
    GetAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetAccountResponse', name: 'GetAccountResponse')
    GetBlacklistReportsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetBlacklistReportsRequest', name: 'GetBlacklistReportsRequest')
    GetBlacklistReportsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetBlacklistReportsResponse', name: 'GetBlacklistReportsResponse')
    GetConfigurationSetEventDestinationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetConfigurationSetEventDestinationsRequest', name: 'GetConfigurationSetEventDestinationsRequest')
    GetConfigurationSetEventDestinationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetConfigurationSetEventDestinationsResponse', name: 'GetConfigurationSetEventDestinationsResponse')
    GetConfigurationSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetConfigurationSetRequest', name: 'GetConfigurationSetRequest')
    GetConfigurationSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetConfigurationSetResponse', name: 'GetConfigurationSetResponse')
    GetContactListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetContactListRequest', name: 'GetContactListRequest')
    GetContactListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetContactListResponse', name: 'GetContactListResponse')
    GetContactRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetContactRequest', name: 'GetContactRequest')
    GetContactResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetContactResponse', name: 'GetContactResponse')
    GetCustomVerificationEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetCustomVerificationEmailTemplateRequest', name: 'GetCustomVerificationEmailTemplateRequest')
    GetCustomVerificationEmailTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetCustomVerificationEmailTemplateResponse', name: 'GetCustomVerificationEmailTemplateResponse')
    GetDedicatedIpPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetDedicatedIpPoolRequest', name: 'GetDedicatedIpPoolRequest')
    GetDedicatedIpPoolResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetDedicatedIpPoolResponse', name: 'GetDedicatedIpPoolResponse')
    GetDedicatedIpRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetDedicatedIpRequest', name: 'GetDedicatedIpRequest')
    GetDedicatedIpResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetDedicatedIpResponse', name: 'GetDedicatedIpResponse')
    GetDedicatedIpsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetDedicatedIpsRequest', name: 'GetDedicatedIpsRequest')
    GetDedicatedIpsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetDedicatedIpsResponse', name: 'GetDedicatedIpsResponse')
    GetDeliverabilityDashboardOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetDeliverabilityDashboardOptionsRequest', name: 'GetDeliverabilityDashboardOptionsRequest')
    GetDeliverabilityDashboardOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetDeliverabilityDashboardOptionsResponse', name: 'GetDeliverabilityDashboardOptionsResponse')
    GetDeliverabilityTestReportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetDeliverabilityTestReportRequest', name: 'GetDeliverabilityTestReportRequest')
    GetDeliverabilityTestReportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetDeliverabilityTestReportResponse', name: 'GetDeliverabilityTestReportResponse')
    GetDomainDeliverabilityCampaignRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetDomainDeliverabilityCampaignRequest', name: 'GetDomainDeliverabilityCampaignRequest')
    GetDomainDeliverabilityCampaignResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetDomainDeliverabilityCampaignResponse', name: 'GetDomainDeliverabilityCampaignResponse')
    GetDomainStatisticsReportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetDomainStatisticsReportRequest', name: 'GetDomainStatisticsReportRequest')
    GetDomainStatisticsReportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetDomainStatisticsReportResponse', name: 'GetDomainStatisticsReportResponse')
    GetEmailIdentityPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetEmailIdentityPoliciesRequest', name: 'GetEmailIdentityPoliciesRequest')
    GetEmailIdentityPoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetEmailIdentityPoliciesResponse', name: 'GetEmailIdentityPoliciesResponse')
    GetEmailIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetEmailIdentityRequest', name: 'GetEmailIdentityRequest')
    GetEmailIdentityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetEmailIdentityResponse', name: 'GetEmailIdentityResponse')
    GetEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetEmailTemplateRequest', name: 'GetEmailTemplateRequest')
    GetEmailTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetEmailTemplateResponse', name: 'GetEmailTemplateResponse')
    GetExportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetExportJobRequest', name: 'GetExportJobRequest')
    GetExportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetExportJobResponse', name: 'GetExportJobResponse')
    GetImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetImportJobRequest', name: 'GetImportJobRequest')
    GetImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetImportJobResponse', name: 'GetImportJobResponse')
    GetMessageInsightsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetMessageInsightsRequest', name: 'GetMessageInsightsRequest')
    GetMessageInsightsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetMessageInsightsResponse', name: 'GetMessageInsightsResponse')
    GetMultiRegionEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetMultiRegionEndpointRequest', name: 'GetMultiRegionEndpointRequest')
    GetMultiRegionEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetMultiRegionEndpointResponse', name: 'GetMultiRegionEndpointResponse')
    GetReputationEntityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetReputationEntityRequest', name: 'GetReputationEntityRequest')
    GetReputationEntityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetReputationEntityResponse', name: 'GetReputationEntityResponse')
    GetSuppressedDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetSuppressedDestinationRequest', name: 'GetSuppressedDestinationRequest')
    GetSuppressedDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetSuppressedDestinationResponse', name: 'GetSuppressedDestinationResponse')
    GetTenantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetTenantRequest', name: 'GetTenantRequest')
    GetTenantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GetTenantResponse', name: 'GetTenantResponse')
    GuardianAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GuardianAttributes', name: 'GuardianAttributes')
    GuardianOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#GuardianOptions', name: 'GuardianOptions')
    HttpsPolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#HttpsPolicy', name: 'HttpsPolicy')
    Identity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#Identity', name: 'Identity', traits: {"smithy.api#length" => {"min" => 1}})
    IdentityInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#IdentityInfo', name: 'IdentityInfo')
    IdentityInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#IdentityInfoList', name: 'IdentityInfoList')
    IdentityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#IdentityType', name: 'IdentityType')
    ImageUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#ImageUrl', name: 'ImageUrl')
    ImportDataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ImportDataSource', name: 'ImportDataSource')
    ImportDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ImportDestination', name: 'ImportDestination')
    ImportDestinationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#ImportDestinationType', name: 'ImportDestinationType')
    ImportJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ImportJobSummary', name: 'ImportJobSummary')
    ImportJobSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#ImportJobSummaryList', name: 'ImportJobSummaryList')
    InboxPlacementTrackingOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#InboxPlacementTrackingOption', name: 'InboxPlacementTrackingOption')
    InsightsEmailAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#InsightsEmailAddress', name: 'InsightsEmailAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 320}, "smithy.api#sensitive" => {}})
    InsightsEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#InsightsEvent', name: 'InsightsEvent')
    InsightsEvents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#InsightsEvents', name: 'InsightsEvents')
    InternalServiceErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#InternalServiceErrorException', name: 'InternalServiceErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Ip = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#Ip', name: 'Ip')
    IpList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#IpList', name: 'IpList')
    Isp = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#Isp', name: 'Isp')
    IspFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#IspFilterList', name: 'IspFilterList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    IspName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#IspName', name: 'IspName')
    IspNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#IspNameList', name: 'IspNameList')
    IspPlacement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#IspPlacement', name: 'IspPlacement')
    IspPlacements = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#IspPlacements', name: 'IspPlacements')
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 1}})
    JobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#JobStatus', name: 'JobStatus')
    KinesisFirehoseDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#KinesisFirehoseDestination', name: 'KinesisFirehoseDestination')
    LastDeliveryEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#LastDeliveryEventList', name: 'LastDeliveryEventList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    LastEngagementEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#LastEngagementEventList', name: 'LastEngagementEventList', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    LastFreshStart = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.sesv2#LastFreshStart', name: 'LastFreshStart')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListConfigurationSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListConfigurationSetsRequest', name: 'ListConfigurationSetsRequest')
    ListConfigurationSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListConfigurationSetsResponse', name: 'ListConfigurationSetsResponse')
    ListContactListsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListContactListsRequest', name: 'ListContactListsRequest')
    ListContactListsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListContactListsResponse', name: 'ListContactListsResponse')
    ListContactsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListContactsFilter', name: 'ListContactsFilter')
    ListContactsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListContactsRequest', name: 'ListContactsRequest')
    ListContactsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListContactsResponse', name: 'ListContactsResponse')
    ListCustomVerificationEmailTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListCustomVerificationEmailTemplatesRequest', name: 'ListCustomVerificationEmailTemplatesRequest')
    ListCustomVerificationEmailTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListCustomVerificationEmailTemplatesResponse', name: 'ListCustomVerificationEmailTemplatesResponse')
    ListDedicatedIpPoolsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListDedicatedIpPoolsRequest', name: 'ListDedicatedIpPoolsRequest')
    ListDedicatedIpPoolsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListDedicatedIpPoolsResponse', name: 'ListDedicatedIpPoolsResponse')
    ListDeliverabilityTestReportsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListDeliverabilityTestReportsRequest', name: 'ListDeliverabilityTestReportsRequest')
    ListDeliverabilityTestReportsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListDeliverabilityTestReportsResponse', name: 'ListDeliverabilityTestReportsResponse')
    ListDomainDeliverabilityCampaignsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListDomainDeliverabilityCampaignsRequest', name: 'ListDomainDeliverabilityCampaignsRequest')
    ListDomainDeliverabilityCampaignsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListDomainDeliverabilityCampaignsResponse', name: 'ListDomainDeliverabilityCampaignsResponse')
    ListEmailIdentitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListEmailIdentitiesRequest', name: 'ListEmailIdentitiesRequest')
    ListEmailIdentitiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListEmailIdentitiesResponse', name: 'ListEmailIdentitiesResponse')
    ListEmailTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListEmailTemplatesRequest', name: 'ListEmailTemplatesRequest')
    ListEmailTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListEmailTemplatesResponse', name: 'ListEmailTemplatesResponse')
    ListExportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListExportJobsRequest', name: 'ListExportJobsRequest')
    ListExportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListExportJobsResponse', name: 'ListExportJobsResponse')
    ListImportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListImportJobsRequest', name: 'ListImportJobsRequest')
    ListImportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListImportJobsResponse', name: 'ListImportJobsResponse')
    ListManagementOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListManagementOptions', name: 'ListManagementOptions')
    ListMultiRegionEndpointsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListMultiRegionEndpointsRequest', name: 'ListMultiRegionEndpointsRequest')
    ListMultiRegionEndpointsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListMultiRegionEndpointsResponse', name: 'ListMultiRegionEndpointsResponse')
    ListOfContactLists = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#ListOfContactLists', name: 'ListOfContactLists')
    ListOfContacts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#ListOfContacts', name: 'ListOfContacts')
    ListOfDedicatedIpPools = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#ListOfDedicatedIpPools', name: 'ListOfDedicatedIpPools')
    ListRecommendationFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#ListRecommendationFilterValue', name: 'ListRecommendationFilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ListRecommendationsFilter = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sesv2#ListRecommendationsFilter', name: 'ListRecommendationsFilter', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    ListRecommendationsFilterKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#ListRecommendationsFilterKey', name: 'ListRecommendationsFilterKey')
    ListRecommendationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListRecommendationsRequest', name: 'ListRecommendationsRequest')
    ListRecommendationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListRecommendationsResponse', name: 'ListRecommendationsResponse')
    ListReputationEntitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListReputationEntitiesRequest', name: 'ListReputationEntitiesRequest')
    ListReputationEntitiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListReputationEntitiesResponse', name: 'ListReputationEntitiesResponse')
    ListResourceTenantsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListResourceTenantsRequest', name: 'ListResourceTenantsRequest')
    ListResourceTenantsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListResourceTenantsResponse', name: 'ListResourceTenantsResponse')
    ListSuppressedDestinationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListSuppressedDestinationsRequest', name: 'ListSuppressedDestinationsRequest')
    ListSuppressedDestinationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListSuppressedDestinationsResponse', name: 'ListSuppressedDestinationsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTenantResourcesFilter = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sesv2#ListTenantResourcesFilter', name: 'ListTenantResourcesFilter')
    ListTenantResourcesFilterKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#ListTenantResourcesFilterKey', name: 'ListTenantResourcesFilterKey')
    ListTenantResourcesFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#ListTenantResourcesFilterValue', name: 'ListTenantResourcesFilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ListTenantResourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListTenantResourcesRequest', name: 'ListTenantResourcesRequest')
    ListTenantResourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListTenantResourcesResponse', name: 'ListTenantResourcesResponse')
    ListTenantsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListTenantsRequest', name: 'ListTenantsRequest')
    ListTenantsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ListTenantsResponse', name: 'ListTenantsResponse')
    MailFromAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#MailFromAttributes', name: 'MailFromAttributes')
    MailFromDomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#MailFromDomainName', name: 'MailFromDomainName')
    MailFromDomainNotVerifiedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#MailFromDomainNotVerifiedException', name: 'MailFromDomainNotVerifiedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MailFromDomainStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#MailFromDomainStatus', name: 'MailFromDomainStatus')
    MailType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#MailType', name: 'MailType')
    Max24HourSend = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.sesv2#Max24HourSend', name: 'Max24HourSend', traits: {"smithy.api#default" => 0})
    MaxDeliverySeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sesv2#MaxDeliverySeconds', name: 'MaxDeliverySeconds', traits: {"smithy.api#range" => {"min" => 300, "max" => 50400}})
    MaxItems = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sesv2#MaxItems', name: 'MaxItems')
    MaxSendRate = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.sesv2#MaxSendRate', name: 'MaxSendRate', traits: {"smithy.api#default" => 0})
    Message = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#Message', name: 'Message')
    MessageContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#MessageContent', name: 'MessageContent')
    MessageData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#MessageData', name: 'MessageData')
    MessageHeader = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#MessageHeader', name: 'MessageHeader')
    MessageHeaderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#MessageHeaderList', name: 'MessageHeaderList', traits: {"smithy.api#length" => {"min" => 0, "max" => 15}})
    MessageHeaderName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#MessageHeaderName', name: 'MessageHeaderName', traits: {"smithy.api#length" => {"min" => 1, "max" => 126}, "smithy.api#pattern" => "^[!-9;-@A-~]+$"})
    MessageHeaderValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#MessageHeaderValue', name: 'MessageHeaderValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 870}, "smithy.api#pattern" => "^[ -~]*$"})
    MessageInsightsDataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#MessageInsightsDataSource', name: 'MessageInsightsDataSource')
    MessageInsightsExportMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sesv2#MessageInsightsExportMaxResults', name: 'MessageInsightsExportMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    MessageInsightsFilters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#MessageInsightsFilters', name: 'MessageInsightsFilters')
    MessageRejected = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#MessageRejected', name: 'MessageRejected', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MessageTag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#MessageTag', name: 'MessageTag')
    MessageTagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#MessageTagList', name: 'MessageTagList')
    MessageTagName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#MessageTagName', name: 'MessageTagName')
    MessageTagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#MessageTagValue', name: 'MessageTagValue')
    Metric = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#Metric', name: 'Metric')
    MetricAggregation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#MetricAggregation', name: 'MetricAggregation')
    MetricDataError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#MetricDataError', name: 'MetricDataError')
    MetricDataErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#MetricDataErrorList', name: 'MetricDataErrorList')
    MetricDataResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#MetricDataResult', name: 'MetricDataResult')
    MetricDataResultList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#MetricDataResultList', name: 'MetricDataResultList')
    MetricDimensionName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#MetricDimensionName', name: 'MetricDimensionName')
    MetricDimensionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#MetricDimensionValue', name: 'MetricDimensionValue')
    MetricNamespace = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#MetricNamespace', name: 'MetricNamespace')
    MetricValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#MetricValueList', name: 'MetricValueList')
    MetricsDataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#MetricsDataSource', name: 'MetricsDataSource')
    MultiRegionEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#MultiRegionEndpoint', name: 'MultiRegionEndpoint')
    MultiRegionEndpoints = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#MultiRegionEndpoints', name: 'MultiRegionEndpoints')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#NextToken', name: 'NextToken')
    NextTokenV2 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#NextTokenV2', name: 'NextTokenV2', traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}, "smithy.api#pattern" => "^^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$"})
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OutboundMessageId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#OutboundMessageId', name: 'OutboundMessageId')
    OverallVolume = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#OverallVolume', name: 'OverallVolume')
    PageSizeV2 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sesv2#PageSizeV2', name: 'PageSizeV2', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    Percentage = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.sesv2#Percentage', name: 'Percentage')
    Percentage100Wrapper = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sesv2#Percentage100Wrapper', name: 'Percentage100Wrapper')
    PinpointDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PinpointDestination', name: 'PinpointDestination')
    PlacementStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PlacementStatistics', name: 'PlacementStatistics')
    Policy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#Policy', name: 'Policy', traits: {"smithy.api#length" => {"min" => 1}})
    PolicyMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sesv2#PolicyMap', name: 'PolicyMap')
    PolicyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#PolicyName', name: 'PolicyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    PoolName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#PoolName', name: 'PoolName')
    PrimaryNameServer = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#PrimaryNameServer', name: 'PrimaryNameServer')
    PrivateKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#PrivateKey', name: 'PrivateKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 20480}, "smithy.api#pattern" => "^[a-zA-Z0-9+\\/]+={0,2}$", "smithy.api#sensitive" => {}})
    ProcessedRecordsCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sesv2#ProcessedRecordsCount', name: 'ProcessedRecordsCount')
    PutAccountDedicatedIpWarmupAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutAccountDedicatedIpWarmupAttributesRequest', name: 'PutAccountDedicatedIpWarmupAttributesRequest')
    PutAccountDedicatedIpWarmupAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutAccountDedicatedIpWarmupAttributesResponse', name: 'PutAccountDedicatedIpWarmupAttributesResponse')
    PutAccountDetailsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutAccountDetailsRequest', name: 'PutAccountDetailsRequest')
    PutAccountDetailsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutAccountDetailsResponse', name: 'PutAccountDetailsResponse')
    PutAccountSendingAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutAccountSendingAttributesRequest', name: 'PutAccountSendingAttributesRequest')
    PutAccountSendingAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutAccountSendingAttributesResponse', name: 'PutAccountSendingAttributesResponse')
    PutAccountSuppressionAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutAccountSuppressionAttributesRequest', name: 'PutAccountSuppressionAttributesRequest')
    PutAccountSuppressionAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutAccountSuppressionAttributesResponse', name: 'PutAccountSuppressionAttributesResponse')
    PutAccountVdmAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutAccountVdmAttributesRequest', name: 'PutAccountVdmAttributesRequest')
    PutAccountVdmAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutAccountVdmAttributesResponse', name: 'PutAccountVdmAttributesResponse')
    PutConfigurationSetArchivingOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutConfigurationSetArchivingOptionsRequest', name: 'PutConfigurationSetArchivingOptionsRequest')
    PutConfigurationSetArchivingOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutConfigurationSetArchivingOptionsResponse', name: 'PutConfigurationSetArchivingOptionsResponse')
    PutConfigurationSetDeliveryOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutConfigurationSetDeliveryOptionsRequest', name: 'PutConfigurationSetDeliveryOptionsRequest')
    PutConfigurationSetDeliveryOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutConfigurationSetDeliveryOptionsResponse', name: 'PutConfigurationSetDeliveryOptionsResponse')
    PutConfigurationSetReputationOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutConfigurationSetReputationOptionsRequest', name: 'PutConfigurationSetReputationOptionsRequest')
    PutConfigurationSetReputationOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutConfigurationSetReputationOptionsResponse', name: 'PutConfigurationSetReputationOptionsResponse')
    PutConfigurationSetSendingOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutConfigurationSetSendingOptionsRequest', name: 'PutConfigurationSetSendingOptionsRequest')
    PutConfigurationSetSendingOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutConfigurationSetSendingOptionsResponse', name: 'PutConfigurationSetSendingOptionsResponse')
    PutConfigurationSetSuppressionOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutConfigurationSetSuppressionOptionsRequest', name: 'PutConfigurationSetSuppressionOptionsRequest')
    PutConfigurationSetSuppressionOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutConfigurationSetSuppressionOptionsResponse', name: 'PutConfigurationSetSuppressionOptionsResponse')
    PutConfigurationSetTrackingOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutConfigurationSetTrackingOptionsRequest', name: 'PutConfigurationSetTrackingOptionsRequest')
    PutConfigurationSetTrackingOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutConfigurationSetTrackingOptionsResponse', name: 'PutConfigurationSetTrackingOptionsResponse')
    PutConfigurationSetVdmOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutConfigurationSetVdmOptionsRequest', name: 'PutConfigurationSetVdmOptionsRequest')
    PutConfigurationSetVdmOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutConfigurationSetVdmOptionsResponse', name: 'PutConfigurationSetVdmOptionsResponse')
    PutDedicatedIpInPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutDedicatedIpInPoolRequest', name: 'PutDedicatedIpInPoolRequest')
    PutDedicatedIpInPoolResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutDedicatedIpInPoolResponse', name: 'PutDedicatedIpInPoolResponse')
    PutDedicatedIpPoolScalingAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutDedicatedIpPoolScalingAttributesRequest', name: 'PutDedicatedIpPoolScalingAttributesRequest')
    PutDedicatedIpPoolScalingAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutDedicatedIpPoolScalingAttributesResponse', name: 'PutDedicatedIpPoolScalingAttributesResponse')
    PutDedicatedIpWarmupAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutDedicatedIpWarmupAttributesRequest', name: 'PutDedicatedIpWarmupAttributesRequest')
    PutDedicatedIpWarmupAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutDedicatedIpWarmupAttributesResponse', name: 'PutDedicatedIpWarmupAttributesResponse')
    PutDeliverabilityDashboardOptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutDeliverabilityDashboardOptionRequest', name: 'PutDeliverabilityDashboardOptionRequest')
    PutDeliverabilityDashboardOptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutDeliverabilityDashboardOptionResponse', name: 'PutDeliverabilityDashboardOptionResponse')
    PutEmailIdentityConfigurationSetAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutEmailIdentityConfigurationSetAttributesRequest', name: 'PutEmailIdentityConfigurationSetAttributesRequest')
    PutEmailIdentityConfigurationSetAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutEmailIdentityConfigurationSetAttributesResponse', name: 'PutEmailIdentityConfigurationSetAttributesResponse')
    PutEmailIdentityDkimAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutEmailIdentityDkimAttributesRequest', name: 'PutEmailIdentityDkimAttributesRequest')
    PutEmailIdentityDkimAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutEmailIdentityDkimAttributesResponse', name: 'PutEmailIdentityDkimAttributesResponse')
    PutEmailIdentityDkimSigningAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutEmailIdentityDkimSigningAttributesRequest', name: 'PutEmailIdentityDkimSigningAttributesRequest')
    PutEmailIdentityDkimSigningAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutEmailIdentityDkimSigningAttributesResponse', name: 'PutEmailIdentityDkimSigningAttributesResponse')
    PutEmailIdentityFeedbackAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutEmailIdentityFeedbackAttributesRequest', name: 'PutEmailIdentityFeedbackAttributesRequest')
    PutEmailIdentityFeedbackAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutEmailIdentityFeedbackAttributesResponse', name: 'PutEmailIdentityFeedbackAttributesResponse')
    PutEmailIdentityMailFromAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutEmailIdentityMailFromAttributesRequest', name: 'PutEmailIdentityMailFromAttributesRequest')
    PutEmailIdentityMailFromAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutEmailIdentityMailFromAttributesResponse', name: 'PutEmailIdentityMailFromAttributesResponse')
    PutSuppressedDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutSuppressedDestinationRequest', name: 'PutSuppressedDestinationRequest')
    PutSuppressedDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#PutSuppressedDestinationResponse', name: 'PutSuppressedDestinationResponse')
    QueryErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#QueryErrorCode', name: 'QueryErrorCode')
    QueryErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#QueryErrorMessage', name: 'QueryErrorMessage')
    QueryIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#QueryIdentifier', name: 'QueryIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    RawAttachmentData = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.sesv2#RawAttachmentData', name: 'RawAttachmentData')
    RawMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#RawMessage', name: 'RawMessage')
    RawMessageData = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.sesv2#RawMessageData', name: 'RawMessageData')
    RblName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#RblName', name: 'RblName')
    Recommendation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#Recommendation', name: 'Recommendation')
    RecommendationDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#RecommendationDescription', name: 'RecommendationDescription')
    RecommendationImpact = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#RecommendationImpact', name: 'RecommendationImpact')
    RecommendationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#RecommendationStatus', name: 'RecommendationStatus')
    RecommendationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#RecommendationType', name: 'RecommendationType')
    RecommendationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#RecommendationsList', name: 'RecommendationsList')
    Region = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#Region', name: 'Region')
    Regions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#Regions', name: 'Regions')
    RenderedEmailTemplate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#RenderedEmailTemplate', name: 'RenderedEmailTemplate')
    ReplacementEmailContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ReplacementEmailContent', name: 'ReplacementEmailContent')
    ReplacementTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ReplacementTemplate', name: 'ReplacementTemplate')
    ReportId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#ReportId', name: 'ReportId')
    ReportName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#ReportName', name: 'ReportName')
    ReputationEntitiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#ReputationEntitiesList', name: 'ReputationEntitiesList')
    ReputationEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ReputationEntity', name: 'ReputationEntity')
    ReputationEntityFilter = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.sesv2#ReputationEntityFilter', name: 'ReputationEntityFilter')
    ReputationEntityFilterKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#ReputationEntityFilterKey', name: 'ReputationEntityFilterKey')
    ReputationEntityFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#ReputationEntityFilterValue', name: 'ReputationEntityFilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ReputationEntityReference = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#ReputationEntityReference', name: 'ReputationEntityReference', traits: {"smithy.api#length" => {"min" => 1}})
    ReputationEntityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#ReputationEntityType', name: 'ReputationEntityType')
    ReputationOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ReputationOptions', name: 'ReputationOptions')
    ResourceTenantMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ResourceTenantMetadata', name: 'ResourceTenantMetadata')
    ResourceTenantMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#ResourceTenantMetadataList', name: 'ResourceTenantMetadataList')
    ResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#ResourceType', name: 'ResourceType')
    ReviewDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#ReviewDetails', name: 'ReviewDetails')
    ReviewStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#ReviewStatus', name: 'ReviewStatus')
    Route = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#Route', name: 'Route')
    RouteDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#RouteDetails', name: 'RouteDetails')
    Routes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#Routes', name: 'Routes')
    RoutesDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#RoutesDetails', name: 'RoutesDetails')
    S3Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#S3Url', name: 'S3Url', traits: {"smithy.api#pattern" => "^s3:\\/\\/([^\\/]+)\\/(.*?([^\\/]+)\\/?)$"})
    SOARecord = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SOARecord', name: 'SOARecord')
    ScalingMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#ScalingMode', name: 'ScalingMode')
    Selector = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#Selector', name: 'Selector', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\\-]*[a-zA-Z0-9]))$"})
    SendBulkEmailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SendBulkEmailRequest', name: 'SendBulkEmailRequest')
    SendBulkEmailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SendBulkEmailResponse', name: 'SendBulkEmailResponse')
    SendCustomVerificationEmailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SendCustomVerificationEmailRequest', name: 'SendCustomVerificationEmailRequest')
    SendCustomVerificationEmailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SendCustomVerificationEmailResponse', name: 'SendCustomVerificationEmailResponse')
    SendEmailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SendEmailRequest', name: 'SendEmailRequest')
    SendEmailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SendEmailResponse', name: 'SendEmailResponse')
    SendQuota = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SendQuota', name: 'SendQuota')
    SendingOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SendingOptions', name: 'SendingOptions')
    SendingPausedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SendingPausedException', name: 'SendingPausedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SendingPoolName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#SendingPoolName', name: 'SendingPoolName')
    SendingStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#SendingStatus', name: 'SendingStatus')
    SentLast24Hours = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.sesv2#SentLast24Hours', name: 'SentLast24Hours', traits: {"smithy.api#default" => 0})
    SerialNumber = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sesv2#SerialNumber', name: 'SerialNumber', traits: {"smithy.api#default" => 0})
    SnsDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SnsDestination', name: 'SnsDestination')
    Status = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#Status', name: 'Status')
    StatusCause = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#StatusCause', name: 'StatusCause', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    StatusRecord = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#StatusRecord', name: 'StatusRecord')
    Subject = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#Subject', name: 'Subject')
    SubscriptionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#SubscriptionStatus', name: 'SubscriptionStatus')
    SuccessRedirectionURL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#SuccessRedirectionURL', name: 'SuccessRedirectionURL')
    SuppressedDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SuppressedDestination', name: 'SuppressedDestination')
    SuppressedDestinationAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SuppressedDestinationAttributes', name: 'SuppressedDestinationAttributes')
    SuppressedDestinationSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#SuppressedDestinationSummaries', name: 'SuppressedDestinationSummaries')
    SuppressedDestinationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SuppressedDestinationSummary', name: 'SuppressedDestinationSummary')
    SuppressionAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SuppressionAttributes', name: 'SuppressionAttributes')
    SuppressionListDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SuppressionListDestination', name: 'SuppressionListDestination')
    SuppressionListImportAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#SuppressionListImportAction', name: 'SuppressionListImportAction')
    SuppressionListReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#SuppressionListReason', name: 'SuppressionListReason')
    SuppressionListReasons = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#SuppressionListReasons', name: 'SuppressionListReasons')
    SuppressionOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#SuppressionOptions', name: 'SuppressionOptions')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#TagKey', name: 'TagKey')
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#TagList', name: 'TagList')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#TagValue', name: 'TagValue')
    Template = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#Template', name: 'Template')
    TemplateContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#TemplateContent', name: 'TemplateContent')
    Tenant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#Tenant', name: 'Tenant')
    TenantId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#TenantId', name: 'TenantId')
    TenantInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#TenantInfo', name: 'TenantInfo')
    TenantInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#TenantInfoList', name: 'TenantInfoList')
    TenantName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#TenantName', name: 'TenantName', traits: {"smithy.api#length" => {"min" => 1}})
    TenantResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#TenantResource', name: 'TenantResource')
    TenantResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#TenantResourceList', name: 'TenantResourceList')
    TestRenderEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#TestRenderEmailTemplateRequest', name: 'TestRenderEmailTemplateRequest')
    TestRenderEmailTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#TestRenderEmailTemplateResponse', name: 'TestRenderEmailTemplateResponse')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.sesv2#Timestamp', name: 'Timestamp')
    TimestampList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#TimestampList', name: 'TimestampList')
    TlsPolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#TlsPolicy', name: 'TlsPolicy')
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Topic = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#Topic', name: 'Topic')
    TopicFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#TopicFilter', name: 'TopicFilter')
    TopicName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#TopicName', name: 'TopicName')
    TopicPreference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#TopicPreference', name: 'TopicPreference')
    TopicPreferenceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#TopicPreferenceList', name: 'TopicPreferenceList')
    Topics = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.sesv2#Topics', name: 'Topics')
    TrackingOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#TrackingOptions', name: 'TrackingOptions')
    UnsubscribeAll = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sesv2#UnsubscribeAll', name: 'UnsubscribeAll', traits: {"smithy.api#default" => false})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateConfigurationSetEventDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateConfigurationSetEventDestinationRequest', name: 'UpdateConfigurationSetEventDestinationRequest')
    UpdateConfigurationSetEventDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateConfigurationSetEventDestinationResponse', name: 'UpdateConfigurationSetEventDestinationResponse')
    UpdateContactListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateContactListRequest', name: 'UpdateContactListRequest')
    UpdateContactListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateContactListResponse', name: 'UpdateContactListResponse')
    UpdateContactRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateContactRequest', name: 'UpdateContactRequest')
    UpdateContactResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateContactResponse', name: 'UpdateContactResponse')
    UpdateCustomVerificationEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateCustomVerificationEmailTemplateRequest', name: 'UpdateCustomVerificationEmailTemplateRequest')
    UpdateCustomVerificationEmailTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateCustomVerificationEmailTemplateResponse', name: 'UpdateCustomVerificationEmailTemplateResponse')
    UpdateEmailIdentityPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateEmailIdentityPolicyRequest', name: 'UpdateEmailIdentityPolicyRequest')
    UpdateEmailIdentityPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateEmailIdentityPolicyResponse', name: 'UpdateEmailIdentityPolicyResponse')
    UpdateEmailTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateEmailTemplateRequest', name: 'UpdateEmailTemplateRequest')
    UpdateEmailTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateEmailTemplateResponse', name: 'UpdateEmailTemplateResponse')
    UpdateReputationEntityCustomerManagedStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateReputationEntityCustomerManagedStatusRequest', name: 'UpdateReputationEntityCustomerManagedStatusRequest')
    UpdateReputationEntityCustomerManagedStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateReputationEntityCustomerManagedStatusResponse', name: 'UpdateReputationEntityCustomerManagedStatusResponse')
    UpdateReputationEntityPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateReputationEntityPolicyRequest', name: 'UpdateReputationEntityPolicyRequest')
    UpdateReputationEntityPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#UpdateReputationEntityPolicyResponse', name: 'UpdateReputationEntityPolicyResponse')
    UseCaseDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#UseCaseDescription', name: 'UseCaseDescription', traits: {"smithy.api#deprecated" => {"message" => "Use case description is optional and deprecated"}, "smithy.api#length" => {"min" => 0, "max" => 5000}, "smithy.api#sensitive" => {}})
    UseDefaultIfPreferenceUnavailable = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.sesv2#UseDefaultIfPreferenceUnavailable', name: 'UseDefaultIfPreferenceUnavailable', traits: {"smithy.api#default" => false})
    VdmAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#VdmAttributes', name: 'VdmAttributes')
    VdmOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#VdmOptions', name: 'VdmOptions')
    VerificationError = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#VerificationError', name: 'VerificationError')
    VerificationInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#VerificationInfo', name: 'VerificationInfo')
    VerificationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#VerificationStatus', name: 'VerificationStatus')
    Volume = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.sesv2#Volume', name: 'Volume')
    VolumeStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.sesv2#VolumeStatistics', name: 'VolumeStatistics')
    WarmupStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.sesv2#WarmupStatus', name: 'WarmupStatus')
    WebsiteURL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.sesv2#WebsiteURL', name: 'WebsiteURL', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\\?([^#]*))?(#(.*))?$", "smithy.api#sensitive" => {}})

    AccountDetails.add_member(:mail_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MailType, location_name: 'MailType', traits: {"smithy.api#documentation" => "<p>The type of email your account is sending. The mail type can be one of the\n            following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>MARKETING</code> – Most of your sending traffic is to keep your\n                    customers informed of your latest offering.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TRANSACTIONAL</code> – Most of your sending traffic is to\n                    communicate during a transaction with a customer.</p>\n            </li>\n         </ul>"}))
    AccountDetails.add_member(:website_url, Smithy::Schema::Shapes::ShapeRef.new(shape: WebsiteURL, location_name: 'WebsiteURL', traits: {"smithy.api#documentation" => "<p>The URL of your website. This information helps us better understand the type of\n            content that you plan to send.</p>"}))
    AccountDetails.add_member(:contact_language, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactLanguage, location_name: 'ContactLanguage', traits: {"smithy.api#documentation" => "<p>The language you would prefer for the case. The contact language can be one of\n                <code>ENGLISH</code> or <code>JAPANESE</code>.</p>"}))
    AccountDetails.add_member(:use_case_description, Smithy::Schema::Shapes::ShapeRef.new(shape: UseCaseDescription, location_name: 'UseCaseDescription', traits: {"smithy.api#documentation" => "<p>A description of the types of email that you plan to send.</p>"}))
    AccountDetails.add_member(:additional_contact_email_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalContactEmailAddresses, location_name: 'AdditionalContactEmailAddresses', traits: {"smithy.api#documentation" => "<p>Additional email addresses where updates are sent about your account review\n            process.</p>"}))
    AccountDetails.add_member(:review_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewDetails, location_name: 'ReviewDetails', traits: {"smithy.api#documentation" => "<p>Information about the review of the latest details you submitted.</p>"}))
    AccountDetails.type = Types::AccountDetails
    AccountSuspendedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AccountSuspendedException.type = Types::AccountSuspendedException
    AdditionalContactEmailAddresses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalContactEmailAddress)
    AlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AlreadyExistsException.type = Types::AlreadyExistsException
    ArchivingOptions.add_member(:archive_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveArn, location_name: 'ArchiveArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the MailManager archive where the Amazon SES API v2 will archive sent\n        emails.</p>"}))
    ArchivingOptions.type = Types::ArchivingOptions
    Attachment.add_member(:raw_content, Smithy::Schema::Shapes::ShapeRef.new(shape: RawAttachmentData, location_name: 'RawContent', traits: {"smithy.api#documentation" => "<p> The raw data of the attachment. It needs to be base64-encoded if you are accessing Amazon SES\n            directly through the HTTPS interface. If you are accessing Amazon SES using an Amazon Web Services\n            SDK, the SDK takes care of the base 64-encoding for you.</p>", "smithy.api#required" => {}}))
    Attachment.add_member(:content_disposition, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentContentDisposition, location_name: 'ContentDisposition', traits: {"smithy.api#documentation" => "<p> A standard descriptor indicating how the attachment should be rendered in the email.\n            Supported values: <code>ATTACHMENT</code> or <code>INLINE</code>.</p>"}))
    Attachment.add_member(:file_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentFileName, location_name: 'FileName', traits: {"smithy.api#documentation" => "<p>The file name for the attachment as it will appear in the email.\n            Amazon SES restricts certain file extensions. To ensure attachments are accepted,\n            check the <a href=\"https://docs.aws.amazon.com/ses/latest/dg/mime-types.html\">Unsupported attachment types</a>\n            in the Amazon SES Developer Guide.</p>", "smithy.api#required" => {}}))
    Attachment.add_member(:content_description, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentContentDescription, location_name: 'ContentDescription', traits: {"smithy.api#documentation" => "<p> A brief description of the attachment content.</p>"}))
    Attachment.add_member(:content_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentContentId, location_name: 'ContentId', traits: {"smithy.api#documentation" => "<p> Unique identifier for the attachment, used for referencing attachments with INLINE disposition in HTML content.</p>"}))
    Attachment.add_member(:content_transfer_encoding, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentContentTransferEncoding, location_name: 'ContentTransferEncoding', traits: {"smithy.api#documentation" => "<p> Specifies how the attachment is encoded.\n            Supported values: <code>BASE64</code>, <code>QUOTED_PRINTABLE</code>, <code>SEVEN_BIT</code>.</p>"}))
    Attachment.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p> The MIME type of the attachment.</p>\n         <note>\n            <p>Example: <code>application/pdf</code>, <code>image/jpeg</code>\n            </p>\n         </note>"}))
    Attachment.type = Types::Attachment
    AttachmentContentDisposition.add_member(:attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTACHMENT', traits: {"smithy.api#enumValue" => "ATTACHMENT"}))
    AttachmentContentDisposition.add_member(:inline, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INLINE', traits: {"smithy.api#enumValue" => "INLINE"}))
    AttachmentContentTransferEncoding.add_member(:base64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BASE64', traits: {"smithy.api#enumValue" => "BASE64"}))
    AttachmentContentTransferEncoding.add_member(:quoted_printable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUOTED_PRINTABLE', traits: {"smithy.api#enumValue" => "QUOTED_PRINTABLE"}))
    AttachmentContentTransferEncoding.add_member(:seven_bit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEVEN_BIT', traits: {"smithy.api#enumValue" => "SEVEN_BIT"}))
    AttachmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Attachment)
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    BadRequestException.type = Types::BadRequestException
    BatchGetMetricDataQueries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetMetricDataQuery)
    BatchGetMetricDataQuery.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryIdentifier, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The query identifier.</p>", "smithy.api#required" => {}}))
    BatchGetMetricDataQuery.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricNamespace, location_name: 'Namespace', traits: {"smithy.api#documentation" => "<p>The query namespace - e.g. <code>VDM</code>\n         </p>", "smithy.api#required" => {}}))
    BatchGetMetricDataQuery.add_member(:metric, Smithy::Schema::Shapes::ShapeRef.new(shape: Metric, location_name: 'Metric', traits: {"smithy.api#documentation" => "<p>The queried metric. This can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SEND</code> – Emails sent eligible for tracking\n                    in the VDM dashboard. This excludes emails sent to the mailbox simulator and emails\n                    addressed to more than one recipient.</p>\n            </li>\n            <li>\n               <p>\n                  <code>COMPLAINT</code> – Complaints received for your\n                    account. This excludes complaints from the mailbox simulator, those originating from\n                    your account-level suppression list (if enabled), and those for emails addressed to more\n                    than one recipient</p>\n            </li>\n            <li>\n               <p>\n                  <code>PERMANENT_BOUNCE</code> – Permanent bounces - i.e. feedback received for\n                    emails sent to non-existent mailboxes. Excludes bounces from the mailbox simulator, those\n                    originating from your account-level suppression list (if enabled), and those for emails\n                    addressed to more than one recipient.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TRANSIENT_BOUNCE</code> – Transient bounces - i.e. feedback received for\n                    delivery failures excluding issues with non-existent mailboxes. Excludes bounces from the\n                    mailbox simulator, and those for emails addressed to more than one recipient.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OPEN</code> – Unique open events for emails including open trackers.\n                    Excludes opens for emails addressed to more than one recipient.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CLICK</code> – Unique click events for emails including wrapped links.\n                    Excludes clicks for emails addressed to more than one recipient.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELIVERY</code> – Successful deliveries for email sending attempts.\n                    Excludes deliveries to the mailbox simulator and for emails addressed to more\n                    than one recipient.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELIVERY_OPEN</code> – Successful deliveries for email sending attempts.\n                    Excludes deliveries to the mailbox simulator, for emails addressed to more than one recipient,\n                    and emails without open trackers.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELIVERY_CLICK</code> – Successful deliveries for email sending attempts.\n                    Excludes deliveries to the mailbox simulator, for emails addressed to more than one recipient,\n                    and emails without click trackers.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELIVERY_COMPLAINT</code> – Successful deliveries for email sending attempts.\n                    Excludes deliveries to the mailbox simulator, for emails addressed to more than one recipient,\n                    and emails addressed to recipients hosted by ISPs with which Amazon SES does not have a\n                    feedback loop agreement.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    BatchGetMetricDataQuery.add_member(:dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: Dimensions, location_name: 'Dimensions', traits: {"smithy.api#documentation" => "<p>An object that contains mapping between <code>MetricDimensionName</code>\n            and <code>MetricDimensionValue</code> to filter metrics by.</p>"}))
    BatchGetMetricDataQuery.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartDate', traits: {"smithy.api#documentation" => "<p>Represents the start date for the query interval.</p>", "smithy.api#required" => {}}))
    BatchGetMetricDataQuery.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndDate', traits: {"smithy.api#documentation" => "<p>Represents the end date for the query interval.</p>", "smithy.api#required" => {}}))
    BatchGetMetricDataQuery.type = Types::BatchGetMetricDataQuery
    BatchGetMetricDataRequest.add_member(:queries, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetMetricDataQueries, location_name: 'Queries', traits: {"smithy.api#documentation" => "<p>A list of queries for metrics to be retrieved.</p>", "smithy.api#required" => {}}))
    BatchGetMetricDataRequest.type = Types::BatchGetMetricDataRequest
    BatchGetMetricDataResponse.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDataResultList, location_name: 'Results', traits: {"smithy.api#documentation" => "<p>A list of successfully retrieved <code>MetricDataResult</code>.</p>"}))
    BatchGetMetricDataResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDataErrorList, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>A list of <code>MetricDataError</code> encountered while processing your metric data batch request.</p>"}))
    BatchGetMetricDataResponse.type = Types::BatchGetMetricDataResponse
    BehaviorOnMxFailure.add_member(:use_default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USE_DEFAULT_VALUE', traits: {"smithy.api#enumValue" => "USE_DEFAULT_VALUE"}))
    BehaviorOnMxFailure.add_member(:reject_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECT_MESSAGE', traits: {"smithy.api#enumValue" => "REJECT_MESSAGE"}))
    BlacklistEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BlacklistEntry)
    BlacklistEntry.add_member(:rbl_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RblName, location_name: 'RblName', traits: {"smithy.api#documentation" => "<p>The name of the blacklist that the IP address appears on.</p>"}))
    BlacklistEntry.add_member(:listing_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ListingTime', traits: {"smithy.api#documentation" => "<p>The time when the blacklisting event occurred.</p>"}))
    BlacklistEntry.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: BlacklistingDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Additional information about the blacklisting event, as provided by the blacklist\n            maintainer.</p>"}))
    BlacklistEntry.type = Types::BlacklistEntry
    BlacklistItemNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BlacklistItemName)
    BlacklistReport.key = Smithy::Schema::Shapes::ShapeRef.new(shape: BlacklistItemName)
    BlacklistReport.value = Smithy::Schema::Shapes::ShapeRef.new(shape: BlacklistEntries)
    Body.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>An object that represents the version of the message that is displayed in email\n            clients that don't support HTML, or clients where the recipient has disabled HTML\n            rendering.</p>"}))
    Body.add_member(:html, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'Html', traits: {"smithy.api#documentation" => "<p>An object that represents the version of the message that is displayed in email\n            clients that support HTML. HTML messages can include formatted text, hyperlinks, images,\n            and more. </p>"}))
    Body.type = Types::Body
    Bounce.add_member(:bounce_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BounceType, location_name: 'BounceType', traits: {"smithy.api#documentation" => "<p>The type of the bounce, as determined by SES.\n            Can be one of <code>UNDETERMINED</code>, <code>TRANSIENT</code>, or <code>PERMANENT</code>\n         </p>"}))
    Bounce.add_member(:bounce_sub_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BounceSubType, location_name: 'BounceSubType', traits: {"smithy.api#documentation" => "<p>The subtype of the bounce, as determined by SES.</p>"}))
    Bounce.add_member(:diagnostic_code, Smithy::Schema::Shapes::ShapeRef.new(shape: DiagnosticCode, location_name: 'DiagnosticCode', traits: {"smithy.api#documentation" => "<p>The status code issued by the reporting Message Transfer Authority (MTA).\n            This field only appears if a delivery status notification (DSN) was attached to the bounce\n            and the <code>Diagnostic-Code</code> was provided in the DSN.\n        </p>"}))
    Bounce.type = Types::Bounce
    BounceType.add_member(:undetermined, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDETERMINED', traits: {"smithy.api#enumValue" => "UNDETERMINED"}))
    BounceType.add_member(:transient, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSIENT', traits: {"smithy.api#enumValue" => "TRANSIENT"}))
    BounceType.add_member(:permanent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERMANENT', traits: {"smithy.api#enumValue" => "PERMANENT"}))
    BulkEmailContent.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'Template', traits: {"smithy.api#documentation" => "<p>The template to use for the bulk email message.</p>"}))
    BulkEmailContent.type = Types::BulkEmailContent
    BulkEmailEntry.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>Represents the destination of the message, consisting of To:, CC:, and BCC:\n            fields.</p>\n         <note>\n            <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href=\"https://tools.ietf.org/html/rfc6531\">RFC6531</a>. For this reason, the\n                local part of a destination email address (the part of the email address that\n                precedes the @ sign) may only contain <a href=\"https://en.wikipedia.org/wiki/Email_address#Local-part\">7-bit ASCII\n                    characters</a>. If the domain part of an address (the part after the @ sign)\n                contains non-ASCII characters, they must be encoded using Punycode, as described in\n                    <a href=\"https://tools.ietf.org/html/rfc3492.html\">RFC3492</a>.</p>\n         </note>", "smithy.api#required" => {}}))
    BulkEmailEntry.add_member(:replacement_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagList, location_name: 'ReplacementTags', traits: {"smithy.api#documentation" => "<p>A list of tags, in the form of name/value pairs, to apply to an email that you send\n            using the <code>SendBulkTemplatedEmail</code> operation. Tags correspond to\n            characteristics of the email that you define, so that you can publish email sending\n            events.</p>"}))
    BulkEmailEntry.add_member(:replacement_email_content, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacementEmailContent, location_name: 'ReplacementEmailContent', traits: {"smithy.api#documentation" => "<p>The <code>ReplacementEmailContent</code> associated with a\n            <code>BulkEmailEntry</code>.</p>"}))
    BulkEmailEntry.add_member(:replacement_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageHeaderList, location_name: 'ReplacementHeaders', traits: {"smithy.api#documentation" => "<p>The list of message headers associated with the <code>BulkEmailEntry</code> data type.</p>\n         <ul>\n            <li>\n               <p>Headers Not Present in <code>BulkEmailEntry</code>: If a header is specified in\n                    <a href=\"https://docs.aws.amazon.com/ses/latest/APIReference-V2/API_Template.html\">\n                     <code>Template</code>\n                  </a> but not in <code>BulkEmailEntry</code>, the header\n                    from <code>Template</code> will be added to the outgoing email.</p>\n            </li>\n            <li>\n               <p>Headers Present in <code>BulkEmailEntry</code>: If a header is specified in\n                    <code>BulkEmailEntry</code>, it takes precedence over any header of the same name specified\n                    in <a href=\"https://docs.aws.amazon.com/ses/latest/APIReference-V2/API_Template.html\">\n                     <code>Template</code>\n                  </a>:</p>\n               <ul>\n                  <li>\n                     <p>If the header is also defined within <code>Template</code>,\n                            the value from <code>BulkEmailEntry</code> will replace the header's\n                            value in the email.</p>\n                  </li>\n                  <li>\n                     <p>If the header is not defined within <code>Template</code>,\n                            it will simply be added to the email as specified in\n                            <code>BulkEmailEntry</code>.</p>\n                  </li>\n               </ul>\n            </li>\n         </ul>"}))
    BulkEmailEntry.type = Types::BulkEmailEntry
    BulkEmailEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BulkEmailEntry)
    BulkEmailEntryResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: BulkEmailStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of a message sent using the <code>SendBulkTemplatedEmail</code>\n            operation.</p>\n         <p>Possible values for this parameter include:</p>\n         <ul>\n            <li>\n               <p>SUCCESS: Amazon SES accepted the message, and will attempt to deliver it to\n                    the recipients.</p>\n            </li>\n            <li>\n               <p>MESSAGE_REJECTED: The message was rejected because it contained a\n                    virus.</p>\n            </li>\n            <li>\n               <p>MAIL_FROM_DOMAIN_NOT_VERIFIED: The sender's email address or domain was not\n                    verified.</p>\n            </li>\n            <li>\n               <p>CONFIGURATION_SET_DOES_NOT_EXIST: The configuration set you specified does not\n                    exist.</p>\n            </li>\n            <li>\n               <p>TEMPLATE_DOES_NOT_EXIST: The template you specified does not exist.</p>\n            </li>\n            <li>\n               <p>ACCOUNT_SUSPENDED: Your account has been shut down because of issues related\n                    to your email sending practices.</p>\n            </li>\n            <li>\n               <p>ACCOUNT_THROTTLED: The number of emails you can send has been reduced because\n                    your account has exceeded its allocated sending limit.</p>\n            </li>\n            <li>\n               <p>ACCOUNT_DAILY_QUOTA_EXCEEDED: You have reached or exceeded the maximum number\n                    of emails you can send from your account in a 24-hour period.</p>\n            </li>\n            <li>\n               <p>INVALID_SENDING_POOL_NAME: The configuration set you specified refers to an IP\n                    pool that does not exist.</p>\n            </li>\n            <li>\n               <p>ACCOUNT_SENDING_PAUSED: Email sending for the Amazon SES account was disabled\n                    using the <a href=\"https://docs.aws.amazon.com/ses/latest/APIReference/API_UpdateAccountSendingEnabled.html\">UpdateAccountSendingEnabled</a> operation.</p>\n            </li>\n            <li>\n               <p>CONFIGURATION_SET_SENDING_PAUSED: Email sending for this configuration set was\n                    disabled using the <a href=\"https://docs.aws.amazon.com/ses/latest/APIReference/API_UpdateConfigurationSetSendingEnabled.html\">UpdateConfigurationSetSendingEnabled</a> operation.</p>\n            </li>\n            <li>\n               <p>INVALID_PARAMETER_VALUE: One or more of the parameters you specified when\n                    calling this operation was invalid. See the error message for additional\n                    information.</p>\n            </li>\n            <li>\n               <p>TRANSIENT_FAILURE: Amazon SES was unable to process your request because of a\n                    temporary issue.</p>\n            </li>\n            <li>\n               <p>FAILED: Amazon SES was unable to process your request. See the error message\n                    for additional information.</p>\n            </li>\n         </ul>"}))
    BulkEmailEntryResult.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Error', traits: {"smithy.api#documentation" => "<p>A description of an error that prevented a message being sent using the\n                <code>SendBulkTemplatedEmail</code> operation.</p>"}))
    BulkEmailEntryResult.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundMessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique message identifier returned from the <code>SendBulkTemplatedEmail</code>\n            operation.</p>"}))
    BulkEmailEntryResult.type = Types::BulkEmailEntryResult
    BulkEmailEntryResultList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BulkEmailEntryResult)
    BulkEmailStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    BulkEmailStatus.add_member(:message_rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MESSAGE_REJECTED', traits: {"smithy.api#enumValue" => "MESSAGE_REJECTED"}))
    BulkEmailStatus.add_member(:mail_from_domain_not_verified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAIL_FROM_DOMAIN_NOT_VERIFIED', traits: {"smithy.api#enumValue" => "MAIL_FROM_DOMAIN_NOT_VERIFIED"}))
    BulkEmailStatus.add_member(:configuration_set_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIGURATION_SET_NOT_FOUND', traits: {"smithy.api#enumValue" => "CONFIGURATION_SET_NOT_FOUND"}))
    BulkEmailStatus.add_member(:template_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEMPLATE_NOT_FOUND', traits: {"smithy.api#enumValue" => "TEMPLATE_NOT_FOUND"}))
    BulkEmailStatus.add_member(:account_suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_SUSPENDED', traits: {"smithy.api#enumValue" => "ACCOUNT_SUSPENDED"}))
    BulkEmailStatus.add_member(:account_throttled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_THROTTLED', traits: {"smithy.api#enumValue" => "ACCOUNT_THROTTLED"}))
    BulkEmailStatus.add_member(:account_daily_quota_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_DAILY_QUOTA_EXCEEDED', traits: {"smithy.api#enumValue" => "ACCOUNT_DAILY_QUOTA_EXCEEDED"}))
    BulkEmailStatus.add_member(:invalid_sending_pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SENDING_POOL_NAME', traits: {"smithy.api#enumValue" => "INVALID_SENDING_POOL_NAME"}))
    BulkEmailStatus.add_member(:account_sending_paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_SENDING_PAUSED', traits: {"smithy.api#enumValue" => "ACCOUNT_SENDING_PAUSED"}))
    BulkEmailStatus.add_member(:configuration_set_sending_paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIGURATION_SET_SENDING_PAUSED', traits: {"smithy.api#enumValue" => "CONFIGURATION_SET_SENDING_PAUSED"}))
    BulkEmailStatus.add_member(:invalid_parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PARAMETER', traits: {"smithy.api#enumValue" => "INVALID_PARAMETER"}))
    BulkEmailStatus.add_member(:transient_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSIENT_FAILURE', traits: {"smithy.api#enumValue" => "TRANSIENT_FAILURE"}))
    BulkEmailStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CancelExportJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The export job ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelExportJobRequest.type = Types::CancelExportJobRequest
    CancelExportJobResponse.type = Types::CancelExportJobResponse
    CloudWatchDestination.add_member(:dimension_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDimensionConfigurations, location_name: 'DimensionConfigurations', traits: {"smithy.api#documentation" => "<p>An array of objects that define the dimensions to use when you send email events to\n            Amazon CloudWatch.</p>", "smithy.api#required" => {}}))
    CloudWatchDestination.type = Types::CloudWatchDestination
    CloudWatchDimensionConfiguration.add_member(:dimension_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionName, location_name: 'DimensionName', traits: {"smithy.api#documentation" => "<p>The name of an Amazon CloudWatch dimension associated with an email sending metric. The name has to\n            meet the following criteria:</p>\n         <ul>\n            <li>\n               <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9),\n                    underscores (_), or dashes (-).</p>\n            </li>\n            <li>\n               <p>It can contain no more than 256 characters.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.add_member(:dimension_value_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValueSource, location_name: 'DimensionValueSource', traits: {"smithy.api#documentation" => "<p>The location where the Amazon SES API v2 finds the value of a dimension to publish to Amazon CloudWatch. To\n            use the message tags that you specify using an <code>X-SES-MESSAGE-TAGS</code> header or\n            a parameter to the <code>SendEmail</code> or <code>SendRawEmail</code> API, choose\n                <code>messageTag</code>. To use your own email headers, choose\n                <code>emailHeader</code>. To use link tags, choose <code>linkTags</code>.</p>", "smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.add_member(:default_dimension_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultDimensionValue, location_name: 'DefaultDimensionValue', traits: {"smithy.api#documentation" => "<p>The default value of the dimension that is published to Amazon CloudWatch if you don't provide the\n            value of the dimension when you send an email. This value has to meet the following\n            criteria:</p>\n         <ul>\n            <li>\n               <p>Can only contain ASCII letters (a–z, A–Z), numbers (0–9),\n                    underscores (_), or dashes (-), at signs (@), and periods (.).</p>\n            </li>\n            <li>\n               <p>It can contain no more than 256 characters.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.type = Types::CloudWatchDimensionConfiguration
    CloudWatchDimensionConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDimensionConfiguration)
    Complaint.add_member(:complaint_sub_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComplaintSubType, location_name: 'ComplaintSubType', traits: {"smithy.api#documentation" => "<p>\n            Can either be <code>null</code> or <code>OnAccountSuppressionList</code>.\n            If the value is <code>OnAccountSuppressionList</code>, SES accepted the message,\n            but didn't attempt to send it because it was on the account-level suppression list.\n        </p>"}))
    Complaint.add_member(:complaint_feedback_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComplaintFeedbackType, location_name: 'ComplaintFeedbackType', traits: {"smithy.api#documentation" => "<p>\n            The value of the <code>Feedback-Type</code> field from the feedback report received from the ISP.\n        </p>"}))
    Complaint.type = Types::Complaint
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConfigurationSetNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    Contact.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The contact's email address.</p>"}))
    Contact.add_member(:topic_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicPreferenceList, location_name: 'TopicPreferences', traits: {"smithy.api#documentation" => "<p>The contact's preference for being opted-in to or opted-out of a topic.</p>"}))
    Contact.add_member(:topic_default_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicPreferenceList, location_name: 'TopicDefaultPreferences', traits: {"smithy.api#documentation" => "<p>The default topic preferences applied to the contact.</p>"}))
    Contact.add_member(:unsubscribe_all, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsubscribeAll, location_name: 'UnsubscribeAll', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A boolean value status noting if the contact is unsubscribed from all contact list\n            topics.</p>"}))
    Contact.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>A timestamp noting the last time the contact's information was updated.</p>"}))
    Contact.type = Types::Contact
    ContactLanguage.add_member(:en, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN', traits: {"smithy.api#enumValue" => "EN"}))
    ContactLanguage.add_member(:ja, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JA', traits: {"smithy.api#enumValue" => "JA"}))
    ContactList.add_member(:contact_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListName, location_name: 'ContactListName', traits: {"smithy.api#documentation" => "<p>The name of the contact list.</p>"}))
    ContactList.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>A timestamp noting the last time the contact list was updated.</p>"}))
    ContactList.type = Types::ContactList
    ContactListDestination.add_member(:contact_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListName, location_name: 'ContactListName', traits: {"smithy.api#documentation" => "<p>The name of the contact list.</p>", "smithy.api#required" => {}}))
    ContactListDestination.add_member(:contact_list_import_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListImportAction, location_name: 'ContactListImportAction', traits: {"smithy.api#documentation" => "<p>>The type of action to perform on the addresses. The following are the possible\n            values:</p>\n         <ul>\n            <li>\n               <p>PUT: add the addresses to the contact list. If the record already exists, it\n                    will override it with the new value.</p>\n            </li>\n            <li>\n               <p>DELETE: remove the addresses from the contact list.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ContactListDestination.type = Types::ContactListDestination
    ContactListImportAction.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    ContactListImportAction.add_member(:put, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUT', traits: {"smithy.api#enumValue" => "PUT"}))
    Content.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageData, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The content of the message itself.</p>", "smithy.api#required" => {}}))
    Content.add_member(:charset, Smithy::Schema::Shapes::ShapeRef.new(shape: Charset, location_name: 'Charset', traits: {"smithy.api#documentation" => "<p>The character set for the content. Because of the constraints of the SMTP protocol,\n            Amazon SES uses 7-bit ASCII by default. If the text includes characters outside of the ASCII\n            range, you have to specify a character set. For example, you could specify\n                <code>UTF-8</code>, <code>ISO-8859-1</code>, or <code>Shift_JIS</code>.</p>"}))
    Content.type = Types::Content
    CreateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set .</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>A name that identifies the event destination within the configuration set.</p>", "smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationDefinition, location_name: 'EventDestination', traits: {"smithy.api#documentation" => "<p>An object that defines the event destination.</p>", "smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.type = Types::CreateConfigurationSetEventDestinationRequest
    CreateConfigurationSetEventDestinationResponse.type = Types::CreateConfigurationSetEventDestinationResponse
    CreateConfigurationSetRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set. The name can contain up to 64 alphanumeric\n            characters, including letters, numbers, hyphens (-) and underscores (_) only.</p>", "smithy.api#required" => {}}))
    CreateConfigurationSetRequest.add_member(:tracking_options, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingOptions, location_name: 'TrackingOptions', traits: {"smithy.api#documentation" => "<p>An object that defines the open and click tracking options for emails that you send\n            using the configuration set.</p>"}))
    CreateConfigurationSetRequest.add_member(:delivery_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryOptions, location_name: 'DeliveryOptions', traits: {"smithy.api#documentation" => "<p>An object that defines the dedicated IP pool that is used to send emails that you send\n            using the configuration set.</p>"}))
    CreateConfigurationSetRequest.add_member(:reputation_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationOptions, location_name: 'ReputationOptions', traits: {"smithy.api#documentation" => "<p>An object that defines whether or not Amazon SES collects reputation metrics for the emails\n            that you send that use the configuration set.</p>"}))
    CreateConfigurationSetRequest.add_member(:sending_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SendingOptions, location_name: 'SendingOptions', traits: {"smithy.api#documentation" => "<p>An object that defines whether or not Amazon SES can send email that you send using the\n            configuration set.</p>"}))
    CreateConfigurationSetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of objects that define the tags (keys and values) to associate with the\n            configuration set.</p>"}))
    CreateConfigurationSetRequest.add_member(:suppression_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionOptions, location_name: 'SuppressionOptions'))
    CreateConfigurationSetRequest.add_member(:vdm_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VdmOptions, location_name: 'VdmOptions', traits: {"smithy.api#documentation" => "<p>An object that defines the VDM options for emails that you send using the\n            configuration set.</p>"}))
    CreateConfigurationSetRequest.add_member(:archiving_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchivingOptions, location_name: 'ArchivingOptions', traits: {"smithy.api#documentation" => "<p>An object that defines the MailManager archiving options for emails that you send\n            using the configuration set.</p>"}))
    CreateConfigurationSetRequest.type = Types::CreateConfigurationSetRequest
    CreateConfigurationSetResponse.type = Types::CreateConfigurationSetResponse
    CreateContactListRequest.add_member(:contact_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListName, location_name: 'ContactListName', traits: {"smithy.api#documentation" => "<p>The name of the contact list.</p>", "smithy.api#required" => {}}))
    CreateContactListRequest.add_member(:topics, Smithy::Schema::Shapes::ShapeRef.new(shape: Topics, location_name: 'Topics', traits: {"smithy.api#documentation" => "<p>An interest group, theme, or label within a list. A contact list can have multiple\n            topics.</p>"}))
    CreateContactListRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of what the contact list is about.</p>"}))
    CreateContactListRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with a contact list.</p>"}))
    CreateContactListRequest.type = Types::CreateContactListRequest
    CreateContactListResponse.type = Types::CreateContactListResponse
    CreateContactRequest.add_member(:contact_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListName, location_name: 'ContactListName', traits: {"smithy.api#documentation" => "<p>The name of the contact list to which the contact should be added.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContactRequest.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The contact's email address.</p>", "smithy.api#required" => {}}))
    CreateContactRequest.add_member(:topic_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicPreferenceList, location_name: 'TopicPreferences', traits: {"smithy.api#documentation" => "<p>The contact's preferences for being opted-in to or opted-out of topics.</p>"}))
    CreateContactRequest.add_member(:unsubscribe_all, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsubscribeAll, location_name: 'UnsubscribeAll', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A boolean value status noting if the contact is unsubscribed from all contact list\n            topics.</p>"}))
    CreateContactRequest.add_member(:attributes_data, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributesData, location_name: 'AttributesData', traits: {"smithy.api#documentation" => "<p>The attribute data attached to a contact.</p>"}))
    CreateContactRequest.type = Types::CreateContactRequest
    CreateContactResponse.type = Types::CreateContactResponse
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the custom verification email template.</p>", "smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The email address that the custom verification email is sent from.</p>", "smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_subject, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateSubject, location_name: 'TemplateSubject', traits: {"smithy.api#documentation" => "<p>The subject line of the custom verification email.</p>", "smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_content, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateContent, location_name: 'TemplateContent', traits: {"smithy.api#documentation" => "<p>The content of the custom verification email. The total size of the email must be less\n            than 10 MB. The message body may contain HTML, with some limitations. For more\n            information, see <a href=\"https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom-faq\">Custom verification email frequently asked questions</a> in the <i>Amazon SES\n                Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:success_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessRedirectionURL, location_name: 'SuccessRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is successfully verified.</p>", "smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:failure_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureRedirectionURL, location_name: 'FailureRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is not successfully verified.</p>", "smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.type = Types::CreateCustomVerificationEmailTemplateRequest
    CreateCustomVerificationEmailTemplateResponse.type = Types::CreateCustomVerificationEmailTemplateResponse
    CreateDedicatedIpPoolRequest.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the dedicated IP pool.</p>", "smithy.api#required" => {}}))
    CreateDedicatedIpPoolRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An object that defines the tags (keys and values) that you want to associate with the\n            pool.</p>"}))
    CreateDedicatedIpPoolRequest.add_member(:scaling_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingMode, location_name: 'ScalingMode', traits: {"smithy.api#documentation" => "<p>The type of scaling mode.</p>"}))
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
    CreateEmailIdentityPolicyRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The email identity.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEmailIdentityPolicyRequest.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'PolicyName', traits: {"smithy.api#documentation" => "<p>The name of the policy.</p>\n         <p>The policy name cannot exceed 64 characters and can only include alphanumeric\n            characters, dashes, and underscores.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEmailIdentityPolicyRequest.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p>\n         <p>For information about the syntax of sending authorization policies, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html\">Amazon SES Developer\n                Guide</a>.</p>", "smithy.api#required" => {}}))
    CreateEmailIdentityPolicyRequest.type = Types::CreateEmailIdentityPolicyRequest
    CreateEmailIdentityPolicyResponse.type = Types::CreateEmailIdentityPolicyResponse
    CreateEmailIdentityRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The email address or domain to verify.</p>", "smithy.api#required" => {}}))
    CreateEmailIdentityRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of objects that define the tags (keys and values) to associate with the email\n            identity.</p>"}))
    CreateEmailIdentityRequest.add_member(:dkim_signing_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimSigningAttributes, location_name: 'DkimSigningAttributes', traits: {"smithy.api#documentation" => "<p>If your request includes this object, Amazon SES configures the identity to use Bring Your\n            Own DKIM (BYODKIM) for DKIM authentication purposes, or, configures the key length to be\n            used for <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Easy\n                DKIM</a>.</p>\n         <p>You can only specify this object if the email identity is a domain, as opposed to an\n            address.</p>"}))
    CreateEmailIdentityRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The configuration set to use by default when sending from this identity. Note that any\n            configuration set defined in the email sending request takes precedence. </p>"}))
    CreateEmailIdentityRequest.type = Types::CreateEmailIdentityRequest
    CreateEmailIdentityResponse.add_member(:identity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'IdentityType', traits: {"smithy.api#documentation" => "<p>The email identity type. Note: the <code>MANAGED_DOMAIN</code> identity type is not\n            supported.</p>"}))
    CreateEmailIdentityResponse.add_member(:verified_for_sending_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'VerifiedForSendingStatus', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether or not the identity is verified. You can only send email from\n            verified email addresses or domains. For more information about verifying identities,\n            see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html\">Amazon Pinpoint User Guide</a>.</p>"}))
    CreateEmailIdentityResponse.add_member(:dkim_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimAttributes, location_name: 'DkimAttributes', traits: {"smithy.api#documentation" => "<p>An object that contains information about the DKIM attributes for the identity.</p>"}))
    CreateEmailIdentityResponse.type = Types::CreateEmailIdentityResponse
    CreateEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template.</p>", "smithy.api#required" => {}}))
    CreateEmailTemplateRequest.add_member(:template_content, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateContent, location_name: 'TemplateContent', traits: {"smithy.api#documentation" => "<p>The content of the email template, composed of a subject line, an HTML part, and a\n            text-only part.</p>", "smithy.api#required" => {}}))
    CreateEmailTemplateRequest.type = Types::CreateEmailTemplateRequest
    CreateEmailTemplateResponse.type = Types::CreateEmailTemplateResponse
    CreateExportJobRequest.add_member(:export_data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDataSource, location_name: 'ExportDataSource', traits: {"smithy.api#documentation" => "<p>The data source for the export job.</p>", "smithy.api#required" => {}}))
    CreateExportJobRequest.add_member(:export_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDestination, location_name: 'ExportDestination', traits: {"smithy.api#documentation" => "<p>The destination for the export job.</p>", "smithy.api#required" => {}}))
    CreateExportJobRequest.type = Types::CreateExportJobRequest
    CreateExportJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>A string that represents the export job ID.</p>"}))
    CreateExportJobResponse.type = Types::CreateExportJobResponse
    CreateImportJobRequest.add_member(:import_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDestination, location_name: 'ImportDestination', traits: {"smithy.api#documentation" => "<p>The destination for the import job.</p>", "smithy.api#required" => {}}))
    CreateImportJobRequest.add_member(:import_data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDataSource, location_name: 'ImportDataSource', traits: {"smithy.api#documentation" => "<p>The data source for the import job.</p>", "smithy.api#required" => {}}))
    CreateImportJobRequest.type = Types::CreateImportJobRequest
    CreateImportJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>A string that represents the import job ID.</p>"}))
    CreateImportJobResponse.type = Types::CreateImportJobResponse
    CreateMultiRegionEndpointRequest.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'EndpointName', traits: {"smithy.api#documentation" => "<p>The name of the multi-region endpoint (global-endpoint).</p>", "smithy.api#required" => {}}))
    CreateMultiRegionEndpointRequest.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: Details, location_name: 'Details', traits: {"smithy.api#documentation" => "<p>Contains details of a multi-region endpoint (global-endpoint) being created.</p>", "smithy.api#required" => {}}))
    CreateMultiRegionEndpointRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of objects that define the tags (keys and values) to associate with the multi-region endpoint (global-endpoint).</p>"}))
    CreateMultiRegionEndpointRequest.type = Types::CreateMultiRegionEndpointRequest
    CreateMultiRegionEndpointResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>A status of the multi-region endpoint (global-endpoint) right after the create request.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATING</code> – The resource is being provisioned.</p>\n            </li>\n            <li>\n               <p>\n                  <code>READY</code> – The resource is ready to use.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – The resource failed to be provisioned.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETING</code> – The resource is being deleted as requested.</p>\n            </li>\n         </ul>"}))
    CreateMultiRegionEndpointResponse.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointId, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the multi-region endpoint (global-endpoint).</p>"}))
    CreateMultiRegionEndpointResponse.type = Types::CreateMultiRegionEndpointResponse
    CreateTenantRequest.add_member(:tenant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantName, location_name: 'TenantName', traits: {"smithy.api#documentation" => "<p>The name of the tenant to create. The name can contain up to 64 alphanumeric\n            characters, including letters, numbers, hyphens (-) and underscores (_) only.</p>", "smithy.api#required" => {}}))
    CreateTenantRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of objects that define the tags (keys and values) to associate with the tenant</p>"}))
    CreateTenantRequest.type = Types::CreateTenantRequest
    CreateTenantResourceAssociationRequest.add_member(:tenant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantName, location_name: 'TenantName', traits: {"smithy.api#documentation" => "<p>The name of the tenant to associate the resource with.</p>", "smithy.api#required" => {}}))
    CreateTenantResourceAssociationRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to associate with the tenant.</p>", "smithy.api#required" => {}}))
    CreateTenantResourceAssociationRequest.type = Types::CreateTenantResourceAssociationRequest
    CreateTenantResourceAssociationResponse.type = Types::CreateTenantResourceAssociationResponse
    CreateTenantResponse.add_member(:tenant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantName, location_name: 'TenantName', traits: {"smithy.api#documentation" => "<p>The name of the tenant.</p>"}))
    CreateTenantResponse.add_member(:tenant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantId, location_name: 'TenantId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the tenant.</p>"}))
    CreateTenantResponse.add_member(:tenant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TenantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the tenant.</p>"}))
    CreateTenantResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time when the tenant was created.</p>"}))
    CreateTenantResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of objects that define the tags (keys and values) associated with the tenant.</p>"}))
    CreateTenantResponse.add_member(:sending_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SendingStatus, location_name: 'SendingStatus', traits: {"smithy.api#documentation" => "<p>The status of email sending capability for the tenant.</p>"}))
    CreateTenantResponse.type = Types::CreateTenantResponse
    CustomVerificationEmailTemplateMetadata.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the custom verification email template.</p>"}))
    CustomVerificationEmailTemplateMetadata.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The email address that the custom verification email is sent from.</p>"}))
    CustomVerificationEmailTemplateMetadata.add_member(:template_subject, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateSubject, location_name: 'TemplateSubject', traits: {"smithy.api#documentation" => "<p>The subject line of the custom verification email.</p>"}))
    CustomVerificationEmailTemplateMetadata.add_member(:success_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessRedirectionURL, location_name: 'SuccessRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is successfully verified.</p>"}))
    CustomVerificationEmailTemplateMetadata.add_member(:failure_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureRedirectionURL, location_name: 'FailureRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is not successfully verified.</p>"}))
    CustomVerificationEmailTemplateMetadata.type = Types::CustomVerificationEmailTemplateMetadata
    CustomVerificationEmailTemplatesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomVerificationEmailTemplateMetadata)
    DailyVolume.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartDate', traits: {"smithy.api#documentation" => "<p>The date that the DailyVolume metrics apply to, in Unix time.</p>"}))
    DailyVolume.add_member(:volume_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeStatistics, location_name: 'VolumeStatistics', traits: {"smithy.api#documentation" => "<p>An object that contains inbox placement metrics for a specific day in the analysis\n            period.</p>"}))
    DailyVolume.add_member(:domain_isp_placements, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainIspPlacements, location_name: 'DomainIspPlacements', traits: {"smithy.api#documentation" => "<p>An object that contains inbox placement metrics for a specified day in the analysis\n            period, broken out by the recipient's email provider.</p>"}))
    DailyVolume.type = Types::DailyVolume
    DailyVolumes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DailyVolume)
    DashboardAttributes.add_member(:engagement_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureStatus, location_name: 'EngagementMetrics', traits: {"smithy.api#documentation" => "<p>Specifies the status of your VDM engagement metrics collection. Can be one of the\n            following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – Amazon SES enables engagement metrics for your\n                    account.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – Amazon SES disables engagement metrics for your\n                    account.</p>\n            </li>\n         </ul>"}))
    DashboardAttributes.type = Types::DashboardAttributes
    DashboardOptions.add_member(:engagement_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureStatus, location_name: 'EngagementMetrics', traits: {"smithy.api#documentation" => "<p>Specifies the status of your VDM engagement metrics collection. Can be one of the\n            following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – Amazon SES enables engagement metrics for the\n                    configuration set.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – Amazon SES disables engagement metrics for the\n                    configuration set.</p>\n            </li>\n         </ul>"}))
    DashboardOptions.type = Types::DashboardOptions
    DataFormat.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CSV', traits: {"smithy.api#enumValue" => "CSV"}))
    DataFormat.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    DedicatedIp.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: 'Ip', traits: {"smithy.api#documentation" => "<p>An IPv4 address.</p>", "smithy.api#required" => {}}))
    DedicatedIp.add_member(:warmup_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WarmupStatus, location_name: 'WarmupStatus', traits: {"smithy.api#documentation" => "<p>The warm-up status of a dedicated IP address. The status can have one of the following\n            values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>IN_PROGRESS</code> – The IP address isn't ready to use because the\n                    dedicated IP warm-up process is ongoing.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DONE</code> – The dedicated IP warm-up process is complete, and\n                    the IP address is ready to use.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_APPLICABLE</code> – The warm-up status doesn't apply to this IP address.\n                    This status is used for IP addresses in managed dedicated IP pools, where Amazon SES automatically\n                    handles the warm-up process.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DedicatedIp.add_member(:warmup_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage100Wrapper, location_name: 'WarmupPercentage', traits: {"smithy.api#documentation" => "<p>Indicates the progress of your dedicated IP warm-up:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>0-100</code> – For standard dedicated IP addresses, this shows the warm-up completion percentage. A value of 100 means the IP address is fully warmed up and ready for use.</p>\n            </li>\n            <li>\n               <p>\n                  <code>-1</code> – Appears for IP addresses in managed dedicated pools where Amazon SES automatically handles the warm-up process, making the percentage not applicable.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DedicatedIp.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the dedicated IP pool that the IP address is associated with.</p>"}))
    DedicatedIp.type = Types::DedicatedIp
    DedicatedIpList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedIp)
    DedicatedIpPool.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the dedicated IP pool.</p>", "smithy.api#required" => {}}))
    DedicatedIpPool.add_member(:scaling_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingMode, location_name: 'ScalingMode', traits: {"smithy.api#documentation" => "<p>The type of the dedicated IP pool.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>STANDARD</code> – A dedicated IP pool where you can\n                    control which IPs are part of the pool.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MANAGED</code> – A dedicated IP pool where the reputation and\n                    number of IPs are automatically managed by Amazon SES.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DedicatedIpPool.type = Types::DedicatedIpPool
    DeleteConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that contains the event destination to\n            delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>The name of the event destination to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.type = Types::DeleteConfigurationSetEventDestinationRequest
    DeleteConfigurationSetEventDestinationResponse.type = Types::DeleteConfigurationSetEventDestinationResponse
    DeleteConfigurationSetRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetRequest.type = Types::DeleteConfigurationSetRequest
    DeleteConfigurationSetResponse.type = Types::DeleteConfigurationSetResponse
    DeleteContactListRequest.add_member(:contact_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListName, location_name: 'ContactListName', traits: {"smithy.api#documentation" => "<p>The name of the contact list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContactListRequest.type = Types::DeleteContactListRequest
    DeleteContactListResponse.type = Types::DeleteContactListResponse
    DeleteContactRequest.add_member(:contact_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListName, location_name: 'ContactListName', traits: {"smithy.api#documentation" => "<p>The name of the contact list from which the contact should be removed.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContactRequest.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The contact's email address.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContactRequest.type = Types::DeleteContactRequest
    DeleteContactResponse.type = Types::DeleteContactResponse
    DeleteCustomVerificationEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the custom verification email template that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomVerificationEmailTemplateRequest.type = Types::DeleteCustomVerificationEmailTemplateRequest
    DeleteCustomVerificationEmailTemplateResponse.type = Types::DeleteCustomVerificationEmailTemplateResponse
    DeleteDedicatedIpPoolRequest.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the dedicated IP pool that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDedicatedIpPoolRequest.type = Types::DeleteDedicatedIpPoolRequest
    DeleteDedicatedIpPoolResponse.type = Types::DeleteDedicatedIpPoolResponse
    DeleteEmailIdentityPolicyRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The email identity.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailIdentityPolicyRequest.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'PolicyName', traits: {"smithy.api#documentation" => "<p>The name of the policy.</p>\n         <p>The policy name cannot exceed 64 characters and can only include alphanumeric\n            characters, dashes, and underscores.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailIdentityPolicyRequest.type = Types::DeleteEmailIdentityPolicyRequest
    DeleteEmailIdentityPolicyResponse.type = Types::DeleteEmailIdentityPolicyResponse
    DeleteEmailIdentityRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The identity (that is, the email address or domain) to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailIdentityRequest.type = Types::DeleteEmailIdentityRequest
    DeleteEmailIdentityResponse.type = Types::DeleteEmailIdentityResponse
    DeleteEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailTemplateRequest.type = Types::DeleteEmailTemplateRequest
    DeleteEmailTemplateResponse.type = Types::DeleteEmailTemplateResponse
    DeleteMultiRegionEndpointRequest.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'EndpointName', traits: {"smithy.api#documentation" => "<p>The name of the multi-region endpoint (global-endpoint) to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMultiRegionEndpointRequest.type = Types::DeleteMultiRegionEndpointRequest
    DeleteMultiRegionEndpointResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>A status of the multi-region endpoint (global-endpoint) right after the delete request.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATING</code> – The resource is being provisioned.</p>\n            </li>\n            <li>\n               <p>\n                  <code>READY</code> – The resource is ready to use.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – The resource failed to be provisioned.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETING</code> – The resource is being deleted as requested.</p>\n            </li>\n         </ul>"}))
    DeleteMultiRegionEndpointResponse.type = Types::DeleteMultiRegionEndpointResponse
    DeleteSuppressedDestinationRequest.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The suppressed email destination to remove from the account suppression list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSuppressedDestinationRequest.type = Types::DeleteSuppressedDestinationRequest
    DeleteSuppressedDestinationResponse.type = Types::DeleteSuppressedDestinationResponse
    DeleteTenantRequest.add_member(:tenant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantName, location_name: 'TenantName', traits: {"smithy.api#documentation" => "<p>The name of the tenant to delete.</p>", "smithy.api#required" => {}}))
    DeleteTenantRequest.type = Types::DeleteTenantRequest
    DeleteTenantResourceAssociationRequest.add_member(:tenant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantName, location_name: 'TenantName', traits: {"smithy.api#documentation" => "<p>The name of the tenant to remove the resource association from.</p>", "smithy.api#required" => {}}))
    DeleteTenantResourceAssociationRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to remove from the tenant association.</p>", "smithy.api#required" => {}}))
    DeleteTenantResourceAssociationRequest.type = Types::DeleteTenantResourceAssociationRequest
    DeleteTenantResourceAssociationResponse.type = Types::DeleteTenantResourceAssociationResponse
    DeleteTenantResponse.type = Types::DeleteTenantResponse
    DeliverabilityDashboardAccountStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DeliverabilityDashboardAccountStatus.add_member(:pending_expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_EXPIRATION', traits: {"smithy.api#enumValue" => "PENDING_EXPIRATION"}))
    DeliverabilityDashboardAccountStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    DeliverabilityTestReport.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'ReportId', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the predictive inbox placement test.</p>"}))
    DeliverabilityTestReport.add_member(:report_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportName, location_name: 'ReportName', traits: {"smithy.api#documentation" => "<p>A name that helps you identify a predictive inbox placement test report.</p>"}))
    DeliverabilityTestReport.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverabilityTestSubject, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject line for an email that you submitted in a predictive inbox placement test.</p>"}))
    DeliverabilityTestReport.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The sender address that you specified for the predictive inbox placement test.</p>"}))
    DeliverabilityTestReport.add_member(:create_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateDate', traits: {"smithy.api#documentation" => "<p>The date and time when the predictive inbox placement test was created.</p>"}))
    DeliverabilityTestReport.add_member(:deliverability_test_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverabilityTestStatus, location_name: 'DeliverabilityTestStatus', traits: {"smithy.api#documentation" => "<p>The status of the predictive inbox placement test. If the status is <code>IN_PROGRESS</code>, then the predictive inbox placement test\n            is currently running. Predictive inbox placement tests are usually complete within 24 hours of creating the\n            test. If the status is <code>COMPLETE</code>, then the test is finished, and you can use\n            the <code>GetDeliverabilityTestReport</code> to view the results of the test.</p>"}))
    DeliverabilityTestReport.type = Types::DeliverabilityTestReport
    DeliverabilityTestReports.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverabilityTestReport)
    DeliverabilityTestStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DeliverabilityTestStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DeliveryEventType.add_member(:send, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEND', traits: {"smithy.api#enumValue" => "SEND"}))
    DeliveryEventType.add_member(:delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERY', traits: {"smithy.api#enumValue" => "DELIVERY"}))
    DeliveryEventType.add_member(:transient_bounce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSIENT_BOUNCE', traits: {"smithy.api#enumValue" => "TRANSIENT_BOUNCE"}))
    DeliveryEventType.add_member(:permanent_bounce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERMANENT_BOUNCE', traits: {"smithy.api#enumValue" => "PERMANENT_BOUNCE"}))
    DeliveryEventType.add_member(:undetermined_bounce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDETERMINED_BOUNCE', traits: {"smithy.api#enumValue" => "UNDETERMINED_BOUNCE"}))
    DeliveryEventType.add_member(:complaint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLAINT', traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    DeliveryOptions.add_member(:tls_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: TlsPolicy, location_name: 'TlsPolicy', traits: {"smithy.api#documentation" => "<p>Specifies whether messages that use the configuration set are required to use\n            Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only\n            delivered if a TLS connection can be established. If the value is <code>Optional</code>,\n            messages can be delivered in plain text if a TLS connection can't be established.</p>"}))
    DeliveryOptions.add_member(:sending_pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'SendingPoolName', traits: {"smithy.api#documentation" => "<p>The name of the dedicated IP pool to associate with the configuration set.</p>"}))
    DeliveryOptions.add_member(:max_delivery_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxDeliverySeconds, location_name: 'MaxDeliverySeconds', traits: {"smithy.api#documentation" => "<p>The maximum amount of time, in seconds, that Amazon SES API v2 will attempt delivery of email.\n            If specified, the value must greater than or equal to 300 seconds (5 minutes)\n            and less than or equal to 50400 seconds (840 minutes).\n        </p>"}))
    DeliveryOptions.type = Types::DeliveryOptions
    Destination.add_member(:to_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressList, location_name: 'ToAddresses', traits: {"smithy.api#documentation" => "<p>An array that contains the email addresses of the \"To\" recipients for the\n            email.</p>"}))
    Destination.add_member(:cc_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressList, location_name: 'CcAddresses', traits: {"smithy.api#documentation" => "<p>An array that contains the email addresses of the \"CC\" (carbon copy) recipients for\n            the email.</p>"}))
    Destination.add_member(:bcc_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressList, location_name: 'BccAddresses', traits: {"smithy.api#documentation" => "<p>An array that contains the email addresses of the \"BCC\" (blind carbon copy) recipients\n            for the email.</p>"}))
    Destination.type = Types::Destination
    Details.add_member(:routes_details, Smithy::Schema::Shapes::ShapeRef.new(shape: RoutesDetails, location_name: 'RoutesDetails', traits: {"smithy.api#documentation" => "<p>A list of route configuration details. Must contain exactly one route configuration.</p>", "smithy.api#required" => {}}))
    Details.type = Types::Details
    DimensionValueSource.add_member(:message_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MESSAGE_TAG', traits: {"smithy.api#enumValue" => "MESSAGE_TAG"}))
    DimensionValueSource.add_member(:email_header, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_HEADER', traits: {"smithy.api#enumValue" => "EMAIL_HEADER"}))
    DimensionValueSource.add_member(:link_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINK_TAG', traits: {"smithy.api#enumValue" => "LINK_TAG"}))
    Dimensions.key = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimensionName)
    Dimensions.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimensionValue)
    DkimAttributes.add_member(:signing_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'SigningEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If the value is <code>true</code>, then the messages that you send from the identity\n            are signed using DKIM. If the value is <code>false</code>, then the messages that you\n            send from the identity aren't DKIM-signed.</p>"}))
    DkimAttributes.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Describes whether or not Amazon SES has successfully located the DKIM records in the DNS\n            records for the domain. The status can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code> – The verification process was initiated, but Amazon SES\n                    hasn't yet detected the DKIM records in the DNS configuration for the\n                    domain.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCESS</code> – The verification process completed\n                    successfully.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – The verification process failed. This typically\n                    occurs when Amazon SES fails to find the DKIM records in the DNS configuration of the\n                    domain.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TEMPORARY_FAILURE</code> – A temporary issue is preventing Amazon SES\n                    from determining the DKIM authentication status of the domain.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_STARTED</code> – The DKIM verification process hasn't been\n                    initiated for the domain.</p>\n            </li>\n         </ul>"}))
    DkimAttributes.add_member(:tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsTokenList, location_name: 'Tokens', traits: {"smithy.api#documentation" => "<p>If you used <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Easy DKIM</a> to configure DKIM authentication for the domain, then this object\n            contains a set of unique strings that you use to create a set of CNAME records that you\n            add to the DNS configuration for your domain. When Amazon SES detects these records in the\n            DNS configuration for your domain, the DKIM authentication process is complete.</p>\n         <p>If you configured DKIM authentication for the domain by providing your own\n            public-private key pair, then this object contains the selector for the public\n            key.</p>\n         <p>Regardless of the DKIM authentication method you use, Amazon SES searches for the\n            appropriate records in the DNS configuration of the domain for up to 72 hours.</p>"}))
    DkimAttributes.add_member(:signing_attributes_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimSigningAttributesOrigin, location_name: 'SigningAttributesOrigin', traits: {"smithy.api#documentation" => "<p>A string that indicates how DKIM was configured for the identity. These are the\n            possible values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>AWS_SES</code> – Indicates that DKIM was configured for the\n                    identity by using <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Easy DKIM</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>EXTERNAL</code> – Indicates that DKIM was configured for the\n                    identity by using Bring Your Own DKIM (BYODKIM).</p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AF_SOUTH_1</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Africa (Cape Town) region using Deterministic Easy-DKIM\n                    (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_EU_NORTH_1</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Europe (Stockholm) region using Deterministic Easy-DKIM\n                    (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_SOUTH_1</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Asia Pacific (Mumbai) region using Deterministic Easy-DKIM\n                    (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_SOUTH_2</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Asia Pacific (Hyderabad) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_EU_WEST_3</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Europe (Paris) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_EU_WEST_2</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Europe (London) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_EU_SOUTH_1</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Europe (Milan) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_EU_WEST_1</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Europe (Ireland) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_NORTHEAST_3</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Asia Pacific (Osaka) region using Deterministic Easy-DKIM\n                    (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_NORTHEAST_2</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Asia Pacific (Seoul) region using Deterministic Easy-DKIM\n                    (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_ME_CENTRAL_1</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Middle East (UAE) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_ME_SOUTH_1</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Middle East (Bahrain) region using Deterministic Easy-DKIM\n                    (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_NORTHEAST_1</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Asia Pacific (Tokyo) region using Deterministic Easy-DKIM\n                    (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_IL_CENTRAL_1</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Israel (Tel Aviv) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_SA_EAST_1</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in South America (São Paulo) region using Deterministic Easy-DKIM\n                    (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_CA_CENTRAL_1</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Canada (Central) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_SOUTHEAST_1</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Asia Pacific (Singapore) region using Deterministic Easy-DKIM\n                    (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_SOUTHEAST_2</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Asia Pacific (Sydney) region using Deterministic Easy-DKIM\n                    (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_SOUTHEAST_3</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Asia Pacific (Jakarta) region using Deterministic Easy-DKIM\n                    (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_EU_CENTRAL_1</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Europe (Frankfurt) region using Deterministic Easy-DKIM\n                    (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_EU_CENTRAL_2</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in Europe (Zurich) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_US_EAST_1</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in US East (N. Virginia) region using Deterministic Easy-DKIM\n                    (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_US_EAST_2</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in US East (Ohio) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_US_WEST_1</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in US West (N. California) region using Deterministic Easy-DKIM\n                    (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_US_WEST_2</code> – Indicates that DKIM was configured for the identity by\n                    replicating signing attributes from a parent identity in US West (Oregon) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n         </ul>"}))
    DkimAttributes.add_member(:next_signing_key_length, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimSigningKeyLength, location_name: 'NextSigningKeyLength', traits: {"smithy.api#documentation" => "<p>[Easy DKIM] The key length of the future DKIM key pair to be generated. This can be\n            changed at most once per day.</p>"}))
    DkimAttributes.add_member(:current_signing_key_length, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimSigningKeyLength, location_name: 'CurrentSigningKeyLength', traits: {"smithy.api#documentation" => "<p>[Easy DKIM] The key length of the DKIM key pair in use.</p>"}))
    DkimAttributes.add_member(:last_key_generation_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastKeyGenerationTimestamp', traits: {"smithy.api#documentation" => "<p>[Easy DKIM] The last time a key pair was generated for this identity.</p>"}))
    DkimAttributes.type = Types::DkimAttributes
    DkimSigningAttributes.add_member(:domain_signing_selector, Smithy::Schema::Shapes::ShapeRef.new(shape: Selector, location_name: 'DomainSigningSelector', traits: {"smithy.api#documentation" => "<p>[Bring Your Own DKIM] A string that's used to identify a public key in the DNS\n            configuration for a domain.</p>"}))
    DkimSigningAttributes.add_member(:domain_signing_private_key, Smithy::Schema::Shapes::ShapeRef.new(shape: PrivateKey, location_name: 'DomainSigningPrivateKey', traits: {"smithy.api#documentation" => "<p>[Bring Your Own DKIM] A private key that's used to generate a DKIM signature.</p>\n         <p>The private key must use 1024 or 2048-bit RSA encryption, and must be encoded using\n            base64 encoding.</p>"}))
    DkimSigningAttributes.add_member(:next_signing_key_length, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimSigningKeyLength, location_name: 'NextSigningKeyLength', traits: {"smithy.api#documentation" => "<p>[Easy DKIM] The key length of the future DKIM key pair to be generated. This can be\n            changed at most once per day.</p>"}))
    DkimSigningAttributes.add_member(:domain_signing_attributes_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimSigningAttributesOrigin, location_name: 'DomainSigningAttributesOrigin', traits: {"smithy.api#documentation" => "<p>The attribute to use for configuring DKIM for the identity depends on the\n            operation:\n        </p>\n         <ol>\n            <li>\n               <p>For <code>PutEmailIdentityDkimSigningAttributes</code>:\n                </p>\n               <ul>\n                  <li>\n                     <p>None of the values are allowed - use the\n                            <a href=\"https://docs.aws.amazon.com/ses/latest/APIReference-V2/API_PutEmailIdentityDkimSigningAttributes.html#SES-PutEmailIdentityDkimSigningAttributes-request-SigningAttributesOrigin\">\n                           <code>SigningAttributesOrigin</code>\n                        </a>\n                            parameter instead\n                        </p>\n                  </li>\n               </ul>\n            </li>\n            <li>\n               <p>For <code>CreateEmailIdentity</code> when replicating a parent identity's DKIM\n                    configuration:\n                </p>\n               <ul>\n                  <li>\n                     <p>Allowed values: All values except <code>AWS_SES</code> and\n                            <code>EXTERNAL</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n         </ol>\n         <ul>\n            <li>\n               <p>\n                  <code>AWS_SES</code> – Configure DKIM for the identity by using Easy DKIM.\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>EXTERNAL</code> – Configure DKIM for the identity by using Bring Your Own DKIM\n                    (BYODKIM).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AF_SOUTH_1</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in Africa (Cape Town) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_EU_NORTH_1</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in Europe (Stockholm) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_SOUTH_1</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in Asia Pacific (Mumbai) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_SOUTH_2</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in Asia Pacific (Hyderabad) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_EU_WEST_3</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in Europe (Paris) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_EU_WEST_2</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in Europe (London) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_EU_SOUTH_1</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in Europe (Milan) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_EU_WEST_1</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in Europe (Ireland) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_NORTHEAST_3</code> – Configure DKIM for the identity by replicating from a\n                    parent identity in Asia Pacific (Osaka) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_NORTHEAST_2</code> – Configure DKIM for the identity by replicating from a\n                    parent identity in Asia Pacific (Seoul) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_ME_CENTRAL_1</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in Middle East (UAE) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_ME_SOUTH_1</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in Middle East (Bahrain) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_NORTHEAST_1</code> – Configure DKIM for the identity by replicating from a\n                    parent identity in Asia Pacific (Tokyo) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_IL_CENTRAL_1</code> – Configure DKIM for the identity by replicating from a\n                    parent identity in Israel (Tel Aviv) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_SA_EAST_1</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in South America (São Paulo) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_CA_CENTRAL_1</code> – Configure DKIM for the identity by replicating from a\n                    parent identity in Canada (Central) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_SOUTHEAST_1</code> – Configure DKIM for the identity by replicating from a\n                    parent identity in Asia Pacific (Singapore) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_SOUTHEAST_2</code> – Configure DKIM for the identity by replicating from a\n                    parent identity in Asia Pacific (Sydney) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_AP_SOUTHEAST_3</code> – Configure DKIM for the identity by replicating from a\n                    parent identity in Asia Pacific (Jakarta) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_EU_CENTRAL_1</code> – Configure DKIM for the identity by replicating from a\n                    parent identity in Europe (Frankfurt) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_EU_CENTRAL_2</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in Europe (Zurich) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_US_EAST_1</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in US East (N. Virginia) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_US_EAST_2</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in US East (Ohio) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_US_WEST_1</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in US West (N. California) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>AWS_SES_US_WEST_2</code> – Configure DKIM for the identity by replicating from a parent\n                    identity in US West (Oregon) region using Deterministic Easy-DKIM (DEED).\n                </p>\n            </li>\n         </ul>"}))
    DkimSigningAttributes.type = Types::DkimSigningAttributes
    DkimSigningAttributesOrigin.add_member(:aws_ses, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES', traits: {"smithy.api#enumValue" => "AWS_SES"}))
    DkimSigningAttributesOrigin.add_member(:external, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL', traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_af_south_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_AF_SOUTH_1', traits: {"smithy.api#enumValue" => "AWS_SES_AF_SOUTH_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_north_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_EU_NORTH_1', traits: {"smithy.api#enumValue" => "AWS_SES_EU_NORTH_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_south_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_AP_SOUTH_1', traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTH_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_west_3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_EU_WEST_3', traits: {"smithy.api#enumValue" => "AWS_SES_EU_WEST_3"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_west_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_EU_WEST_2', traits: {"smithy.api#enumValue" => "AWS_SES_EU_WEST_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_south_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_EU_SOUTH_1', traits: {"smithy.api#enumValue" => "AWS_SES_EU_SOUTH_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_west_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_EU_WEST_1', traits: {"smithy.api#enumValue" => "AWS_SES_EU_WEST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_northeast_3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_AP_NORTHEAST_3', traits: {"smithy.api#enumValue" => "AWS_SES_AP_NORTHEAST_3"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_northeast_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_AP_NORTHEAST_2', traits: {"smithy.api#enumValue" => "AWS_SES_AP_NORTHEAST_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_me_south_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_ME_SOUTH_1', traits: {"smithy.api#enumValue" => "AWS_SES_ME_SOUTH_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_northeast_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_AP_NORTHEAST_1', traits: {"smithy.api#enumValue" => "AWS_SES_AP_NORTHEAST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_il_central_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_IL_CENTRAL_1', traits: {"smithy.api#enumValue" => "AWS_SES_IL_CENTRAL_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_sa_east_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_SA_EAST_1', traits: {"smithy.api#enumValue" => "AWS_SES_SA_EAST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ca_central_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_CA_CENTRAL_1', traits: {"smithy.api#enumValue" => "AWS_SES_CA_CENTRAL_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_southeast_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_AP_SOUTHEAST_1', traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTHEAST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_southeast_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_AP_SOUTHEAST_2', traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTHEAST_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_southeast_3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_AP_SOUTHEAST_3', traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTHEAST_3"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_central_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_EU_CENTRAL_1', traits: {"smithy.api#enumValue" => "AWS_SES_EU_CENTRAL_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_us_east_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_US_EAST_1', traits: {"smithy.api#enumValue" => "AWS_SES_US_EAST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_us_east_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_US_EAST_2', traits: {"smithy.api#enumValue" => "AWS_SES_US_EAST_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_us_west_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_US_WEST_1', traits: {"smithy.api#enumValue" => "AWS_SES_US_WEST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_us_west_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_US_WEST_2', traits: {"smithy.api#enumValue" => "AWS_SES_US_WEST_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_me_central_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_ME_CENTRAL_1', traits: {"smithy.api#enumValue" => "AWS_SES_ME_CENTRAL_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_south_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_AP_SOUTH_2', traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTH_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_central_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_SES_EU_CENTRAL_2', traits: {"smithy.api#enumValue" => "AWS_SES_EU_CENTRAL_2"}))
    DkimSigningKeyLength.add_member(:rsa_1024_bit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_1024_BIT', traits: {"smithy.api#enumValue" => "RSA_1024_BIT"}))
    DkimSigningKeyLength.add_member(:rsa_2048_bit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RSA_2048_BIT', traits: {"smithy.api#enumValue" => "RSA_2048_BIT"}))
    DkimStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    DkimStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DkimStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DkimStatus.add_member(:temporary_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEMPORARY_FAILURE', traits: {"smithy.api#enumValue" => "TEMPORARY_FAILURE"}))
    DkimStatus.add_member(:not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_STARTED', traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    DnsTokenList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DnsToken)
    DomainDeliverabilityCampaign.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'CampaignId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the campaign. The Deliverability dashboard automatically generates\n            and assigns this identifier to a campaign.</p>"}))
    DomainDeliverabilityCampaign.add_member(:image_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageUrl, location_name: 'ImageUrl', traits: {"smithy.api#documentation" => "<p>The URL of an image that contains a snapshot of the email message that was\n            sent.</p>"}))
    DomainDeliverabilityCampaign.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Subject, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject line, or title, of the email message.</p>"}))
    DomainDeliverabilityCampaign.add_member(:from_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'FromAddress', traits: {"smithy.api#documentation" => "<p>The verified email address that the email message was sent from.</p>"}))
    DomainDeliverabilityCampaign.add_member(:sending_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: IpList, location_name: 'SendingIps', traits: {"smithy.api#documentation" => "<p>The IP addresses that were used to send the email message.</p>"}))
    DomainDeliverabilityCampaign.add_member(:first_seen_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'FirstSeenDateTime', traits: {"smithy.api#documentation" => "<p>The first time when the email message was delivered to any\n            recipient's inbox. This value can help you determine how long it took for a campaign to\n            deliver an email message.</p>"}))
    DomainDeliverabilityCampaign.add_member(:last_seen_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastSeenDateTime', traits: {"smithy.api#documentation" => "<p>The last time when the email message was delivered to any\n            recipient's inbox. This value can help you determine how long it took for a campaign to\n            deliver an email message.</p>"}))
    DomainDeliverabilityCampaign.add_member(:inbox_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'InboxCount', traits: {"smithy.api#documentation" => "<p>The number of email messages that were delivered to recipients’ inboxes.</p>"}))
    DomainDeliverabilityCampaign.add_member(:spam_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'SpamCount', traits: {"smithy.api#documentation" => "<p>The number of email messages that were delivered to recipients' spam or junk mail\n            folders.</p>"}))
    DomainDeliverabilityCampaign.add_member(:read_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'ReadRate', traits: {"smithy.api#documentation" => "<p>The percentage of email messages that were opened by recipients. Due to technical\n            limitations, this value only includes recipients who opened the message by using an\n            email client that supports images.</p>"}))
    DomainDeliverabilityCampaign.add_member(:delete_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'DeleteRate', traits: {"smithy.api#documentation" => "<p>The percentage of email messages that were deleted by recipients, without being opened\n            first. Due to technical limitations, this value only includes recipients who opened the\n            message by using an email client that supports images.</p>"}))
    DomainDeliverabilityCampaign.add_member(:read_delete_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'ReadDeleteRate', traits: {"smithy.api#documentation" => "<p>The percentage of email messages that were opened and then deleted by recipients. Due\n            to technical limitations, this value only includes recipients who opened the message by\n            using an email client that supports images.</p>"}))
    DomainDeliverabilityCampaign.add_member(:projected_volume, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'ProjectedVolume', traits: {"smithy.api#documentation" => "<p>The projected number of recipients that the email message was sent to.</p>"}))
    DomainDeliverabilityCampaign.add_member(:esps, Smithy::Schema::Shapes::ShapeRef.new(shape: Esps, location_name: 'Esps', traits: {"smithy.api#documentation" => "<p>The major email providers who handled the email message.</p>"}))
    DomainDeliverabilityCampaign.type = Types::DomainDeliverabilityCampaign
    DomainDeliverabilityCampaignList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDeliverabilityCampaign)
    DomainDeliverabilityTrackingOption.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>A verified domain that’s associated with your Amazon Web Services account and currently has an\n            active Deliverability dashboard subscription.</p>"}))
    DomainDeliverabilityTrackingOption.add_member(:subscription_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubscriptionStartDate', traits: {"smithy.api#documentation" => "<p>The date when you enabled the Deliverability dashboard for the\n            domain.</p>"}))
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
    EmailAddressFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsEmailAddress)
    EmailAddressList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress)
    EmailContent.add_member(:simple, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Simple', traits: {"smithy.api#documentation" => "<p>The simple email message. The message consists of a subject, message body and attachments list.</p>"}))
    EmailContent.add_member(:raw, Smithy::Schema::Shapes::ShapeRef.new(shape: RawMessage, location_name: 'Raw', traits: {"smithy.api#documentation" => "<p>The raw email message. The message has to meet the following criteria:</p>\n         <ul>\n            <li>\n               <p>The message has to contain a header and a body, separated by one blank\n                    line.</p>\n            </li>\n            <li>\n               <p>All of the required header fields must be present in the message.</p>\n            </li>\n            <li>\n               <p>Each part of a multipart MIME message must be formatted properly.</p>\n            </li>\n            <li>\n               <p>If you include attachments, they must be in a file format that the Amazon SES API v2\n                    supports.\n                    </p>\n            </li>\n            <li>\n               <p>The raw data of the message needs to base64-encoded if you are accessing Amazon SES\n                    directly through the HTTPS interface. If you are accessing Amazon SES using an Amazon Web Services\n                    SDK, the SDK takes care of the base 64-encoding for you.</p>\n            </li>\n            <li>\n               <p>If any of the MIME parts in your message contain content that is outside of\n                    the 7-bit ASCII character range, you should encode that content to ensure that\n                    recipients' email clients render the message properly.</p>\n            </li>\n            <li>\n               <p>The length of any single line of text in the message can't exceed 1,000\n                    characters. This restriction is defined in <a href=\"https://tools.ietf.org/html/rfc5321\">RFC 5321</a>.</p>\n            </li>\n         </ul>"}))
    EmailContent.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'Template', traits: {"smithy.api#documentation" => "<p>The template to use for the email message.</p>"}))
    EmailContent.type = Types::EmailContent
    EmailInsights.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsEmailAddress, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>The recipient of the email.</p>"}))
    EmailInsights.add_member(:isp, Smithy::Schema::Shapes::ShapeRef.new(shape: Isp, location_name: 'Isp', traits: {"smithy.api#documentation" => "<p>The recipient's ISP (e.g., <code>Gmail</code>, <code>Yahoo</code>,\n        etc.).</p>"}))
    EmailInsights.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsEvents, location_name: 'Events', traits: {"smithy.api#documentation" => "<p>A list of events associated with the sent email.</p>"}))
    EmailInsights.type = Types::EmailInsights
    EmailInsightsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EmailInsights)
    EmailSubjectFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EmailSubject)
    EmailTemplateContent.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateSubject, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject line of the email.</p>"}))
    EmailTemplateContent.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateText, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The email body that will be visible to recipients whose email clients do not display\n            HTML.</p>"}))
    EmailTemplateContent.add_member(:html, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateHtml, location_name: 'Html', traits: {"smithy.api#documentation" => "<p>The HTML body of the email.</p>"}))
    EmailTemplateContent.type = Types::EmailTemplateContent
    EmailTemplateMetadata.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template.</p>"}))
    EmailTemplateMetadata.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time and date the template was created.</p>"}))
    EmailTemplateMetadata.type = Types::EmailTemplateMetadata
    EmailTemplateMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateMetadata)
    EngagementEventType.add_member(:open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "OPEN"}))
    EngagementEventType.add_member(:click, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLICK', traits: {"smithy.api#enumValue" => "CLICK"}))
    Esps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Esp)
    EventBridgeDestination.add_member(:event_bus_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'EventBusArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon EventBridge bus to publish email events to. Only the default bus is supported. </p>", "smithy.api#required" => {}}))
    EventBridgeDestination.type = Types::EventBridgeDestination
    EventDestination.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name that identifies the event destination.</p>", "smithy.api#required" => {}}))
    EventDestination.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'Enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If <code>true</code>, the event destination is enabled. When the event destination is\n            enabled, the specified event types are sent to the destinations in this\n                <code>EventDestinationDefinition</code>.</p>\n         <p>If <code>false</code>, the event destination is disabled. When the event destination\n            is disabled, events aren't sent to the specified destinations.</p>"}))
    EventDestination.add_member(:matching_event_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypes, location_name: 'MatchingEventTypes', traits: {"smithy.api#documentation" => "<p>The types of events that Amazon SES sends to the specified event destinations.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SEND</code> - The send request was successful and SES will\n                    attempt to deliver the message to the recipient’s mail server. (If account-level\n                    or global suppression is being used, SES will still count it as a send,\n                    but delivery is suppressed.)</p>\n            </li>\n            <li>\n               <p>\n                  <code>REJECT</code> - SES accepted the email, but determined that it\n                    contained a virus and didn’t attempt to deliver it to the recipient’s mail\n                    server.</p>\n            </li>\n            <li>\n               <p>\n                  <code>BOUNCE</code> - (<i>Hard bounce</i>) The recipient's\n                    mail server permanently rejected the email. (<i>Soft bounces</i>\n                    are only included when SES fails to deliver the email after retrying for\n                    a period of time.)</p>\n            </li>\n            <li>\n               <p>\n                  <code>COMPLAINT</code> - The email was successfully delivered to the\n                    recipient’s mail server, but the recipient marked it as spam.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELIVERY</code> - SES successfully delivered the email to the\n                    recipient's mail server.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OPEN</code> - The recipient received the message and opened it in their\n                    email client.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CLICK</code> - The recipient clicked one or more links in the\n                    email.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RENDERING_FAILURE</code> - The email wasn't sent because of a\n                    template rendering issue. This event type can occur when template data is\n                    missing, or when there is a mismatch between template parameters and data. (This\n                    event type only occurs when you send email using the <a href=\"https://docs.aws.amazon.com/ses/latest/APIReference-V2/API_SendEmail.html\">\n                     <code>SendEmail</code>\n                  </a> or <a href=\"https://docs.aws.amazon.com/ses/latest/APIReference-V2/API_SendBulkEmail.html\">\n                     <code>SendBulkEmail</code>\n                  </a> API operations.) </p>\n            </li>\n            <li>\n               <p>\n                  <code>DELIVERY_DELAY</code> - The email couldn't be delivered to the\n                    recipient’s mail server because a temporary issue occurred. Delivery delays can\n                    occur, for example, when the recipient's inbox is full, or when the\n                    receiving email server experiences a transient issue.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUBSCRIPTION</code> - The email was successfully delivered, but the\n                    recipient updated their subscription preferences by clicking on an\n                        <i>unsubscribe</i> link as part of your <a href=\"https://docs.aws.amazon.com/ses/latest/dg/sending-email-subscription-management.html\">subscription\n                        management</a>.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    EventDestination.add_member(:kinesis_firehose_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: 'KinesisFirehoseDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon Kinesis Data Firehose destination for email events. You can use Amazon Kinesis Data Firehose to\n            stream data to other services, such as Amazon S3 and Amazon Redshift.</p>"}))
    EventDestination.add_member(:cloud_watch_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDestination, location_name: 'CloudWatchDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon CloudWatch destination for email events. You can use Amazon CloudWatch to\n            monitor and gain insights on your email sending metrics.</p>"}))
    EventDestination.add_member(:sns_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsDestination, location_name: 'SnsDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon SNS destination for email events. You can use Amazon SNS to\n            send notifications when certain email events occur.</p>"}))
    EventDestination.add_member(:event_bridge_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBridgeDestination, location_name: 'EventBridgeDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon EventBridge destination for email events. You can use Amazon EventBridge to\n            send notifications when certain email events occur.</p>"}))
    EventDestination.add_member(:pinpoint_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: PinpointDestination, location_name: 'PinpointDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon Pinpoint project destination for email events. You can send\n            email event data to a Amazon Pinpoint project to view metrics using the Transactional Messaging\n            dashboards that are built in to Amazon Pinpoint. For more information, see <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html\">Transactional\n                Messaging Charts</a> in the <i>Amazon Pinpoint User Guide</i>.</p>"}))
    EventDestination.type = Types::EventDestination
    EventDestinationDefinition.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'Enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If <code>true</code>, the event destination is enabled. When the event destination is\n            enabled, the specified event types are sent to the destinations in this\n                <code>EventDestinationDefinition</code>.</p>\n         <p>If <code>false</code>, the event destination is disabled. When the event destination\n            is disabled, events aren't sent to the specified destinations.</p>"}))
    EventDestinationDefinition.add_member(:matching_event_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypes, location_name: 'MatchingEventTypes', traits: {"smithy.api#documentation" => "<p>An array that specifies which events the Amazon SES API v2 should send to the destinations in\n            this <code>EventDestinationDefinition</code>.</p>"}))
    EventDestinationDefinition.add_member(:kinesis_firehose_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: 'KinesisFirehoseDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon Kinesis Data Firehose destination for email events. You can use Amazon Kinesis Data Firehose to\n            stream data to other services, such as Amazon S3 and Amazon Redshift.</p>"}))
    EventDestinationDefinition.add_member(:cloud_watch_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDestination, location_name: 'CloudWatchDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon CloudWatch destination for email events. You can use Amazon CloudWatch to\n            monitor and gain insights on your email sending metrics.</p>"}))
    EventDestinationDefinition.add_member(:sns_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsDestination, location_name: 'SnsDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon SNS destination for email events. You can use Amazon SNS to\n            send notifications when certain email events occur.</p>"}))
    EventDestinationDefinition.add_member(:event_bridge_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EventBridgeDestination, location_name: 'EventBridgeDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon EventBridge destination for email events. You can use Amazon EventBridge to\n            send notifications when certain email events occur.</p>"}))
    EventDestinationDefinition.add_member(:pinpoint_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: PinpointDestination, location_name: 'PinpointDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon Pinpoint project destination for email events. You can send\n            email event data to a Amazon Pinpoint project to view metrics using the Transactional Messaging\n            dashboards that are built in to Amazon Pinpoint. For more information, see <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html\">Transactional\n                Messaging Charts</a> in the <i>Amazon Pinpoint User Guide</i>.</p>"}))
    EventDestinationDefinition.type = Types::EventDestinationDefinition
    EventDestinations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestination)
    EventDetails.add_member(:bounce, Smithy::Schema::Shapes::ShapeRef.new(shape: Bounce, location_name: 'Bounce', traits: {"smithy.api#documentation" => "<p>Information about a <code>Bounce</code> event.</p>"}))
    EventDetails.add_member(:complaint, Smithy::Schema::Shapes::ShapeRef.new(shape: Complaint, location_name: 'Complaint', traits: {"smithy.api#documentation" => "<p>Information about a <code>Complaint</code> event.</p>"}))
    EventDetails.type = Types::EventDetails
    EventType.add_member(:send, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEND', traits: {"smithy.api#enumValue" => "SEND"}))
    EventType.add_member(:reject, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECT', traits: {"smithy.api#enumValue" => "REJECT"}))
    EventType.add_member(:bounce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOUNCE', traits: {"smithy.api#enumValue" => "BOUNCE"}))
    EventType.add_member(:complaint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLAINT', traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    EventType.add_member(:delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERY', traits: {"smithy.api#enumValue" => "DELIVERY"}))
    EventType.add_member(:open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "OPEN"}))
    EventType.add_member(:click, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLICK', traits: {"smithy.api#enumValue" => "CLICK"}))
    EventType.add_member(:rendering_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RENDERING_FAILURE', traits: {"smithy.api#enumValue" => "RENDERING_FAILURE"}))
    EventType.add_member(:delivery_delay, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERY_DELAY', traits: {"smithy.api#enumValue" => "DELIVERY_DELAY"}))
    EventType.add_member(:subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBSCRIPTION', traits: {"smithy.api#enumValue" => "SUBSCRIPTION"}))
    EventTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventType)
    ExportDataSource.add_member(:metrics_data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsDataSource, location_name: 'MetricsDataSource'))
    ExportDataSource.add_member(:message_insights_data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageInsightsDataSource, location_name: 'MessageInsightsDataSource'))
    ExportDataSource.type = Types::ExportDataSource
    ExportDestination.add_member(:data_format, Smithy::Schema::Shapes::ShapeRef.new(shape: DataFormat, location_name: 'DataFormat', traits: {"smithy.api#documentation" => "<p>The data format of the final export job file, can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CSV</code> - A comma-separated values file.</p>\n            </li>\n            <li>\n               <p>\n                  <code>JSON</code> - A Json file.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ExportDestination.add_member(:s3_url, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: 'S3Url', traits: {"smithy.api#documentation" => "<p>An Amazon S3 pre-signed URL that points to the generated export file.</p>"}))
    ExportDestination.type = Types::ExportDestination
    ExportDimensionValue.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimensionValue)
    ExportDimensions.key = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimensionName)
    ExportDimensions.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDimensionValue)
    ExportJobSummary.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The export job ID.</p>"}))
    ExportJobSummary.add_member(:export_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSourceType, location_name: 'ExportSourceType', traits: {"smithy.api#documentation" => "<p>The source type of the export job.</p>"}))
    ExportJobSummary.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the export job.</p>"}))
    ExportJobSummary.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the export job was created.</p>"}))
    ExportJobSummary.add_member(:completed_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompletedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the export job was completed.</p>"}))
    ExportJobSummary.type = Types::ExportJobSummary
    ExportJobSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobSummary)
    ExportMetric.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Metric, location_name: 'Name'))
    ExportMetric.add_member(:aggregation, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAggregation, location_name: 'Aggregation'))
    ExportMetric.type = Types::ExportMetric
    ExportMetrics.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportMetric)
    ExportSourceType.add_member(:metrics_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'METRICS_DATA', traits: {"smithy.api#enumValue" => "METRICS_DATA"}))
    ExportSourceType.add_member(:message_insights, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MESSAGE_INSIGHTS', traits: {"smithy.api#enumValue" => "MESSAGE_INSIGHTS"}))
    ExportStatistics.add_member(:processed_records_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedRecordsCount, location_name: 'ProcessedRecordsCount', traits: {"smithy.api#documentation" => "<p>The number of records that were processed to generate the final export file.</p>"}))
    ExportStatistics.add_member(:exported_records_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportedRecordsCount, location_name: 'ExportedRecordsCount', traits: {"smithy.api#documentation" => "<p>The number of records that were exported to the final export file.</p>\n         <p>This value might not be available for all export source types</p>"}))
    ExportStatistics.type = Types::ExportStatistics
    FailureInfo.add_member(:failed_records_s3_url, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedRecordsS3Url, location_name: 'FailedRecordsS3Url', traits: {"smithy.api#documentation" => "<p>An Amazon S3 pre-signed URL that contains all the failed records and related information.</p>"}))
    FailureInfo.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>A message about why the job failed.</p>"}))
    FailureInfo.type = Types::FailureInfo
    FeatureStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    FeatureStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    GetAccountRequest.type = Types::GetAccountRequest
    GetAccountResponse.add_member(:dedicated_ip_auto_warmup_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'DedicatedIpAutoWarmupEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether or not the automatic warm-up feature is enabled for dedicated IP\n            addresses that are associated with your account.</p>"}))
    GetAccountResponse.add_member(:enforcement_status, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralEnforcementStatus, location_name: 'EnforcementStatus', traits: {"smithy.api#documentation" => "<p>The reputation status of your Amazon SES account. The status can be one of the\n            following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>HEALTHY</code> – There are no reputation-related issues that\n                    currently impact your account.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PROBATION</code> – We've identified potential issues with your\n                    Amazon SES account. We're placing your account under review while you work on\n                    correcting these issues.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SHUTDOWN</code> – Your account's ability to send email is\n                    currently paused because of an issue with the email sent from your account. When\n                    you correct the issue, you can contact us and request that your account's\n                    ability to send email is resumed.</p>\n            </li>\n         </ul>"}))
    GetAccountResponse.add_member(:production_access_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'ProductionAccessEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether or not your account has production access in the current Amazon Web Services\n            Region.</p>\n         <p>If the value is <code>false</code>, then your account is in the\n                <i>sandbox</i>. When your account is in the sandbox, you can only send\n            email to verified identities.\n            </p>\n         <p>If the value is <code>true</code>, then your account has production access. When your\n            account has production access, you can send email to any address. The sending quota and\n            maximum sending rate for your account vary based on your specific use case.</p>"}))
    GetAccountResponse.add_member(:send_quota, Smithy::Schema::Shapes::ShapeRef.new(shape: SendQuota, location_name: 'SendQuota', traits: {"smithy.api#documentation" => "<p>An object that contains information about the per-day and per-second sending limits\n            for your Amazon SES account in the current Amazon Web Services Region.</p>"}))
    GetAccountResponse.add_member(:sending_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'SendingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether or not email sending is enabled for your Amazon SES account in the\n            current Amazon Web Services Region.</p>"}))
    GetAccountResponse.add_member(:suppression_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionAttributes, location_name: 'SuppressionAttributes', traits: {"smithy.api#documentation" => "<p>An object that contains information about the email address suppression preferences\n            for your account in the current Amazon Web Services Region.</p>"}))
    GetAccountResponse.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountDetails, location_name: 'Details', traits: {"smithy.api#documentation" => "<p>An object that defines your account details.</p>"}))
    GetAccountResponse.add_member(:vdm_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: VdmAttributes, location_name: 'VdmAttributes', traits: {"smithy.api#documentation" => "<p>The VDM attributes that apply to your Amazon SES account.</p>"}))
    GetAccountResponse.type = Types::GetAccountResponse
    GetBlacklistReportsRequest.add_member(:blacklist_item_names, Smithy::Schema::Shapes::ShapeRef.new(shape: BlacklistItemNames, location_name: 'BlacklistItemNames', traits: {"smithy.api#documentation" => "<p>A list of IP addresses that you want to retrieve blacklist information about. You can\n            only specify the dedicated IP addresses that you use to send email using Amazon SES or\n            Amazon Pinpoint.</p>", "smithy.api#httpQuery" => "BlacklistItemNames", "smithy.api#required" => {}}))
    GetBlacklistReportsRequest.type = Types::GetBlacklistReportsRequest
    GetBlacklistReportsResponse.add_member(:blacklist_report, Smithy::Schema::Shapes::ShapeRef.new(shape: BlacklistReport, location_name: 'BlacklistReport', traits: {"smithy.api#documentation" => "<p>An object that contains information about a blacklist that one of your dedicated IP\n            addresses appears on.</p>", "smithy.api#required" => {}}))
    GetBlacklistReportsResponse.type = Types::GetBlacklistReportsResponse
    GetConfigurationSetEventDestinationsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that contains the event destination.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationSetEventDestinationsRequest.type = Types::GetConfigurationSetEventDestinationsRequest
    GetConfigurationSetEventDestinationsResponse.add_member(:event_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinations, location_name: 'EventDestinations', traits: {"smithy.api#documentation" => "<p>An array that includes all of the events destinations that have been configured for\n            the configuration set.</p>"}))
    GetConfigurationSetEventDestinationsResponse.type = Types::GetConfigurationSetEventDestinationsResponse
    GetConfigurationSetRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationSetRequest.type = Types::GetConfigurationSetRequest
    GetConfigurationSetResponse.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set.</p>"}))
    GetConfigurationSetResponse.add_member(:tracking_options, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingOptions, location_name: 'TrackingOptions', traits: {"smithy.api#documentation" => "<p>An object that defines the open and click tracking options for emails that you send\n            using the configuration set.</p>"}))
    GetConfigurationSetResponse.add_member(:delivery_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryOptions, location_name: 'DeliveryOptions', traits: {"smithy.api#documentation" => "<p>An object that defines the dedicated IP pool that is used to send emails that you send\n            using the configuration set.</p>"}))
    GetConfigurationSetResponse.add_member(:reputation_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationOptions, location_name: 'ReputationOptions', traits: {"smithy.api#documentation" => "<p>An object that defines whether or not Amazon SES collects reputation metrics for the emails\n            that you send that use the configuration set.</p>"}))
    GetConfigurationSetResponse.add_member(:sending_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SendingOptions, location_name: 'SendingOptions', traits: {"smithy.api#documentation" => "<p>An object that defines whether or not Amazon SES can send email that you send using the\n            configuration set.</p>"}))
    GetConfigurationSetResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of objects that define the tags (keys and values) that are associated with\n            the configuration set.</p>"}))
    GetConfigurationSetResponse.add_member(:suppression_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionOptions, location_name: 'SuppressionOptions', traits: {"smithy.api#documentation" => "<p>An object that contains information about the suppression list preferences for your\n            account.</p>"}))
    GetConfigurationSetResponse.add_member(:vdm_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VdmOptions, location_name: 'VdmOptions', traits: {"smithy.api#documentation" => "<p>An object that contains information about the VDM preferences for your configuration\n            set.</p>"}))
    GetConfigurationSetResponse.add_member(:archiving_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchivingOptions, location_name: 'ArchivingOptions', traits: {"smithy.api#documentation" => "<p>An object that defines the MailManager archive where sent emails are archived that you send\n            using the configuration set.</p>"}))
    GetConfigurationSetResponse.type = Types::GetConfigurationSetResponse
    GetContactListRequest.add_member(:contact_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListName, location_name: 'ContactListName', traits: {"smithy.api#documentation" => "<p>The name of the contact list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContactListRequest.type = Types::GetContactListRequest
    GetContactListResponse.add_member(:contact_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListName, location_name: 'ContactListName', traits: {"smithy.api#documentation" => "<p>The name of the contact list.</p>"}))
    GetContactListResponse.add_member(:topics, Smithy::Schema::Shapes::ShapeRef.new(shape: Topics, location_name: 'Topics', traits: {"smithy.api#documentation" => "<p>An interest group, theme, or label within a list. A contact list can have multiple\n            topics.</p>"}))
    GetContactListResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of what the contact list is about.</p>"}))
    GetContactListResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>A timestamp noting when the contact list was created.</p>"}))
    GetContactListResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>A timestamp noting the last time the contact list was updated.</p>"}))
    GetContactListResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with a contact list.</p>"}))
    GetContactListResponse.type = Types::GetContactListResponse
    GetContactRequest.add_member(:contact_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListName, location_name: 'ContactListName', traits: {"smithy.api#documentation" => "<p>The name of the contact list to which the contact belongs.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContactRequest.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The contact's email address.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContactRequest.type = Types::GetContactRequest
    GetContactResponse.add_member(:contact_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListName, location_name: 'ContactListName', traits: {"smithy.api#documentation" => "<p>The name of the contact list to which the contact belongs.</p>"}))
    GetContactResponse.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The contact's email address.</p>"}))
    GetContactResponse.add_member(:topic_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicPreferenceList, location_name: 'TopicPreferences', traits: {"smithy.api#documentation" => "<p>The contact's preference for being opted-in to or opted-out of a topic.></p>"}))
    GetContactResponse.add_member(:topic_default_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicPreferenceList, location_name: 'TopicDefaultPreferences', traits: {"smithy.api#documentation" => "<p>The default topic preferences applied to the contact.</p>"}))
    GetContactResponse.add_member(:unsubscribe_all, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsubscribeAll, location_name: 'UnsubscribeAll', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A boolean value status noting if the contact is unsubscribed from all contact list\n            topics.</p>"}))
    GetContactResponse.add_member(:attributes_data, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributesData, location_name: 'AttributesData', traits: {"smithy.api#documentation" => "<p>The attribute data attached to a contact.</p>"}))
    GetContactResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>A timestamp noting when the contact was created.</p>"}))
    GetContactResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>A timestamp noting the last time the contact's information was updated.</p>"}))
    GetContactResponse.type = Types::GetContactResponse
    GetCustomVerificationEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the custom verification email template that you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCustomVerificationEmailTemplateRequest.type = Types::GetCustomVerificationEmailTemplateRequest
    GetCustomVerificationEmailTemplateResponse.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the custom verification email template.</p>"}))
    GetCustomVerificationEmailTemplateResponse.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The email address that the custom verification email is sent from.</p>"}))
    GetCustomVerificationEmailTemplateResponse.add_member(:template_subject, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateSubject, location_name: 'TemplateSubject', traits: {"smithy.api#documentation" => "<p>The subject line of the custom verification email.</p>"}))
    GetCustomVerificationEmailTemplateResponse.add_member(:template_content, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateContent, location_name: 'TemplateContent', traits: {"smithy.api#documentation" => "<p>The content of the custom verification email.</p>"}))
    GetCustomVerificationEmailTemplateResponse.add_member(:success_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessRedirectionURL, location_name: 'SuccessRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is successfully verified.</p>"}))
    GetCustomVerificationEmailTemplateResponse.add_member(:failure_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureRedirectionURL, location_name: 'FailureRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is not successfully verified.</p>"}))
    GetCustomVerificationEmailTemplateResponse.type = Types::GetCustomVerificationEmailTemplateResponse
    GetDedicatedIpPoolRequest.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the dedicated IP pool to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDedicatedIpPoolRequest.type = Types::GetDedicatedIpPoolRequest
    GetDedicatedIpPoolResponse.add_member(:dedicated_ip_pool, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedIpPool, location_name: 'DedicatedIpPool', traits: {"smithy.api#documentation" => "<p>An object that contains information about a dedicated IP pool.</p>"}))
    GetDedicatedIpPoolResponse.type = Types::GetDedicatedIpPoolResponse
    GetDedicatedIpRequest.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: 'Ip', traits: {"smithy.api#documentation" => "<p>The IP address that you want to obtain more information about. The value you specify\n            has to be a dedicated IP address that's assocaited with your Amazon Web Services account.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDedicatedIpRequest.type = Types::GetDedicatedIpRequest
    GetDedicatedIpResponse.add_member(:dedicated_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedIp, location_name: 'DedicatedIp', traits: {"smithy.api#documentation" => "<p>An object that contains information about a dedicated IP address.</p>"}))
    GetDedicatedIpResponse.type = Types::GetDedicatedIpResponse
    GetDedicatedIpsRequest.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the IP pool that the dedicated IP address is associated with.</p>", "smithy.api#httpQuery" => "PoolName"}))
    GetDedicatedIpsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>GetDedicatedIps</code> to indicate the\n            position of the dedicated IP pool in the list of IP pools.</p>", "smithy.api#httpQuery" => "NextToken"}))
    GetDedicatedIpsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to <code>GetDedicatedIpsRequest</code>.\n            If the number of results is larger than the number you specified in this parameter, then\n            the response includes a <code>NextToken</code> element, which you can use to obtain\n            additional results.</p>", "smithy.api#httpQuery" => "PageSize"}))
    GetDedicatedIpsRequest.type = Types::GetDedicatedIpsRequest
    GetDedicatedIpsResponse.add_member(:dedicated_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedIpList, location_name: 'DedicatedIps', traits: {"smithy.api#documentation" => "<p>A list of dedicated IP addresses that are associated with your Amazon Web Services account.</p>"}))
    GetDedicatedIpsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there are additional dedicated IP addresses to list. To\n            view additional addresses, issue another request to <code>GetDedicatedIps</code>,\n            passing this token in the <code>NextToken</code> parameter.</p>"}))
    GetDedicatedIpsResponse.type = Types::GetDedicatedIpsResponse
    GetDeliverabilityDashboardOptionsRequest.type = Types::GetDeliverabilityDashboardOptionsRequest
    GetDeliverabilityDashboardOptionsResponse.add_member(:dashboard_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'DashboardEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the Deliverability dashboard is enabled. If this value is <code>true</code>,\n            the dashboard is enabled.</p>", "smithy.api#required" => {}}))
    GetDeliverabilityDashboardOptionsResponse.add_member(:subscription_expiry_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubscriptionExpiryDate', traits: {"smithy.api#documentation" => "<p>The date  when your current subscription to the Deliverability dashboard\n            is scheduled to expire, if your subscription is scheduled to expire at the end of the\n            current calendar month. This value is null if you have an active subscription that isn’t\n            due to expire at the end of the month.</p>"}))
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
    GetDomainDeliverabilityCampaignRequest.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'CampaignId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the campaign. The Deliverability dashboard automatically generates\n            and assigns this identifier to a campaign.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
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
    GetEmailIdentityPoliciesRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The email identity.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailIdentityPoliciesRequest.type = Types::GetEmailIdentityPoliciesRequest
    GetEmailIdentityPoliciesResponse.add_member(:policies, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyMap, location_name: 'Policies', traits: {"smithy.api#documentation" => "<p>A map of policy names to policies.</p>"}))
    GetEmailIdentityPoliciesResponse.type = Types::GetEmailIdentityPoliciesResponse
    GetEmailIdentityRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The email identity.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailIdentityRequest.type = Types::GetEmailIdentityRequest
    GetEmailIdentityResponse.add_member(:identity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'IdentityType', traits: {"smithy.api#documentation" => "<p>The email identity type. Note: the <code>MANAGED_DOMAIN</code> identity type is not\n            supported.</p>"}))
    GetEmailIdentityResponse.add_member(:feedback_forwarding_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'FeedbackForwardingStatus', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The feedback forwarding configuration for the identity.</p>\n         <p>If the value is <code>true</code>, you receive email notifications when bounce or\n            complaint events occur. These notifications are sent to the address that you specified\n            in the <code>Return-Path</code> header of the original email.</p>\n         <p>You're required to have a method of tracking bounces and complaints. If you haven't\n            set up another mechanism for receiving bounce or complaint notifications (for example,\n            by setting up an event destination), you receive an email notification when these events\n            occur (even if this setting is disabled).</p>"}))
    GetEmailIdentityResponse.add_member(:verified_for_sending_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'VerifiedForSendingStatus', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether or not the identity is verified. You can only send email from\n            verified email addresses or domains. For more information about verifying identities,\n            see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html\">Amazon Pinpoint User Guide</a>.</p>"}))
    GetEmailIdentityResponse.add_member(:dkim_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimAttributes, location_name: 'DkimAttributes', traits: {"smithy.api#documentation" => "<p>An object that contains information about the DKIM attributes for the identity.</p>"}))
    GetEmailIdentityResponse.add_member(:mail_from_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromAttributes, location_name: 'MailFromAttributes', traits: {"smithy.api#documentation" => "<p>An object that contains information about the Mail-From attributes for the email\n            identity.</p>"}))
    GetEmailIdentityResponse.add_member(:policies, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyMap, location_name: 'Policies', traits: {"smithy.api#documentation" => "<p>A map of policy names to policies.</p>"}))
    GetEmailIdentityResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of objects that define the tags (keys and values) that are associated with\n            the email identity.</p>"}))
    GetEmailIdentityResponse.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The configuration set used by default when sending from this identity.</p>"}))
    GetEmailIdentityResponse.add_member(:verification_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationStatus, location_name: 'VerificationStatus', traits: {"smithy.api#documentation" => "<p>The verification status of the identity. The status can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code> – The verification process was initiated, but Amazon SES\n                    hasn't yet been able to verify the identity.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCESS</code> – The verification process completed\n                    successfully.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – The verification process failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TEMPORARY_FAILURE</code> – A temporary issue is preventing Amazon SES\n                    from determining the verification status of the identity.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_STARTED</code> – The verification process hasn't been\n                    initiated for the identity.</p>\n            </li>\n         </ul>"}))
    GetEmailIdentityResponse.add_member(:verification_info, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationInfo, location_name: 'VerificationInfo', traits: {"smithy.api#documentation" => "<p>An object that contains additional information about the verification status for the\n            identity.</p>"}))
    GetEmailIdentityResponse.type = Types::GetEmailIdentityResponse
    GetEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailTemplateRequest.type = Types::GetEmailTemplateRequest
    GetEmailTemplateResponse.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template.</p>", "smithy.api#required" => {}}))
    GetEmailTemplateResponse.add_member(:template_content, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateContent, location_name: 'TemplateContent', traits: {"smithy.api#documentation" => "<p>The content of the email template, composed of a subject line, an HTML part, and a\n            text-only part.</p>", "smithy.api#required" => {}}))
    GetEmailTemplateResponse.type = Types::GetEmailTemplateResponse
    GetExportJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The export job ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportJobRequest.type = Types::GetExportJobRequest
    GetExportJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The export job ID.</p>"}))
    GetExportJobResponse.add_member(:export_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSourceType, location_name: 'ExportSourceType', traits: {"smithy.api#documentation" => "<p>The type of source of the export job.</p>"}))
    GetExportJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the export job.</p>"}))
    GetExportJobResponse.add_member(:export_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDestination, location_name: 'ExportDestination', traits: {"smithy.api#documentation" => "<p>The destination of the export job.</p>"}))
    GetExportJobResponse.add_member(:export_data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDataSource, location_name: 'ExportDataSource', traits: {"smithy.api#documentation" => "<p>The data source of the export job.</p>"}))
    GetExportJobResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the export job was created.</p>"}))
    GetExportJobResponse.add_member(:completed_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompletedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of when the export job was completed.</p>"}))
    GetExportJobResponse.add_member(:failure_info, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureInfo, location_name: 'FailureInfo', traits: {"smithy.api#documentation" => "<p>The failure details about an export job.</p>"}))
    GetExportJobResponse.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportStatistics, location_name: 'Statistics', traits: {"smithy.api#documentation" => "<p>The statistics about the export job.</p>"}))
    GetExportJobResponse.type = Types::GetExportJobResponse
    GetImportJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The ID of the import job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.type = Types::GetImportJobRequest
    GetImportJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>A string that represents the import job ID.</p>"}))
    GetImportJobResponse.add_member(:import_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDestination, location_name: 'ImportDestination', traits: {"smithy.api#documentation" => "<p>The destination of the import job.</p>"}))
    GetImportJobResponse.add_member(:import_data_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDataSource, location_name: 'ImportDataSource', traits: {"smithy.api#documentation" => "<p>The data source of the import job.</p>"}))
    GetImportJobResponse.add_member(:failure_info, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureInfo, location_name: 'FailureInfo', traits: {"smithy.api#documentation" => "<p>The failure details about an import job.</p>"}))
    GetImportJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The status of the import job.</p>"}))
    GetImportJobResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time stamp of when the import job was created.</p>"}))
    GetImportJobResponse.add_member(:completed_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompletedTimestamp', traits: {"smithy.api#documentation" => "<p>The time stamp of when the import job was completed.</p>"}))
    GetImportJobResponse.add_member(:processed_records_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedRecordsCount, location_name: 'ProcessedRecordsCount', traits: {"smithy.api#documentation" => "<p>The current number of records processed.</p>"}))
    GetImportJobResponse.add_member(:failed_records_count, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedRecordsCount, location_name: 'FailedRecordsCount', traits: {"smithy.api#documentation" => "<p>The number of records that failed processing because of invalid input or other\n            reasons.</p>"}))
    GetImportJobResponse.type = Types::GetImportJobResponse
    GetMessageInsightsRequest.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundMessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>\n            A <code>MessageId</code> is a unique identifier for a message, and is\n            returned when sending emails through Amazon SES.\n        </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMessageInsightsRequest.type = Types::GetMessageInsightsRequest
    GetMessageInsightsResponse.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundMessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the message.</p>"}))
    GetMessageInsightsResponse.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsEmailAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The from address used to send the message.</p>"}))
    GetMessageInsightsResponse.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailSubject, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject line of the message.</p>"}))
    GetMessageInsightsResponse.add_member(:email_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagList, location_name: 'EmailTags', traits: {"smithy.api#documentation" => "<p>\n            A list of tags, in the form of name/value pairs, that were applied to the email you sent, along with Amazon SES\n            <a href=\"https://docs.aws.amazon.com/ses/latest/dg/monitor-using-event-publishing.html\">Auto-Tags</a>.\n        </p>"}))
    GetMessageInsightsResponse.add_member(:insights, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailInsightsList, location_name: 'Insights', traits: {"smithy.api#documentation" => "<p>A set of insights associated with the message.</p>"}))
    GetMessageInsightsResponse.type = Types::GetMessageInsightsResponse
    GetMultiRegionEndpointRequest.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'EndpointName', traits: {"smithy.api#documentation" => "<p>The name of the multi-region endpoint (global-endpoint).</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMultiRegionEndpointRequest.type = Types::GetMultiRegionEndpointRequest
    GetMultiRegionEndpointResponse.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'EndpointName', traits: {"smithy.api#documentation" => "<p>The name of the multi-region endpoint (global-endpoint).</p>"}))
    GetMultiRegionEndpointResponse.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointId, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the multi-region endpoint (global-endpoint).</p>"}))
    GetMultiRegionEndpointResponse.add_member(:routes, Smithy::Schema::Shapes::ShapeRef.new(shape: Routes, location_name: 'Routes', traits: {"smithy.api#documentation" => "<p>Contains routes information for the multi-region endpoint (global-endpoint).</p>"}))
    GetMultiRegionEndpointResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the multi-region endpoint (global-endpoint).</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATING</code> – The resource is being provisioned.</p>\n            </li>\n            <li>\n               <p>\n                  <code>READY</code> – The resource is ready to use.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – The resource failed to be provisioned.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETING</code> – The resource is being deleted as requested.</p>\n            </li>\n         </ul>"}))
    GetMultiRegionEndpointResponse.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time stamp of when the multi-region endpoint (global-endpoint) was created.</p>"}))
    GetMultiRegionEndpointResponse.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time stamp of when the multi-region endpoint (global-endpoint) was last updated.</p>"}))
    GetMultiRegionEndpointResponse.type = Types::GetMultiRegionEndpointResponse
    GetReputationEntityRequest.add_member(:reputation_entity_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationEntityReference, location_name: 'ReputationEntityReference', traits: {"smithy.api#documentation" => "<p>The unique identifier for the reputation entity. For resource-type entities, \n            this is the Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReputationEntityRequest.add_member(:reputation_entity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationEntityType, location_name: 'ReputationEntityType', traits: {"smithy.api#documentation" => "<p>The type of reputation entity. Currently, only <code>RESOURCE</code> type entities are supported.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReputationEntityRequest.type = Types::GetReputationEntityRequest
    GetReputationEntityResponse.add_member(:reputation_entity, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationEntity, location_name: 'ReputationEntity', traits: {"smithy.api#documentation" => "<p>The reputation entity information, including status records, policy configuration, \n            and reputation impact.</p>"}))
    GetReputationEntityResponse.type = Types::GetReputationEntityResponse
    GetSuppressedDestinationRequest.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The email address that's on the account suppression list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSuppressedDestinationRequest.type = Types::GetSuppressedDestinationRequest
    GetSuppressedDestinationResponse.add_member(:suppressed_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressedDestination, location_name: 'SuppressedDestination', traits: {"smithy.api#documentation" => "<p>An object containing information about the suppressed email address.</p>", "smithy.api#required" => {}}))
    GetSuppressedDestinationResponse.type = Types::GetSuppressedDestinationResponse
    GetTenantRequest.add_member(:tenant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantName, location_name: 'TenantName', traits: {"smithy.api#documentation" => "<p>The name of the tenant to retrieve information about.</p>", "smithy.api#required" => {}}))
    GetTenantRequest.type = Types::GetTenantRequest
    GetTenantResponse.add_member(:tenant, Smithy::Schema::Shapes::ShapeRef.new(shape: Tenant, location_name: 'Tenant', traits: {"smithy.api#documentation" => "<p>A structure that contains details about the tenant.</p>"}))
    GetTenantResponse.type = Types::GetTenantResponse
    GuardianAttributes.add_member(:optimized_shared_delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureStatus, location_name: 'OptimizedSharedDelivery', traits: {"smithy.api#documentation" => "<p>Specifies the status of your VDM optimized shared delivery. Can be one of the\n            following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – Amazon SES enables optimized shared delivery for your\n                    account.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – Amazon SES disables optimized shared delivery for\n                    your account.</p>\n            </li>\n         </ul>"}))
    GuardianAttributes.type = Types::GuardianAttributes
    GuardianOptions.add_member(:optimized_shared_delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureStatus, location_name: 'OptimizedSharedDelivery', traits: {"smithy.api#documentation" => "<p>Specifies the status of your VDM optimized shared delivery. Can be one of the\n            following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – Amazon SES enables optimized shared delivery for the\n                    configuration set.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – Amazon SES disables optimized shared delivery for the\n                    configuration set.</p>\n            </li>\n         </ul>"}))
    GuardianOptions.type = Types::GuardianOptions
    HttpsPolicy.add_member(:require, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRE', traits: {"smithy.api#enumValue" => "REQUIRE"}))
    HttpsPolicy.add_member(:require_open_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRE_OPEN_ONLY', traits: {"smithy.api#enumValue" => "REQUIRE_OPEN_ONLY"}))
    HttpsPolicy.add_member(:optional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIONAL', traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    IdentityInfo.add_member(:identity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'IdentityType', traits: {"smithy.api#documentation" => "<p>The email identity type. Note: the <code>MANAGED_DOMAIN</code> type is not supported\n            for email identity types.</p>"}))
    IdentityInfo.add_member(:identity_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'IdentityName', traits: {"smithy.api#documentation" => "<p>The address or domain of the identity.</p>"}))
    IdentityInfo.add_member(:sending_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'SendingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether or not you can send email from the identity.</p>\n         <p>An <i>identity</i> is an email address or domain that you send email\n            from. Before you can send email from an identity, you have to demostrate that you own\n            the identity, and that you authorize Amazon SES to send email from that identity.</p>"}))
    IdentityInfo.add_member(:verification_status, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationStatus, location_name: 'VerificationStatus', traits: {"smithy.api#documentation" => "<p>The verification status of the identity. The status can be one of the\n            following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code> – The verification process was initiated, but Amazon SES\n                    hasn't yet been able to verify the identity.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCESS</code> – The verification process completed\n                    successfully.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – The verification process failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TEMPORARY_FAILURE</code> – A temporary issue is preventing Amazon SES\n                    from determining the verification status of the identity.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_STARTED</code> – The verification process hasn't been\n                    initiated for the identity.</p>\n            </li>\n         </ul>"}))
    IdentityInfo.type = Types::IdentityInfo
    IdentityInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityInfo)
    IdentityType.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_ADDRESS', traits: {"smithy.api#enumValue" => "EMAIL_ADDRESS"}))
    IdentityType.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN', traits: {"smithy.api#enumValue" => "DOMAIN"}))
    IdentityType.add_member(:managed_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANAGED_DOMAIN', traits: {"smithy.api#enumValue" => "MANAGED_DOMAIN"}))
    ImportDataSource.add_member(:s3_url, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Url, location_name: 'S3Url', traits: {"smithy.api#documentation" => "<p>An Amazon S3 URL in the format\n                s3://<i><bucket_name></i>/<i><object></i>.</p>", "smithy.api#required" => {}}))
    ImportDataSource.add_member(:data_format, Smithy::Schema::Shapes::ShapeRef.new(shape: DataFormat, location_name: 'DataFormat', traits: {"smithy.api#documentation" => "<p>The data format of the import job's data source.</p>", "smithy.api#required" => {}}))
    ImportDataSource.type = Types::ImportDataSource
    ImportDestination.add_member(:suppression_list_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionListDestination, location_name: 'SuppressionListDestination', traits: {"smithy.api#documentation" => "<p>An object that contains the action of the import job towards suppression list.</p>"}))
    ImportDestination.add_member(:contact_list_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListDestination, location_name: 'ContactListDestination', traits: {"smithy.api#documentation" => "<p>An object that contains the action of the import job towards a contact list.</p>"}))
    ImportDestination.type = Types::ImportDestination
    ImportDestinationType.add_member(:suppression_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPPRESSION_LIST', traits: {"smithy.api#enumValue" => "SUPPRESSION_LIST"}))
    ImportDestinationType.add_member(:contact_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTACT_LIST', traits: {"smithy.api#enumValue" => "CONTACT_LIST"}))
    ImportJobSummary.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId'))
    ImportJobSummary.add_member(:import_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDestination, location_name: 'ImportDestination'))
    ImportJobSummary.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus'))
    ImportJobSummary.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time when the import job was created.</p>"}))
    ImportJobSummary.add_member(:processed_records_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessedRecordsCount, location_name: 'ProcessedRecordsCount', traits: {"smithy.api#documentation" => "<p>The current number of records processed.</p>"}))
    ImportJobSummary.add_member(:failed_records_count, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedRecordsCount, location_name: 'FailedRecordsCount', traits: {"smithy.api#documentation" => "<p>The number of records that failed processing because of invalid input or other\n            reasons.</p>"}))
    ImportJobSummary.type = Types::ImportJobSummary
    ImportJobSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobSummary)
    InboxPlacementTrackingOption.add_member(:global, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'Global', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether inbox placement data is being tracked for the domain.</p>"}))
    InboxPlacementTrackingOption.add_member(:tracked_isps, Smithy::Schema::Shapes::ShapeRef.new(shape: IspNameList, location_name: 'TrackedIsps', traits: {"smithy.api#documentation" => "<p>An array of strings, one for each major email provider that the inbox placement data\n            applies to.</p>"}))
    InboxPlacementTrackingOption.type = Types::InboxPlacementTrackingOption
    InsightsEvent.add_member(:timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of the event.</p>"}))
    InsightsEvent.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of event:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SEND</code> - The send request was successful and SES will\n                    attempt to deliver the message to the recipient’s mail server. (If account-level\n                    or global suppression is being used, SES will still count it as a send,\n                    but delivery is suppressed.)\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>DELIVERY</code> - SES successfully delivered the email to the\n                    recipient's mail server. Excludes deliveries to the mailbox simulator,\n                    and those from emails addressed to more than one recipient.\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>BOUNCE</code> - Feedback received for delivery failures. Additional details about the bounce are provided in the <code>Details</code> object.\n                    Excludes bounces from the mailbox simulator, and those from emails addressed to more than one recipient.\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>COMPLAINT</code> - Complaint received for the email. Additional details about the complaint are provided in the <code>Details</code> object.\n                    This excludes complaints from the mailbox simulator, those originating from\n                    your account-level suppression list (if enabled), and those from emails addressed\n                    to more than one recipient.\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>OPEN</code> - Open event for emails including open trackers.\n                    Excludes opens for emails addressed to more than one recipient.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CLICK</code> - Click event for emails including wrapped links.\n                    Excludes clicks for emails addressed to more than one recipient.</p>\n            </li>\n         </ul>"}))
    InsightsEvent.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDetails, location_name: 'Details', traits: {"smithy.api#documentation" => "<p>Details about bounce or complaint events.</p>"}))
    InsightsEvent.type = Types::InsightsEvent
    InsightsEvents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InsightsEvent)
    InternalServiceErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    InvalidNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    IpList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Ip)
    IspFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Isp)
    IspNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IspName)
    IspPlacement.add_member(:isp_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IspName, location_name: 'IspName', traits: {"smithy.api#documentation" => "<p>The name of the email provider that the inbox placement data applies to.</p>"}))
    IspPlacement.add_member(:placement_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementStatistics, location_name: 'PlacementStatistics', traits: {"smithy.api#documentation" => "<p>An object that contains inbox placement metrics for a specific email provider.</p>"}))
    IspPlacement.type = Types::IspPlacement
    IspPlacements.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IspPlacement)
    JobStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    JobStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    JobStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    KinesisFirehoseDestination.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that the Amazon SES API v2 uses to send email\n            events to the Amazon Kinesis Data Firehose stream.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseDestination.add_member(:delivery_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'DeliveryStreamArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose stream that the Amazon SES API v2 sends email\n            events to.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseDestination.type = Types::KinesisFirehoseDestination
    LastDeliveryEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryEventType)
    LastEngagementEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EngagementEventType)
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListConfigurationSetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListConfigurationSets</code> to\n            indicate the position in the list of configuration sets.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListConfigurationSetsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to <code>ListConfigurationSets</code>.\n            If the number of results is larger than the number you specified in this parameter, then\n            the response includes a <code>NextToken</code> element, which you can use to obtain\n            additional results.</p>", "smithy.api#httpQuery" => "PageSize"}))
    ListConfigurationSetsRequest.type = Types::ListConfigurationSetsRequest
    ListConfigurationSetsResponse.add_member(:configuration_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameList, location_name: 'ConfigurationSets', traits: {"smithy.api#documentation" => "<p>An array that contains all of the configuration sets in your Amazon SES account in the\n            current Amazon Web Services Region.</p>"}))
    ListConfigurationSetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there are additional configuration sets to list. To view\n            additional configuration sets, issue another request to\n                <code>ListConfigurationSets</code>, and pass this token in the\n                <code>NextToken</code> parameter.</p>"}))
    ListConfigurationSetsResponse.type = Types::ListConfigurationSetsResponse
    ListContactListsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>Maximum number of contact lists to return at once. Use this parameter to paginate\n            results. If additional contact lists exist beyond the specified limit, the\n                <code>NextToken</code> element is sent in the response. Use the\n                <code>NextToken</code> value in subsequent requests to retrieve additional\n            lists.</p>", "smithy.api#httpQuery" => "PageSize"}))
    ListContactListsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A string token indicating that there might be additional contact lists available to be\n            listed. Use the token provided in the Response to use in the subsequent call to\n            ListContactLists with the same parameters to retrieve the next page of contact\n            lists.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListContactListsRequest.type = Types::ListContactListsRequest
    ListContactListsResponse.add_member(:contact_lists, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfContactLists, location_name: 'ContactLists', traits: {"smithy.api#documentation" => "<p>The available contact lists.</p>"}))
    ListContactListsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A string token indicating that there might be additional contact lists available to be\n            listed. Copy this token to a subsequent call to <code>ListContactLists</code> with the\n            same parameters to retrieve the next page of contact lists.</p>"}))
    ListContactListsResponse.type = Types::ListContactListsResponse
    ListContactsFilter.add_member(:filtered_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionStatus, location_name: 'FilteredStatus', traits: {"smithy.api#documentation" => "<p>The status by which you are filtering: <code>OPT_IN</code> or\n            <code>OPT_OUT</code>.</p>"}))
    ListContactsFilter.add_member(:topic_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicFilter, location_name: 'TopicFilter', traits: {"smithy.api#documentation" => "<p>Used for filtering by a specific topic preference.</p>"}))
    ListContactsFilter.type = Types::ListContactsFilter
    ListContactsRequest.add_member(:contact_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListName, location_name: 'ContactListName', traits: {"smithy.api#documentation" => "<p>The name of the contact list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListContactsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListContactsFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>A filter that can be applied to a list of contacts.</p>"}))
    ListContactsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of contacts that may be returned at once, which is dependent on if there\n            are more or less contacts than the value of the PageSize. Use this parameter to paginate\n            results. If additional contacts exist beyond the specified limit, the\n                <code>NextToken</code> element is sent in the response. Use the\n                <code>NextToken</code> value in subsequent requests to retrieve additional\n            contacts.</p>"}))
    ListContactsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A string token indicating that there might be additional contacts available to be\n            listed. Use the token provided in the Response to use in the subsequent call to\n            ListContacts with the same parameters to retrieve the next page of contacts.</p>"}))
    ListContactsRequest.type = Types::ListContactsRequest
    ListContactsResponse.add_member(:contacts, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfContacts, location_name: 'Contacts', traits: {"smithy.api#documentation" => "<p>The contacts present in a specific contact list.</p>"}))
    ListContactsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A string token indicating that there might be additional contacts available to be\n            listed. Copy this token to a subsequent call to <code>ListContacts</code> with the same\n            parameters to retrieve the next page of contacts.</p>"}))
    ListContactsResponse.type = Types::ListContactsResponse
    ListCustomVerificationEmailTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to\n                <code>ListCustomVerificationEmailTemplates</code> to indicate the position in the\n            list of custom verification email templates.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListCustomVerificationEmailTemplatesRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to\n                <code>ListCustomVerificationEmailTemplates</code>. If the number of results is\n            larger than the number you specified in this parameter, then the response includes a\n                <code>NextToken</code> element, which you can use to obtain additional\n            results.</p>\n         <p>The value you specify has to be at least 1, and can be no more than 50.</p>", "smithy.api#httpQuery" => "PageSize"}))
    ListCustomVerificationEmailTemplatesRequest.type = Types::ListCustomVerificationEmailTemplatesRequest
    ListCustomVerificationEmailTemplatesResponse.add_member(:custom_verification_email_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomVerificationEmailTemplatesList, location_name: 'CustomVerificationEmailTemplates', traits: {"smithy.api#documentation" => "<p>A list of the custom verification email templates that exist in your account.</p>"}))
    ListCustomVerificationEmailTemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating that there are additional custom verification email templates\n            available to be listed. Pass this token to a subsequent call to\n                <code>ListCustomVerificationEmailTemplates</code> to retrieve the next 50 custom\n            verification email templates.</p>"}))
    ListCustomVerificationEmailTemplatesResponse.type = Types::ListCustomVerificationEmailTemplatesResponse
    ListDedicatedIpPoolsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListDedicatedIpPools</code> to indicate\n            the position in the list of dedicated IP pools.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListDedicatedIpPoolsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to <code>ListDedicatedIpPools</code>.\n            If the number of results is larger than the number you specified in this parameter, then\n            the response includes a <code>NextToken</code> element, which you can use to obtain\n            additional results.</p>", "smithy.api#httpQuery" => "PageSize"}))
    ListDedicatedIpPoolsRequest.type = Types::ListDedicatedIpPoolsRequest
    ListDedicatedIpPoolsResponse.add_member(:dedicated_ip_pools, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDedicatedIpPools, location_name: 'DedicatedIpPools', traits: {"smithy.api#documentation" => "<p>A list of all of the dedicated IP pools that are associated with your Amazon Web Services account in\n            the current Region.</p>"}))
    ListDedicatedIpPoolsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there are additional IP pools to list. To view additional\n            IP pools, issue another request to <code>ListDedicatedIpPools</code>, passing this token\n            in the <code>NextToken</code> parameter.</p>"}))
    ListDedicatedIpPoolsResponse.type = Types::ListDedicatedIpPoolsResponse
    ListDeliverabilityTestReportsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListDeliverabilityTestReports</code> to\n            indicate the position in the list of predictive inbox placement tests.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListDeliverabilityTestReportsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to\n                <code>ListDeliverabilityTestReports</code>. If the number of results is larger than\n            the number you specified in this parameter, then the response includes a\n                <code>NextToken</code> element, which you can use to obtain additional\n            results.</p>\n         <p>The value you specify has to be at least 0, and can be no more than 1000.</p>", "smithy.api#httpQuery" => "PageSize"}))
    ListDeliverabilityTestReportsRequest.type = Types::ListDeliverabilityTestReportsRequest
    ListDeliverabilityTestReportsResponse.add_member(:deliverability_test_reports, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverabilityTestReports, location_name: 'DeliverabilityTestReports', traits: {"smithy.api#documentation" => "<p>An object that contains a lists of predictive inbox placement tests that you've performed.</p>", "smithy.api#required" => {}}))
    ListDeliverabilityTestReportsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there are additional predictive inbox placement tests to list. To view additional\n            predictive inbox placement tests, issue another request to <code>ListDeliverabilityTestReports</code>, and pass\n            this token in the <code>NextToken</code> parameter.</p>"}))
    ListDeliverabilityTestReportsResponse.type = Types::ListDeliverabilityTestReportsResponse
    ListDomainDeliverabilityCampaignsRequest.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartDate', traits: {"smithy.api#documentation" => "<p>The first day that you want to obtain deliverability data\n            for.</p>", "smithy.api#httpQuery" => "StartDate", "smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndDate', traits: {"smithy.api#documentation" => "<p>The last day that you want to obtain deliverability data for.\n            This value has to be less than or equal to 30 days after the value of the\n                <code>StartDate</code> parameter.</p>", "smithy.api#httpQuery" => "EndDate", "smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:subscribed_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'SubscribedDomain', traits: {"smithy.api#documentation" => "<p>The domain to obtain deliverability data for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that’s returned from a previous call to the\n                <code>ListDomainDeliverabilityCampaigns</code> operation. This token indicates the\n            position of a campaign in the list of campaigns.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in response to a single call to the\n                <code>ListDomainDeliverabilityCampaigns</code> operation. If the number of results\n            is larger than the number that you specify in this parameter, the response includes a\n                <code>NextToken</code> element, which you can use to obtain additional\n            results.</p>", "smithy.api#httpQuery" => "PageSize"}))
    ListDomainDeliverabilityCampaignsRequest.type = Types::ListDomainDeliverabilityCampaignsRequest
    ListDomainDeliverabilityCampaignsResponse.add_member(:domain_deliverability_campaigns, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDeliverabilityCampaignList, location_name: 'DomainDeliverabilityCampaigns', traits: {"smithy.api#documentation" => "<p>An array of responses, one for each campaign that used the domain to send email during\n            the specified time range.</p>", "smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that’s returned from a previous call to the\n                <code>ListDomainDeliverabilityCampaigns</code> operation. This token indicates the\n            position of the campaign in the list of campaigns.</p>"}))
    ListDomainDeliverabilityCampaignsResponse.type = Types::ListDomainDeliverabilityCampaignsResponse
    ListEmailIdentitiesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListEmailIdentities</code> to indicate\n            the position in the list of identities.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListEmailIdentitiesRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to <code>ListEmailIdentities</code>. If\n            the number of results is larger than the number you specified in this parameter, then\n            the response includes a <code>NextToken</code> element, which you can use to obtain\n            additional results.</p>\n         <p>The value you specify has to be at least 0, and can be no more than 1000.</p>", "smithy.api#httpQuery" => "PageSize"}))
    ListEmailIdentitiesRequest.type = Types::ListEmailIdentitiesRequest
    ListEmailIdentitiesResponse.add_member(:email_identities, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityInfoList, location_name: 'EmailIdentities', traits: {"smithy.api#documentation" => "<p>An array that includes all of the email identities associated with your Amazon Web Services\n            account.</p>"}))
    ListEmailIdentitiesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there are additional configuration sets to list. To view\n            additional configuration sets, issue another request to\n            <code>ListEmailIdentities</code>, and pass this token in the <code>NextToken</code>\n            parameter.</p>"}))
    ListEmailIdentitiesResponse.type = Types::ListEmailIdentitiesResponse
    ListEmailTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListEmailTemplates</code> to indicate\n            the position in the list of email templates.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListEmailTemplatesRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to <code>ListEmailTemplates</code>. If the number of\n            results is larger than the number you specified in this parameter, then the response\n            includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>\n         <p>The value you specify has to be at least 1, and can be no more than 100.</p>", "smithy.api#httpQuery" => "PageSize"}))
    ListEmailTemplatesRequest.type = Types::ListEmailTemplatesRequest
    ListEmailTemplatesResponse.add_member(:templates_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateMetadataList, location_name: 'TemplatesMetadata', traits: {"smithy.api#documentation" => "<p>An array the contains the name and creation time stamp for each template in your Amazon SES\n            account.</p>"}))
    ListEmailTemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating that there are additional email templates available to be listed.\n            Pass this token to a subsequent <code>ListEmailTemplates</code> call to retrieve the\n            next 10 email templates.</p>"}))
    ListEmailTemplatesResponse.type = Types::ListEmailTemplatesResponse
    ListExportJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token returned from a previous call to <code>ListExportJobs</code> to\n            indicate the position in the list of export jobs.</p>"}))
    ListExportJobsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>Maximum number of export jobs to return at once. Use this parameter to paginate\n            results. If additional export jobs exist beyond the specified limit, the\n            <code>NextToken</code> element is sent in the response. Use the\n            <code>NextToken</code> value in subsequent calls to <code>ListExportJobs</code> to\n            retrieve additional export jobs.</p>"}))
    ListExportJobsRequest.add_member(:export_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportSourceType, location_name: 'ExportSourceType', traits: {"smithy.api#documentation" => "<p>A value used to list export jobs that have a certain\n            <code>ExportSourceType</code>.</p>"}))
    ListExportJobsRequest.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>A value used to list export jobs that have a certain <code>JobStatus</code>.</p>"}))
    ListExportJobsRequest.type = Types::ListExportJobsRequest
    ListExportJobsResponse.add_member(:export_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobSummaryList, location_name: 'ExportJobs', traits: {"smithy.api#documentation" => "<p>A list of the export job summaries.</p>"}))
    ListExportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A string token indicating that there might be additional export jobs available to be\n            listed. Use this token to a subsequent call to <code>ListExportJobs</code> with the same\n            parameters to retrieve the next page of export jobs.</p>"}))
    ListExportJobsResponse.type = Types::ListExportJobsResponse
    ListImportJobsRequest.add_member(:import_destination_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportDestinationType, location_name: 'ImportDestinationType', traits: {"smithy.api#documentation" => "<p>The destination of the import job, which can be used to list import jobs that have a\n            certain <code>ImportDestinationType</code>.</p>"}))
    ListImportJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A string token indicating that there might be additional import jobs available to be\n            listed. Copy this token to a subsequent call to <code>ListImportJobs</code> with the\n            same parameters to retrieve the next page of import jobs.</p>"}))
    ListImportJobsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>Maximum number of import jobs to return at once. Use this parameter to paginate\n            results. If additional import jobs exist beyond the specified limit, the\n                <code>NextToken</code> element is sent in the response. Use the\n                <code>NextToken</code> value in subsequent requests to retrieve additional\n            addresses.</p>"}))
    ListImportJobsRequest.type = Types::ListImportJobsRequest
    ListImportJobsResponse.add_member(:import_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobSummaryList, location_name: 'ImportJobs', traits: {"smithy.api#documentation" => "<p>A list of the import job summaries.</p>"}))
    ListImportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A string token indicating that there might be additional import jobs available to be\n            listed. Copy this token to a subsequent call to <code>ListImportJobs</code> with the\n            same parameters to retrieve the next page of import jobs.</p>"}))
    ListImportJobsResponse.type = Types::ListImportJobsResponse
    ListManagementOptions.add_member(:contact_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListName, location_name: 'ContactListName', traits: {"smithy.api#documentation" => "<p>The name of the contact list.</p>", "smithy.api#required" => {}}))
    ListManagementOptions.add_member(:topic_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicName, location_name: 'TopicName', traits: {"smithy.api#documentation" => "<p>The name of the topic.</p>"}))
    ListManagementOptions.type = Types::ListManagementOptions
    ListMultiRegionEndpointsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenV2, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListMultiRegionEndpoints</code> to indicate\n            the position in the list of multi-region endpoints (global-endpoints).</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListMultiRegionEndpointsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: PageSizeV2, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to <code>ListMultiRegionEndpoints</code>.\n            If the number of results is larger than the number you specified in this parameter,\n            the response includes a <code>NextToken</code> element\n            that you can use to retrieve the next page of results.\n        </p>", "smithy.api#httpQuery" => "PageSize"}))
    ListMultiRegionEndpointsRequest.type = Types::ListMultiRegionEndpointsRequest
    ListMultiRegionEndpointsResponse.add_member(:multi_region_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionEndpoints, location_name: 'MultiRegionEndpoints', traits: {"smithy.api#documentation" => "<p>An array that contains key multi-region endpoint (global-endpoint) properties.</p>"}))
    ListMultiRegionEndpointsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenV2, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token indicating that there are additional multi-region endpoints (global-endpoints) available to be listed.\n            Pass this token to a subsequent <code>ListMultiRegionEndpoints</code> call to retrieve the\n            next page.</p>"}))
    ListMultiRegionEndpointsResponse.type = Types::ListMultiRegionEndpointsResponse
    ListOfContactLists.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContactList)
    ListOfContacts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Contact)
    ListOfDedicatedIpPools.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName)
    ListRecommendationsFilter.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommendationsFilterKey)
    ListRecommendationsFilter.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommendationFilterValue)
    ListRecommendationsFilterKey.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TYPE', traits: {"smithy.api#enumValue" => "TYPE"}))
    ListRecommendationsFilterKey.add_member(:impact, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPACT', traits: {"smithy.api#enumValue" => "IMPACT"}))
    ListRecommendationsFilterKey.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATUS', traits: {"smithy.api#enumValue" => "STATUS"}))
    ListRecommendationsFilterKey.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_ARN', traits: {"smithy.api#enumValue" => "RESOURCE_ARN"}))
    ListRecommendationsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommendationsFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters applied when retrieving recommendations. Can eiter be an individual filter, or\n              combinations of <code>STATUS</code> and <code>IMPACT</code> or\n              <code>STATUS</code> and <code>TYPE</code>\n         </p>"}))
    ListRecommendationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListRecommendations</code> to\n            indicate the position in the list of recommendations.</p>"}))
    ListRecommendationsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to\n            <code>ListRecommendations</code>. If the number of results is larger than\n            the number you specified in this parameter, then the response includes a\n            <code>NextToken</code> element, which you can use to obtain additional\n            results.</p>\n         <p>The value you specify has to be at least 1, and can be no more than 100.</p>"}))
    ListRecommendationsRequest.type = Types::ListRecommendationsRequest
    ListRecommendationsResponse.add_member(:recommendations, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationsList, location_name: 'Recommendations', traits: {"smithy.api#documentation" => "<p>The recommendations applicable to your account.</p>"}))
    ListRecommendationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A string token indicating that there might be additional recommendations available to be\n            listed. Use the token provided in the <code>ListRecommendationsResponse</code> to use in the\n            subsequent call to <code>ListRecommendations</code> with the same parameters to retrieve the\n            next page of recommendations.</p>"}))
    ListRecommendationsResponse.type = Types::ListRecommendationsResponse
    ListReputationEntitiesRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationEntityFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>An object that contains filters to apply when listing reputation entities. \n            You can filter by entity type, reputation impact, sending status, or entity \n            reference prefix.</p>"}))
    ListReputationEntitiesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListReputationEntities</code> to indicate \n            the position in the list of reputation entities.</p>"}))
    ListReputationEntitiesRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to <code>ListReputationEntities</code>. \n            If the number of results is larger than the number you specified in this parameter, \n            then the response includes a <code>NextToken</code> element, which you can use to obtain \n            additional results.</p>"}))
    ListReputationEntitiesRequest.type = Types::ListReputationEntitiesRequest
    ListReputationEntitiesResponse.add_member(:reputation_entities, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationEntitiesList, location_name: 'ReputationEntities', traits: {"smithy.api#documentation" => "<p>An array that contains information about the reputation entities in your account.</p>"}))
    ListReputationEntitiesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there are additional reputation entities to list. \n            To view additional reputation entities, issue another request to <code>ListReputationEntities</code>, \n            and pass this token in the <code>NextToken</code> parameter.</p>"}))
    ListReputationEntitiesResponse.type = Types::ListReputationEntitiesResponse
    ListResourceTenantsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to list associated tenants for.</p>", "smithy.api#required" => {}}))
    ListResourceTenantsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to <code>ListResourceTenants</code>.\n            If the number of results is larger than the number you specified in this parameter,\n            then the response includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>"}))
    ListResourceTenantsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListResourceTenants</code> to indicate the position in the list of resource tenants.</p>"}))
    ListResourceTenantsRequest.type = Types::ListResourceTenantsRequest
    ListResourceTenantsResponse.add_member(:resource_tenants, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTenantMetadataList, location_name: 'ResourceTenants', traits: {"smithy.api#documentation" => "<p>An array that contains information about each tenant associated with the resource.</p>"}))
    ListResourceTenantsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there are additional tenants to list. To view additional tenants,\n            issue another request to <code>ListResourceTenants</code>, and pass this token in the <code>NextToken</code> parameter.</p>"}))
    ListResourceTenantsResponse.type = Types::ListResourceTenantsResponse
    ListSuppressedDestinationsRequest.add_member(:reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionListReasons, location_name: 'Reasons', traits: {"smithy.api#documentation" => "<p>The factors that caused the email address to be added to .</p>", "smithy.api#httpQuery" => "Reason"}))
    ListSuppressedDestinationsRequest.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartDate', traits: {"smithy.api#documentation" => "<p>Used to filter the list of suppressed email destinations so that it only includes\n            addresses that were added to the list after a specific date.</p>", "smithy.api#httpQuery" => "StartDate"}))
    ListSuppressedDestinationsRequest.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndDate', traits: {"smithy.api#documentation" => "<p>Used to filter the list of suppressed email destinations so that it only includes\n            addresses that were added to the list before a specific date.</p>", "smithy.api#httpQuery" => "EndDate"}))
    ListSuppressedDestinationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListSuppressedDestinations</code> to\n            indicate the position in the list of suppressed email addresses.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListSuppressedDestinationsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to\n                <code>ListSuppressedDestinations</code>. If the number of results is larger than the\n            number you specified in this parameter, then the response includes a\n                <code>NextToken</code> element, which you can use to obtain additional\n            results.</p>", "smithy.api#httpQuery" => "PageSize"}))
    ListSuppressedDestinationsRequest.type = Types::ListSuppressedDestinationsRequest
    ListSuppressedDestinationsResponse.add_member(:suppressed_destination_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressedDestinationSummaries, location_name: 'SuppressedDestinationSummaries', traits: {"smithy.api#documentation" => "<p>A list of summaries, each containing a summary for a suppressed email\n            destination.</p>"}))
    ListSuppressedDestinationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there are additional email addresses on the suppression\n            list for your account. To view additional suppressed addresses, issue another request to\n                <code>ListSuppressedDestinations</code>, and pass this token in the\n                <code>NextToken</code> parameter.</p>"}))
    ListSuppressedDestinationsResponse.type = Types::ListSuppressedDestinationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tag\n            information for.</p>", "smithy.api#httpQuery" => "ResourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array that lists all the tags that are associated with the resource. Each tag\n            consists of a required tag key (<code>Key</code>) and an associated tag value\n                (<code>Value</code>)</p>", "smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTenantResourcesFilter.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTenantResourcesFilterKey)
    ListTenantResourcesFilter.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTenantResourcesFilterValue)
    ListTenantResourcesFilterKey.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_TYPE', traits: {"smithy.api#enumValue" => "RESOURCE_TYPE"}))
    ListTenantResourcesRequest.add_member(:tenant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantName, location_name: 'TenantName', traits: {"smithy.api#documentation" => "<p>The name of the tenant to list resources for.</p>", "smithy.api#required" => {}}))
    ListTenantResourcesRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListTenantResourcesFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>A map of filter keys and values for filtering the list of tenant resources. Currently,\n            the only supported filter key is <code>RESOURCE_TYPE</code>.</p>"}))
    ListTenantResourcesRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to <code>ListTenantResources</code>.\n            If the number of results is larger than the number you specified in this parameter,\n            then the response includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>"}))
    ListTenantResourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListTenantResources</code> to indicate the position in the list of tenant resources.</p>"}))
    ListTenantResourcesRequest.type = Types::ListTenantResourcesRequest
    ListTenantResourcesResponse.add_member(:tenant_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantResourceList, location_name: 'TenantResources', traits: {"smithy.api#documentation" => "<p>An array that contains information about each resource associated with the tenant.</p>"}))
    ListTenantResourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there are additional resources to list. To view additional resources,\n            issue another request to <code>ListTenantResources</code>, and pass this token in the <code>NextToken</code> parameter.</p>"}))
    ListTenantResourcesResponse.type = Types::ListTenantResourcesResponse
    ListTenantsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListTenants</code> to indicate the position in the list of tenants.</p>"}))
    ListTenantsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to <code>ListTenants</code>.\n            If the number of results is larger than the number you specified in this parameter,\n            then the response includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>"}))
    ListTenantsRequest.type = Types::ListTenantsRequest
    ListTenantsResponse.add_member(:tenants, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantInfoList, location_name: 'Tenants', traits: {"smithy.api#documentation" => "<p>An array that contains basic information about each tenant.</p>"}))
    ListTenantsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there are additional tenants to list. To view additional tenants,\n            issue another request to <code>ListTenants</code>, and pass this token in the <code>NextToken</code> parameter.</p>"}))
    ListTenantsResponse.type = Types::ListTenantsResponse
    MailFromAttributes.add_member(:mail_from_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainName, location_name: 'MailFromDomain', traits: {"smithy.api#documentation" => "<p>The name of a domain that an email identity uses as a custom MAIL FROM domain.</p>", "smithy.api#required" => {}}))
    MailFromAttributes.add_member(:mail_from_domain_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainStatus, location_name: 'MailFromDomainStatus', traits: {"smithy.api#documentation" => "<p>The status of the MAIL FROM domain. This status can have the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code> – Amazon SES hasn't started searching for the MX record\n                    yet.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCESS</code> – Amazon SES detected the required MX record for the\n                    MAIL FROM domain.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – Amazon SES can't find the required MX record, or the\n                    record no longer exists.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TEMPORARY_FAILURE</code> – A temporary issue occurred, which\n                    prevented Amazon SES from determining the status of the MAIL FROM domain.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    MailFromAttributes.add_member(:behavior_on_mx_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: BehaviorOnMxFailure, location_name: 'BehaviorOnMxFailure', traits: {"smithy.api#documentation" => "<p>The action to take if the required MX record can't be found when you send an email.\n            When you set this value to <code>USE_DEFAULT_VALUE</code>, the mail is sent using\n                <i>amazonses.com</i> as the MAIL FROM domain. When you set this value\n            to <code>REJECT_MESSAGE</code>, the Amazon SES API v2 returns a\n                <code>MailFromDomainNotVerified</code> error, and doesn't attempt to deliver the\n            email.</p>\n         <p>These behaviors are taken when the custom MAIL FROM domain configuration is in the\n                <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code>\n            states.</p>", "smithy.api#required" => {}}))
    MailFromAttributes.type = Types::MailFromAttributes
    MailFromDomainNotVerifiedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    MailFromDomainNotVerifiedException.type = Types::MailFromDomainNotVerifiedException
    MailFromDomainStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    MailFromDomainStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    MailFromDomainStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    MailFromDomainStatus.add_member(:temporary_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEMPORARY_FAILURE', traits: {"smithy.api#enumValue" => "TEMPORARY_FAILURE"}))
    MailType.add_member(:marketing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MARKETING', traits: {"smithy.api#enumValue" => "MARKETING"}))
    MailType.add_member(:transactional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSACTIONAL', traits: {"smithy.api#enumValue" => "TRANSACTIONAL"}))
    Message.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject line of the email. The subject line can only contain 7-bit ASCII\n            characters. However, you can specify non-ASCII characters in the subject line by using\n            encoded-word syntax, as described in <a href=\"https://tools.ietf.org/html/rfc2047\">RFC 2047</a>.</p>", "smithy.api#required" => {}}))
    Message.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: Body, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The body of the message. You can specify an HTML version of the message, a text-only\n            version of the message, or both.</p>", "smithy.api#required" => {}}))
    Message.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageHeaderList, location_name: 'Headers', traits: {"smithy.api#documentation" => "<p>The list of message headers that will be added to the email message.</p>"}))
    Message.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentList, location_name: 'Attachments', traits: {"smithy.api#documentation" => "<p> The List of attachments to include in your email. All recipients will receive the same attachments.</p>"}))
    Message.type = Types::Message
    MessageHeader.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageHeaderName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the message header. The message header name has to meet the following\n            criteria:</p>\n         <ul>\n            <li>\n               <p>Can contain any printable ASCII character (33 - 126) except for colon (:).</p>\n            </li>\n            <li>\n               <p>Can contain no more than 126 characters.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    MessageHeader.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageHeaderValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the message header. The message header value has to meet the following\n            criteria:</p>\n         <ul>\n            <li>\n               <p>Can contain any printable ASCII character.</p>\n            </li>\n            <li>\n               <p>Can contain no more than 870 characters.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    MessageHeader.type = Types::MessageHeader
    MessageHeaderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageHeader)
    MessageInsightsDataSource.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartDate', traits: {"smithy.api#documentation" => "<p>Represents the start date for the export interval as a timestamp. The start date is inclusive.</p>", "smithy.api#required" => {}}))
    MessageInsightsDataSource.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndDate', traits: {"smithy.api#documentation" => "<p>Represents the end date for the export interval as a timestamp. The end date is inclusive.</p>", "smithy.api#required" => {}}))
    MessageInsightsDataSource.add_member(:include, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageInsightsFilters, location_name: 'Include', traits: {"smithy.api#documentation" => "<p>Filters for results to be included in the export file.</p>"}))
    MessageInsightsDataSource.add_member(:exclude, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageInsightsFilters, location_name: 'Exclude', traits: {"smithy.api#documentation" => "<p>Filters for results to be excluded from the export file.</p>"}))
    MessageInsightsDataSource.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageInsightsExportMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results.</p>"}))
    MessageInsightsDataSource.type = Types::MessageInsightsDataSource
    MessageInsightsFilters.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressFilterList, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The from address used to send the message.</p>"}))
    MessageInsightsFilters.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressFilterList, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>The recipient's email address.</p>"}))
    MessageInsightsFilters.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailSubjectFilterList, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject line of the message.</p>"}))
    MessageInsightsFilters.add_member(:isp, Smithy::Schema::Shapes::ShapeRef.new(shape: IspFilterList, location_name: 'Isp', traits: {"smithy.api#documentation" => "<p>The recipient's ISP (e.g., <code>Gmail</code>, <code>Yahoo</code>,\n            etc.).</p>"}))
    MessageInsightsFilters.add_member(:last_delivery_event, Smithy::Schema::Shapes::ShapeRef.new(shape: LastDeliveryEventList, location_name: 'LastDeliveryEvent', traits: {"smithy.api#documentation" => "<p>\n            The last delivery-related event for the email, where the ordering is as follows:\n            <code>SEND</code> < <code>BOUNCE</code> < <code>DELIVERY</code> < <code>COMPLAINT</code>.\n        </p>"}))
    MessageInsightsFilters.add_member(:last_engagement_event, Smithy::Schema::Shapes::ShapeRef.new(shape: LastEngagementEventList, location_name: 'LastEngagementEvent', traits: {"smithy.api#documentation" => "<p>\n            The last engagement-related event for the email, where the ordering is as follows:\n            <code>OPEN</code> < <code>CLICK</code>.\n        </p>\n         <p>\n            Engagement events are only available if <a href=\"https://docs.aws.amazon.com/ses/latest/dg/vdm-settings.html\">Engagement tracking</a>\n            is enabled.\n        </p>"}))
    MessageInsightsFilters.type = Types::MessageInsightsFilters
    MessageRejected.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    MessageRejected.type = Types::MessageRejected
    MessageTag.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the message tag. The message tag name has to meet the following\n            criteria:</p>\n         <ul>\n            <li>\n               <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9),\n                    underscores (_), or dashes (-).</p>\n            </li>\n            <li>\n               <p>It can contain no more than 256 characters.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    MessageTag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the message tag. The message tag value has to meet the following\n            criteria:</p>\n         <ul>\n            <li>\n               <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9),\n                    underscores (_), or dashes (-).</p>\n            </li>\n            <li>\n               <p>It can contain no more than 256 characters.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    MessageTag.type = Types::MessageTag
    MessageTagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTag)
    Metric.add_member(:send, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEND', traits: {"smithy.api#enumValue" => "SEND"}))
    Metric.add_member(:complaint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLAINT', traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    Metric.add_member(:permanent_bounce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERMANENT_BOUNCE', traits: {"smithy.api#enumValue" => "PERMANENT_BOUNCE"}))
    Metric.add_member(:transient_bounce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSIENT_BOUNCE', traits: {"smithy.api#enumValue" => "TRANSIENT_BOUNCE"}))
    Metric.add_member(:open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "OPEN"}))
    Metric.add_member(:click, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLICK', traits: {"smithy.api#enumValue" => "CLICK"}))
    Metric.add_member(:delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERY', traits: {"smithy.api#enumValue" => "DELIVERY"}))
    Metric.add_member(:delivery_open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERY_OPEN', traits: {"smithy.api#enumValue" => "DELIVERY_OPEN"}))
    Metric.add_member(:delivery_click, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERY_CLICK', traits: {"smithy.api#enumValue" => "DELIVERY_CLICK"}))
    Metric.add_member(:delivery_complaint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERY_COMPLAINT', traits: {"smithy.api#enumValue" => "DELIVERY_COMPLAINT"}))
    MetricAggregation.add_member(:rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RATE', traits: {"smithy.api#enumValue" => "RATE"}))
    MetricAggregation.add_member(:volume, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOLUME', traits: {"smithy.api#enumValue" => "VOLUME"}))
    MetricDataError.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryIdentifier, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The query identifier.</p>"}))
    MetricDataError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryErrorCode, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The query error code. Can be one of:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>INTERNAL_FAILURE</code> – Amazon SES has failed to process one of the queries.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ACCESS_DENIED</code> – You have insufficient access to retrieve metrics\n                    based on the given query.</p>\n            </li>\n         </ul>"}))
    MetricDataError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The error message associated with the current query error.</p>"}))
    MetricDataError.type = Types::MetricDataError
    MetricDataErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDataError)
    MetricDataResult.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryIdentifier, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The query identifier.</p>"}))
    MetricDataResult.add_member(:timestamps, Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampList, location_name: 'Timestamps', traits: {"smithy.api#documentation" => "<p>A list of timestamps for the metric data results.</p>"}))
    MetricDataResult.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>A list of values (cumulative / sum) for the metric data results.</p>"}))
    MetricDataResult.type = Types::MetricDataResult
    MetricDataResultList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDataResult)
    MetricDimensionName.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_IDENTITY', traits: {"smithy.api#enumValue" => "EMAIL_IDENTITY"}))
    MetricDimensionName.add_member(:configuration_set, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIGURATION_SET', traits: {"smithy.api#enumValue" => "CONFIGURATION_SET"}))
    MetricDimensionName.add_member(:isp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ISP', traits: {"smithy.api#enumValue" => "ISP"}))
    MetricNamespace.add_member(:vdm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VDM', traits: {"smithy.api#enumValue" => "VDM"}))
    MetricValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Counter)
    MetricsDataSource.add_member(:dimensions, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDimensions, location_name: 'Dimensions', traits: {"smithy.api#documentation" => "<p>An object that contains a mapping between a <code>MetricDimensionName</code> and\n            <code>MetricDimensionValue</code> to filter metrics by. Must contain a least 1\n            dimension but no more than 3 unique ones.</p>", "smithy.api#required" => {}}))
    MetricsDataSource.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricNamespace, location_name: 'Namespace', traits: {"smithy.api#documentation" => "<p>The metrics namespace - e.g., <code>VDM</code>.</p>", "smithy.api#required" => {}}))
    MetricsDataSource.add_member(:metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportMetrics, location_name: 'Metrics', traits: {"smithy.api#documentation" => "<p>A list of <code>ExportMetric</code> objects to export.</p>", "smithy.api#required" => {}}))
    MetricsDataSource.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartDate', traits: {"smithy.api#documentation" => "<p>Represents the start date for the export interval as a timestamp.</p>", "smithy.api#required" => {}}))
    MetricsDataSource.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndDate', traits: {"smithy.api#documentation" => "<p>Represents the end date for the export interval as a timestamp.</p>", "smithy.api#required" => {}}))
    MetricsDataSource.type = Types::MetricsDataSource
    MultiRegionEndpoint.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'EndpointName', traits: {"smithy.api#documentation" => "<p>The name of the multi-region endpoint (global-endpoint).</p>"}))
    MultiRegionEndpoint.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the multi-region endpoint (global-endpoint).</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CREATING</code> – The resource is being provisioned.</p>\n            </li>\n            <li>\n               <p>\n                  <code>READY</code> – The resource is ready to use.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – The resource failed to be provisioned.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DELETING</code> – The resource is being deleted as requested.</p>\n            </li>\n         </ul>"}))
    MultiRegionEndpoint.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointId, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the multi-region endpoint (global-endpoint).</p>"}))
    MultiRegionEndpoint.add_member(:regions, Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: 'Regions', traits: {"smithy.api#documentation" => "<p>Primary and secondary regions between which multi-region endpoint splits sending traffic.</p>"}))
    MultiRegionEndpoint.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time stamp of when the multi-region endpoint (global-endpoint) was created.</p>"}))
    MultiRegionEndpoint.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The time stamp of when the multi-region endpoint (global-endpoint) was last updated.</p>"}))
    MultiRegionEndpoint.type = Types::MultiRegionEndpoint
    MultiRegionEndpoints.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionEndpoint)
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NotFoundException.type = Types::NotFoundException
    OverallVolume.add_member(:volume_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeStatistics, location_name: 'VolumeStatistics', traits: {"smithy.api#documentation" => "<p>An object that contains information about the numbers of messages that arrived in\n            recipients' inboxes and junk mail folders.</p>"}))
    OverallVolume.add_member(:read_rate_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'ReadRatePercent', traits: {"smithy.api#documentation" => "<p>The percentage of emails that were sent from the domain that were read by their\n            recipients.</p>"}))
    OverallVolume.add_member(:domain_isp_placements, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainIspPlacements, location_name: 'DomainIspPlacements', traits: {"smithy.api#documentation" => "<p>An object that contains inbox and junk mail placement metrics for individual email\n            providers.</p>"}))
    OverallVolume.type = Types::OverallVolume
    PinpointDestination.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Pinpoint project to send email events to.</p>"}))
    PinpointDestination.type = Types::PinpointDestination
    PlacementStatistics.add_member(:inbox_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'InboxPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of emails that arrived in recipients' inboxes during the predictive inbox placement test.</p>"}))
    PlacementStatistics.add_member(:spam_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'SpamPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of emails that arrived in recipients' spam or junk mail folders during\n            the predictive inbox placement test.</p>"}))
    PlacementStatistics.add_member(:missing_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'MissingPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of emails that didn't arrive in recipients' inboxes at all during the\n            predictive inbox placement test.</p>"}))
    PlacementStatistics.add_member(:spf_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'SpfPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of emails that were authenticated by using Sender Policy Framework\n            (SPF) during the predictive inbox placement test.</p>"}))
    PlacementStatistics.add_member(:dkim_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'DkimPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of emails that were authenticated by using DomainKeys Identified Mail\n            (DKIM) during the predictive inbox placement test.</p>"}))
    PlacementStatistics.type = Types::PlacementStatistics
    PolicyMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName)
    PolicyMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Policy)
    PutAccountDedicatedIpWarmupAttributesRequest.add_member(:auto_warmup_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'AutoWarmupEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Enables or disables the automatic warm-up feature for dedicated IP addresses that are\n            associated with your Amazon SES account in the current Amazon Web Services Region. Set to <code>true</code>\n            to enable the automatic warm-up feature, or set to <code>false</code> to disable\n            it.</p>"}))
    PutAccountDedicatedIpWarmupAttributesRequest.type = Types::PutAccountDedicatedIpWarmupAttributesRequest
    PutAccountDedicatedIpWarmupAttributesResponse.type = Types::PutAccountDedicatedIpWarmupAttributesResponse
    PutAccountDetailsRequest.add_member(:mail_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MailType, location_name: 'MailType', traits: {"smithy.api#documentation" => "<p>The type of email your account will send.</p>", "smithy.api#required" => {}}))
    PutAccountDetailsRequest.add_member(:website_url, Smithy::Schema::Shapes::ShapeRef.new(shape: WebsiteURL, location_name: 'WebsiteURL', traits: {"smithy.api#documentation" => "<p>The URL of your website. This information helps us better understand the type of\n            content that you plan to send.</p>", "smithy.api#required" => {}}))
    PutAccountDetailsRequest.add_member(:contact_language, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactLanguage, location_name: 'ContactLanguage', traits: {"smithy.api#documentation" => "<p>The language you would prefer to be contacted with.</p>"}))
    PutAccountDetailsRequest.add_member(:use_case_description, Smithy::Schema::Shapes::ShapeRef.new(shape: UseCaseDescription, location_name: 'UseCaseDescription', traits: {"smithy.api#documentation" => "<p>A description of the types of email that you plan to send.</p>"}))
    PutAccountDetailsRequest.add_member(:additional_contact_email_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalContactEmailAddresses, location_name: 'AdditionalContactEmailAddresses', traits: {"smithy.api#documentation" => "<p>Additional email addresses that you would like to be notified regarding Amazon SES\n            matters.</p>"}))
    PutAccountDetailsRequest.add_member(:production_access_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: EnabledWrapper, location_name: 'ProductionAccessEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether or not your account should have production access in the current\n            Amazon Web Services Region.</p>\n         <p>If the value is <code>false</code>, then your account is in the\n                <i>sandbox</i>. When your account is in the sandbox, you can only send\n            email to verified identities.\n            </p>\n         <p>If the value is <code>true</code>, then your account has production access. When your\n            account has production access, you can send email to any address. The sending quota and\n            maximum sending rate for your account vary based on your specific use case.</p>"}))
    PutAccountDetailsRequest.type = Types::PutAccountDetailsRequest
    PutAccountDetailsResponse.type = Types::PutAccountDetailsResponse
    PutAccountSendingAttributesRequest.add_member(:sending_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'SendingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Enables or disables your account's ability to send email. Set to <code>true</code> to\n            enable email sending, or set to <code>false</code> to disable email sending.</p>\n         <note>\n            <p>If Amazon Web Services paused your account's ability to send email, you can't use this operation\n                to resume your account's ability to send email.</p>\n         </note>"}))
    PutAccountSendingAttributesRequest.type = Types::PutAccountSendingAttributesRequest
    PutAccountSendingAttributesResponse.type = Types::PutAccountSendingAttributesResponse
    PutAccountSuppressionAttributesRequest.add_member(:suppressed_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionListReasons, location_name: 'SuppressedReasons', traits: {"smithy.api#documentation" => "<p>A list that contains the reasons that email addresses will be automatically added to\n            the suppression list for your account. This list can contain any or all of the\n            following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression\n                    list for your account when a message sent to that address results in a\n                    complaint.</p>\n            </li>\n            <li>\n               <p>\n                  <code>BOUNCE</code> – Amazon SES adds an email address to the suppression\n                    list for your account when a message sent to that address results in a hard\n                    bounce.</p>\n            </li>\n         </ul>"}))
    PutAccountSuppressionAttributesRequest.type = Types::PutAccountSuppressionAttributesRequest
    PutAccountSuppressionAttributesResponse.type = Types::PutAccountSuppressionAttributesResponse
    PutAccountVdmAttributesRequest.add_member(:vdm_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: VdmAttributes, location_name: 'VdmAttributes', traits: {"smithy.api#documentation" => "<p>The VDM attributes that you wish to apply to your Amazon SES account.</p>", "smithy.api#required" => {}}))
    PutAccountVdmAttributesRequest.type = Types::PutAccountVdmAttributesRequest
    PutAccountVdmAttributesResponse.type = Types::PutAccountVdmAttributesResponse
    PutConfigurationSetArchivingOptionsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to associate with a MailManager archive.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetArchivingOptionsRequest.add_member(:archive_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveArn, location_name: 'ArchiveArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the MailManager archive that the Amazon SES API v2 sends email\n            to.</p>"}))
    PutConfigurationSetArchivingOptionsRequest.type = Types::PutConfigurationSetArchivingOptionsRequest
    PutConfigurationSetArchivingOptionsResponse.type = Types::PutConfigurationSetArchivingOptionsResponse
    PutConfigurationSetDeliveryOptionsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to associate with a dedicated IP pool.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:tls_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: TlsPolicy, location_name: 'TlsPolicy', traits: {"smithy.api#documentation" => "<p>Specifies whether messages that use the configuration set are required to use\n            Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only\n            delivered if a TLS connection can be established. If the value is <code>Optional</code>,\n            messages can be delivered in plain text if a TLS connection can't be established.</p>"}))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:sending_pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SendingPoolName, location_name: 'SendingPoolName', traits: {"smithy.api#documentation" => "<p>The name of the dedicated IP pool to associate with the configuration set.</p>"}))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:max_delivery_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxDeliverySeconds, location_name: 'MaxDeliverySeconds', traits: {"smithy.api#documentation" => "<p>The maximum amount of time, in seconds, that Amazon SES API v2 will attempt delivery of email.\n            If specified, the value must greater than or equal to 300 seconds (5 minutes)\n            and less than or equal to 50400 seconds (840 minutes).\n        </p>"}))
    PutConfigurationSetDeliveryOptionsRequest.type = Types::PutConfigurationSetDeliveryOptionsRequest
    PutConfigurationSetDeliveryOptionsResponse.type = Types::PutConfigurationSetDeliveryOptionsResponse
    PutConfigurationSetReputationOptionsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetReputationOptionsRequest.add_member(:reputation_metrics_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'ReputationMetricsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If <code>true</code>, tracking of reputation metrics is enabled for the configuration\n            set. If <code>false</code>, tracking of reputation metrics is disabled for the\n            configuration set.</p>"}))
    PutConfigurationSetReputationOptionsRequest.type = Types::PutConfigurationSetReputationOptionsRequest
    PutConfigurationSetReputationOptionsResponse.type = Types::PutConfigurationSetReputationOptionsResponse
    PutConfigurationSetSendingOptionsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to enable or disable email sending for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetSendingOptionsRequest.add_member(:sending_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'SendingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If <code>true</code>, email sending is enabled for the configuration set. If\n                <code>false</code>, email sending is disabled for the configuration set.</p>"}))
    PutConfigurationSetSendingOptionsRequest.type = Types::PutConfigurationSetSendingOptionsRequest
    PutConfigurationSetSendingOptionsResponse.type = Types::PutConfigurationSetSendingOptionsResponse
    PutConfigurationSetSuppressionOptionsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to change the suppression list preferences\n            for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetSuppressionOptionsRequest.add_member(:suppressed_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionListReasons, location_name: 'SuppressedReasons', traits: {"smithy.api#documentation" => "<p>A list that contains the reasons that email addresses are automatically added to the\n            suppression list for your account. This list can contain any or all of the\n            following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression\n                    list for your account when a message sent to that address results in a\n                    complaint.</p>\n            </li>\n            <li>\n               <p>\n                  <code>BOUNCE</code> – Amazon SES adds an email address to the suppression\n                    list for your account when a message sent to that address results in a hard\n                    bounce.</p>\n            </li>\n         </ul>"}))
    PutConfigurationSetSuppressionOptionsRequest.type = Types::PutConfigurationSetSuppressionOptionsRequest
    PutConfigurationSetSuppressionOptionsResponse.type = Types::PutConfigurationSetSuppressionOptionsResponse
    PutConfigurationSetTrackingOptionsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetTrackingOptionsRequest.add_member(:custom_redirect_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRedirectDomain, location_name: 'CustomRedirectDomain', traits: {"smithy.api#documentation" => "<p>The domain to use to track open and click events.</p>"}))
    PutConfigurationSetTrackingOptionsRequest.add_member(:https_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpsPolicy, location_name: 'HttpsPolicy'))
    PutConfigurationSetTrackingOptionsRequest.type = Types::PutConfigurationSetTrackingOptionsRequest
    PutConfigurationSetTrackingOptionsResponse.type = Types::PutConfigurationSetTrackingOptionsResponse
    PutConfigurationSetVdmOptionsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetVdmOptionsRequest.add_member(:vdm_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VdmOptions, location_name: 'VdmOptions', traits: {"smithy.api#documentation" => "<p>The VDM options to apply to the configuration set.</p>"}))
    PutConfigurationSetVdmOptionsRequest.type = Types::PutConfigurationSetVdmOptionsRequest
    PutConfigurationSetVdmOptionsResponse.type = Types::PutConfigurationSetVdmOptionsResponse
    PutDedicatedIpInPoolRequest.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: 'Ip', traits: {"smithy.api#documentation" => "<p>The IP address that you want to move to the dedicated IP pool. The value you specify\n            has to be a dedicated IP address that's associated with your Amazon Web Services account.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDedicatedIpInPoolRequest.add_member(:destination_pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'DestinationPoolName', traits: {"smithy.api#documentation" => "<p>The name of the IP pool that you want to add the dedicated IP address to. You have to\n            specify an IP pool that already exists.</p>", "smithy.api#required" => {}}))
    PutDedicatedIpInPoolRequest.type = Types::PutDedicatedIpInPoolRequest
    PutDedicatedIpInPoolResponse.type = Types::PutDedicatedIpInPoolResponse
    PutDedicatedIpPoolScalingAttributesRequest.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the dedicated IP pool.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDedicatedIpPoolScalingAttributesRequest.add_member(:scaling_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingMode, location_name: 'ScalingMode', traits: {"smithy.api#documentation" => "<p>The scaling mode to apply to the dedicated IP pool.</p>\n         <note>\n            <p>Changing the scaling mode from <code>MANAGED</code> to <code>STANDARD</code> is not supported.</p>\n         </note>", "smithy.api#required" => {}}))
    PutDedicatedIpPoolScalingAttributesRequest.type = Types::PutDedicatedIpPoolScalingAttributesRequest
    PutDedicatedIpPoolScalingAttributesResponse.type = Types::PutDedicatedIpPoolScalingAttributesResponse
    PutDedicatedIpWarmupAttributesRequest.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: 'Ip', traits: {"smithy.api#documentation" => "<p>The dedicated IP address that you want to update the warm-up attributes for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDedicatedIpWarmupAttributesRequest.add_member(:warmup_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage100Wrapper, location_name: 'WarmupPercentage', traits: {"smithy.api#documentation" => "<p>The warm-up percentage that you want to associate with the dedicated IP\n            address.</p>", "smithy.api#required" => {}}))
    PutDedicatedIpWarmupAttributesRequest.type = Types::PutDedicatedIpWarmupAttributesRequest
    PutDedicatedIpWarmupAttributesResponse.type = Types::PutDedicatedIpWarmupAttributesResponse
    PutDeliverabilityDashboardOptionRequest.add_member(:dashboard_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'DashboardEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether to enable the Deliverability dashboard. To enable the dashboard, set this\n            value to <code>true</code>.</p>", "smithy.api#required" => {}}))
    PutDeliverabilityDashboardOptionRequest.add_member(:subscribed_domains, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDeliverabilityTrackingOptions, location_name: 'SubscribedDomains', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each verified domain that you use to send email and\n            enabled the Deliverability dashboard for.</p>"}))
    PutDeliverabilityDashboardOptionRequest.type = Types::PutDeliverabilityDashboardOptionRequest
    PutDeliverabilityDashboardOptionResponse.type = Types::PutDeliverabilityDashboardOptionResponse
    PutEmailIdentityConfigurationSetAttributesRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The email address or domain to associate with a configuration set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityConfigurationSetAttributesRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The configuration set to associate with an email identity.</p>"}))
    PutEmailIdentityConfigurationSetAttributesRequest.type = Types::PutEmailIdentityConfigurationSetAttributesRequest
    PutEmailIdentityConfigurationSetAttributesResponse.type = Types::PutEmailIdentityConfigurationSetAttributesResponse
    PutEmailIdentityDkimAttributesRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The email identity.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityDkimAttributesRequest.add_member(:signing_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'SigningEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Sets the DKIM signing configuration for the identity.</p>\n         <p>When you set this value <code>true</code>, then the messages that are sent from the\n            identity are signed using DKIM. If you set this value to <code>false</code>, your\n            messages are sent without DKIM signing.</p>"}))
    PutEmailIdentityDkimAttributesRequest.type = Types::PutEmailIdentityDkimAttributesRequest
    PutEmailIdentityDkimAttributesResponse.type = Types::PutEmailIdentityDkimAttributesResponse
    PutEmailIdentityDkimSigningAttributesRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The email identity.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityDkimSigningAttributesRequest.add_member(:signing_attributes_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimSigningAttributesOrigin, location_name: 'SigningAttributesOrigin', traits: {"smithy.api#documentation" => "<p>The method to use to configure DKIM for the identity. There are the following possible\n            values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>AWS_SES</code> – Configure DKIM for the identity by using <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Easy\n                        DKIM</a>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>EXTERNAL</code> – Configure DKIM for the identity by using Bring\n                    Your Own DKIM (BYODKIM).</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    PutEmailIdentityDkimSigningAttributesRequest.add_member(:signing_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimSigningAttributes, location_name: 'SigningAttributes', traits: {"smithy.api#documentation" => "<p>An object that contains information about the private key and selector that you want\n            to use to configure DKIM for the identity for Bring Your Own DKIM (BYODKIM) for the\n            identity, or, configures the key length to be used for <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Easy DKIM</a>.</p>"}))
    PutEmailIdentityDkimSigningAttributesRequest.type = Types::PutEmailIdentityDkimSigningAttributesRequest
    PutEmailIdentityDkimSigningAttributesResponse.add_member(:dkim_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimStatus, location_name: 'DkimStatus', traits: {"smithy.api#documentation" => "<p>The DKIM authentication status of the identity. Amazon SES determines the authentication\n            status by searching for specific records in the DNS configuration for your domain. If\n            you used <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Easy\n                DKIM</a> to set up DKIM authentication, Amazon SES tries to find three unique CNAME\n            records in the DNS configuration for your domain.</p>\n         <p>If you provided a public key to perform DKIM authentication, Amazon SES tries to find a TXT\n            record that uses the selector that you specified. The value of the TXT record must be a\n            public key that's paired with the private key that you specified in the process of\n            creating the identity.</p>\n         <p>The status can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code> – The verification process was initiated, but Amazon SES\n                    hasn't yet detected the DKIM records in the DNS configuration for the\n                    domain.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCESS</code> – The verification process completed\n                    successfully.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – The verification process failed. This typically\n                    occurs when Amazon SES fails to find the DKIM records in the DNS configuration of the\n                    domain.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TEMPORARY_FAILURE</code> – A temporary issue is preventing Amazon SES\n                    from determining the DKIM authentication status of the domain.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_STARTED</code> – The DKIM verification process hasn't been\n                    initiated for the domain.</p>\n            </li>\n         </ul>"}))
    PutEmailIdentityDkimSigningAttributesResponse.add_member(:dkim_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsTokenList, location_name: 'DkimTokens', traits: {"smithy.api#documentation" => "<p>If you used <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Easy DKIM</a> to configure DKIM authentication for the domain, then this object\n            contains a set of unique strings that you use to create a set of CNAME records that you\n            add to the DNS configuration for your domain. When Amazon SES detects these records in the\n            DNS configuration for your domain, the DKIM authentication process is complete.</p>\n         <p>If you configured DKIM authentication for the domain by providing your own\n            public-private key pair, then this object contains the selector that's associated with\n            your public key.</p>\n         <p>Regardless of the DKIM authentication method you use, Amazon SES searches for the\n            appropriate records in the DNS configuration of the domain for up to 72 hours.</p>"}))
    PutEmailIdentityDkimSigningAttributesResponse.type = Types::PutEmailIdentityDkimSigningAttributesResponse
    PutEmailIdentityFeedbackAttributesRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The email identity.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityFeedbackAttributesRequest.add_member(:email_forwarding_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'EmailForwardingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Sets the feedback forwarding configuration for the identity.</p>\n         <p>If the value is <code>true</code>, you receive email notifications when bounce or\n            complaint events occur. These notifications are sent to the address that you specified\n            in the <code>Return-Path</code> header of the original email.</p>\n         <p>You're required to have a method of tracking bounces and complaints. If you haven't\n            set up another mechanism for receiving bounce or complaint notifications (for example,\n            by setting up an event destination), you receive an email notification when these events\n            occur (even if this setting is disabled).</p>"}))
    PutEmailIdentityFeedbackAttributesRequest.type = Types::PutEmailIdentityFeedbackAttributesRequest
    PutEmailIdentityFeedbackAttributesResponse.type = Types::PutEmailIdentityFeedbackAttributesResponse
    PutEmailIdentityMailFromAttributesRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The verified email identity.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityMailFromAttributesRequest.add_member(:mail_from_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainName, location_name: 'MailFromDomain', traits: {"smithy.api#documentation" => "<p> The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM\n            domain must meet the following criteria:</p>\n         <ul>\n            <li>\n               <p>It has to be a subdomain of the verified identity.</p>\n            </li>\n            <li>\n               <p>It can't be used to receive email.</p>\n            </li>\n            <li>\n               <p>It can't be used in a \"From\" address if the MAIL FROM domain is a destination\n                    for feedback forwarding emails.</p>\n            </li>\n         </ul>"}))
    PutEmailIdentityMailFromAttributesRequest.add_member(:behavior_on_mx_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: BehaviorOnMxFailure, location_name: 'BehaviorOnMxFailure', traits: {"smithy.api#documentation" => "<p>The action to take if the required MX record isn't found when you send an email. When\n            you set this value to <code>UseDefaultValue</code>, the mail is sent using\n                <i>amazonses.com</i> as the MAIL FROM domain. When you set this value\n            to <code>RejectMessage</code>, the Amazon SES API v2 returns a\n                <code>MailFromDomainNotVerified</code> error, and doesn't attempt to deliver the\n            email.</p>\n         <p>These behaviors are taken when the custom MAIL FROM domain configuration is in the\n                <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code>\n            states.</p>"}))
    PutEmailIdentityMailFromAttributesRequest.type = Types::PutEmailIdentityMailFromAttributesRequest
    PutEmailIdentityMailFromAttributesResponse.type = Types::PutEmailIdentityMailFromAttributesResponse
    PutSuppressedDestinationRequest.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The email address that should be added to the suppression list for your\n            account.</p>", "smithy.api#required" => {}}))
    PutSuppressedDestinationRequest.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionListReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The factors that should cause the email address to be added to the suppression list\n            for your account.</p>", "smithy.api#required" => {}}))
    PutSuppressedDestinationRequest.type = Types::PutSuppressedDestinationRequest
    PutSuppressedDestinationResponse.type = Types::PutSuppressedDestinationResponse
    QueryErrorCode.add_member(:internal_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_FAILURE', traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    QueryErrorCode.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    RawMessage.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: RawMessageData, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The raw email message. The message has to meet the following criteria:</p>\n         <ul>\n            <li>\n               <p>The message has to contain a header and a body, separated by one blank\n                    line.</p>\n            </li>\n            <li>\n               <p>All of the required header fields must be present in the message.</p>\n            </li>\n            <li>\n               <p>Each part of a multipart MIME message must be formatted properly.</p>\n            </li>\n            <li>\n               <p>Attachments must be in a file format that the Amazon SES supports.</p>\n            </li>\n            <li>\n               <p>The raw data of the message needs to base64-encoded if you are accessing Amazon SES\n                    directly through the HTTPS interface. If you are accessing Amazon SES using an Amazon Web Services\n                    SDK, the SDK takes care of the base 64-encoding for you.</p>\n            </li>\n            <li>\n               <p>If any of the MIME parts in your message contain content that is outside of\n                    the 7-bit ASCII character range, you should encode that content to ensure that\n                    recipients' email clients render the message properly.</p>\n            </li>\n            <li>\n               <p>The length of any single line of text in the message can't exceed 1,000\n                    characters. This restriction is defined in <a href=\"https://tools.ietf.org/html/rfc5321\">RFC 5321</a>.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    RawMessage.type = Types::RawMessage
    Recommendation.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The resource affected by the recommendation,\n            with values like <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>"}))
    Recommendation.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The recommendation type, with values like <code>DKIM</code>,\n            <code>SPF</code>, <code>DMARC</code>, <code>BIMI</code>, or <code>COMPLAINT</code>.</p>"}))
    Recommendation.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The recommendation description / disambiguator - e.g. <code>DKIM1</code> and <code>DKIM2</code>\n              are different recommendations about your DKIM setup.</p>"}))
    Recommendation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The recommendation status, with values like\n            <code>OPEN</code> or <code>FIXED</code>.</p>"}))
    Recommendation.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The first time this issue was encountered and the recommendation was generated.</p>"}))
    Recommendation.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The last time the recommendation was updated.</p>"}))
    Recommendation.add_member(:impact, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationImpact, location_name: 'Impact', traits: {"smithy.api#documentation" => "<p>The recommendation impact, with values like\n            <code>HIGH</code> or <code>LOW</code>.</p>"}))
    Recommendation.type = Types::Recommendation
    RecommendationImpact.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    RecommendationImpact.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    RecommendationStatus.add_member(:open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "OPEN"}))
    RecommendationStatus.add_member(:fixed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIXED', traits: {"smithy.api#enumValue" => "FIXED"}))
    RecommendationType.add_member(:dkim, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DKIM', traits: {"smithy.api#enumValue" => "DKIM"}))
    RecommendationType.add_member(:dmarc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DMARC', traits: {"smithy.api#enumValue" => "DMARC"}))
    RecommendationType.add_member(:spf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPF', traits: {"smithy.api#enumValue" => "SPF"}))
    RecommendationType.add_member(:bimi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BIMI', traits: {"smithy.api#enumValue" => "BIMI"}))
    RecommendationType.add_member(:complaint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLAINT', traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    RecommendationType.add_member(:bounce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOUNCE', traits: {"smithy.api#enumValue" => "BOUNCE"}))
    RecommendationType.add_member(:feedback_3_p, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FEEDBACK_3P', traits: {"smithy.api#enumValue" => "FEEDBACK_3P"}))
    RecommendationType.add_member(:ip_listing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IP_LISTING', traits: {"smithy.api#enumValue" => "IP_LISTING"}))
    RecommendationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Recommendation)
    Regions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    ReplacementEmailContent.add_member(:replacement_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacementTemplate, location_name: 'ReplacementTemplate', traits: {"smithy.api#documentation" => "<p>The <code>ReplacementTemplate</code> associated with\n                <code>ReplacementEmailContent</code>.</p>"}))
    ReplacementEmailContent.type = Types::ReplacementEmailContent
    ReplacementTemplate.add_member(:replacement_template_data, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateData, location_name: 'ReplacementTemplateData', traits: {"smithy.api#documentation" => "<p>A list of replacement values to apply to the template. This parameter is a JSON\n            object, typically consisting of key-value pairs in which the keys correspond to\n            replacement tags in the email template.</p>"}))
    ReplacementTemplate.type = Types::ReplacementTemplate
    ReputationEntitiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationEntity)
    ReputationEntity.add_member(:reputation_entity_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationEntityReference, location_name: 'ReputationEntityReference', traits: {"smithy.api#documentation" => "<p>The unique identifier for the reputation entity. For resource-type entities, \n            this is the Amazon Resource Name (ARN) of the resource.</p>"}))
    ReputationEntity.add_member(:reputation_entity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationEntityType, location_name: 'ReputationEntityType', traits: {"smithy.api#documentation" => "<p>The type of reputation entity. Currently, only <code>RESOURCE</code> type entities are supported.</p>"}))
    ReputationEntity.add_member(:reputation_management_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ReputationManagementPolicy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the reputation management policy applied to \n            this entity. This is an Amazon Web Services Amazon SES-managed policy.</p>"}))
    ReputationEntity.add_member(:customer_managed_status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusRecord, location_name: 'CustomerManagedStatus', traits: {"smithy.api#documentation" => "<p>The customer-managed status record for this reputation entity, including the \n            current status, cause description, and last updated timestamp.</p>"}))
    ReputationEntity.add_member(:aws_ses_managed_status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusRecord, location_name: 'AwsSesManagedStatus', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Amazon SES-managed status record for this reputation entity, including the \n            current status, cause description, and last updated timestamp.</p>"}))
    ReputationEntity.add_member(:sending_status_aggregate, Smithy::Schema::Shapes::ShapeRef.new(shape: SendingStatus, location_name: 'SendingStatusAggregate', traits: {"smithy.api#documentation" => "<p>The aggregate sending status that determines whether the entity is allowed to\n            send emails. This status is derived from both the customer-managed and Amazon Web Services Amazon SES-managed\n            statuses. If either the customer-managed status or the Amazon Web Services Amazon SES-managed status is\n            <code>DISABLED</code>, the aggregate status will be <code>DISABLED</code> and the entity\n            will not be allowed to send emails. When the customer-managed status is set to\n            <code>REINSTATED</code>, the entity can continue sending even if there are active\n            reputation findings, provided the Amazon Web Services Amazon SES-managed status also permits sending.\n            The entity can only send emails when both statuses permit sending.</p>"}))
    ReputationEntity.add_member(:reputation_impact, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationImpact, location_name: 'ReputationImpact', traits: {"smithy.api#documentation" => "<p>The reputation impact level for this entity, representing the highest impact \n            reputation finding currently active. Reputation findings can be retrieved using \n            the <code>ListRecommendations</code> operation.</p>"}))
    ReputationEntity.type = Types::ReputationEntity
    ReputationEntityFilter.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationEntityFilterKey)
    ReputationEntityFilter.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationEntityFilterValue)
    ReputationEntityFilterKey.add_member(:entity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENTITY_TYPE', traits: {"smithy.api#enumValue" => "ENTITY_TYPE"}))
    ReputationEntityFilterKey.add_member(:reputation_impact, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPUTATION_IMPACT', traits: {"smithy.api#enumValue" => "REPUTATION_IMPACT"}))
    ReputationEntityFilterKey.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATUS', traits: {"smithy.api#enumValue" => "SENDING_STATUS"}))
    ReputationEntityFilterKey.add_member(:entity_reference_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENTITY_REFERENCE_PREFIX', traits: {"smithy.api#enumValue" => "ENTITY_REFERENCE_PREFIX"}))
    ReputationEntityType.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE', traits: {"smithy.api#enumValue" => "RESOURCE"}))
    ReputationOptions.add_member(:reputation_metrics_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'ReputationMetricsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If <code>true</code>, tracking of reputation metrics is enabled for the configuration\n            set. If <code>false</code>, tracking of reputation metrics is disabled for the\n            configuration set.</p>"}))
    ReputationOptions.add_member(:last_fresh_start, Smithy::Schema::Shapes::ShapeRef.new(shape: LastFreshStart, location_name: 'LastFreshStart', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) when the reputation metrics were last given a fresh\n            start. When your account is given a fresh start, your reputation metrics are calculated\n            starting from the date of the fresh start.</p>"}))
    ReputationOptions.type = Types::ReputationOptions
    ResourceTenantMetadata.add_member(:tenant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantName, location_name: 'TenantName', traits: {"smithy.api#documentation" => "<p>The name of the tenant associated with the resource.</p>"}))
    ResourceTenantMetadata.add_member(:tenant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantId, location_name: 'TenantId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the tenant associated with the resource.</p>"}))
    ResourceTenantMetadata.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>"}))
    ResourceTenantMetadata.add_member(:associated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AssociatedTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time when the resource was associated with the tenant.</p>"}))
    ResourceTenantMetadata.type = Types::ResourceTenantMetadata
    ResourceTenantMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTenantMetadata)
    ResourceType.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_IDENTITY', traits: {"smithy.api#enumValue" => "EMAIL_IDENTITY"}))
    ResourceType.add_member(:configuration_set, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIGURATION_SET', traits: {"smithy.api#enumValue" => "CONFIGURATION_SET"}))
    ResourceType.add_member(:email_template, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_TEMPLATE', traits: {"smithy.api#enumValue" => "EMAIL_TEMPLATE"}))
    ReviewDetails.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the latest review of your account. The status can be one of the\n            following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code> – We have received your appeal and are in the\n                    process of reviewing it.</p>\n            </li>\n            <li>\n               <p>\n                  <code>GRANTED</code> – Your appeal has been reviewed and your production\n                    access has been granted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DENIED</code> – Your appeal has been reviewed and your production\n                    access has been denied.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> – An internal error occurred and we didn't receive\n                    your appeal. You can submit your appeal again.</p>\n            </li>\n         </ul>"}))
    ReviewDetails.add_member(:case_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CaseId, location_name: 'CaseId', traits: {"smithy.api#documentation" => "<p>The associated support center case ID (if any).</p>"}))
    ReviewDetails.type = Types::ReviewDetails
    ReviewStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ReviewStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ReviewStatus.add_member(:granted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GRANTED', traits: {"smithy.api#enumValue" => "GRANTED"}))
    ReviewStatus.add_member(:denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENIED', traits: {"smithy.api#enumValue" => "DENIED"}))
    Route.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The name of an AWS-Region.</p>", "smithy.api#required" => {}}))
    Route.type = Types::Route
    RouteDetails.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The name of an AWS-Region to be a secondary region for the multi-region endpoint (global-endpoint).</p>", "smithy.api#required" => {}}))
    RouteDetails.type = Types::RouteDetails
    Routes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Route)
    RoutesDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RouteDetails)
    SOARecord.add_member(:primary_name_server, Smithy::Schema::Shapes::ShapeRef.new(shape: PrimaryNameServer, location_name: 'PrimaryNameServer', traits: {"smithy.api#documentation" => "<p>Primary name server specified in the SOA record.</p>"}))
    SOARecord.add_member(:admin_email, Smithy::Schema::Shapes::ShapeRef.new(shape: AdminEmail, location_name: 'AdminEmail', traits: {"smithy.api#documentation" => "<p>Administrative contact email from the SOA record.</p>"}))
    SOARecord.add_member(:serial_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SerialNumber, location_name: 'SerialNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Serial number from the SOA record.</p>"}))
    SOARecord.type = Types::SOARecord
    ScalingMode.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    ScalingMode.add_member(:managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANAGED', traits: {"smithy.api#enumValue" => "MANAGED"}))
    SendBulkEmailRequest.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The email address to use as the \"From\" address for the email. The address that you\n            specify has to be verified.</p>"}))
    SendBulkEmailRequest.add_member(:from_email_address_identity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'FromEmailAddressIdentityArn', traits: {"smithy.api#documentation" => "<p>This parameter is used only for sending authorization. It is the ARN of the identity\n            that is associated with the sending authorization policy that permits you to use the\n            email address specified in the <code>FromEmailAddress</code> parameter.</p>\n         <p>For example, if the owner of example.com (which has ARN\n            arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that\n            authorizes you to use sender@example.com, then you would specify the\n                <code>FromEmailAddressIdentityArn</code> to be\n            arn:aws:ses:us-east-1:123456789012:identity/example.com, and the\n                <code>FromEmailAddress</code> to be sender@example.com.</p>\n         <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer\n                Guide</a>.</p>"}))
    SendBulkEmailRequest.add_member(:reply_to_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressList, location_name: 'ReplyToAddresses', traits: {"smithy.api#documentation" => "<p>The \"Reply-to\" email addresses for the message. When the recipient replies to the\n            message, each Reply-to address receives the reply.</p>"}))
    SendBulkEmailRequest.add_member(:feedback_forwarding_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'FeedbackForwardingEmailAddress', traits: {"smithy.api#documentation" => "<p>The address that you want bounce and complaint notifications to be sent to.</p>"}))
    SendBulkEmailRequest.add_member(:feedback_forwarding_email_address_identity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'FeedbackForwardingEmailAddressIdentityArn', traits: {"smithy.api#documentation" => "<p>This parameter is used only for sending authorization. It is the ARN of the identity\n            that is associated with the sending authorization policy that permits you to use the\n            email address specified in the <code>FeedbackForwardingEmailAddress</code>\n            parameter.</p>\n         <p>For example, if the owner of example.com (which has ARN\n            arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that\n            authorizes you to use feedback@example.com, then you would specify the\n                <code>FeedbackForwardingEmailAddressIdentityArn</code> to be\n            arn:aws:ses:us-east-1:123456789012:identity/example.com, and the\n                <code>FeedbackForwardingEmailAddress</code> to be feedback@example.com.</p>\n         <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer\n                Guide</a>.</p>"}))
    SendBulkEmailRequest.add_member(:default_email_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagList, location_name: 'DefaultEmailTags', traits: {"smithy.api#documentation" => "<p>A list of tags, in the form of name/value pairs, to apply to an email that you send\n            using the <code>SendEmail</code> operation. Tags correspond to characteristics of the\n            email that you define, so that you can publish email sending events.</p>"}))
    SendBulkEmailRequest.add_member(:default_content, Smithy::Schema::Shapes::ShapeRef.new(shape: BulkEmailContent, location_name: 'DefaultContent', traits: {"smithy.api#documentation" => "<p>An object that contains the body of the message. You can specify a template\n            message.</p>", "smithy.api#required" => {}}))
    SendBulkEmailRequest.add_member(:bulk_email_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: BulkEmailEntryList, location_name: 'BulkEmailEntries', traits: {"smithy.api#documentation" => "<p>The list of bulk email entry objects.</p>", "smithy.api#required" => {}}))
    SendBulkEmailRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to use when sending the email.</p>"}))
    SendBulkEmailRequest.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointId, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the multi-region endpoint (global-endpoint).</p>", "smithy.rules#contextParam" => {"name" => "EndpointId"}}))
    SendBulkEmailRequest.add_member(:tenant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantName, location_name: 'TenantName', traits: {"smithy.api#documentation" => "<p>The name of the tenant through which this bulk email will be sent.</p>\n         <note>\n            <p>\n                The email sending operation will only succeed if all referenced resources\n                (identities, configuration sets, and templates) are associated with this tenant.\n            </p>\n         </note>"}))
    SendBulkEmailRequest.type = Types::SendBulkEmailRequest
    SendBulkEmailResponse.add_member(:bulk_email_entry_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BulkEmailEntryResultList, location_name: 'BulkEmailEntryResults', traits: {"smithy.api#documentation" => "<p>One object per intended recipient. Check each response object and retry any messages\n            with a failure status.</p>", "smithy.api#required" => {}}))
    SendBulkEmailResponse.type = Types::SendBulkEmailResponse
    SendCustomVerificationEmailRequest.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The email address to verify.</p>", "smithy.api#required" => {}}))
    SendCustomVerificationEmailRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the custom verification email template to use when sending the\n            verification email.</p>", "smithy.api#required" => {}}))
    SendCustomVerificationEmailRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>Name of a configuration set to use when sending the verification email.</p>"}))
    SendCustomVerificationEmailRequest.type = Types::SendCustomVerificationEmailRequest
    SendCustomVerificationEmailResponse.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundMessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique message identifier returned from the\n                <code>SendCustomVerificationEmail</code> operation.</p>"}))
    SendCustomVerificationEmailResponse.type = Types::SendCustomVerificationEmailResponse
    SendEmailRequest.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The email address to use as the \"From\" address for the email. The address that you\n            specify has to be verified.\n            </p>"}))
    SendEmailRequest.add_member(:from_email_address_identity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'FromEmailAddressIdentityArn', traits: {"smithy.api#documentation" => "<p>This parameter is used only for sending authorization. It is the ARN of the identity\n            that is associated with the sending authorization policy that permits you to use the\n            email address specified in the <code>FromEmailAddress</code> parameter.</p>\n         <p>For example, if the owner of example.com (which has ARN\n            arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that\n            authorizes you to use sender@example.com, then you would specify the\n                <code>FromEmailAddressIdentityArn</code> to be\n            arn:aws:ses:us-east-1:123456789012:identity/example.com, and the\n                <code>FromEmailAddress</code> to be sender@example.com.</p>\n         <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer\n                Guide</a>.</p>\n         <p>For Raw emails, the <code>FromEmailAddressIdentityArn</code> value overrides the\n            X-SES-SOURCE-ARN and X-SES-FROM-ARN headers specified in raw email message\n            content.</p>"}))
    SendEmailRequest.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>An object that contains the recipients of the email message.</p>"}))
    SendEmailRequest.add_member(:reply_to_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressList, location_name: 'ReplyToAddresses', traits: {"smithy.api#documentation" => "<p>The \"Reply-to\" email addresses for the message. When the recipient replies to the\n            message, each Reply-to address receives the reply.</p>"}))
    SendEmailRequest.add_member(:feedback_forwarding_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'FeedbackForwardingEmailAddress', traits: {"smithy.api#documentation" => "<p>The address that you want bounce and complaint notifications to be sent to.</p>"}))
    SendEmailRequest.add_member(:feedback_forwarding_email_address_identity_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'FeedbackForwardingEmailAddressIdentityArn', traits: {"smithy.api#documentation" => "<p>This parameter is used only for sending authorization. It is the ARN of the identity\n            that is associated with the sending authorization policy that permits you to use the\n            email address specified in the <code>FeedbackForwardingEmailAddress</code>\n            parameter.</p>\n         <p>For example, if the owner of example.com (which has ARN\n            arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that\n            authorizes you to use feedback@example.com, then you would specify the\n                <code>FeedbackForwardingEmailAddressIdentityArn</code> to be\n            arn:aws:ses:us-east-1:123456789012:identity/example.com, and the\n                <code>FeedbackForwardingEmailAddress</code> to be feedback@example.com.</p>\n         <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer\n                Guide</a>.</p>"}))
    SendEmailRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>An object that contains the body of the message. You can send either a Simple message,\n            Raw message, or a Templated message.</p>", "smithy.api#required" => {}}))
    SendEmailRequest.add_member(:email_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagList, location_name: 'EmailTags', traits: {"smithy.api#documentation" => "<p>A list of tags, in the form of name/value pairs, to apply to an email that you send\n            using the <code>SendEmail</code> operation. Tags correspond to characteristics of the\n            email that you define, so that you can publish email sending events. </p>"}))
    SendEmailRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set to use when sending the email.</p>"}))
    SendEmailRequest.add_member(:endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointId, location_name: 'EndpointId', traits: {"smithy.api#documentation" => "<p>The ID of the multi-region endpoint (global-endpoint).</p>", "smithy.rules#contextParam" => {"name" => "EndpointId"}}))
    SendEmailRequest.add_member(:tenant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantName, location_name: 'TenantName', traits: {"smithy.api#documentation" => "<p>The name of the tenant through which this email will be sent.</p>\n         <note>\n            <p>The email sending operation will only succeed if all referenced resources\n                (identities, configuration sets, and templates) are associated with this tenant.\n            </p>\n         </note>"}))
    SendEmailRequest.add_member(:list_management_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagementOptions, location_name: 'ListManagementOptions', traits: {"smithy.api#documentation" => "<p>An object used to specify a list or topic to which an email belongs, which will be\n            used when a contact chooses to unsubscribe.</p>"}))
    SendEmailRequest.type = Types::SendEmailRequest
    SendEmailResponse.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundMessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the message that is generated when the message is\n            accepted.</p>\n         <note>\n            <p>It's possible for Amazon SES to accept a message without sending it. For example, this\n                can happen when the message that you're trying to send has an attachment that\n                contains a virus, or when you send a templated email that contains invalid\n                personalization content.</p>\n         </note>"}))
    SendEmailResponse.type = Types::SendEmailResponse
    SendQuota.add_member(:max24_hour_send, Smithy::Schema::Shapes::ShapeRef.new(shape: Max24HourSend, location_name: 'Max24HourSend', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of emails that you can send in the current Amazon Web Services Region over a\n            24-hour period. A value of -1 signifies an unlimited quota. (This value is also referred\n            to as your <i>sending quota</i>.)</p>"}))
    SendQuota.add_member(:max_send_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSendRate, location_name: 'MaxSendRate', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of emails that you can send per second in the current Amazon Web Services Region.\n            This value is also called your <i>maximum sending rate</i> or your\n                <i>maximum TPS (transactions per second) rate</i>.</p>"}))
    SendQuota.add_member(:sent_last24_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: SentLast24Hours, location_name: 'SentLast24Hours', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of emails sent from your Amazon SES account in the current Amazon Web Services Region over the\n            past 24 hours.</p>"}))
    SendQuota.type = Types::SendQuota
    SendingOptions.add_member(:sending_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'SendingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If <code>true</code>, email sending is enabled for the configuration set. If\n                <code>false</code>, email sending is disabled for the configuration set.</p>"}))
    SendingOptions.type = Types::SendingOptions
    SendingPausedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    SendingPausedException.type = Types::SendingPausedException
    SendingStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    SendingStatus.add_member(:reinstated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REINSTATED', traits: {"smithy.api#enumValue" => "REINSTATED"}))
    SendingStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    SnsDestination.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to publish email events to. For\n            more information about Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>", "smithy.api#required" => {}}))
    SnsDestination.type = Types::SnsDestination
    Status.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    Status.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    Status.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    Status.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    StatusRecord.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SendingStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current sending status. This can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – Sending is allowed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – Sending is prevented.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REINSTATED</code> – Sending is allowed even with active reputation findings.</p>\n            </li>\n         </ul>"}))
    StatusRecord.add_member(:cause, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCause, location_name: 'Cause', traits: {"smithy.api#documentation" => "<p>A description of the reason for the current status, or null if no specific \n            cause is available.</p>"}))
    StatusRecord.add_member(:last_updated_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp when this status was last updated.</p>"}))
    StatusRecord.type = Types::StatusRecord
    SubscriptionStatus.add_member(:opt_in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPT_IN', traits: {"smithy.api#enumValue" => "OPT_IN"}))
    SubscriptionStatus.add_member(:opt_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPT_OUT', traits: {"smithy.api#enumValue" => "OPT_OUT"}))
    SuppressedDestination.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The email address that is on the suppression list for your account.</p>", "smithy.api#required" => {}}))
    SuppressedDestination.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionListReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason that the address was added to the suppression list for your account.</p>", "smithy.api#required" => {}}))
    SuppressedDestination.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the suppressed destination was last updated, shown in Unix time\n            format.</p>", "smithy.api#required" => {}}))
    SuppressedDestination.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressedDestinationAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>An optional value that can contain additional information about the reasons that the\n            address was added to the suppression list for your account.</p>"}))
    SuppressedDestination.type = Types::SuppressedDestination
    SuppressedDestinationAttributes.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundMessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the email message that caused the email address to be added\n            to the suppression list for your account.</p>"}))
    SuppressedDestinationAttributes.add_member(:feedback_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FeedbackId, location_name: 'FeedbackId', traits: {"smithy.api#documentation" => "<p>A unique identifier that's generated when an email address is added to the suppression\n            list for your account.</p>"}))
    SuppressedDestinationAttributes.type = Types::SuppressedDestinationAttributes
    SuppressedDestinationSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressedDestinationSummary)
    SuppressedDestinationSummary.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The email address that's on the suppression list for your account.</p>", "smithy.api#required" => {}}))
    SuppressedDestinationSummary.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionListReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The reason that the address was added to the suppression list for your account.</p>", "smithy.api#required" => {}}))
    SuppressedDestinationSummary.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the suppressed destination was last updated, shown in Unix time\n            format.</p>", "smithy.api#required" => {}}))
    SuppressedDestinationSummary.type = Types::SuppressedDestinationSummary
    SuppressionAttributes.add_member(:suppressed_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionListReasons, location_name: 'SuppressedReasons', traits: {"smithy.api#documentation" => "<p>A list that contains the reasons that email addresses will be automatically added to\n            the suppression list for your account. This list can contain any or all of the\n            following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression\n                    list for your account when a message sent to that address results in a\n                    complaint.</p>\n            </li>\n            <li>\n               <p>\n                  <code>BOUNCE</code> – Amazon SES adds an email address to the suppression\n                    list for your account when a message sent to that address results in a hard\n                    bounce.</p>\n            </li>\n         </ul>"}))
    SuppressionAttributes.type = Types::SuppressionAttributes
    SuppressionListDestination.add_member(:suppression_list_import_action, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionListImportAction, location_name: 'SuppressionListImportAction', traits: {"smithy.api#documentation" => "<p>The type of action to perform on the address. The following are possible values:</p>\n         <ul>\n            <li>\n               <p>PUT: add the addresses to the suppression list. If the record already exists,\n                    it will override it with the new value.</p>\n            </li>\n            <li>\n               <p>DELETE: remove the addresses from the suppression list.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    SuppressionListDestination.type = Types::SuppressionListDestination
    SuppressionListImportAction.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    SuppressionListImportAction.add_member(:put, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUT', traits: {"smithy.api#enumValue" => "PUT"}))
    SuppressionListReason.add_member(:bounce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOUNCE', traits: {"smithy.api#enumValue" => "BOUNCE"}))
    SuppressionListReason.add_member(:complaint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLAINT', traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    SuppressionListReasons.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionListReason)
    SuppressionOptions.add_member(:suppressed_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressionListReasons, location_name: 'SuppressedReasons', traits: {"smithy.api#documentation" => "<p>A list that contains the reasons that email addresses are automatically added to the\n            suppression list for your account. This list can contain any or all of the\n            following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression\n                    list for your account when a message sent to that address results in a\n                    complaint.</p>\n            </li>\n            <li>\n               <p>\n                  <code>BOUNCE</code> – Amazon SES adds an email address to the suppression\n                    list for your account when a message sent to that address results in a hard\n                    bounce.</p>\n            </li>\n         </ul>"}))
    SuppressionOptions.type = Types::SuppressionOptions
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>One part of a key-value pair that defines a tag. The maximum length of a tag key is\n            128 characters. The minimum length is 1 character.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The optional part of a key-value pair that defines a tag. The maximum length of a tag\n            value is 256 characters. The minimum length is 0 characters. If you don't want a\n            resource to have a specific tag value, don't specify a value for this parameter. If you\n            don't specify a value, Amazon SES sets the value to an empty string.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to add one or more tags\n            to.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of the tags that you want to add to the resource. A tag consists of a required\n            tag key (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum\n            length of a tag key is 128 characters. The maximum length of a tag value is 256\n            characters.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Template.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template. You will refer to this name when you send email using the\n                <code>SendEmail</code> or <code>SendBulkEmail</code> operations.\n        </p>"}))
    Template.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the template.</p>"}))
    Template.add_member(:template_content, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateContent, location_name: 'TemplateContent', traits: {"smithy.api#documentation" => "<p>The content of the template.</p>\n         <note>\n            <p>Amazon SES supports only simple substitions when you send email using the  \n                <code>SendEmail</code> or <code>SendBulkEmail</code> operations and \n                you provide the full template content in the request.</p>\n         </note>"}))
    Template.add_member(:template_data, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateData, location_name: 'TemplateData', traits: {"smithy.api#documentation" => "<p>An object that defines the values to use for message variables in the template. This\n            object is a set of key-value pairs. Each key defines a message variable in the template.\n            The corresponding value defines the value to use for that variable.</p>"}))
    Template.add_member(:headers, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageHeaderList, location_name: 'Headers', traits: {"smithy.api#documentation" => "<p>The list of message headers that will be added to the email message.</p>"}))
    Template.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentList, location_name: 'Attachments', traits: {"smithy.api#documentation" => "<p> The List of attachments to include in your email. All recipients will receive the same attachments.</p>"}))
    Template.type = Types::Template
    Tenant.add_member(:tenant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantName, location_name: 'TenantName', traits: {"smithy.api#documentation" => "<p>The name of the tenant.</p>"}))
    Tenant.add_member(:tenant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantId, location_name: 'TenantId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the tenant.</p>"}))
    Tenant.add_member(:tenant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TenantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the tenant.</p>"}))
    Tenant.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time when the tenant was created.</p>"}))
    Tenant.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of objects that define the tags (keys and values) associated with the tenant.</p>"}))
    Tenant.add_member(:sending_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SendingStatus, location_name: 'SendingStatus', traits: {"smithy.api#documentation" => "<p>The status of sending capability for the tenant.</p>"}))
    Tenant.type = Types::Tenant
    TenantInfo.add_member(:tenant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantName, location_name: 'TenantName', traits: {"smithy.api#documentation" => "<p>The name of the tenant.</p>"}))
    TenantInfo.add_member(:tenant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantId, location_name: 'TenantId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the tenant.</p>"}))
    TenantInfo.add_member(:tenant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TenantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the tenant.</p>"}))
    TenantInfo.add_member(:created_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTimestamp', traits: {"smithy.api#documentation" => "<p>The date and time when the tenant was created.</p>"}))
    TenantInfo.type = Types::TenantInfo
    TenantInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TenantInfo)
    TenantResource.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource associated with the tenant. Valid values are <code>EMAIL_IDENTITY</code>,\n            <code>CONFIGURATION_SET</code>, or <code>EMAIL_TEMPLATE</code>.</p>"}))
    TenantResource.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource associated with the tenant.</p>"}))
    TenantResource.type = Types::TenantResource
    TenantResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TenantResource)
    TestRenderEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestRenderEmailTemplateRequest.add_member(:template_data, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateData, location_name: 'TemplateData', traits: {"smithy.api#documentation" => "<p>A list of replacement values to apply to the template. This parameter is a JSON\n            object, typically consisting of key-value pairs in which the keys correspond to\n            replacement tags in the email template.</p>", "smithy.api#required" => {}}))
    TestRenderEmailTemplateRequest.type = Types::TestRenderEmailTemplateRequest
    TestRenderEmailTemplateResponse.add_member(:rendered_template, Smithy::Schema::Shapes::ShapeRef.new(shape: RenderedEmailTemplate, location_name: 'RenderedTemplate', traits: {"smithy.api#documentation" => "<p>The complete MIME message rendered by applying the data in the\n                <code>TemplateData</code> parameter to the template specified in the TemplateName\n            parameter.</p>", "smithy.api#required" => {}}))
    TestRenderEmailTemplateResponse.type = Types::TestRenderEmailTemplateResponse
    TimestampList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp)
    TlsPolicy.add_member(:require, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRE', traits: {"smithy.api#enumValue" => "REQUIRE"}))
    TlsPolicy.add_member(:optional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIONAL', traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    Topic.add_member(:topic_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicName, location_name: 'TopicName', traits: {"smithy.api#documentation" => "<p>The name of the topic.</p>", "smithy.api#required" => {}}))
    Topic.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The name of the topic the contact will see.</p>", "smithy.api#required" => {}}))
    Topic.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of what the topic is about, which the contact will see.</p>"}))
    Topic.add_member(:default_subscription_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionStatus, location_name: 'DefaultSubscriptionStatus', traits: {"smithy.api#documentation" => "<p>The default subscription status to be applied to a contact if the contact has not\n            noted their preference for subscribing to a topic.</p>", "smithy.api#required" => {}}))
    Topic.type = Types::Topic
    TopicFilter.add_member(:topic_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicName, location_name: 'TopicName', traits: {"smithy.api#documentation" => "<p>The name of a topic on which you wish to apply the filter.</p>"}))
    TopicFilter.add_member(:use_default_if_preference_unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: UseDefaultIfPreferenceUnavailable, location_name: 'UseDefaultIfPreferenceUnavailable', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Notes that the default subscription status should be applied to a contact because the\n            contact has not noted their preference for subscribing to a topic.</p>"}))
    TopicFilter.type = Types::TopicFilter
    TopicPreference.add_member(:topic_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicName, location_name: 'TopicName', traits: {"smithy.api#documentation" => "<p>The name of the topic.</p>", "smithy.api#required" => {}}))
    TopicPreference.add_member(:subscription_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionStatus, location_name: 'SubscriptionStatus', traits: {"smithy.api#documentation" => "<p>The contact's subscription status to a topic which is either <code>OPT_IN</code> or\n                <code>OPT_OUT</code>.</p>", "smithy.api#required" => {}}))
    TopicPreference.type = Types::TopicPreference
    TopicPreferenceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TopicPreference)
    Topics.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Topic)
    TrackingOptions.add_member(:custom_redirect_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRedirectDomain, location_name: 'CustomRedirectDomain', traits: {"smithy.api#documentation" => "<p>The domain to use for tracking open and click events.</p>", "smithy.api#required" => {}}))
    TrackingOptions.add_member(:https_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: HttpsPolicy, location_name: 'HttpsPolicy', traits: {"smithy.api#documentation" => "<p>The https policy to use for tracking open and click events.</p>"}))
    TrackingOptions.type = Types::TrackingOptions
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to remove one or more\n            tags from.</p>", "smithy.api#httpQuery" => "ResourceArn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tags (tag keys) that you want to remove from the resource. When you specify a tag\n            key, the action removes both that key and its associated tag value.</p>\n         <p>To remove more than one tag from the resource, append the <code>TagKeys</code>\n            parameter and argument for each additional tag to remove, separated by an ampersand. For\n            example:\n                <code>/v2/email/tags?ResourceArn=ResourceArn&TagKeys=Key1&TagKeys=Key2</code>\n         </p>", "smithy.api#httpQuery" => "TagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that contains the event destination to\n            modify.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>The name of the event destination.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationDefinition, location_name: 'EventDestination', traits: {"smithy.api#documentation" => "<p>An object that defines the event destination.</p>", "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.type = Types::UpdateConfigurationSetEventDestinationRequest
    UpdateConfigurationSetEventDestinationResponse.type = Types::UpdateConfigurationSetEventDestinationResponse
    UpdateContactListRequest.add_member(:contact_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListName, location_name: 'ContactListName', traits: {"smithy.api#documentation" => "<p>The name of the contact list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContactListRequest.add_member(:topics, Smithy::Schema::Shapes::ShapeRef.new(shape: Topics, location_name: 'Topics', traits: {"smithy.api#documentation" => "<p>An interest group, theme, or label within a list. A contact list can have multiple\n            topics.</p>"}))
    UpdateContactListRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of what the contact list is about.</p>"}))
    UpdateContactListRequest.type = Types::UpdateContactListRequest
    UpdateContactListResponse.type = Types::UpdateContactListResponse
    UpdateContactRequest.add_member(:contact_list_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactListName, location_name: 'ContactListName', traits: {"smithy.api#documentation" => "<p>The name of the contact list.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContactRequest.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>The contact's email address.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContactRequest.add_member(:topic_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: TopicPreferenceList, location_name: 'TopicPreferences', traits: {"smithy.api#documentation" => "<p>The contact's preference for being opted-in to or opted-out of a topic.</p>"}))
    UpdateContactRequest.add_member(:unsubscribe_all, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsubscribeAll, location_name: 'UnsubscribeAll', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A boolean value status noting if the contact is unsubscribed from all contact list\n            topics.</p>"}))
    UpdateContactRequest.add_member(:attributes_data, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributesData, location_name: 'AttributesData', traits: {"smithy.api#documentation" => "<p>The attribute data attached to a contact.</p>"}))
    UpdateContactRequest.type = Types::UpdateContactRequest
    UpdateContactResponse.type = Types::UpdateContactResponse
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the custom verification email template that you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The email address that the custom verification email is sent from.</p>", "smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_subject, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateSubject, location_name: 'TemplateSubject', traits: {"smithy.api#documentation" => "<p>The subject line of the custom verification email.</p>", "smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_content, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateContent, location_name: 'TemplateContent', traits: {"smithy.api#documentation" => "<p>The content of the custom verification email. The total size of the email must be less\n            than 10 MB. The message body may contain HTML, with some limitations. For more\n            information, see <a href=\"https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom-faq\">Custom verification email frequently asked questions</a> in the <i>Amazon SES\n                Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:success_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessRedirectionURL, location_name: 'SuccessRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is successfully verified.</p>", "smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:failure_redirection_url, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureRedirectionURL, location_name: 'FailureRedirectionURL', traits: {"smithy.api#documentation" => "<p>The URL that the recipient of the verification email is sent to if his or her address\n            is not successfully verified.</p>", "smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.type = Types::UpdateCustomVerificationEmailTemplateRequest
    UpdateCustomVerificationEmailTemplateResponse.type = Types::UpdateCustomVerificationEmailTemplateResponse
    UpdateEmailIdentityPolicyRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The email identity.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEmailIdentityPolicyRequest.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'PolicyName', traits: {"smithy.api#documentation" => "<p>The name of the policy.</p>\n         <p>The policy name cannot exceed 64 characters and can only include alphanumeric\n            characters, dashes, and underscores.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEmailIdentityPolicyRequest.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p>\n         <p> For information about the syntax of sending authorization policies, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html\">Amazon SES Developer\n                Guide</a>.</p>", "smithy.api#required" => {}}))
    UpdateEmailIdentityPolicyRequest.type = Types::UpdateEmailIdentityPolicyRequest
    UpdateEmailIdentityPolicyResponse.type = Types::UpdateEmailIdentityPolicyResponse
    UpdateEmailTemplateRequest.add_member(:template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateName, location_name: 'TemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEmailTemplateRequest.add_member(:template_content, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailTemplateContent, location_name: 'TemplateContent', traits: {"smithy.api#documentation" => "<p>The content of the email template, composed of a subject line, an HTML part, and a\n            text-only part.</p>", "smithy.api#required" => {}}))
    UpdateEmailTemplateRequest.type = Types::UpdateEmailTemplateRequest
    UpdateEmailTemplateResponse.type = Types::UpdateEmailTemplateResponse
    UpdateReputationEntityCustomerManagedStatusRequest.add_member(:reputation_entity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationEntityType, location_name: 'ReputationEntityType', traits: {"smithy.api#documentation" => "<p>The type of reputation entity. Currently, only <code>RESOURCE</code> type entities are supported.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReputationEntityCustomerManagedStatusRequest.add_member(:reputation_entity_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationEntityReference, location_name: 'ReputationEntityReference', traits: {"smithy.api#documentation" => "<p>The unique identifier for the reputation entity. For resource-type entities, \n            this is the Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReputationEntityCustomerManagedStatusRequest.add_member(:sending_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SendingStatus, location_name: 'SendingStatus', traits: {"smithy.api#documentation" => "<p>The new customer-managed sending status for the reputation entity. This can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – Allow sending for this entity.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – Prevent sending for this entity.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REINSTATED</code> – Allow sending even if there are active reputation findings.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    UpdateReputationEntityCustomerManagedStatusRequest.type = Types::UpdateReputationEntityCustomerManagedStatusRequest
    UpdateReputationEntityCustomerManagedStatusResponse.type = Types::UpdateReputationEntityCustomerManagedStatusResponse
    UpdateReputationEntityPolicyRequest.add_member(:reputation_entity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationEntityType, location_name: 'ReputationEntityType', traits: {"smithy.api#documentation" => "<p>The type of reputation entity. Currently, only <code>RESOURCE</code> type entities are supported.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReputationEntityPolicyRequest.add_member(:reputation_entity_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationEntityReference, location_name: 'ReputationEntityReference', traits: {"smithy.api#documentation" => "<p>The unique identifier for the reputation entity. For resource-type entities, \n            this is the Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReputationEntityPolicyRequest.add_member(:reputation_entity_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ReputationEntityPolicy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the reputation management policy to apply \n            to this entity. This is an Amazon Web Services Amazon SES-managed policy.</p>", "smithy.api#required" => {}}))
    UpdateReputationEntityPolicyRequest.type = Types::UpdateReputationEntityPolicyRequest
    UpdateReputationEntityPolicyResponse.type = Types::UpdateReputationEntityPolicyResponse
    VdmAttributes.add_member(:vdm_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureStatus, location_name: 'VdmEnabled', traits: {"smithy.api#documentation" => "<p>Specifies the status of your VDM configuration. Can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code> – Amazon SES enables VDM for your account.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> – Amazon SES disables VDM for your account.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    VdmAttributes.add_member(:dashboard_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardAttributes, location_name: 'DashboardAttributes', traits: {"smithy.api#documentation" => "<p>Specifies additional settings for your VDM configuration as applicable to the\n            Dashboard.</p>"}))
    VdmAttributes.add_member(:guardian_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardianAttributes, location_name: 'GuardianAttributes', traits: {"smithy.api#documentation" => "<p>Specifies additional settings for your VDM configuration as applicable to the\n            Guardian.</p>"}))
    VdmAttributes.type = Types::VdmAttributes
    VdmOptions.add_member(:dashboard_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DashboardOptions, location_name: 'DashboardOptions', traits: {"smithy.api#documentation" => "<p>Specifies additional settings for your VDM configuration as applicable to the\n            Dashboard.</p>"}))
    VdmOptions.add_member(:guardian_options, Smithy::Schema::Shapes::ShapeRef.new(shape: GuardianOptions, location_name: 'GuardianOptions', traits: {"smithy.api#documentation" => "<p>Specifies additional settings for your VDM configuration as applicable to the\n            Guardian.</p>"}))
    VdmOptions.type = Types::VdmOptions
    VerificationError.add_member(:service_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_ERROR', traits: {"smithy.api#enumValue" => "SERVICE_ERROR"}))
    VerificationError.add_member(:dns_server_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DNS_SERVER_ERROR', traits: {"smithy.api#enumValue" => "DNS_SERVER_ERROR"}))
    VerificationError.add_member(:host_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOST_NOT_FOUND', traits: {"smithy.api#enumValue" => "HOST_NOT_FOUND"}))
    VerificationError.add_member(:type_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TYPE_NOT_FOUND', traits: {"smithy.api#enumValue" => "TYPE_NOT_FOUND"}))
    VerificationError.add_member(:invalid_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_VALUE', traits: {"smithy.api#enumValue" => "INVALID_VALUE"}))
    VerificationError.add_member(:replication_access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLICATION_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "REPLICATION_ACCESS_DENIED"}))
    VerificationError.add_member(:replication_primary_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLICATION_PRIMARY_NOT_FOUND', traits: {"smithy.api#enumValue" => "REPLICATION_PRIMARY_NOT_FOUND"}))
    VerificationError.add_member(:replication_primary_byo_dkim_not_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLICATION_PRIMARY_BYO_DKIM_NOT_SUPPORTED', traits: {"smithy.api#enumValue" => "REPLICATION_PRIMARY_BYO_DKIM_NOT_SUPPORTED"}))
    VerificationError.add_member(:replication_replica_as_primary_not_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLICATION_REPLICA_AS_PRIMARY_NOT_SUPPORTED', traits: {"smithy.api#enumValue" => "REPLICATION_REPLICA_AS_PRIMARY_NOT_SUPPORTED"}))
    VerificationError.add_member(:replication_primary_invalid_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLICATION_PRIMARY_INVALID_REGION', traits: {"smithy.api#enumValue" => "REPLICATION_PRIMARY_INVALID_REGION"}))
    VerificationInfo.add_member(:last_checked_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastCheckedTimestamp', traits: {"smithy.api#documentation" => "<p>The last time a verification attempt was made for this identity.</p>"}))
    VerificationInfo.add_member(:last_success_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastSuccessTimestamp', traits: {"smithy.api#documentation" => "<p>The last time a successful verification was made for this identity.</p>"}))
    VerificationInfo.add_member(:error_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VerificationError, location_name: 'ErrorType', traits: {"smithy.api#documentation" => "<p>Provides the reason for the failure describing why Amazon SES was not able to successfully\n            verify the identity. Below are the possible values: </p>\n         <ul>\n            <li>\n               <p>\n                  <code>INVALID_VALUE</code> – Amazon SES was able to find the record, but the\n                    value contained within the record was invalid. Ensure you have published the\n                    correct values for the record.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TYPE_NOT_FOUND</code> – The queried hostname exists but does not\n                    have the requested type of DNS record. Ensure that you have published the\n                    correct type of DNS record.</p>\n            </li>\n            <li>\n               <p>\n                  <code>HOST_NOT_FOUND</code> – The queried hostname does not exist or was\n                    not reachable at the time of the request. Ensure that you have published the\n                    required DNS record(s). </p>\n            </li>\n            <li>\n               <p>\n                  <code>SERVICE_ERROR</code> – A temporary issue is preventing Amazon SES from\n                    determining the verification status of the domain.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DNS_SERVER_ERROR</code> – The DNS server encountered an issue and\n                    was unable to complete the request.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REPLICATION_ACCESS_DENIED</code> – The verification failed because the user does not\n                    have the required permissions to replicate the DKIM key from the primary region. Ensure you have the\n                    necessary permissions in both primary and replica regions.\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>REPLICATION_PRIMARY_NOT_FOUND</code> – The verification failed because no corresponding\n                    identity was found in the specified primary region. Ensure the identity exists in the primary region\n                    before attempting replication.\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>REPLICATION_PRIMARY_BYO_DKIM_NOT_SUPPORTED</code> – The verification failed because the\n                    identity in the primary region is configured with Bring Your Own DKIM (BYODKIM). DKIM key\n                    replication is only supported for identities using Easy DKIM.\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>REPLICATION_REPLICA_AS_PRIMARY_NOT_SUPPORTED</code> – The verification failed because\n                    the specified primary identity is a replica of another identity, and multi-level replication is not\n                    supported; the primary identity must be a non-replica identity.\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>REPLICATION_PRIMARY_INVALID_REGION</code> – The verification failed due to an invalid\n                    primary region specified. Ensure you provide a valid Amazon Web Services region where Amazon SES is available and different\n                    from the replica region.\n                </p>\n            </li>\n         </ul>"}))
    VerificationInfo.add_member(:soa_record, Smithy::Schema::Shapes::ShapeRef.new(shape: SOARecord, location_name: 'SOARecord', traits: {"smithy.api#documentation" => "<p>An object that contains information about the start of authority (SOA) record\n            associated with the identity.</p>"}))
    VerificationInfo.type = Types::VerificationInfo
    VerificationStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    VerificationStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    VerificationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    VerificationStatus.add_member(:temporary_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEMPORARY_FAILURE', traits: {"smithy.api#enumValue" => "TEMPORARY_FAILURE"}))
    VerificationStatus.add_member(:not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_STARTED', traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    VolumeStatistics.add_member(:inbox_raw_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'InboxRawCount', traits: {"smithy.api#documentation" => "<p>The total number of emails that arrived in recipients' inboxes.</p>"}))
    VolumeStatistics.add_member(:spam_raw_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'SpamRawCount', traits: {"smithy.api#documentation" => "<p>The total number of emails that arrived in recipients' spam or junk mail\n            folders.</p>"}))
    VolumeStatistics.add_member(:projected_inbox, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'ProjectedInbox', traits: {"smithy.api#documentation" => "<p>An estimate of the percentage of emails sent from the current domain that will arrive\n            in recipients' inboxes.</p>"}))
    VolumeStatistics.add_member(:projected_spam, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'ProjectedSpam', traits: {"smithy.api#documentation" => "<p>An estimate of the percentage of emails sent from the current domain that will arrive\n            in recipients' spam or junk mail folders.</p>"}))
    VolumeStatistics.type = Types::VolumeStatistics
    WarmupStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    WarmupStatus.add_member(:done, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DONE', traits: {"smithy.api#enumValue" => "DONE"}))
    WarmupStatus.add_member(:not_applicable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_APPLICABLE', traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))

    SimpleEmailServiceV2 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sesv2#SimpleEmailService_v2"
      service.name = "SimpleEmailServiceV2"
      service.version = "2019-09-27"
      service.traits = {"aws.api#service" => {"sdkId" => "SESv2", "arnNamespace" => "ses", "cloudFormationName" => "SESv2", "cloudTrailEventSource" => "sesv2.amazonaws.com", "endpointPrefix" => "email"}, "aws.auth#sigv4" => {"name" => "ses"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Simple Email Service"}
      service.add_operation(:batch_get_metric_data, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#BatchGetMetricData"
        operation.name = "BatchGetMetricData"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetMetricDataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetMetricDataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/metrics/batch", "code" => 200}}
      end)
      service.add_operation(:cancel_export_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CancelExportJob"
        operation.name = "CancelExportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelExportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelExportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/export-jobs/{JobId}/cancel", "code" => 200}}
      end)
      service.add_operation(:create_configuration_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateConfigurationSet"
        operation.name = "CreateConfigurationSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/configuration-sets", "code" => 200}}
      end)
      service.add_operation(:create_configuration_set_event_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateConfigurationSetEventDestination"
        operation.name = "CreateConfigurationSetEventDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetEventDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetEventDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations", "code" => 200}}
      end)
      service.add_operation(:create_contact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateContact"
        operation.name = "CreateContact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContactRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContactResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/contact-lists/{ContactListName}/contacts", "code" => 200}}
      end)
      service.add_operation(:create_contact_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateContactList"
        operation.name = "CreateContactList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContactListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContactListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/contact-lists", "code" => 200}}
      end)
      service.add_operation(:create_custom_verification_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateCustomVerificationEmailTemplate"
        operation.name = "CreateCustomVerificationEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomVerificationEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomVerificationEmailTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/custom-verification-email-templates", "code" => 200}}
      end)
      service.add_operation(:create_dedicated_ip_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateDedicatedIpPool"
        operation.name = "CreateDedicatedIpPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDedicatedIpPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDedicatedIpPoolResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/dedicated-ip-pools", "code" => 200}}
      end)
      service.add_operation(:create_deliverability_test_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateDeliverabilityTestReport"
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
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/deliverability-dashboard/test", "code" => 200}}
      end)
      service.add_operation(:create_email_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateEmailIdentity"
        operation.name = "CreateEmailIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEmailIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEmailIdentityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/identities", "code" => 200}}
      end)
      service.add_operation(:create_email_identity_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateEmailIdentityPolicy"
        operation.name = "CreateEmailIdentityPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEmailIdentityPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEmailIdentityPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}", "code" => 200}}
      end)
      service.add_operation(:create_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateEmailTemplate"
        operation.name = "CreateEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEmailTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/templates", "code" => 200}}
      end)
      service.add_operation(:create_export_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateExportJob"
        operation.name = "CreateExportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateExportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/export-jobs", "code" => 200}}
      end)
      service.add_operation(:create_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateImportJob"
        operation.name = "CreateImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/import-jobs", "code" => 200}}
      end)
      service.add_operation(:create_multi_region_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateMultiRegionEndpoint"
        operation.name = "CreateMultiRegionEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMultiRegionEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMultiRegionEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/multi-region-endpoints", "code" => 200}}
      end)
      service.add_operation(:create_tenant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateTenant"
        operation.name = "CreateTenant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTenantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTenantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tenants", "code" => 200}}
      end)
      service.add_operation(:create_tenant_resource_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateTenantResourceAssociation"
        operation.name = "CreateTenantResourceAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTenantResourceAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTenantResourceAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tenants/resources", "code" => 200}}
      end)
      service.add_operation(:delete_configuration_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteConfigurationSet"
        operation.name = "DeleteConfigurationSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}", "code" => 200}}
      end)
      service.add_operation(:delete_configuration_set_event_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteConfigurationSetEventDestination"
        operation.name = "DeleteConfigurationSetEventDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetEventDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetEventDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", "code" => 200}}
      end)
      service.add_operation(:delete_contact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteContact"
        operation.name = "DeleteContact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContactRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContactResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}", "code" => 200}}
      end)
      service.add_operation(:delete_contact_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteContactList"
        operation.name = "DeleteContactList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContactListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContactListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/contact-lists/{ContactListName}", "code" => 200}}
      end)
      service.add_operation(:delete_custom_verification_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteCustomVerificationEmailTemplate"
        operation.name = "DeleteCustomVerificationEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomVerificationEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomVerificationEmailTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/custom-verification-email-templates/{TemplateName}", "code" => 200}}
      end)
      service.add_operation(:delete_dedicated_ip_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteDedicatedIpPool"
        operation.name = "DeleteDedicatedIpPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDedicatedIpPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDedicatedIpPoolResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/dedicated-ip-pools/{PoolName}", "code" => 200}}
      end)
      service.add_operation(:delete_email_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteEmailIdentity"
        operation.name = "DeleteEmailIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailIdentityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/identities/{EmailIdentity}", "code" => 200}}
      end)
      service.add_operation(:delete_email_identity_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteEmailIdentityPolicy"
        operation.name = "DeleteEmailIdentityPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailIdentityPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailIdentityPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}", "code" => 200}}
      end)
      service.add_operation(:delete_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteEmailTemplate"
        operation.name = "DeleteEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/templates/{TemplateName}", "code" => 200}}
      end)
      service.add_operation(:delete_multi_region_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteMultiRegionEndpoint"
        operation.name = "DeleteMultiRegionEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMultiRegionEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMultiRegionEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/multi-region-endpoints/{EndpointName}", "code" => 200}}
      end)
      service.add_operation(:delete_suppressed_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteSuppressedDestination"
        operation.name = "DeleteSuppressedDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSuppressedDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSuppressedDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/suppression/addresses/{EmailAddress}", "code" => 200}}
      end)
      service.add_operation(:delete_tenant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteTenant"
        operation.name = "DeleteTenant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTenantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTenantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tenants/delete", "code" => 200}}
      end)
      service.add_operation(:delete_tenant_resource_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteTenantResourceAssociation"
        operation.name = "DeleteTenantResourceAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTenantResourceAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTenantResourceAssociationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tenants/resources/delete", "code" => 200}}
      end)
      service.add_operation(:get_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetAccount"
        operation.name = "GetAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/account", "code" => 200}}
      end)
      service.add_operation(:get_blacklist_reports, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetBlacklistReports"
        operation.name = "GetBlacklistReports"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBlacklistReportsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBlacklistReportsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/deliverability-dashboard/blacklist-report", "code" => 200}}
      end)
      service.add_operation(:get_configuration_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetConfigurationSet"
        operation.name = "GetConfigurationSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}", "code" => 200}}
      end)
      service.add_operation(:get_configuration_set_event_destinations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetConfigurationSetEventDestinations"
        operation.name = "GetConfigurationSetEventDestinations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationSetEventDestinationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationSetEventDestinationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations", "code" => 200}}
      end)
      service.add_operation(:get_contact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetContact"
        operation.name = "GetContact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContactRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContactResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}", "code" => 200}}
      end)
      service.add_operation(:get_contact_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetContactList"
        operation.name = "GetContactList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContactListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContactListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/contact-lists/{ContactListName}", "code" => 200}}
      end)
      service.add_operation(:get_custom_verification_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetCustomVerificationEmailTemplate"
        operation.name = "GetCustomVerificationEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomVerificationEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomVerificationEmailTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/custom-verification-email-templates/{TemplateName}", "code" => 200}}
      end)
      service.add_operation(:get_dedicated_ip, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetDedicatedIp"
        operation.name = "GetDedicatedIp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDedicatedIpRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDedicatedIpResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/dedicated-ips/{Ip}", "code" => 200}}
      end)
      service.add_operation(:get_dedicated_ip_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetDedicatedIpPool"
        operation.name = "GetDedicatedIpPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDedicatedIpPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDedicatedIpPoolResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/dedicated-ip-pools/{PoolName}", "code" => 200}}
      end)
      service.add_operation(:get_dedicated_ips, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetDedicatedIps"
        operation.name = "GetDedicatedIps"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDedicatedIpsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDedicatedIpsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/dedicated-ips", "code" => 200}}
        operation[:paginator] = Paginators::GetDedicatedIps.new
      end)
      service.add_operation(:get_deliverability_dashboard_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetDeliverabilityDashboardOptions"
        operation.name = "GetDeliverabilityDashboardOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliverabilityDashboardOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliverabilityDashboardOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/deliverability-dashboard", "code" => 200}}
      end)
      service.add_operation(:get_deliverability_test_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetDeliverabilityTestReport"
        operation.name = "GetDeliverabilityTestReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliverabilityTestReportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliverabilityTestReportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/deliverability-dashboard/test-reports/{ReportId}", "code" => 200}}
      end)
      service.add_operation(:get_domain_deliverability_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetDomainDeliverabilityCampaign"
        operation.name = "GetDomainDeliverabilityCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainDeliverabilityCampaignRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainDeliverabilityCampaignResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/deliverability-dashboard/campaigns/{CampaignId}", "code" => 200}}
      end)
      service.add_operation(:get_domain_statistics_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetDomainStatisticsReport"
        operation.name = "GetDomainStatisticsReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainStatisticsReportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainStatisticsReportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/deliverability-dashboard/statistics-report/{Domain}", "code" => 200}}
      end)
      service.add_operation(:get_email_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetEmailIdentity"
        operation.name = "GetEmailIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailIdentityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/identities/{EmailIdentity}", "code" => 200}}
      end)
      service.add_operation(:get_email_identity_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetEmailIdentityPolicies"
        operation.name = "GetEmailIdentityPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailIdentityPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailIdentityPoliciesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/identities/{EmailIdentity}/policies", "code" => 200}}
      end)
      service.add_operation(:get_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetEmailTemplate"
        operation.name = "GetEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/templates/{TemplateName}", "code" => 200}}
      end)
      service.add_operation(:get_export_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetExportJob"
        operation.name = "GetExportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/export-jobs/{JobId}", "code" => 200}}
      end)
      service.add_operation(:get_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetImportJob"
        operation.name = "GetImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/import-jobs/{JobId}", "code" => 200}}
      end)
      service.add_operation(:get_message_insights, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetMessageInsights"
        operation.name = "GetMessageInsights"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMessageInsightsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMessageInsightsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/insights/{MessageId}", "code" => 200}}
      end)
      service.add_operation(:get_multi_region_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetMultiRegionEndpoint"
        operation.name = "GetMultiRegionEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMultiRegionEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMultiRegionEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/multi-region-endpoints/{EndpointName}", "code" => 200}}
      end)
      service.add_operation(:get_reputation_entity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetReputationEntity"
        operation.name = "GetReputationEntity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReputationEntityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReputationEntityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}", "code" => 200}}
      end)
      service.add_operation(:get_suppressed_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetSuppressedDestination"
        operation.name = "GetSuppressedDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSuppressedDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSuppressedDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/suppression/addresses/{EmailAddress}", "code" => 200}}
      end)
      service.add_operation(:get_tenant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetTenant"
        operation.name = "GetTenant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTenantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTenantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tenants/get", "code" => 200}}
      end)
      service.add_operation(:list_configuration_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListConfigurationSets"
        operation.name = "ListConfigurationSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/configuration-sets", "code" => 200}}
        operation[:paginator] = Paginators::ListConfigurationSets.new
      end)
      service.add_operation(:list_contact_lists, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListContactLists"
        operation.name = "ListContactLists"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContactListsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContactListsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/contact-lists", "code" => 200}}
        operation[:paginator] = Paginators::ListContactLists.new
      end)
      service.add_operation(:list_contacts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListContacts"
        operation.name = "ListContacts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContactsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContactsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/contact-lists/{ContactListName}/contacts/list", "code" => 200}}
        operation[:paginator] = Paginators::ListContacts.new
      end)
      service.add_operation(:list_custom_verification_email_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListCustomVerificationEmailTemplates"
        operation.name = "ListCustomVerificationEmailTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomVerificationEmailTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomVerificationEmailTemplatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/custom-verification-email-templates", "code" => 200}}
        operation[:paginator] = Paginators::ListCustomVerificationEmailTemplates.new
      end)
      service.add_operation(:list_dedicated_ip_pools, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListDedicatedIpPools"
        operation.name = "ListDedicatedIpPools"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDedicatedIpPoolsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDedicatedIpPoolsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/dedicated-ip-pools", "code" => 200}}
        operation[:paginator] = Paginators::ListDedicatedIpPools.new
      end)
      service.add_operation(:list_deliverability_test_reports, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListDeliverabilityTestReports"
        operation.name = "ListDeliverabilityTestReports"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeliverabilityTestReportsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeliverabilityTestReportsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/deliverability-dashboard/test-reports", "code" => 200}}
        operation[:paginator] = Paginators::ListDeliverabilityTestReports.new
      end)
      service.add_operation(:list_domain_deliverability_campaigns, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListDomainDeliverabilityCampaigns"
        operation.name = "ListDomainDeliverabilityCampaigns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainDeliverabilityCampaignsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainDeliverabilityCampaignsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainDeliverabilityCampaigns.new
      end)
      service.add_operation(:list_email_identities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListEmailIdentities"
        operation.name = "ListEmailIdentities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEmailIdentitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEmailIdentitiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/identities", "code" => 200}}
        operation[:paginator] = Paginators::ListEmailIdentities.new
      end)
      service.add_operation(:list_email_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListEmailTemplates"
        operation.name = "ListEmailTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEmailTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEmailTemplatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/templates", "code" => 200}}
        operation[:paginator] = Paginators::ListEmailTemplates.new
      end)
      service.add_operation(:list_export_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListExportJobs"
        operation.name = "ListExportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListExportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/list-export-jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListExportJobs.new
      end)
      service.add_operation(:list_import_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListImportJobs"
        operation.name = "ListImportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/import-jobs/list", "code" => 200}}
        operation[:paginator] = Paginators::ListImportJobs.new
      end)
      service.add_operation(:list_multi_region_endpoints, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListMultiRegionEndpoints"
        operation.name = "ListMultiRegionEndpoints"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMultiRegionEndpointsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMultiRegionEndpointsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/multi-region-endpoints", "code" => 200}}
        operation[:paginator] = Paginators::ListMultiRegionEndpoints.new
      end)
      service.add_operation(:list_recommendations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListRecommendations"
        operation.name = "ListRecommendations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommendationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommendationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/vdm/recommendations", "code" => 200}}
        operation[:paginator] = Paginators::ListRecommendations.new
      end)
      service.add_operation(:list_reputation_entities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListReputationEntities"
        operation.name = "ListReputationEntities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReputationEntitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReputationEntitiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/reputation/entities", "code" => 200}}
        operation[:paginator] = Paginators::ListReputationEntities.new
      end)
      service.add_operation(:list_resource_tenants, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListResourceTenants"
        operation.name = "ListResourceTenants"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceTenantsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceTenantsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/resources/tenants/list", "code" => 200}}
        operation[:paginator] = Paginators::ListResourceTenants.new
      end)
      service.add_operation(:list_suppressed_destinations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListSuppressedDestinations"
        operation.name = "ListSuppressedDestinations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSuppressedDestinationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSuppressedDestinationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/suppression/addresses", "code" => 200}}
        operation[:paginator] = Paginators::ListSuppressedDestinations.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/tags", "code" => 200}}
      end)
      service.add_operation(:list_tenant_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListTenantResources"
        operation.name = "ListTenantResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTenantResourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTenantResourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tenants/resources/list", "code" => 200}}
        operation[:paginator] = Paginators::ListTenantResources.new
      end)
      service.add_operation(:list_tenants, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListTenants"
        operation.name = "ListTenants"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTenantsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTenantsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tenants/list", "code" => 200}}
        operation[:paginator] = Paginators::ListTenants.new
      end)
      service.add_operation(:put_account_dedicated_ip_warmup_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutAccountDedicatedIpWarmupAttributes"
        operation.name = "PutAccountDedicatedIpWarmupAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountDedicatedIpWarmupAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountDedicatedIpWarmupAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/account/dedicated-ips/warmup", "code" => 200}}
      end)
      service.add_operation(:put_account_details, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutAccountDetails"
        operation.name = "PutAccountDetails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountDetailsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountDetailsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/account/details", "code" => 200}}
      end)
      service.add_operation(:put_account_sending_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutAccountSendingAttributes"
        operation.name = "PutAccountSendingAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountSendingAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountSendingAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/account/sending", "code" => 200}}
      end)
      service.add_operation(:put_account_suppression_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutAccountSuppressionAttributes"
        operation.name = "PutAccountSuppressionAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountSuppressionAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountSuppressionAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/account/suppression", "code" => 200}}
      end)
      service.add_operation(:put_account_vdm_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutAccountVdmAttributes"
        operation.name = "PutAccountVdmAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountVdmAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountVdmAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/account/vdm", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_archiving_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutConfigurationSetArchivingOptions"
        operation.name = "PutConfigurationSetArchivingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetArchivingOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetArchivingOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/archiving-options", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_configuration_set_delivery_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutConfigurationSetDeliveryOptions"
        operation.name = "PutConfigurationSetDeliveryOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetDeliveryOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetDeliveryOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/delivery-options", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_reputation_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutConfigurationSetReputationOptions"
        operation.name = "PutConfigurationSetReputationOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetReputationOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetReputationOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/reputation-options", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_sending_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutConfigurationSetSendingOptions"
        operation.name = "PutConfigurationSetSendingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetSendingOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetSendingOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/sending", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_suppression_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutConfigurationSetSuppressionOptions"
        operation.name = "PutConfigurationSetSuppressionOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetSuppressionOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetSuppressionOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/suppression-options", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_tracking_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutConfigurationSetTrackingOptions"
        operation.name = "PutConfigurationSetTrackingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetTrackingOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetTrackingOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/tracking-options", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_vdm_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutConfigurationSetVdmOptions"
        operation.name = "PutConfigurationSetVdmOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetVdmOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetVdmOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/vdm-options", "code" => 200}}
      end)
      service.add_operation(:put_dedicated_ip_in_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutDedicatedIpInPool"
        operation.name = "PutDedicatedIpInPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDedicatedIpInPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDedicatedIpInPoolResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/dedicated-ips/{Ip}/pool", "code" => 200}}
      end)
      service.add_operation(:put_dedicated_ip_pool_scaling_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutDedicatedIpPoolScalingAttributes"
        operation.name = "PutDedicatedIpPoolScalingAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDedicatedIpPoolScalingAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDedicatedIpPoolScalingAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/dedicated-ip-pools/{PoolName}/scaling", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_dedicated_ip_warmup_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutDedicatedIpWarmupAttributes"
        operation.name = "PutDedicatedIpWarmupAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDedicatedIpWarmupAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDedicatedIpWarmupAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/dedicated-ips/{Ip}/warmup", "code" => 200}}
      end)
      service.add_operation(:put_deliverability_dashboard_option, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutDeliverabilityDashboardOption"
        operation.name = "PutDeliverabilityDashboardOption"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDeliverabilityDashboardOptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDeliverabilityDashboardOptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/deliverability-dashboard", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_configuration_set_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutEmailIdentityConfigurationSetAttributes"
        operation.name = "PutEmailIdentityConfigurationSetAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityConfigurationSetAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityConfigurationSetAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/identities/{EmailIdentity}/configuration-set", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_dkim_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutEmailIdentityDkimAttributes"
        operation.name = "PutEmailIdentityDkimAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityDkimAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityDkimAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/identities/{EmailIdentity}/dkim", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_dkim_signing_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutEmailIdentityDkimSigningAttributes"
        operation.name = "PutEmailIdentityDkimSigningAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityDkimSigningAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityDkimSigningAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/identities/{EmailIdentity}/dkim/signing", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_feedback_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutEmailIdentityFeedbackAttributes"
        operation.name = "PutEmailIdentityFeedbackAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityFeedbackAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityFeedbackAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/identities/{EmailIdentity}/feedback", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_mail_from_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutEmailIdentityMailFromAttributes"
        operation.name = "PutEmailIdentityMailFromAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityMailFromAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityMailFromAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/identities/{EmailIdentity}/mail-from", "code" => 200}}
      end)
      service.add_operation(:put_suppressed_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutSuppressedDestination"
        operation.name = "PutSuppressedDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSuppressedDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutSuppressedDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/suppression/addresses", "code" => 200}}
      end)
      service.add_operation(:send_bulk_email, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#SendBulkEmail"
        operation.name = "SendBulkEmail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendBulkEmailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendBulkEmailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSuspendedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainNotVerifiedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MessageRejected)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SendingPausedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/outbound-bulk-emails", "code" => 200}}
      end)
      service.add_operation(:send_custom_verification_email, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#SendCustomVerificationEmail"
        operation.name = "SendCustomVerificationEmail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendCustomVerificationEmailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendCustomVerificationEmailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainNotVerifiedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MessageRejected)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SendingPausedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/outbound-custom-verification-emails", "code" => 200}}
      end)
      service.add_operation(:send_email, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#SendEmail"
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
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/outbound-emails", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tags", "code" => 200}}
      end)
      service.add_operation(:test_render_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#TestRenderEmailTemplate"
        operation.name = "TestRenderEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TestRenderEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TestRenderEmailTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/templates/{TemplateName}/render", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/tags", "code" => 200}}
      end)
      service.add_operation(:update_configuration_set_event_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateConfigurationSetEventDestination"
        operation.name = "UpdateConfigurationSetEventDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationSetEventDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationSetEventDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", "code" => 200}}
      end)
      service.add_operation(:update_contact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateContact"
        operation.name = "UpdateContact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContactRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContactResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}", "code" => 200}}
      end)
      service.add_operation(:update_contact_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateContactList"
        operation.name = "UpdateContactList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContactListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateContactListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/contact-lists/{ContactListName}", "code" => 200}}
      end)
      service.add_operation(:update_custom_verification_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateCustomVerificationEmailTemplate"
        operation.name = "UpdateCustomVerificationEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomVerificationEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCustomVerificationEmailTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/custom-verification-email-templates/{TemplateName}", "code" => 200}}
      end)
      service.add_operation(:update_email_identity_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateEmailIdentityPolicy"
        operation.name = "UpdateEmailIdentityPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEmailIdentityPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEmailIdentityPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}", "code" => 200}}
      end)
      service.add_operation(:update_email_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateEmailTemplate"
        operation.name = "UpdateEmailTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEmailTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEmailTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/templates/{TemplateName}", "code" => 200}}
      end)
      service.add_operation(:update_reputation_entity_customer_managed_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateReputationEntityCustomerManagedStatus"
        operation.name = "UpdateReputationEntityCustomerManagedStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReputationEntityCustomerManagedStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReputationEntityCustomerManagedStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}/customer-managed-status", "code" => 200}}
      end)
      service.add_operation(:update_reputation_entity_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateReputationEntityPolicy"
        operation.name = "UpdateReputationEntityPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReputationEntityPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReputationEntityPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}/policy", "code" => 200}}
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
