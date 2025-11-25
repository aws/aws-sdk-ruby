# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Invoicing
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    AccountIdString = Shapes::StringShape.new(name: 'AccountIdString')
    AmountBreakdown = Shapes::StructureShape.new(name: 'AmountBreakdown')
    AsOfTimestamp = Shapes::TimestampShape.new(name: 'AsOfTimestamp')
    BasicString = Shapes::StringShape.new(name: 'BasicString')
    BasicStringWithoutSpace = Shapes::StringShape.new(name: 'BasicStringWithoutSpace')
    BatchGetInvoiceProfileRequest = Shapes::StructureShape.new(name: 'BatchGetInvoiceProfileRequest')
    BatchGetInvoiceProfileResponse = Shapes::StructureShape.new(name: 'BatchGetInvoiceProfileResponse')
    BillingPeriod = Shapes::StructureShape.new(name: 'BillingPeriod')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BuyerDomain = Shapes::StringShape.new(name: 'BuyerDomain')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionTestingMethod = Shapes::StringShape.new(name: 'ConnectionTestingMethod')
    Contact = Shapes::StructureShape.new(name: 'Contact')
    Contacts = Shapes::ListShape.new(name: 'Contacts')
    CreateInvoiceUnitRequest = Shapes::StructureShape.new(name: 'CreateInvoiceUnitRequest')
    CreateInvoiceUnitResponse = Shapes::StructureShape.new(name: 'CreateInvoiceUnitResponse')
    CreateProcurementPortalPreferenceRequest = Shapes::StructureShape.new(name: 'CreateProcurementPortalPreferenceRequest')
    CreateProcurementPortalPreferenceResponse = Shapes::StructureShape.new(name: 'CreateProcurementPortalPreferenceResponse')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    CurrencyExchangeDetails = Shapes::StructureShape.new(name: 'CurrencyExchangeDetails')
    DateInterval = Shapes::StructureShape.new(name: 'DateInterval')
    DeleteInvoiceUnitRequest = Shapes::StructureShape.new(name: 'DeleteInvoiceUnitRequest')
    DeleteInvoiceUnitResponse = Shapes::StructureShape.new(name: 'DeleteInvoiceUnitResponse')
    DeleteProcurementPortalPreferenceRequest = Shapes::StructureShape.new(name: 'DeleteProcurementPortalPreferenceRequest')
    DeleteProcurementPortalPreferenceResponse = Shapes::StructureShape.new(name: 'DeleteProcurementPortalPreferenceResponse')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    DiscountsBreakdown = Shapes::StructureShape.new(name: 'DiscountsBreakdown')
    DiscountsBreakdownAmount = Shapes::StructureShape.new(name: 'DiscountsBreakdownAmount')
    DiscountsBreakdownAmountList = Shapes::ListShape.new(name: 'DiscountsBreakdownAmountList')
    EinvoiceDeliveryAttachmentType = Shapes::StringShape.new(name: 'EinvoiceDeliveryAttachmentType')
    EinvoiceDeliveryAttachmentTypes = Shapes::ListShape.new(name: 'EinvoiceDeliveryAttachmentTypes')
    EinvoiceDeliveryDocumentType = Shapes::StringShape.new(name: 'EinvoiceDeliveryDocumentType')
    EinvoiceDeliveryDocumentTypes = Shapes::ListShape.new(name: 'EinvoiceDeliveryDocumentTypes')
    EinvoiceDeliveryPreference = Shapes::StructureShape.new(name: 'EinvoiceDeliveryPreference')
    EmailString = Shapes::StringShape.new(name: 'EmailString')
    Entity = Shapes::StructureShape.new(name: 'Entity')
    FeesBreakdown = Shapes::StructureShape.new(name: 'FeesBreakdown')
    FeesBreakdownAmount = Shapes::StructureShape.new(name: 'FeesBreakdownAmount')
    FeesBreakdownAmountList = Shapes::ListShape.new(name: 'FeesBreakdownAmountList')
    Filters = Shapes::StructureShape.new(name: 'Filters')
    GetInvoicePDFRequest = Shapes::StructureShape.new(name: 'GetInvoicePDFRequest')
    GetInvoicePDFResponse = Shapes::StructureShape.new(name: 'GetInvoicePDFResponse')
    GetInvoiceUnitRequest = Shapes::StructureShape.new(name: 'GetInvoiceUnitRequest')
    GetInvoiceUnitResponse = Shapes::StructureShape.new(name: 'GetInvoiceUnitResponse')
    GetProcurementPortalPreferenceRequest = Shapes::StructureShape.new(name: 'GetProcurementPortalPreferenceRequest')
    GetProcurementPortalPreferenceResponse = Shapes::StructureShape.new(name: 'GetProcurementPortalPreferenceResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvoiceCurrencyAmount = Shapes::StructureShape.new(name: 'InvoiceCurrencyAmount')
    InvoicePDF = Shapes::StructureShape.new(name: 'InvoicePDF')
    InvoiceProfile = Shapes::StructureShape.new(name: 'InvoiceProfile')
    InvoiceSummaries = Shapes::ListShape.new(name: 'InvoiceSummaries')
    InvoiceSummariesFilter = Shapes::StructureShape.new(name: 'InvoiceSummariesFilter')
    InvoiceSummariesMaxResults = Shapes::IntegerShape.new(name: 'InvoiceSummariesMaxResults')
    InvoiceSummariesSelector = Shapes::StructureShape.new(name: 'InvoiceSummariesSelector')
    InvoiceSummary = Shapes::StructureShape.new(name: 'InvoiceSummary')
    InvoiceType = Shapes::StringShape.new(name: 'InvoiceType')
    InvoiceUnit = Shapes::StructureShape.new(name: 'InvoiceUnit')
    InvoiceUnitArnString = Shapes::StringShape.new(name: 'InvoiceUnitArnString')
    InvoiceUnitArns = Shapes::ListShape.new(name: 'InvoiceUnitArns')
    InvoiceUnitName = Shapes::StringShape.new(name: 'InvoiceUnitName')
    InvoiceUnitNames = Shapes::ListShape.new(name: 'InvoiceUnitNames')
    InvoiceUnitRule = Shapes::StructureShape.new(name: 'InvoiceUnitRule')
    InvoiceUnits = Shapes::ListShape.new(name: 'InvoiceUnits')
    LastModifiedTimestamp = Shapes::TimestampShape.new(name: 'LastModifiedTimestamp')
    ListInvoiceSummariesRequest = Shapes::StructureShape.new(name: 'ListInvoiceSummariesRequest')
    ListInvoiceSummariesResourceType = Shapes::StringShape.new(name: 'ListInvoiceSummariesResourceType')
    ListInvoiceSummariesResponse = Shapes::StructureShape.new(name: 'ListInvoiceSummariesResponse')
    ListInvoiceUnitsRequest = Shapes::StructureShape.new(name: 'ListInvoiceUnitsRequest')
    ListInvoiceUnitsResponse = Shapes::StructureShape.new(name: 'ListInvoiceUnitsResponse')
    ListProcurementPortalPreferencesRequest = Shapes::StructureShape.new(name: 'ListProcurementPortalPreferencesRequest')
    ListProcurementPortalPreferencesResponse = Shapes::StructureShape.new(name: 'ListProcurementPortalPreferencesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxResultsInteger = Shapes::IntegerShape.new(name: 'MaxResultsInteger')
    Month = Shapes::IntegerShape.new(name: 'Month')
    NextTokenString = Shapes::StringShape.new(name: 'NextTokenString')
    ProcurementPortalName = Shapes::StringShape.new(name: 'ProcurementPortalName')
    ProcurementPortalPreference = Shapes::StructureShape.new(name: 'ProcurementPortalPreference')
    ProcurementPortalPreferenceArnString = Shapes::StringShape.new(name: 'ProcurementPortalPreferenceArnString')
    ProcurementPortalPreferenceSelector = Shapes::StructureShape.new(name: 'ProcurementPortalPreferenceSelector')
    ProcurementPortalPreferenceStatus = Shapes::StringShape.new(name: 'ProcurementPortalPreferenceStatus')
    ProcurementPortalPreferenceSummaries = Shapes::ListShape.new(name: 'ProcurementPortalPreferenceSummaries')
    ProcurementPortalPreferenceSummary = Shapes::StructureShape.new(name: 'ProcurementPortalPreferenceSummary')
    ProfileList = Shapes::ListShape.new(name: 'ProfileList')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    PurchaseOrderDataSource = Shapes::StructureShape.new(name: 'PurchaseOrderDataSource')
    PurchaseOrderDataSourceType = Shapes::StringShape.new(name: 'PurchaseOrderDataSourceType')
    PurchaseOrderDataSources = Shapes::ListShape.new(name: 'PurchaseOrderDataSources')
    PutProcurementPortalPreferenceRequest = Shapes::StructureShape.new(name: 'PutProcurementPortalPreferenceRequest')
    PutProcurementPortalPreferenceResponse = Shapes::StructureShape.new(name: 'PutProcurementPortalPreferenceResponse')
    ReceiverAddress = Shapes::StructureShape.new(name: 'ReceiverAddress')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTagKey = Shapes::StringShape.new(name: 'ResourceTagKey')
    ResourceTagKeyList = Shapes::ListShape.new(name: 'ResourceTagKeyList')
    ResourceTagList = Shapes::ListShape.new(name: 'ResourceTagList')
    ResourceTagValue = Shapes::StringShape.new(name: 'ResourceTagValue')
    RuleAccountIdList = Shapes::ListShape.new(name: 'RuleAccountIdList')
    SellerOfRecords = Shapes::ListShape.new(name: 'SellerOfRecords')
    SensitiveBasicStringWithoutSpace = Shapes::StringShape.new(name: 'SensitiveBasicStringWithoutSpace')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StringWithoutNewLine = Shapes::StringShape.new(name: 'StringWithoutNewLine')
    SupplementalDocument = Shapes::StructureShape.new(name: 'SupplementalDocument')
    SupplementalDocuments = Shapes::ListShape.new(name: 'SupplementalDocuments')
    SupplierDomain = Shapes::StringShape.new(name: 'SupplierDomain')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagrisArn = Shapes::StringShape.new(name: 'TagrisArn')
    TaxInheritanceDisabledFlag = Shapes::BooleanShape.new(name: 'TaxInheritanceDisabledFlag')
    TaxesBreakdown = Shapes::StructureShape.new(name: 'TaxesBreakdown')
    TaxesBreakdownAmount = Shapes::StructureShape.new(name: 'TaxesBreakdownAmount')
    TaxesBreakdownAmountList = Shapes::ListShape.new(name: 'TaxesBreakdownAmountList')
    TestEnvPreference = Shapes::StructureShape.new(name: 'TestEnvPreference')
    TestEnvPreferenceInput = Shapes::StructureShape.new(name: 'TestEnvPreferenceInput')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateInvoiceUnitRequest = Shapes::StructureShape.new(name: 'UpdateInvoiceUnitRequest')
    UpdateInvoiceUnitResponse = Shapes::StructureShape.new(name: 'UpdateInvoiceUnitResponse')
    UpdateProcurementPortalPreferenceStatusRequest = Shapes::StructureShape.new(name: 'UpdateProcurementPortalPreferenceStatusRequest')
    UpdateProcurementPortalPreferenceStatusResponse = Shapes::StructureShape.new(name: 'UpdateProcurementPortalPreferenceStatusResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    Year = Shapes::IntegerShape.new(name: 'Year')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, location_name: "message"))
    AccessDeniedException.add_member(:resource_name, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "resourceName"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountIdList.member = Shapes::ShapeRef.new(shape: AccountIdString)

    AmountBreakdown.add_member(:sub_total_amount, Shapes::ShapeRef.new(shape: BasicString, location_name: "SubTotalAmount"))
    AmountBreakdown.add_member(:discounts, Shapes::ShapeRef.new(shape: DiscountsBreakdown, location_name: "Discounts"))
    AmountBreakdown.add_member(:taxes, Shapes::ShapeRef.new(shape: TaxesBreakdown, location_name: "Taxes"))
    AmountBreakdown.add_member(:fees, Shapes::ShapeRef.new(shape: FeesBreakdown, location_name: "Fees"))
    AmountBreakdown.struct_class = Types::AmountBreakdown

    BatchGetInvoiceProfileRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "AccountIds"))
    BatchGetInvoiceProfileRequest.struct_class = Types::BatchGetInvoiceProfileRequest

    BatchGetInvoiceProfileResponse.add_member(:profiles, Shapes::ShapeRef.new(shape: ProfileList, location_name: "Profiles"))
    BatchGetInvoiceProfileResponse.struct_class = Types::BatchGetInvoiceProfileResponse

    BillingPeriod.add_member(:month, Shapes::ShapeRef.new(shape: Month, required: true, location_name: "Month"))
    BillingPeriod.add_member(:year, Shapes::ShapeRef.new(shape: Year, required: true, location_name: "Year"))
    BillingPeriod.struct_class = Types::BillingPeriod

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: BasicString, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: BasicString, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    Contact.add_member(:name, Shapes::ShapeRef.new(shape: BasicString, location_name: "Name"))
    Contact.add_member(:email, Shapes::ShapeRef.new(shape: EmailString, location_name: "Email"))
    Contact.struct_class = Types::Contact

    Contacts.member = Shapes::ShapeRef.new(shape: Contact)

    CreateInvoiceUnitRequest.add_member(:name, Shapes::ShapeRef.new(shape: InvoiceUnitName, required: true, location_name: "Name"))
    CreateInvoiceUnitRequest.add_member(:invoice_receiver, Shapes::ShapeRef.new(shape: AccountIdString, required: true, location_name: "InvoiceReceiver"))
    CreateInvoiceUnitRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateInvoiceUnitRequest.add_member(:tax_inheritance_disabled, Shapes::ShapeRef.new(shape: TaxInheritanceDisabledFlag, location_name: "TaxInheritanceDisabled"))
    CreateInvoiceUnitRequest.add_member(:rule, Shapes::ShapeRef.new(shape: InvoiceUnitRule, required: true, location_name: "Rule"))
    CreateInvoiceUnitRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags"))
    CreateInvoiceUnitRequest.struct_class = Types::CreateInvoiceUnitRequest

    CreateInvoiceUnitResponse.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    CreateInvoiceUnitResponse.struct_class = Types::CreateInvoiceUnitResponse

    CreateProcurementPortalPreferenceRequest.add_member(:procurement_portal_name, Shapes::ShapeRef.new(shape: ProcurementPortalName, required: true, location_name: "ProcurementPortalName"))
    CreateProcurementPortalPreferenceRequest.add_member(:buyer_domain, Shapes::ShapeRef.new(shape: BuyerDomain, required: true, location_name: "BuyerDomain"))
    CreateProcurementPortalPreferenceRequest.add_member(:buyer_identifier, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, required: true, location_name: "BuyerIdentifier"))
    CreateProcurementPortalPreferenceRequest.add_member(:supplier_domain, Shapes::ShapeRef.new(shape: SupplierDomain, required: true, location_name: "SupplierDomain"))
    CreateProcurementPortalPreferenceRequest.add_member(:supplier_identifier, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, required: true, location_name: "SupplierIdentifier"))
    CreateProcurementPortalPreferenceRequest.add_member(:selector, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceSelector, location_name: "Selector"))
    CreateProcurementPortalPreferenceRequest.add_member(:procurement_portal_shared_secret, Shapes::ShapeRef.new(shape: SensitiveBasicStringWithoutSpace, location_name: "ProcurementPortalSharedSecret"))
    CreateProcurementPortalPreferenceRequest.add_member(:procurement_portal_instance_endpoint, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: "ProcurementPortalInstanceEndpoint"))
    CreateProcurementPortalPreferenceRequest.add_member(:test_env_preference, Shapes::ShapeRef.new(shape: TestEnvPreferenceInput, location_name: "TestEnvPreference"))
    CreateProcurementPortalPreferenceRequest.add_member(:einvoice_delivery_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "EinvoiceDeliveryEnabled"))
    CreateProcurementPortalPreferenceRequest.add_member(:einvoice_delivery_preference, Shapes::ShapeRef.new(shape: EinvoiceDeliveryPreference, location_name: "EinvoiceDeliveryPreference"))
    CreateProcurementPortalPreferenceRequest.add_member(:purchase_order_retrieval_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "PurchaseOrderRetrievalEnabled"))
    CreateProcurementPortalPreferenceRequest.add_member(:contacts, Shapes::ShapeRef.new(shape: Contacts, required: true, location_name: "Contacts"))
    CreateProcurementPortalPreferenceRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags"))
    CreateProcurementPortalPreferenceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateProcurementPortalPreferenceRequest.struct_class = Types::CreateProcurementPortalPreferenceRequest

    CreateProcurementPortalPreferenceResponse.add_member(:procurement_portal_preference_arn, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceArnString, required: true, location_name: "ProcurementPortalPreferenceArn"))
    CreateProcurementPortalPreferenceResponse.struct_class = Types::CreateProcurementPortalPreferenceResponse

    CurrencyExchangeDetails.add_member(:source_currency_code, Shapes::ShapeRef.new(shape: BasicString, location_name: "SourceCurrencyCode"))
    CurrencyExchangeDetails.add_member(:target_currency_code, Shapes::ShapeRef.new(shape: BasicString, location_name: "TargetCurrencyCode"))
    CurrencyExchangeDetails.add_member(:rate, Shapes::ShapeRef.new(shape: BasicString, location_name: "Rate"))
    CurrencyExchangeDetails.struct_class = Types::CurrencyExchangeDetails

    DateInterval.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartDate"))
    DateInterval.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndDate"))
    DateInterval.struct_class = Types::DateInterval

    DeleteInvoiceUnitRequest.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, required: true, location_name: "InvoiceUnitArn"))
    DeleteInvoiceUnitRequest.struct_class = Types::DeleteInvoiceUnitRequest

    DeleteInvoiceUnitResponse.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    DeleteInvoiceUnitResponse.struct_class = Types::DeleteInvoiceUnitResponse

    DeleteProcurementPortalPreferenceRequest.add_member(:procurement_portal_preference_arn, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceArnString, required: true, location_name: "ProcurementPortalPreferenceArn"))
    DeleteProcurementPortalPreferenceRequest.struct_class = Types::DeleteProcurementPortalPreferenceRequest

    DeleteProcurementPortalPreferenceResponse.add_member(:procurement_portal_preference_arn, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceArnString, required: true, location_name: "ProcurementPortalPreferenceArn"))
    DeleteProcurementPortalPreferenceResponse.struct_class = Types::DeleteProcurementPortalPreferenceResponse

    DiscountsBreakdown.add_member(:breakdown, Shapes::ShapeRef.new(shape: DiscountsBreakdownAmountList, location_name: "Breakdown"))
    DiscountsBreakdown.add_member(:total_amount, Shapes::ShapeRef.new(shape: BasicString, location_name: "TotalAmount"))
    DiscountsBreakdown.struct_class = Types::DiscountsBreakdown

    DiscountsBreakdownAmount.add_member(:description, Shapes::ShapeRef.new(shape: BasicString, location_name: "Description"))
    DiscountsBreakdownAmount.add_member(:amount, Shapes::ShapeRef.new(shape: BasicString, location_name: "Amount"))
    DiscountsBreakdownAmount.add_member(:rate, Shapes::ShapeRef.new(shape: BasicString, location_name: "Rate"))
    DiscountsBreakdownAmount.struct_class = Types::DiscountsBreakdownAmount

    DiscountsBreakdownAmountList.member = Shapes::ShapeRef.new(shape: DiscountsBreakdownAmount)

    EinvoiceDeliveryAttachmentTypes.member = Shapes::ShapeRef.new(shape: EinvoiceDeliveryAttachmentType)

    EinvoiceDeliveryDocumentTypes.member = Shapes::ShapeRef.new(shape: EinvoiceDeliveryDocumentType)

    EinvoiceDeliveryPreference.add_member(:einvoice_delivery_document_types, Shapes::ShapeRef.new(shape: EinvoiceDeliveryDocumentTypes, required: true, location_name: "EinvoiceDeliveryDocumentTypes"))
    EinvoiceDeliveryPreference.add_member(:einvoice_delivery_attachment_types, Shapes::ShapeRef.new(shape: EinvoiceDeliveryAttachmentTypes, location_name: "EinvoiceDeliveryAttachmentTypes"))
    EinvoiceDeliveryPreference.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "Protocol"))
    EinvoiceDeliveryPreference.add_member(:purchase_order_data_sources, Shapes::ShapeRef.new(shape: PurchaseOrderDataSources, required: true, location_name: "PurchaseOrderDataSources"))
    EinvoiceDeliveryPreference.add_member(:connection_testing_method, Shapes::ShapeRef.new(shape: ConnectionTestingMethod, required: true, location_name: "ConnectionTestingMethod"))
    EinvoiceDeliveryPreference.add_member(:einvoice_delivery_activation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EinvoiceDeliveryActivationDate"))
    EinvoiceDeliveryPreference.struct_class = Types::EinvoiceDeliveryPreference

    Entity.add_member(:invoicing_entity, Shapes::ShapeRef.new(shape: BasicString, location_name: "InvoicingEntity"))
    Entity.struct_class = Types::Entity

    FeesBreakdown.add_member(:breakdown, Shapes::ShapeRef.new(shape: FeesBreakdownAmountList, location_name: "Breakdown"))
    FeesBreakdown.add_member(:total_amount, Shapes::ShapeRef.new(shape: BasicString, location_name: "TotalAmount"))
    FeesBreakdown.struct_class = Types::FeesBreakdown

    FeesBreakdownAmount.add_member(:description, Shapes::ShapeRef.new(shape: BasicString, location_name: "Description"))
    FeesBreakdownAmount.add_member(:amount, Shapes::ShapeRef.new(shape: BasicString, location_name: "Amount"))
    FeesBreakdownAmount.add_member(:rate, Shapes::ShapeRef.new(shape: BasicString, location_name: "Rate"))
    FeesBreakdownAmount.struct_class = Types::FeesBreakdownAmount

    FeesBreakdownAmountList.member = Shapes::ShapeRef.new(shape: FeesBreakdownAmount)

    Filters.add_member(:names, Shapes::ShapeRef.new(shape: InvoiceUnitNames, location_name: "Names"))
    Filters.add_member(:invoice_receivers, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "InvoiceReceivers"))
    Filters.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "Accounts"))
    Filters.add_member(:bill_source_accounts, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "BillSourceAccounts"))
    Filters.struct_class = Types::Filters

    GetInvoicePDFRequest.add_member(:invoice_id, Shapes::ShapeRef.new(shape: StringWithoutNewLine, required: true, location_name: "InvoiceId"))
    GetInvoicePDFRequest.struct_class = Types::GetInvoicePDFRequest

    GetInvoicePDFResponse.add_member(:invoice_pdf, Shapes::ShapeRef.new(shape: InvoicePDF, location_name: "InvoicePDF"))
    GetInvoicePDFResponse.struct_class = Types::GetInvoicePDFResponse

    GetInvoiceUnitRequest.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, required: true, location_name: "InvoiceUnitArn"))
    GetInvoiceUnitRequest.add_member(:as_of, Shapes::ShapeRef.new(shape: AsOfTimestamp, location_name: "AsOf"))
    GetInvoiceUnitRequest.struct_class = Types::GetInvoiceUnitRequest

    GetInvoiceUnitResponse.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    GetInvoiceUnitResponse.add_member(:invoice_receiver, Shapes::ShapeRef.new(shape: AccountIdString, location_name: "InvoiceReceiver"))
    GetInvoiceUnitResponse.add_member(:name, Shapes::ShapeRef.new(shape: InvoiceUnitName, location_name: "Name"))
    GetInvoiceUnitResponse.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    GetInvoiceUnitResponse.add_member(:tax_inheritance_disabled, Shapes::ShapeRef.new(shape: TaxInheritanceDisabledFlag, location_name: "TaxInheritanceDisabled", metadata: {"box" => true}))
    GetInvoiceUnitResponse.add_member(:rule, Shapes::ShapeRef.new(shape: InvoiceUnitRule, location_name: "Rule"))
    GetInvoiceUnitResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: "LastModified"))
    GetInvoiceUnitResponse.struct_class = Types::GetInvoiceUnitResponse

    GetProcurementPortalPreferenceRequest.add_member(:procurement_portal_preference_arn, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceArnString, required: true, location_name: "ProcurementPortalPreferenceArn"))
    GetProcurementPortalPreferenceRequest.struct_class = Types::GetProcurementPortalPreferenceRequest

    GetProcurementPortalPreferenceResponse.add_member(:procurement_portal_preference, Shapes::ShapeRef.new(shape: ProcurementPortalPreference, required: true, location_name: "ProcurementPortalPreference"))
    GetProcurementPortalPreferenceResponse.struct_class = Types::GetProcurementPortalPreferenceResponse

    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvoiceCurrencyAmount.add_member(:total_amount, Shapes::ShapeRef.new(shape: BasicString, location_name: "TotalAmount"))
    InvoiceCurrencyAmount.add_member(:total_amount_before_tax, Shapes::ShapeRef.new(shape: BasicString, location_name: "TotalAmountBeforeTax"))
    InvoiceCurrencyAmount.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "CurrencyCode"))
    InvoiceCurrencyAmount.add_member(:amount_breakdown, Shapes::ShapeRef.new(shape: AmountBreakdown, location_name: "AmountBreakdown"))
    InvoiceCurrencyAmount.add_member(:currency_exchange_details, Shapes::ShapeRef.new(shape: CurrencyExchangeDetails, location_name: "CurrencyExchangeDetails"))
    InvoiceCurrencyAmount.struct_class = Types::InvoiceCurrencyAmount

    InvoicePDF.add_member(:invoice_id, Shapes::ShapeRef.new(shape: StringWithoutNewLine, location_name: "InvoiceId"))
    InvoicePDF.add_member(:document_url, Shapes::ShapeRef.new(shape: StringWithoutNewLine, location_name: "DocumentUrl"))
    InvoicePDF.add_member(:document_url_expiration_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DocumentUrlExpirationDate"))
    InvoicePDF.add_member(:supplemental_documents, Shapes::ShapeRef.new(shape: SupplementalDocuments, location_name: "SupplementalDocuments"))
    InvoicePDF.struct_class = Types::InvoicePDF

    InvoiceProfile.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountIdString, location_name: "AccountId"))
    InvoiceProfile.add_member(:receiver_name, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: "ReceiverName"))
    InvoiceProfile.add_member(:receiver_address, Shapes::ShapeRef.new(shape: ReceiverAddress, location_name: "ReceiverAddress"))
    InvoiceProfile.add_member(:receiver_email, Shapes::ShapeRef.new(shape: SensitiveBasicStringWithoutSpace, location_name: "ReceiverEmail"))
    InvoiceProfile.add_member(:issuer, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: "Issuer"))
    InvoiceProfile.add_member(:tax_registration_number, Shapes::ShapeRef.new(shape: SensitiveBasicStringWithoutSpace, location_name: "TaxRegistrationNumber"))
    InvoiceProfile.struct_class = Types::InvoiceProfile

    InvoiceSummaries.member = Shapes::ShapeRef.new(shape: InvoiceSummary)

    InvoiceSummariesFilter.add_member(:time_interval, Shapes::ShapeRef.new(shape: DateInterval, location_name: "TimeInterval"))
    InvoiceSummariesFilter.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    InvoiceSummariesFilter.add_member(:invoicing_entity, Shapes::ShapeRef.new(shape: BasicString, location_name: "InvoicingEntity"))
    InvoiceSummariesFilter.struct_class = Types::InvoiceSummariesFilter

    InvoiceSummariesSelector.add_member(:resource_type, Shapes::ShapeRef.new(shape: ListInvoiceSummariesResourceType, required: true, location_name: "ResourceType"))
    InvoiceSummariesSelector.add_member(:value, Shapes::ShapeRef.new(shape: StringWithoutNewLine, required: true, location_name: "Value"))
    InvoiceSummariesSelector.struct_class = Types::InvoiceSummariesSelector

    InvoiceSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountIdString, location_name: "AccountId"))
    InvoiceSummary.add_member(:invoice_id, Shapes::ShapeRef.new(shape: BasicString, location_name: "InvoiceId"))
    InvoiceSummary.add_member(:issued_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "IssuedDate"))
    InvoiceSummary.add_member(:due_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DueDate"))
    InvoiceSummary.add_member(:entity, Shapes::ShapeRef.new(shape: Entity, location_name: "Entity"))
    InvoiceSummary.add_member(:billing_period, Shapes::ShapeRef.new(shape: BillingPeriod, location_name: "BillingPeriod"))
    InvoiceSummary.add_member(:invoice_type, Shapes::ShapeRef.new(shape: InvoiceType, location_name: "InvoiceType"))
    InvoiceSummary.add_member(:original_invoice_id, Shapes::ShapeRef.new(shape: BasicString, location_name: "OriginalInvoiceId"))
    InvoiceSummary.add_member(:purchase_order_number, Shapes::ShapeRef.new(shape: BasicString, location_name: "PurchaseOrderNumber"))
    InvoiceSummary.add_member(:base_currency_amount, Shapes::ShapeRef.new(shape: InvoiceCurrencyAmount, location_name: "BaseCurrencyAmount"))
    InvoiceSummary.add_member(:tax_currency_amount, Shapes::ShapeRef.new(shape: InvoiceCurrencyAmount, location_name: "TaxCurrencyAmount"))
    InvoiceSummary.add_member(:payment_currency_amount, Shapes::ShapeRef.new(shape: InvoiceCurrencyAmount, location_name: "PaymentCurrencyAmount"))
    InvoiceSummary.struct_class = Types::InvoiceSummary

    InvoiceUnit.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    InvoiceUnit.add_member(:invoice_receiver, Shapes::ShapeRef.new(shape: AccountIdString, location_name: "InvoiceReceiver"))
    InvoiceUnit.add_member(:name, Shapes::ShapeRef.new(shape: InvoiceUnitName, location_name: "Name"))
    InvoiceUnit.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    InvoiceUnit.add_member(:tax_inheritance_disabled, Shapes::ShapeRef.new(shape: TaxInheritanceDisabledFlag, location_name: "TaxInheritanceDisabled", metadata: {"box" => true}))
    InvoiceUnit.add_member(:rule, Shapes::ShapeRef.new(shape: InvoiceUnitRule, location_name: "Rule"))
    InvoiceUnit.add_member(:last_modified, Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: "LastModified"))
    InvoiceUnit.struct_class = Types::InvoiceUnit

    InvoiceUnitArns.member = Shapes::ShapeRef.new(shape: InvoiceUnitArnString)

    InvoiceUnitNames.member = Shapes::ShapeRef.new(shape: InvoiceUnitName)

    InvoiceUnitRule.add_member(:linked_accounts, Shapes::ShapeRef.new(shape: RuleAccountIdList, location_name: "LinkedAccounts"))
    InvoiceUnitRule.add_member(:bill_source_accounts, Shapes::ShapeRef.new(shape: RuleAccountIdList, location_name: "BillSourceAccounts"))
    InvoiceUnitRule.struct_class = Types::InvoiceUnitRule

    InvoiceUnits.member = Shapes::ShapeRef.new(shape: InvoiceUnit)

    ListInvoiceSummariesRequest.add_member(:selector, Shapes::ShapeRef.new(shape: InvoiceSummariesSelector, required: true, location_name: "Selector"))
    ListInvoiceSummariesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: InvoiceSummariesFilter, location_name: "Filter"))
    ListInvoiceSummariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListInvoiceSummariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: InvoiceSummariesMaxResults, location_name: "MaxResults"))
    ListInvoiceSummariesRequest.struct_class = Types::ListInvoiceSummariesRequest

    ListInvoiceSummariesResponse.add_member(:invoice_summaries, Shapes::ShapeRef.new(shape: InvoiceSummaries, required: true, location_name: "InvoiceSummaries"))
    ListInvoiceSummariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListInvoiceSummariesResponse.struct_class = Types::ListInvoiceSummariesResponse

    ListInvoiceUnitsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListInvoiceUnitsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListInvoiceUnitsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListInvoiceUnitsRequest.add_member(:as_of, Shapes::ShapeRef.new(shape: AsOfTimestamp, location_name: "AsOf"))
    ListInvoiceUnitsRequest.struct_class = Types::ListInvoiceUnitsRequest

    ListInvoiceUnitsResponse.add_member(:invoice_units, Shapes::ShapeRef.new(shape: InvoiceUnits, location_name: "InvoiceUnits"))
    ListInvoiceUnitsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListInvoiceUnitsResponse.struct_class = Types::ListInvoiceUnitsResponse

    ListProcurementPortalPreferencesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: "NextToken"))
    ListProcurementPortalPreferencesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListProcurementPortalPreferencesRequest.struct_class = Types::ListProcurementPortalPreferencesRequest

    ListProcurementPortalPreferencesResponse.add_member(:procurement_portal_preferences, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceSummaries, location_name: "ProcurementPortalPreferences"))
    ListProcurementPortalPreferencesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: "NextToken"))
    ListProcurementPortalPreferencesResponse.struct_class = Types::ListProcurementPortalPreferencesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagrisArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ProcurementPortalPreference.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AccountIdString, required: true, location_name: "AwsAccountId"))
    ProcurementPortalPreference.add_member(:procurement_portal_preference_arn, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceArnString, required: true, location_name: "ProcurementPortalPreferenceArn"))
    ProcurementPortalPreference.add_member(:procurement_portal_name, Shapes::ShapeRef.new(shape: ProcurementPortalName, required: true, location_name: "ProcurementPortalName"))
    ProcurementPortalPreference.add_member(:buyer_domain, Shapes::ShapeRef.new(shape: BuyerDomain, required: true, location_name: "BuyerDomain"))
    ProcurementPortalPreference.add_member(:buyer_identifier, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, required: true, location_name: "BuyerIdentifier"))
    ProcurementPortalPreference.add_member(:supplier_domain, Shapes::ShapeRef.new(shape: SupplierDomain, required: true, location_name: "SupplierDomain"))
    ProcurementPortalPreference.add_member(:supplier_identifier, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, required: true, location_name: "SupplierIdentifier"))
    ProcurementPortalPreference.add_member(:selector, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceSelector, location_name: "Selector"))
    ProcurementPortalPreference.add_member(:procurement_portal_shared_secret, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: "ProcurementPortalSharedSecret"))
    ProcurementPortalPreference.add_member(:procurement_portal_instance_endpoint, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: "ProcurementPortalInstanceEndpoint"))
    ProcurementPortalPreference.add_member(:purchase_order_retrieval_endpoint, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: "PurchaseOrderRetrievalEndpoint"))
    ProcurementPortalPreference.add_member(:test_env_preference, Shapes::ShapeRef.new(shape: TestEnvPreference, location_name: "TestEnvPreference"))
    ProcurementPortalPreference.add_member(:einvoice_delivery_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "EinvoiceDeliveryEnabled"))
    ProcurementPortalPreference.add_member(:einvoice_delivery_preference, Shapes::ShapeRef.new(shape: EinvoiceDeliveryPreference, location_name: "EinvoiceDeliveryPreference"))
    ProcurementPortalPreference.add_member(:purchase_order_retrieval_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "PurchaseOrderRetrievalEnabled"))
    ProcurementPortalPreference.add_member(:contacts, Shapes::ShapeRef.new(shape: Contacts, location_name: "Contacts"))
    ProcurementPortalPreference.add_member(:einvoice_delivery_preference_status, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceStatus, location_name: "EinvoiceDeliveryPreferenceStatus"))
    ProcurementPortalPreference.add_member(:einvoice_delivery_preference_status_reason, Shapes::ShapeRef.new(shape: BasicString, location_name: "EinvoiceDeliveryPreferenceStatusReason"))
    ProcurementPortalPreference.add_member(:purchase_order_retrieval_preference_status, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceStatus, location_name: "PurchaseOrderRetrievalPreferenceStatus"))
    ProcurementPortalPreference.add_member(:purchase_order_retrieval_preference_status_reason, Shapes::ShapeRef.new(shape: BasicString, location_name: "PurchaseOrderRetrievalPreferenceStatusReason"))
    ProcurementPortalPreference.add_member(:version, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "Version"))
    ProcurementPortalPreference.add_member(:create_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateDate"))
    ProcurementPortalPreference.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdateDate"))
    ProcurementPortalPreference.struct_class = Types::ProcurementPortalPreference

    ProcurementPortalPreferenceSelector.add_member(:invoice_unit_arns, Shapes::ShapeRef.new(shape: InvoiceUnitArns, location_name: "InvoiceUnitArns"))
    ProcurementPortalPreferenceSelector.add_member(:seller_of_records, Shapes::ShapeRef.new(shape: SellerOfRecords, location_name: "SellerOfRecords"))
    ProcurementPortalPreferenceSelector.struct_class = Types::ProcurementPortalPreferenceSelector

    ProcurementPortalPreferenceSummaries.member = Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceSummary)

    ProcurementPortalPreferenceSummary.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AccountIdString, required: true, location_name: "AwsAccountId"))
    ProcurementPortalPreferenceSummary.add_member(:procurement_portal_preference_arn, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceArnString, required: true, location_name: "ProcurementPortalPreferenceArn"))
    ProcurementPortalPreferenceSummary.add_member(:procurement_portal_name, Shapes::ShapeRef.new(shape: ProcurementPortalName, required: true, location_name: "ProcurementPortalName"))
    ProcurementPortalPreferenceSummary.add_member(:buyer_domain, Shapes::ShapeRef.new(shape: BuyerDomain, required: true, location_name: "BuyerDomain"))
    ProcurementPortalPreferenceSummary.add_member(:buyer_identifier, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, required: true, location_name: "BuyerIdentifier"))
    ProcurementPortalPreferenceSummary.add_member(:supplier_domain, Shapes::ShapeRef.new(shape: SupplierDomain, required: true, location_name: "SupplierDomain"))
    ProcurementPortalPreferenceSummary.add_member(:supplier_identifier, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, required: true, location_name: "SupplierIdentifier"))
    ProcurementPortalPreferenceSummary.add_member(:selector, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceSelector, location_name: "Selector"))
    ProcurementPortalPreferenceSummary.add_member(:einvoice_delivery_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "EinvoiceDeliveryEnabled"))
    ProcurementPortalPreferenceSummary.add_member(:purchase_order_retrieval_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "PurchaseOrderRetrievalEnabled"))
    ProcurementPortalPreferenceSummary.add_member(:einvoice_delivery_preference_status, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceStatus, location_name: "EinvoiceDeliveryPreferenceStatus"))
    ProcurementPortalPreferenceSummary.add_member(:einvoice_delivery_preference_status_reason, Shapes::ShapeRef.new(shape: BasicString, location_name: "EinvoiceDeliveryPreferenceStatusReason"))
    ProcurementPortalPreferenceSummary.add_member(:purchase_order_retrieval_preference_status, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceStatus, location_name: "PurchaseOrderRetrievalPreferenceStatus"))
    ProcurementPortalPreferenceSummary.add_member(:purchase_order_retrieval_preference_status_reason, Shapes::ShapeRef.new(shape: BasicString, location_name: "PurchaseOrderRetrievalPreferenceStatusReason"))
    ProcurementPortalPreferenceSummary.add_member(:version, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "Version"))
    ProcurementPortalPreferenceSummary.add_member(:create_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreateDate"))
    ProcurementPortalPreferenceSummary.add_member(:last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "LastUpdateDate"))
    ProcurementPortalPreferenceSummary.struct_class = Types::ProcurementPortalPreferenceSummary

    ProfileList.member = Shapes::ShapeRef.new(shape: InvoiceProfile)

    PurchaseOrderDataSource.add_member(:einvoice_delivery_document_type, Shapes::ShapeRef.new(shape: EinvoiceDeliveryDocumentType, location_name: "EinvoiceDeliveryDocumentType"))
    PurchaseOrderDataSource.add_member(:purchase_order_data_source_type, Shapes::ShapeRef.new(shape: PurchaseOrderDataSourceType, location_name: "PurchaseOrderDataSourceType"))
    PurchaseOrderDataSource.struct_class = Types::PurchaseOrderDataSource

    PurchaseOrderDataSources.member = Shapes::ShapeRef.new(shape: PurchaseOrderDataSource)

    PutProcurementPortalPreferenceRequest.add_member(:procurement_portal_preference_arn, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceArnString, required: true, location_name: "ProcurementPortalPreferenceArn"))
    PutProcurementPortalPreferenceRequest.add_member(:selector, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceSelector, location_name: "Selector"))
    PutProcurementPortalPreferenceRequest.add_member(:procurement_portal_shared_secret, Shapes::ShapeRef.new(shape: SensitiveBasicStringWithoutSpace, location_name: "ProcurementPortalSharedSecret"))
    PutProcurementPortalPreferenceRequest.add_member(:procurement_portal_instance_endpoint, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: "ProcurementPortalInstanceEndpoint"))
    PutProcurementPortalPreferenceRequest.add_member(:test_env_preference, Shapes::ShapeRef.new(shape: TestEnvPreferenceInput, location_name: "TestEnvPreference"))
    PutProcurementPortalPreferenceRequest.add_member(:einvoice_delivery_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "EinvoiceDeliveryEnabled"))
    PutProcurementPortalPreferenceRequest.add_member(:einvoice_delivery_preference, Shapes::ShapeRef.new(shape: EinvoiceDeliveryPreference, location_name: "EinvoiceDeliveryPreference"))
    PutProcurementPortalPreferenceRequest.add_member(:purchase_order_retrieval_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "PurchaseOrderRetrievalEnabled"))
    PutProcurementPortalPreferenceRequest.add_member(:contacts, Shapes::ShapeRef.new(shape: Contacts, required: true, location_name: "Contacts"))
    PutProcurementPortalPreferenceRequest.struct_class = Types::PutProcurementPortalPreferenceRequest

    PutProcurementPortalPreferenceResponse.add_member(:procurement_portal_preference_arn, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceArnString, required: true, location_name: "ProcurementPortalPreferenceArn"))
    PutProcurementPortalPreferenceResponse.struct_class = Types::PutProcurementPortalPreferenceResponse

    ReceiverAddress.add_member(:address_line_1, Shapes::ShapeRef.new(shape: BasicString, location_name: "AddressLine1"))
    ReceiverAddress.add_member(:address_line_2, Shapes::ShapeRef.new(shape: BasicString, location_name: "AddressLine2"))
    ReceiverAddress.add_member(:address_line_3, Shapes::ShapeRef.new(shape: BasicString, location_name: "AddressLine3"))
    ReceiverAddress.add_member(:district_or_county, Shapes::ShapeRef.new(shape: BasicString, location_name: "DistrictOrCounty"))
    ReceiverAddress.add_member(:city, Shapes::ShapeRef.new(shape: BasicString, location_name: "City"))
    ReceiverAddress.add_member(:state_or_region, Shapes::ShapeRef.new(shape: BasicString, location_name: "StateOrRegion"))
    ReceiverAddress.add_member(:country_code, Shapes::ShapeRef.new(shape: BasicString, location_name: "CountryCode"))
    ReceiverAddress.add_member(:company_name, Shapes::ShapeRef.new(shape: BasicString, location_name: "CompanyName"))
    ReceiverAddress.add_member(:postal_code, Shapes::ShapeRef.new(shape: BasicString, location_name: "PostalCode"))
    ReceiverAddress.struct_class = Types::ReceiverAddress

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_name, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "resourceName"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTag.add_member(:key, Shapes::ShapeRef.new(shape: ResourceTagKey, required: true, location_name: "Key"))
    ResourceTag.add_member(:value, Shapes::ShapeRef.new(shape: ResourceTagValue, required: true, location_name: "Value"))
    ResourceTag.struct_class = Types::ResourceTag

    ResourceTagKeyList.member = Shapes::ShapeRef.new(shape: ResourceTagKey)

    ResourceTagList.member = Shapes::ShapeRef.new(shape: ResourceTag)

    RuleAccountIdList.member = Shapes::ShapeRef.new(shape: AccountIdString)

    SellerOfRecords.member = Shapes::ShapeRef.new(shape: BasicStringWithoutSpace)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SupplementalDocument.add_member(:document_url, Shapes::ShapeRef.new(shape: StringWithoutNewLine, location_name: "DocumentUrl"))
    SupplementalDocument.add_member(:document_url_expiration_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DocumentUrlExpirationDate"))
    SupplementalDocument.struct_class = Types::SupplementalDocument

    SupplementalDocuments.member = Shapes::ShapeRef.new(shape: SupplementalDocument)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagrisArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, required: true, location_name: "ResourceTags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TaxesBreakdown.add_member(:breakdown, Shapes::ShapeRef.new(shape: TaxesBreakdownAmountList, location_name: "Breakdown"))
    TaxesBreakdown.add_member(:total_amount, Shapes::ShapeRef.new(shape: BasicString, location_name: "TotalAmount"))
    TaxesBreakdown.struct_class = Types::TaxesBreakdown

    TaxesBreakdownAmount.add_member(:description, Shapes::ShapeRef.new(shape: BasicString, location_name: "Description"))
    TaxesBreakdownAmount.add_member(:amount, Shapes::ShapeRef.new(shape: BasicString, location_name: "Amount"))
    TaxesBreakdownAmount.add_member(:rate, Shapes::ShapeRef.new(shape: BasicString, location_name: "Rate"))
    TaxesBreakdownAmount.struct_class = Types::TaxesBreakdownAmount

    TaxesBreakdownAmountList.member = Shapes::ShapeRef.new(shape: TaxesBreakdownAmount)

    TestEnvPreference.add_member(:buyer_domain, Shapes::ShapeRef.new(shape: BuyerDomain, required: true, location_name: "BuyerDomain"))
    TestEnvPreference.add_member(:buyer_identifier, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, required: true, location_name: "BuyerIdentifier"))
    TestEnvPreference.add_member(:supplier_domain, Shapes::ShapeRef.new(shape: SupplierDomain, required: true, location_name: "SupplierDomain"))
    TestEnvPreference.add_member(:supplier_identifier, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, required: true, location_name: "SupplierIdentifier"))
    TestEnvPreference.add_member(:procurement_portal_shared_secret, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: "ProcurementPortalSharedSecret"))
    TestEnvPreference.add_member(:procurement_portal_instance_endpoint, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: "ProcurementPortalInstanceEndpoint"))
    TestEnvPreference.add_member(:purchase_order_retrieval_endpoint, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: "PurchaseOrderRetrievalEndpoint"))
    TestEnvPreference.struct_class = Types::TestEnvPreference

    TestEnvPreferenceInput.add_member(:buyer_domain, Shapes::ShapeRef.new(shape: BuyerDomain, required: true, location_name: "BuyerDomain"))
    TestEnvPreferenceInput.add_member(:buyer_identifier, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, required: true, location_name: "BuyerIdentifier"))
    TestEnvPreferenceInput.add_member(:supplier_domain, Shapes::ShapeRef.new(shape: SupplierDomain, required: true, location_name: "SupplierDomain"))
    TestEnvPreferenceInput.add_member(:supplier_identifier, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, required: true, location_name: "SupplierIdentifier"))
    TestEnvPreferenceInput.add_member(:procurement_portal_shared_secret, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: "ProcurementPortalSharedSecret"))
    TestEnvPreferenceInput.add_member(:procurement_portal_instance_endpoint, Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: "ProcurementPortalInstanceEndpoint"))
    TestEnvPreferenceInput.struct_class = Types::TestEnvPreferenceInput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagrisArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:resource_tag_keys, Shapes::ShapeRef.new(shape: ResourceTagKeyList, required: true, location_name: "ResourceTagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateInvoiceUnitRequest.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, required: true, location_name: "InvoiceUnitArn"))
    UpdateInvoiceUnitRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    UpdateInvoiceUnitRequest.add_member(:tax_inheritance_disabled, Shapes::ShapeRef.new(shape: TaxInheritanceDisabledFlag, location_name: "TaxInheritanceDisabled", metadata: {"box" => true}))
    UpdateInvoiceUnitRequest.add_member(:rule, Shapes::ShapeRef.new(shape: InvoiceUnitRule, location_name: "Rule"))
    UpdateInvoiceUnitRequest.struct_class = Types::UpdateInvoiceUnitRequest

    UpdateInvoiceUnitResponse.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    UpdateInvoiceUnitResponse.struct_class = Types::UpdateInvoiceUnitResponse

    UpdateProcurementPortalPreferenceStatusRequest.add_member(:procurement_portal_preference_arn, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceArnString, required: true, location_name: "ProcurementPortalPreferenceArn"))
    UpdateProcurementPortalPreferenceStatusRequest.add_member(:einvoice_delivery_preference_status, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceStatus, location_name: "EinvoiceDeliveryPreferenceStatus"))
    UpdateProcurementPortalPreferenceStatusRequest.add_member(:einvoice_delivery_preference_status_reason, Shapes::ShapeRef.new(shape: BasicString, location_name: "EinvoiceDeliveryPreferenceStatusReason"))
    UpdateProcurementPortalPreferenceStatusRequest.add_member(:purchase_order_retrieval_preference_status, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceStatus, location_name: "PurchaseOrderRetrievalPreferenceStatus"))
    UpdateProcurementPortalPreferenceStatusRequest.add_member(:purchase_order_retrieval_preference_status_reason, Shapes::ShapeRef.new(shape: BasicString, location_name: "PurchaseOrderRetrievalPreferenceStatusReason"))
    UpdateProcurementPortalPreferenceStatusRequest.struct_class = Types::UpdateProcurementPortalPreferenceStatusRequest

    UpdateProcurementPortalPreferenceStatusResponse.add_member(:procurement_portal_preference_arn, Shapes::ShapeRef.new(shape: ProcurementPortalPreferenceArnString, required: true, location_name: "ProcurementPortalPreferenceArn"))
    UpdateProcurementPortalPreferenceStatusResponse.struct_class = Types::UpdateProcurementPortalPreferenceStatusResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, location_name: "message"))
    ValidationException.add_member(:resource_name, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "resourceName"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: BasicString, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-12-01"

      api.metadata = {
        "apiVersion" => "2024-12-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "invoicing",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "AWS Invoicing",
        "serviceId" => "Invoicing",
        "signatureVersion" => "v4",
        "signingName" => "invoicing",
        "targetPrefix" => "Invoicing",
        "uid" => "invoicing-2024-12-01",
      }

      api.add_operation(:batch_get_invoice_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetInvoiceProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetInvoiceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetInvoiceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_invoice_unit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInvoiceUnit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateInvoiceUnitRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInvoiceUnitResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_procurement_portal_preference, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProcurementPortalPreference"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProcurementPortalPreferenceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProcurementPortalPreferenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_invoice_unit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInvoiceUnit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInvoiceUnitRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInvoiceUnitResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_procurement_portal_preference, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProcurementPortalPreference"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProcurementPortalPreferenceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProcurementPortalPreferenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_invoice_pdf, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInvoicePDF"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInvoicePDFRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInvoicePDFResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_invoice_unit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInvoiceUnit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInvoiceUnitRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInvoiceUnitResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_procurement_portal_preference, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProcurementPortalPreference"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProcurementPortalPreferenceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProcurementPortalPreferenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_invoice_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvoiceSummaries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInvoiceSummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvoiceSummariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_invoice_units, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvoiceUnits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInvoiceUnitsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvoiceUnitsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_procurement_portal_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProcurementPortalPreferences"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProcurementPortalPreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProcurementPortalPreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_procurement_portal_preference, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutProcurementPortalPreference"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutProcurementPortalPreferenceRequest)
        o.output = Shapes::ShapeRef.new(shape: PutProcurementPortalPreferenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_invoice_unit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInvoiceUnit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateInvoiceUnitRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInvoiceUnitResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_procurement_portal_preference_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProcurementPortalPreferenceStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProcurementPortalPreferenceStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProcurementPortalPreferenceStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
