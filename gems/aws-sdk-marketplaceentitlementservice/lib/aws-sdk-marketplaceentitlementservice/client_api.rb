# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceEntitlementService
  # @api private
  module ClientApi

    include Seahorse::Model

    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Double = Shapes::FloatShape.new(name: 'Double')
    Entitlement = Shapes::StructureShape.new(name: 'Entitlement')
    EntitlementList = Shapes::ListShape.new(name: 'EntitlementList')
    EntitlementValue = Shapes::StructureShape.new(name: 'EntitlementValue')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    GetEntitlementFilterName = Shapes::StringShape.new(name: 'GetEntitlementFilterName')
    GetEntitlementFilters = Shapes::MapShape.new(name: 'GetEntitlementFilters')
    GetEntitlementsRequest = Shapes::StructureShape.new(name: 'GetEntitlementsRequest')
    GetEntitlementsResult = Shapes::StructureShape.new(name: 'GetEntitlementsResult')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServiceErrorException = Shapes::StructureShape.new(name: 'InternalServiceErrorException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    ProductCode = Shapes::StringShape.new(name: 'ProductCode')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')

    Entitlement.add_member(:product_code, Shapes::ShapeRef.new(shape: ProductCode, location_name: "ProductCode"))
    Entitlement.add_member(:dimension, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Dimension"))
    Entitlement.add_member(:customer_identifier, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CustomerIdentifier"))
    Entitlement.add_member(:value, Shapes::ShapeRef.new(shape: EntitlementValue, location_name: "Value"))
    Entitlement.add_member(:expiration_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationDate"))
    Entitlement.struct_class = Types::Entitlement

    EntitlementList.member = Shapes::ShapeRef.new(shape: Entitlement)

    EntitlementValue.add_member(:integer_value, Shapes::ShapeRef.new(shape: Integer, location_name: "IntegerValue"))
    EntitlementValue.add_member(:double_value, Shapes::ShapeRef.new(shape: Double, location_name: "DoubleValue"))
    EntitlementValue.add_member(:boolean_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "BooleanValue"))
    EntitlementValue.add_member(:string_value, Shapes::ShapeRef.new(shape: String, location_name: "StringValue"))
    EntitlementValue.struct_class = Types::EntitlementValue

    FilterValueList.member = Shapes::ShapeRef.new(shape: FilterValue)

    GetEntitlementFilters.key = Shapes::ShapeRef.new(shape: GetEntitlementFilterName)
    GetEntitlementFilters.value = Shapes::ShapeRef.new(shape: FilterValueList)

    GetEntitlementsRequest.add_member(:product_code, Shapes::ShapeRef.new(shape: ProductCode, required: true, location_name: "ProductCode"))
    GetEntitlementsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: GetEntitlementFilters, location_name: "Filter"))
    GetEntitlementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    GetEntitlementsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    GetEntitlementsRequest.struct_class = Types::GetEntitlementsRequest

    GetEntitlementsResult.add_member(:entitlements, Shapes::ShapeRef.new(shape: EntitlementList, location_name: "Entitlements"))
    GetEntitlementsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    GetEntitlementsResult.struct_class = Types::GetEntitlementsResult


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-01-11"

      api.metadata = {
        "apiVersion" => "2017-01-11",
        "endpointPrefix" => "entitlement.marketplace",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Marketplace Entitlement Service",
        "signatureVersion" => "v4",
        "signingName" => "aws-marketplace",
        "targetPrefix" => "AWSMPEntitlementService",
        "uid" => "entitlement.marketplace-2017-01-11",
      }

      api.add_operation(:get_entitlements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEntitlements"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEntitlementsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEntitlementsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)
    end

  end
end
