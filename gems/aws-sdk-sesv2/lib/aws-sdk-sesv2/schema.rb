# frozen_string_literal: true

# This is generated code!

module Aws::SESv2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#AccountDetails", name: "AccountDetails")
    AccountSuspendedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#AccountSuspendedException", name: "AccountSuspendedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AdditionalContactEmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#AdditionalContactEmailAddress", name: "AdditionalContactEmailAddress", traits: {"smithy.api#length" => {"min" => 6, "max" => 254}, "smithy.api#pattern" => "^(.+)@(.+)$", "smithy.api#sensitive" => {}})
    AdditionalContactEmailAddresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#AdditionalContactEmailAddresses", name: "AdditionalContactEmailAddresses", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}, "smithy.api#sensitive" => {}})
    AdminEmail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#AdminEmail", name: "AdminEmail")
    AlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#AlreadyExistsException", name: "AlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1}})
    ArchiveArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ArchiveArn", name: "ArchiveArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "^arn:(aws|aws-[a-z-]+):ses:[a-z]{2}-[a-z-]+-[0-9]:[0-9]{1,20}:mailmanager-archive/a-[a-z0-9]{24,62}$"})
    ArchivingOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ArchivingOptions", name: "ArchivingOptions")
    Attachment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Attachment", name: "Attachment")
    AttachmentContentDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#AttachmentContentDescription", name: "AttachmentContentDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    AttachmentContentDisposition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#AttachmentContentDisposition", name: "AttachmentContentDisposition")
    AttachmentContentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#AttachmentContentId", name: "AttachmentContentId", traits: {"smithy.api#length" => {"min" => 1, "max" => 78}})
    AttachmentContentTransferEncoding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#AttachmentContentTransferEncoding", name: "AttachmentContentTransferEncoding")
    AttachmentContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#AttachmentContentType", name: "AttachmentContentType", traits: {"smithy.api#length" => {"min" => 1, "max" => 78}})
    AttachmentFileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#AttachmentFileName", name: "AttachmentFileName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    AttachmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#AttachmentList", name: "AttachmentList")
    AttributesData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#AttributesData", name: "AttributesData")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchGetMetricDataQueries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#BatchGetMetricDataQueries", name: "BatchGetMetricDataQueries", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    BatchGetMetricDataQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#BatchGetMetricDataQuery", name: "BatchGetMetricDataQuery")
    BatchGetMetricDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#BatchGetMetricDataRequest", name: "BatchGetMetricDataRequest")
    BatchGetMetricDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#BatchGetMetricDataResponse", name: "BatchGetMetricDataResponse")
    BehaviorOnMxFailure = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#BehaviorOnMxFailure", name: "BehaviorOnMxFailure")
    BlacklistEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#BlacklistEntries", name: "BlacklistEntries")
    BlacklistEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#BlacklistEntry", name: "BlacklistEntry")
    BlacklistItemName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#BlacklistItemName", name: "BlacklistItemName")
    BlacklistItemNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#BlacklistItemNames", name: "BlacklistItemNames")
    BlacklistReport = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sesv2#BlacklistReport", name: "BlacklistReport")
    BlacklistingDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#BlacklistingDescription", name: "BlacklistingDescription")
    Body = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Body", name: "Body")
    Bounce = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Bounce", name: "Bounce")
    BounceSubType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#BounceSubType", name: "BounceSubType")
    BounceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#BounceType", name: "BounceType")
    BulkEmailContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#BulkEmailContent", name: "BulkEmailContent")
    BulkEmailEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#BulkEmailEntry", name: "BulkEmailEntry")
    BulkEmailEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#BulkEmailEntryList", name: "BulkEmailEntryList")
    BulkEmailEntryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#BulkEmailEntryResult", name: "BulkEmailEntryResult")
    BulkEmailEntryResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#BulkEmailEntryResultList", name: "BulkEmailEntryResultList")
    BulkEmailStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#BulkEmailStatus", name: "BulkEmailStatus")
    CampaignId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#CampaignId", name: "CampaignId")
    CancelExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CancelExportJobRequest", name: "CancelExportJobRequest")
    CancelExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CancelExportJobResponse", name: "CancelExportJobResponse")
    CaseId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#CaseId", name: "CaseId")
    Charset = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#Charset", name: "Charset")
    CloudWatchDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CloudWatchDestination", name: "CloudWatchDestination")
    CloudWatchDimensionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CloudWatchDimensionConfiguration", name: "CloudWatchDimensionConfiguration")
    CloudWatchDimensionConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#CloudWatchDimensionConfigurations", name: "CloudWatchDimensionConfigurations")
    Complaint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Complaint", name: "Complaint")
    ComplaintFeedbackType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ComplaintFeedbackType", name: "ComplaintFeedbackType")
    ComplaintSubType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ComplaintSubType", name: "ComplaintSubType")
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ConfigurationSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ConfigurationSetName", name: "ConfigurationSetName")
    ConfigurationSetNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#ConfigurationSetNameList", name: "ConfigurationSetNameList")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Contact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Contact", name: "Contact")
    ContactLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#ContactLanguage", name: "ContactLanguage")
    ContactList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ContactList", name: "ContactList")
    ContactListDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ContactListDestination", name: "ContactListDestination")
    ContactListImportAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#ContactListImportAction", name: "ContactListImportAction")
    ContactListName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ContactListName", name: "ContactListName")
    Content = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Content", name: "Content")
    Counter = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sesv2#Counter", name: "Counter", traits: {"smithy.api#default" => 0})
    CreateConfigurationSetEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateConfigurationSetEventDestinationRequest", name: "CreateConfigurationSetEventDestinationRequest")
    CreateConfigurationSetEventDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateConfigurationSetEventDestinationResponse", name: "CreateConfigurationSetEventDestinationResponse")
    CreateConfigurationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateConfigurationSetRequest", name: "CreateConfigurationSetRequest")
    CreateConfigurationSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateConfigurationSetResponse", name: "CreateConfigurationSetResponse")
    CreateContactListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateContactListRequest", name: "CreateContactListRequest")
    CreateContactListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateContactListResponse", name: "CreateContactListResponse")
    CreateContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateContactRequest", name: "CreateContactRequest")
    CreateContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateContactResponse", name: "CreateContactResponse")
    CreateCustomVerificationEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateCustomVerificationEmailTemplateRequest", name: "CreateCustomVerificationEmailTemplateRequest")
    CreateCustomVerificationEmailTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateCustomVerificationEmailTemplateResponse", name: "CreateCustomVerificationEmailTemplateResponse")
    CreateDedicatedIpPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateDedicatedIpPoolRequest", name: "CreateDedicatedIpPoolRequest")
    CreateDedicatedIpPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateDedicatedIpPoolResponse", name: "CreateDedicatedIpPoolResponse")
    CreateDeliverabilityTestReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateDeliverabilityTestReportRequest", name: "CreateDeliverabilityTestReportRequest")
    CreateDeliverabilityTestReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateDeliverabilityTestReportResponse", name: "CreateDeliverabilityTestReportResponse")
    CreateEmailIdentityPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateEmailIdentityPolicyRequest", name: "CreateEmailIdentityPolicyRequest")
    CreateEmailIdentityPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateEmailIdentityPolicyResponse", name: "CreateEmailIdentityPolicyResponse")
    CreateEmailIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateEmailIdentityRequest", name: "CreateEmailIdentityRequest")
    CreateEmailIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateEmailIdentityResponse", name: "CreateEmailIdentityResponse")
    CreateEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateEmailTemplateRequest", name: "CreateEmailTemplateRequest")
    CreateEmailTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateEmailTemplateResponse", name: "CreateEmailTemplateResponse")
    CreateExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateExportJobRequest", name: "CreateExportJobRequest")
    CreateExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateExportJobResponse", name: "CreateExportJobResponse")
    CreateImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateImportJobRequest", name: "CreateImportJobRequest")
    CreateImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateImportJobResponse", name: "CreateImportJobResponse")
    CreateMultiRegionEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateMultiRegionEndpointRequest", name: "CreateMultiRegionEndpointRequest")
    CreateMultiRegionEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateMultiRegionEndpointResponse", name: "CreateMultiRegionEndpointResponse")
    CreateTenantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateTenantRequest", name: "CreateTenantRequest")
    CreateTenantResourceAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateTenantResourceAssociationRequest", name: "CreateTenantResourceAssociationRequest")
    CreateTenantResourceAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateTenantResourceAssociationResponse", name: "CreateTenantResourceAssociationResponse")
    CreateTenantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CreateTenantResponse", name: "CreateTenantResponse")
    CustomRedirectDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#CustomRedirectDomain", name: "CustomRedirectDomain")
    CustomVerificationEmailTemplateMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CustomVerificationEmailTemplateMetadata", name: "CustomVerificationEmailTemplateMetadata")
    CustomVerificationEmailTemplatesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#CustomVerificationEmailTemplatesList", name: "CustomVerificationEmailTemplatesList")
    DailyVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DailyVolume", name: "DailyVolume")
    DailyVolumes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#DailyVolumes", name: "DailyVolumes")
    DashboardAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DashboardAttributes", name: "DashboardAttributes")
    DashboardOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DashboardOptions", name: "DashboardOptions")
    DataFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#DataFormat", name: "DataFormat")
    DedicatedIp = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DedicatedIp", name: "DedicatedIp")
    DedicatedIpList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#DedicatedIpList", name: "DedicatedIpList")
    DedicatedIpPool = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DedicatedIpPool", name: "DedicatedIpPool")
    DefaultDimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#DefaultDimensionValue", name: "DefaultDimensionValue")
    DeleteConfigurationSetEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteConfigurationSetEventDestinationRequest", name: "DeleteConfigurationSetEventDestinationRequest")
    DeleteConfigurationSetEventDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteConfigurationSetEventDestinationResponse", name: "DeleteConfigurationSetEventDestinationResponse")
    DeleteConfigurationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteConfigurationSetRequest", name: "DeleteConfigurationSetRequest")
    DeleteConfigurationSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteConfigurationSetResponse", name: "DeleteConfigurationSetResponse")
    DeleteContactListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteContactListRequest", name: "DeleteContactListRequest")
    DeleteContactListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteContactListResponse", name: "DeleteContactListResponse")
    DeleteContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteContactRequest", name: "DeleteContactRequest")
    DeleteContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteContactResponse", name: "DeleteContactResponse")
    DeleteCustomVerificationEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteCustomVerificationEmailTemplateRequest", name: "DeleteCustomVerificationEmailTemplateRequest")
    DeleteCustomVerificationEmailTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteCustomVerificationEmailTemplateResponse", name: "DeleteCustomVerificationEmailTemplateResponse")
    DeleteDedicatedIpPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteDedicatedIpPoolRequest", name: "DeleteDedicatedIpPoolRequest")
    DeleteDedicatedIpPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteDedicatedIpPoolResponse", name: "DeleteDedicatedIpPoolResponse")
    DeleteEmailIdentityPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteEmailIdentityPolicyRequest", name: "DeleteEmailIdentityPolicyRequest")
    DeleteEmailIdentityPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteEmailIdentityPolicyResponse", name: "DeleteEmailIdentityPolicyResponse")
    DeleteEmailIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteEmailIdentityRequest", name: "DeleteEmailIdentityRequest")
    DeleteEmailIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteEmailIdentityResponse", name: "DeleteEmailIdentityResponse")
    DeleteEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteEmailTemplateRequest", name: "DeleteEmailTemplateRequest")
    DeleteEmailTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteEmailTemplateResponse", name: "DeleteEmailTemplateResponse")
    DeleteMultiRegionEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteMultiRegionEndpointRequest", name: "DeleteMultiRegionEndpointRequest")
    DeleteMultiRegionEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteMultiRegionEndpointResponse", name: "DeleteMultiRegionEndpointResponse")
    DeleteSuppressedDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteSuppressedDestinationRequest", name: "DeleteSuppressedDestinationRequest")
    DeleteSuppressedDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteSuppressedDestinationResponse", name: "DeleteSuppressedDestinationResponse")
    DeleteTenantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteTenantRequest", name: "DeleteTenantRequest")
    DeleteTenantResourceAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteTenantResourceAssociationRequest", name: "DeleteTenantResourceAssociationRequest")
    DeleteTenantResourceAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteTenantResourceAssociationResponse", name: "DeleteTenantResourceAssociationResponse")
    DeleteTenantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeleteTenantResponse", name: "DeleteTenantResponse")
    DeliverabilityDashboardAccountStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#DeliverabilityDashboardAccountStatus", name: "DeliverabilityDashboardAccountStatus")
    DeliverabilityTestReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeliverabilityTestReport", name: "DeliverabilityTestReport")
    DeliverabilityTestReports = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#DeliverabilityTestReports", name: "DeliverabilityTestReports")
    DeliverabilityTestStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#DeliverabilityTestStatus", name: "DeliverabilityTestStatus")
    DeliverabilityTestSubject = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#DeliverabilityTestSubject", name: "DeliverabilityTestSubject")
    DeliveryEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#DeliveryEventType", name: "DeliveryEventType")
    DeliveryOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DeliveryOptions", name: "DeliveryOptions")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#Description", name: "Description")
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Destination", name: "Destination")
    Details = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Details", name: "Details")
    DiagnosticCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#DiagnosticCode", name: "DiagnosticCode")
    DimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#DimensionName", name: "DimensionName")
    DimensionValueSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#DimensionValueSource", name: "DimensionValueSource")
    Dimensions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sesv2#Dimensions", name: "Dimensions", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#DisplayName", name: "DisplayName")
    DkimAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DkimAttributes", name: "DkimAttributes")
    DkimSigningAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DkimSigningAttributes", name: "DkimSigningAttributes")
    DkimSigningAttributesOrigin = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#DkimSigningAttributesOrigin", name: "DkimSigningAttributesOrigin")
    DkimSigningKeyLength = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#DkimSigningKeyLength", name: "DkimSigningKeyLength")
    DkimStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#DkimStatus", name: "DkimStatus")
    DnsToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#DnsToken", name: "DnsToken")
    DnsTokenList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#DnsTokenList", name: "DnsTokenList")
    Domain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#Domain", name: "Domain")
    DomainDeliverabilityCampaign = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DomainDeliverabilityCampaign", name: "DomainDeliverabilityCampaign")
    DomainDeliverabilityCampaignList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#DomainDeliverabilityCampaignList", name: "DomainDeliverabilityCampaignList")
    DomainDeliverabilityTrackingOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DomainDeliverabilityTrackingOption", name: "DomainDeliverabilityTrackingOption")
    DomainDeliverabilityTrackingOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#DomainDeliverabilityTrackingOptions", name: "DomainDeliverabilityTrackingOptions")
    DomainIspPlacement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DomainIspPlacement", name: "DomainIspPlacement")
    DomainIspPlacements = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#DomainIspPlacements", name: "DomainIspPlacements")
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#EmailAddress", name: "EmailAddress")
    EmailAddressFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#EmailAddressFilterList", name: "EmailAddressFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    EmailAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#EmailAddressList", name: "EmailAddressList")
    EmailContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#EmailContent", name: "EmailContent")
    EmailInsights = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#EmailInsights", name: "EmailInsights")
    EmailInsightsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#EmailInsightsList", name: "EmailInsightsList")
    EmailSubject = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#EmailSubject", name: "EmailSubject", traits: {"smithy.api#length" => {"min" => 1, "max" => 998}, "smithy.api#sensitive" => {}})
    EmailSubjectFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#EmailSubjectFilterList", name: "EmailSubjectFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    EmailTemplateContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#EmailTemplateContent", name: "EmailTemplateContent")
    EmailTemplateData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#EmailTemplateData", name: "EmailTemplateData", traits: {"smithy.api#length" => {"min" => 0, "max" => 262144}})
    EmailTemplateHtml = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#EmailTemplateHtml", name: "EmailTemplateHtml")
    EmailTemplateMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#EmailTemplateMetadata", name: "EmailTemplateMetadata")
    EmailTemplateMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#EmailTemplateMetadataList", name: "EmailTemplateMetadataList")
    EmailTemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#EmailTemplateName", name: "EmailTemplateName", traits: {"smithy.api#length" => {"min" => 1}})
    EmailTemplateSubject = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#EmailTemplateSubject", name: "EmailTemplateSubject")
    EmailTemplateText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#EmailTemplateText", name: "EmailTemplateText")
    Enabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sesv2#Enabled", name: "Enabled", traits: {"smithy.api#default" => false})
    EnabledWrapper = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sesv2#EnabledWrapper", name: "EnabledWrapper")
    EndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#EndpointId", name: "EndpointId")
    EndpointName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#EndpointName", name: "EndpointName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w\\-_]+$"})
    EngagementEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#EngagementEventType", name: "EngagementEventType")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ErrorMessage", name: "ErrorMessage")
    Esp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#Esp", name: "Esp")
    Esps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#Esps", name: "Esps")
    EventBridgeDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#EventBridgeDestination", name: "EventBridgeDestination")
    EventDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#EventDestination", name: "EventDestination")
    EventDestinationDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#EventDestinationDefinition", name: "EventDestinationDefinition")
    EventDestinationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#EventDestinationName", name: "EventDestinationName")
    EventDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#EventDestinations", name: "EventDestinations")
    EventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#EventDetails", name: "EventDetails")
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#EventType", name: "EventType")
    EventTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#EventTypes", name: "EventTypes")
    ExportDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ExportDataSource", name: "ExportDataSource")
    ExportDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ExportDestination", name: "ExportDestination")
    ExportDimensionValue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#ExportDimensionValue", name: "ExportDimensionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ExportDimensions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sesv2#ExportDimensions", name: "ExportDimensions", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    ExportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ExportJobSummary", name: "ExportJobSummary")
    ExportJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#ExportJobSummaryList", name: "ExportJobSummaryList")
    ExportMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ExportMetric", name: "ExportMetric")
    ExportMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#ExportMetrics", name: "ExportMetrics", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ExportSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#ExportSourceType", name: "ExportSourceType")
    ExportStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ExportStatistics", name: "ExportStatistics")
    ExportedRecordsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sesv2#ExportedRecordsCount", name: "ExportedRecordsCount")
    FailedRecordsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sesv2#FailedRecordsCount", name: "FailedRecordsCount")
    FailedRecordsS3Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#FailedRecordsS3Url", name: "FailedRecordsS3Url")
    FailureInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#FailureInfo", name: "FailureInfo")
    FailureRedirectionURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#FailureRedirectionURL", name: "FailureRedirectionURL")
    FeatureStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#FeatureStatus", name: "FeatureStatus")
    FeedbackId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#FeedbackId", name: "FeedbackId")
    GeneralEnforcementStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#GeneralEnforcementStatus", name: "GeneralEnforcementStatus")
    GetAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetAccountRequest", name: "GetAccountRequest")
    GetAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetAccountResponse", name: "GetAccountResponse")
    GetBlacklistReportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetBlacklistReportsRequest", name: "GetBlacklistReportsRequest")
    GetBlacklistReportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetBlacklistReportsResponse", name: "GetBlacklistReportsResponse")
    GetConfigurationSetEventDestinationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetConfigurationSetEventDestinationsRequest", name: "GetConfigurationSetEventDestinationsRequest")
    GetConfigurationSetEventDestinationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetConfigurationSetEventDestinationsResponse", name: "GetConfigurationSetEventDestinationsResponse")
    GetConfigurationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetConfigurationSetRequest", name: "GetConfigurationSetRequest")
    GetConfigurationSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetConfigurationSetResponse", name: "GetConfigurationSetResponse")
    GetContactListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetContactListRequest", name: "GetContactListRequest")
    GetContactListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetContactListResponse", name: "GetContactListResponse")
    GetContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetContactRequest", name: "GetContactRequest")
    GetContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetContactResponse", name: "GetContactResponse")
    GetCustomVerificationEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetCustomVerificationEmailTemplateRequest", name: "GetCustomVerificationEmailTemplateRequest")
    GetCustomVerificationEmailTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetCustomVerificationEmailTemplateResponse", name: "GetCustomVerificationEmailTemplateResponse")
    GetDedicatedIpPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetDedicatedIpPoolRequest", name: "GetDedicatedIpPoolRequest")
    GetDedicatedIpPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetDedicatedIpPoolResponse", name: "GetDedicatedIpPoolResponse")
    GetDedicatedIpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetDedicatedIpRequest", name: "GetDedicatedIpRequest")
    GetDedicatedIpResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetDedicatedIpResponse", name: "GetDedicatedIpResponse")
    GetDedicatedIpsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetDedicatedIpsRequest", name: "GetDedicatedIpsRequest")
    GetDedicatedIpsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetDedicatedIpsResponse", name: "GetDedicatedIpsResponse")
    GetDeliverabilityDashboardOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetDeliverabilityDashboardOptionsRequest", name: "GetDeliverabilityDashboardOptionsRequest")
    GetDeliverabilityDashboardOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetDeliverabilityDashboardOptionsResponse", name: "GetDeliverabilityDashboardOptionsResponse")
    GetDeliverabilityTestReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetDeliverabilityTestReportRequest", name: "GetDeliverabilityTestReportRequest")
    GetDeliverabilityTestReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetDeliverabilityTestReportResponse", name: "GetDeliverabilityTestReportResponse")
    GetDomainDeliverabilityCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetDomainDeliverabilityCampaignRequest", name: "GetDomainDeliverabilityCampaignRequest")
    GetDomainDeliverabilityCampaignResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetDomainDeliverabilityCampaignResponse", name: "GetDomainDeliverabilityCampaignResponse")
    GetDomainStatisticsReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetDomainStatisticsReportRequest", name: "GetDomainStatisticsReportRequest")
    GetDomainStatisticsReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetDomainStatisticsReportResponse", name: "GetDomainStatisticsReportResponse")
    GetEmailIdentityPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetEmailIdentityPoliciesRequest", name: "GetEmailIdentityPoliciesRequest")
    GetEmailIdentityPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetEmailIdentityPoliciesResponse", name: "GetEmailIdentityPoliciesResponse")
    GetEmailIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetEmailIdentityRequest", name: "GetEmailIdentityRequest")
    GetEmailIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetEmailIdentityResponse", name: "GetEmailIdentityResponse")
    GetEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetEmailTemplateRequest", name: "GetEmailTemplateRequest")
    GetEmailTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetEmailTemplateResponse", name: "GetEmailTemplateResponse")
    GetExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetExportJobRequest", name: "GetExportJobRequest")
    GetExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetExportJobResponse", name: "GetExportJobResponse")
    GetImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetImportJobRequest", name: "GetImportJobRequest")
    GetImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetImportJobResponse", name: "GetImportJobResponse")
    GetMessageInsightsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetMessageInsightsRequest", name: "GetMessageInsightsRequest")
    GetMessageInsightsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetMessageInsightsResponse", name: "GetMessageInsightsResponse")
    GetMultiRegionEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetMultiRegionEndpointRequest", name: "GetMultiRegionEndpointRequest")
    GetMultiRegionEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetMultiRegionEndpointResponse", name: "GetMultiRegionEndpointResponse")
    GetReputationEntityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetReputationEntityRequest", name: "GetReputationEntityRequest")
    GetReputationEntityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetReputationEntityResponse", name: "GetReputationEntityResponse")
    GetSuppressedDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetSuppressedDestinationRequest", name: "GetSuppressedDestinationRequest")
    GetSuppressedDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetSuppressedDestinationResponse", name: "GetSuppressedDestinationResponse")
    GetTenantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetTenantRequest", name: "GetTenantRequest")
    GetTenantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetTenantResponse", name: "GetTenantResponse")
    GuardianAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GuardianAttributes", name: "GuardianAttributes")
    GuardianOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GuardianOptions", name: "GuardianOptions")
    HttpsPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#HttpsPolicy", name: "HttpsPolicy")
    Identity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#Identity", name: "Identity", traits: {"smithy.api#length" => {"min" => 1}})
    IdentityInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#IdentityInfo", name: "IdentityInfo")
    IdentityInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#IdentityInfoList", name: "IdentityInfoList")
    IdentityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#IdentityType", name: "IdentityType")
    ImageUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ImageUrl", name: "ImageUrl")
    ImportDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ImportDataSource", name: "ImportDataSource")
    ImportDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ImportDestination", name: "ImportDestination")
    ImportDestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#ImportDestinationType", name: "ImportDestinationType")
    ImportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ImportJobSummary", name: "ImportJobSummary")
    ImportJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#ImportJobSummaryList", name: "ImportJobSummaryList")
    InboxPlacementTrackingOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#InboxPlacementTrackingOption", name: "InboxPlacementTrackingOption")
    InsightsEmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#InsightsEmailAddress", name: "InsightsEmailAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 320}, "smithy.api#sensitive" => {}})
    InsightsEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#InsightsEvent", name: "InsightsEvent")
    InsightsEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#InsightsEvents", name: "InsightsEvents")
    InternalServiceErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#InternalServiceErrorException", name: "InternalServiceErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Ip = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#Ip", name: "Ip")
    IpList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#IpList", name: "IpList")
    Isp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#Isp", name: "Isp")
    IspFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#IspFilterList", name: "IspFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    IspName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#IspName", name: "IspName")
    IspNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#IspNameList", name: "IspNameList")
    IspPlacement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#IspPlacement", name: "IspPlacement")
    IspPlacements = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#IspPlacements", name: "IspPlacements")
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 1}})
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#JobStatus", name: "JobStatus")
    KinesisFirehoseDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#KinesisFirehoseDestination", name: "KinesisFirehoseDestination")
    LastDeliveryEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#LastDeliveryEventList", name: "LastDeliveryEventList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    LastEngagementEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#LastEngagementEventList", name: "LastEngagementEventList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    LastFreshStart = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.sesv2#LastFreshStart", name: "LastFreshStart")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListConfigurationSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListConfigurationSetsRequest", name: "ListConfigurationSetsRequest")
    ListConfigurationSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListConfigurationSetsResponse", name: "ListConfigurationSetsResponse")
    ListContactListsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListContactListsRequest", name: "ListContactListsRequest")
    ListContactListsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListContactListsResponse", name: "ListContactListsResponse")
    ListContactsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListContactsFilter", name: "ListContactsFilter")
    ListContactsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListContactsRequest", name: "ListContactsRequest")
    ListContactsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListContactsResponse", name: "ListContactsResponse")
    ListCustomVerificationEmailTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListCustomVerificationEmailTemplatesRequest", name: "ListCustomVerificationEmailTemplatesRequest")
    ListCustomVerificationEmailTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListCustomVerificationEmailTemplatesResponse", name: "ListCustomVerificationEmailTemplatesResponse")
    ListDedicatedIpPoolsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListDedicatedIpPoolsRequest", name: "ListDedicatedIpPoolsRequest")
    ListDedicatedIpPoolsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListDedicatedIpPoolsResponse", name: "ListDedicatedIpPoolsResponse")
    ListDeliverabilityTestReportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListDeliverabilityTestReportsRequest", name: "ListDeliverabilityTestReportsRequest")
    ListDeliverabilityTestReportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListDeliverabilityTestReportsResponse", name: "ListDeliverabilityTestReportsResponse")
    ListDomainDeliverabilityCampaignsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListDomainDeliverabilityCampaignsRequest", name: "ListDomainDeliverabilityCampaignsRequest")
    ListDomainDeliverabilityCampaignsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListDomainDeliverabilityCampaignsResponse", name: "ListDomainDeliverabilityCampaignsResponse")
    ListEmailIdentitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListEmailIdentitiesRequest", name: "ListEmailIdentitiesRequest")
    ListEmailIdentitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListEmailIdentitiesResponse", name: "ListEmailIdentitiesResponse")
    ListEmailTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListEmailTemplatesRequest", name: "ListEmailTemplatesRequest")
    ListEmailTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListEmailTemplatesResponse", name: "ListEmailTemplatesResponse")
    ListExportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListExportJobsRequest", name: "ListExportJobsRequest")
    ListExportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListExportJobsResponse", name: "ListExportJobsResponse")
    ListImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListImportJobsRequest", name: "ListImportJobsRequest")
    ListImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListImportJobsResponse", name: "ListImportJobsResponse")
    ListManagementOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListManagementOptions", name: "ListManagementOptions")
    ListMultiRegionEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListMultiRegionEndpointsRequest", name: "ListMultiRegionEndpointsRequest")
    ListMultiRegionEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListMultiRegionEndpointsResponse", name: "ListMultiRegionEndpointsResponse")
    ListOfContactLists = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#ListOfContactLists", name: "ListOfContactLists")
    ListOfContacts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#ListOfContacts", name: "ListOfContacts")
    ListOfDedicatedIpPools = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#ListOfDedicatedIpPools", name: "ListOfDedicatedIpPools")
    ListRecommendationFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ListRecommendationFilterValue", name: "ListRecommendationFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ListRecommendationsFilter = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sesv2#ListRecommendationsFilter", name: "ListRecommendationsFilter", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    ListRecommendationsFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#ListRecommendationsFilterKey", name: "ListRecommendationsFilterKey")
    ListRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListRecommendationsRequest", name: "ListRecommendationsRequest")
    ListRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListRecommendationsResponse", name: "ListRecommendationsResponse")
    ListReputationEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListReputationEntitiesRequest", name: "ListReputationEntitiesRequest")
    ListReputationEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListReputationEntitiesResponse", name: "ListReputationEntitiesResponse")
    ListResourceTenantsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListResourceTenantsRequest", name: "ListResourceTenantsRequest")
    ListResourceTenantsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListResourceTenantsResponse", name: "ListResourceTenantsResponse")
    ListSuppressedDestinationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListSuppressedDestinationsRequest", name: "ListSuppressedDestinationsRequest")
    ListSuppressedDestinationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListSuppressedDestinationsResponse", name: "ListSuppressedDestinationsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTenantResourcesFilter = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sesv2#ListTenantResourcesFilter", name: "ListTenantResourcesFilter")
    ListTenantResourcesFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#ListTenantResourcesFilterKey", name: "ListTenantResourcesFilterKey")
    ListTenantResourcesFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ListTenantResourcesFilterValue", name: "ListTenantResourcesFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ListTenantResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListTenantResourcesRequest", name: "ListTenantResourcesRequest")
    ListTenantResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListTenantResourcesResponse", name: "ListTenantResourcesResponse")
    ListTenantsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListTenantsRequest", name: "ListTenantsRequest")
    ListTenantsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListTenantsResponse", name: "ListTenantsResponse")
    MailFromAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MailFromAttributes", name: "MailFromAttributes")
    MailFromDomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#MailFromDomainName", name: "MailFromDomainName")
    MailFromDomainNotVerifiedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MailFromDomainNotVerifiedException", name: "MailFromDomainNotVerifiedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MailFromDomainStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#MailFromDomainStatus", name: "MailFromDomainStatus")
    MailType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#MailType", name: "MailType")
    Max24HourSend = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.sesv2#Max24HourSend", name: "Max24HourSend", traits: {"smithy.api#default" => 0})
    MaxDeliverySeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sesv2#MaxDeliverySeconds", name: "MaxDeliverySeconds", traits: {"smithy.api#range" => {"min" => 300, "max" => 50400}})
    MaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sesv2#MaxItems", name: "MaxItems")
    MaxSendRate = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.sesv2#MaxSendRate", name: "MaxSendRate", traits: {"smithy.api#default" => 0})
    Message = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Message", name: "Message")
    MessageContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#MessageContent", name: "MessageContent")
    MessageData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#MessageData", name: "MessageData")
    MessageHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MessageHeader", name: "MessageHeader")
    MessageHeaderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#MessageHeaderList", name: "MessageHeaderList", traits: {"smithy.api#length" => {"min" => 0, "max" => 15}})
    MessageHeaderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#MessageHeaderName", name: "MessageHeaderName", traits: {"smithy.api#length" => {"min" => 1, "max" => 126}, "smithy.api#pattern" => "^[!-9;-@A-~]+$"})
    MessageHeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#MessageHeaderValue", name: "MessageHeaderValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 870}, "smithy.api#pattern" => "^[ -~]*$"})
    MessageInsightsDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MessageInsightsDataSource", name: "MessageInsightsDataSource")
    MessageInsightsExportMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sesv2#MessageInsightsExportMaxResults", name: "MessageInsightsExportMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    MessageInsightsFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MessageInsightsFilters", name: "MessageInsightsFilters")
    MessageRejected = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MessageRejected", name: "MessageRejected", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MessageTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MessageTag", name: "MessageTag")
    MessageTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#MessageTagList", name: "MessageTagList")
    MessageTagName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#MessageTagName", name: "MessageTagName")
    MessageTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#MessageTagValue", name: "MessageTagValue")
    Metric = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#Metric", name: "Metric")
    MetricAggregation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#MetricAggregation", name: "MetricAggregation")
    MetricDataError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MetricDataError", name: "MetricDataError")
    MetricDataErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#MetricDataErrorList", name: "MetricDataErrorList")
    MetricDataResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MetricDataResult", name: "MetricDataResult")
    MetricDataResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#MetricDataResultList", name: "MetricDataResultList")
    MetricDimensionName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#MetricDimensionName", name: "MetricDimensionName")
    MetricDimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#MetricDimensionValue", name: "MetricDimensionValue")
    MetricNamespace = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#MetricNamespace", name: "MetricNamespace")
    MetricValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#MetricValueList", name: "MetricValueList")
    MetricsDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MetricsDataSource", name: "MetricsDataSource")
    MultiRegionEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MultiRegionEndpoint", name: "MultiRegionEndpoint")
    MultiRegionEndpoints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#MultiRegionEndpoints", name: "MultiRegionEndpoints")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#NextToken", name: "NextToken")
    NextTokenV2 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#NextTokenV2", name: "NextTokenV2", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}, "smithy.api#pattern" => "^^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$"})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OutboundMessageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#OutboundMessageId", name: "OutboundMessageId")
    OverallVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#OverallVolume", name: "OverallVolume")
    PageSizeV2 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sesv2#PageSizeV2", name: "PageSizeV2", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    Percentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.sesv2#Percentage", name: "Percentage")
    Percentage100Wrapper = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sesv2#Percentage100Wrapper", name: "Percentage100Wrapper")
    PinpointDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PinpointDestination", name: "PinpointDestination")
    PlacementStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PlacementStatistics", name: "PlacementStatistics")
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#Policy", name: "Policy", traits: {"smithy.api#length" => {"min" => 1}})
    PolicyMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sesv2#PolicyMap", name: "PolicyMap")
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#PolicyName", name: "PolicyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    PoolName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#PoolName", name: "PoolName")
    PrimaryNameServer = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#PrimaryNameServer", name: "PrimaryNameServer")
    PrivateKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#PrivateKey", name: "PrivateKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 20480}, "smithy.api#pattern" => "^[a-zA-Z0-9+\\/]+={0,2}$", "smithy.api#sensitive" => {}})
    ProcessedRecordsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sesv2#ProcessedRecordsCount", name: "ProcessedRecordsCount")
    PutAccountDedicatedIpWarmupAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountDedicatedIpWarmupAttributesRequest", name: "PutAccountDedicatedIpWarmupAttributesRequest")
    PutAccountDedicatedIpWarmupAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountDedicatedIpWarmupAttributesResponse", name: "PutAccountDedicatedIpWarmupAttributesResponse")
    PutAccountDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountDetailsRequest", name: "PutAccountDetailsRequest")
    PutAccountDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountDetailsResponse", name: "PutAccountDetailsResponse")
    PutAccountSendingAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountSendingAttributesRequest", name: "PutAccountSendingAttributesRequest")
    PutAccountSendingAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountSendingAttributesResponse", name: "PutAccountSendingAttributesResponse")
    PutAccountSuppressionAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountSuppressionAttributesRequest", name: "PutAccountSuppressionAttributesRequest")
    PutAccountSuppressionAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountSuppressionAttributesResponse", name: "PutAccountSuppressionAttributesResponse")
    PutAccountVdmAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountVdmAttributesRequest", name: "PutAccountVdmAttributesRequest")
    PutAccountVdmAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountVdmAttributesResponse", name: "PutAccountVdmAttributesResponse")
    PutConfigurationSetArchivingOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutConfigurationSetArchivingOptionsRequest", name: "PutConfigurationSetArchivingOptionsRequest")
    PutConfigurationSetArchivingOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutConfigurationSetArchivingOptionsResponse", name: "PutConfigurationSetArchivingOptionsResponse")
    PutConfigurationSetDeliveryOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutConfigurationSetDeliveryOptionsRequest", name: "PutConfigurationSetDeliveryOptionsRequest")
    PutConfigurationSetDeliveryOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutConfigurationSetDeliveryOptionsResponse", name: "PutConfigurationSetDeliveryOptionsResponse")
    PutConfigurationSetReputationOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutConfigurationSetReputationOptionsRequest", name: "PutConfigurationSetReputationOptionsRequest")
    PutConfigurationSetReputationOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutConfigurationSetReputationOptionsResponse", name: "PutConfigurationSetReputationOptionsResponse")
    PutConfigurationSetSendingOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutConfigurationSetSendingOptionsRequest", name: "PutConfigurationSetSendingOptionsRequest")
    PutConfigurationSetSendingOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutConfigurationSetSendingOptionsResponse", name: "PutConfigurationSetSendingOptionsResponse")
    PutConfigurationSetSuppressionOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutConfigurationSetSuppressionOptionsRequest", name: "PutConfigurationSetSuppressionOptionsRequest")
    PutConfigurationSetSuppressionOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutConfigurationSetSuppressionOptionsResponse", name: "PutConfigurationSetSuppressionOptionsResponse")
    PutConfigurationSetTrackingOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutConfigurationSetTrackingOptionsRequest", name: "PutConfigurationSetTrackingOptionsRequest")
    PutConfigurationSetTrackingOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutConfigurationSetTrackingOptionsResponse", name: "PutConfigurationSetTrackingOptionsResponse")
    PutConfigurationSetVdmOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutConfigurationSetVdmOptionsRequest", name: "PutConfigurationSetVdmOptionsRequest")
    PutConfigurationSetVdmOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutConfigurationSetVdmOptionsResponse", name: "PutConfigurationSetVdmOptionsResponse")
    PutDedicatedIpInPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutDedicatedIpInPoolRequest", name: "PutDedicatedIpInPoolRequest")
    PutDedicatedIpInPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutDedicatedIpInPoolResponse", name: "PutDedicatedIpInPoolResponse")
    PutDedicatedIpPoolScalingAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutDedicatedIpPoolScalingAttributesRequest", name: "PutDedicatedIpPoolScalingAttributesRequest")
    PutDedicatedIpPoolScalingAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutDedicatedIpPoolScalingAttributesResponse", name: "PutDedicatedIpPoolScalingAttributesResponse")
    PutDedicatedIpWarmupAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutDedicatedIpWarmupAttributesRequest", name: "PutDedicatedIpWarmupAttributesRequest")
    PutDedicatedIpWarmupAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutDedicatedIpWarmupAttributesResponse", name: "PutDedicatedIpWarmupAttributesResponse")
    PutDeliverabilityDashboardOptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutDeliverabilityDashboardOptionRequest", name: "PutDeliverabilityDashboardOptionRequest")
    PutDeliverabilityDashboardOptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutDeliverabilityDashboardOptionResponse", name: "PutDeliverabilityDashboardOptionResponse")
    PutEmailIdentityConfigurationSetAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutEmailIdentityConfigurationSetAttributesRequest", name: "PutEmailIdentityConfigurationSetAttributesRequest")
    PutEmailIdentityConfigurationSetAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutEmailIdentityConfigurationSetAttributesResponse", name: "PutEmailIdentityConfigurationSetAttributesResponse")
    PutEmailIdentityDkimAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutEmailIdentityDkimAttributesRequest", name: "PutEmailIdentityDkimAttributesRequest")
    PutEmailIdentityDkimAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutEmailIdentityDkimAttributesResponse", name: "PutEmailIdentityDkimAttributesResponse")
    PutEmailIdentityDkimSigningAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutEmailIdentityDkimSigningAttributesRequest", name: "PutEmailIdentityDkimSigningAttributesRequest")
    PutEmailIdentityDkimSigningAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutEmailIdentityDkimSigningAttributesResponse", name: "PutEmailIdentityDkimSigningAttributesResponse")
    PutEmailIdentityFeedbackAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutEmailIdentityFeedbackAttributesRequest", name: "PutEmailIdentityFeedbackAttributesRequest")
    PutEmailIdentityFeedbackAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutEmailIdentityFeedbackAttributesResponse", name: "PutEmailIdentityFeedbackAttributesResponse")
    PutEmailIdentityMailFromAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutEmailIdentityMailFromAttributesRequest", name: "PutEmailIdentityMailFromAttributesRequest")
    PutEmailIdentityMailFromAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutEmailIdentityMailFromAttributesResponse", name: "PutEmailIdentityMailFromAttributesResponse")
    PutSuppressedDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutSuppressedDestinationRequest", name: "PutSuppressedDestinationRequest")
    PutSuppressedDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutSuppressedDestinationResponse", name: "PutSuppressedDestinationResponse")
    QueryErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#QueryErrorCode", name: "QueryErrorCode")
    QueryErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#QueryErrorMessage", name: "QueryErrorMessage")
    QueryIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#QueryIdentifier", name: "QueryIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    RawAttachmentData = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.sesv2#RawAttachmentData", name: "RawAttachmentData")
    RawMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#RawMessage", name: "RawMessage")
    RawMessageData = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.sesv2#RawMessageData", name: "RawMessageData")
    RblName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#RblName", name: "RblName")
    Recommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Recommendation", name: "Recommendation")
    RecommendationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#RecommendationDescription", name: "RecommendationDescription")
    RecommendationImpact = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#RecommendationImpact", name: "RecommendationImpact")
    RecommendationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#RecommendationStatus", name: "RecommendationStatus")
    RecommendationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#RecommendationType", name: "RecommendationType")
    RecommendationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#RecommendationsList", name: "RecommendationsList")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#Region", name: "Region")
    Regions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#Regions", name: "Regions")
    RenderedEmailTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#RenderedEmailTemplate", name: "RenderedEmailTemplate")
    ReplacementEmailContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ReplacementEmailContent", name: "ReplacementEmailContent")
    ReplacementTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ReplacementTemplate", name: "ReplacementTemplate")
    ReportId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ReportId", name: "ReportId")
    ReportName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ReportName", name: "ReportName")
    ReputationEntitiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#ReputationEntitiesList", name: "ReputationEntitiesList")
    ReputationEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ReputationEntity", name: "ReputationEntity")
    ReputationEntityFilter = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sesv2#ReputationEntityFilter", name: "ReputationEntityFilter")
    ReputationEntityFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#ReputationEntityFilterKey", name: "ReputationEntityFilterKey")
    ReputationEntityFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ReputationEntityFilterValue", name: "ReputationEntityFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ReputationEntityReference = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ReputationEntityReference", name: "ReputationEntityReference", traits: {"smithy.api#length" => {"min" => 1}})
    ReputationEntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#ReputationEntityType", name: "ReputationEntityType")
    ReputationOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ReputationOptions", name: "ReputationOptions")
    ResourceTenantMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ResourceTenantMetadata", name: "ResourceTenantMetadata")
    ResourceTenantMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#ResourceTenantMetadataList", name: "ResourceTenantMetadataList")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#ResourceType", name: "ResourceType")
    ReviewDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ReviewDetails", name: "ReviewDetails")
    ReviewStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#ReviewStatus", name: "ReviewStatus")
    Route = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Route", name: "Route")
    RouteDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#RouteDetails", name: "RouteDetails")
    Routes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#Routes", name: "Routes")
    RoutesDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#RoutesDetails", name: "RoutesDetails")
    S3Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#S3Url", name: "S3Url", traits: {"smithy.api#pattern" => "^s3:\\/\\/([^\\/]+)\\/(.*?([^\\/]+)\\/?)$"})
    SOARecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SOARecord", name: "SOARecord")
    ScalingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#ScalingMode", name: "ScalingMode")
    Selector = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#Selector", name: "Selector", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\\-]*[a-zA-Z0-9]))$"})
    SendBulkEmailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SendBulkEmailRequest", name: "SendBulkEmailRequest")
    SendBulkEmailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SendBulkEmailResponse", name: "SendBulkEmailResponse")
    SendCustomVerificationEmailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SendCustomVerificationEmailRequest", name: "SendCustomVerificationEmailRequest")
    SendCustomVerificationEmailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SendCustomVerificationEmailResponse", name: "SendCustomVerificationEmailResponse")
    SendEmailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SendEmailRequest", name: "SendEmailRequest")
    SendEmailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SendEmailResponse", name: "SendEmailResponse")
    SendQuota = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SendQuota", name: "SendQuota")
    SendingOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SendingOptions", name: "SendingOptions")
    SendingPausedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SendingPausedException", name: "SendingPausedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SendingPoolName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#SendingPoolName", name: "SendingPoolName")
    SendingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#SendingStatus", name: "SendingStatus")
    SentLast24Hours = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.sesv2#SentLast24Hours", name: "SentLast24Hours", traits: {"smithy.api#default" => 0})
    SerialNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sesv2#SerialNumber", name: "SerialNumber", traits: {"smithy.api#default" => 0})
    SnsDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SnsDestination", name: "SnsDestination")
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#Status", name: "Status")
    StatusCause = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#StatusCause", name: "StatusCause", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    StatusRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#StatusRecord", name: "StatusRecord")
    Subject = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#Subject", name: "Subject")
    SubscriptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#SubscriptionStatus", name: "SubscriptionStatus")
    SuccessRedirectionURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#SuccessRedirectionURL", name: "SuccessRedirectionURL")
    SuppressedDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SuppressedDestination", name: "SuppressedDestination")
    SuppressedDestinationAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SuppressedDestinationAttributes", name: "SuppressedDestinationAttributes")
    SuppressedDestinationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#SuppressedDestinationSummaries", name: "SuppressedDestinationSummaries")
    SuppressedDestinationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SuppressedDestinationSummary", name: "SuppressedDestinationSummary")
    SuppressionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SuppressionAttributes", name: "SuppressionAttributes")
    SuppressionListDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SuppressionListDestination", name: "SuppressionListDestination")
    SuppressionListImportAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#SuppressionListImportAction", name: "SuppressionListImportAction")
    SuppressionListReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#SuppressionListReason", name: "SuppressionListReason")
    SuppressionListReasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#SuppressionListReasons", name: "SuppressionListReasons")
    SuppressionOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SuppressionOptions", name: "SuppressionOptions")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#TagKey", name: "TagKey")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#TagList", name: "TagList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#TagValue", name: "TagValue")
    Template = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Template", name: "Template")
    TemplateContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#TemplateContent", name: "TemplateContent")
    Tenant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Tenant", name: "Tenant")
    TenantId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#TenantId", name: "TenantId")
    TenantInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#TenantInfo", name: "TenantInfo")
    TenantInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#TenantInfoList", name: "TenantInfoList")
    TenantName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#TenantName", name: "TenantName", traits: {"smithy.api#length" => {"min" => 1}})
    TenantResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#TenantResource", name: "TenantResource")
    TenantResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#TenantResourceList", name: "TenantResourceList")
    TestRenderEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#TestRenderEmailTemplateRequest", name: "TestRenderEmailTemplateRequest")
    TestRenderEmailTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#TestRenderEmailTemplateResponse", name: "TestRenderEmailTemplateResponse")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.sesv2#Timestamp", name: "Timestamp")
    TimestampList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#TimestampList", name: "TimestampList")
    TlsPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#TlsPolicy", name: "TlsPolicy")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Topic = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Topic", name: "Topic")
    TopicFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#TopicFilter", name: "TopicFilter")
    TopicName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#TopicName", name: "TopicName")
    TopicPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#TopicPreference", name: "TopicPreference")
    TopicPreferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#TopicPreferenceList", name: "TopicPreferenceList")
    Topics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#Topics", name: "Topics")
    TrackingOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#TrackingOptions", name: "TrackingOptions")
    UnsubscribeAll = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sesv2#UnsubscribeAll", name: "UnsubscribeAll", traits: {"smithy.api#default" => false})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateConfigurationSetEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateConfigurationSetEventDestinationRequest", name: "UpdateConfigurationSetEventDestinationRequest")
    UpdateConfigurationSetEventDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateConfigurationSetEventDestinationResponse", name: "UpdateConfigurationSetEventDestinationResponse")
    UpdateContactListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateContactListRequest", name: "UpdateContactListRequest")
    UpdateContactListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateContactListResponse", name: "UpdateContactListResponse")
    UpdateContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateContactRequest", name: "UpdateContactRequest")
    UpdateContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateContactResponse", name: "UpdateContactResponse")
    UpdateCustomVerificationEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateCustomVerificationEmailTemplateRequest", name: "UpdateCustomVerificationEmailTemplateRequest")
    UpdateCustomVerificationEmailTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateCustomVerificationEmailTemplateResponse", name: "UpdateCustomVerificationEmailTemplateResponse")
    UpdateEmailIdentityPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateEmailIdentityPolicyRequest", name: "UpdateEmailIdentityPolicyRequest")
    UpdateEmailIdentityPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateEmailIdentityPolicyResponse", name: "UpdateEmailIdentityPolicyResponse")
    UpdateEmailTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateEmailTemplateRequest", name: "UpdateEmailTemplateRequest")
    UpdateEmailTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateEmailTemplateResponse", name: "UpdateEmailTemplateResponse")
    UpdateReputationEntityCustomerManagedStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateReputationEntityCustomerManagedStatusRequest", name: "UpdateReputationEntityCustomerManagedStatusRequest")
    UpdateReputationEntityCustomerManagedStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateReputationEntityCustomerManagedStatusResponse", name: "UpdateReputationEntityCustomerManagedStatusResponse")
    UpdateReputationEntityPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateReputationEntityPolicyRequest", name: "UpdateReputationEntityPolicyRequest")
    UpdateReputationEntityPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateReputationEntityPolicyResponse", name: "UpdateReputationEntityPolicyResponse")
    UseCaseDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#UseCaseDescription", name: "UseCaseDescription", traits: {"smithy.api#deprecated" => {"message" => "Use case description is optional and deprecated"}, "smithy.api#length" => {"min" => 0, "max" => 5000}, "smithy.api#sensitive" => {}})
    UseDefaultIfPreferenceUnavailable = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sesv2#UseDefaultIfPreferenceUnavailable", name: "UseDefaultIfPreferenceUnavailable", traits: {"smithy.api#default" => false})
    VdmAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#VdmAttributes", name: "VdmAttributes")
    VdmOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#VdmOptions", name: "VdmOptions")
    VerificationError = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#VerificationError", name: "VerificationError")
    VerificationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#VerificationInfo", name: "VerificationInfo")
    VerificationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#VerificationStatus", name: "VerificationStatus")
    Volume = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sesv2#Volume", name: "Volume")
    VolumeStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#VolumeStatistics", name: "VolumeStatistics")
    WarmupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#WarmupStatus", name: "WarmupStatus")
    WebsiteURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#WebsiteURL", name: "WebsiteURL", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\\?([^#]*))?(#(.*))?$", "smithy.api#sensitive" => {}})

    AccountDetails.add_member(:mail_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MailType, location_name: "MailType"))
    AccountDetails.add_member(:website_url, ::Smithy::Schema::Shapes::MemberShape.new(target: WebsiteURL, location_name: "WebsiteURL"))
    AccountDetails.add_member(:contact_language, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactLanguage, location_name: "ContactLanguage"))
    AccountDetails.add_member(:use_case_description, ::Smithy::Schema::Shapes::MemberShape.new(target: UseCaseDescription, location_name: "UseCaseDescription"))
    AccountDetails.add_member(:additional_contact_email_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalContactEmailAddresses, location_name: "AdditionalContactEmailAddresses"))
    AccountDetails.add_member(:review_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewDetails, location_name: "ReviewDetails"))
    AccountDetails.type = Types::AccountDetails
    AccountSuspendedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    AccountSuspendedException.type = Types::AccountSuspendedException
    AdditionalContactEmailAddresses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalContactEmailAddress)
    AlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    AlreadyExistsException.type = Types::AlreadyExistsException
    ArchivingOptions.add_member(:archive_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveArn, location_name: "ArchiveArn"))
    ArchivingOptions.type = Types::ArchivingOptions
    Attachment.add_member(:raw_content, ::Smithy::Schema::Shapes::MemberShape.new(target: RawAttachmentData, location_name: "RawContent", traits: {"smithy.api#required" => {}}))
    Attachment.add_member(:content_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentContentDisposition, location_name: "ContentDisposition"))
    Attachment.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentFileName, location_name: "FileName", traits: {"smithy.api#required" => {}}))
    Attachment.add_member(:content_description, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentContentDescription, location_name: "ContentDescription"))
    Attachment.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentContentId, location_name: "ContentId"))
    Attachment.add_member(:content_transfer_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentContentTransferEncoding, location_name: "ContentTransferEncoding"))
    Attachment.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentContentType, location_name: "ContentType"))
    Attachment.type = Types::Attachment
    AttachmentContentDisposition.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ATTACHMENT", traits: {"smithy.api#enumValue" => "ATTACHMENT"}))
    AttachmentContentDisposition.add_member(:inline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INLINE", traits: {"smithy.api#enumValue" => "INLINE"}))
    AttachmentContentTransferEncoding.add_member(:base64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BASE64", traits: {"smithy.api#enumValue" => "BASE64"}))
    AttachmentContentTransferEncoding.add_member(:quoted_printable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUOTED_PRINTABLE", traits: {"smithy.api#enumValue" => "QUOTED_PRINTABLE"}))
    AttachmentContentTransferEncoding.add_member(:seven_bit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SEVEN_BIT", traits: {"smithy.api#enumValue" => "SEVEN_BIT"}))
    AttachmentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment)
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    BadRequestException.type = Types::BadRequestException
    BatchGetMetricDataQueries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetMetricDataQuery)
    BatchGetMetricDataQuery.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryIdentifier, location_name: "Id", traits: {"smithy.api#required" => {}}))
    BatchGetMetricDataQuery.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricNamespace, location_name: "Namespace", traits: {"smithy.api#required" => {}}))
    BatchGetMetricDataQuery.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: Metric, location_name: "Metric", traits: {"smithy.api#required" => {}}))
    BatchGetMetricDataQuery.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, location_name: "Dimensions"))
    BatchGetMetricDataQuery.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartDate", traits: {"smithy.api#required" => {}}))
    BatchGetMetricDataQuery.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EndDate", traits: {"smithy.api#required" => {}}))
    BatchGetMetricDataQuery.type = Types::BatchGetMetricDataQuery
    BatchGetMetricDataRequest.add_member(:queries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetMetricDataQueries, location_name: "Queries", traits: {"smithy.api#required" => {}}))
    BatchGetMetricDataRequest.type = Types::BatchGetMetricDataRequest
    BatchGetMetricDataResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataResultList, location_name: "Results"))
    BatchGetMetricDataResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataErrorList, location_name: "Errors"))
    BatchGetMetricDataResponse.type = Types::BatchGetMetricDataResponse
    BehaviorOnMxFailure.add_member(:use_default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USE_DEFAULT_VALUE", traits: {"smithy.api#enumValue" => "USE_DEFAULT_VALUE"}))
    BehaviorOnMxFailure.add_member(:reject_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECT_MESSAGE", traits: {"smithy.api#enumValue" => "REJECT_MESSAGE"}))
    BlacklistEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistEntry)
    BlacklistEntry.add_member(:rbl_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RblName, location_name: "RblName"))
    BlacklistEntry.add_member(:listing_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ListingTime"))
    BlacklistEntry.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistingDescription, location_name: "Description"))
    BlacklistEntry.type = Types::BlacklistEntry
    BlacklistItemNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistItemName)
    BlacklistReport.key = ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistItemName)
    BlacklistReport.value = ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistEntries)
    Body.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, location_name: "Text"))
    Body.add_member(:html, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, location_name: "Html"))
    Body.type = Types::Body
    Bounce.add_member(:bounce_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BounceType, location_name: "BounceType"))
    Bounce.add_member(:bounce_sub_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BounceSubType, location_name: "BounceSubType"))
    Bounce.add_member(:diagnostic_code, ::Smithy::Schema::Shapes::MemberShape.new(target: DiagnosticCode, location_name: "DiagnosticCode"))
    Bounce.type = Types::Bounce
    BounceType.add_member(:undetermined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNDETERMINED", traits: {"smithy.api#enumValue" => "UNDETERMINED"}))
    BounceType.add_member(:transient, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSIENT", traits: {"smithy.api#enumValue" => "TRANSIENT"}))
    BounceType.add_member(:permanent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERMANENT", traits: {"smithy.api#enumValue" => "PERMANENT"}))
    BulkEmailContent.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: Template, location_name: "Template"))
    BulkEmailContent.type = Types::BulkEmailContent
    BulkEmailEntry.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, location_name: "Destination", traits: {"smithy.api#required" => {}}))
    BulkEmailEntry.add_member(:replacement_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagList, location_name: "ReplacementTags"))
    BulkEmailEntry.add_member(:replacement_email_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplacementEmailContent, location_name: "ReplacementEmailContent"))
    BulkEmailEntry.add_member(:replacement_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageHeaderList, location_name: "ReplacementHeaders"))
    BulkEmailEntry.type = Types::BulkEmailEntry
    BulkEmailEntryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailEntry)
    BulkEmailEntryResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailStatus, location_name: "Status"))
    BulkEmailEntryResult.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Error"))
    BulkEmailEntryResult.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutboundMessageId, location_name: "MessageId"))
    BulkEmailEntryResult.type = Types::BulkEmailEntryResult
    BulkEmailEntryResultList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailEntryResult)
    BulkEmailStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    BulkEmailStatus.add_member(:message_rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MESSAGE_REJECTED", traits: {"smithy.api#enumValue" => "MESSAGE_REJECTED"}))
    BulkEmailStatus.add_member(:mail_from_domain_not_verified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MAIL_FROM_DOMAIN_NOT_VERIFIED", traits: {"smithy.api#enumValue" => "MAIL_FROM_DOMAIN_NOT_VERIFIED"}))
    BulkEmailStatus.add_member(:configuration_set_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFIGURATION_SET_NOT_FOUND", traits: {"smithy.api#enumValue" => "CONFIGURATION_SET_NOT_FOUND"}))
    BulkEmailStatus.add_member(:template_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEMPLATE_NOT_FOUND", traits: {"smithy.api#enumValue" => "TEMPLATE_NOT_FOUND"}))
    BulkEmailStatus.add_member(:account_suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT_SUSPENDED", traits: {"smithy.api#enumValue" => "ACCOUNT_SUSPENDED"}))
    BulkEmailStatus.add_member(:account_throttled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT_THROTTLED", traits: {"smithy.api#enumValue" => "ACCOUNT_THROTTLED"}))
    BulkEmailStatus.add_member(:account_daily_quota_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT_DAILY_QUOTA_EXCEEDED", traits: {"smithy.api#enumValue" => "ACCOUNT_DAILY_QUOTA_EXCEEDED"}))
    BulkEmailStatus.add_member(:invalid_sending_pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_SENDING_POOL_NAME", traits: {"smithy.api#enumValue" => "INVALID_SENDING_POOL_NAME"}))
    BulkEmailStatus.add_member(:account_sending_paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT_SENDING_PAUSED", traits: {"smithy.api#enumValue" => "ACCOUNT_SENDING_PAUSED"}))
    BulkEmailStatus.add_member(:configuration_set_sending_paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFIGURATION_SET_SENDING_PAUSED", traits: {"smithy.api#enumValue" => "CONFIGURATION_SET_SENDING_PAUSED"}))
    BulkEmailStatus.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_PARAMETER", traits: {"smithy.api#enumValue" => "INVALID_PARAMETER"}))
    BulkEmailStatus.add_member(:transient_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSIENT_FAILURE", traits: {"smithy.api#enumValue" => "TRANSIENT_FAILURE"}))
    BulkEmailStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CancelExportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelExportJobRequest.type = Types::CancelExportJobRequest
    CancelExportJobResponse.type = Types::CancelExportJobResponse
    CloudWatchDestination.add_member(:dimension_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDimensionConfigurations, location_name: "DimensionConfigurations", traits: {"smithy.api#required" => {}}))
    CloudWatchDestination.type = Types::CloudWatchDestination
    CloudWatchDimensionConfiguration.add_member(:dimension_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionName, location_name: "DimensionName", traits: {"smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.add_member(:dimension_value_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValueSource, location_name: "DimensionValueSource", traits: {"smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.add_member(:default_dimension_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultDimensionValue, location_name: "DefaultDimensionValue", traits: {"smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.type = Types::CloudWatchDimensionConfiguration
    CloudWatchDimensionConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDimensionConfiguration)
    Complaint.add_member(:complaint_sub_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplaintSubType, location_name: "ComplaintSubType"))
    Complaint.add_member(:complaint_feedback_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplaintFeedbackType, location_name: "ComplaintFeedbackType"))
    Complaint.type = Types::Complaint
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConfigurationSetNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ConflictException.type = Types::ConflictException
    Contact.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "EmailAddress"))
    Contact.add_member(:topic_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicPreferenceList, location_name: "TopicPreferences"))
    Contact.add_member(:topic_default_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicPreferenceList, location_name: "TopicDefaultPreferences"))
    Contact.add_member(:unsubscribe_all, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsubscribeAll, location_name: "UnsubscribeAll", traits: {"smithy.api#default" => false}))
    Contact.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTimestamp"))
    Contact.type = Types::Contact
    ContactLanguage.add_member(:en, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EN", traits: {"smithy.api#enumValue" => "EN"}))
    ContactLanguage.add_member(:ja, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JA", traits: {"smithy.api#enumValue" => "JA"}))
    ContactList.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, location_name: "ContactListName"))
    ContactList.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTimestamp"))
    ContactList.type = Types::ContactList
    ContactListDestination.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, location_name: "ContactListName", traits: {"smithy.api#required" => {}}))
    ContactListDestination.add_member(:contact_list_import_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListImportAction, location_name: "ContactListImportAction", traits: {"smithy.api#required" => {}}))
    ContactListDestination.type = Types::ContactListDestination
    ContactListImportAction.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    ContactListImportAction.add_member(:put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUT", traits: {"smithy.api#enumValue" => "PUT"}))
    Content.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageData, location_name: "Data", traits: {"smithy.api#required" => {}}))
    Content.add_member(:charset, ::Smithy::Schema::Shapes::MemberShape.new(target: Charset, location_name: "Charset"))
    Content.type = Types::Content
    CreateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, location_name: "EventDestinationName", traits: {"smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationDefinition, location_name: "EventDestination", traits: {"smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.type = Types::CreateConfigurationSetEventDestinationRequest
    CreateConfigurationSetEventDestinationResponse.type = Types::CreateConfigurationSetEventDestinationResponse
    CreateConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    CreateConfigurationSetRequest.add_member(:tracking_options, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingOptions, location_name: "TrackingOptions"))
    CreateConfigurationSetRequest.add_member(:delivery_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryOptions, location_name: "DeliveryOptions"))
    CreateConfigurationSetRequest.add_member(:reputation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationOptions, location_name: "ReputationOptions"))
    CreateConfigurationSetRequest.add_member(:sending_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingOptions, location_name: "SendingOptions"))
    CreateConfigurationSetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateConfigurationSetRequest.add_member(:suppression_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionOptions, location_name: "SuppressionOptions"))
    CreateConfigurationSetRequest.add_member(:vdm_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VdmOptions, location_name: "VdmOptions"))
    CreateConfigurationSetRequest.add_member(:archiving_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivingOptions, location_name: "ArchivingOptions"))
    CreateConfigurationSetRequest.type = Types::CreateConfigurationSetRequest
    CreateConfigurationSetResponse.type = Types::CreateConfigurationSetResponse
    CreateContactListRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, location_name: "ContactListName", traits: {"smithy.api#required" => {}}))
    CreateContactListRequest.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, location_name: "Topics"))
    CreateContactListRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "Description"))
    CreateContactListRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateContactListRequest.type = Types::CreateContactListRequest
    CreateContactListResponse.type = Types::CreateContactListResponse
    CreateContactRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, location_name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContactRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    CreateContactRequest.add_member(:topic_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicPreferenceList, location_name: "TopicPreferences"))
    CreateContactRequest.add_member(:unsubscribe_all, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsubscribeAll, location_name: "UnsubscribeAll", traits: {"smithy.api#default" => false}))
    CreateContactRequest.add_member(:attributes_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributesData, location_name: "AttributesData"))
    CreateContactRequest.type = Types::CreateContactRequest
    CreateContactResponse.type = Types::CreateContactResponse
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, location_name: "TemplateName", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "FromEmailAddress", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateSubject, location_name: "TemplateSubject", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateContent, location_name: "TemplateContent", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:success_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessRedirectionURL, location_name: "SuccessRedirectionURL", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:failure_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureRedirectionURL, location_name: "FailureRedirectionURL", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.type = Types::CreateCustomVerificationEmailTemplateRequest
    CreateCustomVerificationEmailTemplateResponse.type = Types::CreateCustomVerificationEmailTemplateResponse
    CreateDedicatedIpPoolRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, location_name: "PoolName", traits: {"smithy.api#required" => {}}))
    CreateDedicatedIpPoolRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateDedicatedIpPoolRequest.add_member(:scaling_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingMode, location_name: "ScalingMode"))
    CreateDedicatedIpPoolRequest.type = Types::CreateDedicatedIpPoolRequest
    CreateDedicatedIpPoolResponse.type = Types::CreateDedicatedIpPoolResponse
    CreateDeliverabilityTestReportRequest.add_member(:report_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportName, location_name: "ReportName"))
    CreateDeliverabilityTestReportRequest.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "FromEmailAddress", traits: {"smithy.api#required" => {}}))
    CreateDeliverabilityTestReportRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailContent, location_name: "Content", traits: {"smithy.api#required" => {}}))
    CreateDeliverabilityTestReportRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateDeliverabilityTestReportRequest.type = Types::CreateDeliverabilityTestReportRequest
    CreateDeliverabilityTestReportResponse.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, location_name: "ReportId", traits: {"smithy.api#required" => {}}))
    CreateDeliverabilityTestReportResponse.add_member(:deliverability_test_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverabilityTestStatus, location_name: "DeliverabilityTestStatus", traits: {"smithy.api#required" => {}}))
    CreateDeliverabilityTestReportResponse.type = Types::CreateDeliverabilityTestReportResponse
    CreateEmailIdentityPolicyRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEmailIdentityPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, location_name: "PolicyName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEmailIdentityPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, location_name: "Policy", traits: {"smithy.api#required" => {}}))
    CreateEmailIdentityPolicyRequest.type = Types::CreateEmailIdentityPolicyRequest
    CreateEmailIdentityPolicyResponse.type = Types::CreateEmailIdentityPolicyResponse
    CreateEmailIdentityRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "EmailIdentity", traits: {"smithy.api#required" => {}}))
    CreateEmailIdentityRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateEmailIdentityRequest.add_member(:dkim_signing_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningAttributes, location_name: "DkimSigningAttributes"))
    CreateEmailIdentityRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    CreateEmailIdentityRequest.type = Types::CreateEmailIdentityRequest
    CreateEmailIdentityResponse.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, location_name: "IdentityType"))
    CreateEmailIdentityResponse.add_member(:verified_for_sending_status, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "VerifiedForSendingStatus", traits: {"smithy.api#default" => false}))
    CreateEmailIdentityResponse.add_member(:dkim_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimAttributes, location_name: "DkimAttributes"))
    CreateEmailIdentityResponse.type = Types::CreateEmailIdentityResponse
    CreateEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, location_name: "TemplateName", traits: {"smithy.api#required" => {}}))
    CreateEmailTemplateRequest.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateContent, location_name: "TemplateContent", traits: {"smithy.api#required" => {}}))
    CreateEmailTemplateRequest.type = Types::CreateEmailTemplateRequest
    CreateEmailTemplateResponse.type = Types::CreateEmailTemplateResponse
    CreateExportJobRequest.add_member(:export_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDataSource, location_name: "ExportDataSource", traits: {"smithy.api#required" => {}}))
    CreateExportJobRequest.add_member(:export_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDestination, location_name: "ExportDestination", traits: {"smithy.api#required" => {}}))
    CreateExportJobRequest.type = Types::CreateExportJobRequest
    CreateExportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    CreateExportJobResponse.type = Types::CreateExportJobResponse
    CreateImportJobRequest.add_member(:import_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDestination, location_name: "ImportDestination", traits: {"smithy.api#required" => {}}))
    CreateImportJobRequest.add_member(:import_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDataSource, location_name: "ImportDataSource", traits: {"smithy.api#required" => {}}))
    CreateImportJobRequest.type = Types::CreateImportJobRequest
    CreateImportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    CreateImportJobResponse.type = Types::CreateImportJobResponse
    CreateMultiRegionEndpointRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, location_name: "EndpointName", traits: {"smithy.api#required" => {}}))
    CreateMultiRegionEndpointRequest.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Details, location_name: "Details", traits: {"smithy.api#required" => {}}))
    CreateMultiRegionEndpointRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateMultiRegionEndpointRequest.type = Types::CreateMultiRegionEndpointRequest
    CreateMultiRegionEndpointResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "Status"))
    CreateMultiRegionEndpointResponse.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, location_name: "EndpointId"))
    CreateMultiRegionEndpointResponse.type = Types::CreateMultiRegionEndpointResponse
    CreateTenantRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, location_name: "TenantName", traits: {"smithy.api#required" => {}}))
    CreateTenantRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateTenantRequest.type = Types::CreateTenantRequest
    CreateTenantResourceAssociationRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, location_name: "TenantName", traits: {"smithy.api#required" => {}}))
    CreateTenantResourceAssociationRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    CreateTenantResourceAssociationRequest.type = Types::CreateTenantResourceAssociationRequest
    CreateTenantResourceAssociationResponse.type = Types::CreateTenantResourceAssociationResponse
    CreateTenantResponse.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, location_name: "TenantName"))
    CreateTenantResponse.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantId, location_name: "TenantId"))
    CreateTenantResponse.add_member(:tenant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "TenantArn"))
    CreateTenantResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    CreateTenantResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateTenantResponse.add_member(:sending_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingStatus, location_name: "SendingStatus"))
    CreateTenantResponse.type = Types::CreateTenantResponse
    CustomVerificationEmailTemplateMetadata.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, location_name: "TemplateName"))
    CustomVerificationEmailTemplateMetadata.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "FromEmailAddress"))
    CustomVerificationEmailTemplateMetadata.add_member(:template_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateSubject, location_name: "TemplateSubject"))
    CustomVerificationEmailTemplateMetadata.add_member(:success_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessRedirectionURL, location_name: "SuccessRedirectionURL"))
    CustomVerificationEmailTemplateMetadata.add_member(:failure_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureRedirectionURL, location_name: "FailureRedirectionURL"))
    CustomVerificationEmailTemplateMetadata.type = Types::CustomVerificationEmailTemplateMetadata
    CustomVerificationEmailTemplatesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVerificationEmailTemplateMetadata)
    DailyVolume.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartDate"))
    DailyVolume.add_member(:volume_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeStatistics, location_name: "VolumeStatistics"))
    DailyVolume.add_member(:domain_isp_placements, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainIspPlacements, location_name: "DomainIspPlacements"))
    DailyVolume.type = Types::DailyVolume
    DailyVolumes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DailyVolume)
    DashboardAttributes.add_member(:engagement_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, location_name: "EngagementMetrics"))
    DashboardAttributes.type = Types::DashboardAttributes
    DashboardOptions.add_member(:engagement_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, location_name: "EngagementMetrics"))
    DashboardOptions.type = Types::DashboardOptions
    DataFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    DataFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    DedicatedIp.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, location_name: "Ip", traits: {"smithy.api#required" => {}}))
    DedicatedIp.add_member(:warmup_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmupStatus, location_name: "WarmupStatus", traits: {"smithy.api#required" => {}}))
    DedicatedIp.add_member(:warmup_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage100Wrapper, location_name: "WarmupPercentage", traits: {"smithy.api#required" => {}}))
    DedicatedIp.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, location_name: "PoolName"))
    DedicatedIp.type = Types::DedicatedIp
    DedicatedIpList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedIp)
    DedicatedIpPool.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, location_name: "PoolName", traits: {"smithy.api#required" => {}}))
    DedicatedIpPool.add_member(:scaling_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingMode, location_name: "ScalingMode", traits: {"smithy.api#required" => {}}))
    DedicatedIpPool.type = Types::DedicatedIpPool
    DeleteConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, location_name: "EventDestinationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.type = Types::DeleteConfigurationSetEventDestinationRequest
    DeleteConfigurationSetEventDestinationResponse.type = Types::DeleteConfigurationSetEventDestinationResponse
    DeleteConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetRequest.type = Types::DeleteConfigurationSetRequest
    DeleteConfigurationSetResponse.type = Types::DeleteConfigurationSetResponse
    DeleteContactListRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, location_name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContactListRequest.type = Types::DeleteContactListRequest
    DeleteContactListResponse.type = Types::DeleteContactListResponse
    DeleteContactRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, location_name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContactRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "EmailAddress", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContactRequest.type = Types::DeleteContactRequest
    DeleteContactResponse.type = Types::DeleteContactResponse
    DeleteCustomVerificationEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, location_name: "TemplateName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomVerificationEmailTemplateRequest.type = Types::DeleteCustomVerificationEmailTemplateRequest
    DeleteCustomVerificationEmailTemplateResponse.type = Types::DeleteCustomVerificationEmailTemplateResponse
    DeleteDedicatedIpPoolRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, location_name: "PoolName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDedicatedIpPoolRequest.type = Types::DeleteDedicatedIpPoolRequest
    DeleteDedicatedIpPoolResponse.type = Types::DeleteDedicatedIpPoolResponse
    DeleteEmailIdentityPolicyRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailIdentityPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, location_name: "PolicyName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailIdentityPolicyRequest.type = Types::DeleteEmailIdentityPolicyRequest
    DeleteEmailIdentityPolicyResponse.type = Types::DeleteEmailIdentityPolicyResponse
    DeleteEmailIdentityRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailIdentityRequest.type = Types::DeleteEmailIdentityRequest
    DeleteEmailIdentityResponse.type = Types::DeleteEmailIdentityResponse
    DeleteEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, location_name: "TemplateName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailTemplateRequest.type = Types::DeleteEmailTemplateRequest
    DeleteEmailTemplateResponse.type = Types::DeleteEmailTemplateResponse
    DeleteMultiRegionEndpointRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, location_name: "EndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMultiRegionEndpointRequest.type = Types::DeleteMultiRegionEndpointRequest
    DeleteMultiRegionEndpointResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "Status"))
    DeleteMultiRegionEndpointResponse.type = Types::DeleteMultiRegionEndpointResponse
    DeleteSuppressedDestinationRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "EmailAddress", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSuppressedDestinationRequest.type = Types::DeleteSuppressedDestinationRequest
    DeleteSuppressedDestinationResponse.type = Types::DeleteSuppressedDestinationResponse
    DeleteTenantRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, location_name: "TenantName", traits: {"smithy.api#required" => {}}))
    DeleteTenantRequest.type = Types::DeleteTenantRequest
    DeleteTenantResourceAssociationRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, location_name: "TenantName", traits: {"smithy.api#required" => {}}))
    DeleteTenantResourceAssociationRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeleteTenantResourceAssociationRequest.type = Types::DeleteTenantResourceAssociationRequest
    DeleteTenantResourceAssociationResponse.type = Types::DeleteTenantResourceAssociationResponse
    DeleteTenantResponse.type = Types::DeleteTenantResponse
    DeliverabilityDashboardAccountStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DeliverabilityDashboardAccountStatus.add_member(:pending_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_EXPIRATION", traits: {"smithy.api#enumValue" => "PENDING_EXPIRATION"}))
    DeliverabilityDashboardAccountStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DeliverabilityTestReport.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, location_name: "ReportId"))
    DeliverabilityTestReport.add_member(:report_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportName, location_name: "ReportName"))
    DeliverabilityTestReport.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverabilityTestSubject, location_name: "Subject"))
    DeliverabilityTestReport.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "FromEmailAddress"))
    DeliverabilityTestReport.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreateDate"))
    DeliverabilityTestReport.add_member(:deliverability_test_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverabilityTestStatus, location_name: "DeliverabilityTestStatus"))
    DeliverabilityTestReport.type = Types::DeliverabilityTestReport
    DeliverabilityTestReports.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverabilityTestReport)
    DeliverabilityTestStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DeliverabilityTestStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DeliveryEventType.add_member(:send, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SEND", traits: {"smithy.api#enumValue" => "SEND"}))
    DeliveryEventType.add_member(:delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELIVERY", traits: {"smithy.api#enumValue" => "DELIVERY"}))
    DeliveryEventType.add_member(:transient_bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSIENT_BOUNCE", traits: {"smithy.api#enumValue" => "TRANSIENT_BOUNCE"}))
    DeliveryEventType.add_member(:permanent_bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERMANENT_BOUNCE", traits: {"smithy.api#enumValue" => "PERMANENT_BOUNCE"}))
    DeliveryEventType.add_member(:undetermined_bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNDETERMINED_BOUNCE", traits: {"smithy.api#enumValue" => "UNDETERMINED_BOUNCE"}))
    DeliveryEventType.add_member(:complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLAINT", traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    DeliveryOptions.add_member(:tls_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsPolicy, location_name: "TlsPolicy"))
    DeliveryOptions.add_member(:sending_pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, location_name: "SendingPoolName"))
    DeliveryOptions.add_member(:max_delivery_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxDeliverySeconds, location_name: "MaxDeliverySeconds"))
    DeliveryOptions.type = Types::DeliveryOptions
    Destination.add_member(:to_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressList, location_name: "ToAddresses"))
    Destination.add_member(:cc_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressList, location_name: "CcAddresses"))
    Destination.add_member(:bcc_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressList, location_name: "BccAddresses"))
    Destination.type = Types::Destination
    Details.add_member(:routes_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutesDetails, location_name: "RoutesDetails", traits: {"smithy.api#required" => {}}))
    Details.type = Types::Details
    DimensionValueSource.add_member(:message_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MESSAGE_TAG", traits: {"smithy.api#enumValue" => "MESSAGE_TAG"}))
    DimensionValueSource.add_member(:email_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EMAIL_HEADER", traits: {"smithy.api#enumValue" => "EMAIL_HEADER"}))
    DimensionValueSource.add_member(:link_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINK_TAG", traits: {"smithy.api#enumValue" => "LINK_TAG"}))
    Dimensions.key = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensionName)
    Dimensions.value = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensionValue)
    DkimAttributes.add_member(:signing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "SigningEnabled", traits: {"smithy.api#default" => false}))
    DkimAttributes.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimStatus, location_name: "Status"))
    DkimAttributes.add_member(:tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsTokenList, location_name: "Tokens"))
    DkimAttributes.add_member(:signing_attributes_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningAttributesOrigin, location_name: "SigningAttributesOrigin"))
    DkimAttributes.add_member(:next_signing_key_length, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningKeyLength, location_name: "NextSigningKeyLength"))
    DkimAttributes.add_member(:current_signing_key_length, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningKeyLength, location_name: "CurrentSigningKeyLength"))
    DkimAttributes.add_member(:last_key_generation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastKeyGenerationTimestamp"))
    DkimAttributes.type = Types::DkimAttributes
    DkimSigningAttributes.add_member(:domain_signing_selector, ::Smithy::Schema::Shapes::MemberShape.new(target: Selector, location_name: "DomainSigningSelector"))
    DkimSigningAttributes.add_member(:domain_signing_private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateKey, location_name: "DomainSigningPrivateKey"))
    DkimSigningAttributes.add_member(:next_signing_key_length, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningKeyLength, location_name: "NextSigningKeyLength"))
    DkimSigningAttributes.add_member(:domain_signing_attributes_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningAttributesOrigin, location_name: "DomainSigningAttributesOrigin"))
    DkimSigningAttributes.type = Types::DkimSigningAttributes
    DkimSigningAttributesOrigin.add_member(:aws_ses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES", traits: {"smithy.api#enumValue" => "AWS_SES"}))
    DkimSigningAttributesOrigin.add_member(:external, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXTERNAL", traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_af_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_AF_SOUTH_1", traits: {"smithy.api#enumValue" => "AWS_SES_AF_SOUTH_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_north_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_EU_NORTH_1", traits: {"smithy.api#enumValue" => "AWS_SES_EU_NORTH_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_AP_SOUTH_1", traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTH_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_west_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_EU_WEST_3", traits: {"smithy.api#enumValue" => "AWS_SES_EU_WEST_3"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_EU_WEST_2", traits: {"smithy.api#enumValue" => "AWS_SES_EU_WEST_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_EU_SOUTH_1", traits: {"smithy.api#enumValue" => "AWS_SES_EU_SOUTH_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_EU_WEST_1", traits: {"smithy.api#enumValue" => "AWS_SES_EU_WEST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_northeast_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_AP_NORTHEAST_3", traits: {"smithy.api#enumValue" => "AWS_SES_AP_NORTHEAST_3"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_northeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_AP_NORTHEAST_2", traits: {"smithy.api#enumValue" => "AWS_SES_AP_NORTHEAST_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_me_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_ME_SOUTH_1", traits: {"smithy.api#enumValue" => "AWS_SES_ME_SOUTH_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_northeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_AP_NORTHEAST_1", traits: {"smithy.api#enumValue" => "AWS_SES_AP_NORTHEAST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_il_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_IL_CENTRAL_1", traits: {"smithy.api#enumValue" => "AWS_SES_IL_CENTRAL_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_sa_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_SA_EAST_1", traits: {"smithy.api#enumValue" => "AWS_SES_SA_EAST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ca_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_CA_CENTRAL_1", traits: {"smithy.api#enumValue" => "AWS_SES_CA_CENTRAL_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_southeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_AP_SOUTHEAST_1", traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTHEAST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_southeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_AP_SOUTHEAST_2", traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTHEAST_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_southeast_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_AP_SOUTHEAST_3", traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTHEAST_3"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_EU_CENTRAL_1", traits: {"smithy.api#enumValue" => "AWS_SES_EU_CENTRAL_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_us_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_US_EAST_1", traits: {"smithy.api#enumValue" => "AWS_SES_US_EAST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_us_east_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_US_EAST_2", traits: {"smithy.api#enumValue" => "AWS_SES_US_EAST_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_us_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_US_WEST_1", traits: {"smithy.api#enumValue" => "AWS_SES_US_WEST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_us_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_US_WEST_2", traits: {"smithy.api#enumValue" => "AWS_SES_US_WEST_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_me_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_ME_CENTRAL_1", traits: {"smithy.api#enumValue" => "AWS_SES_ME_CENTRAL_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_south_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_AP_SOUTH_2", traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTH_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_central_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SES_EU_CENTRAL_2", traits: {"smithy.api#enumValue" => "AWS_SES_EU_CENTRAL_2"}))
    DkimSigningKeyLength.add_member(:rsa_1024_bit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RSA_1024_BIT", traits: {"smithy.api#enumValue" => "RSA_1024_BIT"}))
    DkimSigningKeyLength.add_member(:rsa_2048_bit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RSA_2048_BIT", traits: {"smithy.api#enumValue" => "RSA_2048_BIT"}))
    DkimStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DkimStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DkimStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DkimStatus.add_member(:temporary_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEMPORARY_FAILURE", traits: {"smithy.api#enumValue" => "TEMPORARY_FAILURE"}))
    DkimStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    DnsTokenList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DnsToken)
    DomainDeliverabilityCampaign.add_member(:campaign_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CampaignId, location_name: "CampaignId"))
    DomainDeliverabilityCampaign.add_member(:image_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageUrl, location_name: "ImageUrl"))
    DomainDeliverabilityCampaign.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: Subject, location_name: "Subject"))
    DomainDeliverabilityCampaign.add_member(:from_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "FromAddress"))
    DomainDeliverabilityCampaign.add_member(:sending_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: IpList, location_name: "SendingIps"))
    DomainDeliverabilityCampaign.add_member(:first_seen_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "FirstSeenDateTime"))
    DomainDeliverabilityCampaign.add_member(:last_seen_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastSeenDateTime"))
    DomainDeliverabilityCampaign.add_member(:inbox_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, location_name: "InboxCount"))
    DomainDeliverabilityCampaign.add_member(:spam_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, location_name: "SpamCount"))
    DomainDeliverabilityCampaign.add_member(:read_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, location_name: "ReadRate"))
    DomainDeliverabilityCampaign.add_member(:delete_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, location_name: "DeleteRate"))
    DomainDeliverabilityCampaign.add_member(:read_delete_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, location_name: "ReadDeleteRate"))
    DomainDeliverabilityCampaign.add_member(:projected_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, location_name: "ProjectedVolume"))
    DomainDeliverabilityCampaign.add_member(:esps, ::Smithy::Schema::Shapes::MemberShape.new(target: Esps, location_name: "Esps"))
    DomainDeliverabilityCampaign.type = Types::DomainDeliverabilityCampaign
    DomainDeliverabilityCampaignList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityCampaign)
    DomainDeliverabilityTrackingOption.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, location_name: "Domain"))
    DomainDeliverabilityTrackingOption.add_member(:subscription_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "SubscriptionStartDate"))
    DomainDeliverabilityTrackingOption.add_member(:inbox_placement_tracking_option, ::Smithy::Schema::Shapes::MemberShape.new(target: InboxPlacementTrackingOption, location_name: "InboxPlacementTrackingOption"))
    DomainDeliverabilityTrackingOption.type = Types::DomainDeliverabilityTrackingOption
    DomainDeliverabilityTrackingOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityTrackingOption)
    DomainIspPlacement.add_member(:isp_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IspName, location_name: "IspName"))
    DomainIspPlacement.add_member(:inbox_raw_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, location_name: "InboxRawCount"))
    DomainIspPlacement.add_member(:spam_raw_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, location_name: "SpamRawCount"))
    DomainIspPlacement.add_member(:inbox_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, location_name: "InboxPercentage"))
    DomainIspPlacement.add_member(:spam_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, location_name: "SpamPercentage"))
    DomainIspPlacement.type = Types::DomainIspPlacement
    DomainIspPlacements.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainIspPlacement)
    EmailAddressFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsEmailAddress)
    EmailAddressList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress)
    EmailContent.add_member(:simple, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Simple"))
    EmailContent.add_member(:raw, ::Smithy::Schema::Shapes::MemberShape.new(target: RawMessage, location_name: "Raw"))
    EmailContent.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: Template, location_name: "Template"))
    EmailContent.type = Types::EmailContent
    EmailInsights.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsEmailAddress, location_name: "Destination"))
    EmailInsights.add_member(:isp, ::Smithy::Schema::Shapes::MemberShape.new(target: Isp, location_name: "Isp"))
    EmailInsights.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsEvents, location_name: "Events"))
    EmailInsights.type = Types::EmailInsights
    EmailInsightsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EmailInsights)
    EmailSubjectFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EmailSubject)
    EmailTemplateContent.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateSubject, location_name: "Subject"))
    EmailTemplateContent.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateText, location_name: "Text"))
    EmailTemplateContent.add_member(:html, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateHtml, location_name: "Html"))
    EmailTemplateContent.type = Types::EmailTemplateContent
    EmailTemplateMetadata.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, location_name: "TemplateName"))
    EmailTemplateMetadata.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    EmailTemplateMetadata.type = Types::EmailTemplateMetadata
    EmailTemplateMetadataList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateMetadata)
    EngagementEventType.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    EngagementEventType.add_member(:click, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLICK", traits: {"smithy.api#enumValue" => "CLICK"}))
    Esps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Esp)
    EventBridgeDestination.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "EventBusArn", traits: {"smithy.api#required" => {}}))
    EventBridgeDestination.type = Types::EventBridgeDestination
    EventDestination.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    EventDestination.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "Enabled", traits: {"smithy.api#default" => false}))
    EventDestination.add_member(:matching_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypes, location_name: "MatchingEventTypes", traits: {"smithy.api#required" => {}}))
    EventDestination.add_member(:kinesis_firehose_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseDestination, location_name: "KinesisFirehoseDestination"))
    EventDestination.add_member(:cloud_watch_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDestination, location_name: "CloudWatchDestination"))
    EventDestination.add_member(:sns_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsDestination, location_name: "SnsDestination"))
    EventDestination.add_member(:event_bridge_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeDestination, location_name: "EventBridgeDestination"))
    EventDestination.add_member(:pinpoint_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: PinpointDestination, location_name: "PinpointDestination"))
    EventDestination.type = Types::EventDestination
    EventDestinationDefinition.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "Enabled", traits: {"smithy.api#default" => false}))
    EventDestinationDefinition.add_member(:matching_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypes, location_name: "MatchingEventTypes"))
    EventDestinationDefinition.add_member(:kinesis_firehose_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseDestination, location_name: "KinesisFirehoseDestination"))
    EventDestinationDefinition.add_member(:cloud_watch_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDestination, location_name: "CloudWatchDestination"))
    EventDestinationDefinition.add_member(:sns_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsDestination, location_name: "SnsDestination"))
    EventDestinationDefinition.add_member(:event_bridge_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeDestination, location_name: "EventBridgeDestination"))
    EventDestinationDefinition.add_member(:pinpoint_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: PinpointDestination, location_name: "PinpointDestination"))
    EventDestinationDefinition.type = Types::EventDestinationDefinition
    EventDestinations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestination)
    EventDetails.add_member(:bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: Bounce, location_name: "Bounce"))
    EventDetails.add_member(:complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: Complaint, location_name: "Complaint"))
    EventDetails.type = Types::EventDetails
    EventType.add_member(:send, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SEND", traits: {"smithy.api#enumValue" => "SEND"}))
    EventType.add_member(:reject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECT", traits: {"smithy.api#enumValue" => "REJECT"}))
    EventType.add_member(:bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOUNCE", traits: {"smithy.api#enumValue" => "BOUNCE"}))
    EventType.add_member(:complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLAINT", traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    EventType.add_member(:delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELIVERY", traits: {"smithy.api#enumValue" => "DELIVERY"}))
    EventType.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    EventType.add_member(:click, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLICK", traits: {"smithy.api#enumValue" => "CLICK"}))
    EventType.add_member(:rendering_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RENDERING_FAILURE", traits: {"smithy.api#enumValue" => "RENDERING_FAILURE"}))
    EventType.add_member(:delivery_delay, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELIVERY_DELAY", traits: {"smithy.api#enumValue" => "DELIVERY_DELAY"}))
    EventType.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBSCRIPTION", traits: {"smithy.api#enumValue" => "SUBSCRIPTION"}))
    EventTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventType)
    ExportDataSource.add_member(:metrics_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsDataSource, location_name: "MetricsDataSource"))
    ExportDataSource.add_member(:message_insights_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageInsightsDataSource, location_name: "MessageInsightsDataSource"))
    ExportDataSource.type = Types::ExportDataSource
    ExportDestination.add_member(:data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFormat, location_name: "DataFormat", traits: {"smithy.api#required" => {}}))
    ExportDestination.add_member(:s3_url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, location_name: "S3Url"))
    ExportDestination.type = Types::ExportDestination
    ExportDimensionValue.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensionValue)
    ExportDimensions.key = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensionName)
    ExportDimensions.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDimensionValue)
    ExportJobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    ExportJobSummary.add_member(:export_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSourceType, location_name: "ExportSourceType"))
    ExportJobSummary.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "JobStatus"))
    ExportJobSummary.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    ExportJobSummary.add_member(:completed_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CompletedTimestamp"))
    ExportJobSummary.type = Types::ExportJobSummary
    ExportJobSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportJobSummary)
    ExportMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Metric, location_name: "Name"))
    ExportMetric.add_member(:aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAggregation, location_name: "Aggregation"))
    ExportMetric.type = Types::ExportMetric
    ExportMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportMetric)
    ExportSourceType.add_member(:metrics_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "METRICS_DATA", traits: {"smithy.api#enumValue" => "METRICS_DATA"}))
    ExportSourceType.add_member(:message_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MESSAGE_INSIGHTS", traits: {"smithy.api#enumValue" => "MESSAGE_INSIGHTS"}))
    ExportStatistics.add_member(:processed_records_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessedRecordsCount, location_name: "ProcessedRecordsCount"))
    ExportStatistics.add_member(:exported_records_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportedRecordsCount, location_name: "ExportedRecordsCount"))
    ExportStatistics.type = Types::ExportStatistics
    FailureInfo.add_member(:failed_records_s3_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedRecordsS3Url, location_name: "FailedRecordsS3Url"))
    FailureInfo.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "ErrorMessage"))
    FailureInfo.type = Types::FailureInfo
    FeatureStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    FeatureStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    GetAccountRequest.type = Types::GetAccountRequest
    GetAccountResponse.add_member(:dedicated_ip_auto_warmup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "DedicatedIpAutoWarmupEnabled", traits: {"smithy.api#default" => false}))
    GetAccountResponse.add_member(:enforcement_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralEnforcementStatus, location_name: "EnforcementStatus"))
    GetAccountResponse.add_member(:production_access_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "ProductionAccessEnabled", traits: {"smithy.api#default" => false}))
    GetAccountResponse.add_member(:send_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: SendQuota, location_name: "SendQuota"))
    GetAccountResponse.add_member(:sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "SendingEnabled", traits: {"smithy.api#default" => false}))
    GetAccountResponse.add_member(:suppression_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionAttributes, location_name: "SuppressionAttributes"))
    GetAccountResponse.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountDetails, location_name: "Details"))
    GetAccountResponse.add_member(:vdm_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: VdmAttributes, location_name: "VdmAttributes"))
    GetAccountResponse.type = Types::GetAccountResponse
    GetBlacklistReportsRequest.add_member(:blacklist_item_names, ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistItemNames, location_name: "BlacklistItemNames", traits: {"smithy.api#httpQuery" => "BlacklistItemNames", "smithy.api#required" => {}}))
    GetBlacklistReportsRequest.type = Types::GetBlacklistReportsRequest
    GetBlacklistReportsResponse.add_member(:blacklist_report, ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistReport, location_name: "BlacklistReport", traits: {"smithy.api#required" => {}}))
    GetBlacklistReportsResponse.type = Types::GetBlacklistReportsResponse
    GetConfigurationSetEventDestinationsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationSetEventDestinationsRequest.type = Types::GetConfigurationSetEventDestinationsRequest
    GetConfigurationSetEventDestinationsResponse.add_member(:event_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinations, location_name: "EventDestinations"))
    GetConfigurationSetEventDestinationsResponse.type = Types::GetConfigurationSetEventDestinationsResponse
    GetConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationSetRequest.type = Types::GetConfigurationSetRequest
    GetConfigurationSetResponse.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    GetConfigurationSetResponse.add_member(:tracking_options, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingOptions, location_name: "TrackingOptions"))
    GetConfigurationSetResponse.add_member(:delivery_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryOptions, location_name: "DeliveryOptions"))
    GetConfigurationSetResponse.add_member(:reputation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationOptions, location_name: "ReputationOptions"))
    GetConfigurationSetResponse.add_member(:sending_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingOptions, location_name: "SendingOptions"))
    GetConfigurationSetResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    GetConfigurationSetResponse.add_member(:suppression_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionOptions, location_name: "SuppressionOptions"))
    GetConfigurationSetResponse.add_member(:vdm_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VdmOptions, location_name: "VdmOptions"))
    GetConfigurationSetResponse.add_member(:archiving_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivingOptions, location_name: "ArchivingOptions"))
    GetConfigurationSetResponse.type = Types::GetConfigurationSetResponse
    GetContactListRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, location_name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContactListRequest.type = Types::GetContactListRequest
    GetContactListResponse.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, location_name: "ContactListName"))
    GetContactListResponse.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, location_name: "Topics"))
    GetContactListResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "Description"))
    GetContactListResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    GetContactListResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTimestamp"))
    GetContactListResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    GetContactListResponse.type = Types::GetContactListResponse
    GetContactRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, location_name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContactRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "EmailAddress", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContactRequest.type = Types::GetContactRequest
    GetContactResponse.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, location_name: "ContactListName"))
    GetContactResponse.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "EmailAddress"))
    GetContactResponse.add_member(:topic_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicPreferenceList, location_name: "TopicPreferences"))
    GetContactResponse.add_member(:topic_default_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicPreferenceList, location_name: "TopicDefaultPreferences"))
    GetContactResponse.add_member(:unsubscribe_all, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsubscribeAll, location_name: "UnsubscribeAll", traits: {"smithy.api#default" => false}))
    GetContactResponse.add_member(:attributes_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributesData, location_name: "AttributesData"))
    GetContactResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    GetContactResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTimestamp"))
    GetContactResponse.type = Types::GetContactResponse
    GetCustomVerificationEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, location_name: "TemplateName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCustomVerificationEmailTemplateRequest.type = Types::GetCustomVerificationEmailTemplateRequest
    GetCustomVerificationEmailTemplateResponse.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, location_name: "TemplateName"))
    GetCustomVerificationEmailTemplateResponse.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "FromEmailAddress"))
    GetCustomVerificationEmailTemplateResponse.add_member(:template_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateSubject, location_name: "TemplateSubject"))
    GetCustomVerificationEmailTemplateResponse.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateContent, location_name: "TemplateContent"))
    GetCustomVerificationEmailTemplateResponse.add_member(:success_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessRedirectionURL, location_name: "SuccessRedirectionURL"))
    GetCustomVerificationEmailTemplateResponse.add_member(:failure_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureRedirectionURL, location_name: "FailureRedirectionURL"))
    GetCustomVerificationEmailTemplateResponse.type = Types::GetCustomVerificationEmailTemplateResponse
    GetDedicatedIpPoolRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, location_name: "PoolName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDedicatedIpPoolRequest.type = Types::GetDedicatedIpPoolRequest
    GetDedicatedIpPoolResponse.add_member(:dedicated_ip_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedIpPool, location_name: "DedicatedIpPool"))
    GetDedicatedIpPoolResponse.type = Types::GetDedicatedIpPoolResponse
    GetDedicatedIpRequest.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, location_name: "Ip", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDedicatedIpRequest.type = Types::GetDedicatedIpRequest
    GetDedicatedIpResponse.add_member(:dedicated_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedIp, location_name: "DedicatedIp"))
    GetDedicatedIpResponse.type = Types::GetDedicatedIpResponse
    GetDedicatedIpsRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, location_name: "PoolName", traits: {"smithy.api#httpQuery" => "PoolName"}))
    GetDedicatedIpsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetDedicatedIpsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    GetDedicatedIpsRequest.type = Types::GetDedicatedIpsRequest
    GetDedicatedIpsResponse.add_member(:dedicated_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedIpList, location_name: "DedicatedIps"))
    GetDedicatedIpsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    GetDedicatedIpsResponse.type = Types::GetDedicatedIpsResponse
    GetDeliverabilityDashboardOptionsRequest.type = Types::GetDeliverabilityDashboardOptionsRequest
    GetDeliverabilityDashboardOptionsResponse.add_member(:dashboard_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "DashboardEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    GetDeliverabilityDashboardOptionsResponse.add_member(:subscription_expiry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "SubscriptionExpiryDate"))
    GetDeliverabilityDashboardOptionsResponse.add_member(:account_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverabilityDashboardAccountStatus, location_name: "AccountStatus"))
    GetDeliverabilityDashboardOptionsResponse.add_member(:active_subscribed_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityTrackingOptions, location_name: "ActiveSubscribedDomains"))
    GetDeliverabilityDashboardOptionsResponse.add_member(:pending_expiration_subscribed_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityTrackingOptions, location_name: "PendingExpirationSubscribedDomains"))
    GetDeliverabilityDashboardOptionsResponse.type = Types::GetDeliverabilityDashboardOptionsResponse
    GetDeliverabilityTestReportRequest.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, location_name: "ReportId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeliverabilityTestReportRequest.type = Types::GetDeliverabilityTestReportRequest
    GetDeliverabilityTestReportResponse.add_member(:deliverability_test_report, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverabilityTestReport, location_name: "DeliverabilityTestReport", traits: {"smithy.api#required" => {}}))
    GetDeliverabilityTestReportResponse.add_member(:overall_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStatistics, location_name: "OverallPlacement", traits: {"smithy.api#required" => {}}))
    GetDeliverabilityTestReportResponse.add_member(:isp_placements, ::Smithy::Schema::Shapes::MemberShape.new(target: IspPlacements, location_name: "IspPlacements", traits: {"smithy.api#required" => {}}))
    GetDeliverabilityTestReportResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageContent, location_name: "Message"))
    GetDeliverabilityTestReportResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    GetDeliverabilityTestReportResponse.type = Types::GetDeliverabilityTestReportResponse
    GetDomainDeliverabilityCampaignRequest.add_member(:campaign_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CampaignId, location_name: "CampaignId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainDeliverabilityCampaignRequest.type = Types::GetDomainDeliverabilityCampaignRequest
    GetDomainDeliverabilityCampaignResponse.add_member(:domain_deliverability_campaign, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityCampaign, location_name: "DomainDeliverabilityCampaign", traits: {"smithy.api#required" => {}}))
    GetDomainDeliverabilityCampaignResponse.type = Types::GetDomainDeliverabilityCampaignResponse
    GetDomainStatisticsReportRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "Domain", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainStatisticsReportRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartDate", traits: {"smithy.api#httpQuery" => "StartDate", "smithy.api#required" => {}}))
    GetDomainStatisticsReportRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EndDate", traits: {"smithy.api#httpQuery" => "EndDate", "smithy.api#required" => {}}))
    GetDomainStatisticsReportRequest.type = Types::GetDomainStatisticsReportRequest
    GetDomainStatisticsReportResponse.add_member(:overall_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: OverallVolume, location_name: "OverallVolume", traits: {"smithy.api#required" => {}}))
    GetDomainStatisticsReportResponse.add_member(:daily_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyVolumes, location_name: "DailyVolumes", traits: {"smithy.api#required" => {}}))
    GetDomainStatisticsReportResponse.type = Types::GetDomainStatisticsReportResponse
    GetEmailIdentityPoliciesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailIdentityPoliciesRequest.type = Types::GetEmailIdentityPoliciesRequest
    GetEmailIdentityPoliciesResponse.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyMap, location_name: "Policies"))
    GetEmailIdentityPoliciesResponse.type = Types::GetEmailIdentityPoliciesResponse
    GetEmailIdentityRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailIdentityRequest.type = Types::GetEmailIdentityRequest
    GetEmailIdentityResponse.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, location_name: "IdentityType"))
    GetEmailIdentityResponse.add_member(:feedback_forwarding_status, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "FeedbackForwardingStatus", traits: {"smithy.api#default" => false}))
    GetEmailIdentityResponse.add_member(:verified_for_sending_status, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "VerifiedForSendingStatus", traits: {"smithy.api#default" => false}))
    GetEmailIdentityResponse.add_member(:dkim_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimAttributes, location_name: "DkimAttributes"))
    GetEmailIdentityResponse.add_member(:mail_from_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MailFromAttributes, location_name: "MailFromAttributes"))
    GetEmailIdentityResponse.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyMap, location_name: "Policies"))
    GetEmailIdentityResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    GetEmailIdentityResponse.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    GetEmailIdentityResponse.add_member(:verification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationStatus, location_name: "VerificationStatus"))
    GetEmailIdentityResponse.add_member(:verification_info, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationInfo, location_name: "VerificationInfo"))
    GetEmailIdentityResponse.type = Types::GetEmailIdentityResponse
    GetEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, location_name: "TemplateName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailTemplateRequest.type = Types::GetEmailTemplateRequest
    GetEmailTemplateResponse.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, location_name: "TemplateName", traits: {"smithy.api#required" => {}}))
    GetEmailTemplateResponse.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateContent, location_name: "TemplateContent", traits: {"smithy.api#required" => {}}))
    GetEmailTemplateResponse.type = Types::GetEmailTemplateResponse
    GetExportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportJobRequest.type = Types::GetExportJobRequest
    GetExportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    GetExportJobResponse.add_member(:export_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSourceType, location_name: "ExportSourceType"))
    GetExportJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "JobStatus"))
    GetExportJobResponse.add_member(:export_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDestination, location_name: "ExportDestination"))
    GetExportJobResponse.add_member(:export_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDataSource, location_name: "ExportDataSource"))
    GetExportJobResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    GetExportJobResponse.add_member(:completed_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CompletedTimestamp"))
    GetExportJobResponse.add_member(:failure_info, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureInfo, location_name: "FailureInfo"))
    GetExportJobResponse.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatistics, location_name: "Statistics"))
    GetExportJobResponse.type = Types::GetExportJobResponse
    GetImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.type = Types::GetImportJobRequest
    GetImportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    GetImportJobResponse.add_member(:import_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDestination, location_name: "ImportDestination"))
    GetImportJobResponse.add_member(:import_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDataSource, location_name: "ImportDataSource"))
    GetImportJobResponse.add_member(:failure_info, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureInfo, location_name: "FailureInfo"))
    GetImportJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "JobStatus"))
    GetImportJobResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    GetImportJobResponse.add_member(:completed_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CompletedTimestamp"))
    GetImportJobResponse.add_member(:processed_records_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessedRecordsCount, location_name: "ProcessedRecordsCount"))
    GetImportJobResponse.add_member(:failed_records_count, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedRecordsCount, location_name: "FailedRecordsCount"))
    GetImportJobResponse.type = Types::GetImportJobResponse
    GetMessageInsightsRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutboundMessageId, location_name: "MessageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMessageInsightsRequest.type = Types::GetMessageInsightsRequest
    GetMessageInsightsResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutboundMessageId, location_name: "MessageId"))
    GetMessageInsightsResponse.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsEmailAddress, location_name: "FromEmailAddress"))
    GetMessageInsightsResponse.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailSubject, location_name: "Subject"))
    GetMessageInsightsResponse.add_member(:email_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagList, location_name: "EmailTags"))
    GetMessageInsightsResponse.add_member(:insights, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailInsightsList, location_name: "Insights"))
    GetMessageInsightsResponse.type = Types::GetMessageInsightsResponse
    GetMultiRegionEndpointRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, location_name: "EndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMultiRegionEndpointRequest.type = Types::GetMultiRegionEndpointRequest
    GetMultiRegionEndpointResponse.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, location_name: "EndpointName"))
    GetMultiRegionEndpointResponse.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, location_name: "EndpointId"))
    GetMultiRegionEndpointResponse.add_member(:routes, ::Smithy::Schema::Shapes::MemberShape.new(target: Routes, location_name: "Routes"))
    GetMultiRegionEndpointResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "Status"))
    GetMultiRegionEndpointResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    GetMultiRegionEndpointResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTimestamp"))
    GetMultiRegionEndpointResponse.type = Types::GetMultiRegionEndpointResponse
    GetReputationEntityRequest.add_member(:reputation_entity_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityReference, location_name: "ReputationEntityReference", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReputationEntityRequest.add_member(:reputation_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityType, location_name: "ReputationEntityType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReputationEntityRequest.type = Types::GetReputationEntityRequest
    GetReputationEntityResponse.add_member(:reputation_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntity, location_name: "ReputationEntity"))
    GetReputationEntityResponse.type = Types::GetReputationEntityResponse
    GetSuppressedDestinationRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "EmailAddress", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSuppressedDestinationRequest.type = Types::GetSuppressedDestinationRequest
    GetSuppressedDestinationResponse.add_member(:suppressed_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressedDestination, location_name: "SuppressedDestination", traits: {"smithy.api#required" => {}}))
    GetSuppressedDestinationResponse.type = Types::GetSuppressedDestinationResponse
    GetTenantRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, location_name: "TenantName", traits: {"smithy.api#required" => {}}))
    GetTenantRequest.type = Types::GetTenantRequest
    GetTenantResponse.add_member(:tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: Tenant, location_name: "Tenant"))
    GetTenantResponse.type = Types::GetTenantResponse
    GuardianAttributes.add_member(:optimized_shared_delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, location_name: "OptimizedSharedDelivery"))
    GuardianAttributes.type = Types::GuardianAttributes
    GuardianOptions.add_member(:optimized_shared_delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, location_name: "OptimizedSharedDelivery"))
    GuardianOptions.type = Types::GuardianOptions
    HttpsPolicy.add_member(:require, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUIRE", traits: {"smithy.api#enumValue" => "REQUIRE"}))
    HttpsPolicy.add_member(:require_open_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUIRE_OPEN_ONLY", traits: {"smithy.api#enumValue" => "REQUIRE_OPEN_ONLY"}))
    HttpsPolicy.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPTIONAL", traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    IdentityInfo.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, location_name: "IdentityType"))
    IdentityInfo.add_member(:identity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "IdentityName"))
    IdentityInfo.add_member(:sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "SendingEnabled", traits: {"smithy.api#default" => false}))
    IdentityInfo.add_member(:verification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationStatus, location_name: "VerificationStatus"))
    IdentityInfo.type = Types::IdentityInfo
    IdentityInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityInfo)
    IdentityType.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EMAIL_ADDRESS", traits: {"smithy.api#enumValue" => "EMAIL_ADDRESS"}))
    IdentityType.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN", traits: {"smithy.api#enumValue" => "DOMAIN"}))
    IdentityType.add_member(:managed_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANAGED_DOMAIN", traits: {"smithy.api#enumValue" => "MANAGED_DOMAIN"}))
    ImportDataSource.add_member(:s3_url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, location_name: "S3Url", traits: {"smithy.api#required" => {}}))
    ImportDataSource.add_member(:data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFormat, location_name: "DataFormat", traits: {"smithy.api#required" => {}}))
    ImportDataSource.type = Types::ImportDataSource
    ImportDestination.add_member(:suppression_list_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListDestination, location_name: "SuppressionListDestination"))
    ImportDestination.add_member(:contact_list_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListDestination, location_name: "ContactListDestination"))
    ImportDestination.type = Types::ImportDestination
    ImportDestinationType.add_member(:suppression_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUPPRESSION_LIST", traits: {"smithy.api#enumValue" => "SUPPRESSION_LIST"}))
    ImportDestinationType.add_member(:contact_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTACT_LIST", traits: {"smithy.api#enumValue" => "CONTACT_LIST"}))
    ImportJobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "JobId"))
    ImportJobSummary.add_member(:import_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDestination, location_name: "ImportDestination"))
    ImportJobSummary.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "JobStatus"))
    ImportJobSummary.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    ImportJobSummary.add_member(:processed_records_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessedRecordsCount, location_name: "ProcessedRecordsCount"))
    ImportJobSummary.add_member(:failed_records_count, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedRecordsCount, location_name: "FailedRecordsCount"))
    ImportJobSummary.type = Types::ImportJobSummary
    ImportJobSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobSummary)
    InboxPlacementTrackingOption.add_member(:global, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "Global", traits: {"smithy.api#default" => false}))
    InboxPlacementTrackingOption.add_member(:tracked_isps, ::Smithy::Schema::Shapes::MemberShape.new(target: IspNameList, location_name: "TrackedIsps"))
    InboxPlacementTrackingOption.type = Types::InboxPlacementTrackingOption
    InsightsEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "Timestamp"))
    InsightsEvent.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, location_name: "Type"))
    InsightsEvent.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDetails, location_name: "Details"))
    InsightsEvent.type = Types::InsightsEvent
    InsightsEvents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsEvent)
    InternalServiceErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    IpList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Ip)
    IspFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Isp)
    IspNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IspName)
    IspPlacement.add_member(:isp_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IspName, location_name: "IspName"))
    IspPlacement.add_member(:placement_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStatistics, location_name: "PlacementStatistics"))
    IspPlacement.type = Types::IspPlacement
    IspPlacements.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IspPlacement)
    JobStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    JobStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    JobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    KinesisFirehoseDestination.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseDestination.add_member(:delivery_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "DeliveryStreamArn", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseDestination.type = Types::KinesisFirehoseDestination
    LastDeliveryEventList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryEventType)
    LastEngagementEventList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementEventType)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListConfigurationSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListConfigurationSetsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListConfigurationSetsRequest.type = Types::ListConfigurationSetsRequest
    ListConfigurationSetsResponse.add_member(:configuration_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameList, location_name: "ConfigurationSets"))
    ListConfigurationSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListConfigurationSetsResponse.type = Types::ListConfigurationSetsResponse
    ListContactListsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListContactListsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListContactListsRequest.type = Types::ListContactListsRequest
    ListContactListsResponse.add_member(:contact_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfContactLists, location_name: "ContactLists"))
    ListContactListsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListContactListsResponse.type = Types::ListContactListsResponse
    ListContactsFilter.add_member(:filtered_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionStatus, location_name: "FilteredStatus"))
    ListContactsFilter.add_member(:topic_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicFilter, location_name: "TopicFilter"))
    ListContactsFilter.type = Types::ListContactsFilter
    ListContactsRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, location_name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListContactsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListContactsFilter, location_name: "Filter"))
    ListContactsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize"))
    ListContactsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListContactsRequest.type = Types::ListContactsRequest
    ListContactsResponse.add_member(:contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfContacts, location_name: "Contacts"))
    ListContactsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListContactsResponse.type = Types::ListContactsResponse
    ListCustomVerificationEmailTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListCustomVerificationEmailTemplatesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListCustomVerificationEmailTemplatesRequest.type = Types::ListCustomVerificationEmailTemplatesRequest
    ListCustomVerificationEmailTemplatesResponse.add_member(:custom_verification_email_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVerificationEmailTemplatesList, location_name: "CustomVerificationEmailTemplates"))
    ListCustomVerificationEmailTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListCustomVerificationEmailTemplatesResponse.type = Types::ListCustomVerificationEmailTemplatesResponse
    ListDedicatedIpPoolsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListDedicatedIpPoolsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListDedicatedIpPoolsRequest.type = Types::ListDedicatedIpPoolsRequest
    ListDedicatedIpPoolsResponse.add_member(:dedicated_ip_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDedicatedIpPools, location_name: "DedicatedIpPools"))
    ListDedicatedIpPoolsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListDedicatedIpPoolsResponse.type = Types::ListDedicatedIpPoolsResponse
    ListDeliverabilityTestReportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListDeliverabilityTestReportsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListDeliverabilityTestReportsRequest.type = Types::ListDeliverabilityTestReportsRequest
    ListDeliverabilityTestReportsResponse.add_member(:deliverability_test_reports, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverabilityTestReports, location_name: "DeliverabilityTestReports", traits: {"smithy.api#required" => {}}))
    ListDeliverabilityTestReportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListDeliverabilityTestReportsResponse.type = Types::ListDeliverabilityTestReportsResponse
    ListDomainDeliverabilityCampaignsRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartDate", traits: {"smithy.api#httpQuery" => "StartDate", "smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EndDate", traits: {"smithy.api#httpQuery" => "EndDate", "smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:subscribed_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, location_name: "SubscribedDomain", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListDomainDeliverabilityCampaignsRequest.type = Types::ListDomainDeliverabilityCampaignsRequest
    ListDomainDeliverabilityCampaignsResponse.add_member(:domain_deliverability_campaigns, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityCampaignList, location_name: "DomainDeliverabilityCampaigns", traits: {"smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListDomainDeliverabilityCampaignsResponse.type = Types::ListDomainDeliverabilityCampaignsResponse
    ListEmailIdentitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListEmailIdentitiesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListEmailIdentitiesRequest.type = Types::ListEmailIdentitiesRequest
    ListEmailIdentitiesResponse.add_member(:email_identities, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityInfoList, location_name: "EmailIdentities"))
    ListEmailIdentitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListEmailIdentitiesResponse.type = Types::ListEmailIdentitiesResponse
    ListEmailTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListEmailTemplatesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListEmailTemplatesRequest.type = Types::ListEmailTemplatesRequest
    ListEmailTemplatesResponse.add_member(:templates_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateMetadataList, location_name: "TemplatesMetadata"))
    ListEmailTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListEmailTemplatesResponse.type = Types::ListEmailTemplatesResponse
    ListExportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListExportJobsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize"))
    ListExportJobsRequest.add_member(:export_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSourceType, location_name: "ExportSourceType"))
    ListExportJobsRequest.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "JobStatus"))
    ListExportJobsRequest.type = Types::ListExportJobsRequest
    ListExportJobsResponse.add_member(:export_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportJobSummaryList, location_name: "ExportJobs"))
    ListExportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListExportJobsResponse.type = Types::ListExportJobsResponse
    ListImportJobsRequest.add_member(:import_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDestinationType, location_name: "ImportDestinationType"))
    ListImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListImportJobsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize"))
    ListImportJobsRequest.type = Types::ListImportJobsRequest
    ListImportJobsResponse.add_member(:import_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobSummaryList, location_name: "ImportJobs"))
    ListImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListImportJobsResponse.type = Types::ListImportJobsResponse
    ListManagementOptions.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, location_name: "ContactListName", traits: {"smithy.api#required" => {}}))
    ListManagementOptions.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicName, location_name: "TopicName"))
    ListManagementOptions.type = Types::ListManagementOptions
    ListMultiRegionEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenV2, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListMultiRegionEndpointsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSizeV2, location_name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListMultiRegionEndpointsRequest.type = Types::ListMultiRegionEndpointsRequest
    ListMultiRegionEndpointsResponse.add_member(:multi_region_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionEndpoints, location_name: "MultiRegionEndpoints"))
    ListMultiRegionEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenV2, location_name: "NextToken"))
    ListMultiRegionEndpointsResponse.type = Types::ListMultiRegionEndpointsResponse
    ListOfContactLists.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContactList)
    ListOfContacts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Contact)
    ListOfDedicatedIpPools.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName)
    ListRecommendationsFilter.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ListRecommendationsFilterKey)
    ListRecommendationsFilter.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ListRecommendationFilterValue)
    ListRecommendationsFilterKey.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TYPE", traits: {"smithy.api#enumValue" => "TYPE"}))
    ListRecommendationsFilterKey.add_member(:impact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPACT", traits: {"smithy.api#enumValue" => "IMPACT"}))
    ListRecommendationsFilterKey.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATUS", traits: {"smithy.api#enumValue" => "STATUS"}))
    ListRecommendationsFilterKey.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE_ARN", traits: {"smithy.api#enumValue" => "RESOURCE_ARN"}))
    ListRecommendationsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRecommendationsFilter, location_name: "Filter"))
    ListRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListRecommendationsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize"))
    ListRecommendationsRequest.type = Types::ListRecommendationsRequest
    ListRecommendationsResponse.add_member(:recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationsList, location_name: "Recommendations"))
    ListRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListRecommendationsResponse.type = Types::ListRecommendationsResponse
    ListReputationEntitiesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityFilter, location_name: "Filter"))
    ListReputationEntitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListReputationEntitiesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize"))
    ListReputationEntitiesRequest.type = Types::ListReputationEntitiesRequest
    ListReputationEntitiesResponse.add_member(:reputation_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntitiesList, location_name: "ReputationEntities"))
    ListReputationEntitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListReputationEntitiesResponse.type = Types::ListReputationEntitiesResponse
    ListResourceTenantsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListResourceTenantsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize"))
    ListResourceTenantsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListResourceTenantsRequest.type = Types::ListResourceTenantsRequest
    ListResourceTenantsResponse.add_member(:resource_tenants, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTenantMetadataList, location_name: "ResourceTenants"))
    ListResourceTenantsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListResourceTenantsResponse.type = Types::ListResourceTenantsResponse
    ListSuppressedDestinationsRequest.add_member(:reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReasons, location_name: "Reasons", traits: {"smithy.api#httpQuery" => "Reason"}))
    ListSuppressedDestinationsRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartDate", traits: {"smithy.api#httpQuery" => "StartDate"}))
    ListSuppressedDestinationsRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EndDate", traits: {"smithy.api#httpQuery" => "EndDate"}))
    ListSuppressedDestinationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListSuppressedDestinationsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListSuppressedDestinationsRequest.type = Types::ListSuppressedDestinationsRequest
    ListSuppressedDestinationsResponse.add_member(:suppressed_destination_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressedDestinationSummaries, location_name: "SuppressedDestinationSummaries"))
    ListSuppressedDestinationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListSuppressedDestinationsResponse.type = Types::ListSuppressedDestinationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceArn", traits: {"smithy.api#httpQuery" => "ResourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTenantResourcesFilter.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ListTenantResourcesFilterKey)
    ListTenantResourcesFilter.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ListTenantResourcesFilterValue)
    ListTenantResourcesFilterKey.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "RESOURCE_TYPE"}))
    ListTenantResourcesRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, location_name: "TenantName", traits: {"smithy.api#required" => {}}))
    ListTenantResourcesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTenantResourcesFilter, location_name: "Filter"))
    ListTenantResourcesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize"))
    ListTenantResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListTenantResourcesRequest.type = Types::ListTenantResourcesRequest
    ListTenantResourcesResponse.add_member(:tenant_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantResourceList, location_name: "TenantResources"))
    ListTenantResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListTenantResourcesResponse.type = Types::ListTenantResourcesResponse
    ListTenantsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListTenantsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, location_name: "PageSize"))
    ListTenantsRequest.type = Types::ListTenantsRequest
    ListTenantsResponse.add_member(:tenants, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantInfoList, location_name: "Tenants"))
    ListTenantsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListTenantsResponse.type = Types::ListTenantsResponse
    MailFromAttributes.add_member(:mail_from_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: MailFromDomainName, location_name: "MailFromDomain", traits: {"smithy.api#required" => {}}))
    MailFromAttributes.add_member(:mail_from_domain_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MailFromDomainStatus, location_name: "MailFromDomainStatus", traits: {"smithy.api#required" => {}}))
    MailFromAttributes.add_member(:behavior_on_mx_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: BehaviorOnMxFailure, location_name: "BehaviorOnMxFailure", traits: {"smithy.api#required" => {}}))
    MailFromAttributes.type = Types::MailFromAttributes
    MailFromDomainNotVerifiedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    MailFromDomainNotVerifiedException.type = Types::MailFromDomainNotVerifiedException
    MailFromDomainStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    MailFromDomainStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    MailFromDomainStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    MailFromDomainStatus.add_member(:temporary_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEMPORARY_FAILURE", traits: {"smithy.api#enumValue" => "TEMPORARY_FAILURE"}))
    MailType.add_member(:marketing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MARKETING", traits: {"smithy.api#enumValue" => "MARKETING"}))
    MailType.add_member(:transactional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSACTIONAL", traits: {"smithy.api#enumValue" => "TRANSACTIONAL"}))
    Message.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, location_name: "Subject", traits: {"smithy.api#required" => {}}))
    Message.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Body, location_name: "Body", traits: {"smithy.api#required" => {}}))
    Message.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageHeaderList, location_name: "Headers"))
    Message.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentList, location_name: "Attachments"))
    Message.type = Types::Message
    MessageHeader.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageHeaderName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    MessageHeader.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageHeaderValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    MessageHeader.type = Types::MessageHeader
    MessageHeaderList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MessageHeader)
    MessageInsightsDataSource.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartDate", traits: {"smithy.api#required" => {}}))
    MessageInsightsDataSource.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EndDate", traits: {"smithy.api#required" => {}}))
    MessageInsightsDataSource.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageInsightsFilters, location_name: "Include"))
    MessageInsightsDataSource.add_member(:exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageInsightsFilters, location_name: "Exclude"))
    MessageInsightsDataSource.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageInsightsExportMaxResults, location_name: "MaxResults"))
    MessageInsightsDataSource.type = Types::MessageInsightsDataSource
    MessageInsightsFilters.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressFilterList, location_name: "FromEmailAddress"))
    MessageInsightsFilters.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressFilterList, location_name: "Destination"))
    MessageInsightsFilters.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailSubjectFilterList, location_name: "Subject"))
    MessageInsightsFilters.add_member(:isp, ::Smithy::Schema::Shapes::MemberShape.new(target: IspFilterList, location_name: "Isp"))
    MessageInsightsFilters.add_member(:last_delivery_event, ::Smithy::Schema::Shapes::MemberShape.new(target: LastDeliveryEventList, location_name: "LastDeliveryEvent"))
    MessageInsightsFilters.add_member(:last_engagement_event, ::Smithy::Schema::Shapes::MemberShape.new(target: LastEngagementEventList, location_name: "LastEngagementEvent"))
    MessageInsightsFilters.type = Types::MessageInsightsFilters
    MessageRejected.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    MessageRejected.type = Types::MessageRejected
    MessageTag.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    MessageTag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    MessageTag.type = Types::MessageTag
    MessageTagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTag)
    Metric.add_member(:send, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SEND", traits: {"smithy.api#enumValue" => "SEND"}))
    Metric.add_member(:complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLAINT", traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    Metric.add_member(:permanent_bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERMANENT_BOUNCE", traits: {"smithy.api#enumValue" => "PERMANENT_BOUNCE"}))
    Metric.add_member(:transient_bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSIENT_BOUNCE", traits: {"smithy.api#enumValue" => "TRANSIENT_BOUNCE"}))
    Metric.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    Metric.add_member(:click, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLICK", traits: {"smithy.api#enumValue" => "CLICK"}))
    Metric.add_member(:delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELIVERY", traits: {"smithy.api#enumValue" => "DELIVERY"}))
    Metric.add_member(:delivery_open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELIVERY_OPEN", traits: {"smithy.api#enumValue" => "DELIVERY_OPEN"}))
    Metric.add_member(:delivery_click, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELIVERY_CLICK", traits: {"smithy.api#enumValue" => "DELIVERY_CLICK"}))
    Metric.add_member(:delivery_complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELIVERY_COMPLAINT", traits: {"smithy.api#enumValue" => "DELIVERY_COMPLAINT"}))
    MetricAggregation.add_member(:rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RATE", traits: {"smithy.api#enumValue" => "RATE"}))
    MetricAggregation.add_member(:volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VOLUME", traits: {"smithy.api#enumValue" => "VOLUME"}))
    MetricDataError.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryIdentifier, location_name: "Id"))
    MetricDataError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryErrorCode, location_name: "Code"))
    MetricDataError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryErrorMessage, location_name: "Message"))
    MetricDataError.type = Types::MetricDataError
    MetricDataErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataError)
    MetricDataResult.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryIdentifier, location_name: "Id"))
    MetricDataResult.add_member(:timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampList, location_name: "Timestamps"))
    MetricDataResult.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValueList, location_name: "Values"))
    MetricDataResult.type = Types::MetricDataResult
    MetricDataResultList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataResult)
    MetricDimensionName.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EMAIL_IDENTITY", traits: {"smithy.api#enumValue" => "EMAIL_IDENTITY"}))
    MetricDimensionName.add_member(:configuration_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFIGURATION_SET", traits: {"smithy.api#enumValue" => "CONFIGURATION_SET"}))
    MetricDimensionName.add_member(:isp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ISP", traits: {"smithy.api#enumValue" => "ISP"}))
    MetricNamespace.add_member(:vdm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VDM", traits: {"smithy.api#enumValue" => "VDM"}))
    MetricValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Counter)
    MetricsDataSource.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDimensions, location_name: "Dimensions", traits: {"smithy.api#required" => {}}))
    MetricsDataSource.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricNamespace, location_name: "Namespace", traits: {"smithy.api#required" => {}}))
    MetricsDataSource.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportMetrics, location_name: "Metrics", traits: {"smithy.api#required" => {}}))
    MetricsDataSource.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartDate", traits: {"smithy.api#required" => {}}))
    MetricsDataSource.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EndDate", traits: {"smithy.api#required" => {}}))
    MetricsDataSource.type = Types::MetricsDataSource
    MultiRegionEndpoint.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, location_name: "EndpointName"))
    MultiRegionEndpoint.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "Status"))
    MultiRegionEndpoint.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, location_name: "EndpointId"))
    MultiRegionEndpoint.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, location_name: "Regions"))
    MultiRegionEndpoint.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    MultiRegionEndpoint.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTimestamp"))
    MultiRegionEndpoint.type = Types::MultiRegionEndpoint
    MultiRegionEndpoints.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionEndpoint)
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    NotFoundException.type = Types::NotFoundException
    OverallVolume.add_member(:volume_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeStatistics, location_name: "VolumeStatistics"))
    OverallVolume.add_member(:read_rate_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, location_name: "ReadRatePercent"))
    OverallVolume.add_member(:domain_isp_placements, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainIspPlacements, location_name: "DomainIspPlacements"))
    OverallVolume.type = Types::OverallVolume
    PinpointDestination.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ApplicationArn"))
    PinpointDestination.type = Types::PinpointDestination
    PlacementStatistics.add_member(:inbox_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, location_name: "InboxPercentage"))
    PlacementStatistics.add_member(:spam_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, location_name: "SpamPercentage"))
    PlacementStatistics.add_member(:missing_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, location_name: "MissingPercentage"))
    PlacementStatistics.add_member(:spf_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, location_name: "SpfPercentage"))
    PlacementStatistics.add_member(:dkim_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, location_name: "DkimPercentage"))
    PlacementStatistics.type = Types::PlacementStatistics
    PolicyMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName)
    PolicyMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Policy)
    PutAccountDedicatedIpWarmupAttributesRequest.add_member(:auto_warmup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "AutoWarmupEnabled", traits: {"smithy.api#default" => false}))
    PutAccountDedicatedIpWarmupAttributesRequest.type = Types::PutAccountDedicatedIpWarmupAttributesRequest
    PutAccountDedicatedIpWarmupAttributesResponse.type = Types::PutAccountDedicatedIpWarmupAttributesResponse
    PutAccountDetailsRequest.add_member(:mail_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MailType, location_name: "MailType", traits: {"smithy.api#required" => {}}))
    PutAccountDetailsRequest.add_member(:website_url, ::Smithy::Schema::Shapes::MemberShape.new(target: WebsiteURL, location_name: "WebsiteURL", traits: {"smithy.api#required" => {}}))
    PutAccountDetailsRequest.add_member(:contact_language, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactLanguage, location_name: "ContactLanguage"))
    PutAccountDetailsRequest.add_member(:use_case_description, ::Smithy::Schema::Shapes::MemberShape.new(target: UseCaseDescription, location_name: "UseCaseDescription"))
    PutAccountDetailsRequest.add_member(:additional_contact_email_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalContactEmailAddresses, location_name: "AdditionalContactEmailAddresses"))
    PutAccountDetailsRequest.add_member(:production_access_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledWrapper, location_name: "ProductionAccessEnabled"))
    PutAccountDetailsRequest.type = Types::PutAccountDetailsRequest
    PutAccountDetailsResponse.type = Types::PutAccountDetailsResponse
    PutAccountSendingAttributesRequest.add_member(:sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "SendingEnabled", traits: {"smithy.api#default" => false}))
    PutAccountSendingAttributesRequest.type = Types::PutAccountSendingAttributesRequest
    PutAccountSendingAttributesResponse.type = Types::PutAccountSendingAttributesResponse
    PutAccountSuppressionAttributesRequest.add_member(:suppressed_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReasons, location_name: "SuppressedReasons"))
    PutAccountSuppressionAttributesRequest.type = Types::PutAccountSuppressionAttributesRequest
    PutAccountSuppressionAttributesResponse.type = Types::PutAccountSuppressionAttributesResponse
    PutAccountVdmAttributesRequest.add_member(:vdm_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: VdmAttributes, location_name: "VdmAttributes", traits: {"smithy.api#required" => {}}))
    PutAccountVdmAttributesRequest.type = Types::PutAccountVdmAttributesRequest
    PutAccountVdmAttributesResponse.type = Types::PutAccountVdmAttributesResponse
    PutConfigurationSetArchivingOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetArchivingOptionsRequest.add_member(:archive_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveArn, location_name: "ArchiveArn"))
    PutConfigurationSetArchivingOptionsRequest.type = Types::PutConfigurationSetArchivingOptionsRequest
    PutConfigurationSetArchivingOptionsResponse.type = Types::PutConfigurationSetArchivingOptionsResponse
    PutConfigurationSetDeliveryOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:tls_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsPolicy, location_name: "TlsPolicy"))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:sending_pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingPoolName, location_name: "SendingPoolName"))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:max_delivery_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxDeliverySeconds, location_name: "MaxDeliverySeconds"))
    PutConfigurationSetDeliveryOptionsRequest.type = Types::PutConfigurationSetDeliveryOptionsRequest
    PutConfigurationSetDeliveryOptionsResponse.type = Types::PutConfigurationSetDeliveryOptionsResponse
    PutConfigurationSetReputationOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetReputationOptionsRequest.add_member(:reputation_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "ReputationMetricsEnabled", traits: {"smithy.api#default" => false}))
    PutConfigurationSetReputationOptionsRequest.type = Types::PutConfigurationSetReputationOptionsRequest
    PutConfigurationSetReputationOptionsResponse.type = Types::PutConfigurationSetReputationOptionsResponse
    PutConfigurationSetSendingOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetSendingOptionsRequest.add_member(:sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "SendingEnabled", traits: {"smithy.api#default" => false}))
    PutConfigurationSetSendingOptionsRequest.type = Types::PutConfigurationSetSendingOptionsRequest
    PutConfigurationSetSendingOptionsResponse.type = Types::PutConfigurationSetSendingOptionsResponse
    PutConfigurationSetSuppressionOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetSuppressionOptionsRequest.add_member(:suppressed_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReasons, location_name: "SuppressedReasons"))
    PutConfigurationSetSuppressionOptionsRequest.type = Types::PutConfigurationSetSuppressionOptionsRequest
    PutConfigurationSetSuppressionOptionsResponse.type = Types::PutConfigurationSetSuppressionOptionsResponse
    PutConfigurationSetTrackingOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetTrackingOptionsRequest.add_member(:custom_redirect_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRedirectDomain, location_name: "CustomRedirectDomain"))
    PutConfigurationSetTrackingOptionsRequest.add_member(:https_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpsPolicy, location_name: "HttpsPolicy"))
    PutConfigurationSetTrackingOptionsRequest.type = Types::PutConfigurationSetTrackingOptionsRequest
    PutConfigurationSetTrackingOptionsResponse.type = Types::PutConfigurationSetTrackingOptionsResponse
    PutConfigurationSetVdmOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetVdmOptionsRequest.add_member(:vdm_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VdmOptions, location_name: "VdmOptions"))
    PutConfigurationSetVdmOptionsRequest.type = Types::PutConfigurationSetVdmOptionsRequest
    PutConfigurationSetVdmOptionsResponse.type = Types::PutConfigurationSetVdmOptionsResponse
    PutDedicatedIpInPoolRequest.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, location_name: "Ip", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDedicatedIpInPoolRequest.add_member(:destination_pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, location_name: "DestinationPoolName", traits: {"smithy.api#required" => {}}))
    PutDedicatedIpInPoolRequest.type = Types::PutDedicatedIpInPoolRequest
    PutDedicatedIpInPoolResponse.type = Types::PutDedicatedIpInPoolResponse
    PutDedicatedIpPoolScalingAttributesRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, location_name: "PoolName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDedicatedIpPoolScalingAttributesRequest.add_member(:scaling_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingMode, location_name: "ScalingMode", traits: {"smithy.api#required" => {}}))
    PutDedicatedIpPoolScalingAttributesRequest.type = Types::PutDedicatedIpPoolScalingAttributesRequest
    PutDedicatedIpPoolScalingAttributesResponse.type = Types::PutDedicatedIpPoolScalingAttributesResponse
    PutDedicatedIpWarmupAttributesRequest.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, location_name: "Ip", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDedicatedIpWarmupAttributesRequest.add_member(:warmup_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage100Wrapper, location_name: "WarmupPercentage", traits: {"smithy.api#required" => {}}))
    PutDedicatedIpWarmupAttributesRequest.type = Types::PutDedicatedIpWarmupAttributesRequest
    PutDedicatedIpWarmupAttributesResponse.type = Types::PutDedicatedIpWarmupAttributesResponse
    PutDeliverabilityDashboardOptionRequest.add_member(:dashboard_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "DashboardEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    PutDeliverabilityDashboardOptionRequest.add_member(:subscribed_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityTrackingOptions, location_name: "SubscribedDomains"))
    PutDeliverabilityDashboardOptionRequest.type = Types::PutDeliverabilityDashboardOptionRequest
    PutDeliverabilityDashboardOptionResponse.type = Types::PutDeliverabilityDashboardOptionResponse
    PutEmailIdentityConfigurationSetAttributesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityConfigurationSetAttributesRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    PutEmailIdentityConfigurationSetAttributesRequest.type = Types::PutEmailIdentityConfigurationSetAttributesRequest
    PutEmailIdentityConfigurationSetAttributesResponse.type = Types::PutEmailIdentityConfigurationSetAttributesResponse
    PutEmailIdentityDkimAttributesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityDkimAttributesRequest.add_member(:signing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "SigningEnabled", traits: {"smithy.api#default" => false}))
    PutEmailIdentityDkimAttributesRequest.type = Types::PutEmailIdentityDkimAttributesRequest
    PutEmailIdentityDkimAttributesResponse.type = Types::PutEmailIdentityDkimAttributesResponse
    PutEmailIdentityDkimSigningAttributesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityDkimSigningAttributesRequest.add_member(:signing_attributes_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningAttributesOrigin, location_name: "SigningAttributesOrigin", traits: {"smithy.api#required" => {}}))
    PutEmailIdentityDkimSigningAttributesRequest.add_member(:signing_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningAttributes, location_name: "SigningAttributes"))
    PutEmailIdentityDkimSigningAttributesRequest.type = Types::PutEmailIdentityDkimSigningAttributesRequest
    PutEmailIdentityDkimSigningAttributesResponse.add_member(:dkim_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimStatus, location_name: "DkimStatus"))
    PutEmailIdentityDkimSigningAttributesResponse.add_member(:dkim_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsTokenList, location_name: "DkimTokens"))
    PutEmailIdentityDkimSigningAttributesResponse.type = Types::PutEmailIdentityDkimSigningAttributesResponse
    PutEmailIdentityFeedbackAttributesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityFeedbackAttributesRequest.add_member(:email_forwarding_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "EmailForwardingEnabled", traits: {"smithy.api#default" => false}))
    PutEmailIdentityFeedbackAttributesRequest.type = Types::PutEmailIdentityFeedbackAttributesRequest
    PutEmailIdentityFeedbackAttributesResponse.type = Types::PutEmailIdentityFeedbackAttributesResponse
    PutEmailIdentityMailFromAttributesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityMailFromAttributesRequest.add_member(:mail_from_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: MailFromDomainName, location_name: "MailFromDomain"))
    PutEmailIdentityMailFromAttributesRequest.add_member(:behavior_on_mx_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: BehaviorOnMxFailure, location_name: "BehaviorOnMxFailure"))
    PutEmailIdentityMailFromAttributesRequest.type = Types::PutEmailIdentityMailFromAttributesRequest
    PutEmailIdentityMailFromAttributesResponse.type = Types::PutEmailIdentityMailFromAttributesResponse
    PutSuppressedDestinationRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    PutSuppressedDestinationRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReason, location_name: "Reason", traits: {"smithy.api#required" => {}}))
    PutSuppressedDestinationRequest.type = Types::PutSuppressedDestinationRequest
    PutSuppressedDestinationResponse.type = Types::PutSuppressedDestinationResponse
    QueryErrorCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    QueryErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    RawMessage.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: RawMessageData, location_name: "Data", traits: {"smithy.api#required" => {}}))
    RawMessage.type = Types::RawMessage
    Recommendation.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceArn"))
    Recommendation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, location_name: "Type"))
    Recommendation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationDescription, location_name: "Description"))
    Recommendation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, location_name: "Status"))
    Recommendation.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    Recommendation.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTimestamp"))
    Recommendation.add_member(:impact, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationImpact, location_name: "Impact"))
    Recommendation.type = Types::Recommendation
    RecommendationImpact.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    RecommendationImpact.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    RecommendationStatus.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    RecommendationStatus.add_member(:fixed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIXED", traits: {"smithy.api#enumValue" => "FIXED"}))
    RecommendationType.add_member(:dkim, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DKIM", traits: {"smithy.api#enumValue" => "DKIM"}))
    RecommendationType.add_member(:dmarc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DMARC", traits: {"smithy.api#enumValue" => "DMARC"}))
    RecommendationType.add_member(:spf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPF", traits: {"smithy.api#enumValue" => "SPF"}))
    RecommendationType.add_member(:bimi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BIMI", traits: {"smithy.api#enumValue" => "BIMI"}))
    RecommendationType.add_member(:complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLAINT", traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    RecommendationType.add_member(:bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOUNCE", traits: {"smithy.api#enumValue" => "BOUNCE"}))
    RecommendationType.add_member(:feedback_3_p, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FEEDBACK_3P", traits: {"smithy.api#enumValue" => "FEEDBACK_3P"}))
    RecommendationType.add_member(:ip_listing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IP_LISTING", traits: {"smithy.api#enumValue" => "IP_LISTING"}))
    RecommendationsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation)
    Regions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Region)
    ReplacementEmailContent.add_member(:replacement_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplacementTemplate, location_name: "ReplacementTemplate"))
    ReplacementEmailContent.type = Types::ReplacementEmailContent
    ReplacementTemplate.add_member(:replacement_template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateData, location_name: "ReplacementTemplateData"))
    ReplacementTemplate.type = Types::ReplacementTemplate
    ReputationEntitiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntity)
    ReputationEntity.add_member(:reputation_entity_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityReference, location_name: "ReputationEntityReference"))
    ReputationEntity.add_member(:reputation_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityType, location_name: "ReputationEntityType"))
    ReputationEntity.add_member(:reputation_management_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ReputationManagementPolicy"))
    ReputationEntity.add_member(:customer_managed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusRecord, location_name: "CustomerManagedStatus"))
    ReputationEntity.add_member(:aws_ses_managed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusRecord, location_name: "AwsSesManagedStatus"))
    ReputationEntity.add_member(:sending_status_aggregate, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingStatus, location_name: "SendingStatusAggregate"))
    ReputationEntity.add_member(:reputation_impact, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationImpact, location_name: "ReputationImpact"))
    ReputationEntity.type = Types::ReputationEntity
    ReputationEntityFilter.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityFilterKey)
    ReputationEntityFilter.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityFilterValue)
    ReputationEntityFilterKey.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENTITY_TYPE", traits: {"smithy.api#enumValue" => "ENTITY_TYPE"}))
    ReputationEntityFilterKey.add_member(:reputation_impact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPUTATION_IMPACT", traits: {"smithy.api#enumValue" => "REPUTATION_IMPACT"}))
    ReputationEntityFilterKey.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STATUS", traits: {"smithy.api#enumValue" => "SENDING_STATUS"}))
    ReputationEntityFilterKey.add_member(:entity_reference_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENTITY_REFERENCE_PREFIX", traits: {"smithy.api#enumValue" => "ENTITY_REFERENCE_PREFIX"}))
    ReputationEntityType.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE", traits: {"smithy.api#enumValue" => "RESOURCE"}))
    ReputationOptions.add_member(:reputation_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "ReputationMetricsEnabled", traits: {"smithy.api#default" => false}))
    ReputationOptions.add_member(:last_fresh_start, ::Smithy::Schema::Shapes::MemberShape.new(target: LastFreshStart, location_name: "LastFreshStart"))
    ReputationOptions.type = Types::ReputationOptions
    ResourceTenantMetadata.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, location_name: "TenantName"))
    ResourceTenantMetadata.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantId, location_name: "TenantId"))
    ResourceTenantMetadata.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceArn"))
    ResourceTenantMetadata.add_member(:associated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "AssociatedTimestamp"))
    ResourceTenantMetadata.type = Types::ResourceTenantMetadata
    ResourceTenantMetadataList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTenantMetadata)
    ResourceType.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EMAIL_IDENTITY", traits: {"smithy.api#enumValue" => "EMAIL_IDENTITY"}))
    ResourceType.add_member(:configuration_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFIGURATION_SET", traits: {"smithy.api#enumValue" => "CONFIGURATION_SET"}))
    ResourceType.add_member(:email_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EMAIL_TEMPLATE", traits: {"smithy.api#enumValue" => "EMAIL_TEMPLATE"}))
    ReviewDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewStatus, location_name: "Status"))
    ReviewDetails.add_member(:case_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseId, location_name: "CaseId"))
    ReviewDetails.type = Types::ReviewDetails
    ReviewStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ReviewStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ReviewStatus.add_member(:granted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GRANTED", traits: {"smithy.api#enumValue" => "GRANTED"}))
    ReviewStatus.add_member(:denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DENIED", traits: {"smithy.api#enumValue" => "DENIED"}))
    Route.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, location_name: "Region", traits: {"smithy.api#required" => {}}))
    Route.type = Types::Route
    RouteDetails.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, location_name: "Region", traits: {"smithy.api#required" => {}}))
    RouteDetails.type = Types::RouteDetails
    Routes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Route)
    RoutesDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RouteDetails)
    SOARecord.add_member(:primary_name_server, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryNameServer, location_name: "PrimaryNameServer"))
    SOARecord.add_member(:admin_email, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminEmail, location_name: "AdminEmail"))
    SOARecord.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumber, location_name: "SerialNumber", traits: {"smithy.api#default" => 0}))
    SOARecord.type = Types::SOARecord
    ScalingMode.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    ScalingMode.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))
    SendBulkEmailRequest.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "FromEmailAddress"))
    SendBulkEmailRequest.add_member(:from_email_address_identity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "FromEmailAddressIdentityArn"))
    SendBulkEmailRequest.add_member(:reply_to_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressList, location_name: "ReplyToAddresses"))
    SendBulkEmailRequest.add_member(:feedback_forwarding_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "FeedbackForwardingEmailAddress"))
    SendBulkEmailRequest.add_member(:feedback_forwarding_email_address_identity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "FeedbackForwardingEmailAddressIdentityArn"))
    SendBulkEmailRequest.add_member(:default_email_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagList, location_name: "DefaultEmailTags"))
    SendBulkEmailRequest.add_member(:default_content, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailContent, location_name: "DefaultContent", traits: {"smithy.api#required" => {}}))
    SendBulkEmailRequest.add_member(:bulk_email_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailEntryList, location_name: "BulkEmailEntries", traits: {"smithy.api#required" => {}}))
    SendBulkEmailRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    SendBulkEmailRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, location_name: "EndpointId", traits: {"smithy.rules#contextParam" => {"name" => "EndpointId"}}))
    SendBulkEmailRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, location_name: "TenantName"))
    SendBulkEmailRequest.type = Types::SendBulkEmailRequest
    SendBulkEmailResponse.add_member(:bulk_email_entry_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailEntryResultList, location_name: "BulkEmailEntryResults", traits: {"smithy.api#required" => {}}))
    SendBulkEmailResponse.type = Types::SendBulkEmailResponse
    SendCustomVerificationEmailRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    SendCustomVerificationEmailRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, location_name: "TemplateName", traits: {"smithy.api#required" => {}}))
    SendCustomVerificationEmailRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    SendCustomVerificationEmailRequest.type = Types::SendCustomVerificationEmailRequest
    SendCustomVerificationEmailResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutboundMessageId, location_name: "MessageId"))
    SendCustomVerificationEmailResponse.type = Types::SendCustomVerificationEmailResponse
    SendEmailRequest.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "FromEmailAddress"))
    SendEmailRequest.add_member(:from_email_address_identity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "FromEmailAddressIdentityArn"))
    SendEmailRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, location_name: "Destination"))
    SendEmailRequest.add_member(:reply_to_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressList, location_name: "ReplyToAddresses"))
    SendEmailRequest.add_member(:feedback_forwarding_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "FeedbackForwardingEmailAddress"))
    SendEmailRequest.add_member(:feedback_forwarding_email_address_identity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "FeedbackForwardingEmailAddressIdentityArn"))
    SendEmailRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailContent, location_name: "Content", traits: {"smithy.api#required" => {}}))
    SendEmailRequest.add_member(:email_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagList, location_name: "EmailTags"))
    SendEmailRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName"))
    SendEmailRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, location_name: "EndpointId", traits: {"smithy.rules#contextParam" => {"name" => "EndpointId"}}))
    SendEmailRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, location_name: "TenantName"))
    SendEmailRequest.add_member(:list_management_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ListManagementOptions, location_name: "ListManagementOptions"))
    SendEmailRequest.type = Types::SendEmailRequest
    SendEmailResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutboundMessageId, location_name: "MessageId"))
    SendEmailResponse.type = Types::SendEmailResponse
    SendQuota.add_member(:max24_hour_send, ::Smithy::Schema::Shapes::MemberShape.new(target: Max24HourSend, location_name: "Max24HourSend", traits: {"smithy.api#default" => 0}))
    SendQuota.add_member(:max_send_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSendRate, location_name: "MaxSendRate", traits: {"smithy.api#default" => 0}))
    SendQuota.add_member(:sent_last24_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: SentLast24Hours, location_name: "SentLast24Hours", traits: {"smithy.api#default" => 0}))
    SendQuota.type = Types::SendQuota
    SendingOptions.add_member(:sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, location_name: "SendingEnabled", traits: {"smithy.api#default" => false}))
    SendingOptions.type = Types::SendingOptions
    SendingPausedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    SendingPausedException.type = Types::SendingPausedException
    SendingStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    SendingStatus.add_member(:reinstated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REINSTATED", traits: {"smithy.api#enumValue" => "REINSTATED"}))
    SendingStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    SnsDestination.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "TopicArn", traits: {"smithy.api#required" => {}}))
    SnsDestination.type = Types::SnsDestination
    Status.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    Status.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    Status.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Status.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    StatusRecord.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingStatus, location_name: "Status"))
    StatusRecord.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCause, location_name: "Cause"))
    StatusRecord.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTimestamp"))
    StatusRecord.type = Types::StatusRecord
    SubscriptionStatus.add_member(:opt_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPT_IN", traits: {"smithy.api#enumValue" => "OPT_IN"}))
    SubscriptionStatus.add_member(:opt_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPT_OUT", traits: {"smithy.api#enumValue" => "OPT_OUT"}))
    SuppressedDestination.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    SuppressedDestination.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReason, location_name: "Reason", traits: {"smithy.api#required" => {}}))
    SuppressedDestination.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdateTime", traits: {"smithy.api#required" => {}}))
    SuppressedDestination.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressedDestinationAttributes, location_name: "Attributes"))
    SuppressedDestination.type = Types::SuppressedDestination
    SuppressedDestinationAttributes.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutboundMessageId, location_name: "MessageId"))
    SuppressedDestinationAttributes.add_member(:feedback_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackId, location_name: "FeedbackId"))
    SuppressedDestinationAttributes.type = Types::SuppressedDestinationAttributes
    SuppressedDestinationSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressedDestinationSummary)
    SuppressedDestinationSummary.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    SuppressedDestinationSummary.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReason, location_name: "Reason", traits: {"smithy.api#required" => {}}))
    SuppressedDestinationSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdateTime", traits: {"smithy.api#required" => {}}))
    SuppressedDestinationSummary.type = Types::SuppressedDestinationSummary
    SuppressionAttributes.add_member(:suppressed_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReasons, location_name: "SuppressedReasons"))
    SuppressionAttributes.type = Types::SuppressionAttributes
    SuppressionListDestination.add_member(:suppression_list_import_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListImportAction, location_name: "SuppressionListImportAction", traits: {"smithy.api#required" => {}}))
    SuppressionListDestination.type = Types::SuppressionListDestination
    SuppressionListImportAction.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    SuppressionListImportAction.add_member(:put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUT", traits: {"smithy.api#enumValue" => "PUT"}))
    SuppressionListReason.add_member(:bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOUNCE", traits: {"smithy.api#enumValue" => "BOUNCE"}))
    SuppressionListReason.add_member(:complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLAINT", traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    SuppressionListReasons.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReason)
    SuppressionOptions.add_member(:suppressed_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReasons, location_name: "SuppressedReasons"))
    SuppressionOptions.type = Types::SuppressionOptions
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Template.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, location_name: "TemplateName"))
    Template.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "TemplateArn"))
    Template.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateContent, location_name: "TemplateContent"))
    Template.add_member(:template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateData, location_name: "TemplateData"))
    Template.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageHeaderList, location_name: "Headers"))
    Template.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentList, location_name: "Attachments"))
    Template.type = Types::Template
    Tenant.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, location_name: "TenantName"))
    Tenant.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantId, location_name: "TenantId"))
    Tenant.add_member(:tenant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "TenantArn"))
    Tenant.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    Tenant.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    Tenant.add_member(:sending_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingStatus, location_name: "SendingStatus"))
    Tenant.type = Types::Tenant
    TenantInfo.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, location_name: "TenantName"))
    TenantInfo.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantId, location_name: "TenantId"))
    TenantInfo.add_member(:tenant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "TenantArn"))
    TenantInfo.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedTimestamp"))
    TenantInfo.type = Types::TenantInfo
    TenantInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TenantInfo)
    TenantResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, location_name: "ResourceType"))
    TenantResource.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceArn"))
    TenantResource.type = Types::TenantResource
    TenantResourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TenantResource)
    TestRenderEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, location_name: "TemplateName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestRenderEmailTemplateRequest.add_member(:template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateData, location_name: "TemplateData", traits: {"smithy.api#required" => {}}))
    TestRenderEmailTemplateRequest.type = Types::TestRenderEmailTemplateRequest
    TestRenderEmailTemplateResponse.add_member(:rendered_template, ::Smithy::Schema::Shapes::MemberShape.new(target: RenderedEmailTemplate, location_name: "RenderedTemplate", traits: {"smithy.api#required" => {}}))
    TestRenderEmailTemplateResponse.type = Types::TestRenderEmailTemplateResponse
    TimestampList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp)
    TlsPolicy.add_member(:require, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUIRE", traits: {"smithy.api#enumValue" => "REQUIRE"}))
    TlsPolicy.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPTIONAL", traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    Topic.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicName, location_name: "TopicName", traits: {"smithy.api#required" => {}}))
    Topic.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "DisplayName", traits: {"smithy.api#required" => {}}))
    Topic.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "Description"))
    Topic.add_member(:default_subscription_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionStatus, location_name: "DefaultSubscriptionStatus", traits: {"smithy.api#required" => {}}))
    Topic.type = Types::Topic
    TopicFilter.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicName, location_name: "TopicName"))
    TopicFilter.add_member(:use_default_if_preference_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: UseDefaultIfPreferenceUnavailable, location_name: "UseDefaultIfPreferenceUnavailable", traits: {"smithy.api#default" => false}))
    TopicFilter.type = Types::TopicFilter
    TopicPreference.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicName, location_name: "TopicName", traits: {"smithy.api#required" => {}}))
    TopicPreference.add_member(:subscription_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionStatus, location_name: "SubscriptionStatus", traits: {"smithy.api#required" => {}}))
    TopicPreference.type = Types::TopicPreference
    TopicPreferenceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TopicPreference)
    Topics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Topic)
    TrackingOptions.add_member(:custom_redirect_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRedirectDomain, location_name: "CustomRedirectDomain", traits: {"smithy.api#required" => {}}))
    TrackingOptions.add_member(:https_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpsPolicy, location_name: "HttpsPolicy"))
    TrackingOptions.type = Types::TrackingOptions
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceArn", traits: {"smithy.api#httpQuery" => "ResourceArn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#httpQuery" => "TagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, location_name: "EventDestinationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationDefinition, location_name: "EventDestination", traits: {"smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.type = Types::UpdateConfigurationSetEventDestinationRequest
    UpdateConfigurationSetEventDestinationResponse.type = Types::UpdateConfigurationSetEventDestinationResponse
    UpdateContactListRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, location_name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContactListRequest.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, location_name: "Topics"))
    UpdateContactListRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "Description"))
    UpdateContactListRequest.type = Types::UpdateContactListRequest
    UpdateContactListResponse.type = Types::UpdateContactListResponse
    UpdateContactRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, location_name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContactRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "EmailAddress", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContactRequest.add_member(:topic_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicPreferenceList, location_name: "TopicPreferences"))
    UpdateContactRequest.add_member(:unsubscribe_all, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsubscribeAll, location_name: "UnsubscribeAll", traits: {"smithy.api#default" => false}))
    UpdateContactRequest.add_member(:attributes_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributesData, location_name: "AttributesData"))
    UpdateContactRequest.type = Types::UpdateContactRequest
    UpdateContactResponse.type = Types::UpdateContactResponse
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, location_name: "TemplateName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, location_name: "FromEmailAddress", traits: {"smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateSubject, location_name: "TemplateSubject", traits: {"smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateContent, location_name: "TemplateContent", traits: {"smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:success_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessRedirectionURL, location_name: "SuccessRedirectionURL", traits: {"smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:failure_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureRedirectionURL, location_name: "FailureRedirectionURL", traits: {"smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.type = Types::UpdateCustomVerificationEmailTemplateRequest
    UpdateCustomVerificationEmailTemplateResponse.type = Types::UpdateCustomVerificationEmailTemplateResponse
    UpdateEmailIdentityPolicyRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, location_name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEmailIdentityPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, location_name: "PolicyName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEmailIdentityPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, location_name: "Policy", traits: {"smithy.api#required" => {}}))
    UpdateEmailIdentityPolicyRequest.type = Types::UpdateEmailIdentityPolicyRequest
    UpdateEmailIdentityPolicyResponse.type = Types::UpdateEmailIdentityPolicyResponse
    UpdateEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, location_name: "TemplateName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEmailTemplateRequest.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateContent, location_name: "TemplateContent", traits: {"smithy.api#required" => {}}))
    UpdateEmailTemplateRequest.type = Types::UpdateEmailTemplateRequest
    UpdateEmailTemplateResponse.type = Types::UpdateEmailTemplateResponse
    UpdateReputationEntityCustomerManagedStatusRequest.add_member(:reputation_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityType, location_name: "ReputationEntityType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReputationEntityCustomerManagedStatusRequest.add_member(:reputation_entity_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityReference, location_name: "ReputationEntityReference", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReputationEntityCustomerManagedStatusRequest.add_member(:sending_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingStatus, location_name: "SendingStatus", traits: {"smithy.api#required" => {}}))
    UpdateReputationEntityCustomerManagedStatusRequest.type = Types::UpdateReputationEntityCustomerManagedStatusRequest
    UpdateReputationEntityCustomerManagedStatusResponse.type = Types::UpdateReputationEntityCustomerManagedStatusResponse
    UpdateReputationEntityPolicyRequest.add_member(:reputation_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityType, location_name: "ReputationEntityType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReputationEntityPolicyRequest.add_member(:reputation_entity_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityReference, location_name: "ReputationEntityReference", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReputationEntityPolicyRequest.add_member(:reputation_entity_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ReputationEntityPolicy", traits: {"smithy.api#required" => {}}))
    UpdateReputationEntityPolicyRequest.type = Types::UpdateReputationEntityPolicyRequest
    UpdateReputationEntityPolicyResponse.type = Types::UpdateReputationEntityPolicyResponse
    VdmAttributes.add_member(:vdm_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, location_name: "VdmEnabled", traits: {"smithy.api#required" => {}}))
    VdmAttributes.add_member(:dashboard_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardAttributes, location_name: "DashboardAttributes"))
    VdmAttributes.add_member(:guardian_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardianAttributes, location_name: "GuardianAttributes"))
    VdmAttributes.type = Types::VdmAttributes
    VdmOptions.add_member(:dashboard_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardOptions, location_name: "DashboardOptions"))
    VdmOptions.add_member(:guardian_options, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardianOptions, location_name: "GuardianOptions"))
    VdmOptions.type = Types::VdmOptions
    VerificationError.add_member(:service_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE_ERROR", traits: {"smithy.api#enumValue" => "SERVICE_ERROR"}))
    VerificationError.add_member(:dns_server_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DNS_SERVER_ERROR", traits: {"smithy.api#enumValue" => "DNS_SERVER_ERROR"}))
    VerificationError.add_member(:host_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOST_NOT_FOUND", traits: {"smithy.api#enumValue" => "HOST_NOT_FOUND"}))
    VerificationError.add_member(:type_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TYPE_NOT_FOUND", traits: {"smithy.api#enumValue" => "TYPE_NOT_FOUND"}))
    VerificationError.add_member(:invalid_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_VALUE", traits: {"smithy.api#enumValue" => "INVALID_VALUE"}))
    VerificationError.add_member(:replication_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPLICATION_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "REPLICATION_ACCESS_DENIED"}))
    VerificationError.add_member(:replication_primary_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPLICATION_PRIMARY_NOT_FOUND", traits: {"smithy.api#enumValue" => "REPLICATION_PRIMARY_NOT_FOUND"}))
    VerificationError.add_member(:replication_primary_byo_dkim_not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPLICATION_PRIMARY_BYO_DKIM_NOT_SUPPORTED", traits: {"smithy.api#enumValue" => "REPLICATION_PRIMARY_BYO_DKIM_NOT_SUPPORTED"}))
    VerificationError.add_member(:replication_replica_as_primary_not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPLICATION_REPLICA_AS_PRIMARY_NOT_SUPPORTED", traits: {"smithy.api#enumValue" => "REPLICATION_REPLICA_AS_PRIMARY_NOT_SUPPORTED"}))
    VerificationError.add_member(:replication_primary_invalid_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPLICATION_PRIMARY_INVALID_REGION", traits: {"smithy.api#enumValue" => "REPLICATION_PRIMARY_INVALID_REGION"}))
    VerificationInfo.add_member(:last_checked_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastCheckedTimestamp"))
    VerificationInfo.add_member(:last_success_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastSuccessTimestamp"))
    VerificationInfo.add_member(:error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationError, location_name: "ErrorType"))
    VerificationInfo.add_member(:soa_record, ::Smithy::Schema::Shapes::MemberShape.new(target: SOARecord, location_name: "SOARecord"))
    VerificationInfo.type = Types::VerificationInfo
    VerificationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    VerificationStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    VerificationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    VerificationStatus.add_member(:temporary_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEMPORARY_FAILURE", traits: {"smithy.api#enumValue" => "TEMPORARY_FAILURE"}))
    VerificationStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    VolumeStatistics.add_member(:inbox_raw_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, location_name: "InboxRawCount"))
    VolumeStatistics.add_member(:spam_raw_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, location_name: "SpamRawCount"))
    VolumeStatistics.add_member(:projected_inbox, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, location_name: "ProjectedInbox"))
    VolumeStatistics.add_member(:projected_spam, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, location_name: "ProjectedSpam"))
    VolumeStatistics.type = Types::VolumeStatistics
    WarmupStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    WarmupStatus.add_member(:done, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DONE", traits: {"smithy.api#enumValue" => "DONE"}))
    WarmupStatus.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))

    SimpleEmailServiceV2 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sesv2#SimpleEmailService_v2"
      service.name = "SimpleEmailServiceV2"
      service.version = "2019-09-27"
      service.traits = {"aws.api#service" => {"sdkId" => "SESv2", "arnNamespace" => "ses", "cloudFormationName" => "SESv2", "cloudTrailEventSource" => "sesv2.amazonaws.com", "endpointPrefix" => "email"}, "aws.auth#sigv4" => {"name" => "ses"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Simple Email Service"}
      service.add_operation(:batch_get_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#BatchGetMetricData"
        operation.name = "BatchGetMetricData"
        operation.input = BatchGetMetricDataRequest
        operation.output = BatchGetMetricDataResponse
        operation.errors << BadRequestException
        operation.errors << InternalServiceErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/metrics/batch", "code" => 200}}
      end)
      service.add_operation(:cancel_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CancelExportJob"
        operation.name = "CancelExportJob"
        operation.input = CancelExportJobRequest
        operation.output = CancelExportJobResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/export-jobs/{JobId}/cancel", "code" => 200}}
      end)
      service.add_operation(:create_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateConfigurationSet"
        operation.name = "CreateConfigurationSet"
        operation.input = CreateConfigurationSetRequest
        operation.output = CreateConfigurationSetResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/configuration-sets", "code" => 200}}
      end)
      service.add_operation(:create_configuration_set_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateConfigurationSetEventDestination"
        operation.name = "CreateConfigurationSetEventDestination"
        operation.input = CreateConfigurationSetEventDestinationRequest
        operation.output = CreateConfigurationSetEventDestinationResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations", "code" => 200}}
      end)
      service.add_operation(:create_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateContact"
        operation.name = "CreateContact"
        operation.input = CreateContactRequest
        operation.output = CreateContactResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/contact-lists/{ContactListName}/contacts", "code" => 200}}
      end)
      service.add_operation(:create_contact_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateContactList"
        operation.name = "CreateContactList"
        operation.input = CreateContactListRequest
        operation.output = CreateContactListResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/contact-lists", "code" => 200}}
      end)
      service.add_operation(:create_custom_verification_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateCustomVerificationEmailTemplate"
        operation.name = "CreateCustomVerificationEmailTemplate"
        operation.input = CreateCustomVerificationEmailTemplateRequest
        operation.output = CreateCustomVerificationEmailTemplateResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/custom-verification-email-templates", "code" => 200}}
      end)
      service.add_operation(:create_dedicated_ip_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateDedicatedIpPool"
        operation.name = "CreateDedicatedIpPool"
        operation.input = CreateDedicatedIpPoolRequest
        operation.output = CreateDedicatedIpPoolResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/dedicated-ip-pools", "code" => 200}}
      end)
      service.add_operation(:create_deliverability_test_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateDeliverabilityTestReport"
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
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/deliverability-dashboard/test", "code" => 200}}
      end)
      service.add_operation(:create_email_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateEmailIdentity"
        operation.name = "CreateEmailIdentity"
        operation.input = CreateEmailIdentityRequest
        operation.output = CreateEmailIdentityResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/identities", "code" => 200}}
      end)
      service.add_operation(:create_email_identity_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateEmailIdentityPolicy"
        operation.name = "CreateEmailIdentityPolicy"
        operation.input = CreateEmailIdentityPolicyRequest
        operation.output = CreateEmailIdentityPolicyResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}", "code" => 200}}
      end)
      service.add_operation(:create_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateEmailTemplate"
        operation.name = "CreateEmailTemplate"
        operation.input = CreateEmailTemplateRequest
        operation.output = CreateEmailTemplateResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/templates", "code" => 200}}
      end)
      service.add_operation(:create_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateExportJob"
        operation.name = "CreateExportJob"
        operation.input = CreateExportJobRequest
        operation.output = CreateExportJobResponse
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/export-jobs", "code" => 200}}
      end)
      service.add_operation(:create_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateImportJob"
        operation.name = "CreateImportJob"
        operation.input = CreateImportJobRequest
        operation.output = CreateImportJobResponse
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/import-jobs", "code" => 200}}
      end)
      service.add_operation(:create_multi_region_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateMultiRegionEndpoint"
        operation.name = "CreateMultiRegionEndpoint"
        operation.input = CreateMultiRegionEndpointRequest
        operation.output = CreateMultiRegionEndpointResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/multi-region-endpoints", "code" => 200}}
      end)
      service.add_operation(:create_tenant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateTenant"
        operation.name = "CreateTenant"
        operation.input = CreateTenantRequest
        operation.output = CreateTenantResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tenants", "code" => 200}}
      end)
      service.add_operation(:create_tenant_resource_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#CreateTenantResourceAssociation"
        operation.name = "CreateTenantResourceAssociation"
        operation.input = CreateTenantResourceAssociationRequest
        operation.output = CreateTenantResourceAssociationResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tenants/resources", "code" => 200}}
      end)
      service.add_operation(:delete_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteConfigurationSet"
        operation.name = "DeleteConfigurationSet"
        operation.input = DeleteConfigurationSetRequest
        operation.output = DeleteConfigurationSetResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}", "code" => 200}}
      end)
      service.add_operation(:delete_configuration_set_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteConfigurationSetEventDestination"
        operation.name = "DeleteConfigurationSetEventDestination"
        operation.input = DeleteConfigurationSetEventDestinationRequest
        operation.output = DeleteConfigurationSetEventDestinationResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", "code" => 200}}
      end)
      service.add_operation(:delete_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteContact"
        operation.name = "DeleteContact"
        operation.input = DeleteContactRequest
        operation.output = DeleteContactResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}", "code" => 200}}
      end)
      service.add_operation(:delete_contact_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteContactList"
        operation.name = "DeleteContactList"
        operation.input = DeleteContactListRequest
        operation.output = DeleteContactListResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/contact-lists/{ContactListName}", "code" => 200}}
      end)
      service.add_operation(:delete_custom_verification_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteCustomVerificationEmailTemplate"
        operation.name = "DeleteCustomVerificationEmailTemplate"
        operation.input = DeleteCustomVerificationEmailTemplateRequest
        operation.output = DeleteCustomVerificationEmailTemplateResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/custom-verification-email-templates/{TemplateName}", "code" => 200}}
      end)
      service.add_operation(:delete_dedicated_ip_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteDedicatedIpPool"
        operation.name = "DeleteDedicatedIpPool"
        operation.input = DeleteDedicatedIpPoolRequest
        operation.output = DeleteDedicatedIpPoolResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/dedicated-ip-pools/{PoolName}", "code" => 200}}
      end)
      service.add_operation(:delete_email_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteEmailIdentity"
        operation.name = "DeleteEmailIdentity"
        operation.input = DeleteEmailIdentityRequest
        operation.output = DeleteEmailIdentityResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/identities/{EmailIdentity}", "code" => 200}}
      end)
      service.add_operation(:delete_email_identity_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteEmailIdentityPolicy"
        operation.name = "DeleteEmailIdentityPolicy"
        operation.input = DeleteEmailIdentityPolicyRequest
        operation.output = DeleteEmailIdentityPolicyResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}", "code" => 200}}
      end)
      service.add_operation(:delete_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteEmailTemplate"
        operation.name = "DeleteEmailTemplate"
        operation.input = DeleteEmailTemplateRequest
        operation.output = DeleteEmailTemplateResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/templates/{TemplateName}", "code" => 200}}
      end)
      service.add_operation(:delete_multi_region_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteMultiRegionEndpoint"
        operation.name = "DeleteMultiRegionEndpoint"
        operation.input = DeleteMultiRegionEndpointRequest
        operation.output = DeleteMultiRegionEndpointResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/multi-region-endpoints/{EndpointName}", "code" => 200}}
      end)
      service.add_operation(:delete_suppressed_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteSuppressedDestination"
        operation.name = "DeleteSuppressedDestination"
        operation.input = DeleteSuppressedDestinationRequest
        operation.output = DeleteSuppressedDestinationResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/suppression/addresses/{EmailAddress}", "code" => 200}}
      end)
      service.add_operation(:delete_tenant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteTenant"
        operation.name = "DeleteTenant"
        operation.input = DeleteTenantRequest
        operation.output = DeleteTenantResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tenants/delete", "code" => 200}}
      end)
      service.add_operation(:delete_tenant_resource_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DeleteTenantResourceAssociation"
        operation.name = "DeleteTenantResourceAssociation"
        operation.input = DeleteTenantResourceAssociationRequest
        operation.output = DeleteTenantResourceAssociationResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tenants/resources/delete", "code" => 200}}
      end)
      service.add_operation(:get_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetAccount"
        operation.name = "GetAccount"
        operation.input = GetAccountRequest
        operation.output = GetAccountResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/account", "code" => 200}}
      end)
      service.add_operation(:get_blacklist_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetBlacklistReports"
        operation.name = "GetBlacklistReports"
        operation.input = GetBlacklistReportsRequest
        operation.output = GetBlacklistReportsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/deliverability-dashboard/blacklist-report", "code" => 200}}
      end)
      service.add_operation(:get_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetConfigurationSet"
        operation.name = "GetConfigurationSet"
        operation.input = GetConfigurationSetRequest
        operation.output = GetConfigurationSetResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}", "code" => 200}}
      end)
      service.add_operation(:get_configuration_set_event_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetConfigurationSetEventDestinations"
        operation.name = "GetConfigurationSetEventDestinations"
        operation.input = GetConfigurationSetEventDestinationsRequest
        operation.output = GetConfigurationSetEventDestinationsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations", "code" => 200}}
      end)
      service.add_operation(:get_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetContact"
        operation.name = "GetContact"
        operation.input = GetContactRequest
        operation.output = GetContactResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}", "code" => 200}}
      end)
      service.add_operation(:get_contact_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetContactList"
        operation.name = "GetContactList"
        operation.input = GetContactListRequest
        operation.output = GetContactListResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/contact-lists/{ContactListName}", "code" => 200}}
      end)
      service.add_operation(:get_custom_verification_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetCustomVerificationEmailTemplate"
        operation.name = "GetCustomVerificationEmailTemplate"
        operation.input = GetCustomVerificationEmailTemplateRequest
        operation.output = GetCustomVerificationEmailTemplateResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/custom-verification-email-templates/{TemplateName}", "code" => 200}}
      end)
      service.add_operation(:get_dedicated_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetDedicatedIp"
        operation.name = "GetDedicatedIp"
        operation.input = GetDedicatedIpRequest
        operation.output = GetDedicatedIpResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/dedicated-ips/{Ip}", "code" => 200}}
      end)
      service.add_operation(:get_dedicated_ip_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetDedicatedIpPool"
        operation.name = "GetDedicatedIpPool"
        operation.input = GetDedicatedIpPoolRequest
        operation.output = GetDedicatedIpPoolResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/dedicated-ip-pools/{PoolName}", "code" => 200}}
      end)
      service.add_operation(:get_dedicated_ips, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetDedicatedIps"
        operation.name = "GetDedicatedIps"
        operation.input = GetDedicatedIpsRequest
        operation.output = GetDedicatedIpsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/dedicated-ips", "code" => 200}}
        operation[:paginator] = Paginators::GetDedicatedIps.new
      end)
      service.add_operation(:get_deliverability_dashboard_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetDeliverabilityDashboardOptions"
        operation.name = "GetDeliverabilityDashboardOptions"
        operation.input = GetDeliverabilityDashboardOptionsRequest
        operation.output = GetDeliverabilityDashboardOptionsResponse
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/deliverability-dashboard", "code" => 200}}
      end)
      service.add_operation(:get_deliverability_test_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetDeliverabilityTestReport"
        operation.name = "GetDeliverabilityTestReport"
        operation.input = GetDeliverabilityTestReportRequest
        operation.output = GetDeliverabilityTestReportResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/deliverability-dashboard/test-reports/{ReportId}", "code" => 200}}
      end)
      service.add_operation(:get_domain_deliverability_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetDomainDeliverabilityCampaign"
        operation.name = "GetDomainDeliverabilityCampaign"
        operation.input = GetDomainDeliverabilityCampaignRequest
        operation.output = GetDomainDeliverabilityCampaignResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/deliverability-dashboard/campaigns/{CampaignId}", "code" => 200}}
      end)
      service.add_operation(:get_domain_statistics_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetDomainStatisticsReport"
        operation.name = "GetDomainStatisticsReport"
        operation.input = GetDomainStatisticsReportRequest
        operation.output = GetDomainStatisticsReportResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/deliverability-dashboard/statistics-report/{Domain}", "code" => 200}}
      end)
      service.add_operation(:get_email_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetEmailIdentity"
        operation.name = "GetEmailIdentity"
        operation.input = GetEmailIdentityRequest
        operation.output = GetEmailIdentityResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/identities/{EmailIdentity}", "code" => 200}}
      end)
      service.add_operation(:get_email_identity_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetEmailIdentityPolicies"
        operation.name = "GetEmailIdentityPolicies"
        operation.input = GetEmailIdentityPoliciesRequest
        operation.output = GetEmailIdentityPoliciesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/identities/{EmailIdentity}/policies", "code" => 200}}
      end)
      service.add_operation(:get_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetEmailTemplate"
        operation.name = "GetEmailTemplate"
        operation.input = GetEmailTemplateRequest
        operation.output = GetEmailTemplateResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/templates/{TemplateName}", "code" => 200}}
      end)
      service.add_operation(:get_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetExportJob"
        operation.name = "GetExportJob"
        operation.input = GetExportJobRequest
        operation.output = GetExportJobResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/export-jobs/{JobId}", "code" => 200}}
      end)
      service.add_operation(:get_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetImportJob"
        operation.name = "GetImportJob"
        operation.input = GetImportJobRequest
        operation.output = GetImportJobResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/import-jobs/{JobId}", "code" => 200}}
      end)
      service.add_operation(:get_message_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetMessageInsights"
        operation.name = "GetMessageInsights"
        operation.input = GetMessageInsightsRequest
        operation.output = GetMessageInsightsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/insights/{MessageId}", "code" => 200}}
      end)
      service.add_operation(:get_multi_region_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetMultiRegionEndpoint"
        operation.name = "GetMultiRegionEndpoint"
        operation.input = GetMultiRegionEndpointRequest
        operation.output = GetMultiRegionEndpointResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/multi-region-endpoints/{EndpointName}", "code" => 200}}
      end)
      service.add_operation(:get_reputation_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetReputationEntity"
        operation.name = "GetReputationEntity"
        operation.input = GetReputationEntityRequest
        operation.output = GetReputationEntityResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}", "code" => 200}}
      end)
      service.add_operation(:get_suppressed_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetSuppressedDestination"
        operation.name = "GetSuppressedDestination"
        operation.input = GetSuppressedDestinationRequest
        operation.output = GetSuppressedDestinationResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/suppression/addresses/{EmailAddress}", "code" => 200}}
      end)
      service.add_operation(:get_tenant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetTenant"
        operation.name = "GetTenant"
        operation.input = GetTenantRequest
        operation.output = GetTenantResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tenants/get", "code" => 200}}
      end)
      service.add_operation(:list_configuration_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListConfigurationSets"
        operation.name = "ListConfigurationSets"
        operation.input = ListConfigurationSetsRequest
        operation.output = ListConfigurationSetsResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/configuration-sets", "code" => 200}}
        operation[:paginator] = Paginators::ListConfigurationSets.new
      end)
      service.add_operation(:list_contact_lists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListContactLists"
        operation.name = "ListContactLists"
        operation.input = ListContactListsRequest
        operation.output = ListContactListsResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/contact-lists", "code" => 200}}
        operation[:paginator] = Paginators::ListContactLists.new
      end)
      service.add_operation(:list_contacts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListContacts"
        operation.name = "ListContacts"
        operation.input = ListContactsRequest
        operation.output = ListContactsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/contact-lists/{ContactListName}/contacts/list", "code" => 200}}
        operation[:paginator] = Paginators::ListContacts.new
      end)
      service.add_operation(:list_custom_verification_email_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListCustomVerificationEmailTemplates"
        operation.name = "ListCustomVerificationEmailTemplates"
        operation.input = ListCustomVerificationEmailTemplatesRequest
        operation.output = ListCustomVerificationEmailTemplatesResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/custom-verification-email-templates", "code" => 200}}
        operation[:paginator] = Paginators::ListCustomVerificationEmailTemplates.new
      end)
      service.add_operation(:list_dedicated_ip_pools, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListDedicatedIpPools"
        operation.name = "ListDedicatedIpPools"
        operation.input = ListDedicatedIpPoolsRequest
        operation.output = ListDedicatedIpPoolsResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/dedicated-ip-pools", "code" => 200}}
        operation[:paginator] = Paginators::ListDedicatedIpPools.new
      end)
      service.add_operation(:list_deliverability_test_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListDeliverabilityTestReports"
        operation.name = "ListDeliverabilityTestReports"
        operation.input = ListDeliverabilityTestReportsRequest
        operation.output = ListDeliverabilityTestReportsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/deliverability-dashboard/test-reports", "code" => 200}}
        operation[:paginator] = Paginators::ListDeliverabilityTestReports.new
      end)
      service.add_operation(:list_domain_deliverability_campaigns, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListDomainDeliverabilityCampaigns"
        operation.name = "ListDomainDeliverabilityCampaigns"
        operation.input = ListDomainDeliverabilityCampaignsRequest
        operation.output = ListDomainDeliverabilityCampaignsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainDeliverabilityCampaigns.new
      end)
      service.add_operation(:list_email_identities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListEmailIdentities"
        operation.name = "ListEmailIdentities"
        operation.input = ListEmailIdentitiesRequest
        operation.output = ListEmailIdentitiesResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/identities", "code" => 200}}
        operation[:paginator] = Paginators::ListEmailIdentities.new
      end)
      service.add_operation(:list_email_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListEmailTemplates"
        operation.name = "ListEmailTemplates"
        operation.input = ListEmailTemplatesRequest
        operation.output = ListEmailTemplatesResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/templates", "code" => 200}}
        operation[:paginator] = Paginators::ListEmailTemplates.new
      end)
      service.add_operation(:list_export_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListExportJobs"
        operation.name = "ListExportJobs"
        operation.input = ListExportJobsRequest
        operation.output = ListExportJobsResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/list-export-jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListExportJobs.new
      end)
      service.add_operation(:list_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListImportJobs"
        operation.name = "ListImportJobs"
        operation.input = ListImportJobsRequest
        operation.output = ListImportJobsResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/import-jobs/list", "code" => 200}}
        operation[:paginator] = Paginators::ListImportJobs.new
      end)
      service.add_operation(:list_multi_region_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListMultiRegionEndpoints"
        operation.name = "ListMultiRegionEndpoints"
        operation.input = ListMultiRegionEndpointsRequest
        operation.output = ListMultiRegionEndpointsResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/multi-region-endpoints", "code" => 200}}
        operation[:paginator] = Paginators::ListMultiRegionEndpoints.new
      end)
      service.add_operation(:list_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListRecommendations"
        operation.name = "ListRecommendations"
        operation.input = ListRecommendationsRequest
        operation.output = ListRecommendationsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/vdm/recommendations", "code" => 200}}
        operation[:paginator] = Paginators::ListRecommendations.new
      end)
      service.add_operation(:list_reputation_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListReputationEntities"
        operation.name = "ListReputationEntities"
        operation.input = ListReputationEntitiesRequest
        operation.output = ListReputationEntitiesResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/reputation/entities", "code" => 200}}
        operation[:paginator] = Paginators::ListReputationEntities.new
      end)
      service.add_operation(:list_resource_tenants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListResourceTenants"
        operation.name = "ListResourceTenants"
        operation.input = ListResourceTenantsRequest
        operation.output = ListResourceTenantsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/resources/tenants/list", "code" => 200}}
        operation[:paginator] = Paginators::ListResourceTenants.new
      end)
      service.add_operation(:list_suppressed_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListSuppressedDestinations"
        operation.name = "ListSuppressedDestinations"
        operation.input = ListSuppressedDestinationsRequest
        operation.output = ListSuppressedDestinationsResponse
        operation.errors << BadRequestException
        operation.errors << InvalidNextTokenException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/suppression/addresses", "code" => 200}}
        operation[:paginator] = Paginators::ListSuppressedDestinations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v2/email/tags", "code" => 200}}
      end)
      service.add_operation(:list_tenant_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListTenantResources"
        operation.name = "ListTenantResources"
        operation.input = ListTenantResourcesRequest
        operation.output = ListTenantResourcesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tenants/resources/list", "code" => 200}}
        operation[:paginator] = Paginators::ListTenantResources.new
      end)
      service.add_operation(:list_tenants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListTenants"
        operation.name = "ListTenants"
        operation.input = ListTenantsRequest
        operation.output = ListTenantsResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tenants/list", "code" => 200}}
        operation[:paginator] = Paginators::ListTenants.new
      end)
      service.add_operation(:put_account_dedicated_ip_warmup_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutAccountDedicatedIpWarmupAttributes"
        operation.name = "PutAccountDedicatedIpWarmupAttributes"
        operation.input = PutAccountDedicatedIpWarmupAttributesRequest
        operation.output = PutAccountDedicatedIpWarmupAttributesResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/account/dedicated-ips/warmup", "code" => 200}}
      end)
      service.add_operation(:put_account_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutAccountDetails"
        operation.name = "PutAccountDetails"
        operation.input = PutAccountDetailsRequest
        operation.output = PutAccountDetailsResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/account/details", "code" => 200}}
      end)
      service.add_operation(:put_account_sending_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutAccountSendingAttributes"
        operation.name = "PutAccountSendingAttributes"
        operation.input = PutAccountSendingAttributesRequest
        operation.output = PutAccountSendingAttributesResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/account/sending", "code" => 200}}
      end)
      service.add_operation(:put_account_suppression_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutAccountSuppressionAttributes"
        operation.name = "PutAccountSuppressionAttributes"
        operation.input = PutAccountSuppressionAttributesRequest
        operation.output = PutAccountSuppressionAttributesResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/account/suppression", "code" => 200}}
      end)
      service.add_operation(:put_account_vdm_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutAccountVdmAttributes"
        operation.name = "PutAccountVdmAttributes"
        operation.input = PutAccountVdmAttributesRequest
        operation.output = PutAccountVdmAttributesResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/account/vdm", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_archiving_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutConfigurationSetArchivingOptions"
        operation.name = "PutConfigurationSetArchivingOptions"
        operation.input = PutConfigurationSetArchivingOptionsRequest
        operation.output = PutConfigurationSetArchivingOptionsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/archiving-options", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_configuration_set_delivery_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutConfigurationSetDeliveryOptions"
        operation.name = "PutConfigurationSetDeliveryOptions"
        operation.input = PutConfigurationSetDeliveryOptionsRequest
        operation.output = PutConfigurationSetDeliveryOptionsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/delivery-options", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_reputation_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutConfigurationSetReputationOptions"
        operation.name = "PutConfigurationSetReputationOptions"
        operation.input = PutConfigurationSetReputationOptionsRequest
        operation.output = PutConfigurationSetReputationOptionsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/reputation-options", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_sending_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutConfigurationSetSendingOptions"
        operation.name = "PutConfigurationSetSendingOptions"
        operation.input = PutConfigurationSetSendingOptionsRequest
        operation.output = PutConfigurationSetSendingOptionsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/sending", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_suppression_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutConfigurationSetSuppressionOptions"
        operation.name = "PutConfigurationSetSuppressionOptions"
        operation.input = PutConfigurationSetSuppressionOptionsRequest
        operation.output = PutConfigurationSetSuppressionOptionsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/suppression-options", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_tracking_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutConfigurationSetTrackingOptions"
        operation.name = "PutConfigurationSetTrackingOptions"
        operation.input = PutConfigurationSetTrackingOptionsRequest
        operation.output = PutConfigurationSetTrackingOptionsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/tracking-options", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_vdm_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutConfigurationSetVdmOptions"
        operation.name = "PutConfigurationSetVdmOptions"
        operation.input = PutConfigurationSetVdmOptionsRequest
        operation.output = PutConfigurationSetVdmOptionsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/vdm-options", "code" => 200}}
      end)
      service.add_operation(:put_dedicated_ip_in_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutDedicatedIpInPool"
        operation.name = "PutDedicatedIpInPool"
        operation.input = PutDedicatedIpInPoolRequest
        operation.output = PutDedicatedIpInPoolResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/dedicated-ips/{Ip}/pool", "code" => 200}}
      end)
      service.add_operation(:put_dedicated_ip_pool_scaling_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutDedicatedIpPoolScalingAttributes"
        operation.name = "PutDedicatedIpPoolScalingAttributes"
        operation.input = PutDedicatedIpPoolScalingAttributesRequest
        operation.output = PutDedicatedIpPoolScalingAttributesResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/dedicated-ip-pools/{PoolName}/scaling", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_dedicated_ip_warmup_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutDedicatedIpWarmupAttributes"
        operation.name = "PutDedicatedIpWarmupAttributes"
        operation.input = PutDedicatedIpWarmupAttributesRequest
        operation.output = PutDedicatedIpWarmupAttributesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/dedicated-ips/{Ip}/warmup", "code" => 200}}
      end)
      service.add_operation(:put_deliverability_dashboard_option, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutDeliverabilityDashboardOption"
        operation.name = "PutDeliverabilityDashboardOption"
        operation.input = PutDeliverabilityDashboardOptionRequest
        operation.output = PutDeliverabilityDashboardOptionResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/deliverability-dashboard", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_configuration_set_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutEmailIdentityConfigurationSetAttributes"
        operation.name = "PutEmailIdentityConfigurationSetAttributes"
        operation.input = PutEmailIdentityConfigurationSetAttributesRequest
        operation.output = PutEmailIdentityConfigurationSetAttributesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/identities/{EmailIdentity}/configuration-set", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_dkim_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutEmailIdentityDkimAttributes"
        operation.name = "PutEmailIdentityDkimAttributes"
        operation.input = PutEmailIdentityDkimAttributesRequest
        operation.output = PutEmailIdentityDkimAttributesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/identities/{EmailIdentity}/dkim", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_dkim_signing_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutEmailIdentityDkimSigningAttributes"
        operation.name = "PutEmailIdentityDkimSigningAttributes"
        operation.input = PutEmailIdentityDkimSigningAttributesRequest
        operation.output = PutEmailIdentityDkimSigningAttributesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/identities/{EmailIdentity}/dkim/signing", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_feedback_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutEmailIdentityFeedbackAttributes"
        operation.name = "PutEmailIdentityFeedbackAttributes"
        operation.input = PutEmailIdentityFeedbackAttributesRequest
        operation.output = PutEmailIdentityFeedbackAttributesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/identities/{EmailIdentity}/feedback", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_mail_from_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutEmailIdentityMailFromAttributes"
        operation.name = "PutEmailIdentityMailFromAttributes"
        operation.input = PutEmailIdentityMailFromAttributesRequest
        operation.output = PutEmailIdentityMailFromAttributesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/identities/{EmailIdentity}/mail-from", "code" => 200}}
      end)
      service.add_operation(:put_suppressed_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutSuppressedDestination"
        operation.name = "PutSuppressedDestination"
        operation.input = PutSuppressedDestinationRequest
        operation.output = PutSuppressedDestinationResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/suppression/addresses", "code" => 200}}
      end)
      service.add_operation(:send_bulk_email, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#SendBulkEmail"
        operation.name = "SendBulkEmail"
        operation.input = SendBulkEmailRequest
        operation.output = SendBulkEmailResponse
        operation.errors << AccountSuspendedException
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << MailFromDomainNotVerifiedException
        operation.errors << MessageRejected
        operation.errors << NotFoundException
        operation.errors << SendingPausedException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/outbound-bulk-emails", "code" => 200}}
      end)
      service.add_operation(:send_custom_verification_email, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#SendCustomVerificationEmail"
        operation.name = "SendCustomVerificationEmail"
        operation.input = SendCustomVerificationEmailRequest
        operation.output = SendCustomVerificationEmailResponse
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << MailFromDomainNotVerifiedException
        operation.errors << MessageRejected
        operation.errors << NotFoundException
        operation.errors << SendingPausedException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/outbound-custom-verification-emails", "code" => 200}}
      end)
      service.add_operation(:send_email, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#SendEmail"
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
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/outbound-emails", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tags", "code" => 200}}
      end)
      service.add_operation(:test_render_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#TestRenderEmailTemplate"
        operation.name = "TestRenderEmailTemplate"
        operation.input = TestRenderEmailTemplateRequest
        operation.output = TestRenderEmailTemplateResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/templates/{TemplateName}/render", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/email/tags", "code" => 200}}
      end)
      service.add_operation(:update_configuration_set_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateConfigurationSetEventDestination"
        operation.name = "UpdateConfigurationSetEventDestination"
        operation.input = UpdateConfigurationSetEventDestinationRequest
        operation.output = UpdateConfigurationSetEventDestinationResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", "code" => 200}}
      end)
      service.add_operation(:update_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateContact"
        operation.name = "UpdateContact"
        operation.input = UpdateContactRequest
        operation.output = UpdateContactResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}", "code" => 200}}
      end)
      service.add_operation(:update_contact_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateContactList"
        operation.name = "UpdateContactList"
        operation.input = UpdateContactListRequest
        operation.output = UpdateContactListResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/contact-lists/{ContactListName}", "code" => 200}}
      end)
      service.add_operation(:update_custom_verification_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateCustomVerificationEmailTemplate"
        operation.name = "UpdateCustomVerificationEmailTemplate"
        operation.input = UpdateCustomVerificationEmailTemplateRequest
        operation.output = UpdateCustomVerificationEmailTemplateResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/custom-verification-email-templates/{TemplateName}", "code" => 200}}
      end)
      service.add_operation(:update_email_identity_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateEmailIdentityPolicy"
        operation.name = "UpdateEmailIdentityPolicy"
        operation.input = UpdateEmailIdentityPolicyRequest
        operation.output = UpdateEmailIdentityPolicyResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}", "code" => 200}}
      end)
      service.add_operation(:update_email_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateEmailTemplate"
        operation.name = "UpdateEmailTemplate"
        operation.input = UpdateEmailTemplateRequest
        operation.output = UpdateEmailTemplateResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/templates/{TemplateName}", "code" => 200}}
      end)
      service.add_operation(:update_reputation_entity_customer_managed_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateReputationEntityCustomerManagedStatus"
        operation.name = "UpdateReputationEntityCustomerManagedStatus"
        operation.input = UpdateReputationEntityCustomerManagedStatusRequest
        operation.output = UpdateReputationEntityCustomerManagedStatusResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}/customer-managed-status", "code" => 200}}
      end)
      service.add_operation(:update_reputation_entity_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateReputationEntityPolicy"
        operation.name = "UpdateReputationEntityPolicy"
        operation.input = UpdateReputationEntityPolicyRequest
        operation.output = UpdateReputationEntityPolicyResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}/policy", "code" => 200}}
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
