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
    BillingPeriod = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#BillingPeriod", name: "BillingPeriod")
    CreateInvoiceUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#CreateInvoiceUnitRequest", name: "CreateInvoiceUnitRequest")
    CreateInvoiceUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#CreateInvoiceUnitResponse", name: "CreateInvoiceUnitResponse")
    CurrencyCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#CurrencyCode", name: "CurrencyCode", traits: {"smithy.api#length" => {"min" => 3, "max" => 3}})
    CurrencyExchangeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#CurrencyExchangeDetails", name: "CurrencyExchangeDetails")
    DateInterval = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#DateInterval", name: "DateInterval")
    DeleteInvoiceUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#DeleteInvoiceUnitRequest", name: "DeleteInvoiceUnitRequest")
    DeleteInvoiceUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#DeleteInvoiceUnitResponse", name: "DeleteInvoiceUnitResponse")
    DescriptionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#DescriptionString", name: "DescriptionString", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    DiscountsBreakdown = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#DiscountsBreakdown", name: "DiscountsBreakdown")
    DiscountsBreakdownAmount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#DiscountsBreakdownAmount", name: "DiscountsBreakdownAmount")
    DiscountsBreakdownAmountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#DiscountsBreakdownAmountList", name: "DiscountsBreakdownAmountList")
    Entity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#Entity", name: "Entity")
    FeesBreakdown = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#FeesBreakdown", name: "FeesBreakdown")
    FeesBreakdownAmount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#FeesBreakdownAmount", name: "FeesBreakdownAmount")
    FeesBreakdownAmountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#FeesBreakdownAmountList", name: "FeesBreakdownAmountList")
    Filters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#Filters", name: "Filters")
    GetInvoiceUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#GetInvoiceUnitRequest", name: "GetInvoiceUnitRequest")
    GetInvoiceUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#GetInvoiceUnitResponse", name: "GetInvoiceUnitResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InternalServerException", name: "InternalServerException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingInternalServer", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvoiceCurrencyAmount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InvoiceCurrencyAmount", name: "InvoiceCurrencyAmount")
    InvoiceProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InvoiceProfile", name: "InvoiceProfile")
    InvoiceSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#InvoiceSummaries", name: "InvoiceSummaries")
    InvoiceSummariesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InvoiceSummariesFilter", name: "InvoiceSummariesFilter")
    InvoiceSummariesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.invoicing#InvoiceSummariesMaxResults", name: "InvoiceSummariesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    InvoiceSummariesSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InvoiceSummariesSelector", name: "InvoiceSummariesSelector")
    InvoiceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InvoiceSummary", name: "InvoiceSummary")
    InvoiceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#InvoiceType", name: "InvoiceType")
    InvoiceUnit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#InvoiceUnit", name: "InvoiceUnit")
    InvoiceUnitArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#InvoiceUnitArnString", name: "InvoiceUnitArnString", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:[a-z0-9]+:[-a-z0-9]*:[0-9]{12}:[-a-zA-Z0-9/:_]+$"})
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
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResultsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.invoicing#MaxResultsInteger", name: "MaxResultsInteger", traits: {"smithy.api#default" => 500, "smithy.api#range" => {"min" => 1, "max" => 500}})
    Month = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.invoicing#Month", name: "Month", traits: {"smithy.api#range" => {"min" => 1, "max" => 12}})
    NextTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#NextTokenString", name: "NextTokenString", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    ProfileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#ProfileList", name: "ProfileList")
    ReceiverAddress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ReceiverAddress", name: "ReceiverAddress", traits: {"smithy.api#sensitive" => {}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingResourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ResourceTag", name: "ResourceTag")
    ResourceTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#ResourceTagKey", name: "ResourceTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ResourceTagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#ResourceTagKeyList", name: "ResourceTagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#ResourceTagList", name: "ResourceTagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#ResourceTagValue", name: "ResourceTagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    SensitiveBasicStringWithoutSpace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#SensitiveBasicStringWithoutSpace", name: "SensitiveBasicStringWithoutSpace", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^\\S+$", "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingServiceQuotaExceeded", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StringWithoutNewLine = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#StringWithoutNewLine", name: "StringWithoutNewLine", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^.*$"})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#TagResourceResponse", name: "TagResourceResponse")
    TagrisArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.invoicing#TagrisArn", name: "TagrisArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:(invoicing)::[0-9]{12}:[-a-zA-Z0-9/:_]+$"})
    TaxInheritanceDisabledFlag = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.invoicing#TaxInheritanceDisabledFlag", name: "TaxInheritanceDisabledFlag", traits: {"smithy.api#default" => false})
    TaxesBreakdown = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#TaxesBreakdown", name: "TaxesBreakdown")
    TaxesBreakdownAmount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#TaxesBreakdownAmount", name: "TaxesBreakdownAmount")
    TaxesBreakdownAmountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#TaxesBreakdownAmountList", name: "TaxesBreakdownAmountList")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ThrottlingException", name: "ThrottlingException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingThrottling", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateInvoiceUnitRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#UpdateInvoiceUnitRequest", name: "UpdateInvoiceUnitRequest")
    UpdateInvoiceUnitResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#UpdateInvoiceUnitResponse", name: "UpdateInvoiceUnitResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ValidationException", name: "ValidationException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingValidation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.invoicing#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.invoicing#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.invoicing#ValidationExceptionReason", name: "ValidationExceptionReason")
    Year = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.invoicing#Year", name: "Year", traits: {"smithy.api#range" => {"min" => 2005, "max" => 2050}})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "message"))
    AccessDeniedException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, location_name: "resourceName"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString)
    AmountBreakdown.add_member(:sub_total_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "SubTotalAmount"))
    AmountBreakdown.add_member(:discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscountsBreakdown, location_name: "Discounts"))
    AmountBreakdown.add_member(:taxes, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxesBreakdown, location_name: "Taxes"))
    AmountBreakdown.add_member(:fees, ::Smithy::Schema::Shapes::MemberShape.new(target: FeesBreakdown, location_name: "Fees"))
    AmountBreakdown.type = Types::AmountBreakdown
    BatchGetInvoiceProfileRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, location_name: "AccountIds", traits: {"smithy.api#required" => {}}))
    BatchGetInvoiceProfileRequest.type = Types::BatchGetInvoiceProfileRequest
    BatchGetInvoiceProfileResponse.add_member(:profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileList, location_name: "Profiles"))
    BatchGetInvoiceProfileResponse.type = Types::BatchGetInvoiceProfileResponse
    BillingPeriod.add_member(:month, ::Smithy::Schema::Shapes::MemberShape.new(target: Month, location_name: "Month", traits: {"smithy.api#required" => {}}))
    BillingPeriod.add_member(:year, ::Smithy::Schema::Shapes::MemberShape.new(target: Year, location_name: "Year", traits: {"smithy.api#required" => {}}))
    BillingPeriod.type = Types::BillingPeriod
    CreateInvoiceUnitRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateInvoiceUnitRequest.add_member(:invoice_receiver, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString, location_name: "InvoiceReceiver", traits: {"smithy.api#required" => {}}))
    CreateInvoiceUnitRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, location_name: "Description"))
    CreateInvoiceUnitRequest.add_member(:tax_inheritance_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxInheritanceDisabledFlag, location_name: "TaxInheritanceDisabled", traits: {"smithy.api#default" => false}))
    CreateInvoiceUnitRequest.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitRule, location_name: "Rule", traits: {"smithy.api#required" => {}}))
    CreateInvoiceUnitRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, location_name: "ResourceTags"))
    CreateInvoiceUnitRequest.type = Types::CreateInvoiceUnitRequest
    CreateInvoiceUnitResponse.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    CreateInvoiceUnitResponse.type = Types::CreateInvoiceUnitResponse
    CurrencyExchangeDetails.add_member(:source_currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "SourceCurrencyCode"))
    CurrencyExchangeDetails.add_member(:target_currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "TargetCurrencyCode"))
    CurrencyExchangeDetails.add_member(:rate, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "Rate"))
    CurrencyExchangeDetails.type = Types::CurrencyExchangeDetails
    DateInterval.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "StartDate", traits: {"smithy.api#required" => {}}))
    DateInterval.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "EndDate", traits: {"smithy.api#required" => {}}))
    DateInterval.type = Types::DateInterval
    DeleteInvoiceUnitRequest.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, location_name: "InvoiceUnitArn", traits: {"smithy.api#required" => {}}))
    DeleteInvoiceUnitRequest.type = Types::DeleteInvoiceUnitRequest
    DeleteInvoiceUnitResponse.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    DeleteInvoiceUnitResponse.type = Types::DeleteInvoiceUnitResponse
    DiscountsBreakdown.add_member(:breakdown, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscountsBreakdownAmountList, location_name: "Breakdown"))
    DiscountsBreakdown.add_member(:total_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "TotalAmount"))
    DiscountsBreakdown.type = Types::DiscountsBreakdown
    DiscountsBreakdownAmount.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "Description"))
    DiscountsBreakdownAmount.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "Amount"))
    DiscountsBreakdownAmount.add_member(:rate, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "Rate"))
    DiscountsBreakdownAmount.type = Types::DiscountsBreakdownAmount
    DiscountsBreakdownAmountList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DiscountsBreakdownAmount)
    Entity.add_member(:invoicing_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "InvoicingEntity"))
    Entity.type = Types::Entity
    FeesBreakdown.add_member(:breakdown, ::Smithy::Schema::Shapes::MemberShape.new(target: FeesBreakdownAmountList, location_name: "Breakdown"))
    FeesBreakdown.add_member(:total_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "TotalAmount"))
    FeesBreakdown.type = Types::FeesBreakdown
    FeesBreakdownAmount.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "Description"))
    FeesBreakdownAmount.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "Amount"))
    FeesBreakdownAmount.add_member(:rate, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "Rate"))
    FeesBreakdownAmount.type = Types::FeesBreakdownAmount
    FeesBreakdownAmountList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FeesBreakdownAmount)
    Filters.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitNames, location_name: "Names"))
    Filters.add_member(:invoice_receivers, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, location_name: "InvoiceReceivers"))
    Filters.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, location_name: "Accounts"))
    Filters.type = Types::Filters
    GetInvoiceUnitRequest.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, location_name: "InvoiceUnitArn", traits: {"smithy.api#required" => {}}))
    GetInvoiceUnitRequest.add_member(:as_of, ::Smithy::Schema::Shapes::MemberShape.new(target: AsOfTimestamp, location_name: "AsOf"))
    GetInvoiceUnitRequest.type = Types::GetInvoiceUnitRequest
    GetInvoiceUnitResponse.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    GetInvoiceUnitResponse.add_member(:invoice_receiver, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString, location_name: "InvoiceReceiver"))
    GetInvoiceUnitResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitName, location_name: "Name"))
    GetInvoiceUnitResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, location_name: "Description"))
    GetInvoiceUnitResponse.add_member(:tax_inheritance_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxInheritanceDisabledFlag, location_name: "TaxInheritanceDisabled", traits: {"smithy.api#default" => nil}))
    GetInvoiceUnitResponse.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitRule, location_name: "Rule"))
    GetInvoiceUnitResponse.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedTimestamp, location_name: "LastModified"))
    GetInvoiceUnitResponse.type = Types::GetInvoiceUnitResponse
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "message"))
    InternalServerException.type = Types::InternalServerException
    InvoiceCurrencyAmount.add_member(:total_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "TotalAmount"))
    InvoiceCurrencyAmount.add_member(:total_amount_before_tax, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "TotalAmountBeforeTax"))
    InvoiceCurrencyAmount.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, location_name: "CurrencyCode"))
    InvoiceCurrencyAmount.add_member(:amount_breakdown, ::Smithy::Schema::Shapes::MemberShape.new(target: AmountBreakdown, location_name: "AmountBreakdown"))
    InvoiceCurrencyAmount.add_member(:currency_exchange_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyExchangeDetails, location_name: "CurrencyExchangeDetails"))
    InvoiceCurrencyAmount.type = Types::InvoiceCurrencyAmount
    InvoiceProfile.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString, location_name: "AccountId"))
    InvoiceProfile.add_member(:receiver_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, location_name: "ReceiverName"))
    InvoiceProfile.add_member(:receiver_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverAddress, location_name: "ReceiverAddress"))
    InvoiceProfile.add_member(:receiver_email, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBasicStringWithoutSpace, location_name: "ReceiverEmail"))
    InvoiceProfile.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicStringWithoutSpace, location_name: "Issuer"))
    InvoiceProfile.add_member(:tax_registration_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBasicStringWithoutSpace, location_name: "TaxRegistrationNumber"))
    InvoiceProfile.type = Types::InvoiceProfile
    InvoiceSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceSummary)
    InvoiceSummariesFilter.add_member(:time_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: DateInterval, location_name: "TimeInterval"))
    InvoiceSummariesFilter.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, location_name: "BillingPeriod"))
    InvoiceSummariesFilter.add_member(:invoicing_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "InvoicingEntity"))
    InvoiceSummariesFilter.type = Types::InvoiceSummariesFilter
    InvoiceSummariesSelector.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ListInvoiceSummariesResourceType, location_name: "ResourceType", traits: {"smithy.api#required" => {}}))
    InvoiceSummariesSelector.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithoutNewLine, location_name: "Value", traits: {"smithy.api#required" => {}}))
    InvoiceSummariesSelector.type = Types::InvoiceSummariesSelector
    InvoiceSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString, location_name: "AccountId"))
    InvoiceSummary.add_member(:invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "InvoiceId"))
    InvoiceSummary.add_member(:issued_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "IssuedDate"))
    InvoiceSummary.add_member(:due_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "DueDate"))
    InvoiceSummary.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Entity, location_name: "Entity"))
    InvoiceSummary.add_member(:billing_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingPeriod, location_name: "BillingPeriod"))
    InvoiceSummary.add_member(:invoice_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceType, location_name: "InvoiceType"))
    InvoiceSummary.add_member(:original_invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "OriginalInvoiceId"))
    InvoiceSummary.add_member(:purchase_order_number, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "PurchaseOrderNumber"))
    InvoiceSummary.add_member(:base_currency_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceCurrencyAmount, location_name: "BaseCurrencyAmount"))
    InvoiceSummary.add_member(:tax_currency_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceCurrencyAmount, location_name: "TaxCurrencyAmount"))
    InvoiceSummary.add_member(:payment_currency_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceCurrencyAmount, location_name: "PaymentCurrencyAmount"))
    InvoiceSummary.type = Types::InvoiceSummary
    InvoiceType.add_member(:invoice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVOICE", traits: {"smithy.api#enumValue" => "INVOICE"}))
    InvoiceType.add_member(:credit_memo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREDIT_MEMO", traits: {"smithy.api#enumValue" => "CREDIT_MEMO"}))
    InvoiceUnit.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    InvoiceUnit.add_member(:invoice_receiver, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdString, location_name: "InvoiceReceiver"))
    InvoiceUnit.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitName, location_name: "Name"))
    InvoiceUnit.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, location_name: "Description"))
    InvoiceUnit.add_member(:tax_inheritance_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxInheritanceDisabledFlag, location_name: "TaxInheritanceDisabled", traits: {"smithy.api#default" => nil}))
    InvoiceUnit.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitRule, location_name: "Rule"))
    InvoiceUnit.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedTimestamp, location_name: "LastModified"))
    InvoiceUnit.type = Types::InvoiceUnit
    InvoiceUnitNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitName)
    InvoiceUnitRule.add_member(:linked_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, location_name: "LinkedAccounts"))
    InvoiceUnitRule.type = Types::InvoiceUnitRule
    InvoiceUnits.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnit)
    ListInvoiceSummariesRequest.add_member(:selector, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceSummariesSelector, location_name: "Selector", traits: {"smithy.api#required" => {}}))
    ListInvoiceSummariesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceSummariesFilter, location_name: "Filter"))
    ListInvoiceSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "NextToken"))
    ListInvoiceSummariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceSummariesMaxResults, location_name: "MaxResults"))
    ListInvoiceSummariesRequest.type = Types::ListInvoiceSummariesRequest
    ListInvoiceSummariesResourceType.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    ListInvoiceSummariesResourceType.add_member(:invoice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVOICE_ID", traits: {"smithy.api#enumValue" => "INVOICE_ID"}))
    ListInvoiceSummariesResponse.add_member(:invoice_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceSummaries, location_name: "InvoiceSummaries", traits: {"smithy.api#required" => {}}))
    ListInvoiceSummariesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "NextToken"))
    ListInvoiceSummariesResponse.type = Types::ListInvoiceSummariesResponse
    ListInvoiceUnitsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, location_name: "Filters"))
    ListInvoiceUnitsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "NextToken"))
    ListInvoiceUnitsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsInteger, location_name: "MaxResults", traits: {"smithy.api#default" => 500}))
    ListInvoiceUnitsRequest.add_member(:as_of, ::Smithy::Schema::Shapes::MemberShape.new(target: AsOfTimestamp, location_name: "AsOf"))
    ListInvoiceUnitsRequest.type = Types::ListInvoiceUnitsRequest
    ListInvoiceUnitsResponse.add_member(:invoice_units, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnits, location_name: "InvoiceUnits"))
    ListInvoiceUnitsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, location_name: "NextToken"))
    ListInvoiceUnitsResponse.type = Types::ListInvoiceUnitsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, location_name: "ResourceTags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ProfileList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceProfile)
    ReceiverAddress.add_member(:address_line1, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "AddressLine1"))
    ReceiverAddress.add_member(:address_line2, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "AddressLine2"))
    ReceiverAddress.add_member(:address_line3, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "AddressLine3"))
    ReceiverAddress.add_member(:district_or_county, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "DistrictOrCounty"))
    ReceiverAddress.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "City"))
    ReceiverAddress.add_member(:state_or_region, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "StateOrRegion"))
    ReceiverAddress.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "CountryCode"))
    ReceiverAddress.add_member(:company_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "CompanyName"))
    ReceiverAddress.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "PostalCode"))
    ReceiverAddress.type = Types::ReceiverAddress
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, location_name: "resourceName"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    ResourceTag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    ResourceTag.type = Types::ResourceTag
    ResourceTagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKey)
    ResourceTagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTag)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, location_name: "ResourceTags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TaxesBreakdown.add_member(:breakdown, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxesBreakdownAmountList, location_name: "Breakdown"))
    TaxesBreakdown.add_member(:total_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "TotalAmount"))
    TaxesBreakdown.type = Types::TaxesBreakdown
    TaxesBreakdownAmount.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "Description"))
    TaxesBreakdownAmount.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "Amount"))
    TaxesBreakdownAmount.add_member(:rate, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "Rate"))
    TaxesBreakdownAmount.type = Types::TaxesBreakdownAmount
    TaxesBreakdownAmountList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaxesBreakdownAmount)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagrisArn, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:resource_tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagKeyList, location_name: "ResourceTagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateInvoiceUnitRequest.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, location_name: "InvoiceUnitArn", traits: {"smithy.api#required" => {}}))
    UpdateInvoiceUnitRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptionString, location_name: "Description"))
    UpdateInvoiceUnitRequest.add_member(:tax_inheritance_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: TaxInheritanceDisabledFlag, location_name: "TaxInheritanceDisabled", traits: {"smithy.api#default" => nil}))
    UpdateInvoiceUnitRequest.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitRule, location_name: "Rule"))
    UpdateInvoiceUnitRequest.type = Types::UpdateInvoiceUnitRequest
    UpdateInvoiceUnitResponse.add_member(:invoice_unit_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    UpdateInvoiceUnitResponse.type = Types::UpdateInvoiceUnitResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "message"))
    ValidationException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InvoiceUnitArnString, location_name: "resourceName"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicString, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField)
    ValidationExceptionReason.add_member(:non_members_present, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NON_MEMBERS_PRESENT", traits: {"smithy.api#enumValue" => "nonMemberPresent"}))
    ValidationExceptionReason.add_member(:max_accounts_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MAX_ACCOUNTS_EXCEEDED", traits: {"smithy.api#enumValue" => "maxAccountsExceeded"}))
    ValidationExceptionReason.add_member(:max_invoice_units_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MAX_INVOICE_UNITS_EXCEEDED", traits: {"smithy.api#enumValue" => "maxInvoiceUnitsExceeded"}))
    ValidationExceptionReason.add_member(:duplicate_invoice_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DUPLICATE_INVOICE_UNIT", traits: {"smithy.api#enumValue" => "duplicateInvoiceUnit"}))
    ValidationExceptionReason.add_member(:mutual_exclusion_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MUTUAL_EXCLUSION_ERROR", traits: {"smithy.api#enumValue" => "mutualExclusionError"}))
    ValidationExceptionReason.add_member(:account_membership_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT_MEMBERSHIP_ERROR", traits: {"smithy.api#enumValue" => "accountMembershipError"}))
    ValidationExceptionReason.add_member(:tax_settings_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TAX_SETTINGS_ERROR", traits: {"smithy.api#enumValue" => "taxSettingsError"}))
    ValidationExceptionReason.add_member(:expired_next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPIRED_NEXT_TOKEN", traits: {"smithy.api#enumValue" => "expiredNextToken"}))
    ValidationExceptionReason.add_member(:invalid_next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_NEXT_TOKEN", traits: {"smithy.api#enumValue" => "invalidNextToken"}))
    ValidationExceptionReason.add_member(:invalid_input, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_INPUT", traits: {"smithy.api#enumValue" => "invalidInput"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))

    Invoicing = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.invoicing#Invoicing"
      service.name = "Invoicing"
      service.version = "2024-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Invoicing", "arnNamespace" => "invoicing", "endpointPrefix" => "invoicing", "docId" => "invoicing-2024-12-01", "cloudTrailEventSource" => "invoicing.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "invoicing"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Invoicing"}
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
        operation.traits = {}
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
        operation.traits = {}
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
        operation.traits = {}
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
