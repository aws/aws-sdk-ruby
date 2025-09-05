# frozen_string_literal: true

# This is generated code!

module Aws::Forecastquery
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.forecastquery#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):forecast:.*:.*:.+$"})
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.forecastquery#AttributeName', name: 'AttributeName', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\_\\-]+$"})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.forecastquery#AttributeValue', name: 'AttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DataPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.forecastquery#DataPoint', name: 'DataPoint')
    DateTime = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.forecastquery#DateTime', name: 'DateTime')
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.forecastquery#Double', name: 'Double')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.forecastquery#ErrorMessage', name: 'ErrorMessage')
    Filters = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.forecastquery#Filters', name: 'Filters', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Forecast = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.forecastquery#Forecast', name: 'Forecast')
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.forecastquery#InvalidInputException', name: 'InvalidInputException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.forecastquery#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.forecastquery#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    LongArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.forecastquery#LongArn', name: 'LongArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):forecast:.*:.*:.+$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.forecastquery#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}})
    Predictions = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.forecastquery#Predictions', name: 'Predictions')
    QueryForecastRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.forecastquery#QueryForecastRequest', name: 'QueryForecastRequest')
    QueryForecastResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.forecastquery#QueryForecastResponse', name: 'QueryForecastResponse')
    QueryWhatIfForecastRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.forecastquery#QueryWhatIfForecastRequest', name: 'QueryWhatIfForecastRequest')
    QueryWhatIfForecastResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.forecastquery#QueryWhatIfForecastResponse', name: 'QueryWhatIfForecastResponse')
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.forecastquery#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.forecastquery#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Statistic = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.forecastquery#Statistic', name: 'Statistic', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    TimeSeries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.forecastquery#TimeSeries', name: 'TimeSeries')
    Timestamp = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.forecastquery#Timestamp', name: 'Timestamp')

    DataPoint.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Timestamp'))
    DataPoint.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'Value'))
    DataPoint.type = Types::DataPoint
    Filters.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    Filters.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    Forecast.add_member(:predictions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Predictions, location_name: 'Predictions'))
    Forecast.type = Types::Forecast
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidInputException.type = Types::InvalidInputException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    Predictions.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statistic)
    Predictions.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeSeries)
    QueryForecastRequest.add_member(:forecast_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ForecastArn', traits: {"smithy.api#required" => {}}))
    QueryForecastRequest.add_member(:start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartDate'))
    QueryForecastRequest.add_member(:end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EndDate'))
    QueryForecastRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters', traits: {"smithy.api#required" => {}}))
    QueryForecastRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    QueryForecastRequest.type = Types::QueryForecastRequest
    QueryForecastResponse.add_member(:forecast, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Forecast, location_name: 'Forecast'))
    QueryForecastResponse.type = Types::QueryForecastResponse
    QueryWhatIfForecastRequest.add_member(:what_if_forecast_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongArn, location_name: 'WhatIfForecastArn', traits: {"smithy.api#required" => {}}))
    QueryWhatIfForecastRequest.add_member(:start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartDate'))
    QueryWhatIfForecastRequest.add_member(:end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EndDate'))
    QueryWhatIfForecastRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters', traits: {"smithy.api#required" => {}}))
    QueryWhatIfForecastRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    QueryWhatIfForecastRequest.type = Types::QueryWhatIfForecastRequest
    QueryWhatIfForecastResponse.add_member(:forecast, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Forecast, location_name: 'Forecast'))
    QueryWhatIfForecastResponse.type = Types::QueryWhatIfForecastResponse
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    TimeSeries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataPoint)

    AmazonForecastRuntime = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.forecastquery#AmazonForecastRuntime"
      service.name = "AmazonForecastRuntime"
      service.version = "2018-06-26"
      service.traits = {"aws.api#service" => {"sdkId" => "forecastquery", "arnNamespace" => "forecast", "cloudFormationName" => "Forecastquery", "cloudTrailEventSource" => "forecastquery.amazonaws.com", "endpointPrefix" => "forecastquery"}, "aws.auth#sigv4" => {"name" => "forecast"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Forecast Query Service"}
      service.add_operation(:query_forecast, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecastquery#QueryForecast"
        operation.name = "QueryForecast"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryForecastRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryForecastResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:query_what_if_forecast, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecastquery#QueryWhatIfForecast"
        operation.name = "QueryWhatIfForecast"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryWhatIfForecastRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryWhatIfForecastResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
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
