# frozen_string_literal: true

# This is generated code!

module Aws::Pricing
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    AttributeNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pricing#AttributeNameList", name: "AttributeNameList")
    AttributeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#AttributeValue", name: "AttributeValue")
    AttributeValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pricing#AttributeValueList", name: "AttributeValueList")
    BoxedInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pricing#BoxedInteger", name: "BoxedInteger", traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 100}})
    CurrencyCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pricing#CurrencyCode", name: "CurrencyCode", traits: {"smithy.api#pattern" => "^[A-Z]{3}$"})
    DescribeServicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#DescribeServicesRequest", name: "DescribeServicesRequest")
    DescribeServicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#DescribeServicesResponse", name: "DescribeServicesResponse")
    EffectiveDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.pricing#EffectiveDate", name: "EffectiveDate")
    ExpiredNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#ExpiredNextTokenException", name: "ExpiredNextTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Field = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pricing#Field", name: "Field", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    FileFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pricing#FileFormat", name: "FileFormat", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    FileFormats = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pricing#FileFormats", name: "FileFormats")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#Filter", name: "Filter")
    FilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pricing#FilterType", name: "FilterType")
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pricing#Filters", name: "Filters", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    FormatVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pricing#FormatVersion", name: "FormatVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    GetAttributeValuesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#GetAttributeValuesRequest", name: "GetAttributeValuesRequest")
    GetAttributeValuesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#GetAttributeValuesResponse", name: "GetAttributeValuesResponse")
    GetPriceListFileUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#GetPriceListFileUrlRequest", name: "GetPriceListFileUrlRequest")
    GetPriceListFileUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#GetPriceListFileUrlResponse", name: "GetPriceListFileUrlResponse")
    GetProductsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#GetProductsRequest", name: "GetProductsRequest")
    GetProductsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#GetProductsResponse", name: "GetProductsResponse")
    InternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#InternalErrorException", name: "InternalErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListPriceListsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#ListPriceListsRequest", name: "ListPriceListsRequest")
    ListPriceListsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#ListPriceListsResponse", name: "ListPriceListsResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pricing#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 100}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PriceList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#PriceList", name: "PriceList")
    PriceListArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pricing#PriceListArn", name: "PriceListArn", traits: {"smithy.api#length" => {"min" => 18, "max" => 2048}, "smithy.api#pattern" => "^arn:[A-Za-z0-9][-.A-Za-z0-9]{0,62}:pricing:::price-list/[A-Za-z0-9+_/.-]{1,1023}$"})
    PriceListJsonItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pricing#PriceListJsonItems", name: "PriceListJsonItems")
    PriceLists = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pricing#PriceLists", name: "PriceLists")
    RegionCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pricing#RegionCode", name: "RegionCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Service = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#Service", name: "Service")
    ServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pricing#ServiceCode", name: "ServiceCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    ServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pricing#ServiceList", name: "ServiceList")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pricing#String", name: "String")
    SynthesizedJsonPriceListJsonItem = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pricing#SynthesizedJsonPriceListJsonItem", name: "SynthesizedJsonPriceListJsonItem", traits: {"smithy.api#mediaType" => "application/json"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pricing#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pricing#Value", name: "Value", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pricing#errorMessage", name: "ErrorMessage")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AttributeNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    AttributeValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    AttributeValue.type = Types::AttributeValue
    AttributeValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "member"))
    DescribeServicesRequest.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceCode"))
    DescribeServicesRequest.add_member(:format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatVersion, name: "FormatVersion"))
    DescribeServicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeServicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    DescribeServicesRequest.type = Types::DescribeServicesRequest
    DescribeServicesResponse.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceList, name: "Services"))
    DescribeServicesResponse.add_member(:format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatVersion, name: "FormatVersion"))
    DescribeServicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeServicesResponse.type = Types::DescribeServicesResponse
    ExpiredNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ExpiredNextTokenException.type = Types::ExpiredNextTokenException
    FileFormats.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, name: "member"))
    Filter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterType, name: "Type", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: Field, name: "Field", traits: {"smithy.api#required" => {}}))
    Filter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "Value", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterType.add_member(:term_match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERM_MATCH", traits: {"smithy.api#enumValue" => "TERM_MATCH"}))
    FilterType.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    FilterType.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    FilterType.add_member(:any_of, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY_OF", traits: {"smithy.api#enumValue" => "ANY_OF"}))
    FilterType.add_member(:none_of, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE_OF", traits: {"smithy.api#enumValue" => "NONE_OF"}))
    Filters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    GetAttributeValuesRequest.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    GetAttributeValuesRequest.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    GetAttributeValuesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetAttributeValuesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    GetAttributeValuesRequest.type = Types::GetAttributeValuesRequest
    GetAttributeValuesResponse.add_member(:attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueList, name: "AttributeValues"))
    GetAttributeValuesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetAttributeValuesResponse.type = Types::GetAttributeValuesResponse
    GetPriceListFileUrlRequest.add_member(:price_list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceListArn, name: "PriceListArn", traits: {"smithy.api#required" => {}}))
    GetPriceListFileUrlRequest.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, name: "FileFormat", traits: {"smithy.api#required" => {}}))
    GetPriceListFileUrlRequest.type = Types::GetPriceListFileUrlRequest
    GetPriceListFileUrlResponse.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Url"))
    GetPriceListFileUrlResponse.type = Types::GetPriceListFileUrlResponse
    GetProductsRequest.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    GetProductsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters"))
    GetProductsRequest.add_member(:format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatVersion, name: "FormatVersion"))
    GetProductsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetProductsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    GetProductsRequest.type = Types::GetProductsRequest
    GetProductsResponse.add_member(:format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatVersion, name: "FormatVersion"))
    GetProductsResponse.add_member(:price_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceListJsonItems, name: "PriceList"))
    GetProductsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetProductsResponse.type = Types::GetProductsResponse
    InternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalErrorException.type = Types::InternalErrorException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidParameterException.type = Types::InvalidParameterException
    ListPriceListsRequest.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCode, name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    ListPriceListsRequest.add_member(:effective_date, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveDate, name: "EffectiveDate", traits: {"smithy.api#required" => {}}))
    ListPriceListsRequest.add_member(:region_code, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionCode, name: "RegionCode"))
    ListPriceListsRequest.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "CurrencyCode", traits: {"smithy.api#required" => {}}))
    ListPriceListsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListPriceListsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListPriceListsRequest.type = Types::ListPriceListsRequest
    ListPriceListsResponse.add_member(:price_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceLists, name: "PriceLists"))
    ListPriceListsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListPriceListsResponse.type = Types::ListPriceListsResponse
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    NotFoundException.type = Types::NotFoundException
    PriceList.add_member(:price_list_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceListArn, name: "PriceListArn"))
    PriceList.add_member(:region_code, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionCode, name: "RegionCode"))
    PriceList.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "CurrencyCode"))
    PriceList.add_member(:file_formats, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormats, name: "FileFormats"))
    PriceList.type = Types::PriceList
    PriceListJsonItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonPriceListJsonItem, name: "member"))
    PriceLists.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PriceList, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Service.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceCode", traits: {"smithy.api#required" => {}}))
    Service.add_member(:attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameList, name: "AttributeNames"))
    Service.type = Types::Service
    ServiceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException

    AWSPriceListService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pricing#AWSPriceListService"
      service.name = "AWSPriceListService"
      service.version = "2017-10-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Pricing", "arnNamespace" => "pricing", "cloudFormationName" => "Pricing", "cloudTrailEventSource" => "pricelist.amazonaws.com", "endpointPrefix" => "api.pricing"}, "aws.auth#sigv4" => {"name" => "pricing"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Price List Service"}
      service.add_operation(:describe_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricing#DescribeServices"
        operation.name = "DescribeServices"
        operation.input = DescribeServicesRequest
        operation.output = DescribeServicesResponse
        operation.errors << ExpiredNextTokenException
        operation.errors << InternalErrorException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeServices.new
      end)
      service.add_operation(:get_attribute_values, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricing#GetAttributeValues"
        operation.name = "GetAttributeValues"
        operation.input = GetAttributeValuesRequest
        operation.output = GetAttributeValuesResponse
        operation.errors << ExpiredNextTokenException
        operation.errors << InternalErrorException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::GetAttributeValues.new
      end)
      service.add_operation(:get_price_list_file_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricing#GetPriceListFileUrl"
        operation.name = "GetPriceListFileUrl"
        operation.input = GetPriceListFileUrlRequest
        operation.output = GetPriceListFileUrlResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalErrorException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_products, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricing#GetProducts"
        operation.name = "GetProducts"
        operation.input = GetProductsRequest
        operation.output = GetProductsResponse
        operation.errors << ExpiredNextTokenException
        operation.errors << InternalErrorException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::GetProducts.new
      end)
      service.add_operation(:list_price_lists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pricing#ListPriceLists"
        operation.name = "ListPriceLists"
        operation.input = ListPriceListsRequest
        operation.output = ListPriceListsResponse
        operation.errors << AccessDeniedException
        operation.errors << ExpiredNextTokenException
        operation.errors << InternalErrorException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterException
        operation.errors << NotFoundException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPriceLists.new
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
