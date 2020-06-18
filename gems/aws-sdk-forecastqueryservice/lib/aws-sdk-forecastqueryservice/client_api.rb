# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ForecastQueryService
  # @api private
  module ClientApi

    include Seahorse::Model

    Arn = Shapes::StringShape.new(name: 'Arn')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    DataPoint = Shapes::StructureShape.new(name: 'DataPoint')
    DateTime = Shapes::StringShape.new(name: 'DateTime')
    Double = Shapes::FloatShape.new(name: 'Double')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Filters = Shapes::MapShape.new(name: 'Filters')
    Forecast = Shapes::StructureShape.new(name: 'Forecast')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Predictions = Shapes::MapShape.new(name: 'Predictions')
    QueryForecastRequest = Shapes::StructureShape.new(name: 'QueryForecastRequest')
    QueryForecastResponse = Shapes::StructureShape.new(name: 'QueryForecastResponse')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Statistic = Shapes::StringShape.new(name: 'Statistic')
    TimeSeries = Shapes::ListShape.new(name: 'TimeSeries')
    Timestamp = Shapes::StringShape.new(name: 'Timestamp')

    DataPoint.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    DataPoint.add_member(:value, Shapes::ShapeRef.new(shape: Double, location_name: "Value"))
    DataPoint.struct_class = Types::DataPoint

    Filters.key = Shapes::ShapeRef.new(shape: AttributeName)
    Filters.value = Shapes::ShapeRef.new(shape: AttributeValue)

    Forecast.add_member(:predictions, Shapes::ShapeRef.new(shape: Predictions, location_name: "Predictions"))
    Forecast.struct_class = Types::Forecast

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    Predictions.key = Shapes::ShapeRef.new(shape: Statistic)
    Predictions.value = Shapes::ShapeRef.new(shape: TimeSeries)

    QueryForecastRequest.add_member(:forecast_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ForecastArn"))
    QueryForecastRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartDate"))
    QueryForecastRequest.add_member(:end_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndDate"))
    QueryForecastRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, required: true, location_name: "Filters"))
    QueryForecastRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    QueryForecastRequest.struct_class = Types::QueryForecastRequest

    QueryForecastResponse.add_member(:forecast, Shapes::ShapeRef.new(shape: Forecast, location_name: "Forecast"))
    QueryForecastResponse.struct_class = Types::QueryForecastResponse

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    TimeSeries.member = Shapes::ShapeRef.new(shape: DataPoint)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-06-26"

      api.metadata = {
        "apiVersion" => "2018-06-26",
        "endpointPrefix" => "forecastquery",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Forecast Query Service",
        "serviceId" => "forecastquery",
        "signatureVersion" => "v4",
        "signingName" => "forecast",
        "targetPrefix" => "AmazonForecastRuntime",
        "uid" => "forecastquery-2018-06-26",
      }

      api.add_operation(:query_forecast, Seahorse::Model::Operation.new.tap do |o|
        o.name = "QueryForecast"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: QueryForecastRequest)
        o.output = Shapes::ShapeRef.new(shape: QueryForecastResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)
    end

  end
end
