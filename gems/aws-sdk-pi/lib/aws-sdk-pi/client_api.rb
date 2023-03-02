# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PI
  # @api private
  module ClientApi

    include Seahorse::Model

    AdditionalMetricsList = Shapes::ListShape.new(name: 'AdditionalMetricsList')
    AdditionalMetricsMap = Shapes::MapShape.new(name: 'AdditionalMetricsMap')
    DataPoint = Shapes::StructureShape.new(name: 'DataPoint')
    DataPointsList = Shapes::ListShape.new(name: 'DataPointsList')
    DescribeDimensionKeysRequest = Shapes::StructureShape.new(name: 'DescribeDimensionKeysRequest')
    DescribeDimensionKeysResponse = Shapes::StructureShape.new(name: 'DescribeDimensionKeysResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DetailStatus = Shapes::StringShape.new(name: 'DetailStatus')
    DimensionDetail = Shapes::StructureShape.new(name: 'DimensionDetail')
    DimensionDetailList = Shapes::ListShape.new(name: 'DimensionDetailList')
    DimensionGroup = Shapes::StructureShape.new(name: 'DimensionGroup')
    DimensionGroupDetail = Shapes::StructureShape.new(name: 'DimensionGroupDetail')
    DimensionGroupDetailList = Shapes::ListShape.new(name: 'DimensionGroupDetailList')
    DimensionKeyDescription = Shapes::StructureShape.new(name: 'DimensionKeyDescription')
    DimensionKeyDescriptionList = Shapes::ListShape.new(name: 'DimensionKeyDescriptionList')
    DimensionKeyDetail = Shapes::StructureShape.new(name: 'DimensionKeyDetail')
    DimensionKeyDetailList = Shapes::ListShape.new(name: 'DimensionKeyDetailList')
    DimensionMap = Shapes::MapShape.new(name: 'DimensionMap')
    DimensionsMetricList = Shapes::ListShape.new(name: 'DimensionsMetricList')
    Double = Shapes::FloatShape.new(name: 'Double')
    ErrorString = Shapes::StringShape.new(name: 'ErrorString')
    FeatureMetadata = Shapes::StructureShape.new(name: 'FeatureMetadata')
    FeatureMetadataMap = Shapes::MapShape.new(name: 'FeatureMetadataMap')
    FeatureStatus = Shapes::StringShape.new(name: 'FeatureStatus')
    GetDimensionKeyDetailsRequest = Shapes::StructureShape.new(name: 'GetDimensionKeyDetailsRequest')
    GetDimensionKeyDetailsResponse = Shapes::StructureShape.new(name: 'GetDimensionKeyDetailsResponse')
    GetResourceMetadataRequest = Shapes::StructureShape.new(name: 'GetResourceMetadataRequest')
    GetResourceMetadataResponse = Shapes::StructureShape.new(name: 'GetResourceMetadataResponse')
    GetResourceMetricsRequest = Shapes::StructureShape.new(name: 'GetResourceMetricsRequest')
    GetResourceMetricsResponse = Shapes::StructureShape.new(name: 'GetResourceMetricsResponse')
    ISOTimestamp = Shapes::TimestampShape.new(name: 'ISOTimestamp')
    IdentifierString = Shapes::StringShape.new(name: 'IdentifierString')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServiceError = Shapes::StructureShape.new(name: 'InternalServiceError')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    Limit = Shapes::IntegerShape.new(name: 'Limit')
    ListAvailableResourceDimensionsRequest = Shapes::StructureShape.new(name: 'ListAvailableResourceDimensionsRequest')
    ListAvailableResourceDimensionsResponse = Shapes::StructureShape.new(name: 'ListAvailableResourceDimensionsResponse')
    ListAvailableResourceMetricsRequest = Shapes::StructureShape.new(name: 'ListAvailableResourceMetricsRequest')
    ListAvailableResourceMetricsResponse = Shapes::StructureShape.new(name: 'ListAvailableResourceMetricsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetricDimensionGroups = Shapes::StructureShape.new(name: 'MetricDimensionGroups')
    MetricDimensionsList = Shapes::ListShape.new(name: 'MetricDimensionsList')
    MetricKeyDataPoints = Shapes::StructureShape.new(name: 'MetricKeyDataPoints')
    MetricKeyDataPointsList = Shapes::ListShape.new(name: 'MetricKeyDataPointsList')
    MetricQuery = Shapes::StructureShape.new(name: 'MetricQuery')
    MetricQueryFilterMap = Shapes::MapShape.new(name: 'MetricQueryFilterMap')
    MetricQueryList = Shapes::ListShape.new(name: 'MetricQueryList')
    MetricTypeList = Shapes::ListShape.new(name: 'MetricTypeList')
    MetricValuesList = Shapes::ListShape.new(name: 'MetricValuesList')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotAuthorizedException = Shapes::StructureShape.new(name: 'NotAuthorizedException')
    PeriodAlignment = Shapes::StringShape.new(name: 'PeriodAlignment')
    RequestString = Shapes::StringShape.new(name: 'RequestString')
    RequestStringList = Shapes::ListShape.new(name: 'RequestStringList')
    RequestedDimensionList = Shapes::ListShape.new(name: 'RequestedDimensionList')
    ResponsePartitionKey = Shapes::StructureShape.new(name: 'ResponsePartitionKey')
    ResponsePartitionKeyList = Shapes::ListShape.new(name: 'ResponsePartitionKeyList')
    ResponseResourceMetric = Shapes::StructureShape.new(name: 'ResponseResourceMetric')
    ResponseResourceMetricKey = Shapes::StructureShape.new(name: 'ResponseResourceMetricKey')
    ResponseResourceMetricList = Shapes::ListShape.new(name: 'ResponseResourceMetricList')
    ServiceType = Shapes::StringShape.new(name: 'ServiceType')
    String = Shapes::StringShape.new(name: 'String')

    AdditionalMetricsList.member = Shapes::ShapeRef.new(shape: RequestString)

    AdditionalMetricsMap.key = Shapes::ShapeRef.new(shape: RequestString)
    AdditionalMetricsMap.value = Shapes::ShapeRef.new(shape: Double)

    DataPoint.add_member(:timestamp, Shapes::ShapeRef.new(shape: ISOTimestamp, required: true, location_name: "Timestamp"))
    DataPoint.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "Value"))
    DataPoint.struct_class = Types::DataPoint

    DataPointsList.member = Shapes::ShapeRef.new(shape: DataPoint)

    DescribeDimensionKeysRequest.add_member(:service_type, Shapes::ShapeRef.new(shape: ServiceType, required: true, location_name: "ServiceType"))
    DescribeDimensionKeysRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: RequestString, required: true, location_name: "Identifier"))
    DescribeDimensionKeysRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: ISOTimestamp, required: true, location_name: "StartTime"))
    DescribeDimensionKeysRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: ISOTimestamp, required: true, location_name: "EndTime"))
    DescribeDimensionKeysRequest.add_member(:metric, Shapes::ShapeRef.new(shape: RequestString, required: true, location_name: "Metric"))
    DescribeDimensionKeysRequest.add_member(:period_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "PeriodInSeconds"))
    DescribeDimensionKeysRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: DimensionGroup, required: true, location_name: "GroupBy"))
    DescribeDimensionKeysRequest.add_member(:additional_metrics, Shapes::ShapeRef.new(shape: AdditionalMetricsList, location_name: "AdditionalMetrics"))
    DescribeDimensionKeysRequest.add_member(:partition_by, Shapes::ShapeRef.new(shape: DimensionGroup, location_name: "PartitionBy"))
    DescribeDimensionKeysRequest.add_member(:filter, Shapes::ShapeRef.new(shape: MetricQueryFilterMap, location_name: "Filter"))
    DescribeDimensionKeysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeDimensionKeysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDimensionKeysRequest.struct_class = Types::DescribeDimensionKeysRequest

    DescribeDimensionKeysResponse.add_member(:aligned_start_time, Shapes::ShapeRef.new(shape: ISOTimestamp, location_name: "AlignedStartTime"))
    DescribeDimensionKeysResponse.add_member(:aligned_end_time, Shapes::ShapeRef.new(shape: ISOTimestamp, location_name: "AlignedEndTime"))
    DescribeDimensionKeysResponse.add_member(:partition_keys, Shapes::ShapeRef.new(shape: ResponsePartitionKeyList, location_name: "PartitionKeys"))
    DescribeDimensionKeysResponse.add_member(:keys, Shapes::ShapeRef.new(shape: DimensionKeyDescriptionList, location_name: "Keys"))
    DescribeDimensionKeysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDimensionKeysResponse.struct_class = Types::DescribeDimensionKeysResponse

    DimensionDetail.add_member(:identifier, Shapes::ShapeRef.new(shape: String, location_name: "Identifier"))
    DimensionDetail.struct_class = Types::DimensionDetail

    DimensionDetailList.member = Shapes::ShapeRef.new(shape: DimensionDetail)

    DimensionGroup.add_member(:group, Shapes::ShapeRef.new(shape: RequestString, required: true, location_name: "Group"))
    DimensionGroup.add_member(:dimensions, Shapes::ShapeRef.new(shape: RequestStringList, location_name: "Dimensions"))
    DimensionGroup.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DimensionGroup.struct_class = Types::DimensionGroup

    DimensionGroupDetail.add_member(:group, Shapes::ShapeRef.new(shape: String, location_name: "Group"))
    DimensionGroupDetail.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionDetailList, location_name: "Dimensions"))
    DimensionGroupDetail.struct_class = Types::DimensionGroupDetail

    DimensionGroupDetailList.member = Shapes::ShapeRef.new(shape: DimensionGroupDetail)

    DimensionKeyDescription.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionMap, location_name: "Dimensions"))
    DimensionKeyDescription.add_member(:total, Shapes::ShapeRef.new(shape: Double, location_name: "Total"))
    DimensionKeyDescription.add_member(:additional_metrics, Shapes::ShapeRef.new(shape: AdditionalMetricsMap, location_name: "AdditionalMetrics"))
    DimensionKeyDescription.add_member(:partitions, Shapes::ShapeRef.new(shape: MetricValuesList, location_name: "Partitions"))
    DimensionKeyDescription.struct_class = Types::DimensionKeyDescription

    DimensionKeyDescriptionList.member = Shapes::ShapeRef.new(shape: DimensionKeyDescription)

    DimensionKeyDetail.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    DimensionKeyDetail.add_member(:dimension, Shapes::ShapeRef.new(shape: String, location_name: "Dimension"))
    DimensionKeyDetail.add_member(:status, Shapes::ShapeRef.new(shape: DetailStatus, location_name: "Status"))
    DimensionKeyDetail.struct_class = Types::DimensionKeyDetail

    DimensionKeyDetailList.member = Shapes::ShapeRef.new(shape: DimensionKeyDetail)

    DimensionMap.key = Shapes::ShapeRef.new(shape: RequestString)
    DimensionMap.value = Shapes::ShapeRef.new(shape: RequestString)

    DimensionsMetricList.member = Shapes::ShapeRef.new(shape: RequestString)

    FeatureMetadata.add_member(:status, Shapes::ShapeRef.new(shape: FeatureStatus, location_name: "Status"))
    FeatureMetadata.struct_class = Types::FeatureMetadata

    FeatureMetadataMap.key = Shapes::ShapeRef.new(shape: String)
    FeatureMetadataMap.value = Shapes::ShapeRef.new(shape: FeatureMetadata)

    GetDimensionKeyDetailsRequest.add_member(:service_type, Shapes::ShapeRef.new(shape: ServiceType, required: true, location_name: "ServiceType"))
    GetDimensionKeyDetailsRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: IdentifierString, required: true, location_name: "Identifier"))
    GetDimensionKeyDetailsRequest.add_member(:group, Shapes::ShapeRef.new(shape: RequestString, required: true, location_name: "Group"))
    GetDimensionKeyDetailsRequest.add_member(:group_identifier, Shapes::ShapeRef.new(shape: RequestString, required: true, location_name: "GroupIdentifier"))
    GetDimensionKeyDetailsRequest.add_member(:requested_dimensions, Shapes::ShapeRef.new(shape: RequestedDimensionList, location_name: "RequestedDimensions"))
    GetDimensionKeyDetailsRequest.struct_class = Types::GetDimensionKeyDetailsRequest

    GetDimensionKeyDetailsResponse.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionKeyDetailList, location_name: "Dimensions"))
    GetDimensionKeyDetailsResponse.struct_class = Types::GetDimensionKeyDetailsResponse

    GetResourceMetadataRequest.add_member(:service_type, Shapes::ShapeRef.new(shape: ServiceType, required: true, location_name: "ServiceType"))
    GetResourceMetadataRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: RequestString, required: true, location_name: "Identifier"))
    GetResourceMetadataRequest.struct_class = Types::GetResourceMetadataRequest

    GetResourceMetadataResponse.add_member(:identifier, Shapes::ShapeRef.new(shape: String, location_name: "Identifier"))
    GetResourceMetadataResponse.add_member(:features, Shapes::ShapeRef.new(shape: FeatureMetadataMap, location_name: "Features"))
    GetResourceMetadataResponse.struct_class = Types::GetResourceMetadataResponse

    GetResourceMetricsRequest.add_member(:service_type, Shapes::ShapeRef.new(shape: ServiceType, required: true, location_name: "ServiceType"))
    GetResourceMetricsRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: RequestString, required: true, location_name: "Identifier"))
    GetResourceMetricsRequest.add_member(:metric_queries, Shapes::ShapeRef.new(shape: MetricQueryList, required: true, location_name: "MetricQueries"))
    GetResourceMetricsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: ISOTimestamp, required: true, location_name: "StartTime"))
    GetResourceMetricsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: ISOTimestamp, required: true, location_name: "EndTime"))
    GetResourceMetricsRequest.add_member(:period_in_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "PeriodInSeconds"))
    GetResourceMetricsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetResourceMetricsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetResourceMetricsRequest.add_member(:period_alignment, Shapes::ShapeRef.new(shape: PeriodAlignment, location_name: "PeriodAlignment"))
    GetResourceMetricsRequest.struct_class = Types::GetResourceMetricsRequest

    GetResourceMetricsResponse.add_member(:aligned_start_time, Shapes::ShapeRef.new(shape: ISOTimestamp, location_name: "AlignedStartTime"))
    GetResourceMetricsResponse.add_member(:aligned_end_time, Shapes::ShapeRef.new(shape: ISOTimestamp, location_name: "AlignedEndTime"))
    GetResourceMetricsResponse.add_member(:identifier, Shapes::ShapeRef.new(shape: String, location_name: "Identifier"))
    GetResourceMetricsResponse.add_member(:metric_list, Shapes::ShapeRef.new(shape: MetricKeyDataPointsList, location_name: "MetricList"))
    GetResourceMetricsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetResourceMetricsResponse.struct_class = Types::GetResourceMetricsResponse

    InternalServiceError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorString, location_name: "Message"))
    InternalServiceError.struct_class = Types::InternalServiceError

    InvalidArgumentException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorString, location_name: "Message"))
    InvalidArgumentException.struct_class = Types::InvalidArgumentException

    ListAvailableResourceDimensionsRequest.add_member(:service_type, Shapes::ShapeRef.new(shape: ServiceType, required: true, location_name: "ServiceType"))
    ListAvailableResourceDimensionsRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: RequestString, required: true, location_name: "Identifier"))
    ListAvailableResourceDimensionsRequest.add_member(:metrics, Shapes::ShapeRef.new(shape: DimensionsMetricList, required: true, location_name: "Metrics"))
    ListAvailableResourceDimensionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAvailableResourceDimensionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAvailableResourceDimensionsRequest.struct_class = Types::ListAvailableResourceDimensionsRequest

    ListAvailableResourceDimensionsResponse.add_member(:metric_dimensions, Shapes::ShapeRef.new(shape: MetricDimensionsList, location_name: "MetricDimensions"))
    ListAvailableResourceDimensionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAvailableResourceDimensionsResponse.struct_class = Types::ListAvailableResourceDimensionsResponse

    ListAvailableResourceMetricsRequest.add_member(:service_type, Shapes::ShapeRef.new(shape: ServiceType, required: true, location_name: "ServiceType"))
    ListAvailableResourceMetricsRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: RequestString, required: true, location_name: "Identifier"))
    ListAvailableResourceMetricsRequest.add_member(:metric_types, Shapes::ShapeRef.new(shape: MetricTypeList, required: true, location_name: "MetricTypes"))
    ListAvailableResourceMetricsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAvailableResourceMetricsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAvailableResourceMetricsRequest.struct_class = Types::ListAvailableResourceMetricsRequest

    ListAvailableResourceMetricsResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: ResponseResourceMetricList, location_name: "Metrics"))
    ListAvailableResourceMetricsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAvailableResourceMetricsResponse.struct_class = Types::ListAvailableResourceMetricsResponse

    MetricDimensionGroups.add_member(:metric, Shapes::ShapeRef.new(shape: String, location_name: "Metric"))
    MetricDimensionGroups.add_member(:groups, Shapes::ShapeRef.new(shape: DimensionGroupDetailList, location_name: "Groups"))
    MetricDimensionGroups.struct_class = Types::MetricDimensionGroups

    MetricDimensionsList.member = Shapes::ShapeRef.new(shape: MetricDimensionGroups)

    MetricKeyDataPoints.add_member(:key, Shapes::ShapeRef.new(shape: ResponseResourceMetricKey, location_name: "Key"))
    MetricKeyDataPoints.add_member(:data_points, Shapes::ShapeRef.new(shape: DataPointsList, location_name: "DataPoints"))
    MetricKeyDataPoints.struct_class = Types::MetricKeyDataPoints

    MetricKeyDataPointsList.member = Shapes::ShapeRef.new(shape: MetricKeyDataPoints)

    MetricQuery.add_member(:metric, Shapes::ShapeRef.new(shape: RequestString, required: true, location_name: "Metric"))
    MetricQuery.add_member(:group_by, Shapes::ShapeRef.new(shape: DimensionGroup, location_name: "GroupBy"))
    MetricQuery.add_member(:filter, Shapes::ShapeRef.new(shape: MetricQueryFilterMap, location_name: "Filter"))
    MetricQuery.struct_class = Types::MetricQuery

    MetricQueryFilterMap.key = Shapes::ShapeRef.new(shape: RequestString)
    MetricQueryFilterMap.value = Shapes::ShapeRef.new(shape: RequestString)

    MetricQueryList.member = Shapes::ShapeRef.new(shape: MetricQuery)

    MetricTypeList.member = Shapes::ShapeRef.new(shape: RequestString)

    MetricValuesList.member = Shapes::ShapeRef.new(shape: Double)

    NotAuthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorString, location_name: "Message"))
    NotAuthorizedException.struct_class = Types::NotAuthorizedException

    RequestStringList.member = Shapes::ShapeRef.new(shape: RequestString)

    RequestedDimensionList.member = Shapes::ShapeRef.new(shape: RequestString)

    ResponsePartitionKey.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionMap, required: true, location_name: "Dimensions"))
    ResponsePartitionKey.struct_class = Types::ResponsePartitionKey

    ResponsePartitionKeyList.member = Shapes::ShapeRef.new(shape: ResponsePartitionKey)

    ResponseResourceMetric.add_member(:metric, Shapes::ShapeRef.new(shape: String, location_name: "Metric"))
    ResponseResourceMetric.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ResponseResourceMetric.add_member(:unit, Shapes::ShapeRef.new(shape: String, location_name: "Unit"))
    ResponseResourceMetric.struct_class = Types::ResponseResourceMetric

    ResponseResourceMetricKey.add_member(:metric, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Metric"))
    ResponseResourceMetricKey.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionMap, location_name: "Dimensions"))
    ResponseResourceMetricKey.struct_class = Types::ResponseResourceMetricKey

    ResponseResourceMetricList.member = Shapes::ShapeRef.new(shape: ResponseResourceMetric)


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
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_dimension_key_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDimensionKeyDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDimensionKeyDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDimensionKeyDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
      end)

      api.add_operation(:get_resource_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourceMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceMetadataResponse)
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
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_available_resource_dimensions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAvailableResourceDimensions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAvailableResourceDimensionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAvailableResourceDimensionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_available_resource_metrics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAvailableResourceMetrics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAvailableResourceMetricsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAvailableResourceMetricsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
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
