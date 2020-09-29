# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TimestreamQuery
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    CancelQueryRequest = Shapes::StructureShape.new(name: 'CancelQueryRequest')
    CancelQueryResponse = Shapes::StructureShape.new(name: 'CancelQueryResponse')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ColumnInfo = Shapes::StructureShape.new(name: 'ColumnInfo')
    ColumnInfoList = Shapes::ListShape.new(name: 'ColumnInfoList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Datum = Shapes::StructureShape.new(name: 'Datum')
    DatumList = Shapes::ListShape.new(name: 'DatumList')
    DescribeEndpointsRequest = Shapes::StructureShape.new(name: 'DescribeEndpointsRequest')
    DescribeEndpointsResponse = Shapes::StructureShape.new(name: 'DescribeEndpointsResponse')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    Endpoints = Shapes::ListShape.new(name: 'Endpoints')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidEndpointException = Shapes::StructureShape.new(name: 'InvalidEndpointException')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxQueryResults = Shapes::IntegerShape.new(name: 'MaxQueryResults')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    QueryExecutionException = Shapes::StructureShape.new(name: 'QueryExecutionException')
    QueryId = Shapes::StringShape.new(name: 'QueryId')
    QueryRequest = Shapes::StructureShape.new(name: 'QueryRequest')
    QueryResponse = Shapes::StructureShape.new(name: 'QueryResponse')
    QueryString = Shapes::StringShape.new(name: 'QueryString')
    Row = Shapes::StructureShape.new(name: 'Row')
    RowList = Shapes::ListShape.new(name: 'RowList')
    ScalarType = Shapes::StringShape.new(name: 'ScalarType')
    ScalarValue = Shapes::StringShape.new(name: 'ScalarValue')
    ServiceErrorMessage = Shapes::StringShape.new(name: 'ServiceErrorMessage')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeSeriesDataPoint = Shapes::StructureShape.new(name: 'TimeSeriesDataPoint')
    TimeSeriesDataPointList = Shapes::ListShape.new(name: 'TimeSeriesDataPointList')
    Timestamp = Shapes::StringShape.new(name: 'Timestamp')
    Type = Shapes::StructureShape.new(name: 'Type')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ServiceErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CancelQueryRequest.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "QueryId"))
    CancelQueryRequest.struct_class = Types::CancelQueryRequest

    CancelQueryResponse.add_member(:cancellation_message, Shapes::ShapeRef.new(shape: String, location_name: "CancellationMessage"))
    CancelQueryResponse.struct_class = Types::CancelQueryResponse

    ColumnInfo.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ColumnInfo.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    ColumnInfo.struct_class = Types::ColumnInfo

    ColumnInfoList.member = Shapes::ShapeRef.new(shape: ColumnInfo)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    Datum.add_member(:scalar_value, Shapes::ShapeRef.new(shape: ScalarValue, location_name: "ScalarValue"))
    Datum.add_member(:time_series_value, Shapes::ShapeRef.new(shape: TimeSeriesDataPointList, location_name: "TimeSeriesValue"))
    Datum.add_member(:array_value, Shapes::ShapeRef.new(shape: DatumList, location_name: "ArrayValue"))
    Datum.add_member(:row_value, Shapes::ShapeRef.new(shape: Row, location_name: "RowValue"))
    Datum.add_member(:null_value, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "NullValue"))
    Datum.struct_class = Types::Datum

    DatumList.member = Shapes::ShapeRef.new(shape: Datum)

    DescribeEndpointsRequest.struct_class = Types::DescribeEndpointsRequest

    DescribeEndpointsResponse.add_member(:endpoints, Shapes::ShapeRef.new(shape: Endpoints, required: true, location_name: "Endpoints"))
    DescribeEndpointsResponse.struct_class = Types::DescribeEndpointsResponse

    Endpoint.add_member(:address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Address"))
    Endpoint.add_member(:cache_period_in_minutes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "CachePeriodInMinutes"))
    Endpoint.struct_class = Types::Endpoint

    Endpoints.member = Shapes::ShapeRef.new(shape: Endpoint)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidEndpointException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidEndpointException.struct_class = Types::InvalidEndpointException

    QueryExecutionException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    QueryExecutionException.struct_class = Types::QueryExecutionException

    QueryRequest.add_member(:query_string, Shapes::ShapeRef.new(shape: QueryString, required: true, location_name: "QueryString"))
    QueryRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    QueryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    QueryRequest.add_member(:max_rows, Shapes::ShapeRef.new(shape: MaxQueryResults, location_name: "MaxRows"))
    QueryRequest.struct_class = Types::QueryRequest

    QueryResponse.add_member(:query_id, Shapes::ShapeRef.new(shape: QueryId, required: true, location_name: "QueryId"))
    QueryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    QueryResponse.add_member(:rows, Shapes::ShapeRef.new(shape: RowList, required: true, location_name: "Rows"))
    QueryResponse.add_member(:column_info, Shapes::ShapeRef.new(shape: ColumnInfoList, required: true, location_name: "ColumnInfo"))
    QueryResponse.struct_class = Types::QueryResponse

    Row.add_member(:data, Shapes::ShapeRef.new(shape: DatumList, required: true, location_name: "Data"))
    Row.struct_class = Types::Row

    RowList.member = Shapes::ShapeRef.new(shape: Row)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeSeriesDataPoint.add_member(:time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Time"))
    TimeSeriesDataPoint.add_member(:value, Shapes::ShapeRef.new(shape: Datum, required: true, location_name: "Value"))
    TimeSeriesDataPoint.struct_class = Types::TimeSeriesDataPoint

    TimeSeriesDataPointList.member = Shapes::ShapeRef.new(shape: TimeSeriesDataPoint)

    Type.add_member(:scalar_type, Shapes::ShapeRef.new(shape: ScalarType, location_name: "ScalarType"))
    Type.add_member(:array_column_info, Shapes::ShapeRef.new(shape: ColumnInfo, location_name: "ArrayColumnInfo"))
    Type.add_member(:time_series_measure_value_column_info, Shapes::ShapeRef.new(shape: ColumnInfo, location_name: "TimeSeriesMeasureValueColumnInfo"))
    Type.add_member(:row_column_info, Shapes::ShapeRef.new(shape: ColumnInfoList, location_name: "RowColumnInfo"))
    Type.struct_class = Types::Type

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-01"

      api.metadata = {
        "apiVersion" => "2018-11-01",
        "endpointPrefix" => "query.timestream",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceAbbreviation" => "Timestream Query",
        "serviceFullName" => "Amazon Timestream Query",
        "serviceId" => "Timestream Query",
        "signatureVersion" => "v4",
        "signingName" => "timestream",
        "targetPrefix" => "Timestream_20181101",
        "uid" => "timestream-query-2018-11-01",
      }
      api.endpoint_operation = :describe_endpoints
      api.require_endpoint_discovery = true

      api.add_operation(:cancel_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelQuery"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: CancelQueryRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelQueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
      end)

      api.add_operation(:describe_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_operation = true
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Query"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.endpoint_discovery = {
          "required" => true,
        }
        o.input = Shapes::ShapeRef.new(shape: QueryRequest)
        o.output = Shapes::ShapeRef.new(shape: QueryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: QueryExecutionException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEndpointException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_rows",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
