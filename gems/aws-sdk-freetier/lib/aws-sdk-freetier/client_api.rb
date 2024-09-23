# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::FreeTier
  # @api private
  module ClientApi

    include Seahorse::Model

    Dimension = Shapes::StringShape.new(name: 'Dimension')
    DimensionValues = Shapes::StructureShape.new(name: 'DimensionValues')
    Expression = Shapes::StructureShape.new(name: 'Expression')
    Expressions = Shapes::ListShape.new(name: 'Expressions')
    FreeTierUsage = Shapes::StructureShape.new(name: 'FreeTierUsage')
    FreeTierUsages = Shapes::ListShape.new(name: 'FreeTierUsages')
    GenericDouble = Shapes::FloatShape.new(name: 'GenericDouble')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    GetFreeTierUsageRequest = Shapes::StructureShape.new(name: 'GetFreeTierUsageRequest')
    GetFreeTierUsageResponse = Shapes::StructureShape.new(name: 'GetFreeTierUsageResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    MatchOption = Shapes::StringShape.new(name: 'MatchOption')
    MatchOptions = Shapes::ListShape.new(name: 'MatchOptions')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextPageToken = Shapes::StringShape.new(name: 'NextPageToken')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Value = Shapes::StringShape.new(name: 'Value')
    Values = Shapes::ListShape.new(name: 'Values')

    DimensionValues.add_member(:key, Shapes::ShapeRef.new(shape: Dimension, required: true, location_name: "Key"))
    DimensionValues.add_member(:match_options, Shapes::ShapeRef.new(shape: MatchOptions, required: true, location_name: "MatchOptions"))
    DimensionValues.add_member(:values, Shapes::ShapeRef.new(shape: Values, required: true, location_name: "Values"))
    DimensionValues.struct_class = Types::DimensionValues

    Expression.add_member(:and, Shapes::ShapeRef.new(shape: Expressions, location_name: "And"))
    Expression.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionValues, location_name: "Dimensions"))
    Expression.add_member(:not, Shapes::ShapeRef.new(shape: Expression, location_name: "Not"))
    Expression.add_member(:or, Shapes::ShapeRef.new(shape: Expressions, location_name: "Or"))
    Expression.struct_class = Types::Expression

    Expressions.member = Shapes::ShapeRef.new(shape: Expression)

    FreeTierUsage.add_member(:actual_usage_amount, Shapes::ShapeRef.new(shape: GenericDouble, location_name: "actualUsageAmount"))
    FreeTierUsage.add_member(:description, Shapes::ShapeRef.new(shape: GenericString, location_name: "description"))
    FreeTierUsage.add_member(:forecasted_usage_amount, Shapes::ShapeRef.new(shape: GenericDouble, location_name: "forecastedUsageAmount"))
    FreeTierUsage.add_member(:free_tier_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "freeTierType"))
    FreeTierUsage.add_member(:limit, Shapes::ShapeRef.new(shape: GenericDouble, location_name: "limit"))
    FreeTierUsage.add_member(:operation, Shapes::ShapeRef.new(shape: GenericString, location_name: "operation"))
    FreeTierUsage.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "region"))
    FreeTierUsage.add_member(:service, Shapes::ShapeRef.new(shape: GenericString, location_name: "service"))
    FreeTierUsage.add_member(:unit, Shapes::ShapeRef.new(shape: GenericString, location_name: "unit"))
    FreeTierUsage.add_member(:usage_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "usageType"))
    FreeTierUsage.struct_class = Types::FreeTierUsage

    FreeTierUsages.member = Shapes::ShapeRef.new(shape: FreeTierUsage)

    GetFreeTierUsageRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "filter"))
    GetFreeTierUsageRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetFreeTierUsageRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    GetFreeTierUsageRequest.struct_class = Types::GetFreeTierUsageRequest

    GetFreeTierUsageResponse.add_member(:free_tier_usages, Shapes::ShapeRef.new(shape: FreeTierUsages, required: true, location_name: "freeTierUsages"))
    GetFreeTierUsageResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "nextToken"))
    GetFreeTierUsageResponse.struct_class = Types::GetFreeTierUsageResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    MatchOptions.member = Shapes::ShapeRef.new(shape: MatchOption)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    Values.member = Shapes::ShapeRef.new(shape: Value)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-09-07"

      api.metadata = {
        "apiVersion" => "2023-09-07",
        "endpointPrefix" => "freetier",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceFullName" => "AWS Free Tier",
        "serviceId" => "FreeTier",
        "signatureVersion" => "v4",
        "signingName" => "freetier",
        "targetPrefix" => "AWSFreeTierService",
        "uid" => "freetier-2023-09-07",
      }

      api.add_operation(:get_free_tier_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFreeTierUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFreeTierUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFreeTierUsageResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
