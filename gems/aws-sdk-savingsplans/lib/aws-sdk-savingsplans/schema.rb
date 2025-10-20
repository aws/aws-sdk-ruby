# frozen_string_literal: true

# This is generated code!

module Aws::Savingsplans
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Amount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#Amount", name: "Amount")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#ClientToken", name: "ClientToken")
    CreateSavingsPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#CreateSavingsPlanRequest", name: "CreateSavingsPlanRequest")
    CreateSavingsPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#CreateSavingsPlanResponse", name: "CreateSavingsPlanResponse")
    CurrencyCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.savingsplans#CurrencyCode", name: "CurrencyCode")
    CurrencyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#CurrencyList", name: "CurrencyList")
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.savingsplans#DateTime", name: "DateTime")
    DeleteQueuedSavingsPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#DeleteQueuedSavingsPlanRequest", name: "DeleteQueuedSavingsPlanRequest")
    DeleteQueuedSavingsPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#DeleteQueuedSavingsPlanResponse", name: "DeleteQueuedSavingsPlanResponse")
    DescribeSavingsPlanRatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#DescribeSavingsPlanRatesRequest", name: "DescribeSavingsPlanRatesRequest")
    DescribeSavingsPlanRatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#DescribeSavingsPlanRatesResponse", name: "DescribeSavingsPlanRatesResponse")
    DescribeSavingsPlansOfferingRatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#DescribeSavingsPlansOfferingRatesRequest", name: "DescribeSavingsPlansOfferingRatesRequest")
    DescribeSavingsPlansOfferingRatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#DescribeSavingsPlansOfferingRatesResponse", name: "DescribeSavingsPlansOfferingRatesResponse")
    DescribeSavingsPlansOfferingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#DescribeSavingsPlansOfferingsRequest", name: "DescribeSavingsPlansOfferingsRequest")
    DescribeSavingsPlansOfferingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#DescribeSavingsPlansOfferingsResponse", name: "DescribeSavingsPlansOfferingsResponse")
    DescribeSavingsPlansRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#DescribeSavingsPlansRequest", name: "DescribeSavingsPlansRequest")
    DescribeSavingsPlansResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#DescribeSavingsPlansResponse", name: "DescribeSavingsPlansResponse")
    DurationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#DurationsList", name: "DurationsList")
    EC2InstanceFamily = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#EC2InstanceFamily", name: "EC2InstanceFamily")
    FilterValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#FilterValuesList", name: "FilterValuesList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#InternalServerException", name: "InternalServerException", traits: {"aws.protocols#awsQueryError" => {"code" => "InternalServerException", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JsonSafeFilterValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#JsonSafeFilterValueString", name: "JsonSafeFilterValueString", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_ \\/.\\:\\-\\(\\)]+$"})
    ListOfStrings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#ListOfStrings", name: "ListOfStrings")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.savingsplans#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.savingsplans#PageSize", name: "PageSize", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[A-Za-z0-9/=\\+]+$"})
    ParentSavingsPlanOffering = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#ParentSavingsPlanOffering", name: "ParentSavingsPlanOffering")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#Region", name: "Region")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReturnSavingsPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#ReturnSavingsPlanRequest", name: "ReturnSavingsPlanRequest")
    ReturnSavingsPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#ReturnSavingsPlanResponse", name: "ReturnSavingsPlanResponse")
    SavingsPlan = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#SavingsPlan", name: "SavingsPlan")
    SavingsPlanArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#SavingsPlanArn", name: "SavingsPlanArn", traits: {"smithy.api#pattern" => "^arn:aws:[a-z]+:([a-z]{2}-[a-z]+-\\d{1}|):(\\d{12}):savingsplan\\/([0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12})$"})
    SavingsPlanArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanArnList", name: "SavingsPlanArnList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SavingsPlanDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#SavingsPlanDescription", name: "SavingsPlanDescription", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\- ]+$"})
    SavingsPlanDescriptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanDescriptionsList", name: "SavingsPlanDescriptionsList")
    SavingsPlanFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#SavingsPlanFilter", name: "SavingsPlanFilter")
    SavingsPlanFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanFilterList", name: "SavingsPlanFilterList")
    SavingsPlanId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#SavingsPlanId", name: "SavingsPlanId")
    SavingsPlanIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanIdList", name: "SavingsPlanIdList")
    SavingsPlanList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanList", name: "SavingsPlanList")
    SavingsPlanOffering = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOffering", name: "SavingsPlanOffering")
    SavingsPlanOfferingFilterAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOfferingFilterAttribute", name: "SavingsPlanOfferingFilterAttribute")
    SavingsPlanOfferingFilterElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOfferingFilterElement", name: "SavingsPlanOfferingFilterElement")
    SavingsPlanOfferingFiltersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOfferingFiltersList", name: "SavingsPlanOfferingFiltersList")
    SavingsPlanOfferingId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOfferingId", name: "SavingsPlanOfferingId")
    SavingsPlanOfferingProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOfferingProperty", name: "SavingsPlanOfferingProperty")
    SavingsPlanOfferingPropertyKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOfferingPropertyKey", name: "SavingsPlanOfferingPropertyKey")
    SavingsPlanOfferingPropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOfferingPropertyList", name: "SavingsPlanOfferingPropertyList")
    SavingsPlanOfferingRate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOfferingRate", name: "SavingsPlanOfferingRate")
    SavingsPlanOfferingRateFilterElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOfferingRateFilterElement", name: "SavingsPlanOfferingRateFilterElement")
    SavingsPlanOfferingRateFiltersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOfferingRateFiltersList", name: "SavingsPlanOfferingRateFiltersList")
    SavingsPlanOfferingRateProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOfferingRateProperty", name: "SavingsPlanOfferingRateProperty")
    SavingsPlanOfferingRatePropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOfferingRatePropertyList", name: "SavingsPlanOfferingRatePropertyList")
    SavingsPlanOfferingRatesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOfferingRatesList", name: "SavingsPlanOfferingRatesList")
    SavingsPlanOfferingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOfferingsList", name: "SavingsPlanOfferingsList")
    SavingsPlanOperation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOperation", name: "SavingsPlanOperation", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_ \\/.:-]*$"})
    SavingsPlanOperationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanOperationList", name: "SavingsPlanOperationList")
    SavingsPlanPaymentOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.savingsplans#SavingsPlanPaymentOption", name: "SavingsPlanPaymentOption")
    SavingsPlanPaymentOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanPaymentOptionList", name: "SavingsPlanPaymentOptionList")
    SavingsPlanProductType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.savingsplans#SavingsPlanProductType", name: "SavingsPlanProductType")
    SavingsPlanProductTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanProductTypeList", name: "SavingsPlanProductTypeList")
    SavingsPlanRate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRate", name: "SavingsPlanRate")
    SavingsPlanRateFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRateFilter", name: "SavingsPlanRateFilter")
    SavingsPlanRateFilterAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRateFilterAttribute", name: "SavingsPlanRateFilterAttribute")
    SavingsPlanRateFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRateFilterList", name: "SavingsPlanRateFilterList")
    SavingsPlanRateFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRateFilterName", name: "SavingsPlanRateFilterName")
    SavingsPlanRateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRateList", name: "SavingsPlanRateList")
    SavingsPlanRateOperation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRateOperation", name: "SavingsPlanRateOperation", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_ \\/.:-]*$"})
    SavingsPlanRateOperationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRateOperationList", name: "SavingsPlanRateOperationList")
    SavingsPlanRatePricePerUnit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRatePricePerUnit", name: "SavingsPlanRatePricePerUnit")
    SavingsPlanRateProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRateProperty", name: "SavingsPlanRateProperty")
    SavingsPlanRatePropertyKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRatePropertyKey", name: "SavingsPlanRatePropertyKey")
    SavingsPlanRatePropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRatePropertyList", name: "SavingsPlanRatePropertyList")
    SavingsPlanRateServiceCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRateServiceCode", name: "SavingsPlanRateServiceCode")
    SavingsPlanRateServiceCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRateServiceCodeList", name: "SavingsPlanRateServiceCodeList")
    SavingsPlanRateUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRateUnit", name: "SavingsPlanRateUnit")
    SavingsPlanRateUsageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRateUsageType", name: "SavingsPlanRateUsageType", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_ \\/.:-]+$"})
    SavingsPlanRateUsageTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanRateUsageTypeList", name: "SavingsPlanRateUsageTypeList")
    SavingsPlanServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#SavingsPlanServiceCode", name: "SavingsPlanServiceCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z]+$"})
    SavingsPlanServiceCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanServiceCodeList", name: "SavingsPlanServiceCodeList")
    SavingsPlanState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.savingsplans#SavingsPlanState", name: "SavingsPlanState")
    SavingsPlanStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanStateList", name: "SavingsPlanStateList")
    SavingsPlanType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.savingsplans#SavingsPlanType", name: "SavingsPlanType")
    SavingsPlanTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanTypeList", name: "SavingsPlanTypeList")
    SavingsPlanUsageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#SavingsPlanUsageType", name: "SavingsPlanUsageType", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_ \\/.:-]+$"})
    SavingsPlanUsageTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#SavingsPlanUsageTypeList", name: "SavingsPlanUsageTypeList")
    SavingsPlansDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.savingsplans#SavingsPlansDuration", name: "SavingsPlansDuration", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    SavingsPlansFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.savingsplans#SavingsPlansFilterName", name: "SavingsPlansFilterName")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceQuotaExceededException", "httpResponseCode" => 402}, "smithy.api#error" => "client", "smithy.api#httpError" => 402})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#String", name: "String")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#TagKey", name: "TagKey")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#TagKeyList", name: "TagKeyList")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.savingsplans#TagMap", name: "TagMap")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#TagValue", name: "TagValue")
    TermDurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.savingsplans#TermDurationInSeconds", name: "TermDurationInSeconds", traits: {"smithy.api#default" => 0})
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.savingsplans#UUID", name: "UUID", traits: {"smithy.api#pattern" => "^[a-f0-9]+(-[a-f0-9]+)*$"})
    UUIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.savingsplans#UUIDs", name: "UUIDs")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#UntagResourceResponse", name: "UntagResourceResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.savingsplans#ValidationException", name: "ValidationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})

    CreateSavingsPlanRequest.add_member(:savings_plan_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOfferingId, location_name: "savingsPlanOfferingId", traits: {"smithy.api#required" => {}}))
    CreateSavingsPlanRequest.add_member(:commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Amount, location_name: "commitment", traits: {"smithy.api#required" => {}}))
    CreateSavingsPlanRequest.add_member(:upfront_payment_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Amount, location_name: "upfrontPaymentAmount"))
    CreateSavingsPlanRequest.add_member(:purchase_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: "purchaseTime"))
    CreateSavingsPlanRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSavingsPlanRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSavingsPlanRequest.type = Types::CreateSavingsPlanRequest
    CreateSavingsPlanResponse.add_member(:savings_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanId, location_name: "savingsPlanId"))
    CreateSavingsPlanResponse.type = Types::CreateSavingsPlanResponse
    CurrencyCode.add_member(:cny, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CNY", traits: {"smithy.api#enumValue" => "CNY"}))
    CurrencyCode.add_member(:usd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USD", traits: {"smithy.api#enumValue" => "USD"}))
    CurrencyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode)
    DeleteQueuedSavingsPlanRequest.add_member(:savings_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanId, location_name: "savingsPlanId", traits: {"smithy.api#required" => {}}))
    DeleteQueuedSavingsPlanRequest.type = Types::DeleteQueuedSavingsPlanRequest
    DeleteQueuedSavingsPlanResponse.type = Types::DeleteQueuedSavingsPlanResponse
    DescribeSavingsPlanRatesRequest.add_member(:savings_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanId, location_name: "savingsPlanId", traits: {"smithy.api#required" => {}}))
    DescribeSavingsPlanRatesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateFilterList, location_name: "filters"))
    DescribeSavingsPlanRatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlanRatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeSavingsPlanRatesRequest.type = Types::DescribeSavingsPlanRatesRequest
    DescribeSavingsPlanRatesResponse.add_member(:savings_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanId, location_name: "savingsPlanId"))
    DescribeSavingsPlanRatesResponse.add_member(:search_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateList, location_name: "searchResults"))
    DescribeSavingsPlanRatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlanRatesResponse.type = Types::DescribeSavingsPlanRatesResponse
    DescribeSavingsPlansOfferingRatesRequest.add_member(:savings_plan_offering_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUIDs, location_name: "savingsPlanOfferingIds"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:savings_plan_payment_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanPaymentOptionList, location_name: "savingsPlanPaymentOptions"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:savings_plan_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanTypeList, location_name: "savingsPlanTypes"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:products, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanProductTypeList, location_name: "products"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:service_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateServiceCodeList, location_name: "serviceCodes"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:usage_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateUsageTypeList, location_name: "usageTypes"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateOperationList, location_name: "operations"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOfferingRateFiltersList, location_name: "filters"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlansOfferingRatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults", traits: {"smithy.api#default" => 0}))
    DescribeSavingsPlansOfferingRatesRequest.type = Types::DescribeSavingsPlansOfferingRatesRequest
    DescribeSavingsPlansOfferingRatesResponse.add_member(:search_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOfferingRatesList, location_name: "searchResults"))
    DescribeSavingsPlansOfferingRatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlansOfferingRatesResponse.type = Types::DescribeSavingsPlansOfferingRatesResponse
    DescribeSavingsPlansOfferingsRequest.add_member(:offering_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUIDs, location_name: "offeringIds"))
    DescribeSavingsPlansOfferingsRequest.add_member(:payment_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanPaymentOptionList, location_name: "paymentOptions"))
    DescribeSavingsPlansOfferingsRequest.add_member(:product_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanProductType, location_name: "productType"))
    DescribeSavingsPlansOfferingsRequest.add_member(:plan_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanTypeList, location_name: "planTypes"))
    DescribeSavingsPlansOfferingsRequest.add_member(:durations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DurationsList, location_name: "durations"))
    DescribeSavingsPlansOfferingsRequest.add_member(:currencies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyList, location_name: "currencies"))
    DescribeSavingsPlansOfferingsRequest.add_member(:descriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanDescriptionsList, location_name: "descriptions"))
    DescribeSavingsPlansOfferingsRequest.add_member(:service_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanServiceCodeList, location_name: "serviceCodes"))
    DescribeSavingsPlansOfferingsRequest.add_member(:usage_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanUsageTypeList, location_name: "usageTypes"))
    DescribeSavingsPlansOfferingsRequest.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOperationList, location_name: "operations"))
    DescribeSavingsPlansOfferingsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOfferingFiltersList, location_name: "filters"))
    DescribeSavingsPlansOfferingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlansOfferingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults", traits: {"smithy.api#default" => 0}))
    DescribeSavingsPlansOfferingsRequest.type = Types::DescribeSavingsPlansOfferingsRequest
    DescribeSavingsPlansOfferingsResponse.add_member(:search_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOfferingsList, location_name: "searchResults"))
    DescribeSavingsPlansOfferingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlansOfferingsResponse.type = Types::DescribeSavingsPlansOfferingsResponse
    DescribeSavingsPlansRequest.add_member(:savings_plan_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanArnList, location_name: "savingsPlanArns"))
    DescribeSavingsPlansRequest.add_member(:savings_plan_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanIdList, location_name: "savingsPlanIds"))
    DescribeSavingsPlansRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlansRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeSavingsPlansRequest.add_member(:states, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanStateList, location_name: "states"))
    DescribeSavingsPlansRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanFilterList, location_name: "filters"))
    DescribeSavingsPlansRequest.type = Types::DescribeSavingsPlansRequest
    DescribeSavingsPlansResponse.add_member(:savings_plans, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanList, location_name: "savingsPlans"))
    DescribeSavingsPlansResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    DescribeSavingsPlansResponse.type = Types::DescribeSavingsPlansResponse
    DurationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansDuration)
    FilterValuesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonSafeFilterValueString)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListOfStrings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanArn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ParentSavingsPlanOffering.add_member(:offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: "offeringId"))
    ParentSavingsPlanOffering.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanPaymentOption, location_name: "paymentOption"))
    ParentSavingsPlanOffering.add_member(:plan_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanType, location_name: "planType"))
    ParentSavingsPlanOffering.add_member(:duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansDuration, location_name: "durationSeconds", traits: {"smithy.api#default" => 0}))
    ParentSavingsPlanOffering.add_member(:currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currency"))
    ParentSavingsPlanOffering.add_member(:plan_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanDescription, location_name: "planDescription"))
    ParentSavingsPlanOffering.type = Types::ParentSavingsPlanOffering
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ReturnSavingsPlanRequest.add_member(:savings_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanId, location_name: "savingsPlanId", traits: {"smithy.api#required" => {}}))
    ReturnSavingsPlanRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ReturnSavingsPlanRequest.type = Types::ReturnSavingsPlanRequest
    ReturnSavingsPlanResponse.add_member(:savings_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanId, location_name: "savingsPlanId"))
    ReturnSavingsPlanResponse.type = Types::ReturnSavingsPlanResponse
    SavingsPlan.add_member(:offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOfferingId, location_name: "offeringId"))
    SavingsPlan.add_member(:savings_plan_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanId, location_name: "savingsPlanId"))
    SavingsPlan.add_member(:savings_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanArn, location_name: "savingsPlanArn"))
    SavingsPlan.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "description"))
    SavingsPlan.add_member(:start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "start"))
    SavingsPlan.add_member(:end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "end"))
    SavingsPlan.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanState, location_name: "state"))
    SavingsPlan.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: "region"))
    SavingsPlan.add_member(:ec2_instance_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceFamily, location_name: "ec2InstanceFamily"))
    SavingsPlan.add_member(:savings_plan_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanType, location_name: "savingsPlanType"))
    SavingsPlan.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanPaymentOption, location_name: "paymentOption"))
    SavingsPlan.add_member(:product_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanProductTypeList, location_name: "productTypes"))
    SavingsPlan.add_member(:currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currency"))
    SavingsPlan.add_member(:commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Amount, location_name: "commitment"))
    SavingsPlan.add_member(:upfront_payment_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Amount, location_name: "upfrontPaymentAmount"))
    SavingsPlan.add_member(:recurring_payment_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Amount, location_name: "recurringPaymentAmount"))
    SavingsPlan.add_member(:term_duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TermDurationInSeconds, location_name: "termDurationInSeconds", traits: {"smithy.api#default" => 0}))
    SavingsPlan.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    SavingsPlan.add_member(:returnable_until, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "returnableUntil"))
    SavingsPlan.type = Types::SavingsPlan
    SavingsPlanArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanArn)
    SavingsPlanDescriptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanDescription)
    SavingsPlanFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansFilterName, location_name: "name"))
    SavingsPlanFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "values"))
    SavingsPlanFilter.type = Types::SavingsPlanFilter
    SavingsPlanFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanFilter)
    SavingsPlanIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanId)
    SavingsPlanList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlan)
    SavingsPlanOffering.add_member(:offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: "offeringId"))
    SavingsPlanOffering.add_member(:product_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanProductTypeList, location_name: "productTypes"))
    SavingsPlanOffering.add_member(:plan_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanType, location_name: "planType"))
    SavingsPlanOffering.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanDescription, location_name: "description"))
    SavingsPlanOffering.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanPaymentOption, location_name: "paymentOption"))
    SavingsPlanOffering.add_member(:duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansDuration, location_name: "durationSeconds", traits: {"smithy.api#default" => 0}))
    SavingsPlanOffering.add_member(:currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currency"))
    SavingsPlanOffering.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanServiceCode, location_name: "serviceCode"))
    SavingsPlanOffering.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanUsageType, location_name: "usageType"))
    SavingsPlanOffering.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOperation, location_name: "operation"))
    SavingsPlanOffering.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOfferingPropertyList, location_name: "properties"))
    SavingsPlanOffering.type = Types::SavingsPlanOffering
    SavingsPlanOfferingFilterAttribute.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "region", traits: {"smithy.api#enumValue" => "region"}))
    SavingsPlanOfferingFilterAttribute.add_member(:instance_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "instanceFamily", traits: {"smithy.api#enumValue" => "instanceFamily"}))
    SavingsPlanOfferingFilterElement.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOfferingFilterAttribute, location_name: "name"))
    SavingsPlanOfferingFilterElement.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValuesList, location_name: "values"))
    SavingsPlanOfferingFilterElement.type = Types::SavingsPlanOfferingFilterElement
    SavingsPlanOfferingFiltersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOfferingFilterElement)
    SavingsPlanOfferingProperty.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOfferingPropertyKey, location_name: "name"))
    SavingsPlanOfferingProperty.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonSafeFilterValueString, location_name: "value"))
    SavingsPlanOfferingProperty.type = Types::SavingsPlanOfferingProperty
    SavingsPlanOfferingPropertyKey.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGION", traits: {"smithy.api#enumValue" => "region"}))
    SavingsPlanOfferingPropertyKey.add_member(:instance_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANCE_FAMILY", traits: {"smithy.api#enumValue" => "instanceFamily"}))
    SavingsPlanOfferingPropertyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOfferingProperty)
    SavingsPlanOfferingRate.add_member(:savings_plan_offering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParentSavingsPlanOffering, location_name: "savingsPlanOffering"))
    SavingsPlanOfferingRate.add_member(:rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRatePricePerUnit, location_name: "rate"))
    SavingsPlanOfferingRate.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateUnit, location_name: "unit"))
    SavingsPlanOfferingRate.add_member(:product_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanProductType, location_name: "productType"))
    SavingsPlanOfferingRate.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateServiceCode, location_name: "serviceCode"))
    SavingsPlanOfferingRate.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateUsageType, location_name: "usageType"))
    SavingsPlanOfferingRate.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateOperation, location_name: "operation"))
    SavingsPlanOfferingRate.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOfferingRatePropertyList, location_name: "properties"))
    SavingsPlanOfferingRate.type = Types::SavingsPlanOfferingRate
    SavingsPlanOfferingRateFilterElement.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateFilterAttribute, location_name: "name"))
    SavingsPlanOfferingRateFilterElement.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValuesList, location_name: "values"))
    SavingsPlanOfferingRateFilterElement.type = Types::SavingsPlanOfferingRateFilterElement
    SavingsPlanOfferingRateFiltersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOfferingRateFilterElement)
    SavingsPlanOfferingRateProperty.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonSafeFilterValueString, location_name: "name"))
    SavingsPlanOfferingRateProperty.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonSafeFilterValueString, location_name: "value"))
    SavingsPlanOfferingRateProperty.type = Types::SavingsPlanOfferingRateProperty
    SavingsPlanOfferingRatePropertyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOfferingRateProperty)
    SavingsPlanOfferingRatesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOfferingRate)
    SavingsPlanOfferingsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOffering)
    SavingsPlanOperationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanOperation)
    SavingsPlanPaymentOption.add_member(:all_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL_UPFRONT", traits: {"smithy.api#enumValue" => "All Upfront"}))
    SavingsPlanPaymentOption.add_member(:partial_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARTIAL_UPFRONT", traits: {"smithy.api#enumValue" => "Partial Upfront"}))
    SavingsPlanPaymentOption.add_member(:no_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_UPFRONT", traits: {"smithy.api#enumValue" => "No Upfront"}))
    SavingsPlanPaymentOptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanPaymentOption)
    SavingsPlanProductType.add_member(:ec2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    SavingsPlanProductType.add_member(:fargate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FARGATE", traits: {"smithy.api#enumValue" => "Fargate"}))
    SavingsPlanProductType.add_member(:lambda, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAMBDA", traits: {"smithy.api#enumValue" => "Lambda"}))
    SavingsPlanProductType.add_member(:sagemaker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SAGEMAKER", traits: {"smithy.api#enumValue" => "SageMaker"}))
    SavingsPlanProductTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanProductType)
    SavingsPlanRate.add_member(:rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Amount, location_name: "rate"))
    SavingsPlanRate.add_member(:currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currency"))
    SavingsPlanRate.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateUnit, location_name: "unit"))
    SavingsPlanRate.add_member(:product_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanProductType, location_name: "productType"))
    SavingsPlanRate.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateServiceCode, location_name: "serviceCode"))
    SavingsPlanRate.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateUsageType, location_name: "usageType"))
    SavingsPlanRate.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateOperation, location_name: "operation"))
    SavingsPlanRate.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRatePropertyList, location_name: "properties"))
    SavingsPlanRate.type = Types::SavingsPlanRate
    SavingsPlanRateFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateFilterName, location_name: "name"))
    SavingsPlanRateFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfStrings, location_name: "values"))
    SavingsPlanRateFilter.type = Types::SavingsPlanRateFilter
    SavingsPlanRateFilterAttribute.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGION", traits: {"smithy.api#enumValue" => "region"}))
    SavingsPlanRateFilterAttribute.add_member(:instance_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANCE_FAMILY", traits: {"smithy.api#enumValue" => "instanceFamily"}))
    SavingsPlanRateFilterAttribute.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "instanceType"}))
    SavingsPlanRateFilterAttribute.add_member(:product_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRODUCT_DESCRIPTION", traits: {"smithy.api#enumValue" => "productDescription"}))
    SavingsPlanRateFilterAttribute.add_member(:tenancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TENANCY", traits: {"smithy.api#enumValue" => "tenancy"}))
    SavingsPlanRateFilterAttribute.add_member(:product_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRODUCT_ID", traits: {"smithy.api#enumValue" => "productId"}))
    SavingsPlanRateFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateFilter)
    SavingsPlanRateFilterName.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGION", traits: {"smithy.api#enumValue" => "region"}))
    SavingsPlanRateFilterName.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "instanceType"}))
    SavingsPlanRateFilterName.add_member(:product_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRODUCT_DESCRIPTION", traits: {"smithy.api#enumValue" => "productDescription"}))
    SavingsPlanRateFilterName.add_member(:tenancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TENANCY", traits: {"smithy.api#enumValue" => "tenancy"}))
    SavingsPlanRateFilterName.add_member(:product_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRODUCT_TYPE", traits: {"smithy.api#enumValue" => "productType"}))
    SavingsPlanRateFilterName.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE_CODE", traits: {"smithy.api#enumValue" => "serviceCode"}))
    SavingsPlanRateFilterName.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USAGE_TYPE", traits: {"smithy.api#enumValue" => "usageType"}))
    SavingsPlanRateFilterName.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPERATION", traits: {"smithy.api#enumValue" => "operation"}))
    SavingsPlanRateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRate)
    SavingsPlanRateOperationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateOperation)
    SavingsPlanRateProperty.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRatePropertyKey, location_name: "name"))
    SavingsPlanRateProperty.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JsonSafeFilterValueString, location_name: "value"))
    SavingsPlanRateProperty.type = Types::SavingsPlanRateProperty
    SavingsPlanRatePropertyKey.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGION", traits: {"smithy.api#enumValue" => "region"}))
    SavingsPlanRatePropertyKey.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "instanceType"}))
    SavingsPlanRatePropertyKey.add_member(:instance_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANCE_FAMILY", traits: {"smithy.api#enumValue" => "instanceFamily"}))
    SavingsPlanRatePropertyKey.add_member(:product_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRODUCT_DESCRIPTION", traits: {"smithy.api#enumValue" => "productDescription"}))
    SavingsPlanRatePropertyKey.add_member(:tenancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TENANCY", traits: {"smithy.api#enumValue" => "tenancy"}))
    SavingsPlanRatePropertyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateProperty)
    SavingsPlanRateServiceCode.add_member(:ec2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EC2", traits: {"smithy.api#enumValue" => "AmazonEC2"}))
    SavingsPlanRateServiceCode.add_member(:fargate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FARGATE", traits: {"smithy.api#enumValue" => "AmazonECS"}))
    SavingsPlanRateServiceCode.add_member(:fargate_eks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FARGATE_EKS", traits: {"smithy.api#enumValue" => "AmazonEKS"}))
    SavingsPlanRateServiceCode.add_member(:lambda, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAMBDA", traits: {"smithy.api#enumValue" => "AWSLambda"}))
    SavingsPlanRateServiceCode.add_member(:sagemaker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SAGEMAKER", traits: {"smithy.api#enumValue" => "AmazonSageMaker"}))
    SavingsPlanRateServiceCodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateServiceCode)
    SavingsPlanRateUnit.add_member(:hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOURS", traits: {"smithy.api#enumValue" => "Hrs"}))
    SavingsPlanRateUnit.add_member(:lambda_gb_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAMBDA_GB_SECOND", traits: {"smithy.api#enumValue" => "Lambda-GB-Second"}))
    SavingsPlanRateUnit.add_member(:request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUEST", traits: {"smithy.api#enumValue" => "Request"}))
    SavingsPlanRateUsageTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanRateUsageType)
    SavingsPlanServiceCodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanServiceCode)
    SavingsPlanState.add_member(:payment_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PAYMENT_PENDING", traits: {"smithy.api#enumValue" => "payment-pending"}))
    SavingsPlanState.add_member(:payment_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PAYMENT_FAILED", traits: {"smithy.api#enumValue" => "payment-failed"}))
    SavingsPlanState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "active"}))
    SavingsPlanState.add_member(:retired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RETIRED", traits: {"smithy.api#enumValue" => "retired"}))
    SavingsPlanState.add_member(:queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUEUED", traits: {"smithy.api#enumValue" => "queued"}))
    SavingsPlanState.add_member(:queued_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUEUED_DELETED", traits: {"smithy.api#enumValue" => "queued-deleted"}))
    SavingsPlanState.add_member(:pending_return, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_RETURN", traits: {"smithy.api#enumValue" => "pending-return"}))
    SavingsPlanState.add_member(:returned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RETURNED", traits: {"smithy.api#enumValue" => "returned"}))
    SavingsPlanStateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanState)
    SavingsPlanType.add_member(:compute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPUTE", traits: {"smithy.api#enumValue" => "Compute"}))
    SavingsPlanType.add_member(:ec2_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EC2_INSTANCE", traits: {"smithy.api#enumValue" => "EC2Instance"}))
    SavingsPlanType.add_member(:sagemaker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SAGEMAKER", traits: {"smithy.api#enumValue" => "SageMaker"}))
    SavingsPlanTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanType)
    SavingsPlanUsageTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanUsageType)
    SavingsPlansFilterName.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGION", traits: {"smithy.api#enumValue" => "region"}))
    SavingsPlansFilterName.add_member(:ec2_instance_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EC2_INSTANCE_FAMILY", traits: {"smithy.api#enumValue" => "ec2-instance-family"}))
    SavingsPlansFilterName.add_member(:commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMMITMENT", traits: {"smithy.api#enumValue" => "commitment"}))
    SavingsPlansFilterName.add_member(:upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPFRONT", traits: {"smithy.api#enumValue" => "upfront"}))
    SavingsPlansFilterName.add_member(:term, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERM", traits: {"smithy.api#enumValue" => "term"}))
    SavingsPlansFilterName.add_member(:savings_plan_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SAVINGS_PLAN_TYPE", traits: {"smithy.api#enumValue" => "savings-plan-type"}))
    SavingsPlansFilterName.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PAYMENT_OPTION", traits: {"smithy.api#enumValue" => "payment-option"}))
    SavingsPlansFilterName.add_member(:start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "START", traits: {"smithy.api#enumValue" => "start"}))
    SavingsPlansFilterName.add_member(:end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "END", traits: {"smithy.api#enumValue" => "end"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanArn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    UUIDs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID)
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanArn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    AWSSavingsPlan = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.savingsplans#AWSSavingsPlan"
      service.name = "AWSSavingsPlan"
      service.version = "2019-06-28"
      service.traits = {"aws.api#service" => {"sdkId" => "savingsplans", "arnNamespace" => "savingsplans", "cloudFormationName" => "Savingsplans", "cloudTrailEventSource" => "savingsplans.amazonaws.com", "endpointPrefix" => "savingsplans"}, "aws.auth#sigv4" => {"name" => "savingsplans"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Savings Plans"}
      service.add_operation(:create_savings_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.savingsplans#CreateSavingsPlan"
        operation.name = "CreateSavingsPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSavingsPlanRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSavingsPlanResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateSavingsPlan", "code" => 200}}
      end)
      service.add_operation(:delete_queued_savings_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.savingsplans#DeleteQueuedSavingsPlan"
        operation.name = "DeleteQueuedSavingsPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueuedSavingsPlanRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQueuedSavingsPlanResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteQueuedSavingsPlan", "code" => 200}}
      end)
      service.add_operation(:describe_savings_plan_rates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.savingsplans#DescribeSavingsPlanRates"
        operation.name = "DescribeSavingsPlanRates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSavingsPlanRatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSavingsPlanRatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DescribeSavingsPlanRates", "code" => 200}}
      end)
      service.add_operation(:describe_savings_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.savingsplans#DescribeSavingsPlans"
        operation.name = "DescribeSavingsPlans"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSavingsPlansRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSavingsPlansResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DescribeSavingsPlans", "code" => 200}}
      end)
      service.add_operation(:describe_savings_plans_offering_rates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.savingsplans#DescribeSavingsPlansOfferingRates"
        operation.name = "DescribeSavingsPlansOfferingRates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSavingsPlansOfferingRatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSavingsPlansOfferingRatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DescribeSavingsPlansOfferingRates", "code" => 200}}
      end)
      service.add_operation(:describe_savings_plans_offerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.savingsplans#DescribeSavingsPlansOfferings"
        operation.name = "DescribeSavingsPlansOfferings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSavingsPlansOfferingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSavingsPlansOfferingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DescribeSavingsPlansOfferings", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.savingsplans#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTagsForResource", "code" => 200}}
      end)
      service.add_operation(:return_savings_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.savingsplans#ReturnSavingsPlan"
        operation.name = "ReturnSavingsPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnSavingsPlanRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReturnSavingsPlanResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ReturnSavingsPlan", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.savingsplans#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/TagResource", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.savingsplans#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UntagResource", "code" => 200}}
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
