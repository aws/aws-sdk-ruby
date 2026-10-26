# frozen_string_literal: true

# This is generated code!

module Aws::Forecastquery
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecastquery#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):forecast:.*:.*:.+$"})
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecastquery#AttributeName", name: "AttributeName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\_\\-]+$"})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecastquery#AttributeValue", name: "AttributeValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DataPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecastquery#DataPoint", name: "DataPoint")
    DateTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecastquery#DateTime", name: "DateTime")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.forecastquery#Double", name: "Double")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecastquery#ErrorMessage", name: "ErrorMessage")
    Filters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.forecastquery#Filters", name: "Filters", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Forecast = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecastquery#Forecast", name: "Forecast")
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecastquery#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecastquery#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecastquery#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    LongArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecastquery#LongArn", name: "LongArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):forecast:.*:.*:.+$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecastquery#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}})
    Predictions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.forecastquery#Predictions", name: "Predictions")
    QueryForecastRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecastquery#QueryForecastRequest", name: "QueryForecastRequest")
    QueryForecastResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecastquery#QueryForecastResponse", name: "QueryForecastResponse")
    QueryWhatIfForecastRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecastquery#QueryWhatIfForecastRequest", name: "QueryWhatIfForecastRequest")
    QueryWhatIfForecastResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecastquery#QueryWhatIfForecastResponse", name: "QueryWhatIfForecastResponse")
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecastquery#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.forecastquery#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Statistic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecastquery#Statistic", name: "Statistic", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    TimeSeries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.forecastquery#TimeSeries", name: "TimeSeries")
    Timestamp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.forecastquery#Timestamp", name: "Timestamp")

    DataPoint.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    DataPoint.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "Value"))
    DataPoint.type = Types::DataPoint
    Filters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    Filters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    Forecast.add_member(:predictions, ::Smithy::Schema::Shapes::MemberShape.new(target: Predictions, name: "Predictions"))
    Forecast.type = Types::Forecast
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidInputException.type = Types::InvalidInputException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    Predictions.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistic, name: "key"))
    Predictions.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeSeries, name: "value"))
    QueryForecastRequest.add_member(:forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ForecastArn", traits: {"smithy.api#required" => {}}))
    QueryForecastRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartDate"))
    QueryForecastRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndDate"))
    QueryForecastRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters", traits: {"smithy.api#required" => {}}))
    QueryForecastRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    QueryForecastRequest.type = Types::QueryForecastRequest
    QueryForecastResponse.add_member(:forecast, ::Smithy::Schema::Shapes::MemberShape.new(target: Forecast, name: "Forecast"))
    QueryForecastResponse.type = Types::QueryForecastResponse
    QueryWhatIfForecastRequest.add_member(:what_if_forecast_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LongArn, name: "WhatIfForecastArn", traits: {"smithy.api#required" => {}}))
    QueryWhatIfForecastRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartDate"))
    QueryWhatIfForecastRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndDate"))
    QueryWhatIfForecastRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "Filters", traits: {"smithy.api#required" => {}}))
    QueryWhatIfForecastRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    QueryWhatIfForecastRequest.type = Types::QueryWhatIfForecastRequest
    QueryWhatIfForecastResponse.add_member(:forecast, ::Smithy::Schema::Shapes::MemberShape.new(target: Forecast, name: "Forecast"))
    QueryWhatIfForecastResponse.type = Types::QueryWhatIfForecastResponse
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    TimeSeries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataPoint, name: "member"))

    AmazonForecastRuntime = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.forecastquery#AmazonForecastRuntime"
      service.name = "AmazonForecastRuntime"
      service.version = "2018-06-26"
      service.traits = {"aws.api#service" => {"sdkId" => "forecastquery", "arnNamespace" => "forecast", "cloudFormationName" => "Forecastquery", "cloudTrailEventSource" => "forecastquery.amazonaws.com", "endpointPrefix" => "forecastquery"}, "aws.auth#sigv4" => {"name" => "forecast"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Forecast Query Service", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://forecastquery-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://forecastquery-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://forecastquery.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://forecastquery.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:query_forecast, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecastquery#QueryForecast"
        operation.name = "QueryForecast"
        operation.input = QueryForecastRequest
        operation.output = QueryForecastResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:query_what_if_forecast, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.forecastquery#QueryWhatIfForecast"
        operation.name = "QueryWhatIfForecast"
        operation.input = QueryWhatIfForecastRequest
        operation.output = QueryWhatIfForecastResponse
        operation.errors << InvalidInputException
        operation.errors << InvalidNextTokenException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
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
