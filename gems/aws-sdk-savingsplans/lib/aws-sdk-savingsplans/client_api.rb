# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SavingsPlans
  # @api private
  module ClientApi

    include Seahorse::Model

    Amount = Shapes::StringShape.new(name: 'Amount')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CreateSavingsPlanRequest = Shapes::StructureShape.new(name: 'CreateSavingsPlanRequest')
    CreateSavingsPlanResponse = Shapes::StructureShape.new(name: 'CreateSavingsPlanResponse')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    CurrencyList = Shapes::ListShape.new(name: 'CurrencyList')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DeleteQueuedSavingsPlanRequest = Shapes::StructureShape.new(name: 'DeleteQueuedSavingsPlanRequest')
    DeleteQueuedSavingsPlanResponse = Shapes::StructureShape.new(name: 'DeleteQueuedSavingsPlanResponse')
    DescribeSavingsPlanRatesRequest = Shapes::StructureShape.new(name: 'DescribeSavingsPlanRatesRequest')
    DescribeSavingsPlanRatesResponse = Shapes::StructureShape.new(name: 'DescribeSavingsPlanRatesResponse')
    DescribeSavingsPlansOfferingRatesRequest = Shapes::StructureShape.new(name: 'DescribeSavingsPlansOfferingRatesRequest')
    DescribeSavingsPlansOfferingRatesResponse = Shapes::StructureShape.new(name: 'DescribeSavingsPlansOfferingRatesResponse')
    DescribeSavingsPlansOfferingsRequest = Shapes::StructureShape.new(name: 'DescribeSavingsPlansOfferingsRequest')
    DescribeSavingsPlansOfferingsResponse = Shapes::StructureShape.new(name: 'DescribeSavingsPlansOfferingsResponse')
    DescribeSavingsPlansRequest = Shapes::StructureShape.new(name: 'DescribeSavingsPlansRequest')
    DescribeSavingsPlansResponse = Shapes::StructureShape.new(name: 'DescribeSavingsPlansResponse')
    DurationsList = Shapes::ListShape.new(name: 'DurationsList')
    EC2InstanceFamily = Shapes::StringShape.new(name: 'EC2InstanceFamily')
    FilterValuesList = Shapes::ListShape.new(name: 'FilterValuesList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JsonSafeFilterValueString = Shapes::StringShape.new(name: 'JsonSafeFilterValueString')
    ListOfStrings = Shapes::ListShape.new(name: 'ListOfStrings')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParentSavingsPlanOffering = Shapes::StructureShape.new(name: 'ParentSavingsPlanOffering')
    Region = Shapes::StringShape.new(name: 'Region')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SavingsPlan = Shapes::StructureShape.new(name: 'SavingsPlan')
    SavingsPlanArn = Shapes::StringShape.new(name: 'SavingsPlanArn')
    SavingsPlanArnList = Shapes::ListShape.new(name: 'SavingsPlanArnList')
    SavingsPlanDescription = Shapes::StringShape.new(name: 'SavingsPlanDescription')
    SavingsPlanDescriptionsList = Shapes::ListShape.new(name: 'SavingsPlanDescriptionsList')
    SavingsPlanFilter = Shapes::StructureShape.new(name: 'SavingsPlanFilter')
    SavingsPlanFilterList = Shapes::ListShape.new(name: 'SavingsPlanFilterList')
    SavingsPlanId = Shapes::StringShape.new(name: 'SavingsPlanId')
    SavingsPlanIdList = Shapes::ListShape.new(name: 'SavingsPlanIdList')
    SavingsPlanList = Shapes::ListShape.new(name: 'SavingsPlanList')
    SavingsPlanOffering = Shapes::StructureShape.new(name: 'SavingsPlanOffering')
    SavingsPlanOfferingFilterAttribute = Shapes::StringShape.new(name: 'SavingsPlanOfferingFilterAttribute')
    SavingsPlanOfferingFilterElement = Shapes::StructureShape.new(name: 'SavingsPlanOfferingFilterElement')
    SavingsPlanOfferingFiltersList = Shapes::ListShape.new(name: 'SavingsPlanOfferingFiltersList')
    SavingsPlanOfferingId = Shapes::StringShape.new(name: 'SavingsPlanOfferingId')
    SavingsPlanOfferingProperty = Shapes::StructureShape.new(name: 'SavingsPlanOfferingProperty')
    SavingsPlanOfferingPropertyKey = Shapes::StringShape.new(name: 'SavingsPlanOfferingPropertyKey')
    SavingsPlanOfferingPropertyList = Shapes::ListShape.new(name: 'SavingsPlanOfferingPropertyList')
    SavingsPlanOfferingRate = Shapes::StructureShape.new(name: 'SavingsPlanOfferingRate')
    SavingsPlanOfferingRateFilterElement = Shapes::StructureShape.new(name: 'SavingsPlanOfferingRateFilterElement')
    SavingsPlanOfferingRateFiltersList = Shapes::ListShape.new(name: 'SavingsPlanOfferingRateFiltersList')
    SavingsPlanOfferingRateProperty = Shapes::StructureShape.new(name: 'SavingsPlanOfferingRateProperty')
    SavingsPlanOfferingRatePropertyList = Shapes::ListShape.new(name: 'SavingsPlanOfferingRatePropertyList')
    SavingsPlanOfferingRatesList = Shapes::ListShape.new(name: 'SavingsPlanOfferingRatesList')
    SavingsPlanOfferingsList = Shapes::ListShape.new(name: 'SavingsPlanOfferingsList')
    SavingsPlanOperation = Shapes::StringShape.new(name: 'SavingsPlanOperation')
    SavingsPlanOperationList = Shapes::ListShape.new(name: 'SavingsPlanOperationList')
    SavingsPlanPaymentOption = Shapes::StringShape.new(name: 'SavingsPlanPaymentOption')
    SavingsPlanPaymentOptionList = Shapes::ListShape.new(name: 'SavingsPlanPaymentOptionList')
    SavingsPlanProductType = Shapes::StringShape.new(name: 'SavingsPlanProductType')
    SavingsPlanProductTypeList = Shapes::ListShape.new(name: 'SavingsPlanProductTypeList')
    SavingsPlanRate = Shapes::StructureShape.new(name: 'SavingsPlanRate')
    SavingsPlanRateFilter = Shapes::StructureShape.new(name: 'SavingsPlanRateFilter')
    SavingsPlanRateFilterAttribute = Shapes::StringShape.new(name: 'SavingsPlanRateFilterAttribute')
    SavingsPlanRateFilterList = Shapes::ListShape.new(name: 'SavingsPlanRateFilterList')
    SavingsPlanRateFilterName = Shapes::StringShape.new(name: 'SavingsPlanRateFilterName')
    SavingsPlanRateList = Shapes::ListShape.new(name: 'SavingsPlanRateList')
    SavingsPlanRateOperation = Shapes::StringShape.new(name: 'SavingsPlanRateOperation')
    SavingsPlanRateOperationList = Shapes::ListShape.new(name: 'SavingsPlanRateOperationList')
    SavingsPlanRatePricePerUnit = Shapes::StringShape.new(name: 'SavingsPlanRatePricePerUnit')
    SavingsPlanRateProperty = Shapes::StructureShape.new(name: 'SavingsPlanRateProperty')
    SavingsPlanRatePropertyKey = Shapes::StringShape.new(name: 'SavingsPlanRatePropertyKey')
    SavingsPlanRatePropertyList = Shapes::ListShape.new(name: 'SavingsPlanRatePropertyList')
    SavingsPlanRateServiceCode = Shapes::StringShape.new(name: 'SavingsPlanRateServiceCode')
    SavingsPlanRateServiceCodeList = Shapes::ListShape.new(name: 'SavingsPlanRateServiceCodeList')
    SavingsPlanRateUnit = Shapes::StringShape.new(name: 'SavingsPlanRateUnit')
    SavingsPlanRateUsageType = Shapes::StringShape.new(name: 'SavingsPlanRateUsageType')
    SavingsPlanRateUsageTypeList = Shapes::ListShape.new(name: 'SavingsPlanRateUsageTypeList')
    SavingsPlanServiceCode = Shapes::StringShape.new(name: 'SavingsPlanServiceCode')
    SavingsPlanServiceCodeList = Shapes::ListShape.new(name: 'SavingsPlanServiceCodeList')
    SavingsPlanState = Shapes::StringShape.new(name: 'SavingsPlanState')
    SavingsPlanStateList = Shapes::ListShape.new(name: 'SavingsPlanStateList')
    SavingsPlanType = Shapes::StringShape.new(name: 'SavingsPlanType')
    SavingsPlanTypeList = Shapes::ListShape.new(name: 'SavingsPlanTypeList')
    SavingsPlanUsageType = Shapes::StringShape.new(name: 'SavingsPlanUsageType')
    SavingsPlanUsageTypeList = Shapes::ListShape.new(name: 'SavingsPlanUsageTypeList')
    SavingsPlansDuration = Shapes::IntegerShape.new(name: 'SavingsPlansDuration')
    SavingsPlansFilterName = Shapes::StringShape.new(name: 'SavingsPlansFilterName')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TermDurationInSeconds = Shapes::IntegerShape.new(name: 'TermDurationInSeconds')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UUIDs = Shapes::ListShape.new(name: 'UUIDs')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    CreateSavingsPlanRequest.add_member(:savings_plan_offering_id, Shapes::ShapeRef.new(shape: SavingsPlanOfferingId, required: true, location_name: "savingsPlanOfferingId"))
    CreateSavingsPlanRequest.add_member(:commitment, Shapes::ShapeRef.new(shape: Amount, required: true, location_name: "commitment"))
    CreateSavingsPlanRequest.add_member(:upfront_payment_amount, Shapes::ShapeRef.new(shape: Amount, location_name: "upfrontPaymentAmount"))
    CreateSavingsPlanRequest.add_member(:purchase_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "purchaseTime"))
    CreateSavingsPlanRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateSavingsPlanRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSavingsPlanRequest.struct_class = Types::CreateSavingsPlanRequest

    CreateSavingsPlanResponse.add_member(:savings_plan_id, Shapes::ShapeRef.new(shape: SavingsPlanId, location_name: "savingsPlanId"))
    CreateSavingsPlanResponse.struct_class = Types::CreateSavingsPlanResponse

    CurrencyList.member = Shapes::ShapeRef.new(shape: CurrencyCode)

    DeleteQueuedSavingsPlanRequest.add_member(:savings_plan_id, Shapes::ShapeRef.new(shape: SavingsPlanId, required: true, location_name: "savingsPlanId"))
    DeleteQueuedSavingsPlanRequest.struct_class = Types::DeleteQueuedSavingsPlanRequest

    DeleteQueuedSavingsPlanResponse.struct_class = Types::DeleteQueuedSavingsPlanResponse

    DescribeSavingsPlanRatesRequest.add_member(:savings_plan_id, Shapes::ShapeRef.new(shape: SavingsPlanId, required: true, location_name: "savingsPlanId"))
    DescribeSavingsPlanRatesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SavingsPlanRateFilterList, location_name: "filters"))
    DescribeSavingsPlanRatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlanRatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeSavingsPlanRatesRequest.struct_class = Types::DescribeSavingsPlanRatesRequest

    DescribeSavingsPlanRatesResponse.add_member(:savings_plan_id, Shapes::ShapeRef.new(shape: SavingsPlanId, location_name: "savingsPlanId"))
    DescribeSavingsPlanRatesResponse.add_member(:search_results, Shapes::ShapeRef.new(shape: SavingsPlanRateList, location_name: "searchResults"))
    DescribeSavingsPlanRatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlanRatesResponse.struct_class = Types::DescribeSavingsPlanRatesResponse

    DescribeSavingsPlansOfferingRatesRequest.add_member(:savings_plan_offering_ids, Shapes::ShapeRef.new(shape: UUIDs, location_name: "savingsPlanOfferingIds"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:savings_plan_payment_options, Shapes::ShapeRef.new(shape: SavingsPlanPaymentOptionList, location_name: "savingsPlanPaymentOptions"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:savings_plan_types, Shapes::ShapeRef.new(shape: SavingsPlanTypeList, location_name: "savingsPlanTypes"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:products, Shapes::ShapeRef.new(shape: SavingsPlanProductTypeList, location_name: "products"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:service_codes, Shapes::ShapeRef.new(shape: SavingsPlanRateServiceCodeList, location_name: "serviceCodes"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:usage_types, Shapes::ShapeRef.new(shape: SavingsPlanRateUsageTypeList, location_name: "usageTypes"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:operations, Shapes::ShapeRef.new(shape: SavingsPlanRateOperationList, location_name: "operations"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SavingsPlanOfferingRateFiltersList, location_name: "filters"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    DescribeSavingsPlansOfferingRatesRequest.struct_class = Types::DescribeSavingsPlansOfferingRatesRequest

    DescribeSavingsPlansOfferingRatesResponse.add_member(:search_results, Shapes::ShapeRef.new(shape: SavingsPlanOfferingRatesList, location_name: "searchResults"))
    DescribeSavingsPlansOfferingRatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlansOfferingRatesResponse.struct_class = Types::DescribeSavingsPlansOfferingRatesResponse

    DescribeSavingsPlansOfferingsRequest.add_member(:offering_ids, Shapes::ShapeRef.new(shape: UUIDs, location_name: "offeringIds"))
    DescribeSavingsPlansOfferingsRequest.add_member(:payment_options, Shapes::ShapeRef.new(shape: SavingsPlanPaymentOptionList, location_name: "paymentOptions"))
    DescribeSavingsPlansOfferingsRequest.add_member(:product_type, Shapes::ShapeRef.new(shape: SavingsPlanProductType, location_name: "productType"))
    DescribeSavingsPlansOfferingsRequest.add_member(:plan_types, Shapes::ShapeRef.new(shape: SavingsPlanTypeList, location_name: "planTypes"))
    DescribeSavingsPlansOfferingsRequest.add_member(:durations, Shapes::ShapeRef.new(shape: DurationsList, location_name: "durations"))
    DescribeSavingsPlansOfferingsRequest.add_member(:currencies, Shapes::ShapeRef.new(shape: CurrencyList, location_name: "currencies"))
    DescribeSavingsPlansOfferingsRequest.add_member(:descriptions, Shapes::ShapeRef.new(shape: SavingsPlanDescriptionsList, location_name: "descriptions"))
    DescribeSavingsPlansOfferingsRequest.add_member(:service_codes, Shapes::ShapeRef.new(shape: SavingsPlanServiceCodeList, location_name: "serviceCodes"))
    DescribeSavingsPlansOfferingsRequest.add_member(:usage_types, Shapes::ShapeRef.new(shape: SavingsPlanUsageTypeList, location_name: "usageTypes"))
    DescribeSavingsPlansOfferingsRequest.add_member(:operations, Shapes::ShapeRef.new(shape: SavingsPlanOperationList, location_name: "operations"))
    DescribeSavingsPlansOfferingsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SavingsPlanOfferingFiltersList, location_name: "filters"))
    DescribeSavingsPlansOfferingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlansOfferingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    DescribeSavingsPlansOfferingsRequest.struct_class = Types::DescribeSavingsPlansOfferingsRequest

    DescribeSavingsPlansOfferingsResponse.add_member(:search_results, Shapes::ShapeRef.new(shape: SavingsPlanOfferingsList, location_name: "searchResults"))
    DescribeSavingsPlansOfferingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlansOfferingsResponse.struct_class = Types::DescribeSavingsPlansOfferingsResponse

    DescribeSavingsPlansRequest.add_member(:savings_plan_arns, Shapes::ShapeRef.new(shape: SavingsPlanArnList, location_name: "savingsPlanArns"))
    DescribeSavingsPlansRequest.add_member(:savings_plan_ids, Shapes::ShapeRef.new(shape: SavingsPlanIdList, location_name: "savingsPlanIds"))
    DescribeSavingsPlansRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlansRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeSavingsPlansRequest.add_member(:states, Shapes::ShapeRef.new(shape: SavingsPlanStateList, location_name: "states"))
    DescribeSavingsPlansRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SavingsPlanFilterList, location_name: "filters"))
    DescribeSavingsPlansRequest.struct_class = Types::DescribeSavingsPlansRequest

    DescribeSavingsPlansResponse.add_member(:savings_plans, Shapes::ShapeRef.new(shape: SavingsPlanList, location_name: "savingsPlans"))
    DescribeSavingsPlansResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlansResponse.struct_class = Types::DescribeSavingsPlansResponse

    DurationsList.member = Shapes::ShapeRef.new(shape: SavingsPlansDuration)

    FilterValuesList.member = Shapes::ShapeRef.new(shape: JsonSafeFilterValueString)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListOfStrings.member = Shapes::ShapeRef.new(shape: String)

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SavingsPlanArn, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ParentSavingsPlanOffering.add_member(:offering_id, Shapes::ShapeRef.new(shape: UUID, location_name: "offeringId"))
    ParentSavingsPlanOffering.add_member(:payment_option, Shapes::ShapeRef.new(shape: SavingsPlanPaymentOption, location_name: "paymentOption"))
    ParentSavingsPlanOffering.add_member(:plan_type, Shapes::ShapeRef.new(shape: SavingsPlanType, location_name: "planType"))
    ParentSavingsPlanOffering.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: SavingsPlansDuration, location_name: "durationSeconds"))
    ParentSavingsPlanOffering.add_member(:currency, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currency"))
    ParentSavingsPlanOffering.add_member(:plan_description, Shapes::ShapeRef.new(shape: SavingsPlanDescription, location_name: "planDescription"))
    ParentSavingsPlanOffering.struct_class = Types::ParentSavingsPlanOffering

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SavingsPlan.add_member(:offering_id, Shapes::ShapeRef.new(shape: SavingsPlanOfferingId, location_name: "offeringId"))
    SavingsPlan.add_member(:savings_plan_id, Shapes::ShapeRef.new(shape: SavingsPlanId, location_name: "savingsPlanId"))
    SavingsPlan.add_member(:savings_plan_arn, Shapes::ShapeRef.new(shape: SavingsPlanArn, location_name: "savingsPlanArn"))
    SavingsPlan.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    SavingsPlan.add_member(:start, Shapes::ShapeRef.new(shape: String, location_name: "start"))
    SavingsPlan.add_member(:end, Shapes::ShapeRef.new(shape: String, location_name: "end"))
    SavingsPlan.add_member(:state, Shapes::ShapeRef.new(shape: SavingsPlanState, location_name: "state"))
    SavingsPlan.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "region"))
    SavingsPlan.add_member(:ec2_instance_family, Shapes::ShapeRef.new(shape: EC2InstanceFamily, location_name: "ec2InstanceFamily"))
    SavingsPlan.add_member(:savings_plan_type, Shapes::ShapeRef.new(shape: SavingsPlanType, location_name: "savingsPlanType"))
    SavingsPlan.add_member(:payment_option, Shapes::ShapeRef.new(shape: SavingsPlanPaymentOption, location_name: "paymentOption"))
    SavingsPlan.add_member(:product_types, Shapes::ShapeRef.new(shape: SavingsPlanProductTypeList, location_name: "productTypes"))
    SavingsPlan.add_member(:currency, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currency"))
    SavingsPlan.add_member(:commitment, Shapes::ShapeRef.new(shape: Amount, location_name: "commitment"))
    SavingsPlan.add_member(:upfront_payment_amount, Shapes::ShapeRef.new(shape: Amount, location_name: "upfrontPaymentAmount"))
    SavingsPlan.add_member(:recurring_payment_amount, Shapes::ShapeRef.new(shape: Amount, location_name: "recurringPaymentAmount"))
    SavingsPlan.add_member(:term_duration_in_seconds, Shapes::ShapeRef.new(shape: TermDurationInSeconds, location_name: "termDurationInSeconds"))
    SavingsPlan.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    SavingsPlan.struct_class = Types::SavingsPlan

    SavingsPlanArnList.member = Shapes::ShapeRef.new(shape: SavingsPlanArn)

    SavingsPlanDescriptionsList.member = Shapes::ShapeRef.new(shape: SavingsPlanDescription)

    SavingsPlanFilter.add_member(:name, Shapes::ShapeRef.new(shape: SavingsPlansFilterName, location_name: "name"))
    SavingsPlanFilter.add_member(:values, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "values"))
    SavingsPlanFilter.struct_class = Types::SavingsPlanFilter

    SavingsPlanFilterList.member = Shapes::ShapeRef.new(shape: SavingsPlanFilter)

    SavingsPlanIdList.member = Shapes::ShapeRef.new(shape: SavingsPlanId)

    SavingsPlanList.member = Shapes::ShapeRef.new(shape: SavingsPlan)

    SavingsPlanOffering.add_member(:offering_id, Shapes::ShapeRef.new(shape: UUID, location_name: "offeringId"))
    SavingsPlanOffering.add_member(:product_types, Shapes::ShapeRef.new(shape: SavingsPlanProductTypeList, location_name: "productTypes"))
    SavingsPlanOffering.add_member(:plan_type, Shapes::ShapeRef.new(shape: SavingsPlanType, location_name: "planType"))
    SavingsPlanOffering.add_member(:description, Shapes::ShapeRef.new(shape: SavingsPlanDescription, location_name: "description"))
    SavingsPlanOffering.add_member(:payment_option, Shapes::ShapeRef.new(shape: SavingsPlanPaymentOption, location_name: "paymentOption"))
    SavingsPlanOffering.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: SavingsPlansDuration, location_name: "durationSeconds"))
    SavingsPlanOffering.add_member(:currency, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currency"))
    SavingsPlanOffering.add_member(:service_code, Shapes::ShapeRef.new(shape: SavingsPlanServiceCode, location_name: "serviceCode"))
    SavingsPlanOffering.add_member(:usage_type, Shapes::ShapeRef.new(shape: SavingsPlanUsageType, location_name: "usageType"))
    SavingsPlanOffering.add_member(:operation, Shapes::ShapeRef.new(shape: SavingsPlanOperation, location_name: "operation"))
    SavingsPlanOffering.add_member(:properties, Shapes::ShapeRef.new(shape: SavingsPlanOfferingPropertyList, location_name: "properties"))
    SavingsPlanOffering.struct_class = Types::SavingsPlanOffering

    SavingsPlanOfferingFilterElement.add_member(:name, Shapes::ShapeRef.new(shape: SavingsPlanOfferingFilterAttribute, location_name: "name"))
    SavingsPlanOfferingFilterElement.add_member(:values, Shapes::ShapeRef.new(shape: FilterValuesList, location_name: "values"))
    SavingsPlanOfferingFilterElement.struct_class = Types::SavingsPlanOfferingFilterElement

    SavingsPlanOfferingFiltersList.member = Shapes::ShapeRef.new(shape: SavingsPlanOfferingFilterElement)

    SavingsPlanOfferingProperty.add_member(:name, Shapes::ShapeRef.new(shape: SavingsPlanOfferingPropertyKey, location_name: "name"))
    SavingsPlanOfferingProperty.add_member(:value, Shapes::ShapeRef.new(shape: JsonSafeFilterValueString, location_name: "value"))
    SavingsPlanOfferingProperty.struct_class = Types::SavingsPlanOfferingProperty

    SavingsPlanOfferingPropertyList.member = Shapes::ShapeRef.new(shape: SavingsPlanOfferingProperty)

    SavingsPlanOfferingRate.add_member(:savings_plan_offering, Shapes::ShapeRef.new(shape: ParentSavingsPlanOffering, location_name: "savingsPlanOffering"))
    SavingsPlanOfferingRate.add_member(:rate, Shapes::ShapeRef.new(shape: SavingsPlanRatePricePerUnit, location_name: "rate"))
    SavingsPlanOfferingRate.add_member(:unit, Shapes::ShapeRef.new(shape: SavingsPlanRateUnit, location_name: "unit"))
    SavingsPlanOfferingRate.add_member(:product_type, Shapes::ShapeRef.new(shape: SavingsPlanProductType, location_name: "productType"))
    SavingsPlanOfferingRate.add_member(:service_code, Shapes::ShapeRef.new(shape: SavingsPlanRateServiceCode, location_name: "serviceCode"))
    SavingsPlanOfferingRate.add_member(:usage_type, Shapes::ShapeRef.new(shape: SavingsPlanRateUsageType, location_name: "usageType"))
    SavingsPlanOfferingRate.add_member(:operation, Shapes::ShapeRef.new(shape: SavingsPlanRateOperation, location_name: "operation"))
    SavingsPlanOfferingRate.add_member(:properties, Shapes::ShapeRef.new(shape: SavingsPlanOfferingRatePropertyList, location_name: "properties"))
    SavingsPlanOfferingRate.struct_class = Types::SavingsPlanOfferingRate

    SavingsPlanOfferingRateFilterElement.add_member(:name, Shapes::ShapeRef.new(shape: SavingsPlanRateFilterAttribute, location_name: "name"))
    SavingsPlanOfferingRateFilterElement.add_member(:values, Shapes::ShapeRef.new(shape: FilterValuesList, location_name: "values"))
    SavingsPlanOfferingRateFilterElement.struct_class = Types::SavingsPlanOfferingRateFilterElement

    SavingsPlanOfferingRateFiltersList.member = Shapes::ShapeRef.new(shape: SavingsPlanOfferingRateFilterElement)

    SavingsPlanOfferingRateProperty.add_member(:name, Shapes::ShapeRef.new(shape: JsonSafeFilterValueString, location_name: "name"))
    SavingsPlanOfferingRateProperty.add_member(:value, Shapes::ShapeRef.new(shape: JsonSafeFilterValueString, location_name: "value"))
    SavingsPlanOfferingRateProperty.struct_class = Types::SavingsPlanOfferingRateProperty

    SavingsPlanOfferingRatePropertyList.member = Shapes::ShapeRef.new(shape: SavingsPlanOfferingRateProperty)

    SavingsPlanOfferingRatesList.member = Shapes::ShapeRef.new(shape: SavingsPlanOfferingRate)

    SavingsPlanOfferingsList.member = Shapes::ShapeRef.new(shape: SavingsPlanOffering)

    SavingsPlanOperationList.member = Shapes::ShapeRef.new(shape: SavingsPlanOperation)

    SavingsPlanPaymentOptionList.member = Shapes::ShapeRef.new(shape: SavingsPlanPaymentOption)

    SavingsPlanProductTypeList.member = Shapes::ShapeRef.new(shape: SavingsPlanProductType)

    SavingsPlanRate.add_member(:rate, Shapes::ShapeRef.new(shape: Amount, location_name: "rate"))
    SavingsPlanRate.add_member(:currency, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currency"))
    SavingsPlanRate.add_member(:unit, Shapes::ShapeRef.new(shape: SavingsPlanRateUnit, location_name: "unit"))
    SavingsPlanRate.add_member(:product_type, Shapes::ShapeRef.new(shape: SavingsPlanProductType, location_name: "productType"))
    SavingsPlanRate.add_member(:service_code, Shapes::ShapeRef.new(shape: SavingsPlanRateServiceCode, location_name: "serviceCode"))
    SavingsPlanRate.add_member(:usage_type, Shapes::ShapeRef.new(shape: SavingsPlanRateUsageType, location_name: "usageType"))
    SavingsPlanRate.add_member(:operation, Shapes::ShapeRef.new(shape: SavingsPlanRateOperation, location_name: "operation"))
    SavingsPlanRate.add_member(:properties, Shapes::ShapeRef.new(shape: SavingsPlanRatePropertyList, location_name: "properties"))
    SavingsPlanRate.struct_class = Types::SavingsPlanRate

    SavingsPlanRateFilter.add_member(:name, Shapes::ShapeRef.new(shape: SavingsPlanRateFilterName, location_name: "name"))
    SavingsPlanRateFilter.add_member(:values, Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "values"))
    SavingsPlanRateFilter.struct_class = Types::SavingsPlanRateFilter

    SavingsPlanRateFilterList.member = Shapes::ShapeRef.new(shape: SavingsPlanRateFilter)

    SavingsPlanRateList.member = Shapes::ShapeRef.new(shape: SavingsPlanRate)

    SavingsPlanRateOperationList.member = Shapes::ShapeRef.new(shape: SavingsPlanRateOperation)

    SavingsPlanRateProperty.add_member(:name, Shapes::ShapeRef.new(shape: SavingsPlanRatePropertyKey, location_name: "name"))
    SavingsPlanRateProperty.add_member(:value, Shapes::ShapeRef.new(shape: JsonSafeFilterValueString, location_name: "value"))
    SavingsPlanRateProperty.struct_class = Types::SavingsPlanRateProperty

    SavingsPlanRatePropertyList.member = Shapes::ShapeRef.new(shape: SavingsPlanRateProperty)

    SavingsPlanRateServiceCodeList.member = Shapes::ShapeRef.new(shape: SavingsPlanRateServiceCode)

    SavingsPlanRateUsageTypeList.member = Shapes::ShapeRef.new(shape: SavingsPlanRateUsageType)

    SavingsPlanServiceCodeList.member = Shapes::ShapeRef.new(shape: SavingsPlanServiceCode)

    SavingsPlanStateList.member = Shapes::ShapeRef.new(shape: SavingsPlanState)

    SavingsPlanTypeList.member = Shapes::ShapeRef.new(shape: SavingsPlanType)

    SavingsPlanUsageTypeList.member = Shapes::ShapeRef.new(shape: SavingsPlanUsageType)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SavingsPlanArn, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    UUIDs.member = Shapes::ShapeRef.new(shape: UUID)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: SavingsPlanArn, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-06-28"

      api.metadata = {
        "apiVersion" => "2019-06-28",
        "endpointPrefix" => "savingsplans",
        "globalEndpoint" => "savingsplans.amazonaws.com",
        "jsonVersion" => "1.0",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "AWSSavingsPlans",
        "serviceFullName" => "AWS Savings Plans",
        "serviceId" => "savingsplans",
        "signatureVersion" => "v4",
        "uid" => "savingsplans-2019-06-28",
      }

      api.add_operation(:create_savings_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSavingsPlan"
        o.http_method = "POST"
        o.http_request_uri = "/CreateSavingsPlan"
        o.input = Shapes::ShapeRef.new(shape: CreateSavingsPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSavingsPlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_queued_savings_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQueuedSavingsPlan"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteQueuedSavingsPlan"
        o.input = Shapes::ShapeRef.new(shape: DeleteQueuedSavingsPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteQueuedSavingsPlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:describe_savings_plan_rates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSavingsPlanRates"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeSavingsPlanRates"
        o.input = Shapes::ShapeRef.new(shape: DescribeSavingsPlanRatesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSavingsPlanRatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_savings_plans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSavingsPlans"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeSavingsPlans"
        o.input = Shapes::ShapeRef.new(shape: DescribeSavingsPlansRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSavingsPlansResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_savings_plans_offering_rates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSavingsPlansOfferingRates"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeSavingsPlansOfferingRates"
        o.input = Shapes::ShapeRef.new(shape: DescribeSavingsPlansOfferingRatesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSavingsPlansOfferingRatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_savings_plans_offerings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSavingsPlansOfferings"
        o.http_method = "POST"
        o.http_request_uri = "/DescribeSavingsPlansOfferings"
        o.input = Shapes::ShapeRef.new(shape: DescribeSavingsPlansOfferingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSavingsPlansOfferingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/ListTagsForResource"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/TagResource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/UntagResource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
