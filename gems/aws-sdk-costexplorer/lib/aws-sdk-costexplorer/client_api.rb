# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CostExplorer
  # @api private
  module ClientApi

    include Seahorse::Model

    AttributeType = Shapes::StringShape.new(name: 'AttributeType')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    Context = Shapes::StringShape.new(name: 'Context')
    DateInterval = Shapes::StructureShape.new(name: 'DateInterval')
    Dimension = Shapes::StringShape.new(name: 'Dimension')
    DimensionValues = Shapes::StructureShape.new(name: 'DimensionValues')
    DimensionValuesWithAttributes = Shapes::StructureShape.new(name: 'DimensionValuesWithAttributes')
    DimensionValuesWithAttributesList = Shapes::ListShape.new(name: 'DimensionValuesWithAttributesList')
    Entity = Shapes::StringShape.new(name: 'Entity')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Estimated = Shapes::BooleanShape.new(name: 'Estimated')
    Expression = Shapes::StructureShape.new(name: 'Expression')
    Expressions = Shapes::ListShape.new(name: 'Expressions')
    GetCostAndUsageRequest = Shapes::StructureShape.new(name: 'GetCostAndUsageRequest')
    GetCostAndUsageResponse = Shapes::StructureShape.new(name: 'GetCostAndUsageResponse')
    GetDimensionValuesRequest = Shapes::StructureShape.new(name: 'GetDimensionValuesRequest')
    GetDimensionValuesResponse = Shapes::StructureShape.new(name: 'GetDimensionValuesResponse')
    GetReservationUtilizationRequest = Shapes::StructureShape.new(name: 'GetReservationUtilizationRequest')
    GetReservationUtilizationResponse = Shapes::StructureShape.new(name: 'GetReservationUtilizationResponse')
    GetTagsRequest = Shapes::StructureShape.new(name: 'GetTagsRequest')
    GetTagsResponse = Shapes::StructureShape.new(name: 'GetTagsResponse')
    Granularity = Shapes::StringShape.new(name: 'Granularity')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupDefinition = Shapes::StructureShape.new(name: 'GroupDefinition')
    GroupDefinitionKey = Shapes::StringShape.new(name: 'GroupDefinitionKey')
    GroupDefinitionType = Shapes::StringShape.new(name: 'GroupDefinitionType')
    GroupDefinitions = Shapes::ListShape.new(name: 'GroupDefinitions')
    Groups = Shapes::ListShape.new(name: 'Groups')
    Key = Shapes::StringShape.new(name: 'Key')
    Keys = Shapes::ListShape.new(name: 'Keys')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    MetricAmount = Shapes::StringShape.new(name: 'MetricAmount')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricNames = Shapes::ListShape.new(name: 'MetricNames')
    MetricUnit = Shapes::StringShape.new(name: 'MetricUnit')
    MetricValue = Shapes::StructureShape.new(name: 'MetricValue')
    Metrics = Shapes::MapShape.new(name: 'Metrics')
    NextPageToken = Shapes::StringShape.new(name: 'NextPageToken')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    PurchasedHours = Shapes::StringShape.new(name: 'PurchasedHours')
    ReservationAggregates = Shapes::StructureShape.new(name: 'ReservationAggregates')
    ReservationGroupKey = Shapes::StringShape.new(name: 'ReservationGroupKey')
    ReservationGroupValue = Shapes::StringShape.new(name: 'ReservationGroupValue')
    ReservationUtilizationGroup = Shapes::StructureShape.new(name: 'ReservationUtilizationGroup')
    ReservationUtilizationGroups = Shapes::ListShape.new(name: 'ReservationUtilizationGroups')
    ResultByTime = Shapes::StructureShape.new(name: 'ResultByTime')
    ResultsByTime = Shapes::ListShape.new(name: 'ResultsByTime')
    SearchString = Shapes::StringShape.new(name: 'SearchString')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValues = Shapes::StructureShape.new(name: 'TagValues')
    TotalActualHours = Shapes::StringShape.new(name: 'TotalActualHours')
    UnusedHours = Shapes::StringShape.new(name: 'UnusedHours')
    UtilizationByTime = Shapes::StructureShape.new(name: 'UtilizationByTime')
    UtilizationPercentage = Shapes::StringShape.new(name: 'UtilizationPercentage')
    UtilizationsByTime = Shapes::ListShape.new(name: 'UtilizationsByTime')
    Value = Shapes::StringShape.new(name: 'Value')
    Values = Shapes::ListShape.new(name: 'Values')
    YearMonthDay = Shapes::StringShape.new(name: 'YearMonthDay')

    Attributes.key = Shapes::ShapeRef.new(shape: AttributeType)
    Attributes.value = Shapes::ShapeRef.new(shape: AttributeValue)

    DateInterval.add_member(:start, Shapes::ShapeRef.new(shape: YearMonthDay, required: true, location_name: "Start"))
    DateInterval.add_member(:end, Shapes::ShapeRef.new(shape: YearMonthDay, required: true, location_name: "End"))
    DateInterval.struct_class = Types::DateInterval

    DimensionValues.add_member(:key, Shapes::ShapeRef.new(shape: Dimension, location_name: "Key"))
    DimensionValues.add_member(:values, Shapes::ShapeRef.new(shape: Values, location_name: "Values"))
    DimensionValues.struct_class = Types::DimensionValues

    DimensionValuesWithAttributes.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value"))
    DimensionValuesWithAttributes.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    DimensionValuesWithAttributes.struct_class = Types::DimensionValuesWithAttributes

    DimensionValuesWithAttributesList.member = Shapes::ShapeRef.new(shape: DimensionValuesWithAttributes)

    Expression.add_member(:or, Shapes::ShapeRef.new(shape: Expressions, location_name: "Or"))
    Expression.add_member(:and, Shapes::ShapeRef.new(shape: Expressions, location_name: "And"))
    Expression.add_member(:not, Shapes::ShapeRef.new(shape: Expression, location_name: "Not"))
    Expression.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionValues, location_name: "Dimensions"))
    Expression.add_member(:tags, Shapes::ShapeRef.new(shape: TagValues, location_name: "Tags"))
    Expression.struct_class = Types::Expression

    Expressions.member = Shapes::ShapeRef.new(shape: Expression)

    GetCostAndUsageRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, location_name: "TimePeriod"))
    GetCostAndUsageRequest.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, location_name: "Granularity"))
    GetCostAndUsageRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetCostAndUsageRequest.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricNames, location_name: "Metrics"))
    GetCostAndUsageRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "GroupBy"))
    GetCostAndUsageRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetCostAndUsageRequest.struct_class = Types::GetCostAndUsageRequest

    GetCostAndUsageResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetCostAndUsageResponse.add_member(:group_definitions, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "GroupDefinitions"))
    GetCostAndUsageResponse.add_member(:results_by_time, Shapes::ShapeRef.new(shape: ResultsByTime, location_name: "ResultsByTime"))
    GetCostAndUsageResponse.struct_class = Types::GetCostAndUsageResponse

    GetDimensionValuesRequest.add_member(:search_string, Shapes::ShapeRef.new(shape: SearchString, location_name: "SearchString"))
    GetDimensionValuesRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetDimensionValuesRequest.add_member(:dimension, Shapes::ShapeRef.new(shape: Dimension, required: true, location_name: "Dimension"))
    GetDimensionValuesRequest.add_member(:context, Shapes::ShapeRef.new(shape: Context, location_name: "Context"))
    GetDimensionValuesRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetDimensionValuesRequest.struct_class = Types::GetDimensionValuesRequest

    GetDimensionValuesResponse.add_member(:dimension_values, Shapes::ShapeRef.new(shape: DimensionValuesWithAttributesList, required: true, location_name: "DimensionValues"))
    GetDimensionValuesResponse.add_member(:return_size, Shapes::ShapeRef.new(shape: PageSize, required: true, location_name: "ReturnSize"))
    GetDimensionValuesResponse.add_member(:total_size, Shapes::ShapeRef.new(shape: PageSize, required: true, location_name: "TotalSize"))
    GetDimensionValuesResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetDimensionValuesResponse.struct_class = Types::GetDimensionValuesResponse

    GetReservationUtilizationRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetReservationUtilizationRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "GroupBy"))
    GetReservationUtilizationRequest.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, location_name: "Granularity"))
    GetReservationUtilizationRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetReservationUtilizationRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetReservationUtilizationRequest.struct_class = Types::GetReservationUtilizationRequest

    GetReservationUtilizationResponse.add_member(:utilizations_by_time, Shapes::ShapeRef.new(shape: UtilizationsByTime, required: true, location_name: "UtilizationsByTime"))
    GetReservationUtilizationResponse.add_member(:total, Shapes::ShapeRef.new(shape: ReservationAggregates, location_name: "Total"))
    GetReservationUtilizationResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetReservationUtilizationResponse.struct_class = Types::GetReservationUtilizationResponse

    GetTagsRequest.add_member(:search_string, Shapes::ShapeRef.new(shape: SearchString, location_name: "SearchString"))
    GetTagsRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetTagsRequest.add_member(:tag_key, Shapes::ShapeRef.new(shape: TagKey, location_name: "TagKey"))
    GetTagsRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetTagsRequest.struct_class = Types::GetTagsRequest

    GetTagsResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    GetTagsResponse.add_member(:return_size, Shapes::ShapeRef.new(shape: PageSize, required: true, location_name: "ReturnSize"))
    GetTagsResponse.add_member(:total_size, Shapes::ShapeRef.new(shape: PageSize, required: true, location_name: "TotalSize"))
    GetTagsResponse.struct_class = Types::GetTagsResponse

    Group.add_member(:keys, Shapes::ShapeRef.new(shape: Keys, location_name: "Keys"))
    Group.add_member(:metrics, Shapes::ShapeRef.new(shape: Metrics, location_name: "Metrics"))
    Group.struct_class = Types::Group

    GroupDefinition.add_member(:type, Shapes::ShapeRef.new(shape: GroupDefinitionType, location_name: "Type"))
    GroupDefinition.add_member(:key, Shapes::ShapeRef.new(shape: GroupDefinitionKey, location_name: "Key"))
    GroupDefinition.struct_class = Types::GroupDefinition

    GroupDefinitions.member = Shapes::ShapeRef.new(shape: GroupDefinition)

    Groups.member = Shapes::ShapeRef.new(shape: Group)

    Keys.member = Shapes::ShapeRef.new(shape: Key)

    MetricNames.member = Shapes::ShapeRef.new(shape: MetricName)

    MetricValue.add_member(:amount, Shapes::ShapeRef.new(shape: MetricAmount, location_name: "Amount"))
    MetricValue.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, location_name: "Unit"))
    MetricValue.struct_class = Types::MetricValue

    Metrics.key = Shapes::ShapeRef.new(shape: MetricName)
    Metrics.value = Shapes::ShapeRef.new(shape: MetricValue)

    ReservationAggregates.add_member(:utilization_percentage, Shapes::ShapeRef.new(shape: UtilizationPercentage, location_name: "UtilizationPercentage"))
    ReservationAggregates.add_member(:purchased_hours, Shapes::ShapeRef.new(shape: PurchasedHours, location_name: "PurchasedHours"))
    ReservationAggregates.add_member(:total_actual_hours, Shapes::ShapeRef.new(shape: TotalActualHours, location_name: "TotalActualHours"))
    ReservationAggregates.add_member(:unused_hours, Shapes::ShapeRef.new(shape: UnusedHours, location_name: "UnusedHours"))
    ReservationAggregates.struct_class = Types::ReservationAggregates

    ReservationUtilizationGroup.add_member(:key, Shapes::ShapeRef.new(shape: ReservationGroupKey, location_name: "Key"))
    ReservationUtilizationGroup.add_member(:value, Shapes::ShapeRef.new(shape: ReservationGroupValue, location_name: "Value"))
    ReservationUtilizationGroup.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    ReservationUtilizationGroup.add_member(:utilization, Shapes::ShapeRef.new(shape: ReservationAggregates, location_name: "Utilization"))
    ReservationUtilizationGroup.struct_class = Types::ReservationUtilizationGroup

    ReservationUtilizationGroups.member = Shapes::ShapeRef.new(shape: ReservationUtilizationGroup)

    ResultByTime.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, location_name: "TimePeriod"))
    ResultByTime.add_member(:total, Shapes::ShapeRef.new(shape: Metrics, location_name: "Total"))
    ResultByTime.add_member(:groups, Shapes::ShapeRef.new(shape: Groups, location_name: "Groups"))
    ResultByTime.add_member(:estimated, Shapes::ShapeRef.new(shape: Estimated, location_name: "Estimated"))
    ResultByTime.struct_class = Types::ResultByTime

    ResultsByTime.member = Shapes::ShapeRef.new(shape: ResultByTime)

    TagList.member = Shapes::ShapeRef.new(shape: Entity)

    TagValues.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    TagValues.add_member(:values, Shapes::ShapeRef.new(shape: Values, location_name: "Values"))
    TagValues.struct_class = Types::TagValues

    UtilizationByTime.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, location_name: "TimePeriod"))
    UtilizationByTime.add_member(:groups, Shapes::ShapeRef.new(shape: ReservationUtilizationGroups, location_name: "Groups"))
    UtilizationByTime.add_member(:total, Shapes::ShapeRef.new(shape: ReservationAggregates, location_name: "Total"))
    UtilizationByTime.struct_class = Types::UtilizationByTime

    UtilizationsByTime.member = Shapes::ShapeRef.new(shape: UtilizationByTime)

    Values.member = Shapes::ShapeRef.new(shape: Value)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-10-25"

      api.metadata = {
        "endpointPrefix" => "ce",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Cost Explorer Service",
        "signatureVersion" => "v4",
        "signingName" => "ce",
        "targetPrefix" => "AWSInsightsIndexService",
      }

      api.add_operation(:get_cost_and_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCostAndUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCostAndUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCostAndUsageResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:get_dimension_values, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDimensionValues"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDimensionValuesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDimensionValuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:get_reservation_utilization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReservationUtilization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetReservationUtilizationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReservationUtilizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:get_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)
    end

  end
end
