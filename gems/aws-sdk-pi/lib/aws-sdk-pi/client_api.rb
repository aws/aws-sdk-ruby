# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PI
  # @api private
  module ClientApi

    include Seahorse::Model

    DataPoint = Shapes::StructureShape.new(name: 'DataPoint')
    DataPointsList = Shapes::ListShape.new(name: 'DataPointsList')
    DescribeDimensionKeysRequest = Shapes::StructureShape.new(name: 'DescribeDimensionKeysRequest')
    DescribeDimensionKeysResponse = Shapes::StructureShape.new(name: 'DescribeDimensionKeysResponse')
    DimensionGroup = Shapes::StructureShape.new(name: 'DimensionGroup')
    DimensionKeyDescription = Shapes::StructureShape.new(name: 'DimensionKeyDescription')
    DimensionKeyDescriptionList = Shapes::ListShape.new(name: 'DimensionKeyDescriptionList')
    DimensionMap = Shapes::MapShape.new(name: 'DimensionMap')
    Double = Shapes::FloatShape.new(name: 'Double')
    GetResourceMetricsRequest = Shapes::StructureShape.new(name: 'GetResourceMetricsRequest')
    GetResourceMetricsResponse = Shapes::StructureShape.new(name: 'GetResourceMetricsResponse')
    ISOTimestamp = Shapes::TimestampShape.new(name: 'ISOTimestamp')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServiceError = Shapes::StructureShape.new(name: 'InternalServiceError')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    Limit = Shapes::IntegerShape.new(name: 'Limit')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetricKeyDataPoints = Shapes::StructureShape.new(name: 'MetricKeyDataPoints')
    MetricKeyDataPointsList = Shapes::ListShape.new(name: 'MetricKeyDataPointsList')
    MetricQuery = Shapes::StructureShape.new(name: 'MetricQuery')
    MetricQueryFilterMap = Shapes::MapShape.new(name: 'MetricQueryFilterMap')
    MetricQueryList = Shapes::ListShape.new(name: 'MetricQueryList')
    MetricValuesList = Shapes::ListShape.new(name: 'MetricValuesList')
    NotAuthorizedException = Shapes::StructureShape.new(name: 'NotAuthorizedException')
    ResponsePartitionKey = Shapes::StructureShape.new(name: 'ResponsePartitionKey')
    ResponsePartitionKeyList = Shapes::ListShape.new(name: 'ResponsePartitionKeyList')
    ResponseResourceMetricKey = Shapes::StructureShape.new(name: 'ResponseResourceMetricKey')
    ServiceType = Shapes::StringShape.new(name: 'ServiceType')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')

    DataPoint.add_member(:timestamp, Shapes::ShapeRef.new(shape: ISOTimestamp, required: true, location_name: "Timestamp"))
    DataPoint.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "Value"))
    DataPoint.struct_class = Types::DataPoint

    DataPointsList.member = Shapes::ShapeRef.new(shape: DataPoint)

    DescribeDimensionKeysRequest.add_member(:service_type, Shapes::ShapeRef.new(shape: ServiceType, required: true, location_name: "ServiceType"))
    DescribeDimensionKeysRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Identifier"))
    DescribeDimensionKeysRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: ISOTimestamp, required: true, location_name: "StartTime"))
    DescribeDimensionKeysRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: ISOTimestamp, required: true, location_name: "EndTime"))
    DescribeDimensionKeysRequest.add_member(:metric, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Metric"))
    DescribeDimensionKeysRequest.add_member(:period_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "PeriodInSeconds"))
    DescribeDimensionKeysRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: DimensionGroup, required: true, location_name: "GroupBy"))
    DescribeDimensionKeysRequest.add_member(:partition_by, Shapes::ShapeRef.new(shape: DimensionGroup, location_name: "PartitionBy"))
    DescribeDimensionKeysRequest.add_member(:filter, Shapes::ShapeRef.new(shape: MetricQueryFilterMap, location_name: "Filter"))
    DescribeDimensionKeysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeDimensionKeysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeDimensionKeysRequest.struct_class = Types::DescribeDimensionKeysRequest

    DescribeDimensionKeysResponse.add_member(:aligned_start_time, Shapes::ShapeRef.new(shape: ISOTimestamp, location_name: "AlignedStartTime"))
    DescribeDimensionKeysResponse.add_member(:aligned_end_time, Shapes::ShapeRef.new(shape: ISOTimestamp, location_name: "AlignedEndTime"))
    DescribeDimensionKeysResponse.add_member(:partition_keys, Shapes::ShapeRef.new(shape: ResponsePartitionKeyList, location_name: "PartitionKeys"))
    DescribeDimensionKeysResponse.add_member(:keys, Shapes::ShapeRef.new(shape: DimensionKeyDescriptionList, location_name: "Keys"))
    DescribeDimensionKeysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeDimensionKeysResponse.struct_class = Types::DescribeDimensionKeysResponse

    DimensionGroup.add_member(:group, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Group"))
    DimensionGroup.add_member(:dimensions, Shapes::ShapeRef.new(shape: StringList, location_name: "Dimensions"))
    DimensionGroup.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DimensionGroup.struct_class = Types::DimensionGroup

    DimensionKeyDescription.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionMap, location_name: "Dimensions"))
    DimensionKeyDescription.add_member(:total, Shapes::ShapeRef.new(shape: Double, location_name: "Total"))
    DimensionKeyDescription.add_member(:partitions, Shapes::ShapeRef.new(shape: MetricValuesList, location_name: "Partitions"))
    DimensionKeyDescription.struct_class = Types::DimensionKeyDescription

    DimensionKeyDescriptionList.member = Shapes::ShapeRef.new(shape: DimensionKeyDescription)

    DimensionMap.key = Shapes::ShapeRef.new(shape: String)
    DimensionMap.value = Shapes::ShapeRef.new(shape: String)

    GetResourceMetricsRequest.add_member(:service_type, Shapes::ShapeRef.new(shape: ServiceType, required: true, location_name: "ServiceType"))
    GetResourceMetricsRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Identifier"))
    GetResourceMetricsRequest.add_member(:metric_queries, Shapes::ShapeRef.new(shape: MetricQueryList, required: true, location_name: "MetricQueries"))
    GetResourceMetricsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: ISOTimestamp, required: true, location_name: "StartTime"))
    GetResourceMetricsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: ISOTimestamp, required: true, location_name: "EndTime"))
    GetResourceMetricsRequest.add_member(:period_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "PeriodInSeconds"))
    GetResourceMetricsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetResourceMetricsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetResourceMetricsRequest.struct_class = Types::GetResourceMetricsRequest

    GetResourceMetricsResponse.add_member(:aligned_start_time, Shapes::ShapeRef.new(shape: ISOTimestamp, location_name: "AlignedStartTime"))
    GetResourceMetricsResponse.add_member(:aligned_end_time, Shapes::ShapeRef.new(shape: ISOTimestamp, location_name: "AlignedEndTime"))
    GetResourceMetricsResponse.add_member(:identifier, Shapes::ShapeRef.new(shape: String, location_name: "Identifier"))
    GetResourceMetricsResponse.add_member(:metric_list, Shapes::ShapeRef.new(shape: MetricKeyDataPointsList, location_name: "MetricList"))
    GetResourceMetricsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetResourceMetricsResponse.struct_class = Types::GetResourceMetricsResponse

    MetricKeyDataPoints.add_member(:key, Shapes::ShapeRef.new(shape: ResponseResourceMetricKey, location_name: "Key"))
    MetricKeyDataPoints.add_member(:data_points, Shapes::ShapeRef.new(shape: DataPointsList, location_name: "DataPoints"))
    MetricKeyDataPoints.struct_class = Types::MetricKeyDataPoints

    MetricKeyDataPointsList.member = Shapes::ShapeRef.new(shape: MetricKeyDataPoints)

    MetricQuery.add_member(:metric, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Metric"))
    MetricQuery.add_member(:group_by, Shapes::ShapeRef.new(shape: DimensionGroup, location_name: "GroupBy"))
    MetricQuery.add_member(:filter, Shapes::ShapeRef.new(shape: MetricQueryFilterMap, location_name: "Filter"))
    MetricQuery.struct_class = Types::MetricQuery

    MetricQueryFilterMap.key = Shapes::ShapeRef.new(shape: String)
    MetricQueryFilterMap.value = Shapes::ShapeRef.new(shape: String)

    MetricQueryList.member = Shapes::ShapeRef.new(shape: MetricQuery)

    MetricValuesList.member = Shapes::ShapeRef.new(shape: Double)

    ResponsePartitionKey.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionMap, required: true, location_name: "Dimensions"))
    ResponsePartitionKey.struct_class = Types::ResponsePartitionKey

    ResponsePartitionKeyList.member = Shapes::ShapeRef.new(shape: ResponsePartitionKey)

    ResponseResourceMetricKey.add_member(:metric, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Metric"))
    ResponseResourceMetricKey.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionMap, location_name: "Dimensions"))
    ResponseResourceMetricKey.struct_class = Types::ResponseResourceMetricKey

    StringList.member = Shapes::ShapeRef.new(shape: String)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-02-27"

      api.metadata = {
        "apiVersion" => "2018-02-27",
        "endpointPrefix" => "pi",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "AWS PI",
        "serviceFullName" => "AWS Performance Insights",
        "serviceId" => "PI",
        "signatureVersion" => "v4",
        "signingName" => "pi",
        "targetPrefix" => "PerformanceInsightsv20180227",
        "uid" => "pi-2018-02-27",
      }

      api.add_operation(:describe_dimension_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDimensionKeys"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDimensionKeysRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDimensionKeysResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
      end)

      api.add_operation(:get_resource_metrics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceMetrics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourceMetricsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceMetricsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
      end)
    end

  end
end
