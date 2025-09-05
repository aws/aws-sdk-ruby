# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceEntitlementService
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.marketplaceentitlementservice#Boolean', name: 'Boolean')
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.marketplaceentitlementservice#Double', name: 'Double')
    Entitlement = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceentitlementservice#Entitlement', name: 'Entitlement')
    EntitlementList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplaceentitlementservice#EntitlementList', name: 'EntitlementList', traits: {"smithy.api#length" => {"min" => 0}})
    EntitlementValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceentitlementservice#EntitlementValue', name: 'EntitlementValue')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceentitlementservice#ErrorMessage', name: 'ErrorMessage')
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceentitlementservice#FilterValue', name: 'FilterValue')
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.marketplaceentitlementservice#FilterValueList', name: 'FilterValueList', traits: {"smithy.api#length" => {"min" => 1}})
    GetEntitlementFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.marketplaceentitlementservice#GetEntitlementFilterName', name: 'GetEntitlementFilterName')
    GetEntitlementFilters = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.marketplaceentitlementservice#GetEntitlementFilters', name: 'GetEntitlementFilters')
    GetEntitlementsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceentitlementservice#GetEntitlementsRequest', name: 'GetEntitlementsRequest')
    GetEntitlementsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceentitlementservice#GetEntitlementsResult', name: 'GetEntitlementsResult')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.marketplaceentitlementservice#Integer', name: 'Integer')
    InternalServiceErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceentitlementservice#InternalServiceErrorException', name: 'InternalServiceErrorException', traits: {"smithy.api#error" => "server"})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceentitlementservice#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client"})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceentitlementservice#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#pattern" => "^\\S+$"})
    PageSizeInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.marketplaceentitlementservice#PageSizeInteger', name: 'PageSizeInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    ProductCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceentitlementservice#ProductCode', name: 'ProductCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.marketplaceentitlementservice#String', name: 'String')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.marketplaceentitlementservice#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.marketplaceentitlementservice#Timestamp', name: 'Timestamp')

    Entitlement.add_member(:product_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCode, location_name: 'ProductCode'))
    Entitlement.add_member(:dimension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Dimension'))
    Entitlement.add_member(:customer_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'CustomerIdentifier'))
    Entitlement.add_member(:customer_aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'CustomerAWSAccountId'))
    Entitlement.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementValue, location_name: 'Value'))
    Entitlement.add_member(:expiration_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpirationDate'))
    Entitlement.type = Types::Entitlement
    EntitlementList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Entitlement)
    EntitlementValue.add_member(:integer_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IntegerValue'))
    EntitlementValue.add_member(:double_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'DoubleValue'))
    EntitlementValue.add_member(:boolean_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'BooleanValue'))
    EntitlementValue.add_member(:string_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StringValue'))
    EntitlementValue.type = Types::EntitlementValue
    FilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue)
    GetEntitlementFilterName.add_member(:customer_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_IDENTIFIER', traits: {"smithy.api#enumValue" => "CUSTOMER_IDENTIFIER"}))
    GetEntitlementFilterName.add_member(:dimension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIMENSION', traits: {"smithy.api#enumValue" => "DIMENSION"}))
    GetEntitlementFilterName.add_member(:customer_aws_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_AWS_ACCOUNT_ID', traits: {"smithy.api#enumValue" => "CUSTOMER_AWS_ACCOUNT_ID"}))
    GetEntitlementFilters.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEntitlementFilterName)
    GetEntitlementFilters.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList)
    GetEntitlementsRequest.add_member(:product_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProductCode, location_name: 'ProductCode', traits: {"smithy.api#required" => {}}))
    GetEntitlementsRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEntitlementFilters, location_name: 'Filter'))
    GetEntitlementsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'NextToken'))
    GetEntitlementsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSizeInteger, location_name: 'MaxResults'))
    GetEntitlementsRequest.type = Types::GetEntitlementsRequest
    GetEntitlementsResult.add_member(:entitlements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementList, location_name: 'Entitlements'))
    GetEntitlementsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'NextToken'))
    GetEntitlementsResult.type = Types::GetEntitlementsResult
    InternalServiceErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidParameterException.type = Types::InvalidParameterException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException

    AWSMPEntitlementService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.marketplaceentitlementservice#AWSMPEntitlementService"
      service.name = "AWSMPEntitlementService"
      service.version = "2017-01-11"
      service.traits = {"aws.api#service" => {"sdkId" => "Marketplace Entitlement Service", "arnNamespace" => "aws-marketplace", "cloudFormationName" => "MarketplaceEntitlementService", "cloudTrailEventSource" => "marketplaceentitlementservice.amazonaws.com", "docId" => "entitlement.marketplace-2017-01-11", "endpointPrefix" => "entitlement.marketplace"}, "aws.auth#sigv4" => {"name" => "aws-marketplace"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Marketplace Entitlement Service"}
      service.add_operation(:get_entitlements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplaceentitlementservice#GetEntitlements"
        operation.name = "GetEntitlements"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEntitlementsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEntitlementsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetEntitlements.new
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
