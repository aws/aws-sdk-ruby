# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Pricing
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AttributeNameList = Shapes::ListShape.new(name: 'AttributeNameList')
    AttributeValue = Shapes::StructureShape.new(name: 'AttributeValue')
    AttributeValueList = Shapes::ListShape.new(name: 'AttributeValueList')
    BoxedInteger = Shapes::IntegerShape.new(name: 'BoxedInteger')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    DescribeServicesRequest = Shapes::StructureShape.new(name: 'DescribeServicesRequest')
    DescribeServicesResponse = Shapes::StructureShape.new(name: 'DescribeServicesResponse')
    EffectiveDate = Shapes::TimestampShape.new(name: 'EffectiveDate')
    ExpiredNextTokenException = Shapes::StructureShape.new(name: 'ExpiredNextTokenException')
    FileFormat = Shapes::StringShape.new(name: 'FileFormat')
    FileFormats = Shapes::ListShape.new(name: 'FileFormats')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterType = Shapes::StringShape.new(name: 'FilterType')
    Filters = Shapes::ListShape.new(name: 'Filters')
    GetAttributeValuesRequest = Shapes::StructureShape.new(name: 'GetAttributeValuesRequest')
    GetAttributeValuesResponse = Shapes::StructureShape.new(name: 'GetAttributeValuesResponse')
    GetPriceListFileUrlRequest = Shapes::StructureShape.new(name: 'GetPriceListFileUrlRequest')
    GetPriceListFileUrlResponse = Shapes::StructureShape.new(name: 'GetPriceListFileUrlResponse')
    GetProductsRequest = Shapes::StructureShape.new(name: 'GetProductsRequest')
    GetProductsResponse = Shapes::StructureShape.new(name: 'GetProductsResponse')
    InternalErrorException = Shapes::StructureShape.new(name: 'InternalErrorException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    ListPriceListsRequest = Shapes::StructureShape.new(name: 'ListPriceListsRequest')
    ListPriceListsResponse = Shapes::StructureShape.new(name: 'ListPriceListsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    PriceList = Shapes::StructureShape.new(name: 'PriceList')
    PriceListArn = Shapes::StringShape.new(name: 'PriceListArn')
    PriceListJsonItems = Shapes::ListShape.new(name: 'PriceListJsonItems')
    PriceLists = Shapes::ListShape.new(name: 'PriceLists')
    RegionCode = Shapes::StringShape.new(name: 'RegionCode')
    Service = Shapes::StructureShape.new(name: 'Service')
    ServiceCode = Shapes::StringShape.new(name: 'ServiceCode')
    ServiceList = Shapes::ListShape.new(name: 'ServiceList')
    String = Shapes::StringShape.new(name: 'String')
    SynthesizedJsonPriceListJsonItem = Shapes::StringShape.new(name: 'SynthesizedJsonPriceListJsonItem')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AttributeNameList.member = Shapes::ShapeRef.new(shape: String)

    AttributeValue.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    AttributeValue.struct_class = Types::AttributeValue

    AttributeValueList.member = Shapes::ShapeRef.new(shape: AttributeValue)

    DescribeServicesRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    DescribeServicesRequest.add_member(:format_version, Shapes::ShapeRef.new(shape: String, location_name: "FormatVersion"))
    DescribeServicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeServicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "MaxResults"))
    DescribeServicesRequest.struct_class = Types::DescribeServicesRequest

    DescribeServicesResponse.add_member(:services, Shapes::ShapeRef.new(shape: ServiceList, location_name: "Services"))
    DescribeServicesResponse.add_member(:format_version, Shapes::ShapeRef.new(shape: String, location_name: "FormatVersion"))
    DescribeServicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeServicesResponse.struct_class = Types::DescribeServicesResponse

    ExpiredNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    ExpiredNextTokenException.struct_class = Types::ExpiredNextTokenException

    FileFormats.member = Shapes::ShapeRef.new(shape: FileFormat)

    Filter.add_member(:type, Shapes::ShapeRef.new(shape: FilterType, required: true, location_name: "Type"))
    Filter.add_member(:field, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Field"))
    Filter.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    Filter.struct_class = Types::Filter

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    GetAttributeValuesRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    GetAttributeValuesRequest.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AttributeName"))
    GetAttributeValuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetAttributeValuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "MaxResults"))
    GetAttributeValuesRequest.struct_class = Types::GetAttributeValuesRequest

    GetAttributeValuesResponse.add_member(:attribute_values, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "AttributeValues"))
    GetAttributeValuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetAttributeValuesResponse.struct_class = Types::GetAttributeValuesResponse

    GetPriceListFileUrlRequest.add_member(:price_list_arn, Shapes::ShapeRef.new(shape: PriceListArn, required: true, location_name: "PriceListArn"))
    GetPriceListFileUrlRequest.add_member(:file_format, Shapes::ShapeRef.new(shape: FileFormat, required: true, location_name: "FileFormat"))
    GetPriceListFileUrlRequest.struct_class = Types::GetPriceListFileUrlRequest

    GetPriceListFileUrlResponse.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "Url"))
    GetPriceListFileUrlResponse.struct_class = Types::GetPriceListFileUrlResponse

    GetProductsRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    GetProductsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    GetProductsRequest.add_member(:format_version, Shapes::ShapeRef.new(shape: String, location_name: "FormatVersion"))
    GetProductsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetProductsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "MaxResults"))
    GetProductsRequest.struct_class = Types::GetProductsRequest

    GetProductsResponse.add_member(:format_version, Shapes::ShapeRef.new(shape: String, location_name: "FormatVersion"))
    GetProductsResponse.add_member(:price_list, Shapes::ShapeRef.new(shape: PriceListJsonItems, location_name: "PriceList"))
    GetProductsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetProductsResponse.struct_class = Types::GetProductsResponse

    InternalErrorException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    InternalErrorException.struct_class = Types::InternalErrorException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    ListPriceListsRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "ServiceCode"))
    ListPriceListsRequest.add_member(:effective_date, Shapes::ShapeRef.new(shape: EffectiveDate, required: true, location_name: "EffectiveDate"))
    ListPriceListsRequest.add_member(:region_code, Shapes::ShapeRef.new(shape: RegionCode, location_name: "RegionCode"))
    ListPriceListsRequest.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "CurrencyCode"))
    ListPriceListsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPriceListsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListPriceListsRequest.struct_class = Types::ListPriceListsRequest

    ListPriceListsResponse.add_member(:price_lists, Shapes::ShapeRef.new(shape: PriceLists, location_name: "PriceLists"))
    ListPriceListsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPriceListsResponse.struct_class = Types::ListPriceListsResponse

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    PriceList.add_member(:price_list_arn, Shapes::ShapeRef.new(shape: PriceListArn, location_name: "PriceListArn"))
    PriceList.add_member(:region_code, Shapes::ShapeRef.new(shape: RegionCode, location_name: "RegionCode"))
    PriceList.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "CurrencyCode"))
    PriceList.add_member(:file_formats, Shapes::ShapeRef.new(shape: FileFormats, location_name: "FileFormats"))
    PriceList.struct_class = Types::PriceList

    PriceListJsonItems.member = Shapes::ShapeRef.new(shape: SynthesizedJsonPriceListJsonItem, metadata: {"jsonvalue"=>true})

    PriceLists.member = Shapes::ShapeRef.new(shape: PriceList)

    Service.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    Service.add_member(:attribute_names, Shapes::ShapeRef.new(shape: AttributeNameList, location_name: "AttributeNames"))
    Service.struct_class = Types::Service

    ServiceList.member = Shapes::ShapeRef.new(shape: Service)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-10-15"

      api.metadata = {
        "apiVersion" => "2017-10-15",
        "endpointPrefix" => "api.pricing",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "AWS Pricing",
        "serviceFullName" => "AWS Price List Service",
        "serviceId" => "Pricing",
        "signatureVersion" => "v4",
        "signingName" => "pricing",
        "targetPrefix" => "AWSPriceListService",
        "uid" => "pricing-2017-10-15",
      }

      api.add_operation(:describe_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeServices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeServicesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeServicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_attribute_values, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAttributeValues"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAttributeValuesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAttributeValuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_price_list_file_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPriceListFileUrl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPriceListFileUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPriceListFileUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_products, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProducts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProductsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProductsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_price_lists, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPriceLists"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPriceListsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPriceListsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
