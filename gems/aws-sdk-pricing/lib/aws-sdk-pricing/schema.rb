# frozen_string_literal: true

# This is generated code!

module Aws::Pricing
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    AttributeNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pricing#AttributeNameList', name: 'AttributeNameList')
    AttributeValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#AttributeValue', name: 'AttributeValue')
    AttributeValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pricing#AttributeValueList', name: 'AttributeValueList')
    BoxedInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.pricing#BoxedInteger', name: 'BoxedInteger', traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 100}})
    CurrencyCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pricing#CurrencyCode', name: 'CurrencyCode', traits: {"smithy.api#pattern" => "^[A-Z]{3}$"})
    DescribeServicesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#DescribeServicesRequest', name: 'DescribeServicesRequest')
    DescribeServicesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#DescribeServicesResponse', name: 'DescribeServicesResponse')
    EffectiveDate = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.pricing#EffectiveDate', name: 'EffectiveDate')
    ExpiredNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#ExpiredNextTokenException', name: 'ExpiredNextTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Field = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pricing#Field', name: 'Field', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    FileFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pricing#FileFormat', name: 'FileFormat', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    FileFormats = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pricing#FileFormats', name: 'FileFormats')
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#Filter', name: 'Filter')
    FilterType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pricing#FilterType', name: 'FilterType')
    Filters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pricing#Filters', name: 'Filters', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    FormatVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pricing#FormatVersion', name: 'FormatVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    GetAttributeValuesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#GetAttributeValuesRequest', name: 'GetAttributeValuesRequest')
    GetAttributeValuesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#GetAttributeValuesResponse', name: 'GetAttributeValuesResponse')
    GetPriceListFileUrlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#GetPriceListFileUrlRequest', name: 'GetPriceListFileUrlRequest')
    GetPriceListFileUrlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#GetPriceListFileUrlResponse', name: 'GetPriceListFileUrlResponse')
    GetProductsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#GetProductsRequest', name: 'GetProductsRequest')
    GetProductsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#GetProductsResponse', name: 'GetProductsResponse')
    InternalErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#InternalErrorException', name: 'InternalErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListPriceListsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#ListPriceListsRequest', name: 'ListPriceListsRequest')
    ListPriceListsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#ListPriceListsResponse', name: 'ListPriceListsResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.pricing#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 100}})
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PriceList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#PriceList', name: 'PriceList')
    PriceListArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pricing#PriceListArn', name: 'PriceListArn', traits: {"smithy.api#length" => {"min" => 18, "max" => 2048}, "smithy.api#pattern" => "^arn:[A-Za-z0-9][-.A-Za-z0-9]{0,62}:pricing:::price-list/[A-Za-z0-9+_/.-]{1,1023}$"})
    PriceListJsonItems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pricing#PriceListJsonItems', name: 'PriceListJsonItems')
    PriceLists = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pricing#PriceLists', name: 'PriceLists')
    RegionCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pricing#RegionCode', name: 'RegionCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Service = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#Service', name: 'Service')
    ServiceCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pricing#ServiceCode', name: 'ServiceCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    ServiceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pricing#ServiceList', name: 'ServiceList')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pricing#String', name: 'String')
    SynthesizedJsonPriceListJsonItem = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pricing#SynthesizedJsonPriceListJsonItem', name: 'SynthesizedJsonPriceListJsonItem', traits: {"smithy.api#mediaType" => "application/json"})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pricing#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Value = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pricing#Value', name: 'Value', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pricing#errorMessage', name: 'ErrorMessage')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AttributeNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AttributeValue.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The specific value of an <code>attributeName</code>.</p>"}))
    AttributeValue.type = Types::AttributeValue
    AttributeValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    DescribeServicesRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>The code for the service whose information you want to retrieve, such as <code>AmazonEC2</code>.\n          You can use \n         the <code>ServiceCode</code> to filter the results in a <code>GetProducts</code> call.\n      To retrieve a list of all services, leave this blank.</p>"}))
    DescribeServicesRequest.add_member(:format_version, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatVersion, location_name: 'FormatVersion', traits: {"smithy.api#documentation" => "<p>The format version that you want the response to be in.</p>\n         <p>Valid values are: <code>aws_v1</code>\n         </p>"}))
    DescribeServicesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results that you want to retrieve.</p>"}))
    DescribeServicesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedInteger, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of results that you want returned in the response.</p>"}))
    DescribeServicesRequest.type = Types::DescribeServicesRequest
    DescribeServicesResponse.add_member(:services, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceList, location_name: 'Services', traits: {"smithy.api#documentation" => "<p>The service metadata for the service or services in the response.</p>"}))
    DescribeServicesResponse.add_member(:format_version, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatVersion, location_name: 'FormatVersion', traits: {"smithy.api#documentation" => "<p>The format version of the response. For example, <code>aws_v1</code>.</p>"}))
    DescribeServicesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token for the next set of retrievable results.</p>"}))
    DescribeServicesResponse.type = Types::DescribeServicesResponse
    ExpiredNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ExpiredNextTokenException.type = Types::ExpiredNextTokenException
    FileFormats.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FileFormat)
    Filter.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of filter that you want to use.</p>\n         <p>Valid values are:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>TERM_MATCH</code>: Returns only \n            products that match both the given filter field and the given value.</p>\n            </li>\n            <li>\n               <p>\n                  <code>EQUALS</code>: Returns products that have a field value exactly matching the provided value.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CONTAINS</code>: Returns products where the field value contains the provided value as a substring.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ANY_OF</code>: Returns products where the field value is any of the provided values.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NONE_OF</code>: Returns products where the field value is not any of the provided values.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    Filter.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: Field, location_name: 'Field', traits: {"smithy.api#documentation" => "<p>The product metadata field that you want to filter on. You can filter by just the \n         service code to see all products for a specific service, filter \n         by just the attribute name to see a specific attribute for multiple services, or use both a service code\n         and an attribute name to retrieve only products that match both fields.</p>\n         <p>Valid values include: <code>ServiceCode</code>, and all attribute names</p>\n         <p>For example, you can filter by the <code>AmazonEC2</code> service code and the \n         <code>volumeType</code> attribute name to get the prices for only Amazon EC2 volumes.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The service code or attribute value that you want to filter by. If you're filtering\n         by service code this is the actual service code, such as <code>AmazonEC2</code>. If you're\n         filtering by attribute name, this is the attribute value that you want the returned\n         products to match, such as a <code>Provisioned IOPS</code> volume.</p>\n         <p>For <code>ANY_OF</code> and <code>NONE_OF</code> filter types, you can provide multiple values as a comma-separated string. For example, <code>t2.micro,t2.small,t2.medium</code> or <code>Compute optimized, GPU instance, Micro instances</code>.</p>", "smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterType.add_member(:term_match, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERM_MATCH', traits: {"smithy.api#enumValue" => "TERM_MATCH"}))
    FilterType.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    FilterType.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    FilterType.add_member(:any_of, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY_OF', traits: {"smithy.api#enumValue" => "ANY_OF"}))
    FilterType.add_member(:none_of, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE_OF', traits: {"smithy.api#enumValue" => "NONE_OF"}))
    Filters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    GetAttributeValuesRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>The service code for the service whose attributes you want to retrieve. For example, if you want \n          the retrieve an EC2 attribute, use <code>AmazonEC2</code>.</p>", "smithy.api#required" => {}}))
    GetAttributeValuesRequest.add_member(:attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeName', traits: {"smithy.api#documentation" => "<p>The name of the attribute that you want to retrieve the values for, such as <code>volumeType</code>.</p>", "smithy.api#required" => {}}))
    GetAttributeValuesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results that you want to retrieve.</p>"}))
    GetAttributeValuesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedInteger, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of results to return in response.</p>"}))
    GetAttributeValuesRequest.type = Types::GetAttributeValuesRequest
    GetAttributeValuesResponse.add_member(:attribute_values, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueList, location_name: 'AttributeValues', traits: {"smithy.api#documentation" => "<p>The list of values for an attribute. For example, <code>Throughput Optimized HDD</code> and \n      <code>Provisioned IOPS</code> are two available values for the <code>AmazonEC2</code>\n            <code>volumeType</code>.</p>"}))
    GetAttributeValuesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>"}))
    GetAttributeValuesResponse.type = Types::GetAttributeValuesResponse
    GetPriceListFileUrlRequest.add_member(:price_list_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PriceListArn, location_name: 'PriceListArn', traits: {"smithy.api#documentation" => "<p>The unique identifier that maps to where your Price List files are located.\n            <code>PriceListArn</code> can be obtained from the <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html\">ListPriceLists</a> response. </p>", "smithy.api#required" => {}}))
    GetPriceListFileUrlRequest.add_member(:file_format, Smithy::Schema::Shapes::ShapeRef.new(shape: FileFormat, location_name: 'FileFormat', traits: {"smithy.api#documentation" => "<p>The format that you want to retrieve your Price List files in. The\n            <code>FileFormat</code> can be obtained from the <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html\">ListPriceLists</a> response. </p>", "smithy.api#required" => {}}))
    GetPriceListFileUrlRequest.type = Types::GetPriceListFileUrlRequest
    GetPriceListFileUrlResponse.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The URL to download your Price List file from. </p>"}))
    GetPriceListFileUrlResponse.type = Types::GetPriceListFileUrlResponse
    GetProductsRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>The code for the service whose products you want to retrieve. </p>", "smithy.api#required" => {}}))
    GetProductsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The list of filters that limit the returned products. only products that match all filters\n         are returned.</p>"}))
    GetProductsRequest.add_member(:format_version, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatVersion, location_name: 'FormatVersion', traits: {"smithy.api#documentation" => "<p>The format version that you want the response to be in.</p>\n         <p>Valid values are: <code>aws_v1</code>\n         </p>"}))
    GetProductsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results that you want to retrieve.</p>"}))
    GetProductsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: BoxedInteger, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of results to return in the response.</p>"}))
    GetProductsRequest.type = Types::GetProductsRequest
    GetProductsResponse.add_member(:format_version, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatVersion, location_name: 'FormatVersion', traits: {"smithy.api#documentation" => "<p>The format version of the response. For example, aws_v1.</p>"}))
    GetProductsResponse.add_member(:price_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PriceListJsonItems, location_name: 'PriceList', traits: {"smithy.api#documentation" => "<p>The list of products that match your filters. The list contains both the product metadata and \n         the price information.</p>"}))
    GetProductsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve.</p>"}))
    GetProductsResponse.type = Types::GetProductsResponse
    InternalErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalErrorException.type = Types::InternalErrorException
    InvalidNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidParameterException.type = Types::InvalidParameterException
    ListPriceListsRequest.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>The service code or the Savings Plan service code for the attributes that\n         you want to retrieve. For example, to get the list of applicable Amazon EC2 price\n         lists, use <code>AmazonEC2</code>. For a full list of service codes containing On-Demand\n         and Reserved Instance (RI) pricing, use the <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_DescribeServices.html#awscostmanagement-pricing_DescribeServices-request-FormatVersion\">DescribeServices</a> API.</p>\n         <p>To retrieve the Reserved Instance and Compute Savings Plan price lists,\n         use <code>ComputeSavingsPlans</code>. </p>\n         <p>To retrieve Machine Learning Savings Plans price lists, use\n            <code>MachineLearningSavingsPlans</code>. </p>", "smithy.api#required" => {}}))
    ListPriceListsRequest.add_member(:effective_date, Smithy::Schema::Shapes::ShapeRef.new(shape: EffectiveDate, location_name: 'EffectiveDate', traits: {"smithy.api#documentation" => "<p>The date that the Price List file prices are effective from. </p>", "smithy.api#required" => {}}))
    ListPriceListsRequest.add_member(:region_code, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionCode, location_name: 'RegionCode', traits: {"smithy.api#documentation" => "<p>This is used to filter the Price List by Amazon Web Services Region. For example, to get\n         the price list only for the <code>US East (N. Virginia)</code> Region, use\n            <code>us-east-1</code>. If nothing is specified, you retrieve price lists for all\n         applicable Regions. The available <code>RegionCode</code> list can be retrieved from <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_GetAttributeValues.html\">GetAttributeValues</a> API.</p>"}))
    ListPriceListsRequest.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: 'CurrencyCode', traits: {"smithy.api#documentation" => "<p>The three alphabetical character ISO-4217 currency code that the Price List files are\n         denominated in. </p>", "smithy.api#required" => {}}))
    ListPriceListsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results that you want to retrieve. </p>"}))
    ListPriceListsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of results to return in the response.\n      </p>"}))
    ListPriceListsRequest.type = Types::ListPriceListsRequest
    ListPriceListsResponse.add_member(:price_lists, Smithy::Schema::Shapes::ShapeRef.new(shape: PriceLists, location_name: 'PriceLists', traits: {"smithy.api#documentation" => "<p>The type of price list references that match your request. </p>"}))
    ListPriceListsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that indicates the next set of results to retrieve. </p>"}))
    ListPriceListsResponse.type = Types::ListPriceListsResponse
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NotFoundException.type = Types::NotFoundException
    PriceList.add_member(:price_list_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PriceListArn, location_name: 'PriceListArn', traits: {"smithy.api#documentation" => "<p>The unique identifier that maps to where your Price List files are located.\n            <code>PriceListArn</code> can be obtained from the <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html\">\n               <code>ListPriceList</code>\n            </a> response. </p>"}))
    PriceList.add_member(:region_code, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionCode, location_name: 'RegionCode', traits: {"smithy.api#documentation" => "<p>This is used to filter the Price List by Amazon Web Services Region. For example, to get\n         the price list only for the <code>US East (N. Virginia)</code> Region, use\n            <code>us-east-1</code>. If nothing is specified, you retrieve price lists for all\n         applicable Regions. The available <code>RegionCode</code> list can be retrieved from <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_GetAttributeValues.html\">\n               <code>GetAttributeValues</code>\n            </a> API. </p>"}))
    PriceList.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyCode, location_name: 'CurrencyCode', traits: {"smithy.api#documentation" => "<p>The three alphabetical character ISO-4217 currency code the Price List files are\n         denominated in. </p>"}))
    PriceList.add_member(:file_formats, Smithy::Schema::Shapes::ShapeRef.new(shape: FileFormats, location_name: 'FileFormats', traits: {"smithy.api#documentation" => "<p>The format you want to retrieve your Price List files. The <code>FileFormat</code> can\n         be obtained from the <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html\">\n               <code>ListPriceList</code>\n            </a> response. </p>"}))
    PriceList.type = Types::PriceList
    PriceListJsonItems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonPriceListJsonItem)
    PriceLists.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PriceList)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Service.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>The code for the Amazon Web Services service.</p>", "smithy.api#required" => {}}))
    Service.add_member(:attribute_names, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: 'AttributeNames', traits: {"smithy.api#documentation" => "<p>The attributes that are available for this service.</p>"}))
    Service.type = Types::Service
    ServiceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Service)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException

    AWSPriceListService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pricing#AWSPriceListService"
      service.name = "AWSPriceListService"
      service.version = "2017-10-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Pricing", "arnNamespace" => "pricing", "cloudFormationName" => "Pricing", "cloudTrailEventSource" => "pricelist.amazonaws.com", "endpointPrefix" => "api.pricing"}, "aws.auth#sigv4" => {"name" => "pricing"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Price List Service"}
      service.add_operation(:describe_services, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricing#DescribeServices"
        operation.name = "DescribeServices"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServicesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServicesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeServices.new
      end)
      service.add_operation(:get_attribute_values, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricing#GetAttributeValues"
        operation.name = "GetAttributeValues"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAttributeValuesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAttributeValuesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetAttributeValues.new
      end)
      service.add_operation(:get_price_list_file_url, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricing#GetPriceListFileUrl"
        operation.name = "GetPriceListFileUrl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPriceListFileUrlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPriceListFileUrlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_products, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricing#GetProducts"
        operation.name = "GetProducts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProductsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProductsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetProducts.new
      end)
      service.add_operation(:list_price_lists, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricing#ListPriceLists"
        operation.name = "ListPriceLists"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPriceListsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPriceListsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPriceLists.new
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
