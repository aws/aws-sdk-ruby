# frozen_string_literal: true

# This is generated code!

module Aws::Invoicing
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#AccessDeniedException', name: 'AccessDeniedException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingAccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.invoicing#AccountIdList', name: 'AccountIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    AccountIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.invoicing#AccountIdString', name: 'AccountIdString', traits: {"smithy.api#pattern" => "^\\d{12}$"})
    AmountBreakdown = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#AmountBreakdown', name: 'AmountBreakdown')
    AsOfTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.invoicing#AsOfTimestamp', name: 'AsOfTimestamp')
    BasicString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.invoicing#BasicString', name: 'BasicString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    BasicStringWithoutSpace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.invoicing#BasicStringWithoutSpace', name: 'BasicStringWithoutSpace', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^\\S+$"})
    BatchGetInvoiceProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#BatchGetInvoiceProfileRequest', name: 'BatchGetInvoiceProfileRequest')
    BatchGetInvoiceProfileResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#BatchGetInvoiceProfileResponse', name: 'BatchGetInvoiceProfileResponse')
    BillingPeriod = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#BillingPeriod', name: 'BillingPeriod')
    CreateInvoiceUnitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#CreateInvoiceUnitRequest', name: 'CreateInvoiceUnitRequest')
    CreateInvoiceUnitResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#CreateInvoiceUnitResponse', name: 'CreateInvoiceUnitResponse')
    CurrencyCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.invoicing#CurrencyCode', name: 'CurrencyCode', traits: {"smithy.api#length" => {"min" => 3, "max" => 3}})
    CurrencyExchangeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#CurrencyExchangeDetails', name: 'CurrencyExchangeDetails')
    DateInterval = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#DateInterval', name: 'DateInterval')
    DeleteInvoiceUnitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#DeleteInvoiceUnitRequest', name: 'DeleteInvoiceUnitRequest')
    DeleteInvoiceUnitResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#DeleteInvoiceUnitResponse', name: 'DeleteInvoiceUnitResponse')
    DescriptionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.invoicing#DescriptionString', name: 'DescriptionString', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    DiscountsBreakdown = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#DiscountsBreakdown', name: 'DiscountsBreakdown')
    DiscountsBreakdownAmount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#DiscountsBreakdownAmount', name: 'DiscountsBreakdownAmount')
    DiscountsBreakdownAmountList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.invoicing#DiscountsBreakdownAmountList', name: 'DiscountsBreakdownAmountList')
    Entity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#Entity', name: 'Entity')
    FeesBreakdown = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#FeesBreakdown', name: 'FeesBreakdown')
    FeesBreakdownAmount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#FeesBreakdownAmount', name: 'FeesBreakdownAmount')
    FeesBreakdownAmountList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.invoicing#FeesBreakdownAmountList', name: 'FeesBreakdownAmountList')
    Filters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#Filters', name: 'Filters')
    GetInvoiceUnitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#GetInvoiceUnitRequest', name: 'GetInvoiceUnitRequest')
    GetInvoiceUnitResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#GetInvoiceUnitResponse', name: 'GetInvoiceUnitResponse')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#InternalServerException', name: 'InternalServerException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingInternalServer", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvoiceCurrencyAmount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#InvoiceCurrencyAmount', name: 'InvoiceCurrencyAmount')
    InvoiceProfile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#InvoiceProfile', name: 'InvoiceProfile')
    InvoiceSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.invoicing#InvoiceSummaries', name: 'InvoiceSummaries')
    InvoiceSummariesFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#InvoiceSummariesFilter', name: 'InvoiceSummariesFilter')
    InvoiceSummariesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.invoicing#InvoiceSummariesMaxResults', name: 'InvoiceSummariesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    InvoiceSummariesSelector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#InvoiceSummariesSelector', name: 'InvoiceSummariesSelector')
    InvoiceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#InvoiceSummary', name: 'InvoiceSummary')
    InvoiceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.invoicing#InvoiceType', name: 'InvoiceType')
    InvoiceUnit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#InvoiceUnit', name: 'InvoiceUnit')
    InvoiceUnitArnString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.invoicing#InvoiceUnitArnString', name: 'InvoiceUnitArnString', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:[a-z0-9]+:[-a-z0-9]*:[0-9]{12}:[-a-zA-Z0-9/:_]+$"})
    InvoiceUnitName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.invoicing#InvoiceUnitName', name: 'InvoiceUnitName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^(?! )[\\p{L}\\p{N}\\p{Z}-_]*(?<! )$"})
    InvoiceUnitNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.invoicing#InvoiceUnitNames', name: 'InvoiceUnitNames')
    InvoiceUnitRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#InvoiceUnitRule', name: 'InvoiceUnitRule')
    InvoiceUnits = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.invoicing#InvoiceUnits', name: 'InvoiceUnits')
    LastModifiedTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.invoicing#LastModifiedTimestamp', name: 'LastModifiedTimestamp')
    ListInvoiceSummariesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#ListInvoiceSummariesRequest', name: 'ListInvoiceSummariesRequest')
    ListInvoiceSummariesResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.invoicing#ListInvoiceSummariesResourceType', name: 'ListInvoiceSummariesResourceType')
    ListInvoiceSummariesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#ListInvoiceSummariesResponse', name: 'ListInvoiceSummariesResponse')
    ListInvoiceUnitsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#ListInvoiceUnitsRequest', name: 'ListInvoiceUnitsRequest')
    ListInvoiceUnitsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#ListInvoiceUnitsResponse', name: 'ListInvoiceUnitsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResultsInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.invoicing#MaxResultsInteger', name: 'MaxResultsInteger', traits: {"smithy.api#default" => 500, "smithy.api#range" => {"min" => 1, "max" => 500}})
    Month = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.invoicing#Month', name: 'Month', traits: {"smithy.api#range" => {"min" => 1, "max" => 12}})
    NextTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.invoicing#NextTokenString', name: 'NextTokenString', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    ProfileList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.invoicing#ProfileList', name: 'ProfileList')
    ReceiverAddress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#ReceiverAddress', name: 'ReceiverAddress', traits: {"smithy.api#sensitive" => {}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingResourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#ResourceTag', name: 'ResourceTag')
    ResourceTagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.invoicing#ResourceTagKey', name: 'ResourceTagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ResourceTagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.invoicing#ResourceTagKeyList', name: 'ResourceTagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.invoicing#ResourceTagList', name: 'ResourceTagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.invoicing#ResourceTagValue', name: 'ResourceTagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    SensitiveBasicStringWithoutSpace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.invoicing#SensitiveBasicStringWithoutSpace', name: 'SensitiveBasicStringWithoutSpace', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^\\S+$", "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingServiceQuotaExceeded", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StringWithoutNewLine = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.invoicing#StringWithoutNewLine', name: 'StringWithoutNewLine', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^.*$"})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#TagResourceResponse', name: 'TagResourceResponse')
    TagrisArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.invoicing#TagrisArn', name: 'TagrisArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:(invoicing)::[0-9]{12}:[-a-zA-Z0-9/:_]+$"})
    TaxInheritanceDisabledFlag = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.invoicing#TaxInheritanceDisabledFlag', name: 'TaxInheritanceDisabledFlag', traits: {"smithy.api#default" => false})
    TaxesBreakdown = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#TaxesBreakdown', name: 'TaxesBreakdown')
    TaxesBreakdownAmount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#TaxesBreakdownAmount', name: 'TaxesBreakdownAmount')
    TaxesBreakdownAmountList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.invoicing#TaxesBreakdownAmountList', name: 'TaxesBreakdownAmountList')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#ThrottlingException', name: 'ThrottlingException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingThrottling", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateInvoiceUnitRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#UpdateInvoiceUnitRequest', name: 'UpdateInvoiceUnitRequest')
    UpdateInvoiceUnitResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#UpdateInvoiceUnitResponse', name: 'UpdateInvoiceUnitResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#ValidationException', name: 'ValidationException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvoicingValidation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.invoicing#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.invoicing#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.invoicing#ValidationExceptionReason', name: 'ValidationExceptionReason')
    Year = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.invoicing#Year', name: 'Year', traits: {"smithy.api#range" => {"min" => 2005, "max" => 2050}})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'message'))
    AccessDeniedException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: 'resourceName', traits: {"smithy.api#documentation" => "<p>You don't have sufficient access to perform this action. </p>"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdString)
    AmountBreakdown.add_member(:sub_total_amount, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'SubTotalAmount', traits: {"smithy.api#documentation" => "<p> The total of a set of the breakdown. </p>"}))
    AmountBreakdown.add_member(:discounts, Smithy::Schema::Shapes::ShapeRef.new(shape: DiscountsBreakdown, location_name: 'Discounts', traits: {"smithy.api#documentation" => "<p> The discounted amount. </p>"}))
    AmountBreakdown.add_member(:taxes, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxesBreakdown, location_name: 'Taxes', traits: {"smithy.api#documentation" => "<p> The tax amount. </p>"}))
    AmountBreakdown.add_member(:fees, Smithy::Schema::Shapes::ShapeRef.new(shape: FeesBreakdown, location_name: 'Fees', traits: {"smithy.api#documentation" => "<p> The fee amount. </p>"}))
    AmountBreakdown.type = Types::AmountBreakdown
    BatchGetInvoiceProfileRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'AccountIds', traits: {"smithy.api#documentation" => "<p>Retrieves the corresponding invoice profile data for these account IDs. </p>", "smithy.api#required" => {}}))
    BatchGetInvoiceProfileRequest.type = Types::BatchGetInvoiceProfileRequest
    BatchGetInvoiceProfileResponse.add_member(:profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: ProfileList, location_name: 'Profiles', traits: {"smithy.api#documentation" => "<p> A list of invoice profiles corresponding to the requested accounts. </p>"}))
    BatchGetInvoiceProfileResponse.type = Types::BatchGetInvoiceProfileResponse
    BillingPeriod.add_member(:month, Smithy::Schema::Shapes::ShapeRef.new(shape: Month, location_name: 'Month', traits: {"smithy.api#documentation" => "<p> The billing period month. </p>", "smithy.api#required" => {}}))
    BillingPeriod.add_member(:year, Smithy::Schema::Shapes::ShapeRef.new(shape: Year, location_name: 'Year', traits: {"smithy.api#documentation" => "<p> The billing period year. </p>", "smithy.api#required" => {}}))
    BillingPeriod.type = Types::BillingPeriod
    CreateInvoiceUnitRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The unique name of the invoice unit that is shown on the generated invoice. This can't be changed once it is set. To change this name, you must delete the invoice unit recreate. </p>", "smithy.api#required" => {}}))
    CreateInvoiceUnitRequest.add_member(:invoice_receiver, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdString, location_name: 'InvoiceReceiver', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services account ID chosen to be the receiver of an invoice unit. All invoices generated for that invoice unit will be sent to this account ID. </p>", "smithy.api#required" => {}}))
    CreateInvoiceUnitRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p> The invoice unit's description. This can be changed at a later time. </p>"}))
    CreateInvoiceUnitRequest.add_member(:tax_inheritance_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxInheritanceDisabledFlag, location_name: 'TaxInheritanceDisabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the invoice unit based tax inheritance is/ should be enabled or disabled. </p>"}))
    CreateInvoiceUnitRequest.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitRule, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>The <code>InvoiceUnitRule</code> object used to create invoice units. </p>", "smithy.api#required" => {}}))
    CreateInvoiceUnitRequest.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'ResourceTags', traits: {"smithy.api#documentation" => "<p> The tag structure that contains a tag key and value. </p>"}))
    CreateInvoiceUnitRequest.type = Types::CreateInvoiceUnitRequest
    CreateInvoiceUnitResponse.add_member(:invoice_unit_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: 'InvoiceUnitArn', traits: {"smithy.api#documentation" => "<p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>"}))
    CreateInvoiceUnitResponse.type = Types::CreateInvoiceUnitResponse
    CurrencyExchangeDetails.add_member(:source_currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'SourceCurrencyCode', traits: {"smithy.api#documentation" => "<p>The exchange source currency. </p>"}))
    CurrencyExchangeDetails.add_member(:target_currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'TargetCurrencyCode', traits: {"smithy.api#documentation" => "<p>The exchange target currency. </p>"}))
    CurrencyExchangeDetails.add_member(:rate, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'Rate', traits: {"smithy.api#documentation" => "<p>The currency exchange rate. </p>"}))
    CurrencyExchangeDetails.type = Types::CurrencyExchangeDetails
    DateInterval.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'StartDate', traits: {"smithy.api#documentation" => "<p> The beginning of the time period that you want invoice-related documents for. The start date is inclusive. For example, if <code>start</code> is <code>2019-01-01</code>, AWS retrieves invoices starting at <code>2019-01-01</code> up to the end date. </p>", "smithy.api#required" => {}}))
    DateInterval.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'EndDate', traits: {"smithy.api#documentation" => "<p> The end of the time period that you want invoice-related documents for. The end date is exclusive. For example, if <code>end</code> is <code>2019-01-10</code>, Amazon Web Services retrieves invoice-related documents from the start date up to, but not including, <code>2018-01-10</code>. </p>", "smithy.api#required" => {}}))
    DateInterval.type = Types::DateInterval
    DeleteInvoiceUnitRequest.add_member(:invoice_unit_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: 'InvoiceUnitArn', traits: {"smithy.api#documentation" => "<p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>", "smithy.api#required" => {}}))
    DeleteInvoiceUnitRequest.type = Types::DeleteInvoiceUnitRequest
    DeleteInvoiceUnitResponse.add_member(:invoice_unit_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: 'InvoiceUnitArn', traits: {"smithy.api#documentation" => "<p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>"}))
    DeleteInvoiceUnitResponse.type = Types::DeleteInvoiceUnitResponse
    DiscountsBreakdown.add_member(:breakdown, Smithy::Schema::Shapes::ShapeRef.new(shape: DiscountsBreakdownAmountList, location_name: 'Breakdown', traits: {"smithy.api#documentation" => "<p>The list of discounts information. </p>"}))
    DiscountsBreakdown.add_member(:total_amount, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'TotalAmount', traits: {"smithy.api#documentation" => "<p> The discount's total amount. </p>"}))
    DiscountsBreakdown.type = Types::DiscountsBreakdown
    DiscountsBreakdownAmount.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p> The list of discounts information. </p>"}))
    DiscountsBreakdownAmount.add_member(:amount, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'Amount', traits: {"smithy.api#documentation" => "<p>The discounted amount. </p>"}))
    DiscountsBreakdownAmount.add_member(:rate, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'Rate', traits: {"smithy.api#documentation" => "<p> The details for the discount rate.. </p>"}))
    DiscountsBreakdownAmount.type = Types::DiscountsBreakdownAmount
    DiscountsBreakdownAmountList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DiscountsBreakdownAmount)
    Entity.add_member(:invoicing_entity, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'InvoicingEntity', traits: {"smithy.api#documentation" => "<p>The name of the entity that issues the Amazon Web Services invoice.</p>"}))
    Entity.type = Types::Entity
    FeesBreakdown.add_member(:breakdown, Smithy::Schema::Shapes::ShapeRef.new(shape: FeesBreakdownAmountList, location_name: 'Breakdown', traits: {"smithy.api#documentation" => "<p>The list of fees information. </p>"}))
    FeesBreakdown.add_member(:total_amount, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'TotalAmount', traits: {"smithy.api#documentation" => "<p> The total amount of fees. </p>"}))
    FeesBreakdown.type = Types::FeesBreakdown
    FeesBreakdownAmount.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p> The list of fees information. </p>"}))
    FeesBreakdownAmount.add_member(:amount, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'Amount', traits: {"smithy.api#documentation" => "<p> The fee amount. </p>"}))
    FeesBreakdownAmount.add_member(:rate, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'Rate', traits: {"smithy.api#documentation" => "<p> Details about the rate amount. </p>"}))
    FeesBreakdownAmount.type = Types::FeesBreakdownAmount
    FeesBreakdownAmountList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FeesBreakdownAmount)
    Filters.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitNames, location_name: 'Names', traits: {"smithy.api#documentation" => "<p> An optional input to the list API. You can specify a list of invoice unit names inside filters to return invoice units that match only the specified invoice unit names. If multiple names are provided, the result is an <code>OR</code> condition (match any) of the specified invoice unit names. </p>"}))
    Filters.add_member(:invoice_receivers, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'InvoiceReceivers', traits: {"smithy.api#documentation" => "<p> You can specify a list of Amazon Web Services account IDs inside filters to return invoice units that match only the specified accounts. If multiple accounts are provided, the result is an <code>OR</code> condition (match any) of the specified accounts. This filter only matches the specified accounts on the invoice receivers of the invoice units. </p>"}))
    Filters.add_member(:accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'Accounts', traits: {"smithy.api#documentation" => "<p> You can specify a list of Amazon Web Services account IDs inside filters to return invoice units that match only the specified accounts. If multiple accounts are provided, the result is an <code>OR</code> condition (match any) of the specified accounts. The specified account IDs are matched with either the receiver or the linked accounts in the rules. </p>"}))
    Filters.type = Types::Filters
    GetInvoiceUnitRequest.add_member(:invoice_unit_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: 'InvoiceUnitArn', traits: {"smithy.api#documentation" => "<p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>", "smithy.api#required" => {}}))
    GetInvoiceUnitRequest.add_member(:as_of, Smithy::Schema::Shapes::ShapeRef.new(shape: AsOfTimestamp, location_name: 'AsOf', traits: {"smithy.api#documentation" => "<p> The state of an invoice unit at a specified time. You can see legacy invoice units that are currently deleted if the <code>AsOf</code> time is set to before it was deleted. If an <code>AsOf</code> is not provided, the default value is the current time. </p>"}))
    GetInvoiceUnitRequest.type = Types::GetInvoiceUnitRequest
    GetInvoiceUnitResponse.add_member(:invoice_unit_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: 'InvoiceUnitArn', traits: {"smithy.api#documentation" => "<p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>"}))
    GetInvoiceUnitResponse.add_member(:invoice_receiver, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdString, location_name: 'InvoiceReceiver', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services account ID chosen to be the receiver of an invoice unit. All invoices generated for that invoice unit will be sent to this account ID. </p>"}))
    GetInvoiceUnitResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The unique name of the invoice unit that is shown on the generated invoice. </p>"}))
    GetInvoiceUnitResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p> The assigned description for an invoice unit. </p>"}))
    GetInvoiceUnitResponse.add_member(:tax_inheritance_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxInheritanceDisabledFlag, location_name: 'TaxInheritanceDisabled', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p> Whether the invoice unit based tax inheritance is/ should be enabled or disabled. </p>"}))
    GetInvoiceUnitResponse.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitRule, location_name: 'Rule'))
    GetInvoiceUnitResponse.add_member(:last_modified, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: 'LastModified', traits: {"smithy.api#documentation" => "<p> The most recent date the invoice unit response was updated. </p>"}))
    GetInvoiceUnitResponse.type = Types::GetInvoiceUnitResponse
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The processing request failed because of an unknown error, exception, or failure.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    InvoiceCurrencyAmount.add_member(:total_amount, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'TotalAmount', traits: {"smithy.api#documentation" => "<p> The invoice currency amount. </p>"}))
    InvoiceCurrencyAmount.add_member(:total_amount_before_tax, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'TotalAmountBeforeTax', traits: {"smithy.api#documentation" => "<p> Details about the invoice total amount before tax. </p>"}))
    InvoiceCurrencyAmount.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: 'CurrencyCode', traits: {"smithy.api#documentation" => "<p>The currency dominion of the invoice document.</p>"}))
    InvoiceCurrencyAmount.add_member(:amount_breakdown, Smithy::Schema::Shapes::ShapeRef.new(shape: AmountBreakdown, location_name: 'AmountBreakdown', traits: {"smithy.api#documentation" => "<p> Details about the invoice currency amount. </p>"}))
    InvoiceCurrencyAmount.add_member(:currency_exchange_details, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyExchangeDetails, location_name: 'CurrencyExchangeDetails', traits: {"smithy.api#documentation" => "<p> The details of currency exchange. </p>"}))
    InvoiceCurrencyAmount.type = Types::InvoiceCurrencyAmount
    InvoiceProfile.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p> The account ID the invoice profile is generated for. </p>"}))
    InvoiceProfile.add_member(:receiver_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: 'ReceiverName', traits: {"smithy.api#documentation" => "<p> The name of the person receiving the invoice profile. </p>"}))
    InvoiceProfile.add_member(:receiver_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiverAddress, location_name: 'ReceiverAddress', traits: {"smithy.api#documentation" => "<p>The address of the receiver that will be printed on the invoice. </p>"}))
    InvoiceProfile.add_member(:receiver_email, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveBasicStringWithoutSpace, location_name: 'ReceiverEmail', traits: {"smithy.api#documentation" => "<p>The email address for the invoice profile receiver. </p>"}))
    InvoiceProfile.add_member(:issuer, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicStringWithoutSpace, location_name: 'Issuer', traits: {"smithy.api#documentation" => "<p> This specifies the issuing entity of the invoice. </p>"}))
    InvoiceProfile.add_member(:tax_registration_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveBasicStringWithoutSpace, location_name: 'TaxRegistrationNumber', traits: {"smithy.api#documentation" => "<p> Your Tax Registration Number (TRN) information. </p>"}))
    InvoiceProfile.type = Types::InvoiceProfile
    InvoiceSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceSummary)
    InvoiceSummariesFilter.add_member(:time_interval, Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimeInterval', traits: {"smithy.api#documentation" => "<p>The date range for invoice summary retrieval. </p>"}))
    InvoiceSummariesFilter.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'BillingPeriod', traits: {"smithy.api#documentation" => "<p>The billing period associated with the invoice documents. </p>"}))
    InvoiceSummariesFilter.add_member(:invoicing_entity, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'InvoicingEntity', traits: {"smithy.api#documentation" => "<p>The name of the entity that issues the Amazon Web Services invoice.</p>"}))
    InvoiceSummariesFilter.type = Types::InvoiceSummariesFilter
    InvoiceSummariesSelector.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvoiceSummariesResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The query identifier type (<code>INVOICE_ID</code> or <code>ACCOUNT_ID</code>).</p>", "smithy.api#required" => {}}))
    InvoiceSummariesSelector.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithoutNewLine, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the query identifier.</p>", "smithy.api#required" => {}}))
    InvoiceSummariesSelector.type = Types::InvoiceSummariesSelector
    InvoiceSummary.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdString, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services account ID. </p>"}))
    InvoiceSummary.add_member(:invoice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'InvoiceId', traits: {"smithy.api#documentation" => "<p> The invoice ID. </p>"}))
    InvoiceSummary.add_member(:issued_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'IssuedDate', traits: {"smithy.api#documentation" => "<p> The issued date of the invoice. </p>"}))
    InvoiceSummary.add_member(:due_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'DueDate', traits: {"smithy.api#documentation" => "<p> The invoice due date. </p>"}))
    InvoiceSummary.add_member(:entity, Smithy::Schema::Shapes::ShapeRef.new(shape: Entity, location_name: 'Entity', traits: {"smithy.api#documentation" => "<p>The organization name providing Amazon Web Services services.</p>"}))
    InvoiceSummary.add_member(:billing_period, Smithy::Schema::Shapes::ShapeRef.new(shape: BillingPeriod, location_name: 'BillingPeriod', traits: {"smithy.api#documentation" => "<p> The billing period of the invoice-related document. </p>"}))
    InvoiceSummary.add_member(:invoice_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceType, location_name: 'InvoiceType', traits: {"smithy.api#documentation" => "<p> The type of invoice. </p>"}))
    InvoiceSummary.add_member(:original_invoice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'OriginalInvoiceId', traits: {"smithy.api#documentation" => "<p>The initial or original invoice ID. </p>"}))
    InvoiceSummary.add_member(:purchase_order_number, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'PurchaseOrderNumber', traits: {"smithy.api#documentation" => "<p> The purchase order number associated to the invoice.</p>"}))
    InvoiceSummary.add_member(:base_currency_amount, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceCurrencyAmount, location_name: 'BaseCurrencyAmount', traits: {"smithy.api#documentation" => "<p> The summary with the product and service currency. </p>"}))
    InvoiceSummary.add_member(:tax_currency_amount, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceCurrencyAmount, location_name: 'TaxCurrencyAmount', traits: {"smithy.api#documentation" => "<p> The summary with the tax currency. </p>"}))
    InvoiceSummary.add_member(:payment_currency_amount, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceCurrencyAmount, location_name: 'PaymentCurrencyAmount', traits: {"smithy.api#documentation" => "<p> The summary with the customer configured currency. </p>"}))
    InvoiceSummary.type = Types::InvoiceSummary
    InvoiceType.add_member(:invoice, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVOICE', traits: {"smithy.api#enumValue" => "INVOICE"}))
    InvoiceType.add_member(:credit_memo, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREDIT_MEMO', traits: {"smithy.api#enumValue" => "CREDIT_MEMO"}))
    InvoiceUnit.add_member(:invoice_unit_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: 'InvoiceUnitArn', traits: {"smithy.api#documentation" => "<p>ARN to identify an invoice unit. This information can't be modified or deleted. </p>"}))
    InvoiceUnit.add_member(:invoice_receiver, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdString, location_name: 'InvoiceReceiver', traits: {"smithy.api#documentation" => "<p>The account that receives invoices related to the invoice unit. </p>"}))
    InvoiceUnit.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> A unique name that is distinctive within your Amazon Web Services. </p>"}))
    InvoiceUnit.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The assigned description for an invoice unit. This information can't be modified or deleted. </p>"}))
    InvoiceUnit.add_member(:tax_inheritance_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxInheritanceDisabledFlag, location_name: 'TaxInheritanceDisabled', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Whether the invoice unit based tax inheritance is/ should be enabled or disabled. </p>"}))
    InvoiceUnit.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitRule, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p> An <code>InvoiceUnitRule</code> object used the categorize invoice units. </p>"}))
    InvoiceUnit.add_member(:last_modified, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: 'LastModified', traits: {"smithy.api#documentation" => "<p> The last time the invoice unit was updated. This is important to determine the version of invoice unit configuration used to create the invoices. Any invoice created after this modified time will use this invoice unit configuration. </p>"}))
    InvoiceUnit.type = Types::InvoiceUnit
    InvoiceUnitNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitName)
    InvoiceUnitRule.add_member(:linked_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdList, location_name: 'LinkedAccounts', traits: {"smithy.api#documentation" => "<p>The list of <code>LINKED_ACCOUNT</code> IDs where charges are included within the invoice unit. </p>"}))
    InvoiceUnitRule.type = Types::InvoiceUnitRule
    InvoiceUnits.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnit)
    ListInvoiceSummariesRequest.add_member(:selector, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceSummariesSelector, location_name: 'Selector', traits: {"smithy.api#documentation" => "<p>The option to retrieve details for a specific invoice by providing its unique ID. Alternatively, access information for all invoices linked to the account by providing an account ID.</p>", "smithy.api#required" => {}}))
    ListInvoiceSummariesRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceSummariesFilter, location_name: 'Filter', traits: {"smithy.api#documentation" => "<p>Filters you can use to customize your invoice summary.</p>"}))
    ListInvoiceSummariesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"}))
    ListInvoiceSummariesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceSummariesMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of invoice summaries a paginated response can contain.</p>"}))
    ListInvoiceSummariesRequest.type = Types::ListInvoiceSummariesRequest
    ListInvoiceSummariesResourceType.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_ID', traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    ListInvoiceSummariesResourceType.add_member(:invoice_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVOICE_ID', traits: {"smithy.api#enumValue" => "INVOICE_ID"}))
    ListInvoiceSummariesResponse.add_member(:invoice_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceSummaries, location_name: 'InvoiceSummaries', traits: {"smithy.api#documentation" => "<p>List of key (summary level) invoice details without line item details.</p>", "smithy.api#required" => {}}))
    ListInvoiceSummariesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"}))
    ListInvoiceSummariesResponse.type = Types::ListInvoiceSummariesResponse
    ListInvoiceUnitsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p> An optional input to the list API. If multiple filters are specified, the returned list will be a configuration that match all of the provided filters. Supported filter types are <code>InvoiceReceivers</code>, <code>Names</code>, and <code>Accounts</code>. </p>"}))
    ListInvoiceUnitsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next token used to indicate where the returned list should start from. </p>"}))
    ListInvoiceUnitsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: 'MaxResults', traits: {"smithy.api#default" => 500, "smithy.api#documentation" => "<p>The maximum number of invoice units that can be returned. </p>"}))
    ListInvoiceUnitsRequest.add_member(:as_of, Smithy::Schema::Shapes::ShapeRef.new(shape: AsOfTimestamp, location_name: 'AsOf', traits: {"smithy.api#documentation" => "<p> The state of an invoice unit at a specified time. You can see legacy invoice units that are currently deleted if the <code>AsOf</code> time is set to before it was deleted. If an <code>AsOf</code> is not provided, the default value is the current time. </p>"}))
    ListInvoiceUnitsRequest.type = Types::ListInvoiceUnitsRequest
    ListInvoiceUnitsResponse.add_member(:invoice_units, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnits, location_name: 'InvoiceUnits', traits: {"smithy.api#documentation" => "<p> An invoice unit is a set of mutually exclusive accounts that correspond to your business entity. </p>"}))
    ListInvoiceUnitsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The next token used to indicate where the returned list should start from. </p>"}))
    ListInvoiceUnitsResponse.type = Types::ListInvoiceUnitsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of tags to list. </p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'ResourceTags', traits: {"smithy.api#documentation" => "<p> Adds a tag to a resource. </p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ProfileList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceProfile)
    ReceiverAddress.add_member(:address_line1, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'AddressLine1', traits: {"smithy.api#documentation" => "<p> The first line of the address. </p>"}))
    ReceiverAddress.add_member(:address_line2, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'AddressLine2', traits: {"smithy.api#documentation" => "<p> The second line of the address, if applicable. </p>"}))
    ReceiverAddress.add_member(:address_line3, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'AddressLine3', traits: {"smithy.api#documentation" => "<p> The third line of the address, if applicable. </p>"}))
    ReceiverAddress.add_member(:district_or_county, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'DistrictOrCounty', traits: {"smithy.api#documentation" => "<p> The district or country the address is located in. </p>"}))
    ReceiverAddress.add_member(:city, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'City', traits: {"smithy.api#documentation" => "<p> The city that the address is in. </p>"}))
    ReceiverAddress.add_member(:state_or_region, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'StateOrRegion', traits: {"smithy.api#documentation" => "<p> The state, region, or province the address is located. </p>"}))
    ReceiverAddress.add_member(:country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'CountryCode', traits: {"smithy.api#documentation" => "<p> The country code for the country the address is in. </p>"}))
    ReceiverAddress.add_member(:company_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'CompanyName', traits: {"smithy.api#documentation" => "<p> A unique company name. </p>"}))
    ReceiverAddress.add_member(:postal_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'PostalCode', traits: {"smithy.api#documentation" => "<p> The postal code associated with the address. </p>"}))
    ReceiverAddress.type = Types::ReceiverAddress
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'message'))
    ResourceNotFoundException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: 'resourceName', traits: {"smithy.api#documentation" => "<p>The resource could not be found.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The object key of your of your resource tag. </p>", "smithy.api#required" => {}}))
    ResourceTag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p> The specific value of the resource tag. </p>", "smithy.api#required" => {}}))
    ResourceTag.type = Types::ResourceTag
    ResourceTagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKey)
    ResourceTagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTag)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the tags. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'ResourceTags', traits: {"smithy.api#documentation" => "<p> Adds a tag to a resource. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TaxesBreakdown.add_member(:breakdown, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxesBreakdownAmountList, location_name: 'Breakdown', traits: {"smithy.api#documentation" => "<p> A list of tax information. </p>"}))
    TaxesBreakdown.add_member(:total_amount, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'TotalAmount', traits: {"smithy.api#documentation" => "<p> The total amount for your taxes. </p>"}))
    TaxesBreakdown.type = Types::TaxesBreakdown
    TaxesBreakdownAmount.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p> The details of the taxes. </p>"}))
    TaxesBreakdownAmount.add_member(:amount, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'Amount', traits: {"smithy.api#documentation" => "<p> The tax amount. </p>"}))
    TaxesBreakdownAmount.add_member(:rate, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'Rate', traits: {"smithy.api#documentation" => "<p> The details of the tax rate. </p>"}))
    TaxesBreakdownAmount.type = Types::TaxesBreakdownAmount
    TaxesBreakdownAmountList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TaxesBreakdownAmount)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TagrisArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) to untag. </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:resource_tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKeyList, location_name: 'ResourceTagKeys', traits: {"smithy.api#documentation" => "<p> Keys for the tags to be removed. </p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateInvoiceUnitRequest.add_member(:invoice_unit_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: 'InvoiceUnitArn', traits: {"smithy.api#documentation" => "<p>The ARN to identify an invoice unit. This information can't be modified or deleted. </p>", "smithy.api#required" => {}}))
    UpdateInvoiceUnitRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The assigned description for an invoice unit. This information can't be modified or deleted. </p>"}))
    UpdateInvoiceUnitRequest.add_member(:tax_inheritance_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: TaxInheritanceDisabledFlag, location_name: 'TaxInheritanceDisabled', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>Whether the invoice unit based tax inheritance is/ should be enabled or disabled. </p>"}))
    UpdateInvoiceUnitRequest.add_member(:rule, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitRule, location_name: 'Rule', traits: {"smithy.api#documentation" => "<p>The <code>InvoiceUnitRule</code> object used to update invoice units. </p>"}))
    UpdateInvoiceUnitRequest.type = Types::UpdateInvoiceUnitRequest
    UpdateInvoiceUnitResponse.add_member(:invoice_unit_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: 'InvoiceUnitArn', traits: {"smithy.api#documentation" => "<p> The ARN to identify an invoice unit. This information can't be modified or deleted. </p>"}))
    UpdateInvoiceUnitResponse.type = Types::UpdateInvoiceUnitResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'message'))
    ValidationException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: 'resourceName', traits: {"smithy.api#documentation" => "<p>You don't have sufficient access to perform this action. </p>"}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>You don't have sufficient access to perform this action. </p>"}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p> The input fails to satisfy the constraints specified by an Amazon Web Services service. </p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The input fails to satisfy the constraints specified by an Amazon Web Services service. </p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicString, location_name: 'message', traits: {"smithy.api#documentation" => "<p> The input fails to satisfy the constraints specified by an Amazon Web Services service. </p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:non_members_present, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NON_MEMBERS_PRESENT', traits: {"smithy.api#enumValue" => "nonMemberPresent"}))
    ValidationExceptionReason.add_member(:max_accounts_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_ACCOUNTS_EXCEEDED', traits: {"smithy.api#enumValue" => "maxAccountsExceeded"}))
    ValidationExceptionReason.add_member(:max_invoice_units_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_INVOICE_UNITS_EXCEEDED', traits: {"smithy.api#enumValue" => "maxInvoiceUnitsExceeded"}))
    ValidationExceptionReason.add_member(:duplicate_invoice_unit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUPLICATE_INVOICE_UNIT', traits: {"smithy.api#enumValue" => "duplicateInvoiceUnit"}))
    ValidationExceptionReason.add_member(:mutual_exclusion_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MUTUAL_EXCLUSION_ERROR', traits: {"smithy.api#enumValue" => "mutualExclusionError"}))
    ValidationExceptionReason.add_member(:account_membership_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_MEMBERSHIP_ERROR', traits: {"smithy.api#enumValue" => "accountMembershipError"}))
    ValidationExceptionReason.add_member(:tax_settings_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAX_SETTINGS_ERROR', traits: {"smithy.api#enumValue" => "taxSettingsError"}))
    ValidationExceptionReason.add_member(:expired_next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED_NEXT_TOKEN', traits: {"smithy.api#enumValue" => "expiredNextToken"}))
    ValidationExceptionReason.add_member(:invalid_next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NEXT_TOKEN', traits: {"smithy.api#enumValue" => "invalidNextToken"}))
    ValidationExceptionReason.add_member(:invalid_input, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_INPUT', traits: {"smithy.api#enumValue" => "invalidInput"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "other"}))

    Invoicing = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.invoicing#Invoicing"
      service.name = "Invoicing"
      service.version = "2024-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Invoicing", "arnNamespace" => "invoicing", "endpointPrefix" => "invoicing", "docId" => "invoicing-2024-12-01", "cloudTrailEventSource" => "invoicing.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "invoicing"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Invoicing"}
      service.add_operation(:batch_get_invoice_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#BatchGetInvoiceProfile"
        operation.name = "BatchGetInvoiceProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetInvoiceProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetInvoiceProfileResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_invoice_unit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#CreateInvoiceUnit"
        operation.name = "CreateInvoiceUnit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInvoiceUnitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInvoiceUnitResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_invoice_unit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#DeleteInvoiceUnit"
        operation.name = "DeleteInvoiceUnit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInvoiceUnitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInvoiceUnitResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_invoice_unit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#GetInvoiceUnit"
        operation.name = "GetInvoiceUnit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvoiceUnitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvoiceUnitResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_invoice_summaries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#ListInvoiceSummaries"
        operation.name = "ListInvoiceSummaries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvoiceSummariesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvoiceSummariesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListInvoiceSummaries.new
      end)
      service.add_operation(:list_invoice_units, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#ListInvoiceUnits"
        operation.name = "ListInvoiceUnits"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvoiceUnitsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvoiceUnitsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListInvoiceUnitsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListInvoiceUnits.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_invoice_unit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.invoicing#UpdateInvoiceUnit"
        operation.name = "UpdateInvoiceUnit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInvoiceUnitRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInvoiceUnitResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
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
