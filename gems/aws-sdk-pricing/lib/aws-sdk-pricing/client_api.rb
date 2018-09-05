# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Pricing
  # @api private
  module ClientApi

    include Seahorse::Model

    AttributeNameList = Shapes::ListShape.new(name: 'AttributeNameList')
    AttributeValue = Shapes::StructureShape.new(name: 'AttributeValue')
    AttributeValueList = Shapes::ListShape.new(name: 'AttributeValueList')
    BoxedInteger = Shapes::IntegerShape.new(name: 'BoxedInteger')
    DescribeServicesRequest = Shapes::StructureShape.new(name: 'DescribeServicesRequest')
    DescribeServicesResponse = Shapes::StructureShape.new(name: 'DescribeServicesResponse')
    ExpiredNextTokenException = Shapes::StructureShape.new(name: 'ExpiredNextTokenException')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterType = Shapes::StringShape.new(name: 'FilterType')
    Filters = Shapes::ListShape.new(name: 'Filters')
    GetAttributeValuesRequest = Shapes::StructureShape.new(name: 'GetAttributeValuesRequest')
    GetAttributeValuesResponse = Shapes::StructureShape.new(name: 'GetAttributeValuesResponse')
    GetProductsRequest = Shapes::StructureShape.new(name: 'GetProductsRequest')
    GetProductsResponse = Shapes::StructureShape.new(name: 'GetProductsResponse')
    InternalErrorException = Shapes::StructureShape.new(name: 'InternalErrorException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    PriceList = Shapes::ListShape.new(name: 'PriceList')
    PriceListItemJSON = Shapes::StringShape.new(name: 'PriceListItemJSON')
    Service = Shapes::StructureShape.new(name: 'Service')
    ServiceList = Shapes::ListShape.new(name: 'ServiceList')
    String = Shapes::StringShape.new(name: 'String')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    AttributeNameList.member = Shapes::ShapeRef.new(shape: String)

    AttributeValue.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    AttributeValue.struct_class = Types::AttributeValue

    AttributeValueList.member = Shapes::ShapeRef.new(shape: AttributeValue)

    DescribeServicesRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    DescribeServicesRequest.add_member(:format_version, Shapes::ShapeRef.new(shape: String, location_name: "FormatVersion"))
    DescribeServicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeServicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeServicesRequest.struct_class = Types::DescribeServicesRequest

    DescribeServicesResponse.add_member(:services, Shapes::ShapeRef.new(shape: ServiceList, location_name: "Services"))
    DescribeServicesResponse.add_member(:format_version, Shapes::ShapeRef.new(shape: String, location_name: "FormatVersion"))
    DescribeServicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeServicesResponse.struct_class = Types::DescribeServicesResponse

    Filter.add_member(:type, Shapes::ShapeRef.new(shape: FilterType, required: true, location_name: "Type"))
    Filter.add_member(:field, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Field"))
    Filter.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    Filter.struct_class = Types::Filter

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    GetAttributeValuesRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    GetAttributeValuesRequest.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AttributeName"))
    GetAttributeValuesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetAttributeValuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "MaxResults", metadata: {"box"=>true}))
    GetAttributeValuesRequest.struct_class = Types::GetAttributeValuesRequest

    GetAttributeValuesResponse.add_member(:attribute_values, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "AttributeValues"))
    GetAttributeValuesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetAttributeValuesResponse.struct_class = Types::GetAttributeValuesResponse

    GetProductsRequest.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    GetProductsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    GetProductsRequest.add_member(:format_version, Shapes::ShapeRef.new(shape: String, location_name: "FormatVersion"))
    GetProductsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetProductsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "MaxResults", metadata: {"box"=>true}))
    GetProductsRequest.struct_class = Types::GetProductsRequest

    GetProductsResponse.add_member(:format_version, Shapes::ShapeRef.new(shape: String, location_name: "FormatVersion"))
    GetProductsResponse.add_member(:price_list, Shapes::ShapeRef.new(shape: PriceList, location_name: "PriceList"))
    GetProductsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetProductsResponse.struct_class = Types::GetProductsResponse

    PriceList.member = Shapes::ShapeRef.new(shape: PriceListItemJSON, metadata: {"jsonvalue"=>true})

    Service.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
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
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_products, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProducts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProductsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProductsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
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
