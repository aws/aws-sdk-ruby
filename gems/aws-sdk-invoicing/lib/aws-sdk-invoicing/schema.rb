# frozen_string_literal: true

# This is generated code!

module Aws::Invoicing
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#AccessDeniedException", name: "AccessDeniedException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingAccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#AccountIdList", name: "AccountIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    AccountIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#AccountIdString", name: "AccountIdString", traits: {"smithy.api#pattern" => "^\\d{12}$"})
    AmountBreakdown = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#AmountBreakdown", name: "AmountBreakdown")
    AsOfTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.invoicing#AsOfTimestamp", name: "AsOfTimestamp")
    BasicString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#BasicString", name: "BasicString", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    BasicStringWithoutSpace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#BasicStringWithoutSpace", name: "BasicStringWithoutSpace", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^\\S+$"})
    BatchGetInvoiceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#BatchGetInvoiceProfileRequest", name: "BatchGetInvoiceProfileRequest")
    BatchGetInvoiceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#BatchGetInvoiceProfileResponse", name: "BatchGetInvoiceProfileResponse")
    BillSourceAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#BillSourceAccountList", name: "BillSourceAccountList")
    BillType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#BillType", name: "BillType")
    BillingEntity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#BillingEntity", name: "BillingEntity")
    BillingPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#BillingPeriod", name: "BillingPeriod")
    BuyerDomain = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#BuyerDomain", name: "BuyerDomain")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ConflictException", name: "ConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingConflict", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionTestingMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#ConnectionTestingMethod", name: "ConnectionTestingMethod")
    Contact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#Contact", name: "Contact", traits: {"smithy.api#sensitive" => {}})
    Contacts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#Contacts", name: "Contacts", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CountryCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#CountryCode", name: "CountryCode", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}, "smithy.api#pattern" => "^[A-Z]{2}$"})
    CreateInvoiceUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#CreateInvoiceUnitRequest", name: "CreateInvoiceUnitRequest")
    CreateInvoiceUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#CreateInvoiceUnitResponse", name: "CreateInvoiceUnitResponse")
    CreateProcurementPortalPreferenceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#CreateProcurementPortalPreferenceRequest", name: "CreateProcurementPortalPreferenceRequest")
    CreateProcurementPortalPreferenceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#CreateProcurementPortalPreferenceResponse", name: "CreateProcurementPortalPreferenceResponse")
    CurrencyCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#CurrencyCode", name: "CurrencyCode", traits: {"smithy.api#length" => {"min" => 3, "max" => 3}})
    CurrencyExchangeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#CurrencyExchangeDetails", name: "CurrencyExchangeDetails")
    DateInterval = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#DateInterval", name: "DateInterval")
    DeleteInvoiceUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#DeleteInvoiceUnitRequest", name: "DeleteInvoiceUnitRequest")
    DeleteInvoiceUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#DeleteInvoiceUnitResponse", name: "DeleteInvoiceUnitResponse")
    DeleteProcurementPortalPreferenceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#DeleteProcurementPortalPreferenceRequest", name: "DeleteProcurementPortalPreferenceRequest")
    DeleteProcurementPortalPreferenceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#DeleteProcurementPortalPreferenceResponse", name: "DeleteProcurementPortalPreferenceResponse")
    DescriptionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#DescriptionString", name: "DescriptionString", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    DiscountsBreakdown = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#DiscountsBreakdown", name: "DiscountsBreakdown")
    DiscountsBreakdownAmount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#DiscountsBreakdownAmount", name: "DiscountsBreakdownAmount")
    DiscountsBreakdownAmountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#DiscountsBreakdownAmountList", name: "DiscountsBreakdownAmountList")
    EinvoiceDeliveryAttachmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#EinvoiceDeliveryAttachmentType", name: "EinvoiceDeliveryAttachmentType")
    EinvoiceDeliveryAttachmentTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#EinvoiceDeliveryAttachmentTypes", name: "EinvoiceDeliveryAttachmentTypes")
    EinvoiceDeliveryDocumentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#EinvoiceDeliveryDocumentType", name: "EinvoiceDeliveryDocumentType")
    EinvoiceDeliveryDocumentTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#EinvoiceDeliveryDocumentTypes", name: "EinvoiceDeliveryDocumentTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EinvoiceDeliveryPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#EinvoiceDeliveryPreference", name: "EinvoiceDeliveryPreference")
    EinvoiceDeliveryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#EinvoiceDeliveryStatus", name: "EinvoiceDeliveryStatus")
    EmailString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#EmailString", name: "EmailString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"})
    Entity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#Entity", name: "Entity")
    FeatureConfigurations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#FeatureConfigurations", name: "FeatureConfigurations")
    FeesBreakdown = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#FeesBreakdown", name: "FeesBreakdown")
    FeesBreakdownAmount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#FeesBreakdownAmount", name: "FeesBreakdownAmount")
    FeesBreakdownAmountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#FeesBreakdownAmountList", name: "FeesBreakdownAmountList")
    Filters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#Filters", name: "Filters")
    GetInvoicePDFRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#GetInvoicePDFRequest", name: "GetInvoicePDFRequest")
    GetInvoicePDFResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#GetInvoicePDFResponse", name: "GetInvoicePDFResponse")
    GetInvoiceUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#GetInvoiceUnitRequest", name: "GetInvoiceUnitRequest")
    GetInvoiceUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#GetInvoiceUnitResponse", name: "GetInvoiceUnitResponse")
    GetProcurementPortalPreferenceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#GetProcurementPortalPreferenceRequest", name: "GetProcurementPortalPreferenceRequest")
    GetProcurementPortalPreferenceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#GetProcurementPortalPreferenceResponse", name: "GetProcurementPortalPreferenceResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InternalServerException", name: "InternalServerException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingInternalServer", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvoiceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InvoiceConfiguration", name: "InvoiceConfiguration")
    InvoiceCurrencyAmount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InvoiceCurrencyAmount", name: "InvoiceCurrencyAmount")
    InvoiceFrequency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#InvoiceFrequency", name: "InvoiceFrequency")
    InvoicePDF = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InvoicePDF", name: "InvoicePDF")
    InvoiceProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InvoiceProfile", name: "InvoiceProfile")
    InvoiceSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#InvoiceSummaries", name: "InvoiceSummaries")
    InvoiceSummariesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InvoiceSummariesFilter", name: "InvoiceSummariesFilter")
    InvoiceSummariesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.invoicing#InvoiceSummariesMaxResults", name: "InvoiceSummariesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    InvoiceSummariesSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InvoiceSummariesSelector", name: "InvoiceSummariesSelector")
    InvoiceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InvoiceSummary", name: "InvoiceSummary")
    InvoiceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#InvoiceType", name: "InvoiceType")
    InvoiceUnit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InvoiceUnit", name: "InvoiceUnit")
    InvoiceUnitArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#InvoiceUnitArnString", name: "InvoiceUnitArnString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:[a-z0-9]+:[-a-z0-9]*:[0-9]{12}:[-a-zA-Z0-9/:_]+$"})
    InvoiceUnitArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#InvoiceUnitArns", name: "InvoiceUnitArns", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    InvoiceUnitName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#InvoiceUnitName", name: "InvoiceUnitName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^(?! )[\\p{L}\\p{N}\\p{Z}-_]*(?<! )$"})
    InvoiceUnitNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#InvoiceUnitNames", name: "InvoiceUnitNames")
    InvoiceUnitRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InvoiceUnitRule", name: "InvoiceUnitRule")
    InvoiceUnits = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#InvoiceUnits", name: "InvoiceUnits")
    LastModifiedTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.invoicing#LastModifiedTimestamp", name: "LastModifiedTimestamp")
    ListInvoiceSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ListInvoiceSummariesRequest", name: "ListInvoiceSummariesRequest")
    ListInvoiceSummariesResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#ListInvoiceSummariesResourceType", name: "ListInvoiceSummariesResourceType")
    ListInvoiceSummariesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ListInvoiceSummariesResponse", name: "ListInvoiceSummariesResponse")
    ListInvoiceUnitsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ListInvoiceUnitsRequest", name: "ListInvoiceUnitsRequest")
    ListInvoiceUnitsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ListInvoiceUnitsResponse", name: "ListInvoiceUnitsResponse")
    ListProcurementPortalPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ListProcurementPortalPreferencesRequest", name: "ListProcurementPortalPreferencesRequest")
    ListProcurementPortalPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ListProcurementPortalPreferencesResponse", name: "ListProcurementPortalPreferencesResponse")
    ListProcurementPortalSuppliersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ListProcurementPortalSuppliersRequest", name: "ListProcurementPortalSuppliersRequest")
    ListProcurementPortalSuppliersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ListProcurementPortalSuppliersResponse", name: "ListProcurementPortalSuppliersResponse")
    ListProcurementPortalsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ListProcurementPortalsRequest", name: "ListProcurementPortalsRequest")
    ListProcurementPortalsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ListProcurementPortalsResponse", name: "ListProcurementPortalsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MarketplacePunchOutPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#MarketplacePunchOutPreference", name: "MarketplacePunchOutPreference")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.invoicing#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.invoicing#MaxResultsInteger", name: "MaxResultsInteger", traits: {"smithy.api#default" => 500, "smithy.api#range" => {"min" => 1, "max" => 500}})
    Month = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.invoicing#Month", name: "Month", traits: {"smithy.api#range" => {"min" => 1, "max" => 12}})
    NextTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#NextTokenString", name: "NextTokenString", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    ProcurementPortal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ProcurementPortal", name: "ProcurementPortal")
    ProcurementPortalEnv = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#ProcurementPortalEnv", name: "ProcurementPortalEnv")
    ProcurementPortalIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#ProcurementPortalIdString", name: "ProcurementPortalIdString", traits: {"smithy.api#length" => {"min" => 1}})
    ProcurementPortalName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#ProcurementPortalName", name: "ProcurementPortalName")
    ProcurementPortalPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ProcurementPortalPreference", name: "ProcurementPortalPreference")
    ProcurementPortalPreferenceArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#ProcurementPortalPreferenceArnString", name: "ProcurementPortalPreferenceArnString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:aws:invoicing::[0-9]{12}:procurement-portal-preference/[-a-zA-Z0-9]+$"})
    ProcurementPortalPreferenceSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ProcurementPortalPreferenceSelector", name: "ProcurementPortalPreferenceSelector")
    ProcurementPortalPreferenceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#ProcurementPortalPreferenceStatus", name: "ProcurementPortalPreferenceStatus")
    ProcurementPortalPreferenceSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#ProcurementPortalPreferenceSummaries", name: "ProcurementPortalPreferenceSummaries")
    ProcurementPortalPreferenceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ProcurementPortalPreferenceSummary", name: "ProcurementPortalPreferenceSummary")
    ProcurementPortalSupplier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ProcurementPortalSupplier", name: "ProcurementPortalSupplier")
    ProcurementPortalSuppliers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#ProcurementPortalSuppliers", name: "ProcurementPortalSuppliers")
    ProcurementPortals = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#ProcurementPortals", name: "ProcurementPortals")
    ProfileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#ProfileList", name: "ProfileList")
    Protocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#Protocol", name: "Protocol")
    PurchaseOrderDataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#PurchaseOrderDataSource", name: "PurchaseOrderDataSource")
    PurchaseOrderDataSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#PurchaseOrderDataSourceType", name: "PurchaseOrderDataSourceType")
    PurchaseOrderDataSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#PurchaseOrderDataSources", name: "PurchaseOrderDataSources")
    PutProcurementPortalPreferenceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#PutProcurementPortalPreferenceRequest", name: "PutProcurementPortalPreferenceRequest")
    PutProcurementPortalPreferenceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#PutProcurementPortalPreferenceResponse", name: "PutProcurementPortalPreferenceResponse")
    ReceiverAddress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ReceiverAddress", name: "ReceiverAddress", traits: {"smithy.api#sensitive" => {}})
    ReceiverRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#ReceiverRole", name: "ReceiverRole")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingResourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ResourceTag", name: "ResourceTag")
    ResourceTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#ResourceTagKey", name: "ResourceTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ResourceTagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#ResourceTagKeyList", name: "ResourceTagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#ResourceTagList", name: "ResourceTagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#ResourceTagValue", name: "ResourceTagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    RuleAccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#RuleAccountIdList", name: "RuleAccountIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    SellerOfRecords = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#SellerOfRecords", name: "SellerOfRecords", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SendProcurementPortalValidationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#SendProcurementPortalValidationRequest", name: "SendProcurementPortalValidationRequest")
    SendProcurementPortalValidationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#SendProcurementPortalValidationResponse", name: "SendProcurementPortalValidationResponse")
    SensitiveBasicStringWithoutSpace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#SensitiveBasicStringWithoutSpace", name: "SensitiveBasicStringWithoutSpace", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^\\S+$", "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingServiceQuotaExceeded", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StringWithoutNewLine = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#StringWithoutNewLine", name: "StringWithoutNewLine", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^.*$"})
    SupplementalDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#SupplementalDocument", name: "SupplementalDocument")
    SupplementalDocumentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#SupplementalDocumentType", name: "SupplementalDocumentType")
    SupplementalDocuments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#SupplementalDocuments", name: "SupplementalDocuments")
    SupplierDomain = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#SupplierDomain", name: "SupplierDomain")
    SupplierIdString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#SupplierIdString", name: "SupplierIdString", traits: {"smithy.api#length" => {"min" => 1}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#TagResourceResponse", name: "TagResourceResponse")
    TagrisArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#TagrisArn", name: "TagrisArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:(invoicing)::[0-9]{12}:[-a-zA-Z0-9/:_]+$"})
    TaxAuthorityStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#TaxAuthorityStatus", name: "TaxAuthorityStatus")
    TaxInheritanceDisabledFlag = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.invoicing#TaxInheritanceDisabledFlag", name: "TaxInheritanceDisabledFlag", traits: {"smithy.api#default" => false})
    TaxesBreakdown = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#TaxesBreakdown", name: "TaxesBreakdown")
    TaxesBreakdownAmount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#TaxesBreakdownAmount", name: "TaxesBreakdownAmount")
    TaxesBreakdownAmountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#TaxesBreakdownAmountList", name: "TaxesBreakdownAmountList")
    TestEnvPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#TestEnvPreference", name: "TestEnvPreference")
    TestEnvPreferenceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#TestEnvPreferenceInput", name: "TestEnvPreferenceInput")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ThrottlingException", name: "ThrottlingException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingThrottling", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateInvoiceUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#UpdateInvoiceUnitRequest", name: "UpdateInvoiceUnitRequest")
    UpdateInvoiceUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#UpdateInvoiceUnitResponse", name: "UpdateInvoiceUnitResponse")
    UpdateProcurementPortalPreferenceStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#UpdateProcurementPortalPreferenceStatusRequest", name: "UpdateProcurementPortalPreferenceStatusRequest")
    UpdateProcurementPortalPreferenceStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#UpdateProcurementPortalPreferenceStatusResponse", name: "UpdateProcurementPortalPreferenceStatusResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ValidationException", name: "ValidationException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingValidation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#ValidationExceptionReason", name: "ValidationExceptionReason")
    VerifyProcurementPortalValidationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#VerifyProcurementPortalValidationRequest", name: "VerifyProcurementPortalValidationRequest")
    VerifyProcurementPortalValidationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#VerifyProcurementPortalValidationResponse", name: "VerifyProcurementPortalValidationResponse")
    Year = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.invoicing#Year", name: "Year", traits: {"smithy.api#range" => {"min" => 2005, "max" => 2050}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "message"))
    AccessDeniedException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, name: "resourceName"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString, name: "member"))
    AmountBreakdown.add_member(:sub_total_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "SubTotalAmount"))
    AmountBreakdown.add_member(:discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscountsBreakdown, name: "Discounts"))
    AmountBreakdown.add_member(:taxes, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxesBreakdown, name: "Taxes"))
    AmountBreakdown.add_member(:fees, ::Smithy::Schema::Shapes::MemberShape.new(target: FeesBreakdown, name: "Fees"))
    AmountBreakdown.type = Types::AmountBreakdown
    BatchGetInvoiceProfileRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "AccountIds", traits: {"smithy.api#required" => {}}))
    BatchGetInvoiceProfileRequest.type = Types::BatchGetInvoiceProfileRequest
    BatchGetInvoiceProfileResponse.add_member(:profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileList, name: "Profiles"))
    BatchGetInvoiceProfileResponse.type = Types::BatchGetInvoiceProfileResponse
    BillSourceAccountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString, name: "member"))
    BillType.add_member(:anniversary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANNIVERSARY", traits: {"smithy.api#enumValue" => "ANNIVERSARY"}))
    BillType.add_member(:purchase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PURCHASE", traits: {"smithy.api#enumValue" => "PURCHASE"}))
    BillType.add_member(:refund, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REFUND", traits: {"smithy.api#enumValue" => "REFUND"}))
    BillingEntity.add_member(:aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS", traits: {"smithy.api#enumValue" => "AWS"}))
    BillingEntity.add_member(:aws_marketplace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MARKETPLACE", traits: {"smithy.api#enumValue" => "AWS_MARKETPLACE"}))
    BillingPeriod.add_member(:month, ::Smithy::Schema::Shapes::MemberShape.new(target: Month, name: "Month", traits: {"smithy.api#required" => {}}))
    BillingPeriod.add_member(:year, ::Smithy::Schema::Shapes::MemberShape.new(target: Year, name: "Year", traits: {"smithy.api#required" => {}}))
    BillingPeriod.type = Types::BillingPeriod
    BuyerDomain.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkID", traits: {"smithy.api#enumValue" => "NetworkID"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "message"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "resourceType"))
    ConflictException.type = Types::ConflictException
    ConnectionTestingMethod.add_member(:prod_env_dollar_test, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROD_ENV_DOLLAR_TEST", traits: {"smithy.api#enumValue" => "PROD_ENV_DOLLAR_TEST"}))
    ConnectionTestingMethod.add_member(:test_env_replay_test, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST_ENV_REPLAY_TEST", traits: {"smithy.api#enumValue" => "TEST_ENV_REPLAY_TEST"}))
    Contact.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "Name"))
    Contact.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailString, name: "Email"))
    Contact.type = Types::Contact
    Contacts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Contact, name: "member"))
    CreateInvoiceUnitRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateInvoiceUnitRequest.add_member(:invoice_receiver, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString, name: "InvoiceReceiver", traits: {"smithy.api#required" => {}}))
    CreateInvoiceUnitRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    CreateInvoiceUnitRequest.add_member(:tax_inheritance_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxInheritanceDisabledFlag, name: "TaxInheritanceDisabled", traits: {"smithy.api#default" => false}))
    CreateInvoiceUnitRequest.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitRule, name: "Rule", traits: {"smithy.api#required" => {}}))
    CreateInvoiceUnitRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "ResourceTags"))
    CreateInvoiceUnitRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateInvoiceUnitRequest.type = Types::CreateInvoiceUnitRequest
    CreateInvoiceUnitResponse.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, name: "InvoiceUnitArn"))
    CreateInvoiceUnitResponse.type = Types::CreateInvoiceUnitResponse
    CreateProcurementPortalPreferenceRequest.add_member(:procurement_portal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalName, name: "ProcurementPortalName", traits: {"smithy.api#required" => {}}))
    CreateProcurementPortalPreferenceRequest.add_member(:buyer_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: BuyerDomain, name: "BuyerDomain", traits: {"smithy.api#required" => {}}))
    CreateProcurementPortalPreferenceRequest.add_member(:buyer_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "BuyerIdentifier", traits: {"smithy.api#required" => {}}))
    CreateProcurementPortalPreferenceRequest.add_member(:supplier_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplierDomain, name: "SupplierDomain", traits: {"smithy.api#required" => {}}))
    CreateProcurementPortalPreferenceRequest.add_member(:supplier_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "SupplierIdentifier", traits: {"smithy.api#required" => {}}))
    CreateProcurementPortalPreferenceRequest.add_member(:selector, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceSelector, name: "Selector"))
    CreateProcurementPortalPreferenceRequest.add_member(:procurement_portal_shared_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBasicStringWithoutSpace, name: "ProcurementPortalSharedSecret"))
    CreateProcurementPortalPreferenceRequest.add_member(:procurement_portal_instance_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ProcurementPortalInstanceEndpoint"))
    CreateProcurementPortalPreferenceRequest.add_member(:test_env_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: TestEnvPreferenceInput, name: "TestEnvPreference"))
    CreateProcurementPortalPreferenceRequest.add_member(:einvoice_delivery_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "EinvoiceDeliveryEnabled", traits: {"smithy.api#required" => {}}))
    CreateProcurementPortalPreferenceRequest.add_member(:einvoice_delivery_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: EinvoiceDeliveryPreference, name: "EinvoiceDeliveryPreference"))
    CreateProcurementPortalPreferenceRequest.add_member(:purchase_order_retrieval_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "PurchaseOrderRetrievalEnabled", traits: {"smithy.api#required" => {}}))
    CreateProcurementPortalPreferenceRequest.add_member(:marketplace_punch_out_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "MarketplacePunchOutEnabled"))
    CreateProcurementPortalPreferenceRequest.add_member(:marketplace_punch_out_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplacePunchOutPreference, name: "MarketplacePunchOutPreference"))
    CreateProcurementPortalPreferenceRequest.add_member(:contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: Contacts, name: "Contacts", traits: {"smithy.api#required" => {}}))
    CreateProcurementPortalPreferenceRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "ResourceTags"))
    CreateProcurementPortalPreferenceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateProcurementPortalPreferenceRequest.type = Types::CreateProcurementPortalPreferenceRequest
    CreateProcurementPortalPreferenceResponse.add_member(:procurement_portal_preference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceArnString, name: "ProcurementPortalPreferenceArn", traits: {"smithy.api#required" => {}}))
    CreateProcurementPortalPreferenceResponse.type = Types::CreateProcurementPortalPreferenceResponse
    CurrencyExchangeDetails.add_member(:source_currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "SourceCurrencyCode"))
    CurrencyExchangeDetails.add_member(:target_currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "TargetCurrencyCode"))
    CurrencyExchangeDetails.add_member(:rate, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "Rate"))
    CurrencyExchangeDetails.type = Types::CurrencyExchangeDetails
    DateInterval.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "StartDate", traits: {"smithy.api#required" => {}}))
    DateInterval.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EndDate", traits: {"smithy.api#required" => {}}))
    DateInterval.type = Types::DateInterval
    DeleteInvoiceUnitRequest.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, name: "InvoiceUnitArn", traits: {"smithy.api#required" => {}}))
    DeleteInvoiceUnitRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteInvoiceUnitRequest.type = Types::DeleteInvoiceUnitRequest
    DeleteInvoiceUnitResponse.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, name: "InvoiceUnitArn"))
    DeleteInvoiceUnitResponse.type = Types::DeleteInvoiceUnitResponse
    DeleteProcurementPortalPreferenceRequest.add_member(:procurement_portal_preference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceArnString, name: "ProcurementPortalPreferenceArn", traits: {"smithy.api#required" => {}}))
    DeleteProcurementPortalPreferenceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteProcurementPortalPreferenceRequest.type = Types::DeleteProcurementPortalPreferenceRequest
    DeleteProcurementPortalPreferenceResponse.add_member(:procurement_portal_preference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceArnString, name: "ProcurementPortalPreferenceArn", traits: {"smithy.api#required" => {}}))
    DeleteProcurementPortalPreferenceResponse.type = Types::DeleteProcurementPortalPreferenceResponse
    DiscountsBreakdown.add_member(:breakdown, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscountsBreakdownAmountList, name: "Breakdown"))
    DiscountsBreakdown.add_member(:total_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "TotalAmount"))
    DiscountsBreakdown.type = Types::DiscountsBreakdown
    DiscountsBreakdownAmount.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "Description"))
    DiscountsBreakdownAmount.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "Amount"))
    DiscountsBreakdownAmount.add_member(:rate, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "Rate"))
    DiscountsBreakdownAmount.type = Types::DiscountsBreakdownAmount
    DiscountsBreakdownAmountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscountsBreakdownAmount, name: "member"))
    EinvoiceDeliveryAttachmentType.add_member(:invoice_pdf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVOICE_PDF", traits: {"smithy.api#enumValue" => "INVOICE_PDF"}))
    EinvoiceDeliveryAttachmentType.add_member(:rfp_pdf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RFP_PDF", traits: {"smithy.api#enumValue" => "RFP_PDF"}))
    EinvoiceDeliveryAttachmentTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EinvoiceDeliveryAttachmentType, name: "member"))
    EinvoiceDeliveryDocumentType.add_member(:aws_cloud_invoice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_CLOUD_INVOICE", traits: {"smithy.api#enumValue" => "AWS_CLOUD_INVOICE"}))
    EinvoiceDeliveryDocumentType.add_member(:aws_cloud_credit_memo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_CLOUD_CREDIT_MEMO", traits: {"smithy.api#enumValue" => "AWS_CLOUD_CREDIT_MEMO"}))
    EinvoiceDeliveryDocumentType.add_member(:aws_marketplace_invoice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MARKETPLACE_INVOICE", traits: {"smithy.api#enumValue" => "AWS_MARKETPLACE_INVOICE"}))
    EinvoiceDeliveryDocumentType.add_member(:aws_marketplace_credit_memo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MARKETPLACE_CREDIT_MEMO", traits: {"smithy.api#enumValue" => "AWS_MARKETPLACE_CREDIT_MEMO"}))
    EinvoiceDeliveryDocumentType.add_member(:aws_request_for_payment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_REQUEST_FOR_PAYMENT", traits: {"smithy.api#enumValue" => "AWS_REQUEST_FOR_PAYMENT"}))
    EinvoiceDeliveryDocumentTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EinvoiceDeliveryDocumentType, name: "member"))
    EinvoiceDeliveryPreference.add_member(:einvoice_delivery_document_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EinvoiceDeliveryDocumentTypes, name: "EinvoiceDeliveryDocumentTypes", traits: {"smithy.api#required" => {}}))
    EinvoiceDeliveryPreference.add_member(:einvoice_delivery_attachment_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EinvoiceDeliveryAttachmentTypes, name: "EinvoiceDeliveryAttachmentTypes"))
    EinvoiceDeliveryPreference.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol", traits: {"smithy.api#required" => {}}))
    EinvoiceDeliveryPreference.add_member(:purchase_order_data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOrderDataSources, name: "PurchaseOrderDataSources", traits: {"smithy.api#required" => {}}))
    EinvoiceDeliveryPreference.add_member(:connection_testing_method, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionTestingMethod, name: "ConnectionTestingMethod", traits: {"smithy.api#required" => {}}))
    EinvoiceDeliveryPreference.add_member(:einvoice_delivery_activation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "EinvoiceDeliveryActivationDate", traits: {"smithy.api#required" => {}}))
    EinvoiceDeliveryPreference.type = Types::EinvoiceDeliveryPreference
    EinvoiceDeliveryStatus.add_member(:delivered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELIVERED", traits: {"smithy.api#enumValue" => "DELIVERED"}))
    EinvoiceDeliveryStatus.add_member(:not_delivered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_DELIVERED", traits: {"smithy.api#enumValue" => "NOT_DELIVERED"}))
    Entity.add_member(:invoicing_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "InvoicingEntity"))
    Entity.add_member(:billing_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingEntity, name: "BillingEntity"))
    Entity.type = Types::Entity
    FeatureConfigurations.add_member(:invoice_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceConfiguration, name: "InvoiceConfiguration"))
    FeatureConfigurations.type = Types::FeatureConfigurations
    FeesBreakdown.add_member(:breakdown, ::Smithy::Schema::Shapes::MemberShape.new(target: FeesBreakdownAmountList, name: "Breakdown"))
    FeesBreakdown.add_member(:total_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "TotalAmount"))
    FeesBreakdown.type = Types::FeesBreakdown
    FeesBreakdownAmount.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "Description"))
    FeesBreakdownAmount.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "Amount"))
    FeesBreakdownAmount.add_member(:rate, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "Rate"))
    FeesBreakdownAmount.type = Types::FeesBreakdownAmount
    FeesBreakdownAmountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FeesBreakdownAmount, name: "member"))
    Filters.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitNames, name: "Names"))
    Filters.add_member(:invoice_receivers, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "InvoiceReceivers"))
    Filters.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "Accounts"))
    Filters.add_member(:bill_source_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "BillSourceAccounts"))
    Filters.type = Types::Filters
    GetInvoicePDFRequest.add_member(:invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithoutNewLine, name: "InvoiceId", traits: {"smithy.api#required" => {}}))
    GetInvoicePDFRequest.type = Types::GetInvoicePDFRequest
    GetInvoicePDFResponse.add_member(:invoice_pdf, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoicePDF, name: "InvoicePDF"))
    GetInvoicePDFResponse.type = Types::GetInvoicePDFResponse
    GetInvoiceUnitRequest.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, name: "InvoiceUnitArn", traits: {"smithy.api#required" => {}}))
    GetInvoiceUnitRequest.add_member(:as_of, ::Smithy::Schema::Shapes::MemberShape.new(target: AsOfTimestamp, name: "AsOf"))
    GetInvoiceUnitRequest.type = Types::GetInvoiceUnitRequest
    GetInvoiceUnitResponse.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, name: "InvoiceUnitArn"))
    GetInvoiceUnitResponse.add_member(:invoice_receiver, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString, name: "InvoiceReceiver"))
    GetInvoiceUnitResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitName, name: "Name"))
    GetInvoiceUnitResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    GetInvoiceUnitResponse.add_member(:tax_inheritance_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxInheritanceDisabledFlag, name: "TaxInheritanceDisabled", traits: {"smithy.api#default" => nil}))
    GetInvoiceUnitResponse.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitRule, name: "Rule"))
    GetInvoiceUnitResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedTimestamp, name: "LastModified"))
    GetInvoiceUnitResponse.type = Types::GetInvoiceUnitResponse
    GetProcurementPortalPreferenceRequest.add_member(:procurement_portal_preference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceArnString, name: "ProcurementPortalPreferenceArn", traits: {"smithy.api#required" => {}}))
    GetProcurementPortalPreferenceRequest.type = Types::GetProcurementPortalPreferenceRequest
    GetProcurementPortalPreferenceResponse.add_member(:procurement_portal_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreference, name: "ProcurementPortalPreference", traits: {"smithy.api#required" => {}}))
    GetProcurementPortalPreferenceResponse.type = Types::GetProcurementPortalPreferenceResponse
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "message"))
    InternalServerException.type = Types::InternalServerException
    InvoiceConfiguration.add_member(:document_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EinvoiceDeliveryDocumentTypes, name: "DocumentTypes"))
    InvoiceConfiguration.add_member(:attachment_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EinvoiceDeliveryAttachmentTypes, name: "AttachmentTypes"))
    InvoiceConfiguration.type = Types::InvoiceConfiguration
    InvoiceCurrencyAmount.add_member(:total_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "TotalAmount"))
    InvoiceCurrencyAmount.add_member(:total_amount_before_tax, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "TotalAmountBeforeTax"))
    InvoiceCurrencyAmount.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "CurrencyCode"))
    InvoiceCurrencyAmount.add_member(:amount_breakdown, ::Smithy::Schema::Shapes::MemberShape.new(target: AmountBreakdown, name: "AmountBreakdown"))
    InvoiceCurrencyAmount.add_member(:currency_exchange_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyExchangeDetails, name: "CurrencyExchangeDetails"))
    InvoiceCurrencyAmount.type = Types::InvoiceCurrencyAmount
    InvoiceFrequency.add_member(:one_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_TIME", traits: {"smithy.api#enumValue" => "ONE_TIME"}))
    InvoiceFrequency.add_member(:recurring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECURRING", traits: {"smithy.api#enumValue" => "RECURRING"}))
    InvoicePDF.add_member(:invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithoutNewLine, name: "InvoiceId"))
    InvoicePDF.add_member(:document_url, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithoutNewLine, name: "DocumentUrl"))
    InvoicePDF.add_member(:document_url_expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "DocumentUrlExpirationDate"))
    InvoicePDF.add_member(:supplemental_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplementalDocuments, name: "SupplementalDocuments"))
    InvoicePDF.type = Types::InvoicePDF
    InvoiceProfile.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString, name: "AccountId"))
    InvoiceProfile.add_member(:receiver_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ReceiverName"))
    InvoiceProfile.add_member(:receiver_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverAddress, name: "ReceiverAddress"))
    InvoiceProfile.add_member(:receiver_email, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBasicStringWithoutSpace, name: "ReceiverEmail"))
    InvoiceProfile.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "Issuer"))
    InvoiceProfile.add_member(:tax_registration_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBasicStringWithoutSpace, name: "TaxRegistrationNumber"))
    InvoiceProfile.type = Types::InvoiceProfile
    InvoiceSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceSummary, name: "member"))
    InvoiceSummariesFilter.add_member(:time_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: DateInterval, name: "TimeInterval"))
    InvoiceSummariesFilter.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "BillingPeriod"))
    InvoiceSummariesFilter.add_member(:invoicing_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "InvoicingEntity"))
    InvoiceSummariesFilter.add_member(:receiver_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverRole, name: "ReceiverRole"))
    InvoiceSummariesFilter.type = Types::InvoiceSummariesFilter
    InvoiceSummariesSelector.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ListInvoiceSummariesResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    InvoiceSummariesSelector.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithoutNewLine, name: "Value", traits: {"smithy.api#required" => {}}))
    InvoiceSummariesSelector.type = Types::InvoiceSummariesSelector
    InvoiceSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString, name: "AccountId"))
    InvoiceSummary.add_member(:invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "InvoiceId"))
    InvoiceSummary.add_member(:issued_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "IssuedDate"))
    InvoiceSummary.add_member(:due_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "DueDate"))
    InvoiceSummary.add_member(:bill_source_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: BillSourceAccountList, name: "BillSourceAccounts"))
    InvoiceSummary.add_member(:bill_source_accounts_total_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "BillSourceAccountsTotalCount"))
    InvoiceSummary.add_member(:receiver_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverRole, name: "ReceiverRole"))
    InvoiceSummary.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Entity, name: "Entity"))
    InvoiceSummary.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, name: "BillingPeriod"))
    InvoiceSummary.add_member(:invoice_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceFrequency, name: "InvoiceFrequency"))
    InvoiceSummary.add_member(:bill_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BillType, name: "BillType"))
    InvoiceSummary.add_member(:invoice_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceType, name: "InvoiceType"))
    InvoiceSummary.add_member(:commercial_invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "CommercialInvoiceId"))
    InvoiceSummary.add_member(:original_invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "OriginalInvoiceId"))
    InvoiceSummary.add_member(:purchase_order_number, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "PurchaseOrderNumber"))
    InvoiceSummary.add_member(:einvoice_delivery_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EinvoiceDeliveryStatus, name: "EinvoiceDeliveryStatus"))
    InvoiceSummary.add_member(:tax_authority_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxAuthorityStatus, name: "TaxAuthorityStatus"))
    InvoiceSummary.add_member(:base_currency_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceCurrencyAmount, name: "BaseCurrencyAmount"))
    InvoiceSummary.add_member(:tax_currency_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceCurrencyAmount, name: "TaxCurrencyAmount"))
    InvoiceSummary.add_member(:payment_currency_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceCurrencyAmount, name: "PaymentCurrencyAmount"))
    InvoiceSummary.type = Types::InvoiceSummary
    InvoiceType.add_member(:invoice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVOICE", traits: {"smithy.api#enumValue" => "INVOICE"}))
    InvoiceType.add_member(:credit_memo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_MEMO", traits: {"smithy.api#enumValue" => "CREDIT_MEMO"}))
    InvoiceType.add_member(:payment_receipt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAYMENT_RECEIPT", traits: {"smithy.api#enumValue" => "PAYMENT_RECEIPT"}))
    InvoiceUnit.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, name: "InvoiceUnitArn"))
    InvoiceUnit.add_member(:invoice_receiver, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString, name: "InvoiceReceiver"))
    InvoiceUnit.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitName, name: "Name"))
    InvoiceUnit.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    InvoiceUnit.add_member(:tax_inheritance_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxInheritanceDisabledFlag, name: "TaxInheritanceDisabled", traits: {"smithy.api#default" => nil}))
    InvoiceUnit.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitRule, name: "Rule"))
    InvoiceUnit.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedTimestamp, name: "LastModified"))
    InvoiceUnit.type = Types::InvoiceUnit
    InvoiceUnitArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, name: "member"))
    InvoiceUnitNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitName, name: "member"))
    InvoiceUnitRule.add_member(:linked_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAccountIdList, name: "LinkedAccounts"))
    InvoiceUnitRule.add_member(:bill_source_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleAccountIdList, name: "BillSourceAccounts"))
    InvoiceUnitRule.type = Types::InvoiceUnitRule
    InvoiceUnits.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnit, name: "member"))
    ListInvoiceSummariesRequest.add_member(:selector, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceSummariesSelector, name: "Selector", traits: {"smithy.api#required" => {}}))
    ListInvoiceSummariesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceSummariesFilter, name: "Filter"))
    ListInvoiceSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, name: "NextToken"))
    ListInvoiceSummariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceSummariesMaxResults, name: "MaxResults"))
    ListInvoiceSummariesRequest.type = Types::ListInvoiceSummariesRequest
    ListInvoiceSummariesResourceType.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    ListInvoiceSummariesResourceType.add_member(:invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVOICE_ID", traits: {"smithy.api#enumValue" => "INVOICE_ID"}))
    ListInvoiceSummariesResponse.add_member(:invoice_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceSummaries, name: "InvoiceSummaries", traits: {"smithy.api#required" => {}}))
    ListInvoiceSummariesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, name: "NextToken"))
    ListInvoiceSummariesResponse.type = Types::ListInvoiceSummariesResponse
    ListInvoiceUnitsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    ListInvoiceUnitsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, name: "NextToken"))
    ListInvoiceUnitsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, name: "MaxResults", traits: {"smithy.api#default" => 500}))
    ListInvoiceUnitsRequest.add_member(:as_of, ::Smithy::Schema::Shapes::MemberShape.new(target: AsOfTimestamp, name: "AsOf"))
    ListInvoiceUnitsRequest.type = Types::ListInvoiceUnitsRequest
    ListInvoiceUnitsResponse.add_member(:invoice_units, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnits, name: "InvoiceUnits"))
    ListInvoiceUnitsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, name: "NextToken"))
    ListInvoiceUnitsResponse.type = Types::ListInvoiceUnitsResponse
    ListProcurementPortalPreferencesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "NextToken"))
    ListProcurementPortalPreferencesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 100}))
    ListProcurementPortalPreferencesRequest.type = Types::ListProcurementPortalPreferencesRequest
    ListProcurementPortalPreferencesResponse.add_member(:procurement_portal_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceSummaries, name: "ProcurementPortalPreferences"))
    ListProcurementPortalPreferencesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "NextToken"))
    ListProcurementPortalPreferencesResponse.type = Types::ListProcurementPortalPreferencesResponse
    ListProcurementPortalSuppliersRequest.add_member(:portal_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalIdString, name: "PortalIdentifier", traits: {"smithy.api#required" => {}}))
    ListProcurementPortalSuppliersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "NextToken"))
    ListProcurementPortalSuppliersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 100}))
    ListProcurementPortalSuppliersRequest.type = Types::ListProcurementPortalSuppliersRequest
    ListProcurementPortalSuppliersResponse.add_member(:procurement_portal_suppliers, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalSuppliers, name: "ProcurementPortalSuppliers", traits: {"smithy.api#required" => {}}))
    ListProcurementPortalSuppliersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "NextToken"))
    ListProcurementPortalSuppliersResponse.type = Types::ListProcurementPortalSuppliersResponse
    ListProcurementPortalsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "NextToken"))
    ListProcurementPortalsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 100}))
    ListProcurementPortalsRequest.type = Types::ListProcurementPortalsRequest
    ListProcurementPortalsResponse.add_member(:procurement_portals, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortals, name: "ProcurementPortals", traits: {"smithy.api#required" => {}}))
    ListProcurementPortalsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "NextToken"))
    ListProcurementPortalsResponse.type = Types::ListProcurementPortalsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "ResourceTags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MarketplacePunchOutPreference.add_member(:approval_request_redirect_url, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ApprovalRequestRedirectUrl"))
    MarketplacePunchOutPreference.type = Types::MarketplacePunchOutPreference
    ProcurementPortal.add_member(:portal_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalIdString, name: "PortalIdentifier", traits: {"smithy.api#required" => {}}))
    ProcurementPortal.add_member(:portal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalName, name: "PortalName", traits: {"smithy.api#required" => {}}))
    ProcurementPortal.add_member(:portal_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "PortalDisplayName"))
    ProcurementPortal.add_member(:default_feature_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureConfigurations, name: "DefaultFeatureConfigurations"))
    ProcurementPortal.type = Types::ProcurementPortal
    ProcurementPortalEnv.add_member(:prod, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROD", traits: {"smithy.api#enumValue" => "PROD"}))
    ProcurementPortalEnv.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST", traits: {"smithy.api#enumValue" => "TEST"}))
    ProcurementPortalName.add_member(:sap_business_network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAP_BUSINESS_NETWORK", traits: {"smithy.api#enumValue" => "SAP_BUSINESS_NETWORK"}))
    ProcurementPortalName.add_member(:coupa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUPA", traits: {"smithy.api#enumValue" => "COUPA"}))
    ProcurementPortalPreference.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString, name: "AwsAccountId", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreference.add_member(:procurement_portal_preference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceArnString, name: "ProcurementPortalPreferenceArn", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreference.add_member(:procurement_portal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalName, name: "ProcurementPortalName", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreference.add_member(:buyer_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: BuyerDomain, name: "BuyerDomain", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreference.add_member(:buyer_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "BuyerIdentifier", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreference.add_member(:supplier_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplierDomain, name: "SupplierDomain", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreference.add_member(:supplier_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "SupplierIdentifier", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreference.add_member(:selector, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceSelector, name: "Selector"))
    ProcurementPortalPreference.add_member(:procurement_portal_shared_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ProcurementPortalSharedSecret"))
    ProcurementPortalPreference.add_member(:procurement_portal_instance_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ProcurementPortalInstanceEndpoint"))
    ProcurementPortalPreference.add_member(:purchase_order_retrieval_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "PurchaseOrderRetrievalEndpoint"))
    ProcurementPortalPreference.add_member(:test_env_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: TestEnvPreference, name: "TestEnvPreference"))
    ProcurementPortalPreference.add_member(:einvoice_delivery_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "EinvoiceDeliveryEnabled", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreference.add_member(:einvoice_delivery_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: EinvoiceDeliveryPreference, name: "EinvoiceDeliveryPreference"))
    ProcurementPortalPreference.add_member(:purchase_order_retrieval_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "PurchaseOrderRetrievalEnabled", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreference.add_member(:marketplace_punch_out_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "MarketplacePunchOutEnabled"))
    ProcurementPortalPreference.add_member(:marketplace_punch_out_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplacePunchOutPreference, name: "MarketplacePunchOutPreference"))
    ProcurementPortalPreference.add_member(:contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: Contacts, name: "Contacts"))
    ProcurementPortalPreference.add_member(:einvoice_delivery_preference_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceStatus, name: "EinvoiceDeliveryPreferenceStatus"))
    ProcurementPortalPreference.add_member(:einvoice_delivery_preference_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "EinvoiceDeliveryPreferenceStatusReason"))
    ProcurementPortalPreference.add_member(:purchase_order_retrieval_preference_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceStatus, name: "PurchaseOrderRetrievalPreferenceStatus"))
    ProcurementPortalPreference.add_member(:purchase_order_retrieval_preference_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "PurchaseOrderRetrievalPreferenceStatusReason"))
    ProcurementPortalPreference.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "Version", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreference.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreateDate", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreference.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdateDate", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreference.type = Types::ProcurementPortalPreference
    ProcurementPortalPreferenceSelector.add_member(:invoice_unit_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArns, name: "InvoiceUnitArns"))
    ProcurementPortalPreferenceSelector.add_member(:seller_of_records, ::Smithy::Schema::Shapes::MemberShape.new(target: SellerOfRecords, name: "SellerOfRecords"))
    ProcurementPortalPreferenceSelector.type = Types::ProcurementPortalPreferenceSelector
    ProcurementPortalPreferenceStatus.add_member(:pending_verification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_VERIFICATION", traits: {"smithy.api#enumValue" => "PENDING_VERIFICATION"}))
    ProcurementPortalPreferenceStatus.add_member(:validated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATED", traits: {"smithy.api#enumValue" => "VALIDATED"}))
    ProcurementPortalPreferenceStatus.add_member(:test_initialized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST_INITIALIZED", traits: {"smithy.api#enumValue" => "TEST_INITIALIZED"}))
    ProcurementPortalPreferenceStatus.add_member(:test_initialization_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST_INITIALIZATION_FAILED", traits: {"smithy.api#enumValue" => "TEST_INITIALIZATION_FAILED"}))
    ProcurementPortalPreferenceStatus.add_member(:test_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST_FAILED", traits: {"smithy.api#enumValue" => "TEST_FAILED"}))
    ProcurementPortalPreferenceStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ProcurementPortalPreferenceStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    ProcurementPortalPreferenceSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceSummary, name: "member"))
    ProcurementPortalPreferenceSummary.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString, name: "AwsAccountId", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreferenceSummary.add_member(:procurement_portal_preference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceArnString, name: "ProcurementPortalPreferenceArn", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreferenceSummary.add_member(:procurement_portal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalName, name: "ProcurementPortalName", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreferenceSummary.add_member(:buyer_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: BuyerDomain, name: "BuyerDomain", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreferenceSummary.add_member(:buyer_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "BuyerIdentifier", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreferenceSummary.add_member(:supplier_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplierDomain, name: "SupplierDomain", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreferenceSummary.add_member(:supplier_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "SupplierIdentifier", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreferenceSummary.add_member(:selector, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceSelector, name: "Selector"))
    ProcurementPortalPreferenceSummary.add_member(:einvoice_delivery_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "EinvoiceDeliveryEnabled", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreferenceSummary.add_member(:purchase_order_retrieval_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "PurchaseOrderRetrievalEnabled", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreferenceSummary.add_member(:marketplace_punch_out_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "MarketplacePunchOutEnabled"))
    ProcurementPortalPreferenceSummary.add_member(:einvoice_delivery_preference_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceStatus, name: "EinvoiceDeliveryPreferenceStatus"))
    ProcurementPortalPreferenceSummary.add_member(:einvoice_delivery_preference_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "EinvoiceDeliveryPreferenceStatusReason"))
    ProcurementPortalPreferenceSummary.add_member(:purchase_order_retrieval_preference_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceStatus, name: "PurchaseOrderRetrievalPreferenceStatus"))
    ProcurementPortalPreferenceSummary.add_member(:purchase_order_retrieval_preference_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "PurchaseOrderRetrievalPreferenceStatusReason"))
    ProcurementPortalPreferenceSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "Version", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreferenceSummary.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreateDate", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreferenceSummary.add_member(:last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdateDate", traits: {"smithy.api#required" => {}}))
    ProcurementPortalPreferenceSummary.type = Types::ProcurementPortalPreferenceSummary
    ProcurementPortalSupplier.add_member(:supplier_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplierIdString, name: "SupplierIdentifier", traits: {"smithy.api#required" => {}}))
    ProcurementPortalSupplier.add_member(:seller_of_record, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "SellerOfRecord"))
    ProcurementPortalSupplier.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "CountryCode"))
    ProcurementPortalSupplier.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalEnv, name: "Environment"))
    ProcurementPortalSupplier.type = Types::ProcurementPortalSupplier
    ProcurementPortalSuppliers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalSupplier, name: "member"))
    ProcurementPortals.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortal, name: "member"))
    ProfileList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceProfile, name: "member"))
    Protocol.add_member(:cxml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CXML", traits: {"smithy.api#enumValue" => "CXML"}))
    PurchaseOrderDataSource.add_member(:einvoice_delivery_document_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EinvoiceDeliveryDocumentType, name: "EinvoiceDeliveryDocumentType"))
    PurchaseOrderDataSource.add_member(:purchase_order_data_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOrderDataSourceType, name: "PurchaseOrderDataSourceType"))
    PurchaseOrderDataSource.type = Types::PurchaseOrderDataSource
    PurchaseOrderDataSourceType.add_member(:associated_purchase_order_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATED_PURCHASE_ORDER_REQUIRED", traits: {"smithy.api#enumValue" => "ASSOCIATED_PURCHASE_ORDER_REQUIRED"}))
    PurchaseOrderDataSourceType.add_member(:purchase_order_not_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PURCHASE_ORDER_NOT_REQUIRED", traits: {"smithy.api#enumValue" => "PURCHASE_ORDER_NOT_REQUIRED"}))
    PurchaseOrderDataSources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PurchaseOrderDataSource, name: "member"))
    PutProcurementPortalPreferenceRequest.add_member(:procurement_portal_preference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceArnString, name: "ProcurementPortalPreferenceArn", traits: {"smithy.api#required" => {}}))
    PutProcurementPortalPreferenceRequest.add_member(:selector, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceSelector, name: "Selector"))
    PutProcurementPortalPreferenceRequest.add_member(:procurement_portal_shared_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBasicStringWithoutSpace, name: "ProcurementPortalSharedSecret"))
    PutProcurementPortalPreferenceRequest.add_member(:procurement_portal_instance_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ProcurementPortalInstanceEndpoint"))
    PutProcurementPortalPreferenceRequest.add_member(:test_env_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: TestEnvPreferenceInput, name: "TestEnvPreference"))
    PutProcurementPortalPreferenceRequest.add_member(:einvoice_delivery_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "EinvoiceDeliveryEnabled", traits: {"smithy.api#required" => {}}))
    PutProcurementPortalPreferenceRequest.add_member(:einvoice_delivery_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: EinvoiceDeliveryPreference, name: "EinvoiceDeliveryPreference"))
    PutProcurementPortalPreferenceRequest.add_member(:purchase_order_retrieval_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "PurchaseOrderRetrievalEnabled", traits: {"smithy.api#required" => {}}))
    PutProcurementPortalPreferenceRequest.add_member(:marketplace_punch_out_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "MarketplacePunchOutEnabled"))
    PutProcurementPortalPreferenceRequest.add_member(:marketplace_punch_out_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplacePunchOutPreference, name: "MarketplacePunchOutPreference"))
    PutProcurementPortalPreferenceRequest.add_member(:contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: Contacts, name: "Contacts", traits: {"smithy.api#required" => {}}))
    PutProcurementPortalPreferenceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    PutProcurementPortalPreferenceRequest.type = Types::PutProcurementPortalPreferenceRequest
    PutProcurementPortalPreferenceResponse.add_member(:procurement_portal_preference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceArnString, name: "ProcurementPortalPreferenceArn", traits: {"smithy.api#required" => {}}))
    PutProcurementPortalPreferenceResponse.type = Types::PutProcurementPortalPreferenceResponse
    ReceiverAddress.add_member(:address_line1, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "AddressLine1"))
    ReceiverAddress.add_member(:address_line2, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "AddressLine2"))
    ReceiverAddress.add_member(:address_line3, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "AddressLine3"))
    ReceiverAddress.add_member(:district_or_county, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "DistrictOrCounty"))
    ReceiverAddress.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "City"))
    ReceiverAddress.add_member(:state_or_region, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "StateOrRegion"))
    ReceiverAddress.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "CountryCode"))
    ReceiverAddress.add_member(:company_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "CompanyName"))
    ReceiverAddress.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "PostalCode"))
    ReceiverAddress.type = Types::ReceiverAddress
    ReceiverRole.add_member(:seller, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELLER", traits: {"smithy.api#enumValue" => "SELLER"}))
    ReceiverRole.add_member(:reseller, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESELLER", traits: {"smithy.api#enumValue" => "RESELLER"}))
    ReceiverRole.add_member(:buyer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUYER", traits: {"smithy.api#enumValue" => "BUYER"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "message"))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, name: "resourceName"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    ResourceTag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    ResourceTag.type = Types::ResourceTag
    ResourceTagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKey, name: "member"))
    ResourceTagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTag, name: "member"))
    RuleAccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString, name: "member"))
    SellerOfRecords.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "member"))
    SendProcurementPortalValidationRequest.add_member(:procurement_portal_preference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceArnString, name: "ProcurementPortalPreferenceArn", traits: {"smithy.api#required" => {}}))
    SendProcurementPortalValidationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    SendProcurementPortalValidationRequest.type = Types::SendProcurementPortalValidationRequest
    SendProcurementPortalValidationResponse.add_member(:procurement_portal_preference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceArnString, name: "ProcurementPortalPreferenceArn", traits: {"smithy.api#required" => {}}))
    SendProcurementPortalValidationResponse.type = Types::SendProcurementPortalValidationResponse
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SupplementalDocument.add_member(:document_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplementalDocumentType, name: "DocumentType"))
    SupplementalDocument.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithoutNewLine, name: "DocumentId"))
    SupplementalDocument.add_member(:document_url, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithoutNewLine, name: "DocumentUrl"))
    SupplementalDocument.add_member(:document_url_expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "DocumentUrlExpirationDate"))
    SupplementalDocument.type = Types::SupplementalDocument
    SupplementalDocumentType.add_member(:government_invoice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOVERNMENT_INVOICE", traits: {"smithy.api#enumValue" => "GOVERNMENT_INVOICE"}))
    SupplementalDocumentType.add_member(:tax_e_invoice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAX_E_INVOICE", traits: {"smithy.api#enumValue" => "TAX_E_INVOICE"}))
    SupplementalDocumentType.add_member(:payment_receipt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAYMENT_RECEIPT", traits: {"smithy.api#enumValue" => "PAYMENT_RECEIPT"}))
    SupplementalDocumentType.add_member(:supplement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPPLEMENT", traits: {"smithy.api#enumValue" => "SUPPLEMENT"}))
    SupplementalDocuments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplementalDocument, name: "member"))
    SupplierDomain.add_member(:network_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkID", traits: {"smithy.api#enumValue" => "NetworkID"}))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "ResourceTags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TaxAuthorityStatus.add_member(:issued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISSUED", traits: {"smithy.api#enumValue" => "ISSUED"}))
    TaxAuthorityStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    TaxesBreakdown.add_member(:breakdown, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxesBreakdownAmountList, name: "Breakdown"))
    TaxesBreakdown.add_member(:total_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "TotalAmount"))
    TaxesBreakdown.type = Types::TaxesBreakdown
    TaxesBreakdownAmount.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "Description"))
    TaxesBreakdownAmount.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "Amount"))
    TaxesBreakdownAmount.add_member(:rate, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "Rate"))
    TaxesBreakdownAmount.type = Types::TaxesBreakdownAmount
    TaxesBreakdownAmountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxesBreakdownAmount, name: "member"))
    TestEnvPreference.add_member(:buyer_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: BuyerDomain, name: "BuyerDomain", traits: {"smithy.api#required" => {}}))
    TestEnvPreference.add_member(:buyer_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "BuyerIdentifier", traits: {"smithy.api#required" => {}}))
    TestEnvPreference.add_member(:supplier_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplierDomain, name: "SupplierDomain", traits: {"smithy.api#required" => {}}))
    TestEnvPreference.add_member(:supplier_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "SupplierIdentifier", traits: {"smithy.api#required" => {}}))
    TestEnvPreference.add_member(:procurement_portal_shared_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ProcurementPortalSharedSecret"))
    TestEnvPreference.add_member(:procurement_portal_instance_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ProcurementPortalInstanceEndpoint"))
    TestEnvPreference.add_member(:purchase_order_retrieval_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "PurchaseOrderRetrievalEndpoint"))
    TestEnvPreference.type = Types::TestEnvPreference
    TestEnvPreferenceInput.add_member(:buyer_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: BuyerDomain, name: "BuyerDomain", traits: {"smithy.api#required" => {}}))
    TestEnvPreferenceInput.add_member(:buyer_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "BuyerIdentifier", traits: {"smithy.api#required" => {}}))
    TestEnvPreferenceInput.add_member(:supplier_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplierDomain, name: "SupplierDomain", traits: {"smithy.api#required" => {}}))
    TestEnvPreferenceInput.add_member(:supplier_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "SupplierIdentifier", traits: {"smithy.api#required" => {}}))
    TestEnvPreferenceInput.add_member(:procurement_portal_shared_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ProcurementPortalSharedSecret"))
    TestEnvPreferenceInput.add_member(:procurement_portal_instance_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ProcurementPortalInstanceEndpoint"))
    TestEnvPreferenceInput.type = Types::TestEnvPreferenceInput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:resource_tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKeyList, name: "ResourceTagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateInvoiceUnitRequest.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, name: "InvoiceUnitArn", traits: {"smithy.api#required" => {}}))
    UpdateInvoiceUnitRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, name: "Description"))
    UpdateInvoiceUnitRequest.add_member(:tax_inheritance_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxInheritanceDisabledFlag, name: "TaxInheritanceDisabled", traits: {"smithy.api#default" => nil}))
    UpdateInvoiceUnitRequest.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitRule, name: "Rule"))
    UpdateInvoiceUnitRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateInvoiceUnitRequest.type = Types::UpdateInvoiceUnitRequest
    UpdateInvoiceUnitResponse.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, name: "InvoiceUnitArn"))
    UpdateInvoiceUnitResponse.type = Types::UpdateInvoiceUnitResponse
    UpdateProcurementPortalPreferenceStatusRequest.add_member(:procurement_portal_preference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceArnString, name: "ProcurementPortalPreferenceArn", traits: {"smithy.api#required" => {}}))
    UpdateProcurementPortalPreferenceStatusRequest.add_member(:einvoice_delivery_preference_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceStatus, name: "EinvoiceDeliveryPreferenceStatus"))
    UpdateProcurementPortalPreferenceStatusRequest.add_member(:einvoice_delivery_preference_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "EinvoiceDeliveryPreferenceStatusReason"))
    UpdateProcurementPortalPreferenceStatusRequest.add_member(:purchase_order_retrieval_preference_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceStatus, name: "PurchaseOrderRetrievalPreferenceStatus"))
    UpdateProcurementPortalPreferenceStatusRequest.add_member(:purchase_order_retrieval_preference_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "PurchaseOrderRetrievalPreferenceStatusReason"))
    UpdateProcurementPortalPreferenceStatusRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateProcurementPortalPreferenceStatusRequest.type = Types::UpdateProcurementPortalPreferenceStatusRequest
    UpdateProcurementPortalPreferenceStatusResponse.add_member(:procurement_portal_preference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceArnString, name: "ProcurementPortalPreferenceArn", traits: {"smithy.api#required" => {}}))
    UpdateProcurementPortalPreferenceStatusResponse.type = Types::UpdateProcurementPortalPreferenceStatusResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "message"))
    ValidationException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, name: "resourceName"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason"))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:non_members_present, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_MEMBERS_PRESENT", traits: {"smithy.api#enumValue" => "nonMemberPresent"}))
    ValidationExceptionReason.add_member(:max_accounts_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_ACCOUNTS_EXCEEDED", traits: {"smithy.api#enumValue" => "maxAccountsExceeded"}))
    ValidationExceptionReason.add_member(:max_invoice_units_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_INVOICE_UNITS_EXCEEDED", traits: {"smithy.api#enumValue" => "maxInvoiceUnitsExceeded"}))
    ValidationExceptionReason.add_member(:duplicate_invoice_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_INVOICE_UNIT", traits: {"smithy.api#enumValue" => "duplicateInvoiceUnit"}))
    ValidationExceptionReason.add_member(:mutual_exclusion_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MUTUAL_EXCLUSION_ERROR", traits: {"smithy.api#enumValue" => "mutualExclusionError"}))
    ValidationExceptionReason.add_member(:account_membership_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_MEMBERSHIP_ERROR", traits: {"smithy.api#enumValue" => "accountMembershipError"}))
    ValidationExceptionReason.add_member(:tax_settings_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAX_SETTINGS_ERROR", traits: {"smithy.api#enumValue" => "taxSettingsError"}))
    ValidationExceptionReason.add_member(:expired_next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED_NEXT_TOKEN", traits: {"smithy.api#enumValue" => "expiredNextToken"}))
    ValidationExceptionReason.add_member(:invalid_next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_NEXT_TOKEN", traits: {"smithy.api#enumValue" => "invalidNextToken"}))
    ValidationExceptionReason.add_member(:invalid_input, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_INPUT", traits: {"smithy.api#enumValue" => "invalidInput"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))
    VerifyProcurementPortalValidationRequest.add_member(:procurement_portal_preference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceArnString, name: "ProcurementPortalPreferenceArn", traits: {"smithy.api#required" => {}}))
    VerifyProcurementPortalValidationRequest.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "Code", traits: {"smithy.api#required" => {}}))
    VerifyProcurementPortalValidationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    VerifyProcurementPortalValidationRequest.type = Types::VerifyProcurementPortalValidationRequest
    VerifyProcurementPortalValidationResponse.add_member(:procurement_portal_preference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcurementPortalPreferenceArnString, name: "ProcurementPortalPreferenceArn", traits: {"smithy.api#required" => {}}))
    VerifyProcurementPortalValidationResponse.type = Types::VerifyProcurementPortalValidationResponse

    Invoicing = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.invoicing#Invoicing"
      service.name = "Invoicing"
      service.version = "2024-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Invoicing", "arnNamespace" => "invoicing", "endpointPrefix" => "invoicing", "docId" => "invoicing-2024-12-01", "cloudTrailEventSource" => "invoicing.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "invoicing"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Invoicing", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://invoicing-fips.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://invoicing.{PartitionResult#implicitGlobalRegion}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "{PartitionResult#implicitGlobalRegion}"}]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:batch_get_invoice_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#BatchGetInvoiceProfile"
        operation.name = "BatchGetInvoiceProfile"
        operation.input = BatchGetInvoiceProfileRequest
        operation.output = BatchGetInvoiceProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_invoice_unit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#CreateInvoiceUnit"
        operation.name = "CreateInvoiceUnit"
        operation.input = CreateInvoiceUnitRequest
        operation.output = CreateInvoiceUnitResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_procurement_portal_preference, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#CreateProcurementPortalPreference"
        operation.name = "CreateProcurementPortalPreference"
        operation.input = CreateProcurementPortalPreferenceRequest
        operation.output = CreateProcurementPortalPreferenceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_invoice_unit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#DeleteInvoiceUnit"
        operation.name = "DeleteInvoiceUnit"
        operation.input = DeleteInvoiceUnitRequest
        operation.output = DeleteInvoiceUnitResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_procurement_portal_preference, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#DeleteProcurementPortalPreference"
        operation.name = "DeleteProcurementPortalPreference"
        operation.input = DeleteProcurementPortalPreferenceRequest
        operation.output = DeleteProcurementPortalPreferenceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_invoice_pdf, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#GetInvoicePDF"
        operation.name = "GetInvoicePDF"
        operation.input = GetInvoicePDFRequest
        operation.output = GetInvoicePDFResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_invoice_unit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#GetInvoiceUnit"
        operation.name = "GetInvoiceUnit"
        operation.input = GetInvoiceUnitRequest
        operation.output = GetInvoiceUnitResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_procurement_portal_preference, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#GetProcurementPortalPreference"
        operation.name = "GetProcurementPortalPreference"
        operation.input = GetProcurementPortalPreferenceRequest
        operation.output = GetProcurementPortalPreferenceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_invoice_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#ListInvoiceSummaries"
        operation.name = "ListInvoiceSummaries"
        operation.input = ListInvoiceSummariesRequest
        operation.output = ListInvoiceSummariesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListInvoiceSummaries.new
      end)
      service.add_operation(:list_invoice_units, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#ListInvoiceUnits"
        operation.name = "ListInvoiceUnits"
        operation.input = ListInvoiceUnitsRequest
        operation.output = ListInvoiceUnitsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListInvoiceUnitsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListInvoiceUnits.new
      end)
      service.add_operation(:list_procurement_portal_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#ListProcurementPortalPreferences"
        operation.name = "ListProcurementPortalPreferences"
        operation.input = ListProcurementPortalPreferencesRequest
        operation.output = ListProcurementPortalPreferencesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListProcurementPortalPreferences.new
      end)
      service.add_operation(:list_procurement_portal_suppliers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#ListProcurementPortalSuppliers"
        operation.name = "ListProcurementPortalSuppliers"
        operation.input = ListProcurementPortalSuppliersRequest
        operation.output = ListProcurementPortalSuppliersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProcurementPortalSuppliers.new
      end)
      service.add_operation(:list_procurement_portals, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#ListProcurementPortals"
        operation.name = "ListProcurementPortals"
        operation.input = ListProcurementPortalsRequest
        operation.output = ListProcurementPortalsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProcurementPortals.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_procurement_portal_preference, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#PutProcurementPortalPreference"
        operation.name = "PutProcurementPortalPreference"
        operation.input = PutProcurementPortalPreferenceRequest
        operation.output = PutProcurementPortalPreferenceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:send_procurement_portal_validation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#SendProcurementPortalValidation"
        operation.name = "SendProcurementPortalValidation"
        operation.input = SendProcurementPortalValidationRequest
        operation.output = SendProcurementPortalValidationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_invoice_unit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#UpdateInvoiceUnit"
        operation.name = "UpdateInvoiceUnit"
        operation.input = UpdateInvoiceUnitRequest
        operation.output = UpdateInvoiceUnitResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_procurement_portal_preference_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#UpdateProcurementPortalPreferenceStatus"
        operation.name = "UpdateProcurementPortalPreferenceStatus"
        operation.input = UpdateProcurementPortalPreferenceStatusRequest
        operation.output = UpdateProcurementPortalPreferenceStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:verify_procurement_portal_validation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#VerifyProcurementPortalValidation"
        operation.name = "VerifyProcurementPortalValidation"
        operation.input = VerifyProcurementPortalValidationRequest
        operation.output = VerifyProcurementPortalValidationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
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
