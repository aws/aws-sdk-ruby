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
    ArchiveArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ArchiveArn", name: "ArchiveArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "^arn:(aws|aws-[a-z-]+):ses:[a-z]{2,4}-[a-z-]+-[0-9]:[0-9]{1,20}:mailmanager-archive/a-[a-z0-9]{24,62}$"})
    ArchivingOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ArchivingOptions", name: "ArchivingOptions")
    AssociateEmailIdentityCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#AssociateEmailIdentityCertificateRequest", name: "AssociateEmailIdentityCertificateRequest")
    AssociateEmailIdentityCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#AssociateEmailIdentityCertificateResponse", name: "AssociateEmailIdentityCertificateResponse")
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
    CertificateArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#CertificateArn", name: "CertificateArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:certificate/[\\w+=,.@-]+$"})
    Charset = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#Charset", name: "Charset")
    CloudWatchDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CloudWatchDestination", name: "CloudWatchDestination")
    CloudWatchDimensionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#CloudWatchDimensionConfiguration", name: "CloudWatchDimensionConfiguration")
    CloudWatchDimensionConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#CloudWatchDimensionConfigurations", name: "CloudWatchDimensionConfigurations")
    Complaint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#Complaint", name: "Complaint")
    ComplaintFeedbackType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ComplaintFeedbackType", name: "ComplaintFeedbackType")
    ComplaintSubType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ComplaintSubType", name: "ComplaintSubType")
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ConfigurationOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ConfigurationOverrides", name: "ConfigurationOverrides")
    ConfigurationSetFilter = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sesv2#ConfigurationSetFilter", name: "ConfigurationSetFilter")
    ConfigurationSetFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#ConfigurationSetFilterKey", name: "ConfigurationSetFilterKey")
    ConfigurationSetFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ConfigurationSetFilterValue", name: "ConfigurationSetFilterValue", traits: {"smithy.api#length" => {"min" => 1}})
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
    DefaultSigningScheme = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DefaultSigningScheme", name: "DefaultSigningScheme")
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
    DisassociateEmailIdentityCertificateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DisassociateEmailIdentityCertificateRequest", name: "DisassociateEmailIdentityCertificateRequest")
    DisassociateEmailIdentityCertificateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#DisassociateEmailIdentityCertificateResponse", name: "DisassociateEmailIdentityCertificateResponse")
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
    EmailAddressInsightsConfidenceVerdict = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#EmailAddressInsightsConfidenceVerdict", name: "EmailAddressInsightsConfidenceVerdict")
    EmailAddressInsightsMailboxEvaluations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#EmailAddressInsightsMailboxEvaluations", name: "EmailAddressInsightsMailboxEvaluations")
    EmailAddressInsightsVerdict = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#EmailAddressInsightsVerdict", name: "EmailAddressInsightsVerdict")
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
    GetEmailAddressInsightsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetEmailAddressInsightsRequest", name: "GetEmailAddressInsightsRequest")
    GetEmailAddressInsightsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#GetEmailAddressInsightsResponse", name: "GetEmailAddressInsightsResponse")
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
    HostedZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#HostedZone", name: "HostedZone")
    HttpsPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#HttpsPolicy", name: "HttpsPolicy")
    Identity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#Identity", name: "Identity", traits: {"smithy.api#length" => {"min" => 1}})
    IdentityCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#IdentityCertificate", name: "IdentityCertificate")
    IdentityCertificateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#IdentityCertificateList", name: "IdentityCertificateList")
    IdentityCertificateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#IdentityCertificateStatus", name: "IdentityCertificateStatus")
    IdentityFilter = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sesv2#IdentityFilter", name: "IdentityFilter")
    IdentityFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#IdentityFilterKey", name: "IdentityFilterKey")
    IdentityFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#IdentityFilterValue", name: "IdentityFilterValue", traits: {"smithy.api#length" => {"min" => 1}})
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
    ListEmailIdentityCertificatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListEmailIdentityCertificatesRequest", name: "ListEmailIdentityCertificatesRequest")
    ListEmailIdentityCertificatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListEmailIdentityCertificatesResponse", name: "ListEmailIdentityCertificatesResponse")
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
    ListTenantsFilter = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.sesv2#ListTenantsFilter", name: "ListTenantsFilter")
    ListTenantsFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#ListTenantsFilterKey", name: "ListTenantsFilterKey")
    ListTenantsFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#ListTenantsFilterValue", name: "ListTenantsFilterValue", traits: {"smithy.api#length" => {"min" => 1}})
    ListTenantsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListTenantsRequest", name: "ListTenantsRequest")
    ListTenantsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#ListTenantsResponse", name: "ListTenantsResponse")
    MailFromAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MailFromAttributes", name: "MailFromAttributes")
    MailFromDomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#MailFromDomainName", name: "MailFromDomainName")
    MailFromDomainNotVerifiedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MailFromDomainNotVerifiedException", name: "MailFromDomainNotVerifiedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MailFromDomainStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#MailFromDomainStatus", name: "MailFromDomainStatus")
    MailType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#MailType", name: "MailType")
    MailboxValidation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MailboxValidation", name: "MailboxValidation")
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
    MessageHeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#MessageHeaderValue", name: "MessageHeaderValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 995}, "smithy.api#pattern" => "^[ -~]*$"})
    MessageInsightsDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MessageInsightsDataSource", name: "MessageInsightsDataSource")
    MessageInsightsExportMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sesv2#MessageInsightsExportMaxResults", name: "MessageInsightsExportMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    MessageInsightsFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MessageInsightsFilters", name: "MessageInsightsFilters")
    MessageRejected = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MessageRejected", name: "MessageRejected", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MessageSecurityOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#MessageSecurityOptions", name: "MessageSecurityOptions")
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
    PricingAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PricingAttributes", name: "PricingAttributes")
    PricingPlan = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#PricingPlan", name: "PricingPlan")
    PrimaryNameServer = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#PrimaryNameServer", name: "PrimaryNameServer")
    PrivateKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sesv2#PrivateKey", name: "PrivateKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 20480}, "smithy.api#pattern" => "^[a-zA-Z0-9+\\/]+={0,2}$", "smithy.api#sensitive" => {}})
    ProcessedRecordsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sesv2#ProcessedRecordsCount", name: "ProcessedRecordsCount")
    PutAccountDedicatedIpWarmupAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountDedicatedIpWarmupAttributesRequest", name: "PutAccountDedicatedIpWarmupAttributesRequest")
    PutAccountDedicatedIpWarmupAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountDedicatedIpWarmupAttributesResponse", name: "PutAccountDedicatedIpWarmupAttributesResponse")
    PutAccountDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountDetailsRequest", name: "PutAccountDetailsRequest")
    PutAccountDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountDetailsResponse", name: "PutAccountDetailsResponse")
    PutAccountPricingAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountPricingAttributesRequest", name: "PutAccountPricingAttributesRequest")
    PutAccountPricingAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutAccountPricingAttributesResponse", name: "PutAccountPricingAttributesResponse")
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
    PutTenantSuppressionAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutTenantSuppressionAttributesRequest", name: "PutTenantSuppressionAttributesRequest")
    PutTenantSuppressionAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#PutTenantSuppressionAttributesResponse", name: "PutTenantSuppressionAttributesResponse")
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
    SignatureFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#SignatureFormat", name: "SignatureFormat")
    SigningScheme = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.sesv2#SigningScheme", name: "SigningScheme")
    SmimeSigningScheme = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SmimeSigningScheme", name: "SmimeSigningScheme")
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
    SuppressionConditionThreshold = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SuppressionConditionThreshold", name: "SuppressionConditionThreshold")
    SuppressionConfidenceThreshold = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SuppressionConfidenceThreshold", name: "SuppressionConfidenceThreshold")
    SuppressionConfidenceVerdictThreshold = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#SuppressionConfidenceVerdictThreshold", name: "SuppressionConfidenceVerdictThreshold")
    SuppressionListDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SuppressionListDestination", name: "SuppressionListDestination")
    SuppressionListImportAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#SuppressionListImportAction", name: "SuppressionListImportAction")
    SuppressionListReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#SuppressionListReason", name: "SuppressionListReason")
    SuppressionListReasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#SuppressionListReasons", name: "SuppressionListReasons")
    SuppressionListScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sesv2#SuppressionListScope", name: "SuppressionListScope")
    SuppressionOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SuppressionOptions", name: "SuppressionOptions")
    SuppressionValidationAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SuppressionValidationAttributes", name: "SuppressionValidationAttributes")
    SuppressionValidationOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#SuppressionValidationOptions", name: "SuppressionValidationOptions")
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
    TenantNameFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#TenantNameFilterList", name: "TenantNameFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    TenantResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#TenantResource", name: "TenantResource")
    TenantResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sesv2#TenantResourceList", name: "TenantResourceList")
    TenantSuppressionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#TenantSuppressionAttributes", name: "TenantSuppressionAttributes")
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
    TrackingConfigurationOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#TrackingConfigurationOverrides", name: "TrackingConfigurationOverrides")
    TrackingOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#TrackingOptions", name: "TrackingOptions")
    UnsubscribeAll = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.sesv2#UnsubscribeAll", name: "UnsubscribeAll", traits: {"smithy.api#default" => false})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateConfigurationSetEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateConfigurationSetEventDestinationRequest", name: "UpdateConfigurationSetEventDestinationRequest")
    UpdateConfigurationSetEventDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateConfigurationSetEventDestinationResponse", name: "UpdateConfigurationSetEventDestinationResponse")
    UpdateConfigurationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateConfigurationSetRequest", name: "UpdateConfigurationSetRequest")
    UpdateConfigurationSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sesv2#UpdateConfigurationSetResponse", name: "UpdateConfigurationSetResponse")
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

    AccountDetails.add_member(:mail_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MailType, name: "MailType"))
    AccountDetails.add_member(:website_url, ::Smithy::Schema::Shapes::MemberShape.new(target: WebsiteURL, name: "WebsiteURL"))
    AccountDetails.add_member(:contact_language, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactLanguage, name: "ContactLanguage"))
    AccountDetails.add_member(:use_case_description, ::Smithy::Schema::Shapes::MemberShape.new(target: UseCaseDescription, name: "UseCaseDescription"))
    AccountDetails.add_member(:additional_contact_email_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalContactEmailAddresses, name: "AdditionalContactEmailAddresses"))
    AccountDetails.add_member(:review_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewDetails, name: "ReviewDetails"))
    AccountDetails.type = Types::AccountDetails
    AccountSuspendedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccountSuspendedException.type = Types::AccountSuspendedException
    AdditionalContactEmailAddresses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalContactEmailAddress, name: "member"))
    AlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AlreadyExistsException.type = Types::AlreadyExistsException
    ArchivingOptions.add_member(:archive_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveArn, name: "ArchiveArn"))
    ArchivingOptions.type = Types::ArchivingOptions
    AssociateEmailIdentityCertificateRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#required" => {}}))
    AssociateEmailIdentityCertificateRequest.add_member(:from_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "FromAddress"))
    AssociateEmailIdentityCertificateRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateArn, name: "CertificateArn", traits: {"smithy.api#required" => {}}))
    AssociateEmailIdentityCertificateRequest.type = Types::AssociateEmailIdentityCertificateRequest
    AssociateEmailIdentityCertificateResponse.type = Types::AssociateEmailIdentityCertificateResponse
    Attachment.add_member(:raw_content, ::Smithy::Schema::Shapes::MemberShape.new(target: RawAttachmentData, name: "RawContent", traits: {"smithy.api#required" => {}}))
    Attachment.add_member(:content_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentContentDisposition, name: "ContentDisposition"))
    Attachment.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentFileName, name: "FileName", traits: {"smithy.api#required" => {}}))
    Attachment.add_member(:content_description, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentContentDescription, name: "ContentDescription"))
    Attachment.add_member(:content_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentContentId, name: "ContentId"))
    Attachment.add_member(:content_transfer_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentContentTransferEncoding, name: "ContentTransferEncoding"))
    Attachment.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentContentType, name: "ContentType"))
    Attachment.type = Types::Attachment
    AttachmentContentDisposition.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACHMENT", traits: {"smithy.api#enumValue" => "ATTACHMENT"}))
    AttachmentContentDisposition.add_member(:inline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INLINE", traits: {"smithy.api#enumValue" => "INLINE"}))
    AttachmentContentTransferEncoding.add_member(:base64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASE64", traits: {"smithy.api#enumValue" => "BASE64"}))
    AttachmentContentTransferEncoding.add_member(:quoted_printable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUOTED_PRINTABLE", traits: {"smithy.api#enumValue" => "QUOTED_PRINTABLE"}))
    AttachmentContentTransferEncoding.add_member(:seven_bit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEVEN_BIT", traits: {"smithy.api#enumValue" => "SEVEN_BIT"}))
    AttachmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment, name: "member"))
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    BadRequestException.type = Types::BadRequestException
    BatchGetMetricDataQueries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetMetricDataQuery, name: "member"))
    BatchGetMetricDataQuery.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryIdentifier, name: "Id", traits: {"smithy.api#required" => {}}))
    BatchGetMetricDataQuery.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricNamespace, name: "Namespace", traits: {"smithy.api#required" => {}}))
    BatchGetMetricDataQuery.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: Metric, name: "Metric", traits: {"smithy.api#required" => {}}))
    BatchGetMetricDataQuery.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimensions, name: "Dimensions"))
    BatchGetMetricDataQuery.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartDate", traits: {"smithy.api#required" => {}}))
    BatchGetMetricDataQuery.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndDate", traits: {"smithy.api#required" => {}}))
    BatchGetMetricDataQuery.type = Types::BatchGetMetricDataQuery
    BatchGetMetricDataRequest.add_member(:queries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetMetricDataQueries, name: "Queries", traits: {"smithy.api#required" => {}}))
    BatchGetMetricDataRequest.type = Types::BatchGetMetricDataRequest
    BatchGetMetricDataResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataResultList, name: "Results"))
    BatchGetMetricDataResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataErrorList, name: "Errors"))
    BatchGetMetricDataResponse.type = Types::BatchGetMetricDataResponse
    BehaviorOnMxFailure.add_member(:use_default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USE_DEFAULT_VALUE", traits: {"smithy.api#enumValue" => "USE_DEFAULT_VALUE"}))
    BehaviorOnMxFailure.add_member(:reject_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECT_MESSAGE", traits: {"smithy.api#enumValue" => "REJECT_MESSAGE"}))
    BlacklistEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistEntry, name: "member"))
    BlacklistEntry.add_member(:rbl_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RblName, name: "RblName"))
    BlacklistEntry.add_member(:listing_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ListingTime"))
    BlacklistEntry.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistingDescription, name: "Description"))
    BlacklistEntry.type = Types::BlacklistEntry
    BlacklistItemNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistItemName, name: "member"))
    BlacklistReport.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistItemName, name: "key"))
    BlacklistReport.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistEntries, name: "value"))
    Body.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, name: "Text"))
    Body.add_member(:html, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, name: "Html"))
    Body.type = Types::Body
    Bounce.add_member(:bounce_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BounceType, name: "BounceType"))
    Bounce.add_member(:bounce_sub_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BounceSubType, name: "BounceSubType"))
    Bounce.add_member(:diagnostic_code, ::Smithy::Schema::Shapes::MemberShape.new(target: DiagnosticCode, name: "DiagnosticCode"))
    Bounce.type = Types::Bounce
    BounceType.add_member(:undetermined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNDETERMINED", traits: {"smithy.api#enumValue" => "UNDETERMINED"}))
    BounceType.add_member(:transient, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSIENT", traits: {"smithy.api#enumValue" => "TRANSIENT"}))
    BounceType.add_member(:permanent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERMANENT", traits: {"smithy.api#enumValue" => "PERMANENT"}))
    BulkEmailContent.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: Template, name: "Template"))
    BulkEmailContent.type = Types::BulkEmailContent
    BulkEmailEntry.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "Destination", traits: {"smithy.api#required" => {}}))
    BulkEmailEntry.add_member(:replacement_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagList, name: "ReplacementTags"))
    BulkEmailEntry.add_member(:replacement_email_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplacementEmailContent, name: "ReplacementEmailContent"))
    BulkEmailEntry.add_member(:replacement_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageHeaderList, name: "ReplacementHeaders"))
    BulkEmailEntry.type = Types::BulkEmailEntry
    BulkEmailEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailEntry, name: "member"))
    BulkEmailEntryResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailStatus, name: "Status"))
    BulkEmailEntryResult.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Error"))
    BulkEmailEntryResult.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutboundMessageId, name: "MessageId"))
    BulkEmailEntryResult.type = Types::BulkEmailEntryResult
    BulkEmailEntryResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailEntryResult, name: "member"))
    BulkEmailStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    BulkEmailStatus.add_member(:message_rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MESSAGE_REJECTED", traits: {"smithy.api#enumValue" => "MESSAGE_REJECTED"}))
    BulkEmailStatus.add_member(:mail_from_domain_not_verified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAIL_FROM_DOMAIN_NOT_VERIFIED", traits: {"smithy.api#enumValue" => "MAIL_FROM_DOMAIN_NOT_VERIFIED"}))
    BulkEmailStatus.add_member(:configuration_set_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION_SET_NOT_FOUND", traits: {"smithy.api#enumValue" => "CONFIGURATION_SET_NOT_FOUND"}))
    BulkEmailStatus.add_member(:template_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEMPLATE_NOT_FOUND", traits: {"smithy.api#enumValue" => "TEMPLATE_NOT_FOUND"}))
    BulkEmailStatus.add_member(:account_suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_SUSPENDED", traits: {"smithy.api#enumValue" => "ACCOUNT_SUSPENDED"}))
    BulkEmailStatus.add_member(:account_throttled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_THROTTLED", traits: {"smithy.api#enumValue" => "ACCOUNT_THROTTLED"}))
    BulkEmailStatus.add_member(:account_daily_quota_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_DAILY_QUOTA_EXCEEDED", traits: {"smithy.api#enumValue" => "ACCOUNT_DAILY_QUOTA_EXCEEDED"}))
    BulkEmailStatus.add_member(:invalid_sending_pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SENDING_POOL_NAME", traits: {"smithy.api#enumValue" => "INVALID_SENDING_POOL_NAME"}))
    BulkEmailStatus.add_member(:account_sending_paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_SENDING_PAUSED", traits: {"smithy.api#enumValue" => "ACCOUNT_SENDING_PAUSED"}))
    BulkEmailStatus.add_member(:configuration_set_sending_paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION_SET_SENDING_PAUSED", traits: {"smithy.api#enumValue" => "CONFIGURATION_SET_SENDING_PAUSED"}))
    BulkEmailStatus.add_member(:invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PARAMETER", traits: {"smithy.api#enumValue" => "INVALID_PARAMETER"}))
    BulkEmailStatus.add_member(:transient_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSIENT_FAILURE", traits: {"smithy.api#enumValue" => "TRANSIENT_FAILURE"}))
    BulkEmailStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CancelExportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelExportJobRequest.type = Types::CancelExportJobRequest
    CancelExportJobResponse.type = Types::CancelExportJobResponse
    CloudWatchDestination.add_member(:dimension_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDimensionConfigurations, name: "DimensionConfigurations", traits: {"smithy.api#required" => {}}))
    CloudWatchDestination.type = Types::CloudWatchDestination
    CloudWatchDimensionConfiguration.add_member(:dimension_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionName, name: "DimensionName", traits: {"smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.add_member(:dimension_value_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValueSource, name: "DimensionValueSource", traits: {"smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.add_member(:default_dimension_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultDimensionValue, name: "DefaultDimensionValue", traits: {"smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.type = Types::CloudWatchDimensionConfiguration
    CloudWatchDimensionConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDimensionConfiguration, name: "member"))
    Complaint.add_member(:complaint_sub_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplaintSubType, name: "ComplaintSubType"))
    Complaint.add_member(:complaint_feedback_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplaintFeedbackType, name: "ComplaintFeedbackType"))
    Complaint.type = Types::Complaint
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConfigurationOverrides.add_member(:tracking, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingConfigurationOverrides, name: "Tracking"))
    ConfigurationOverrides.type = Types::ConfigurationOverrides
    ConfigurationSetFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetFilterKey, name: "key"))
    ConfigurationSetFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetFilterValue, name: "value"))
    ConfigurationSetFilterKey.add_member(:configuration_set_name_contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION_SET_NAME_CONTAINS", traits: {"smithy.api#enumValue" => "CONFIGURATION_SET_NAME_CONTAINS"}))
    ConfigurationSetNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConflictException.type = Types::ConflictException
    Contact.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress"))
    Contact.add_member(:topic_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicPreferenceList, name: "TopicPreferences"))
    Contact.add_member(:topic_default_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicPreferenceList, name: "TopicDefaultPreferences"))
    Contact.add_member(:unsubscribe_all, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsubscribeAll, name: "UnsubscribeAll", traits: {"smithy.api#default" => false}))
    Contact.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTimestamp"))
    Contact.type = Types::Contact
    ContactLanguage.add_member(:en, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN", traits: {"smithy.api#enumValue" => "EN"}))
    ContactLanguage.add_member(:ja, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JA", traits: {"smithy.api#enumValue" => "JA"}))
    ContactList.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, name: "ContactListName"))
    ContactList.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTimestamp"))
    ContactList.type = Types::ContactList
    ContactListDestination.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, name: "ContactListName", traits: {"smithy.api#required" => {}}))
    ContactListDestination.add_member(:contact_list_import_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListImportAction, name: "ContactListImportAction", traits: {"smithy.api#required" => {}}))
    ContactListDestination.type = Types::ContactListDestination
    ContactListImportAction.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    ContactListImportAction.add_member(:put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUT", traits: {"smithy.api#enumValue" => "PUT"}))
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
    CreateConfigurationSetRequest.add_member(:suppression_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionOptions, name: "SuppressionOptions"))
    CreateConfigurationSetRequest.add_member(:vdm_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VdmOptions, name: "VdmOptions"))
    CreateConfigurationSetRequest.add_member(:archiving_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivingOptions, name: "ArchivingOptions"))
    CreateConfigurationSetRequest.add_member(:message_security_options, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageSecurityOptions, name: "MessageSecurityOptions"))
    CreateConfigurationSetRequest.type = Types::CreateConfigurationSetRequest
    CreateConfigurationSetResponse.type = Types::CreateConfigurationSetResponse
    CreateContactListRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, name: "ContactListName", traits: {"smithy.api#required" => {}}))
    CreateContactListRequest.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, name: "Topics"))
    CreateContactListRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateContactListRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateContactListRequest.type = Types::CreateContactListRequest
    CreateContactListResponse.type = Types::CreateContactListResponse
    CreateContactRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateContactRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    CreateContactRequest.add_member(:topic_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicPreferenceList, name: "TopicPreferences"))
    CreateContactRequest.add_member(:unsubscribe_all, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsubscribeAll, name: "UnsubscribeAll", traits: {"smithy.api#default" => false}))
    CreateContactRequest.add_member(:attributes_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributesData, name: "AttributesData"))
    CreateContactRequest.type = Types::CreateContactRequest
    CreateContactResponse.type = Types::CreateContactResponse
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, name: "TemplateName", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "FromEmailAddress", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateSubject, name: "TemplateSubject", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateContent, name: "TemplateContent", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateCustomVerificationEmailTemplateRequest.add_member(:success_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessRedirectionURL, name: "SuccessRedirectionURL", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.add_member(:failure_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureRedirectionURL, name: "FailureRedirectionURL", traits: {"smithy.api#required" => {}}))
    CreateCustomVerificationEmailTemplateRequest.type = Types::CreateCustomVerificationEmailTemplateRequest
    CreateCustomVerificationEmailTemplateResponse.type = Types::CreateCustomVerificationEmailTemplateResponse
    CreateDedicatedIpPoolRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "PoolName", traits: {"smithy.api#required" => {}}))
    CreateDedicatedIpPoolRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDedicatedIpPoolRequest.add_member(:scaling_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingMode, name: "ScalingMode"))
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
    CreateEmailIdentityPolicyRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEmailIdentityPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEmailIdentityPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy", traits: {"smithy.api#required" => {}}))
    CreateEmailIdentityPolicyRequest.type = Types::CreateEmailIdentityPolicyRequest
    CreateEmailIdentityPolicyResponse.type = Types::CreateEmailIdentityPolicyResponse
    CreateEmailIdentityRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#required" => {}}))
    CreateEmailIdentityRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateEmailIdentityRequest.add_member(:dkim_signing_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningAttributes, name: "DkimSigningAttributes"))
    CreateEmailIdentityRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    CreateEmailIdentityRequest.type = Types::CreateEmailIdentityRequest
    CreateEmailIdentityResponse.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, name: "IdentityType"))
    CreateEmailIdentityResponse.add_member(:verified_for_sending_status, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "VerifiedForSendingStatus", traits: {"smithy.api#default" => false}))
    CreateEmailIdentityResponse.add_member(:dkim_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimAttributes, name: "DkimAttributes"))
    CreateEmailIdentityResponse.type = Types::CreateEmailIdentityResponse
    CreateEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, name: "TemplateName", traits: {"smithy.api#required" => {}}))
    CreateEmailTemplateRequest.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateContent, name: "TemplateContent", traits: {"smithy.api#required" => {}}))
    CreateEmailTemplateRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateEmailTemplateRequest.type = Types::CreateEmailTemplateRequest
    CreateEmailTemplateResponse.type = Types::CreateEmailTemplateResponse
    CreateExportJobRequest.add_member(:export_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDataSource, name: "ExportDataSource", traits: {"smithy.api#required" => {}}))
    CreateExportJobRequest.add_member(:export_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDestination, name: "ExportDestination", traits: {"smithy.api#required" => {}}))
    CreateExportJobRequest.type = Types::CreateExportJobRequest
    CreateExportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    CreateExportJobResponse.type = Types::CreateExportJobResponse
    CreateImportJobRequest.add_member(:import_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDestination, name: "ImportDestination", traits: {"smithy.api#required" => {}}))
    CreateImportJobRequest.add_member(:import_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDataSource, name: "ImportDataSource", traits: {"smithy.api#required" => {}}))
    CreateImportJobRequest.type = Types::CreateImportJobRequest
    CreateImportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    CreateImportJobResponse.type = Types::CreateImportJobResponse
    CreateMultiRegionEndpointRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "EndpointName", traits: {"smithy.api#required" => {}}))
    CreateMultiRegionEndpointRequest.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Details, name: "Details", traits: {"smithy.api#required" => {}}))
    CreateMultiRegionEndpointRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateMultiRegionEndpointRequest.type = Types::CreateMultiRegionEndpointRequest
    CreateMultiRegionEndpointResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    CreateMultiRegionEndpointResponse.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, name: "EndpointId"))
    CreateMultiRegionEndpointResponse.type = Types::CreateMultiRegionEndpointResponse
    CreateTenantRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName", traits: {"smithy.api#required" => {}}))
    CreateTenantRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateTenantRequest.add_member(:suppression_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantSuppressionAttributes, name: "SuppressionAttributes"))
    CreateTenantRequest.type = Types::CreateTenantRequest
    CreateTenantResourceAssociationRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName", traits: {"smithy.api#required" => {}}))
    CreateTenantResourceAssociationRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    CreateTenantResourceAssociationRequest.type = Types::CreateTenantResourceAssociationRequest
    CreateTenantResourceAssociationResponse.type = Types::CreateTenantResourceAssociationResponse
    CreateTenantResponse.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName"))
    CreateTenantResponse.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantId, name: "TenantId"))
    CreateTenantResponse.add_member(:tenant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "TenantArn"))
    CreateTenantResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    CreateTenantResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateTenantResponse.add_member(:sending_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingStatus, name: "SendingStatus"))
    CreateTenantResponse.add_member(:suppression_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantSuppressionAttributes, name: "SuppressionAttributes"))
    CreateTenantResponse.type = Types::CreateTenantResponse
    CustomVerificationEmailTemplateMetadata.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, name: "TemplateName"))
    CustomVerificationEmailTemplateMetadata.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "FromEmailAddress"))
    CustomVerificationEmailTemplateMetadata.add_member(:template_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateSubject, name: "TemplateSubject"))
    CustomVerificationEmailTemplateMetadata.add_member(:success_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessRedirectionURL, name: "SuccessRedirectionURL"))
    CustomVerificationEmailTemplateMetadata.add_member(:failure_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureRedirectionURL, name: "FailureRedirectionURL"))
    CustomVerificationEmailTemplateMetadata.type = Types::CustomVerificationEmailTemplateMetadata
    CustomVerificationEmailTemplatesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVerificationEmailTemplateMetadata, name: "member"))
    DailyVolume.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartDate"))
    DailyVolume.add_member(:volume_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeStatistics, name: "VolumeStatistics"))
    DailyVolume.add_member(:domain_isp_placements, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainIspPlacements, name: "DomainIspPlacements"))
    DailyVolume.type = Types::DailyVolume
    DailyVolumes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyVolume, name: "member"))
    DashboardAttributes.add_member(:engagement_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "EngagementMetrics"))
    DashboardAttributes.type = Types::DashboardAttributes
    DashboardOptions.add_member(:engagement_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "EngagementMetrics"))
    DashboardOptions.type = Types::DashboardOptions
    DataFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    DataFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    DedicatedIp.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, name: "Ip", traits: {"smithy.api#required" => {}}))
    DedicatedIp.add_member(:warmup_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmupStatus, name: "WarmupStatus", traits: {"smithy.api#required" => {}}))
    DedicatedIp.add_member(:warmup_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage100Wrapper, name: "WarmupPercentage", traits: {"smithy.api#required" => {}}))
    DedicatedIp.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "PoolName"))
    DedicatedIp.type = Types::DedicatedIp
    DedicatedIpList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedIp, name: "member"))
    DedicatedIpPool.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "PoolName", traits: {"smithy.api#required" => {}}))
    DedicatedIpPool.add_member(:scaling_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingMode, name: "ScalingMode", traits: {"smithy.api#required" => {}}))
    DedicatedIpPool.type = Types::DedicatedIpPool
    DefaultSigningScheme.type = Types::DefaultSigningScheme
    DeleteConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, name: "EventDestinationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.type = Types::DeleteConfigurationSetEventDestinationRequest
    DeleteConfigurationSetEventDestinationResponse.type = Types::DeleteConfigurationSetEventDestinationResponse
    DeleteConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetRequest.type = Types::DeleteConfigurationSetRequest
    DeleteConfigurationSetResponse.type = Types::DeleteConfigurationSetResponse
    DeleteContactListRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContactListRequest.type = Types::DeleteContactListRequest
    DeleteContactListResponse.type = Types::DeleteContactListResponse
    DeleteContactRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContactRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteContactRequest.type = Types::DeleteContactRequest
    DeleteContactResponse.type = Types::DeleteContactResponse
    DeleteCustomVerificationEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, name: "TemplateName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomVerificationEmailTemplateRequest.type = Types::DeleteCustomVerificationEmailTemplateRequest
    DeleteCustomVerificationEmailTemplateResponse.type = Types::DeleteCustomVerificationEmailTemplateResponse
    DeleteDedicatedIpPoolRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "PoolName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDedicatedIpPoolRequest.type = Types::DeleteDedicatedIpPoolRequest
    DeleteDedicatedIpPoolResponse.type = Types::DeleteDedicatedIpPoolResponse
    DeleteEmailIdentityPolicyRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailIdentityPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailIdentityPolicyRequest.type = Types::DeleteEmailIdentityPolicyRequest
    DeleteEmailIdentityPolicyResponse.type = Types::DeleteEmailIdentityPolicyResponse
    DeleteEmailIdentityRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailIdentityRequest.type = Types::DeleteEmailIdentityRequest
    DeleteEmailIdentityResponse.type = Types::DeleteEmailIdentityResponse
    DeleteEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, name: "TemplateName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailTemplateRequest.type = Types::DeleteEmailTemplateRequest
    DeleteEmailTemplateResponse.type = Types::DeleteEmailTemplateResponse
    DeleteMultiRegionEndpointRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "EndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMultiRegionEndpointRequest.type = Types::DeleteMultiRegionEndpointRequest
    DeleteMultiRegionEndpointResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    DeleteMultiRegionEndpointResponse.type = Types::DeleteMultiRegionEndpointResponse
    DeleteSuppressedDestinationRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSuppressedDestinationRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName", traits: {"smithy.api#httpQuery" => "TenantName"}))
    DeleteSuppressedDestinationRequest.type = Types::DeleteSuppressedDestinationRequest
    DeleteSuppressedDestinationResponse.type = Types::DeleteSuppressedDestinationResponse
    DeleteTenantRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName", traits: {"smithy.api#required" => {}}))
    DeleteTenantRequest.type = Types::DeleteTenantRequest
    DeleteTenantResourceAssociationRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName", traits: {"smithy.api#required" => {}}))
    DeleteTenantResourceAssociationRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    DeleteTenantResourceAssociationRequest.type = Types::DeleteTenantResourceAssociationRequest
    DeleteTenantResourceAssociationResponse.type = Types::DeleteTenantResourceAssociationResponse
    DeleteTenantResponse.type = Types::DeleteTenantResponse
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
    DeliverabilityTestReports.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverabilityTestReport, name: "member"))
    DeliverabilityTestStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DeliverabilityTestStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DeliveryEventType.add_member(:send, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEND", traits: {"smithy.api#enumValue" => "SEND"}))
    DeliveryEventType.add_member(:delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELIVERY", traits: {"smithy.api#enumValue" => "DELIVERY"}))
    DeliveryEventType.add_member(:transient_bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSIENT_BOUNCE", traits: {"smithy.api#enumValue" => "TRANSIENT_BOUNCE"}))
    DeliveryEventType.add_member(:permanent_bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERMANENT_BOUNCE", traits: {"smithy.api#enumValue" => "PERMANENT_BOUNCE"}))
    DeliveryEventType.add_member(:undetermined_bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNDETERMINED_BOUNCE", traits: {"smithy.api#enumValue" => "UNDETERMINED_BOUNCE"}))
    DeliveryEventType.add_member(:complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLAINT", traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    DeliveryOptions.add_member(:tls_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsPolicy, name: "TlsPolicy"))
    DeliveryOptions.add_member(:sending_pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "SendingPoolName"))
    DeliveryOptions.add_member(:max_delivery_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxDeliverySeconds, name: "MaxDeliverySeconds"))
    DeliveryOptions.type = Types::DeliveryOptions
    Destination.add_member(:to_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressList, name: "ToAddresses"))
    Destination.add_member(:cc_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressList, name: "CcAddresses"))
    Destination.add_member(:bcc_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressList, name: "BccAddresses"))
    Destination.type = Types::Destination
    Details.add_member(:routes_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutesDetails, name: "RoutesDetails", traits: {"smithy.api#required" => {}}))
    Details.type = Types::Details
    DimensionValueSource.add_member(:message_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MESSAGE_TAG", traits: {"smithy.api#enumValue" => "MESSAGE_TAG"}))
    DimensionValueSource.add_member(:email_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_HEADER", traits: {"smithy.api#enumValue" => "EMAIL_HEADER"}))
    DimensionValueSource.add_member(:link_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINK_TAG", traits: {"smithy.api#enumValue" => "LINK_TAG"}))
    Dimensions.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensionName, name: "key"))
    Dimensions.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensionValue, name: "value"))
    DisassociateEmailIdentityCertificateRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#required" => {}}))
    DisassociateEmailIdentityCertificateRequest.add_member(:from_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "FromAddress"))
    DisassociateEmailIdentityCertificateRequest.type = Types::DisassociateEmailIdentityCertificateRequest
    DisassociateEmailIdentityCertificateResponse.type = Types::DisassociateEmailIdentityCertificateResponse
    DkimAttributes.add_member(:signing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "SigningEnabled", traits: {"smithy.api#default" => false}))
    DkimAttributes.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimStatus, name: "Status"))
    DkimAttributes.add_member(:tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsTokenList, name: "Tokens"))
    DkimAttributes.add_member(:signing_hosted_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZone, name: "SigningHostedZone"))
    DkimAttributes.add_member(:signing_attributes_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningAttributesOrigin, name: "SigningAttributesOrigin"))
    DkimAttributes.add_member(:next_signing_key_length, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningKeyLength, name: "NextSigningKeyLength"))
    DkimAttributes.add_member(:current_signing_key_length, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningKeyLength, name: "CurrentSigningKeyLength"))
    DkimAttributes.add_member(:last_key_generation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastKeyGenerationTimestamp"))
    DkimAttributes.type = Types::DkimAttributes
    DkimSigningAttributes.add_member(:domain_signing_selector, ::Smithy::Schema::Shapes::MemberShape.new(target: Selector, name: "DomainSigningSelector"))
    DkimSigningAttributes.add_member(:domain_signing_private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateKey, name: "DomainSigningPrivateKey"))
    DkimSigningAttributes.add_member(:next_signing_key_length, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningKeyLength, name: "NextSigningKeyLength"))
    DkimSigningAttributes.add_member(:domain_signing_attributes_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningAttributesOrigin, name: "DomainSigningAttributesOrigin"))
    DkimSigningAttributes.type = Types::DkimSigningAttributes
    DkimSigningAttributesOrigin.add_member(:aws_ses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES", traits: {"smithy.api#enumValue" => "AWS_SES"}))
    DkimSigningAttributesOrigin.add_member(:external, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL", traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_af_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_AF_SOUTH_1", traits: {"smithy.api#enumValue" => "AWS_SES_AF_SOUTH_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_north_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_EU_NORTH_1", traits: {"smithy.api#enumValue" => "AWS_SES_EU_NORTH_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_AP_SOUTH_1", traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTH_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_west_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_EU_WEST_3", traits: {"smithy.api#enumValue" => "AWS_SES_EU_WEST_3"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_EU_WEST_2", traits: {"smithy.api#enumValue" => "AWS_SES_EU_WEST_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_EU_SOUTH_1", traits: {"smithy.api#enumValue" => "AWS_SES_EU_SOUTH_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_EU_WEST_1", traits: {"smithy.api#enumValue" => "AWS_SES_EU_WEST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_northeast_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_AP_NORTHEAST_3", traits: {"smithy.api#enumValue" => "AWS_SES_AP_NORTHEAST_3"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_northeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_AP_NORTHEAST_2", traits: {"smithy.api#enumValue" => "AWS_SES_AP_NORTHEAST_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_me_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_ME_SOUTH_1", traits: {"smithy.api#enumValue" => "AWS_SES_ME_SOUTH_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_northeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_AP_NORTHEAST_1", traits: {"smithy.api#enumValue" => "AWS_SES_AP_NORTHEAST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_il_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_IL_CENTRAL_1", traits: {"smithy.api#enumValue" => "AWS_SES_IL_CENTRAL_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_sa_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_SA_EAST_1", traits: {"smithy.api#enumValue" => "AWS_SES_SA_EAST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ca_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_CA_CENTRAL_1", traits: {"smithy.api#enumValue" => "AWS_SES_CA_CENTRAL_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_southeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_AP_SOUTHEAST_1", traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTHEAST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_southeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_AP_SOUTHEAST_2", traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTHEAST_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_southeast_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_AP_SOUTHEAST_3", traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTHEAST_3"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_EU_CENTRAL_1", traits: {"smithy.api#enumValue" => "AWS_SES_EU_CENTRAL_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_us_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_US_EAST_1", traits: {"smithy.api#enumValue" => "AWS_SES_US_EAST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_us_east_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_US_EAST_2", traits: {"smithy.api#enumValue" => "AWS_SES_US_EAST_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_us_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_US_WEST_1", traits: {"smithy.api#enumValue" => "AWS_SES_US_WEST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_us_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_US_WEST_2", traits: {"smithy.api#enumValue" => "AWS_SES_US_WEST_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_me_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_ME_CENTRAL_1", traits: {"smithy.api#enumValue" => "AWS_SES_ME_CENTRAL_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_south_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_AP_SOUTH_2", traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTH_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_eu_central_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_EU_CENTRAL_2", traits: {"smithy.api#enumValue" => "AWS_SES_EU_CENTRAL_2"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ap_southeast_5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_AP_SOUTHEAST_5", traits: {"smithy.api#enumValue" => "AWS_SES_AP_SOUTHEAST_5"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_ca_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_CA_WEST_1", traits: {"smithy.api#enumValue" => "AWS_SES_CA_WEST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_us_gov_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_US_GOV_EAST_1", traits: {"smithy.api#enumValue" => "AWS_SES_US_GOV_EAST_1"}))
    DkimSigningAttributesOrigin.add_member(:aws_ses_us_gov_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SES_US_GOV_WEST_1", traits: {"smithy.api#enumValue" => "AWS_SES_US_GOV_WEST_1"}))
    DkimSigningKeyLength.add_member(:rsa_1024_bit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RSA_1024_BIT", traits: {"smithy.api#enumValue" => "RSA_1024_BIT"}))
    DkimSigningKeyLength.add_member(:rsa_2048_bit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RSA_2048_BIT", traits: {"smithy.api#enumValue" => "RSA_2048_BIT"}))
    DkimStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DkimStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DkimStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DkimStatus.add_member(:temporary_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEMPORARY_FAILURE", traits: {"smithy.api#enumValue" => "TEMPORARY_FAILURE"}))
    DkimStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    DnsTokenList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsToken, name: "member"))
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
    DomainDeliverabilityCampaignList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityCampaign, name: "member"))
    DomainDeliverabilityTrackingOption.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "Domain"))
    DomainDeliverabilityTrackingOption.add_member(:subscription_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubscriptionStartDate"))
    DomainDeliverabilityTrackingOption.add_member(:inbox_placement_tracking_option, ::Smithy::Schema::Shapes::MemberShape.new(target: InboxPlacementTrackingOption, name: "InboxPlacementTrackingOption"))
    DomainDeliverabilityTrackingOption.type = Types::DomainDeliverabilityTrackingOption
    DomainDeliverabilityTrackingOptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityTrackingOption, name: "member"))
    DomainIspPlacement.add_member(:isp_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IspName, name: "IspName"))
    DomainIspPlacement.add_member(:inbox_raw_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "InboxRawCount"))
    DomainIspPlacement.add_member(:spam_raw_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "SpamRawCount"))
    DomainIspPlacement.add_member(:inbox_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "InboxPercentage"))
    DomainIspPlacement.add_member(:spam_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "SpamPercentage"))
    DomainIspPlacement.type = Types::DomainIspPlacement
    DomainIspPlacements.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainIspPlacement, name: "member"))
    EmailAddressFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsEmailAddress, name: "member"))
    EmailAddressInsightsConfidenceVerdict.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    EmailAddressInsightsConfidenceVerdict.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    EmailAddressInsightsConfidenceVerdict.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    EmailAddressInsightsMailboxEvaluations.add_member(:has_valid_syntax, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressInsightsVerdict, name: "HasValidSyntax"))
    EmailAddressInsightsMailboxEvaluations.add_member(:has_valid_dns_records, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressInsightsVerdict, name: "HasValidDnsRecords"))
    EmailAddressInsightsMailboxEvaluations.add_member(:mailbox_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressInsightsVerdict, name: "MailboxExists"))
    EmailAddressInsightsMailboxEvaluations.add_member(:is_role_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressInsightsVerdict, name: "IsRoleAddress"))
    EmailAddressInsightsMailboxEvaluations.add_member(:is_disposable, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressInsightsVerdict, name: "IsDisposable"))
    EmailAddressInsightsMailboxEvaluations.add_member(:is_random_input, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressInsightsVerdict, name: "IsRandomInput"))
    EmailAddressInsightsMailboxEvaluations.type = Types::EmailAddressInsightsMailboxEvaluations
    EmailAddressInsightsVerdict.add_member(:confidence_verdict, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressInsightsConfidenceVerdict, name: "ConfidenceVerdict"))
    EmailAddressInsightsVerdict.type = Types::EmailAddressInsightsVerdict
    EmailAddressList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "member"))
    EmailContent.add_member(:simple, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Simple"))
    EmailContent.add_member(:raw, ::Smithy::Schema::Shapes::MemberShape.new(target: RawMessage, name: "Raw"))
    EmailContent.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: Template, name: "Template"))
    EmailContent.type = Types::EmailContent
    EmailInsights.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsEmailAddress, name: "Destination"))
    EmailInsights.add_member(:isp, ::Smithy::Schema::Shapes::MemberShape.new(target: Isp, name: "Isp"))
    EmailInsights.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsEvents, name: "Events"))
    EmailInsights.type = Types::EmailInsights
    EmailInsightsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailInsights, name: "member"))
    EmailSubjectFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailSubject, name: "member"))
    EmailTemplateContent.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateSubject, name: "Subject"))
    EmailTemplateContent.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateText, name: "Text"))
    EmailTemplateContent.add_member(:html, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateHtml, name: "Html"))
    EmailTemplateContent.type = Types::EmailTemplateContent
    EmailTemplateMetadata.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, name: "TemplateName"))
    EmailTemplateMetadata.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    EmailTemplateMetadata.type = Types::EmailTemplateMetadata
    EmailTemplateMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateMetadata, name: "member"))
    EngagementEventType.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    EngagementEventType.add_member(:click, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLICK", traits: {"smithy.api#enumValue" => "CLICK"}))
    Esps.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Esp, name: "member"))
    EventBridgeDestination.add_member(:event_bus_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "EventBusArn", traits: {"smithy.api#required" => {}}))
    EventBridgeDestination.type = Types::EventBridgeDestination
    EventDestination.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, name: "Name", traits: {"smithy.api#required" => {}}))
    EventDestination.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "Enabled", traits: {"smithy.api#default" => false}))
    EventDestination.add_member(:matching_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypes, name: "MatchingEventTypes", traits: {"smithy.api#required" => {}}))
    EventDestination.add_member(:kinesis_firehose_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseDestination, name: "KinesisFirehoseDestination"))
    EventDestination.add_member(:cloud_watch_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDestination, name: "CloudWatchDestination"))
    EventDestination.add_member(:sns_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsDestination, name: "SnsDestination"))
    EventDestination.add_member(:event_bridge_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeDestination, name: "EventBridgeDestination"))
    EventDestination.add_member(:pinpoint_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: PinpointDestination, name: "PinpointDestination"))
    EventDestination.type = Types::EventDestination
    EventDestinationDefinition.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "Enabled", traits: {"smithy.api#default" => false}))
    EventDestinationDefinition.add_member(:matching_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypes, name: "MatchingEventTypes"))
    EventDestinationDefinition.add_member(:kinesis_firehose_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseDestination, name: "KinesisFirehoseDestination"))
    EventDestinationDefinition.add_member(:cloud_watch_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDestination, name: "CloudWatchDestination"))
    EventDestinationDefinition.add_member(:sns_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsDestination, name: "SnsDestination"))
    EventDestinationDefinition.add_member(:event_bridge_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeDestination, name: "EventBridgeDestination"))
    EventDestinationDefinition.add_member(:pinpoint_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: PinpointDestination, name: "PinpointDestination"))
    EventDestinationDefinition.type = Types::EventDestinationDefinition
    EventDestinations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestination, name: "member"))
    EventDetails.add_member(:bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: Bounce, name: "Bounce"))
    EventDetails.add_member(:complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: Complaint, name: "Complaint"))
    EventDetails.type = Types::EventDetails
    EventType.add_member(:send, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEND", traits: {"smithy.api#enumValue" => "SEND"}))
    EventType.add_member(:reject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECT", traits: {"smithy.api#enumValue" => "REJECT"}))
    EventType.add_member(:bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOUNCE", traits: {"smithy.api#enumValue" => "BOUNCE"}))
    EventType.add_member(:complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLAINT", traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    EventType.add_member(:delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELIVERY", traits: {"smithy.api#enumValue" => "DELIVERY"}))
    EventType.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    EventType.add_member(:click, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLICK", traits: {"smithy.api#enumValue" => "CLICK"}))
    EventType.add_member(:rendering_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RENDERING_FAILURE", traits: {"smithy.api#enumValue" => "RENDERING_FAILURE"}))
    EventType.add_member(:delivery_delay, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELIVERY_DELAY", traits: {"smithy.api#enumValue" => "DELIVERY_DELAY"}))
    EventType.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBSCRIPTION", traits: {"smithy.api#enumValue" => "SUBSCRIPTION"}))
    EventTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "member"))
    ExportDataSource.add_member(:metrics_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsDataSource, name: "MetricsDataSource"))
    ExportDataSource.add_member(:message_insights_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageInsightsDataSource, name: "MessageInsightsDataSource"))
    ExportDataSource.type = Types::ExportDataSource
    ExportDestination.add_member(:data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFormat, name: "DataFormat", traits: {"smithy.api#required" => {}}))
    ExportDestination.add_member(:s3_url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "S3Url"))
    ExportDestination.type = Types::ExportDestination
    ExportDimensionValue.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensionValue, name: "member"))
    ExportDimensions.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensionName, name: "key"))
    ExportDimensions.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDimensionValue, name: "value"))
    ExportJobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    ExportJobSummary.add_member(:export_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSourceType, name: "ExportSourceType"))
    ExportJobSummary.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    ExportJobSummary.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    ExportJobSummary.add_member(:completed_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CompletedTimestamp"))
    ExportJobSummary.type = Types::ExportJobSummary
    ExportJobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportJobSummary, name: "member"))
    ExportMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Metric, name: "Name"))
    ExportMetric.add_member(:aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAggregation, name: "Aggregation"))
    ExportMetric.type = Types::ExportMetric
    ExportMetrics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportMetric, name: "member"))
    ExportSourceType.add_member(:metrics_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METRICS_DATA", traits: {"smithy.api#enumValue" => "METRICS_DATA"}))
    ExportSourceType.add_member(:message_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MESSAGE_INSIGHTS", traits: {"smithy.api#enumValue" => "MESSAGE_INSIGHTS"}))
    ExportStatistics.add_member(:processed_records_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessedRecordsCount, name: "ProcessedRecordsCount"))
    ExportStatistics.add_member(:exported_records_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportedRecordsCount, name: "ExportedRecordsCount"))
    ExportStatistics.type = Types::ExportStatistics
    FailureInfo.add_member(:failed_records_s3_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedRecordsS3Url, name: "FailedRecordsS3Url"))
    FailureInfo.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    FailureInfo.type = Types::FailureInfo
    FeatureStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    FeatureStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    GetAccountRequest.type = Types::GetAccountRequest
    GetAccountResponse.add_member(:dedicated_ip_auto_warmup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "DedicatedIpAutoWarmupEnabled", traits: {"smithy.api#default" => false}))
    GetAccountResponse.add_member(:enforcement_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralEnforcementStatus, name: "EnforcementStatus"))
    GetAccountResponse.add_member(:production_access_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "ProductionAccessEnabled", traits: {"smithy.api#default" => false}))
    GetAccountResponse.add_member(:send_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: SendQuota, name: "SendQuota"))
    GetAccountResponse.add_member(:sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "SendingEnabled", traits: {"smithy.api#default" => false}))
    GetAccountResponse.add_member(:suppression_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionAttributes, name: "SuppressionAttributes"))
    GetAccountResponse.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountDetails, name: "Details"))
    GetAccountResponse.add_member(:vdm_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: VdmAttributes, name: "VdmAttributes"))
    GetAccountResponse.add_member(:pricing_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingAttributes, name: "PricingAttributes"))
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
    GetConfigurationSetResponse.add_member(:suppression_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionOptions, name: "SuppressionOptions"))
    GetConfigurationSetResponse.add_member(:vdm_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VdmOptions, name: "VdmOptions"))
    GetConfigurationSetResponse.add_member(:archiving_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchivingOptions, name: "ArchivingOptions"))
    GetConfigurationSetResponse.add_member(:message_security_options, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageSecurityOptions, name: "MessageSecurityOptions"))
    GetConfigurationSetResponse.type = Types::GetConfigurationSetResponse
    GetContactListRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContactListRequest.type = Types::GetContactListRequest
    GetContactListResponse.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, name: "ContactListName"))
    GetContactListResponse.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, name: "Topics"))
    GetContactListResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetContactListResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    GetContactListResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTimestamp"))
    GetContactListResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    GetContactListResponse.type = Types::GetContactListResponse
    GetContactRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContactRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetContactRequest.type = Types::GetContactRequest
    GetContactResponse.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, name: "ContactListName"))
    GetContactResponse.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress"))
    GetContactResponse.add_member(:topic_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicPreferenceList, name: "TopicPreferences"))
    GetContactResponse.add_member(:topic_default_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicPreferenceList, name: "TopicDefaultPreferences"))
    GetContactResponse.add_member(:unsubscribe_all, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsubscribeAll, name: "UnsubscribeAll", traits: {"smithy.api#default" => false}))
    GetContactResponse.add_member(:attributes_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributesData, name: "AttributesData"))
    GetContactResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    GetContactResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTimestamp"))
    GetContactResponse.type = Types::GetContactResponse
    GetCustomVerificationEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, name: "TemplateName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCustomVerificationEmailTemplateRequest.type = Types::GetCustomVerificationEmailTemplateRequest
    GetCustomVerificationEmailTemplateResponse.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, name: "TemplateName"))
    GetCustomVerificationEmailTemplateResponse.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "FromEmailAddress"))
    GetCustomVerificationEmailTemplateResponse.add_member(:template_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateSubject, name: "TemplateSubject"))
    GetCustomVerificationEmailTemplateResponse.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateContent, name: "TemplateContent"))
    GetCustomVerificationEmailTemplateResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    GetCustomVerificationEmailTemplateResponse.add_member(:success_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessRedirectionURL, name: "SuccessRedirectionURL"))
    GetCustomVerificationEmailTemplateResponse.add_member(:failure_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureRedirectionURL, name: "FailureRedirectionURL"))
    GetCustomVerificationEmailTemplateResponse.type = Types::GetCustomVerificationEmailTemplateResponse
    GetDedicatedIpPoolRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "PoolName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDedicatedIpPoolRequest.type = Types::GetDedicatedIpPoolRequest
    GetDedicatedIpPoolResponse.add_member(:dedicated_ip_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedIpPool, name: "DedicatedIpPool"))
    GetDedicatedIpPoolResponse.type = Types::GetDedicatedIpPoolResponse
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
    GetEmailAddressInsightsRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    GetEmailAddressInsightsRequest.type = Types::GetEmailAddressInsightsRequest
    GetEmailAddressInsightsResponse.add_member(:mailbox_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: MailboxValidation, name: "MailboxValidation"))
    GetEmailAddressInsightsResponse.type = Types::GetEmailAddressInsightsResponse
    GetEmailIdentityPoliciesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailIdentityPoliciesRequest.type = Types::GetEmailIdentityPoliciesRequest
    GetEmailIdentityPoliciesResponse.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyMap, name: "Policies"))
    GetEmailIdentityPoliciesResponse.type = Types::GetEmailIdentityPoliciesResponse
    GetEmailIdentityRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailIdentityRequest.type = Types::GetEmailIdentityRequest
    GetEmailIdentityResponse.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, name: "IdentityType"))
    GetEmailIdentityResponse.add_member(:feedback_forwarding_status, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "FeedbackForwardingStatus", traits: {"smithy.api#default" => false}))
    GetEmailIdentityResponse.add_member(:verified_for_sending_status, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "VerifiedForSendingStatus", traits: {"smithy.api#default" => false}))
    GetEmailIdentityResponse.add_member(:dkim_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimAttributes, name: "DkimAttributes"))
    GetEmailIdentityResponse.add_member(:mail_from_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MailFromAttributes, name: "MailFromAttributes"))
    GetEmailIdentityResponse.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyMap, name: "Policies"))
    GetEmailIdentityResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    GetEmailIdentityResponse.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    GetEmailIdentityResponse.add_member(:verification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationStatus, name: "VerificationStatus"))
    GetEmailIdentityResponse.add_member(:verification_info, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationInfo, name: "VerificationInfo"))
    GetEmailIdentityResponse.type = Types::GetEmailIdentityResponse
    GetEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, name: "TemplateName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailTemplateRequest.type = Types::GetEmailTemplateRequest
    GetEmailTemplateResponse.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, name: "TemplateName", traits: {"smithy.api#required" => {}}))
    GetEmailTemplateResponse.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateContent, name: "TemplateContent", traits: {"smithy.api#required" => {}}))
    GetEmailTemplateResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    GetEmailTemplateResponse.type = Types::GetEmailTemplateResponse
    GetExportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetExportJobRequest.type = Types::GetExportJobRequest
    GetExportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    GetExportJobResponse.add_member(:export_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSourceType, name: "ExportSourceType"))
    GetExportJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    GetExportJobResponse.add_member(:export_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDestination, name: "ExportDestination"))
    GetExportJobResponse.add_member(:export_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDataSource, name: "ExportDataSource"))
    GetExportJobResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    GetExportJobResponse.add_member(:completed_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CompletedTimestamp"))
    GetExportJobResponse.add_member(:failure_info, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureInfo, name: "FailureInfo"))
    GetExportJobResponse.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatistics, name: "Statistics"))
    GetExportJobResponse.type = Types::GetExportJobResponse
    GetImportJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportJobRequest.type = Types::GetImportJobRequest
    GetImportJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    GetImportJobResponse.add_member(:import_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDestination, name: "ImportDestination"))
    GetImportJobResponse.add_member(:import_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDataSource, name: "ImportDataSource"))
    GetImportJobResponse.add_member(:failure_info, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureInfo, name: "FailureInfo"))
    GetImportJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    GetImportJobResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    GetImportJobResponse.add_member(:completed_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CompletedTimestamp"))
    GetImportJobResponse.add_member(:processed_records_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessedRecordsCount, name: "ProcessedRecordsCount"))
    GetImportJobResponse.add_member(:failed_records_count, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedRecordsCount, name: "FailedRecordsCount"))
    GetImportJobResponse.type = Types::GetImportJobResponse
    GetMessageInsightsRequest.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutboundMessageId, name: "MessageId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMessageInsightsRequest.type = Types::GetMessageInsightsRequest
    GetMessageInsightsResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutboundMessageId, name: "MessageId"))
    GetMessageInsightsResponse.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsEmailAddress, name: "FromEmailAddress"))
    GetMessageInsightsResponse.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailSubject, name: "Subject"))
    GetMessageInsightsResponse.add_member(:email_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagList, name: "EmailTags"))
    GetMessageInsightsResponse.add_member(:insights, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailInsightsList, name: "Insights"))
    GetMessageInsightsResponse.type = Types::GetMessageInsightsResponse
    GetMultiRegionEndpointRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "EndpointName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMultiRegionEndpointRequest.type = Types::GetMultiRegionEndpointRequest
    GetMultiRegionEndpointResponse.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "EndpointName"))
    GetMultiRegionEndpointResponse.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, name: "EndpointId"))
    GetMultiRegionEndpointResponse.add_member(:routes, ::Smithy::Schema::Shapes::MemberShape.new(target: Routes, name: "Routes"))
    GetMultiRegionEndpointResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    GetMultiRegionEndpointResponse.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    GetMultiRegionEndpointResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTimestamp"))
    GetMultiRegionEndpointResponse.type = Types::GetMultiRegionEndpointResponse
    GetReputationEntityRequest.add_member(:reputation_entity_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityReference, name: "ReputationEntityReference", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReputationEntityRequest.add_member(:reputation_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityType, name: "ReputationEntityType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReputationEntityRequest.type = Types::GetReputationEntityRequest
    GetReputationEntityResponse.add_member(:reputation_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntity, name: "ReputationEntity"))
    GetReputationEntityResponse.type = Types::GetReputationEntityResponse
    GetSuppressedDestinationRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSuppressedDestinationRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName", traits: {"smithy.api#httpQuery" => "TenantName"}))
    GetSuppressedDestinationRequest.type = Types::GetSuppressedDestinationRequest
    GetSuppressedDestinationResponse.add_member(:suppressed_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressedDestination, name: "SuppressedDestination", traits: {"smithy.api#required" => {}}))
    GetSuppressedDestinationResponse.type = Types::GetSuppressedDestinationResponse
    GetTenantRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName", traits: {"smithy.api#required" => {}}))
    GetTenantRequest.type = Types::GetTenantRequest
    GetTenantResponse.add_member(:tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: Tenant, name: "Tenant"))
    GetTenantResponse.type = Types::GetTenantResponse
    GuardianAttributes.add_member(:optimized_shared_delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "OptimizedSharedDelivery"))
    GuardianAttributes.type = Types::GuardianAttributes
    GuardianOptions.add_member(:optimized_shared_delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "OptimizedSharedDelivery"))
    GuardianOptions.type = Types::GuardianOptions
    HttpsPolicy.add_member(:require, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRE", traits: {"smithy.api#enumValue" => "REQUIRE"}))
    HttpsPolicy.add_member(:require_open_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRE_OPEN_ONLY", traits: {"smithy.api#enumValue" => "REQUIRE_OPEN_ONLY"}))
    HttpsPolicy.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIONAL", traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    IdentityCertificate.add_member(:from_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "FromAddress"))
    IdentityCertificate.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCertificateStatus, name: "Status"))
    IdentityCertificate.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateArn, name: "CertificateArn"))
    IdentityCertificate.add_member(:certificate_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CertificateExpiryTime"))
    IdentityCertificate.type = Types::IdentityCertificate
    IdentityCertificateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCertificate, name: "member"))
    IdentityCertificateStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    IdentityCertificateStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    IdentityCertificateStatus.add_member(:deprovisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPROVISIONING", traits: {"smithy.api#enumValue" => "DEPROVISIONING"}))
    IdentityCertificateStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IdentityCertificateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    IdentityFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityFilterKey, name: "key"))
    IdentityFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityFilterValue, name: "value"))
    IdentityFilterKey.add_member(:identity_name_contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDENTITY_NAME_CONTAINS", traits: {"smithy.api#enumValue" => "IDENTITY_NAME_CONTAINS"}))
    IdentityFilterKey.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDENTITY_TYPE", traits: {"smithy.api#enumValue" => "IDENTITY_TYPE"}))
    IdentityFilterKey.add_member(:verification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFICATION_STATUS", traits: {"smithy.api#enumValue" => "VERIFICATION_STATUS"}))
    IdentityInfo.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, name: "IdentityType"))
    IdentityInfo.add_member(:identity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "IdentityName"))
    IdentityInfo.add_member(:sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "SendingEnabled", traits: {"smithy.api#default" => false}))
    IdentityInfo.add_member(:verification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationStatus, name: "VerificationStatus"))
    IdentityInfo.type = Types::IdentityInfo
    IdentityInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityInfo, name: "member"))
    IdentityType.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_ADDRESS", traits: {"smithy.api#enumValue" => "EMAIL_ADDRESS"}))
    IdentityType.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN", traits: {"smithy.api#enumValue" => "DOMAIN"}))
    IdentityType.add_member(:managed_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_DOMAIN", traits: {"smithy.api#enumValue" => "MANAGED_DOMAIN"}))
    ImportDataSource.add_member(:s3_url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "S3Url", traits: {"smithy.api#required" => {}}))
    ImportDataSource.add_member(:data_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFormat, name: "DataFormat", traits: {"smithy.api#required" => {}}))
    ImportDataSource.type = Types::ImportDataSource
    ImportDestination.add_member(:suppression_list_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListDestination, name: "SuppressionListDestination"))
    ImportDestination.add_member(:contact_list_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListDestination, name: "ContactListDestination"))
    ImportDestination.type = Types::ImportDestination
    ImportDestinationType.add_member(:suppression_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPPRESSION_LIST", traits: {"smithy.api#enumValue" => "SUPPRESSION_LIST"}))
    ImportDestinationType.add_member(:contact_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTACT_LIST", traits: {"smithy.api#enumValue" => "CONTACT_LIST"}))
    ImportJobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    ImportJobSummary.add_member(:import_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDestination, name: "ImportDestination"))
    ImportJobSummary.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    ImportJobSummary.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    ImportJobSummary.add_member(:processed_records_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessedRecordsCount, name: "ProcessedRecordsCount"))
    ImportJobSummary.add_member(:failed_records_count, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedRecordsCount, name: "FailedRecordsCount"))
    ImportJobSummary.type = Types::ImportJobSummary
    ImportJobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobSummary, name: "member"))
    InboxPlacementTrackingOption.add_member(:global, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "Global", traits: {"smithy.api#default" => false}))
    InboxPlacementTrackingOption.add_member(:tracked_isps, ::Smithy::Schema::Shapes::MemberShape.new(target: IspNameList, name: "TrackedIsps"))
    InboxPlacementTrackingOption.type = Types::InboxPlacementTrackingOption
    InsightsEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    InsightsEvent.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "Type"))
    InsightsEvent.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDetails, name: "Details"))
    InsightsEvent.type = Types::InsightsEvent
    InsightsEvents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsEvent, name: "member"))
    InternalServiceErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    IpList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, name: "member"))
    IspFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Isp, name: "member"))
    IspNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IspName, name: "member"))
    IspPlacement.add_member(:isp_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IspName, name: "IspName"))
    IspPlacement.add_member(:placement_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStatistics, name: "PlacementStatistics"))
    IspPlacement.type = Types::IspPlacement
    IspPlacements.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IspPlacement, name: "member"))
    JobStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    JobStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    JobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    KinesisFirehoseDestination.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseDestination.add_member(:delivery_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "DeliveryStreamArn", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseDestination.type = Types::KinesisFirehoseDestination
    LastDeliveryEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryEventType, name: "member"))
    LastEngagementEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementEventType, name: "member"))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListConfigurationSetsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetFilter, name: "Filter"))
    ListConfigurationSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConfigurationSetsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize"))
    ListConfigurationSetsRequest.type = Types::ListConfigurationSetsRequest
    ListConfigurationSetsResponse.add_member(:configuration_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameList, name: "ConfigurationSets"))
    ListConfigurationSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConfigurationSetsResponse.type = Types::ListConfigurationSetsResponse
    ListContactListsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListContactListsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListContactListsRequest.type = Types::ListContactListsRequest
    ListContactListsResponse.add_member(:contact_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfContactLists, name: "ContactLists"))
    ListContactListsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListContactListsResponse.type = Types::ListContactListsResponse
    ListContactsFilter.add_member(:filtered_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionStatus, name: "FilteredStatus"))
    ListContactsFilter.add_member(:topic_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicFilter, name: "TopicFilter"))
    ListContactsFilter.type = Types::ListContactsFilter
    ListContactsRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListContactsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListContactsFilter, name: "Filter"))
    ListContactsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize"))
    ListContactsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListContactsRequest.type = Types::ListContactsRequest
    ListContactsResponse.add_member(:contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfContacts, name: "Contacts"))
    ListContactsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListContactsResponse.type = Types::ListContactsResponse
    ListCustomVerificationEmailTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListCustomVerificationEmailTemplatesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListCustomVerificationEmailTemplatesRequest.type = Types::ListCustomVerificationEmailTemplatesRequest
    ListCustomVerificationEmailTemplatesResponse.add_member(:custom_verification_email_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomVerificationEmailTemplatesList, name: "CustomVerificationEmailTemplates"))
    ListCustomVerificationEmailTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListCustomVerificationEmailTemplatesResponse.type = Types::ListCustomVerificationEmailTemplatesResponse
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
    ListEmailIdentitiesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityFilter, name: "Filter"))
    ListEmailIdentitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEmailIdentitiesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize"))
    ListEmailIdentitiesRequest.type = Types::ListEmailIdentitiesRequest
    ListEmailIdentitiesResponse.add_member(:email_identities, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityInfoList, name: "EmailIdentities"))
    ListEmailIdentitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEmailIdentitiesResponse.type = Types::ListEmailIdentitiesResponse
    ListEmailIdentityCertificatesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#required" => {}}))
    ListEmailIdentityCertificatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEmailIdentityCertificatesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize"))
    ListEmailIdentityCertificatesRequest.type = Types::ListEmailIdentityCertificatesRequest
    ListEmailIdentityCertificatesResponse.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCertificateList, name: "Certificates"))
    ListEmailIdentityCertificatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEmailIdentityCertificatesResponse.type = Types::ListEmailIdentityCertificatesResponse
    ListEmailTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListEmailTemplatesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListEmailTemplatesRequest.type = Types::ListEmailTemplatesRequest
    ListEmailTemplatesResponse.add_member(:templates_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateMetadataList, name: "TemplatesMetadata"))
    ListEmailTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEmailTemplatesResponse.type = Types::ListEmailTemplatesResponse
    ListExportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExportJobsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize"))
    ListExportJobsRequest.add_member(:export_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportSourceType, name: "ExportSourceType"))
    ListExportJobsRequest.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    ListExportJobsRequest.type = Types::ListExportJobsRequest
    ListExportJobsResponse.add_member(:export_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportJobSummaryList, name: "ExportJobs"))
    ListExportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListExportJobsResponse.type = Types::ListExportJobsResponse
    ListImportJobsRequest.add_member(:import_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportDestinationType, name: "ImportDestinationType"))
    ListImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListImportJobsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize"))
    ListImportJobsRequest.type = Types::ListImportJobsRequest
    ListImportJobsResponse.add_member(:import_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobSummaryList, name: "ImportJobs"))
    ListImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListImportJobsResponse.type = Types::ListImportJobsResponse
    ListManagementOptions.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, name: "ContactListName", traits: {"smithy.api#required" => {}}))
    ListManagementOptions.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicName, name: "TopicName"))
    ListManagementOptions.type = Types::ListManagementOptions
    ListMultiRegionEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenV2, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListMultiRegionEndpointsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSizeV2, name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListMultiRegionEndpointsRequest.type = Types::ListMultiRegionEndpointsRequest
    ListMultiRegionEndpointsResponse.add_member(:multi_region_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionEndpoints, name: "MultiRegionEndpoints"))
    ListMultiRegionEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenV2, name: "NextToken"))
    ListMultiRegionEndpointsResponse.type = Types::ListMultiRegionEndpointsResponse
    ListOfContactLists.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactList, name: "member"))
    ListOfContacts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Contact, name: "member"))
    ListOfDedicatedIpPools.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "member"))
    ListRecommendationsFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRecommendationsFilterKey, name: "key"))
    ListRecommendationsFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRecommendationFilterValue, name: "value"))
    ListRecommendationsFilterKey.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TYPE", traits: {"smithy.api#enumValue" => "TYPE"}))
    ListRecommendationsFilterKey.add_member(:impact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPACT", traits: {"smithy.api#enumValue" => "IMPACT"}))
    ListRecommendationsFilterKey.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "STATUS"}))
    ListRecommendationsFilterKey.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ARN", traits: {"smithy.api#enumValue" => "RESOURCE_ARN"}))
    ListRecommendationsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRecommendationsFilter, name: "Filter"))
    ListRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRecommendationsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize"))
    ListRecommendationsRequest.type = Types::ListRecommendationsRequest
    ListRecommendationsResponse.add_member(:recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationsList, name: "Recommendations"))
    ListRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRecommendationsResponse.type = Types::ListRecommendationsResponse
    ListReputationEntitiesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityFilter, name: "Filter"))
    ListReputationEntitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListReputationEntitiesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize"))
    ListReputationEntitiesRequest.type = Types::ListReputationEntitiesRequest
    ListReputationEntitiesResponse.add_member(:reputation_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntitiesList, name: "ReputationEntities"))
    ListReputationEntitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListReputationEntitiesResponse.type = Types::ListReputationEntitiesResponse
    ListResourceTenantsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListResourceTenantsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize"))
    ListResourceTenantsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceTenantsRequest.type = Types::ListResourceTenantsRequest
    ListResourceTenantsResponse.add_member(:resource_tenants, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTenantMetadataList, name: "ResourceTenants"))
    ListResourceTenantsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceTenantsResponse.type = Types::ListResourceTenantsResponse
    ListSuppressedDestinationsRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName", traits: {"smithy.api#httpQuery" => "TenantName"}))
    ListSuppressedDestinationsRequest.add_member(:reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReasons, name: "Reasons", traits: {"smithy.api#httpQuery" => "Reason"}))
    ListSuppressedDestinationsRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartDate", traits: {"smithy.api#httpQuery" => "StartDate"}))
    ListSuppressedDestinationsRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndDate", traits: {"smithy.api#httpQuery" => "EndDate"}))
    ListSuppressedDestinationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListSuppressedDestinationsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListSuppressedDestinationsRequest.type = Types::ListSuppressedDestinationsRequest
    ListSuppressedDestinationsResponse.add_member(:suppressed_destination_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressedDestinationSummaries, name: "SuppressedDestinationSummaries"))
    ListSuppressedDestinationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListSuppressedDestinationsResponse.type = Types::ListSuppressedDestinationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#httpQuery" => "ResourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTenantResourcesFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTenantResourcesFilterKey, name: "key"))
    ListTenantResourcesFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTenantResourcesFilterValue, name: "value"))
    ListTenantResourcesFilterKey.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "RESOURCE_TYPE"}))
    ListTenantResourcesRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName", traits: {"smithy.api#required" => {}}))
    ListTenantResourcesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTenantResourcesFilter, name: "Filter"))
    ListTenantResourcesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize"))
    ListTenantResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTenantResourcesRequest.type = Types::ListTenantResourcesRequest
    ListTenantResourcesResponse.add_member(:tenant_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantResourceList, name: "TenantResources"))
    ListTenantResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTenantResourcesResponse.type = Types::ListTenantResourcesResponse
    ListTenantsFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTenantsFilterKey, name: "key"))
    ListTenantsFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTenantsFilterValue, name: "value"))
    ListTenantsFilterKey.add_member(:tenant_name_contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TENANT_NAME_CONTAINS", traits: {"smithy.api#enumValue" => "TENANT_NAME_CONTAINS"}))
    ListTenantsFilterKey.add_member(:sending_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SENDING_STATUS", traits: {"smithy.api#enumValue" => "SENDING_STATUS"}))
    ListTenantsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTenantsFilter, name: "Filter"))
    ListTenantsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTenantsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize"))
    ListTenantsRequest.type = Types::ListTenantsRequest
    ListTenantsResponse.add_member(:tenants, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantInfoList, name: "Tenants"))
    ListTenantsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTenantsResponse.type = Types::ListTenantsResponse
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
    MailType.add_member(:marketing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MARKETING", traits: {"smithy.api#enumValue" => "MARKETING"}))
    MailType.add_member(:transactional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSACTIONAL", traits: {"smithy.api#enumValue" => "TRANSACTIONAL"}))
    MailboxValidation.add_member(:is_valid, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressInsightsVerdict, name: "IsValid"))
    MailboxValidation.add_member(:evaluations, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressInsightsMailboxEvaluations, name: "Evaluations"))
    MailboxValidation.type = Types::MailboxValidation
    Message.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, name: "Subject", traits: {"smithy.api#required" => {}}))
    Message.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Body, name: "Body", traits: {"smithy.api#required" => {}}))
    Message.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageHeaderList, name: "Headers"))
    Message.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentList, name: "Attachments"))
    Message.type = Types::Message
    MessageHeader.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageHeaderName, name: "Name", traits: {"smithy.api#required" => {}}))
    MessageHeader.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageHeaderValue, name: "Value", traits: {"smithy.api#required" => {}}))
    MessageHeader.type = Types::MessageHeader
    MessageHeaderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageHeader, name: "member"))
    MessageInsightsDataSource.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartDate", traits: {"smithy.api#required" => {}}))
    MessageInsightsDataSource.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndDate", traits: {"smithy.api#required" => {}}))
    MessageInsightsDataSource.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageInsightsFilters, name: "Include"))
    MessageInsightsDataSource.add_member(:exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageInsightsFilters, name: "Exclude"))
    MessageInsightsDataSource.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageInsightsExportMaxResults, name: "MaxResults"))
    MessageInsightsDataSource.type = Types::MessageInsightsDataSource
    MessageInsightsFilters.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressFilterList, name: "FromEmailAddress"))
    MessageInsightsFilters.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressFilterList, name: "Destination"))
    MessageInsightsFilters.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailSubjectFilterList, name: "Subject"))
    MessageInsightsFilters.add_member(:isp, ::Smithy::Schema::Shapes::MemberShape.new(target: IspFilterList, name: "Isp"))
    MessageInsightsFilters.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantNameFilterList, name: "TenantName"))
    MessageInsightsFilters.add_member(:last_delivery_event, ::Smithy::Schema::Shapes::MemberShape.new(target: LastDeliveryEventList, name: "LastDeliveryEvent"))
    MessageInsightsFilters.add_member(:last_engagement_event, ::Smithy::Schema::Shapes::MemberShape.new(target: LastEngagementEventList, name: "LastEngagementEvent"))
    MessageInsightsFilters.type = Types::MessageInsightsFilters
    MessageRejected.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MessageRejected.type = Types::MessageRejected
    MessageSecurityOptions.add_member(:signing_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: SigningScheme, name: "SigningScheme"))
    MessageSecurityOptions.type = Types::MessageSecurityOptions
    MessageTag.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagName, name: "Name", traits: {"smithy.api#required" => {}}))
    MessageTag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    MessageTag.type = Types::MessageTag
    MessageTagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTag, name: "member"))
    Metric.add_member(:send, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEND", traits: {"smithy.api#enumValue" => "SEND"}))
    Metric.add_member(:complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLAINT", traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    Metric.add_member(:permanent_bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERMANENT_BOUNCE", traits: {"smithy.api#enumValue" => "PERMANENT_BOUNCE"}))
    Metric.add_member(:transient_bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSIENT_BOUNCE", traits: {"smithy.api#enumValue" => "TRANSIENT_BOUNCE"}))
    Metric.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    Metric.add_member(:click, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLICK", traits: {"smithy.api#enumValue" => "CLICK"}))
    Metric.add_member(:delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELIVERY", traits: {"smithy.api#enumValue" => "DELIVERY"}))
    Metric.add_member(:delivery_open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELIVERY_OPEN", traits: {"smithy.api#enumValue" => "DELIVERY_OPEN"}))
    Metric.add_member(:delivery_click, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELIVERY_CLICK", traits: {"smithy.api#enumValue" => "DELIVERY_CLICK"}))
    Metric.add_member(:delivery_complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELIVERY_COMPLAINT", traits: {"smithy.api#enumValue" => "DELIVERY_COMPLAINT"}))
    MetricAggregation.add_member(:rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RATE", traits: {"smithy.api#enumValue" => "RATE"}))
    MetricAggregation.add_member(:volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME", traits: {"smithy.api#enumValue" => "VOLUME"}))
    MetricDataError.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryIdentifier, name: "Id"))
    MetricDataError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryErrorCode, name: "Code"))
    MetricDataError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryErrorMessage, name: "Message"))
    MetricDataError.type = Types::MetricDataError
    MetricDataErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataError, name: "member"))
    MetricDataResult.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryIdentifier, name: "Id"))
    MetricDataResult.add_member(:timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampList, name: "Timestamps"))
    MetricDataResult.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValueList, name: "Values"))
    MetricDataResult.type = Types::MetricDataResult
    MetricDataResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDataResult, name: "member"))
    MetricDimensionName.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_IDENTITY", traits: {"smithy.api#enumValue" => "EMAIL_IDENTITY"}))
    MetricDimensionName.add_member(:configuration_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION_SET", traits: {"smithy.api#enumValue" => "CONFIGURATION_SET"}))
    MetricDimensionName.add_member(:isp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISP", traits: {"smithy.api#enumValue" => "ISP"}))
    MetricDimensionName.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TENANT_NAME", traits: {"smithy.api#enumValue" => "TENANT_NAME"}))
    MetricNamespace.add_member(:vdm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VDM", traits: {"smithy.api#enumValue" => "VDM"}))
    MetricValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Counter, name: "member"))
    MetricsDataSource.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDimensions, name: "Dimensions", traits: {"smithy.api#required" => {}}))
    MetricsDataSource.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricNamespace, name: "Namespace", traits: {"smithy.api#required" => {}}))
    MetricsDataSource.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportMetrics, name: "Metrics", traits: {"smithy.api#required" => {}}))
    MetricsDataSource.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartDate", traits: {"smithy.api#required" => {}}))
    MetricsDataSource.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndDate", traits: {"smithy.api#required" => {}}))
    MetricsDataSource.type = Types::MetricsDataSource
    MultiRegionEndpoint.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointName, name: "EndpointName"))
    MultiRegionEndpoint.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    MultiRegionEndpoint.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, name: "EndpointId"))
    MultiRegionEndpoint.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "Regions"))
    MultiRegionEndpoint.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    MultiRegionEndpoint.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTimestamp"))
    MultiRegionEndpoint.type = Types::MultiRegionEndpoint
    MultiRegionEndpoints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionEndpoint, name: "member"))
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
    PolicyMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "key"))
    PolicyMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "value"))
    PricingAttributes.add_member(:current_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlan, name: "CurrentPlan"))
    PricingAttributes.add_member(:next_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlan, name: "NextPlan"))
    PricingAttributes.type = Types::PricingAttributes
    PricingPlan.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    PricingPlan.add_member(:essentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ESSENTIALS", traits: {"smithy.api#enumValue" => "ESSENTIALS"}))
    PricingPlan.add_member(:pro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRO", traits: {"smithy.api#enumValue" => "PRO"}))
    PricingPlan.add_member(:enterprise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTERPRISE", traits: {"smithy.api#enumValue" => "ENTERPRISE"}))
    PutAccountDedicatedIpWarmupAttributesRequest.add_member(:auto_warmup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "AutoWarmupEnabled", traits: {"smithy.api#default" => false}))
    PutAccountDedicatedIpWarmupAttributesRequest.type = Types::PutAccountDedicatedIpWarmupAttributesRequest
    PutAccountDedicatedIpWarmupAttributesResponse.type = Types::PutAccountDedicatedIpWarmupAttributesResponse
    PutAccountDetailsRequest.add_member(:mail_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MailType, name: "MailType", traits: {"smithy.api#required" => {}}))
    PutAccountDetailsRequest.add_member(:website_url, ::Smithy::Schema::Shapes::MemberShape.new(target: WebsiteURL, name: "WebsiteURL", traits: {"smithy.api#required" => {}}))
    PutAccountDetailsRequest.add_member(:contact_language, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactLanguage, name: "ContactLanguage"))
    PutAccountDetailsRequest.add_member(:use_case_description, ::Smithy::Schema::Shapes::MemberShape.new(target: UseCaseDescription, name: "UseCaseDescription"))
    PutAccountDetailsRequest.add_member(:additional_contact_email_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalContactEmailAddresses, name: "AdditionalContactEmailAddresses"))
    PutAccountDetailsRequest.add_member(:production_access_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: EnabledWrapper, name: "ProductionAccessEnabled"))
    PutAccountDetailsRequest.type = Types::PutAccountDetailsRequest
    PutAccountDetailsResponse.type = Types::PutAccountDetailsResponse
    PutAccountPricingAttributesRequest.add_member(:plan, ::Smithy::Schema::Shapes::MemberShape.new(target: PricingPlan, name: "Plan", traits: {"smithy.api#required" => {}}))
    PutAccountPricingAttributesRequest.type = Types::PutAccountPricingAttributesRequest
    PutAccountPricingAttributesResponse.type = Types::PutAccountPricingAttributesResponse
    PutAccountSendingAttributesRequest.add_member(:sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "SendingEnabled", traits: {"smithy.api#default" => false}))
    PutAccountSendingAttributesRequest.type = Types::PutAccountSendingAttributesRequest
    PutAccountSendingAttributesResponse.type = Types::PutAccountSendingAttributesResponse
    PutAccountSuppressionAttributesRequest.add_member(:suppressed_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReasons, name: "SuppressedReasons"))
    PutAccountSuppressionAttributesRequest.add_member(:validation_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionValidationAttributes, name: "ValidationAttributes"))
    PutAccountSuppressionAttributesRequest.type = Types::PutAccountSuppressionAttributesRequest
    PutAccountSuppressionAttributesResponse.type = Types::PutAccountSuppressionAttributesResponse
    PutAccountVdmAttributesRequest.add_member(:vdm_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: VdmAttributes, name: "VdmAttributes", traits: {"smithy.api#required" => {}}))
    PutAccountVdmAttributesRequest.type = Types::PutAccountVdmAttributesRequest
    PutAccountVdmAttributesResponse.type = Types::PutAccountVdmAttributesResponse
    PutConfigurationSetArchivingOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetArchivingOptionsRequest.add_member(:archive_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveArn, name: "ArchiveArn"))
    PutConfigurationSetArchivingOptionsRequest.type = Types::PutConfigurationSetArchivingOptionsRequest
    PutConfigurationSetArchivingOptionsResponse.type = Types::PutConfigurationSetArchivingOptionsResponse
    PutConfigurationSetDeliveryOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:tls_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsPolicy, name: "TlsPolicy"))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:sending_pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingPoolName, name: "SendingPoolName"))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:max_delivery_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxDeliverySeconds, name: "MaxDeliverySeconds"))
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
    PutConfigurationSetSuppressionOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetSuppressionOptionsRequest.add_member(:suppression_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListScope, name: "SuppressionScope"))
    PutConfigurationSetSuppressionOptionsRequest.add_member(:suppressed_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReasons, name: "SuppressedReasons"))
    PutConfigurationSetSuppressionOptionsRequest.add_member(:validation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionValidationOptions, name: "ValidationOptions"))
    PutConfigurationSetSuppressionOptionsRequest.type = Types::PutConfigurationSetSuppressionOptionsRequest
    PutConfigurationSetSuppressionOptionsResponse.type = Types::PutConfigurationSetSuppressionOptionsResponse
    PutConfigurationSetTrackingOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetTrackingOptionsRequest.add_member(:custom_redirect_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRedirectDomain, name: "CustomRedirectDomain"))
    PutConfigurationSetTrackingOptionsRequest.add_member(:https_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpsPolicy, name: "HttpsPolicy"))
    PutConfigurationSetTrackingOptionsRequest.type = Types::PutConfigurationSetTrackingOptionsRequest
    PutConfigurationSetTrackingOptionsResponse.type = Types::PutConfigurationSetTrackingOptionsResponse
    PutConfigurationSetVdmOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetVdmOptionsRequest.add_member(:vdm_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VdmOptions, name: "VdmOptions"))
    PutConfigurationSetVdmOptionsRequest.type = Types::PutConfigurationSetVdmOptionsRequest
    PutConfigurationSetVdmOptionsResponse.type = Types::PutConfigurationSetVdmOptionsResponse
    PutDedicatedIpInPoolRequest.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, name: "Ip", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDedicatedIpInPoolRequest.add_member(:destination_pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "DestinationPoolName", traits: {"smithy.api#required" => {}}))
    PutDedicatedIpInPoolRequest.type = Types::PutDedicatedIpInPoolRequest
    PutDedicatedIpInPoolResponse.type = Types::PutDedicatedIpInPoolResponse
    PutDedicatedIpPoolScalingAttributesRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "PoolName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDedicatedIpPoolScalingAttributesRequest.add_member(:scaling_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingMode, name: "ScalingMode", traits: {"smithy.api#required" => {}}))
    PutDedicatedIpPoolScalingAttributesRequest.type = Types::PutDedicatedIpPoolScalingAttributesRequest
    PutDedicatedIpPoolScalingAttributesResponse.type = Types::PutDedicatedIpPoolScalingAttributesResponse
    PutDedicatedIpWarmupAttributesRequest.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, name: "Ip", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDedicatedIpWarmupAttributesRequest.add_member(:warmup_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage100Wrapper, name: "WarmupPercentage", traits: {"smithy.api#required" => {}}))
    PutDedicatedIpWarmupAttributesRequest.type = Types::PutDedicatedIpWarmupAttributesRequest
    PutDedicatedIpWarmupAttributesResponse.type = Types::PutDedicatedIpWarmupAttributesResponse
    PutDeliverabilityDashboardOptionRequest.add_member(:dashboard_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "DashboardEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    PutDeliverabilityDashboardOptionRequest.add_member(:subscribed_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityTrackingOptions, name: "SubscribedDomains"))
    PutDeliverabilityDashboardOptionRequest.type = Types::PutDeliverabilityDashboardOptionRequest
    PutDeliverabilityDashboardOptionResponse.type = Types::PutDeliverabilityDashboardOptionResponse
    PutEmailIdentityConfigurationSetAttributesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityConfigurationSetAttributesRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    PutEmailIdentityConfigurationSetAttributesRequest.type = Types::PutEmailIdentityConfigurationSetAttributesRequest
    PutEmailIdentityConfigurationSetAttributesResponse.type = Types::PutEmailIdentityConfigurationSetAttributesResponse
    PutEmailIdentityDkimAttributesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityDkimAttributesRequest.add_member(:signing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "SigningEnabled", traits: {"smithy.api#default" => false}))
    PutEmailIdentityDkimAttributesRequest.type = Types::PutEmailIdentityDkimAttributesRequest
    PutEmailIdentityDkimAttributesResponse.type = Types::PutEmailIdentityDkimAttributesResponse
    PutEmailIdentityDkimSigningAttributesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityDkimSigningAttributesRequest.add_member(:signing_attributes_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningAttributesOrigin, name: "SigningAttributesOrigin", traits: {"smithy.api#required" => {}}))
    PutEmailIdentityDkimSigningAttributesRequest.add_member(:signing_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimSigningAttributes, name: "SigningAttributes"))
    PutEmailIdentityDkimSigningAttributesRequest.type = Types::PutEmailIdentityDkimSigningAttributesRequest
    PutEmailIdentityDkimSigningAttributesResponse.add_member(:dkim_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimStatus, name: "DkimStatus"))
    PutEmailIdentityDkimSigningAttributesResponse.add_member(:dkim_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsTokenList, name: "DkimTokens"))
    PutEmailIdentityDkimSigningAttributesResponse.add_member(:signing_hosted_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: HostedZone, name: "SigningHostedZone"))
    PutEmailIdentityDkimSigningAttributesResponse.type = Types::PutEmailIdentityDkimSigningAttributesResponse
    PutEmailIdentityFeedbackAttributesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityFeedbackAttributesRequest.add_member(:email_forwarding_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "EmailForwardingEnabled", traits: {"smithy.api#default" => false}))
    PutEmailIdentityFeedbackAttributesRequest.type = Types::PutEmailIdentityFeedbackAttributesRequest
    PutEmailIdentityFeedbackAttributesResponse.type = Types::PutEmailIdentityFeedbackAttributesResponse
    PutEmailIdentityMailFromAttributesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityMailFromAttributesRequest.add_member(:mail_from_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: MailFromDomainName, name: "MailFromDomain"))
    PutEmailIdentityMailFromAttributesRequest.add_member(:behavior_on_mx_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: BehaviorOnMxFailure, name: "BehaviorOnMxFailure"))
    PutEmailIdentityMailFromAttributesRequest.type = Types::PutEmailIdentityMailFromAttributesRequest
    PutEmailIdentityMailFromAttributesResponse.type = Types::PutEmailIdentityMailFromAttributesResponse
    PutSuppressedDestinationRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    PutSuppressedDestinationRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    PutSuppressedDestinationRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName"))
    PutSuppressedDestinationRequest.type = Types::PutSuppressedDestinationRequest
    PutSuppressedDestinationResponse.type = Types::PutSuppressedDestinationResponse
    PutTenantSuppressionAttributesRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName", traits: {"smithy.api#required" => {}}))
    PutTenantSuppressionAttributesRequest.add_member(:suppressed_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReasons, name: "SuppressedReasons"))
    PutTenantSuppressionAttributesRequest.add_member(:suppression_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListScope, name: "SuppressionScope"))
    PutTenantSuppressionAttributesRequest.type = Types::PutTenantSuppressionAttributesRequest
    PutTenantSuppressionAttributesResponse.type = Types::PutTenantSuppressionAttributesResponse
    QueryErrorCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_FAILURE", traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    QueryErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    RawMessage.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: RawMessageData, name: "Data", traits: {"smithy.api#required" => {}}))
    RawMessage.type = Types::RawMessage
    Recommendation.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn"))
    Recommendation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, name: "Type"))
    Recommendation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationDescription, name: "Description"))
    Recommendation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, name: "Status"))
    Recommendation.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    Recommendation.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTimestamp"))
    Recommendation.add_member(:impact, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationImpact, name: "Impact"))
    Recommendation.type = Types::Recommendation
    RecommendationImpact.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    RecommendationImpact.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    RecommendationStatus.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    RecommendationStatus.add_member(:fixed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIXED", traits: {"smithy.api#enumValue" => "FIXED"}))
    RecommendationType.add_member(:dkim, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DKIM", traits: {"smithy.api#enumValue" => "DKIM"}))
    RecommendationType.add_member(:dmarc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DMARC", traits: {"smithy.api#enumValue" => "DMARC"}))
    RecommendationType.add_member(:spf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPF", traits: {"smithy.api#enumValue" => "SPF"}))
    RecommendationType.add_member(:bimi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BIMI", traits: {"smithy.api#enumValue" => "BIMI"}))
    RecommendationType.add_member(:complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLAINT", traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    RecommendationType.add_member(:bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOUNCE", traits: {"smithy.api#enumValue" => "BOUNCE"}))
    RecommendationType.add_member(:feedback_3_p, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FEEDBACK_3P", traits: {"smithy.api#enumValue" => "FEEDBACK_3P"}))
    RecommendationType.add_member(:ip_listing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_LISTING", traits: {"smithy.api#enumValue" => "IP_LISTING"}))
    RecommendationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation, name: "member"))
    Regions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "member"))
    ReplacementEmailContent.add_member(:replacement_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplacementTemplate, name: "ReplacementTemplate"))
    ReplacementEmailContent.type = Types::ReplacementEmailContent
    ReplacementTemplate.add_member(:replacement_template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateData, name: "ReplacementTemplateData"))
    ReplacementTemplate.type = Types::ReplacementTemplate
    ReputationEntitiesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntity, name: "member"))
    ReputationEntity.add_member(:reputation_entity_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityReference, name: "ReputationEntityReference"))
    ReputationEntity.add_member(:reputation_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityType, name: "ReputationEntityType"))
    ReputationEntity.add_member(:reputation_management_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ReputationManagementPolicy"))
    ReputationEntity.add_member(:customer_managed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusRecord, name: "CustomerManagedStatus"))
    ReputationEntity.add_member(:aws_ses_managed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusRecord, name: "AwsSesManagedStatus"))
    ReputationEntity.add_member(:sending_status_aggregate, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingStatus, name: "SendingStatusAggregate"))
    ReputationEntity.add_member(:reputation_impact, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationImpact, name: "ReputationImpact"))
    ReputationEntity.type = Types::ReputationEntity
    ReputationEntityFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityFilterKey, name: "key"))
    ReputationEntityFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityFilterValue, name: "value"))
    ReputationEntityFilterKey.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTITY_TYPE", traits: {"smithy.api#enumValue" => "ENTITY_TYPE"}))
    ReputationEntityFilterKey.add_member(:reputation_impact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPUTATION_IMPACT", traits: {"smithy.api#enumValue" => "REPUTATION_IMPACT"}))
    ReputationEntityFilterKey.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "SENDING_STATUS"}))
    ReputationEntityFilterKey.add_member(:entity_reference_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTITY_REFERENCE_PREFIX", traits: {"smithy.api#enumValue" => "ENTITY_REFERENCE_PREFIX"}))
    ReputationEntityType.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE", traits: {"smithy.api#enumValue" => "RESOURCE"}))
    ReputationOptions.add_member(:reputation_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "ReputationMetricsEnabled", traits: {"smithy.api#default" => false}))
    ReputationOptions.add_member(:last_fresh_start, ::Smithy::Schema::Shapes::MemberShape.new(target: LastFreshStart, name: "LastFreshStart"))
    ReputationOptions.type = Types::ReputationOptions
    ResourceTenantMetadata.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName"))
    ResourceTenantMetadata.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantId, name: "TenantId"))
    ResourceTenantMetadata.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn"))
    ResourceTenantMetadata.add_member(:associated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "AssociatedTimestamp"))
    ResourceTenantMetadata.type = Types::ResourceTenantMetadata
    ResourceTenantMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTenantMetadata, name: "member"))
    ResourceType.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_IDENTITY", traits: {"smithy.api#enumValue" => "EMAIL_IDENTITY"}))
    ResourceType.add_member(:configuration_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION_SET", traits: {"smithy.api#enumValue" => "CONFIGURATION_SET"}))
    ResourceType.add_member(:email_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_TEMPLATE", traits: {"smithy.api#enumValue" => "EMAIL_TEMPLATE"}))
    ReviewDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewStatus, name: "Status"))
    ReviewDetails.add_member(:case_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CaseId, name: "CaseId"))
    ReviewDetails.type = Types::ReviewDetails
    ReviewStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ReviewStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ReviewStatus.add_member(:granted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GRANTED", traits: {"smithy.api#enumValue" => "GRANTED"}))
    ReviewStatus.add_member(:denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENIED", traits: {"smithy.api#enumValue" => "DENIED"}))
    Route.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region", traits: {"smithy.api#required" => {}}))
    Route.type = Types::Route
    RouteDetails.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region", traits: {"smithy.api#required" => {}}))
    RouteDetails.type = Types::RouteDetails
    Routes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Route, name: "member"))
    RoutesDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteDetails, name: "member"))
    SOARecord.add_member(:primary_name_server, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryNameServer, name: "PrimaryNameServer"))
    SOARecord.add_member(:admin_email, ::Smithy::Schema::Shapes::MemberShape.new(target: AdminEmail, name: "AdminEmail"))
    SOARecord.add_member(:serial_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SerialNumber, name: "SerialNumber", traits: {"smithy.api#default" => 0}))
    SOARecord.type = Types::SOARecord
    ScalingMode.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    ScalingMode.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))
    SendBulkEmailRequest.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "FromEmailAddress"))
    SendBulkEmailRequest.add_member(:from_email_address_identity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "FromEmailAddressIdentityArn"))
    SendBulkEmailRequest.add_member(:reply_to_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressList, name: "ReplyToAddresses"))
    SendBulkEmailRequest.add_member(:feedback_forwarding_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "FeedbackForwardingEmailAddress"))
    SendBulkEmailRequest.add_member(:feedback_forwarding_email_address_identity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "FeedbackForwardingEmailAddressIdentityArn"))
    SendBulkEmailRequest.add_member(:default_email_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagList, name: "DefaultEmailTags"))
    SendBulkEmailRequest.add_member(:default_content, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailContent, name: "DefaultContent", traits: {"smithy.api#required" => {}}))
    SendBulkEmailRequest.add_member(:bulk_email_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailEntryList, name: "BulkEmailEntries", traits: {"smithy.api#required" => {}}))
    SendBulkEmailRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    SendBulkEmailRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, name: "EndpointId", traits: {"smithy.rules#contextParam" => {"name" => "EndpointId"}}))
    SendBulkEmailRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName"))
    SendBulkEmailRequest.add_member(:configuration_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationOverrides, name: "ConfigurationOverrides"))
    SendBulkEmailRequest.type = Types::SendBulkEmailRequest
    SendBulkEmailResponse.add_member(:bulk_email_entry_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BulkEmailEntryResultList, name: "BulkEmailEntryResults", traits: {"smithy.api#required" => {}}))
    SendBulkEmailResponse.type = Types::SendBulkEmailResponse
    SendCustomVerificationEmailRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    SendCustomVerificationEmailRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, name: "TemplateName", traits: {"smithy.api#required" => {}}))
    SendCustomVerificationEmailRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    SendCustomVerificationEmailRequest.type = Types::SendCustomVerificationEmailRequest
    SendCustomVerificationEmailResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutboundMessageId, name: "MessageId"))
    SendCustomVerificationEmailResponse.type = Types::SendCustomVerificationEmailResponse
    SendEmailRequest.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "FromEmailAddress"))
    SendEmailRequest.add_member(:from_email_address_identity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "FromEmailAddressIdentityArn"))
    SendEmailRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "Destination"))
    SendEmailRequest.add_member(:reply_to_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressList, name: "ReplyToAddresses"))
    SendEmailRequest.add_member(:feedback_forwarding_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "FeedbackForwardingEmailAddress"))
    SendEmailRequest.add_member(:feedback_forwarding_email_address_identity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "FeedbackForwardingEmailAddressIdentityArn"))
    SendEmailRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailContent, name: "Content", traits: {"smithy.api#required" => {}}))
    SendEmailRequest.add_member(:email_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagList, name: "EmailTags"))
    SendEmailRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    SendEmailRequest.add_member(:endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointId, name: "EndpointId", traits: {"smithy.rules#contextParam" => {"name" => "EndpointId"}}))
    SendEmailRequest.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName"))
    SendEmailRequest.add_member(:list_management_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ListManagementOptions, name: "ListManagementOptions"))
    SendEmailRequest.add_member(:configuration_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationOverrides, name: "ConfigurationOverrides"))
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
    SendingStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    SendingStatus.add_member(:reinstated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REINSTATED", traits: {"smithy.api#enumValue" => "REINSTATED"}))
    SendingStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    SignatureFormat.add_member(:detached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETACHED", traits: {"smithy.api#enumValue" => "DETACHED"}))
    SigningScheme.add_member(:default_scheme, Types::SigningScheme::DefaultScheme, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultSigningScheme, name: "DefaultScheme"))
    SigningScheme.add_member(:smime_scheme, Types::SigningScheme::SmimeScheme, ::Smithy::Schema::Shapes::MemberShape.new(target: SmimeSigningScheme, name: "SmimeScheme"))
    SigningScheme.add_member(:unknown, Types::SigningScheme::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SigningScheme.type = Types::SigningScheme
    SmimeSigningScheme.add_member(:signature_format, ::Smithy::Schema::Shapes::MemberShape.new(target: SignatureFormat, name: "SignatureFormat"))
    SmimeSigningScheme.type = Types::SmimeSigningScheme
    SnsDestination.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "TopicArn", traits: {"smithy.api#required" => {}}))
    SnsDestination.type = Types::SnsDestination
    Status.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    Status.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    Status.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Status.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    StatusRecord.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingStatus, name: "Status"))
    StatusRecord.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCause, name: "Cause"))
    StatusRecord.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdatedTimestamp"))
    StatusRecord.type = Types::StatusRecord
    SubscriptionStatus.add_member(:opt_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPT_IN", traits: {"smithy.api#enumValue" => "OPT_IN"}))
    SubscriptionStatus.add_member(:opt_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPT_OUT", traits: {"smithy.api#enumValue" => "OPT_OUT"}))
    SuppressedDestination.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    SuppressedDestination.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    SuppressedDestination.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdateTime", traits: {"smithy.api#required" => {}}))
    SuppressedDestination.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressedDestinationAttributes, name: "Attributes"))
    SuppressedDestination.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName"))
    SuppressedDestination.type = Types::SuppressedDestination
    SuppressedDestinationAttributes.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutboundMessageId, name: "MessageId"))
    SuppressedDestinationAttributes.add_member(:feedback_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackId, name: "FeedbackId"))
    SuppressedDestinationAttributes.type = Types::SuppressedDestinationAttributes
    SuppressedDestinationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressedDestinationSummary, name: "member"))
    SuppressedDestinationSummary.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress", traits: {"smithy.api#required" => {}}))
    SuppressedDestinationSummary.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    SuppressedDestinationSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdateTime", traits: {"smithy.api#required" => {}}))
    SuppressedDestinationSummary.type = Types::SuppressedDestinationSummary
    SuppressionAttributes.add_member(:suppressed_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReasons, name: "SuppressedReasons"))
    SuppressionAttributes.add_member(:validation_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionValidationAttributes, name: "ValidationAttributes"))
    SuppressionAttributes.type = Types::SuppressionAttributes
    SuppressionConditionThreshold.add_member(:condition_threshold_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "ConditionThresholdEnabled", traits: {"smithy.api#required" => {}}))
    SuppressionConditionThreshold.add_member(:overall_confidence_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionConfidenceThreshold, name: "OverallConfidenceThreshold"))
    SuppressionConditionThreshold.type = Types::SuppressionConditionThreshold
    SuppressionConfidenceThreshold.add_member(:confidence_verdict_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionConfidenceVerdictThreshold, name: "ConfidenceVerdictThreshold", traits: {"smithy.api#required" => {}}))
    SuppressionConfidenceThreshold.type = Types::SuppressionConfidenceThreshold
    SuppressionConfidenceVerdictThreshold.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    SuppressionConfidenceVerdictThreshold.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    SuppressionConfidenceVerdictThreshold.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))
    SuppressionListDestination.add_member(:suppression_list_import_action, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListImportAction, name: "SuppressionListImportAction", traits: {"smithy.api#required" => {}}))
    SuppressionListDestination.type = Types::SuppressionListDestination
    SuppressionListImportAction.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    SuppressionListImportAction.add_member(:put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUT", traits: {"smithy.api#enumValue" => "PUT"}))
    SuppressionListReason.add_member(:bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOUNCE", traits: {"smithy.api#enumValue" => "BOUNCE"}))
    SuppressionListReason.add_member(:complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLAINT", traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    SuppressionListReasons.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReason, name: "member"))
    SuppressionListScope.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    SuppressionListScope.add_member(:tenant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TENANT", traits: {"smithy.api#enumValue" => "TENANT"}))
    SuppressionOptions.add_member(:suppressed_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReasons, name: "SuppressedReasons"))
    SuppressionOptions.add_member(:suppression_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListScope, name: "SuppressionScope"))
    SuppressionOptions.add_member(:validation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionValidationOptions, name: "ValidationOptions"))
    SuppressionOptions.type = Types::SuppressionOptions
    SuppressionValidationAttributes.add_member(:condition_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionConditionThreshold, name: "ConditionThreshold", traits: {"smithy.api#required" => {}}))
    SuppressionValidationAttributes.type = Types::SuppressionValidationAttributes
    SuppressionValidationOptions.add_member(:condition_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionConditionThreshold, name: "ConditionThreshold", traits: {"smithy.api#required" => {}}))
    SuppressionValidationOptions.type = Types::SuppressionValidationOptions
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Template.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, name: "TemplateName"))
    Template.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "TemplateArn"))
    Template.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateContent, name: "TemplateContent"))
    Template.add_member(:template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateData, name: "TemplateData"))
    Template.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageHeaderList, name: "Headers"))
    Template.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentList, name: "Attachments"))
    Template.type = Types::Template
    Tenant.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName"))
    Tenant.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantId, name: "TenantId"))
    Tenant.add_member(:tenant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "TenantArn"))
    Tenant.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    Tenant.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Tenant.add_member(:sending_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingStatus, name: "SendingStatus"))
    Tenant.add_member(:suppression_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantSuppressionAttributes, name: "SuppressionAttributes"))
    Tenant.type = Types::Tenant
    TenantInfo.add_member(:tenant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "TenantName"))
    TenantInfo.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantId, name: "TenantId"))
    TenantInfo.add_member(:tenant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "TenantArn"))
    TenantInfo.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTimestamp"))
    TenantInfo.add_member(:sending_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingStatus, name: "SendingStatus"))
    TenantInfo.type = Types::TenantInfo
    TenantInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantInfo, name: "member"))
    TenantNameFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantName, name: "member"))
    TenantResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    TenantResource.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn"))
    TenantResource.type = Types::TenantResource
    TenantResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantResource, name: "member"))
    TenantSuppressionAttributes.add_member(:suppressed_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListReasons, name: "SuppressedReasons"))
    TenantSuppressionAttributes.add_member(:suppression_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: SuppressionListScope, name: "SuppressionScope"))
    TenantSuppressionAttributes.type = Types::TenantSuppressionAttributes
    TestRenderEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, name: "TemplateName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TestRenderEmailTemplateRequest.add_member(:template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateData, name: "TemplateData", traits: {"smithy.api#required" => {}}))
    TestRenderEmailTemplateRequest.type = Types::TestRenderEmailTemplateRequest
    TestRenderEmailTemplateResponse.add_member(:rendered_template, ::Smithy::Schema::Shapes::MemberShape.new(target: RenderedEmailTemplate, name: "RenderedTemplate", traits: {"smithy.api#required" => {}}))
    TestRenderEmailTemplateResponse.type = Types::TestRenderEmailTemplateResponse
    TimestampList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "member"))
    TlsPolicy.add_member(:require, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRE", traits: {"smithy.api#enumValue" => "REQUIRE"}))
    TlsPolicy.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIONAL", traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    Topic.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicName, name: "TopicName", traits: {"smithy.api#required" => {}}))
    Topic.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    Topic.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Topic.add_member(:default_subscription_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionStatus, name: "DefaultSubscriptionStatus", traits: {"smithy.api#required" => {}}))
    Topic.type = Types::Topic
    TopicFilter.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicName, name: "TopicName"))
    TopicFilter.add_member(:use_default_if_preference_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: UseDefaultIfPreferenceUnavailable, name: "UseDefaultIfPreferenceUnavailable", traits: {"smithy.api#default" => false}))
    TopicFilter.type = Types::TopicFilter
    TopicPreference.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicName, name: "TopicName", traits: {"smithy.api#required" => {}}))
    TopicPreference.add_member(:subscription_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionStatus, name: "SubscriptionStatus", traits: {"smithy.api#required" => {}}))
    TopicPreference.type = Types::TopicPreference
    TopicPreferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicPreference, name: "member"))
    Topics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Topic, name: "member"))
    TrackingConfigurationOverrides.add_member(:open_tracking_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "OpenTrackingEnabled"))
    TrackingConfigurationOverrides.add_member(:click_tracking_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "ClickTrackingEnabled"))
    TrackingConfigurationOverrides.type = Types::TrackingConfigurationOverrides
    TrackingOptions.add_member(:custom_redirect_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRedirectDomain, name: "CustomRedirectDomain", traits: {"smithy.api#required" => {}}))
    TrackingOptions.add_member(:https_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpsPolicy, name: "HttpsPolicy"))
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
    UpdateConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    UpdateConfigurationSetRequest.add_member(:message_security_options, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageSecurityOptions, name: "MessageSecurityOptions"))
    UpdateConfigurationSetRequest.type = Types::UpdateConfigurationSetRequest
    UpdateConfigurationSetResponse.type = Types::UpdateConfigurationSetResponse
    UpdateContactListRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContactListRequest.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: Topics, name: "Topics"))
    UpdateContactListRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateContactListRequest.type = Types::UpdateContactListRequest
    UpdateContactListResponse.type = Types::UpdateContactListResponse
    UpdateContactRequest.add_member(:contact_list_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactListName, name: "ContactListName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContactRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateContactRequest.add_member(:topic_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicPreferenceList, name: "TopicPreferences"))
    UpdateContactRequest.add_member(:unsubscribe_all, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsubscribeAll, name: "UnsubscribeAll", traits: {"smithy.api#default" => false}))
    UpdateContactRequest.add_member(:attributes_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributesData, name: "AttributesData"))
    UpdateContactRequest.type = Types::UpdateContactRequest
    UpdateContactResponse.type = Types::UpdateContactResponse
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, name: "TemplateName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "FromEmailAddress", traits: {"smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_subject, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateSubject, name: "TemplateSubject", traits: {"smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateContent, name: "TemplateContent", traits: {"smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:success_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessRedirectionURL, name: "SuccessRedirectionURL", traits: {"smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.add_member(:failure_redirection_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureRedirectionURL, name: "FailureRedirectionURL", traits: {"smithy.api#required" => {}}))
    UpdateCustomVerificationEmailTemplateRequest.type = Types::UpdateCustomVerificationEmailTemplateRequest
    UpdateCustomVerificationEmailTemplateResponse.type = Types::UpdateCustomVerificationEmailTemplateResponse
    UpdateEmailIdentityPolicyRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEmailIdentityPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEmailIdentityPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy", traits: {"smithy.api#required" => {}}))
    UpdateEmailIdentityPolicyRequest.type = Types::UpdateEmailIdentityPolicyRequest
    UpdateEmailIdentityPolicyResponse.type = Types::UpdateEmailIdentityPolicyResponse
    UpdateEmailTemplateRequest.add_member(:template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateName, name: "TemplateName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEmailTemplateRequest.add_member(:template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailTemplateContent, name: "TemplateContent", traits: {"smithy.api#required" => {}}))
    UpdateEmailTemplateRequest.type = Types::UpdateEmailTemplateRequest
    UpdateEmailTemplateResponse.type = Types::UpdateEmailTemplateResponse
    UpdateReputationEntityCustomerManagedStatusRequest.add_member(:reputation_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityType, name: "ReputationEntityType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReputationEntityCustomerManagedStatusRequest.add_member(:reputation_entity_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityReference, name: "ReputationEntityReference", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReputationEntityCustomerManagedStatusRequest.add_member(:sending_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingStatus, name: "SendingStatus", traits: {"smithy.api#required" => {}}))
    UpdateReputationEntityCustomerManagedStatusRequest.type = Types::UpdateReputationEntityCustomerManagedStatusRequest
    UpdateReputationEntityCustomerManagedStatusResponse.type = Types::UpdateReputationEntityCustomerManagedStatusResponse
    UpdateReputationEntityPolicyRequest.add_member(:reputation_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityType, name: "ReputationEntityType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReputationEntityPolicyRequest.add_member(:reputation_entity_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationEntityReference, name: "ReputationEntityReference", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReputationEntityPolicyRequest.add_member(:reputation_entity_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ReputationEntityPolicy", traits: {"smithy.api#required" => {}}))
    UpdateReputationEntityPolicyRequest.type = Types::UpdateReputationEntityPolicyRequest
    UpdateReputationEntityPolicyResponse.type = Types::UpdateReputationEntityPolicyResponse
    VdmAttributes.add_member(:vdm_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureStatus, name: "VdmEnabled", traits: {"smithy.api#required" => {}}))
    VdmAttributes.add_member(:dashboard_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardAttributes, name: "DashboardAttributes"))
    VdmAttributes.add_member(:guardian_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardianAttributes, name: "GuardianAttributes"))
    VdmAttributes.type = Types::VdmAttributes
    VdmOptions.add_member(:dashboard_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DashboardOptions, name: "DashboardOptions"))
    VdmOptions.add_member(:guardian_options, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardianOptions, name: "GuardianOptions"))
    VdmOptions.type = Types::VdmOptions
    VerificationError.add_member(:service_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_ERROR", traits: {"smithy.api#enumValue" => "SERVICE_ERROR"}))
    VerificationError.add_member(:dns_server_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS_SERVER_ERROR", traits: {"smithy.api#enumValue" => "DNS_SERVER_ERROR"}))
    VerificationError.add_member(:host_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOST_NOT_FOUND", traits: {"smithy.api#enumValue" => "HOST_NOT_FOUND"}))
    VerificationError.add_member(:type_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TYPE_NOT_FOUND", traits: {"smithy.api#enumValue" => "TYPE_NOT_FOUND"}))
    VerificationError.add_member(:invalid_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_VALUE", traits: {"smithy.api#enumValue" => "INVALID_VALUE"}))
    VerificationError.add_member(:replication_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICATION_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "REPLICATION_ACCESS_DENIED"}))
    VerificationError.add_member(:replication_primary_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICATION_PRIMARY_NOT_FOUND", traits: {"smithy.api#enumValue" => "REPLICATION_PRIMARY_NOT_FOUND"}))
    VerificationError.add_member(:replication_primary_byo_dkim_not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICATION_PRIMARY_BYO_DKIM_NOT_SUPPORTED", traits: {"smithy.api#enumValue" => "REPLICATION_PRIMARY_BYO_DKIM_NOT_SUPPORTED"}))
    VerificationError.add_member(:replication_replica_as_primary_not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICATION_REPLICA_AS_PRIMARY_NOT_SUPPORTED", traits: {"smithy.api#enumValue" => "REPLICATION_REPLICA_AS_PRIMARY_NOT_SUPPORTED"}))
    VerificationError.add_member(:replication_primary_invalid_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICATION_PRIMARY_INVALID_REGION", traits: {"smithy.api#enumValue" => "REPLICATION_PRIMARY_INVALID_REGION"}))
    VerificationInfo.add_member(:last_checked_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastCheckedTimestamp"))
    VerificationInfo.add_member(:last_success_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastSuccessTimestamp"))
    VerificationInfo.add_member(:error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationError, name: "ErrorType"))
    VerificationInfo.add_member(:soa_record, ::Smithy::Schema::Shapes::MemberShape.new(target: SOARecord, name: "SOARecord"))
    VerificationInfo.type = Types::VerificationInfo
    VerificationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    VerificationStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    VerificationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    VerificationStatus.add_member(:temporary_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEMPORARY_FAILURE", traits: {"smithy.api#enumValue" => "TEMPORARY_FAILURE"}))
    VerificationStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    VolumeStatistics.add_member(:inbox_raw_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "InboxRawCount"))
    VolumeStatistics.add_member(:spam_raw_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "SpamRawCount"))
    VolumeStatistics.add_member(:projected_inbox, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "ProjectedInbox"))
    VolumeStatistics.add_member(:projected_spam, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "ProjectedSpam"))
    VolumeStatistics.type = Types::VolumeStatistics
    WarmupStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    WarmupStatus.add_member(:done, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DONE", traits: {"smithy.api#enumValue" => "DONE"}))
    WarmupStatus.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))

    SimpleEmailServiceV2 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sesv2#SimpleEmailService_v2"
      service.name = "SimpleEmailServiceV2"
      service.version = "2019-09-27"
      service.traits = {"aws.api#service" => {"sdkId" => "SESv2", "arnNamespace" => "ses", "cloudFormationName" => "SESv2", "cloudTrailEventSource" => "sesv2.amazonaws.com", "endpointPrefix" => "email"}, "aws.auth#sigv4" => {"name" => "ses"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Simple Email Service", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "EndpointId" => {"required" => false, "documentation" => "Operation parameter for EndpointId", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "isSet", "argv" => [{"ref" => "EndpointId"}]}, {"fn" => "isValidHostLabel", "argv" => [{"ref" => "EndpointId"}, true]}, {"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "ses", "signingRegionSet" => ["*"]}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{EndpointId}.endpoints.email.us-gov.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "ses", "signingRegionSet" => ["*"]}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://{EndpointId}.endpoints.email.us-gov.{PartitionResult#dnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "ses", "signingRegionSet" => ["*"]}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{EndpointId}.endpoints.email.global.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "ses", "signingRegionSet" => ["*"]}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{EndpointId}.endpoints.email.{PartitionResult#dnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "ses", "signingRegionSet" => ["*"]}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: FIPS is not supported with multi-region endpoints", "type" => "error"}, {"conditions" => [], "error" => "EndpointId must be a valid host label", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://email-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://email-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://email.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://email.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 23, "nodes" => "/////wAAAAH/////AAAAAAAAAAMAAAAEAAAAAQAAAAUAAAAEAAAABAAAAA4F9eESAAAAAgAAABAAAAAGAAAABAAAAA4AAAAHAAAABQAAAAoAAAAIAAAABgAAAAkF9eERAAAABwX14RAF9eEDAAAABgAAAAwAAAALAAAACQX14Q4F9eEPAAAABwAAAA0F9eENAAAACQX14QwF9eENAAAABQX14QkAAAAPAAAABgX14QoF9eELAAAAAwAAABEF9eEIAAAABAAAABcAAAASAAAABQX14QcAAAATAAAABgAAABUAAAAUAAAACAX14QQF9eEGAAAABwAAABYF9eEDAAAACAX14QIF9eEFAAAABQX14QcF9eEB"}}
      service.add_operation(:associate_email_identity_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#AssociateEmailIdentityCertificate"
        operation.name = "AssociateEmailIdentityCertificate"
        operation.input = AssociateEmailIdentityCertificateRequest
        operation.output = AssociateEmailIdentityCertificateResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/identity/certificates", "code" => 200}}
      end)
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
      service.add_operation(:disassociate_email_identity_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#DisassociateEmailIdentityCertificate"
        operation.name = "DisassociateEmailIdentityCertificate"
        operation.input = DisassociateEmailIdentityCertificateRequest
        operation.output = DisassociateEmailIdentityCertificateResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/identity/certificates/delete", "code" => 200}}
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
      service.add_operation(:get_email_address_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#GetEmailAddressInsights"
        operation.name = "GetEmailAddressInsights"
        operation.input = GetEmailAddressInsightsRequest
        operation.output = GetEmailAddressInsightsResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/email-address-insights", "code" => 200}}
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
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/list-configuration-sets", "code" => 200}}
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
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/list-identities", "code" => 200}}
        operation[:paginator] = Paginators::ListEmailIdentities.new
      end)
      service.add_operation(:list_email_identity_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#ListEmailIdentityCertificates"
        operation.name = "ListEmailIdentityCertificates"
        operation.input = ListEmailIdentityCertificatesRequest
        operation.output = ListEmailIdentityCertificatesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/identity/certificates/list", "code" => 200}}
        operation[:paginator] = Paginators::ListEmailIdentityCertificates.new
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
        operation.errors << NotFoundException
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
      service.add_operation(:put_account_pricing_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutAccountPricingAttributes"
        operation.name = "PutAccountPricingAttributes"
        operation.input = PutAccountPricingAttributesRequest
        operation.output = PutAccountPricingAttributesResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/account/pricing-attributes", "code" => 200}}
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
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/identities/{EmailIdentity}/dkim/signing", "code" => 200}}
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
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v2/email/suppression/addresses", "code" => 200}}
      end)
      service.add_operation(:put_tenant_suppression_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#PutTenantSuppressionAttributes"
        operation.name = "PutTenantSuppressionAttributes"
        operation.input = PutTenantSuppressionAttributesRequest
        operation.output = PutTenantSuppressionAttributesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/tenant/suppression", "code" => 200}}
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
      service.add_operation(:update_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sesv2#UpdateConfigurationSet"
        operation.name = "UpdateConfigurationSet"
        operation.input = UpdateConfigurationSetRequest
        operation.output = UpdateConfigurationSetResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v2/email/update-configuration-sets", "code" => 200}}
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
