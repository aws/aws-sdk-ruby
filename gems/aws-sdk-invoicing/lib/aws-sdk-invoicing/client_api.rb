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
    CreateInvoiceUnitRequest = Shapes::StructureShape.new(name: 'CreateInvoiceUnitRequest')
    CreateInvoiceUnitResponse = Shapes::StructureShape.new(name: 'CreateInvoiceUnitResponse')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    CurrencyExchangeDetails = Shapes::StructureShape.new(name: 'CurrencyExchangeDetails')
    DateInterval = Shapes::StructureShape.new(name: 'DateInterval')
    DeleteInvoiceUnitRequest = Shapes::StructureShape.new(name: 'DeleteInvoiceUnitRequest')
    DeleteInvoiceUnitResponse = Shapes::StructureShape.new(name: 'DeleteInvoiceUnitResponse')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    DiscountsBreakdown = Shapes::StructureShape.new(name: 'DiscountsBreakdown')
    DiscountsBreakdownAmount = Shapes::StructureShape.new(name: 'DiscountsBreakdownAmount')
    DiscountsBreakdownAmountList = Shapes::ListShape.new(name: 'DiscountsBreakdownAmountList')
    Entity = Shapes::StructureShape.new(name: 'Entity')
    FeesBreakdown = Shapes::StructureShape.new(name: 'FeesBreakdown')
    FeesBreakdownAmount = Shapes::StructureShape.new(name: 'FeesBreakdownAmount')
    FeesBreakdownAmountList = Shapes::ListShape.new(name: 'FeesBreakdownAmountList')
    Filters = Shapes::StructureShape.new(name: 'Filters')
    GetInvoiceUnitRequest = Shapes::StructureShape.new(name: 'GetInvoiceUnitRequest')
    GetInvoiceUnitResponse = Shapes::StructureShape.new(name: 'GetInvoiceUnitResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvoiceCurrencyAmount = Shapes::StructureShape.new(name: 'InvoiceCurrencyAmount')
    InvoiceProfile = Shapes::StructureShape.new(name: 'InvoiceProfile')
    InvoiceSummaries = Shapes::ListShape.new(name: 'InvoiceSummaries')
    InvoiceSummariesFilter = Shapes::StructureShape.new(name: 'InvoiceSummariesFilter')
    InvoiceSummariesMaxResults = Shapes::IntegerShape.new(name: 'InvoiceSummariesMaxResults')
    InvoiceSummariesSelector = Shapes::StructureShape.new(name: 'InvoiceSummariesSelector')
    InvoiceSummary = Shapes::StructureShape.new(name: 'InvoiceSummary')
    InvoiceType = Shapes::StringShape.new(name: 'InvoiceType')
    InvoiceUnit = Shapes::StructureShape.new(name: 'InvoiceUnit')
    InvoiceUnitArnString = Shapes::StringShape.new(name: 'InvoiceUnitArnString')
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
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResultsInteger = Shapes::IntegerShape.new(name: 'MaxResultsInteger')
    Month = Shapes::IntegerShape.new(name: 'Month')
    NextTokenString = Shapes::StringShape.new(name: 'NextTokenString')
    ProfileList = Shapes::ListShape.new(name: 'ProfileList')
    ReceiverAddress = Shapes::StructureShape.new(name: 'ReceiverAddress')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTagKey = Shapes::StringShape.new(name: 'ResourceTagKey')
    ResourceTagKeyList = Shapes::ListShape.new(name: 'ResourceTagKeyList')
    ResourceTagList = Shapes::ListShape.new(name: 'ResourceTagList')
    ResourceTagValue = Shapes::StringShape.new(name: 'ResourceTagValue')
    SensitiveBasicStringWithoutSpace = Shapes::StringShape.new(name: 'SensitiveBasicStringWithoutSpace')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StringWithoutNewLine = Shapes::StringShape.new(name: 'StringWithoutNewLine')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagrisArn = Shapes::StringShape.new(name: 'TagrisArn')
    TaxInheritanceDisabledFlag = Shapes::BooleanShape.new(name: 'TaxInheritanceDisabledFlag')
    TaxesBreakdown = Shapes::StructureShape.new(name: 'TaxesBreakdown')
    TaxesBreakdownAmount = Shapes::StructureShape.new(name: 'TaxesBreakdownAmount')
    TaxesBreakdownAmountList = Shapes::ListShape.new(name: 'TaxesBreakdownAmountList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateInvoiceUnitRequest = Shapes::StructureShape.new(name: 'UpdateInvoiceUnitRequest')
    UpdateInvoiceUnitResponse = Shapes::StructureShape.new(name: 'UpdateInvoiceUnitResponse')
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

    CreateInvoiceUnitRequest.add_member(:name, Shapes::ShapeRef.new(shape: InvoiceUnitName, required: true, location_name: "Name"))
    CreateInvoiceUnitRequest.add_member(:invoice_receiver, Shapes::ShapeRef.new(shape: AccountIdString, required: true, location_name: "InvoiceReceiver"))
    CreateInvoiceUnitRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateInvoiceUnitRequest.add_member(:tax_inheritance_disabled, Shapes::ShapeRef.new(shape: TaxInheritanceDisabledFlag, location_name: "TaxInheritanceDisabled"))
    CreateInvoiceUnitRequest.add_member(:rule, Shapes::ShapeRef.new(shape: InvoiceUnitRule, required: true, location_name: "Rule"))
    CreateInvoiceUnitRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags"))
    CreateInvoiceUnitRequest.struct_class = Types::CreateInvoiceUnitRequest

    CreateInvoiceUnitResponse.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    CreateInvoiceUnitResponse.struct_class = Types::CreateInvoiceUnitResponse

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

    DiscountsBreakdown.add_member(:breakdown, Shapes::ShapeRef.new(shape: DiscountsBreakdownAmountList, location_name: "Breakdown"))
    DiscountsBreakdown.add_member(:total_amount, Shapes::ShapeRef.new(shape: BasicString, location_name: "TotalAmount"))
    DiscountsBreakdown.struct_class = Types::DiscountsBreakdown

    DiscountsBreakdownAmount.add_member(:description, Shapes::ShapeRef.new(shape: BasicString, location_name: "Description"))
    DiscountsBreakdownAmount.add_member(:amount, Shapes::ShapeRef.new(shape: BasicString, location_name: "Amount"))
    DiscountsBreakdownAmount.add_member(:rate, Shapes::ShapeRef.new(shape: BasicString, location_name: "Rate"))
    DiscountsBreakdownAmount.struct_class = Types::DiscountsBreakdownAmount

    DiscountsBreakdownAmountList.member = Shapes::ShapeRef.new(shape: DiscountsBreakdownAmount)

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
    Filters.struct_class = Types::Filters

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

    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvoiceCurrencyAmount.add_member(:total_amount, Shapes::ShapeRef.new(shape: BasicString, location_name: "TotalAmount"))
    InvoiceCurrencyAmount.add_member(:total_amount_before_tax, Shapes::ShapeRef.new(shape: BasicString, location_name: "TotalAmountBeforeTax"))
    InvoiceCurrencyAmount.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "CurrencyCode"))
    InvoiceCurrencyAmount.add_member(:amount_breakdown, Shapes::ShapeRef.new(shape: AmountBreakdown, location_name: "AmountBreakdown"))
    InvoiceCurrencyAmount.add_member(:currency_exchange_details, Shapes::ShapeRef.new(shape: CurrencyExchangeDetails, location_name: "CurrencyExchangeDetails"))
    InvoiceCurrencyAmount.struct_class = Types::InvoiceCurrencyAmount

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

    InvoiceUnitNames.member = Shapes::ShapeRef.new(shape: InvoiceUnitName)

    InvoiceUnitRule.add_member(:linked_accounts, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "LinkedAccounts"))
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

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagrisArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ProfileList.member = Shapes::ShapeRef.new(shape: InvoiceProfile)

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

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

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
    end

  end
end
