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

    AccountScope = Shapes::StringShape.new(name: 'AccountScope')
    AmortizedRecurringFee = Shapes::StringShape.new(name: 'AmortizedRecurringFee')
    AmortizedUpfrontFee = Shapes::StringShape.new(name: 'AmortizedUpfrontFee')
    AttributeType = Shapes::StringShape.new(name: 'AttributeType')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    BillExpirationException = Shapes::StructureShape.new(name: 'BillExpirationException')
    Context = Shapes::StringShape.new(name: 'Context')
    Coverage = Shapes::StructureShape.new(name: 'Coverage')
    CoverageByTime = Shapes::StructureShape.new(name: 'CoverageByTime')
    CoverageHours = Shapes::StructureShape.new(name: 'CoverageHours')
    CoverageHoursPercentage = Shapes::StringShape.new(name: 'CoverageHoursPercentage')
    CoveragesByTime = Shapes::ListShape.new(name: 'CoveragesByTime')
    DataUnavailableException = Shapes::StructureShape.new(name: 'DataUnavailableException')
    DateInterval = Shapes::StructureShape.new(name: 'DateInterval')
    Dimension = Shapes::StringShape.new(name: 'Dimension')
    DimensionValues = Shapes::StructureShape.new(name: 'DimensionValues')
    DimensionValuesWithAttributes = Shapes::StructureShape.new(name: 'DimensionValuesWithAttributes')
    DimensionValuesWithAttributesList = Shapes::ListShape.new(name: 'DimensionValuesWithAttributesList')
    EC2InstanceDetails = Shapes::StructureShape.new(name: 'EC2InstanceDetails')
    EC2Specification = Shapes::StructureShape.new(name: 'EC2Specification')
    ESInstanceDetails = Shapes::StructureShape.new(name: 'ESInstanceDetails')
    ElastiCacheInstanceDetails = Shapes::StructureShape.new(name: 'ElastiCacheInstanceDetails')
    Entity = Shapes::StringShape.new(name: 'Entity')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Estimated = Shapes::BooleanShape.new(name: 'Estimated')
    Expression = Shapes::StructureShape.new(name: 'Expression')
    Expressions = Shapes::ListShape.new(name: 'Expressions')
    GenericBoolean = Shapes::BooleanShape.new(name: 'GenericBoolean')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    GetCostAndUsageRequest = Shapes::StructureShape.new(name: 'GetCostAndUsageRequest')
    GetCostAndUsageResponse = Shapes::StructureShape.new(name: 'GetCostAndUsageResponse')
    GetDimensionValuesRequest = Shapes::StructureShape.new(name: 'GetDimensionValuesRequest')
    GetDimensionValuesResponse = Shapes::StructureShape.new(name: 'GetDimensionValuesResponse')
    GetReservationCoverageRequest = Shapes::StructureShape.new(name: 'GetReservationCoverageRequest')
    GetReservationCoverageResponse = Shapes::StructureShape.new(name: 'GetReservationCoverageResponse')
    GetReservationPurchaseRecommendationRequest = Shapes::StructureShape.new(name: 'GetReservationPurchaseRecommendationRequest')
    GetReservationPurchaseRecommendationResponse = Shapes::StructureShape.new(name: 'GetReservationPurchaseRecommendationResponse')
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
    InstanceDetails = Shapes::StructureShape.new(name: 'InstanceDetails')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    Key = Shapes::StringShape.new(name: 'Key')
    Keys = Shapes::ListShape.new(name: 'Keys')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LookbackPeriodInDays = Shapes::StringShape.new(name: 'LookbackPeriodInDays')
    MetricAmount = Shapes::StringShape.new(name: 'MetricAmount')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricNames = Shapes::ListShape.new(name: 'MetricNames')
    MetricUnit = Shapes::StringShape.new(name: 'MetricUnit')
    MetricValue = Shapes::StructureShape.new(name: 'MetricValue')
    Metrics = Shapes::MapShape.new(name: 'Metrics')
    NetRISavings = Shapes::StringShape.new(name: 'NetRISavings')
    NextPageToken = Shapes::StringShape.new(name: 'NextPageToken')
    NonNegativeInteger = Shapes::IntegerShape.new(name: 'NonNegativeInteger')
    OfferingClass = Shapes::StringShape.new(name: 'OfferingClass')
    OnDemandCostOfRIHoursUsed = Shapes::StringShape.new(name: 'OnDemandCostOfRIHoursUsed')
    OnDemandHours = Shapes::StringShape.new(name: 'OnDemandHours')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    PaymentOption = Shapes::StringShape.new(name: 'PaymentOption')
    PurchasedHours = Shapes::StringShape.new(name: 'PurchasedHours')
    RDSInstanceDetails = Shapes::StructureShape.new(name: 'RDSInstanceDetails')
    RedshiftInstanceDetails = Shapes::StructureShape.new(name: 'RedshiftInstanceDetails')
    RequestChangedException = Shapes::StructureShape.new(name: 'RequestChangedException')
    ReservationAggregates = Shapes::StructureShape.new(name: 'ReservationAggregates')
    ReservationCoverageGroup = Shapes::StructureShape.new(name: 'ReservationCoverageGroup')
    ReservationCoverageGroups = Shapes::ListShape.new(name: 'ReservationCoverageGroups')
    ReservationGroupKey = Shapes::StringShape.new(name: 'ReservationGroupKey')
    ReservationGroupValue = Shapes::StringShape.new(name: 'ReservationGroupValue')
    ReservationPurchaseRecommendation = Shapes::StructureShape.new(name: 'ReservationPurchaseRecommendation')
    ReservationPurchaseRecommendationDetail = Shapes::StructureShape.new(name: 'ReservationPurchaseRecommendationDetail')
    ReservationPurchaseRecommendationDetails = Shapes::ListShape.new(name: 'ReservationPurchaseRecommendationDetails')
    ReservationPurchaseRecommendationMetadata = Shapes::StructureShape.new(name: 'ReservationPurchaseRecommendationMetadata')
    ReservationPurchaseRecommendationSummary = Shapes::StructureShape.new(name: 'ReservationPurchaseRecommendationSummary')
    ReservationPurchaseRecommendations = Shapes::ListShape.new(name: 'ReservationPurchaseRecommendations')
    ReservationUtilizationGroup = Shapes::StructureShape.new(name: 'ReservationUtilizationGroup')
    ReservationUtilizationGroups = Shapes::ListShape.new(name: 'ReservationUtilizationGroups')
    ReservedHours = Shapes::StringShape.new(name: 'ReservedHours')
    ResultByTime = Shapes::StructureShape.new(name: 'ResultByTime')
    ResultsByTime = Shapes::ListShape.new(name: 'ResultsByTime')
    SearchString = Shapes::StringShape.new(name: 'SearchString')
    ServiceSpecification = Shapes::StructureShape.new(name: 'ServiceSpecification')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValues = Shapes::StructureShape.new(name: 'TagValues')
    TermInYears = Shapes::StringShape.new(name: 'TermInYears')
    TotalActualHours = Shapes::StringShape.new(name: 'TotalActualHours')
    TotalAmortizedFee = Shapes::StringShape.new(name: 'TotalAmortizedFee')
    TotalPotentialRISavings = Shapes::StringShape.new(name: 'TotalPotentialRISavings')
    TotalRunningHours = Shapes::StringShape.new(name: 'TotalRunningHours')
    UnusedHours = Shapes::StringShape.new(name: 'UnusedHours')
    UtilizationByTime = Shapes::StructureShape.new(name: 'UtilizationByTime')
    UtilizationPercentage = Shapes::StringShape.new(name: 'UtilizationPercentage')
    UtilizationsByTime = Shapes::ListShape.new(name: 'UtilizationsByTime')
    Value = Shapes::StringShape.new(name: 'Value')
    Values = Shapes::ListShape.new(name: 'Values')
    YearMonthDay = Shapes::StringShape.new(name: 'YearMonthDay')

    Attributes.key = Shapes::ShapeRef.new(shape: AttributeType)
    Attributes.value = Shapes::ShapeRef.new(shape: AttributeValue)

    Coverage.add_member(:coverage_hours, Shapes::ShapeRef.new(shape: CoverageHours, location_name: "CoverageHours"))
    Coverage.struct_class = Types::Coverage

    CoverageByTime.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, location_name: "TimePeriod"))
    CoverageByTime.add_member(:groups, Shapes::ShapeRef.new(shape: ReservationCoverageGroups, location_name: "Groups"))
    CoverageByTime.add_member(:total, Shapes::ShapeRef.new(shape: Coverage, location_name: "Total"))
    CoverageByTime.struct_class = Types::CoverageByTime

    CoverageHours.add_member(:on_demand_hours, Shapes::ShapeRef.new(shape: OnDemandHours, location_name: "OnDemandHours"))
    CoverageHours.add_member(:reserved_hours, Shapes::ShapeRef.new(shape: ReservedHours, location_name: "ReservedHours"))
    CoverageHours.add_member(:total_running_hours, Shapes::ShapeRef.new(shape: TotalRunningHours, location_name: "TotalRunningHours"))
    CoverageHours.add_member(:coverage_hours_percentage, Shapes::ShapeRef.new(shape: CoverageHoursPercentage, location_name: "CoverageHoursPercentage"))
    CoverageHours.struct_class = Types::CoverageHours

    CoveragesByTime.member = Shapes::ShapeRef.new(shape: CoverageByTime)

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

    EC2InstanceDetails.add_member(:family, Shapes::ShapeRef.new(shape: GenericString, location_name: "Family"))
    EC2InstanceDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "InstanceType"))
    EC2InstanceDetails.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    EC2InstanceDetails.add_member(:availability_zone, Shapes::ShapeRef.new(shape: GenericString, location_name: "AvailabilityZone"))
    EC2InstanceDetails.add_member(:platform, Shapes::ShapeRef.new(shape: GenericString, location_name: "Platform"))
    EC2InstanceDetails.add_member(:tenancy, Shapes::ShapeRef.new(shape: GenericString, location_name: "Tenancy"))
    EC2InstanceDetails.add_member(:current_generation, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "CurrentGeneration"))
    EC2InstanceDetails.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "SizeFlexEligible"))
    EC2InstanceDetails.struct_class = Types::EC2InstanceDetails

    EC2Specification.add_member(:offering_class, Shapes::ShapeRef.new(shape: OfferingClass, location_name: "OfferingClass"))
    EC2Specification.struct_class = Types::EC2Specification

    ESInstanceDetails.add_member(:instance_class, Shapes::ShapeRef.new(shape: GenericString, location_name: "InstanceClass"))
    ESInstanceDetails.add_member(:instance_size, Shapes::ShapeRef.new(shape: GenericString, location_name: "InstanceSize"))
    ESInstanceDetails.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    ESInstanceDetails.add_member(:current_generation, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "CurrentGeneration"))
    ESInstanceDetails.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "SizeFlexEligible"))
    ESInstanceDetails.struct_class = Types::ESInstanceDetails

    ElastiCacheInstanceDetails.add_member(:family, Shapes::ShapeRef.new(shape: GenericString, location_name: "Family"))
    ElastiCacheInstanceDetails.add_member(:node_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "NodeType"))
    ElastiCacheInstanceDetails.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    ElastiCacheInstanceDetails.add_member(:product_description, Shapes::ShapeRef.new(shape: GenericString, location_name: "ProductDescription"))
    ElastiCacheInstanceDetails.add_member(:current_generation, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "CurrentGeneration"))
    ElastiCacheInstanceDetails.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "SizeFlexEligible"))
    ElastiCacheInstanceDetails.struct_class = Types::ElastiCacheInstanceDetails

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

    GetReservationCoverageRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetReservationCoverageRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "GroupBy"))
    GetReservationCoverageRequest.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, location_name: "Granularity"))
    GetReservationCoverageRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetReservationCoverageRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetReservationCoverageRequest.struct_class = Types::GetReservationCoverageRequest

    GetReservationCoverageResponse.add_member(:coverages_by_time, Shapes::ShapeRef.new(shape: CoveragesByTime, required: true, location_name: "CoveragesByTime"))
    GetReservationCoverageResponse.add_member(:total, Shapes::ShapeRef.new(shape: Coverage, location_name: "Total"))
    GetReservationCoverageResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetReservationCoverageResponse.struct_class = Types::GetReservationCoverageResponse

    GetReservationPurchaseRecommendationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "AccountId"))
    GetReservationPurchaseRecommendationRequest.add_member(:service, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Service"))
    GetReservationPurchaseRecommendationRequest.add_member(:account_scope, Shapes::ShapeRef.new(shape: AccountScope, location_name: "AccountScope"))
    GetReservationPurchaseRecommendationRequest.add_member(:lookback_period_in_days, Shapes::ShapeRef.new(shape: LookbackPeriodInDays, location_name: "LookbackPeriodInDays"))
    GetReservationPurchaseRecommendationRequest.add_member(:term_in_years, Shapes::ShapeRef.new(shape: TermInYears, location_name: "TermInYears"))
    GetReservationPurchaseRecommendationRequest.add_member(:payment_option, Shapes::ShapeRef.new(shape: PaymentOption, location_name: "PaymentOption"))
    GetReservationPurchaseRecommendationRequest.add_member(:service_specification, Shapes::ShapeRef.new(shape: ServiceSpecification, location_name: "ServiceSpecification"))
    GetReservationPurchaseRecommendationRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "PageSize"))
    GetReservationPurchaseRecommendationRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetReservationPurchaseRecommendationRequest.struct_class = Types::GetReservationPurchaseRecommendationRequest

    GetReservationPurchaseRecommendationResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendationMetadata, location_name: "Metadata"))
    GetReservationPurchaseRecommendationResponse.add_member(:recommendations, Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendations, location_name: "Recommendations"))
    GetReservationPurchaseRecommendationResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetReservationPurchaseRecommendationResponse.struct_class = Types::GetReservationPurchaseRecommendationResponse

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

    InstanceDetails.add_member(:ec2_instance_details, Shapes::ShapeRef.new(shape: EC2InstanceDetails, location_name: "EC2InstanceDetails"))
    InstanceDetails.add_member(:rds_instance_details, Shapes::ShapeRef.new(shape: RDSInstanceDetails, location_name: "RDSInstanceDetails"))
    InstanceDetails.add_member(:redshift_instance_details, Shapes::ShapeRef.new(shape: RedshiftInstanceDetails, location_name: "RedshiftInstanceDetails"))
    InstanceDetails.add_member(:elasticache_instance_details, Shapes::ShapeRef.new(shape: ElastiCacheInstanceDetails, location_name: "ElastiCacheInstanceDetails"))
    InstanceDetails.add_member(:es_instance_details, Shapes::ShapeRef.new(shape: ESInstanceDetails, location_name: "ESInstanceDetails"))
    InstanceDetails.struct_class = Types::InstanceDetails

    Keys.member = Shapes::ShapeRef.new(shape: Key)

    MetricNames.member = Shapes::ShapeRef.new(shape: MetricName)

    MetricValue.add_member(:amount, Shapes::ShapeRef.new(shape: MetricAmount, location_name: "Amount"))
    MetricValue.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, location_name: "Unit"))
    MetricValue.struct_class = Types::MetricValue

    Metrics.key = Shapes::ShapeRef.new(shape: MetricName)
    Metrics.value = Shapes::ShapeRef.new(shape: MetricValue)

    RDSInstanceDetails.add_member(:family, Shapes::ShapeRef.new(shape: GenericString, location_name: "Family"))
    RDSInstanceDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "InstanceType"))
    RDSInstanceDetails.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    RDSInstanceDetails.add_member(:database_engine, Shapes::ShapeRef.new(shape: GenericString, location_name: "DatabaseEngine"))
    RDSInstanceDetails.add_member(:database_edition, Shapes::ShapeRef.new(shape: GenericString, location_name: "DatabaseEdition"))
    RDSInstanceDetails.add_member(:deployment_option, Shapes::ShapeRef.new(shape: GenericString, location_name: "DeploymentOption"))
    RDSInstanceDetails.add_member(:license_model, Shapes::ShapeRef.new(shape: GenericString, location_name: "LicenseModel"))
    RDSInstanceDetails.add_member(:current_generation, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "CurrentGeneration"))
    RDSInstanceDetails.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "SizeFlexEligible"))
    RDSInstanceDetails.struct_class = Types::RDSInstanceDetails

    RedshiftInstanceDetails.add_member(:family, Shapes::ShapeRef.new(shape: GenericString, location_name: "Family"))
    RedshiftInstanceDetails.add_member(:node_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "NodeType"))
    RedshiftInstanceDetails.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    RedshiftInstanceDetails.add_member(:current_generation, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "CurrentGeneration"))
    RedshiftInstanceDetails.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "SizeFlexEligible"))
    RedshiftInstanceDetails.struct_class = Types::RedshiftInstanceDetails

    ReservationAggregates.add_member(:utilization_percentage, Shapes::ShapeRef.new(shape: UtilizationPercentage, location_name: "UtilizationPercentage"))
    ReservationAggregates.add_member(:purchased_hours, Shapes::ShapeRef.new(shape: PurchasedHours, location_name: "PurchasedHours"))
    ReservationAggregates.add_member(:total_actual_hours, Shapes::ShapeRef.new(shape: TotalActualHours, location_name: "TotalActualHours"))
    ReservationAggregates.add_member(:unused_hours, Shapes::ShapeRef.new(shape: UnusedHours, location_name: "UnusedHours"))
    ReservationAggregates.add_member(:on_demand_cost_of_ri_hours_used, Shapes::ShapeRef.new(shape: OnDemandCostOfRIHoursUsed, location_name: "OnDemandCostOfRIHoursUsed"))
    ReservationAggregates.add_member(:net_ri_savings, Shapes::ShapeRef.new(shape: NetRISavings, location_name: "NetRISavings"))
    ReservationAggregates.add_member(:total_potential_ri_savings, Shapes::ShapeRef.new(shape: TotalPotentialRISavings, location_name: "TotalPotentialRISavings"))
    ReservationAggregates.add_member(:amortized_upfront_fee, Shapes::ShapeRef.new(shape: AmortizedUpfrontFee, location_name: "AmortizedUpfrontFee"))
    ReservationAggregates.add_member(:amortized_recurring_fee, Shapes::ShapeRef.new(shape: AmortizedRecurringFee, location_name: "AmortizedRecurringFee"))
    ReservationAggregates.add_member(:total_amortized_fee, Shapes::ShapeRef.new(shape: TotalAmortizedFee, location_name: "TotalAmortizedFee"))
    ReservationAggregates.struct_class = Types::ReservationAggregates

    ReservationCoverageGroup.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    ReservationCoverageGroup.add_member(:coverage, Shapes::ShapeRef.new(shape: Coverage, location_name: "Coverage"))
    ReservationCoverageGroup.struct_class = Types::ReservationCoverageGroup

    ReservationCoverageGroups.member = Shapes::ShapeRef.new(shape: ReservationCoverageGroup)

    ReservationPurchaseRecommendation.add_member(:account_scope, Shapes::ShapeRef.new(shape: AccountScope, location_name: "AccountScope"))
    ReservationPurchaseRecommendation.add_member(:lookback_period_in_days, Shapes::ShapeRef.new(shape: LookbackPeriodInDays, location_name: "LookbackPeriodInDays"))
    ReservationPurchaseRecommendation.add_member(:term_in_years, Shapes::ShapeRef.new(shape: TermInYears, location_name: "TermInYears"))
    ReservationPurchaseRecommendation.add_member(:payment_option, Shapes::ShapeRef.new(shape: PaymentOption, location_name: "PaymentOption"))
    ReservationPurchaseRecommendation.add_member(:service_specification, Shapes::ShapeRef.new(shape: ServiceSpecification, location_name: "ServiceSpecification"))
    ReservationPurchaseRecommendation.add_member(:recommendation_details, Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendationDetails, location_name: "RecommendationDetails"))
    ReservationPurchaseRecommendation.add_member(:recommendation_summary, Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendationSummary, location_name: "RecommendationSummary"))
    ReservationPurchaseRecommendation.struct_class = Types::ReservationPurchaseRecommendation

    ReservationPurchaseRecommendationDetail.add_member(:instance_details, Shapes::ShapeRef.new(shape: InstanceDetails, location_name: "InstanceDetails"))
    ReservationPurchaseRecommendationDetail.add_member(:recommended_number_of_instances_to_purchase, Shapes::ShapeRef.new(shape: GenericString, location_name: "RecommendedNumberOfInstancesToPurchase"))
    ReservationPurchaseRecommendationDetail.add_member(:recommended_normalized_units_to_purchase, Shapes::ShapeRef.new(shape: GenericString, location_name: "RecommendedNormalizedUnitsToPurchase"))
    ReservationPurchaseRecommendationDetail.add_member(:minimum_number_of_instances_used_per_hour, Shapes::ShapeRef.new(shape: GenericString, location_name: "MinimumNumberOfInstancesUsedPerHour"))
    ReservationPurchaseRecommendationDetail.add_member(:minimum_normalized_units_used_per_hour, Shapes::ShapeRef.new(shape: GenericString, location_name: "MinimumNormalizedUnitsUsedPerHour"))
    ReservationPurchaseRecommendationDetail.add_member(:maximum_number_of_instances_used_per_hour, Shapes::ShapeRef.new(shape: GenericString, location_name: "MaximumNumberOfInstancesUsedPerHour"))
    ReservationPurchaseRecommendationDetail.add_member(:maximum_normalized_units_used_per_hour, Shapes::ShapeRef.new(shape: GenericString, location_name: "MaximumNormalizedUnitsUsedPerHour"))
    ReservationPurchaseRecommendationDetail.add_member(:average_number_of_instances_used_per_hour, Shapes::ShapeRef.new(shape: GenericString, location_name: "AverageNumberOfInstancesUsedPerHour"))
    ReservationPurchaseRecommendationDetail.add_member(:average_normalized_units_used_per_hour, Shapes::ShapeRef.new(shape: GenericString, location_name: "AverageNormalizedUnitsUsedPerHour"))
    ReservationPurchaseRecommendationDetail.add_member(:average_utilization, Shapes::ShapeRef.new(shape: GenericString, location_name: "AverageUtilization"))
    ReservationPurchaseRecommendationDetail.add_member(:estimated_break_even_in_months, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedBreakEvenInMonths"))
    ReservationPurchaseRecommendationDetail.add_member(:currency_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrencyCode"))
    ReservationPurchaseRecommendationDetail.add_member(:estimated_monthly_savings_amount, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedMonthlySavingsAmount"))
    ReservationPurchaseRecommendationDetail.add_member(:estimated_monthly_savings_percentage, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedMonthlySavingsPercentage"))
    ReservationPurchaseRecommendationDetail.add_member(:estimated_monthly_on_demand_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedMonthlyOnDemandCost"))
    ReservationPurchaseRecommendationDetail.add_member(:estimated_reservation_cost_for_lookback_period, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedReservationCostForLookbackPeriod"))
    ReservationPurchaseRecommendationDetail.add_member(:upfront_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "UpfrontCost"))
    ReservationPurchaseRecommendationDetail.add_member(:recurring_standard_monthly_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "RecurringStandardMonthlyCost"))
    ReservationPurchaseRecommendationDetail.struct_class = Types::ReservationPurchaseRecommendationDetail

    ReservationPurchaseRecommendationDetails.member = Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendationDetail)

    ReservationPurchaseRecommendationMetadata.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "RecommendationId"))
    ReservationPurchaseRecommendationMetadata.add_member(:generation_timestamp, Shapes::ShapeRef.new(shape: GenericString, location_name: "GenerationTimestamp"))
    ReservationPurchaseRecommendationMetadata.struct_class = Types::ReservationPurchaseRecommendationMetadata

    ReservationPurchaseRecommendationSummary.add_member(:total_estimated_monthly_savings_amount, Shapes::ShapeRef.new(shape: GenericString, location_name: "TotalEstimatedMonthlySavingsAmount"))
    ReservationPurchaseRecommendationSummary.add_member(:total_estimated_monthly_savings_percentage, Shapes::ShapeRef.new(shape: GenericString, location_name: "TotalEstimatedMonthlySavingsPercentage"))
    ReservationPurchaseRecommendationSummary.add_member(:currency_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrencyCode"))
    ReservationPurchaseRecommendationSummary.struct_class = Types::ReservationPurchaseRecommendationSummary

    ReservationPurchaseRecommendations.member = Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendation)

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

    ServiceSpecification.add_member(:ec2_specification, Shapes::ShapeRef.new(shape: EC2Specification, location_name: "EC2Specification"))
    ServiceSpecification.struct_class = Types::ServiceSpecification

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
        "apiVersion" => "2017-10-25",
        "endpointPrefix" => "ce",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "AWS Cost Explorer",
        "serviceFullName" => "AWS Cost Explorer Service",
        "serviceId" => "Cost Explorer",
        "signatureVersion" => "v4",
        "signingName" => "ce",
        "targetPrefix" => "AWSInsightsIndexService",
        "uid" => "ce-2017-10-25",
      }

      api.add_operation(:get_cost_and_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCostAndUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCostAndUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCostAndUsageResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BillExpirationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: RequestChangedException)
      end)

      api.add_operation(:get_dimension_values, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDimensionValues"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDimensionValuesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDimensionValuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BillExpirationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: RequestChangedException)
      end)

      api.add_operation(:get_reservation_coverage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReservationCoverage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetReservationCoverageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReservationCoverageResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:get_reservation_purchase_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReservationPurchaseRecommendation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetReservationPurchaseRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReservationPurchaseRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:get_reservation_utilization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReservationUtilization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetReservationUtilizationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReservationUtilizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:get_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BillExpirationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: RequestChangedException)
      end)
    end

  end
end
