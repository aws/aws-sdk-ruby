# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CostOptimizationHub
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountEnrollmentStatus = Shapes::StructureShape.new(name: 'AccountEnrollmentStatus')
    AccountEnrollmentStatuses = Shapes::ListShape.new(name: 'AccountEnrollmentStatuses')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    ActionType = Shapes::StringShape.new(name: 'ActionType')
    ActionTypeList = Shapes::ListShape.new(name: 'ActionTypeList')
    AllocationStrategy = Shapes::StringShape.new(name: 'AllocationStrategy')
    BlockStoragePerformanceConfiguration = Shapes::StructureShape.new(name: 'BlockStoragePerformanceConfiguration')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ComputeConfiguration = Shapes::StructureShape.new(name: 'ComputeConfiguration')
    ComputeSavingsPlans = Shapes::StructureShape.new(name: 'ComputeSavingsPlans')
    ComputeSavingsPlansConfiguration = Shapes::StructureShape.new(name: 'ComputeSavingsPlansConfiguration')
    Datetime = Shapes::TimestampShape.new(name: 'Datetime')
    DbInstanceConfiguration = Shapes::StructureShape.new(name: 'DbInstanceConfiguration')
    Double = Shapes::FloatShape.new(name: 'Double')
    EbsVolume = Shapes::StructureShape.new(name: 'EbsVolume')
    EbsVolumeConfiguration = Shapes::StructureShape.new(name: 'EbsVolumeConfiguration')
    Ec2AutoScalingGroup = Shapes::StructureShape.new(name: 'Ec2AutoScalingGroup')
    Ec2AutoScalingGroupConfiguration = Shapes::StructureShape.new(name: 'Ec2AutoScalingGroupConfiguration')
    Ec2AutoScalingGroupType = Shapes::StringShape.new(name: 'Ec2AutoScalingGroupType')
    Ec2Instance = Shapes::StructureShape.new(name: 'Ec2Instance')
    Ec2InstanceConfiguration = Shapes::StructureShape.new(name: 'Ec2InstanceConfiguration')
    Ec2InstanceSavingsPlans = Shapes::StructureShape.new(name: 'Ec2InstanceSavingsPlans')
    Ec2InstanceSavingsPlansConfiguration = Shapes::StructureShape.new(name: 'Ec2InstanceSavingsPlansConfiguration')
    Ec2ReservedInstances = Shapes::StructureShape.new(name: 'Ec2ReservedInstances')
    Ec2ReservedInstancesConfiguration = Shapes::StructureShape.new(name: 'Ec2ReservedInstancesConfiguration')
    EcsService = Shapes::StructureShape.new(name: 'EcsService')
    EcsServiceConfiguration = Shapes::StructureShape.new(name: 'EcsServiceConfiguration')
    ElastiCacheReservedInstances = Shapes::StructureShape.new(name: 'ElastiCacheReservedInstances')
    ElastiCacheReservedInstancesConfiguration = Shapes::StructureShape.new(name: 'ElastiCacheReservedInstancesConfiguration')
    EnrollmentStatus = Shapes::StringShape.new(name: 'EnrollmentStatus')
    EstimatedDiscounts = Shapes::StructureShape.new(name: 'EstimatedDiscounts')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    GetPreferencesRequest = Shapes::StructureShape.new(name: 'GetPreferencesRequest')
    GetPreferencesResponse = Shapes::StructureShape.new(name: 'GetPreferencesResponse')
    GetRecommendationRequest = Shapes::StructureShape.new(name: 'GetRecommendationRequest')
    GetRecommendationResponse = Shapes::StructureShape.new(name: 'GetRecommendationResponse')
    ImplementationEffort = Shapes::StringShape.new(name: 'ImplementationEffort')
    ImplementationEffortList = Shapes::ListShape.new(name: 'ImplementationEffortList')
    InstanceConfiguration = Shapes::StructureShape.new(name: 'InstanceConfiguration')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LambdaFunction = Shapes::StructureShape.new(name: 'LambdaFunction')
    LambdaFunctionConfiguration = Shapes::StructureShape.new(name: 'LambdaFunctionConfiguration')
    ListEnrollmentStatusesRequest = Shapes::StructureShape.new(name: 'ListEnrollmentStatusesRequest')
    ListEnrollmentStatusesResponse = Shapes::StructureShape.new(name: 'ListEnrollmentStatusesResponse')
    ListRecommendationSummariesRequest = Shapes::StructureShape.new(name: 'ListRecommendationSummariesRequest')
    ListRecommendationSummariesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRecommendationSummariesRequestMaxResultsInteger')
    ListRecommendationSummariesResponse = Shapes::StructureShape.new(name: 'ListRecommendationSummariesResponse')
    ListRecommendationsRequest = Shapes::StructureShape.new(name: 'ListRecommendationsRequest')
    ListRecommendationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRecommendationsRequestMaxResultsInteger')
    ListRecommendationsResponse = Shapes::StructureShape.new(name: 'ListRecommendationsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemberAccountDiscountVisibility = Shapes::StringShape.new(name: 'MemberAccountDiscountVisibility')
    MixedInstanceConfiguration = Shapes::StructureShape.new(name: 'MixedInstanceConfiguration')
    MixedInstanceConfigurationList = Shapes::ListShape.new(name: 'MixedInstanceConfigurationList')
    OpenSearchReservedInstances = Shapes::StructureShape.new(name: 'OpenSearchReservedInstances')
    OpenSearchReservedInstancesConfiguration = Shapes::StructureShape.new(name: 'OpenSearchReservedInstancesConfiguration')
    Order = Shapes::StringShape.new(name: 'Order')
    OrderBy = Shapes::StructureShape.new(name: 'OrderBy')
    PrimitiveBoolean = Shapes::BooleanShape.new(name: 'PrimitiveBoolean')
    RdsDbInstance = Shapes::StructureShape.new(name: 'RdsDbInstance')
    RdsDbInstanceConfiguration = Shapes::StructureShape.new(name: 'RdsDbInstanceConfiguration')
    RdsDbInstanceStorage = Shapes::StructureShape.new(name: 'RdsDbInstanceStorage')
    RdsDbInstanceStorageConfiguration = Shapes::StructureShape.new(name: 'RdsDbInstanceStorageConfiguration')
    RdsReservedInstances = Shapes::StructureShape.new(name: 'RdsReservedInstances')
    RdsReservedInstancesConfiguration = Shapes::StructureShape.new(name: 'RdsReservedInstancesConfiguration')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    RecommendationIdList = Shapes::ListShape.new(name: 'RecommendationIdList')
    RecommendationList = Shapes::ListShape.new(name: 'RecommendationList')
    RecommendationSummariesList = Shapes::ListShape.new(name: 'RecommendationSummariesList')
    RecommendationSummary = Shapes::StructureShape.new(name: 'RecommendationSummary')
    RedshiftReservedInstances = Shapes::StructureShape.new(name: 'RedshiftReservedInstances')
    RedshiftReservedInstancesConfiguration = Shapes::StructureShape.new(name: 'RedshiftReservedInstancesConfiguration')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    ReservedInstancesCostCalculation = Shapes::StructureShape.new(name: 'ReservedInstancesCostCalculation')
    ReservedInstancesPricing = Shapes::StructureShape.new(name: 'ReservedInstancesPricing')
    ResourceArnList = Shapes::ListShape.new(name: 'ResourceArnList')
    ResourceCostCalculation = Shapes::StructureShape.new(name: 'ResourceCostCalculation')
    ResourceDetails = Shapes::UnionShape.new(name: 'ResourceDetails')
    ResourceIdList = Shapes::ListShape.new(name: 'ResourceIdList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePricing = Shapes::StructureShape.new(name: 'ResourcePricing')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypeList = Shapes::ListShape.new(name: 'ResourceTypeList')
    SageMakerSavingsPlans = Shapes::StructureShape.new(name: 'SageMakerSavingsPlans')
    SageMakerSavingsPlansConfiguration = Shapes::StructureShape.new(name: 'SageMakerSavingsPlansConfiguration')
    SavingsEstimationMode = Shapes::StringShape.new(name: 'SavingsEstimationMode')
    SavingsPlansCostCalculation = Shapes::StructureShape.new(name: 'SavingsPlansCostCalculation')
    SavingsPlansPricing = Shapes::StructureShape.new(name: 'SavingsPlansPricing')
    Source = Shapes::StringShape.new(name: 'Source')
    StorageConfiguration = Shapes::StructureShape.new(name: 'StorageConfiguration')
    String = Shapes::StringShape.new(name: 'String')
    SummaryMetrics = Shapes::StringShape.new(name: 'SummaryMetrics')
    SummaryMetricsList = Shapes::ListShape.new(name: 'SummaryMetricsList')
    SummaryMetricsResult = Shapes::StructureShape.new(name: 'SummaryMetricsResult')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagList = Shapes::ListShape.new(name: 'TagList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UpdateEnrollmentStatusRequest = Shapes::StructureShape.new(name: 'UpdateEnrollmentStatusRequest')
    UpdateEnrollmentStatusResponse = Shapes::StructureShape.new(name: 'UpdateEnrollmentStatusResponse')
    UpdatePreferencesRequest = Shapes::StructureShape.new(name: 'UpdatePreferencesRequest')
    UpdatePreferencesResponse = Shapes::StructureShape.new(name: 'UpdatePreferencesResponse')
    Usage = Shapes::StructureShape.new(name: 'Usage')
    UsageList = Shapes::ListShape.new(name: 'UsageList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionDetail = Shapes::StructureShape.new(name: 'ValidationExceptionDetail')
    ValidationExceptionDetails = Shapes::ListShape.new(name: 'ValidationExceptionDetails')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountEnrollmentStatus.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    AccountEnrollmentStatus.add_member(:status, Shapes::ShapeRef.new(shape: EnrollmentStatus, location_name: "status"))
    AccountEnrollmentStatus.add_member(:last_updated_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedTimestamp"))
    AccountEnrollmentStatus.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTimestamp"))
    AccountEnrollmentStatus.struct_class = Types::AccountEnrollmentStatus

    AccountEnrollmentStatuses.member = Shapes::ShapeRef.new(shape: AccountEnrollmentStatus)

    AccountIdList.member = Shapes::ShapeRef.new(shape: AccountId)

    ActionTypeList.member = Shapes::ShapeRef.new(shape: ActionType)

    BlockStoragePerformanceConfiguration.add_member(:iops, Shapes::ShapeRef.new(shape: Double, location_name: "iops"))
    BlockStoragePerformanceConfiguration.add_member(:throughput, Shapes::ShapeRef.new(shape: Double, location_name: "throughput"))
    BlockStoragePerformanceConfiguration.struct_class = Types::BlockStoragePerformanceConfiguration

    ComputeConfiguration.add_member(:v_cpu, Shapes::ShapeRef.new(shape: Double, location_name: "vCpu"))
    ComputeConfiguration.add_member(:memory_size_in_mb, Shapes::ShapeRef.new(shape: Integer, location_name: "memorySizeInMB"))
    ComputeConfiguration.add_member(:architecture, Shapes::ShapeRef.new(shape: String, location_name: "architecture"))
    ComputeConfiguration.add_member(:platform, Shapes::ShapeRef.new(shape: String, location_name: "platform"))
    ComputeConfiguration.struct_class = Types::ComputeConfiguration

    ComputeSavingsPlans.add_member(:configuration, Shapes::ShapeRef.new(shape: ComputeSavingsPlansConfiguration, location_name: "configuration"))
    ComputeSavingsPlans.add_member(:cost_calculation, Shapes::ShapeRef.new(shape: SavingsPlansCostCalculation, location_name: "costCalculation"))
    ComputeSavingsPlans.struct_class = Types::ComputeSavingsPlans

    ComputeSavingsPlansConfiguration.add_member(:account_scope, Shapes::ShapeRef.new(shape: String, location_name: "accountScope"))
    ComputeSavingsPlansConfiguration.add_member(:term, Shapes::ShapeRef.new(shape: String, location_name: "term"))
    ComputeSavingsPlansConfiguration.add_member(:payment_option, Shapes::ShapeRef.new(shape: String, location_name: "paymentOption"))
    ComputeSavingsPlansConfiguration.add_member(:hourly_commitment, Shapes::ShapeRef.new(shape: String, location_name: "hourlyCommitment"))
    ComputeSavingsPlansConfiguration.struct_class = Types::ComputeSavingsPlansConfiguration

    DbInstanceConfiguration.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "dbInstanceClass"))
    DbInstanceConfiguration.struct_class = Types::DbInstanceConfiguration

    EbsVolume.add_member(:configuration, Shapes::ShapeRef.new(shape: EbsVolumeConfiguration, location_name: "configuration"))
    EbsVolume.add_member(:cost_calculation, Shapes::ShapeRef.new(shape: ResourceCostCalculation, location_name: "costCalculation"))
    EbsVolume.struct_class = Types::EbsVolume

    EbsVolumeConfiguration.add_member(:storage, Shapes::ShapeRef.new(shape: StorageConfiguration, location_name: "storage"))
    EbsVolumeConfiguration.add_member(:performance, Shapes::ShapeRef.new(shape: BlockStoragePerformanceConfiguration, location_name: "performance"))
    EbsVolumeConfiguration.add_member(:attachment_state, Shapes::ShapeRef.new(shape: String, location_name: "attachmentState"))
    EbsVolumeConfiguration.struct_class = Types::EbsVolumeConfiguration

    Ec2AutoScalingGroup.add_member(:configuration, Shapes::ShapeRef.new(shape: Ec2AutoScalingGroupConfiguration, location_name: "configuration"))
    Ec2AutoScalingGroup.add_member(:cost_calculation, Shapes::ShapeRef.new(shape: ResourceCostCalculation, location_name: "costCalculation"))
    Ec2AutoScalingGroup.struct_class = Types::Ec2AutoScalingGroup

    Ec2AutoScalingGroupConfiguration.add_member(:instance, Shapes::ShapeRef.new(shape: InstanceConfiguration, location_name: "instance"))
    Ec2AutoScalingGroupConfiguration.add_member(:mixed_instances, Shapes::ShapeRef.new(shape: MixedInstanceConfigurationList, location_name: "mixedInstances"))
    Ec2AutoScalingGroupConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: Ec2AutoScalingGroupType, location_name: "type"))
    Ec2AutoScalingGroupConfiguration.add_member(:allocation_strategy, Shapes::ShapeRef.new(shape: AllocationStrategy, location_name: "allocationStrategy"))
    Ec2AutoScalingGroupConfiguration.struct_class = Types::Ec2AutoScalingGroupConfiguration

    Ec2Instance.add_member(:configuration, Shapes::ShapeRef.new(shape: Ec2InstanceConfiguration, location_name: "configuration"))
    Ec2Instance.add_member(:cost_calculation, Shapes::ShapeRef.new(shape: ResourceCostCalculation, location_name: "costCalculation"))
    Ec2Instance.struct_class = Types::Ec2Instance

    Ec2InstanceConfiguration.add_member(:instance, Shapes::ShapeRef.new(shape: InstanceConfiguration, location_name: "instance"))
    Ec2InstanceConfiguration.struct_class = Types::Ec2InstanceConfiguration

    Ec2InstanceSavingsPlans.add_member(:configuration, Shapes::ShapeRef.new(shape: Ec2InstanceSavingsPlansConfiguration, location_name: "configuration"))
    Ec2InstanceSavingsPlans.add_member(:cost_calculation, Shapes::ShapeRef.new(shape: SavingsPlansCostCalculation, location_name: "costCalculation"))
    Ec2InstanceSavingsPlans.struct_class = Types::Ec2InstanceSavingsPlans

    Ec2InstanceSavingsPlansConfiguration.add_member(:account_scope, Shapes::ShapeRef.new(shape: String, location_name: "accountScope"))
    Ec2InstanceSavingsPlansConfiguration.add_member(:term, Shapes::ShapeRef.new(shape: String, location_name: "term"))
    Ec2InstanceSavingsPlansConfiguration.add_member(:payment_option, Shapes::ShapeRef.new(shape: String, location_name: "paymentOption"))
    Ec2InstanceSavingsPlansConfiguration.add_member(:hourly_commitment, Shapes::ShapeRef.new(shape: String, location_name: "hourlyCommitment"))
    Ec2InstanceSavingsPlansConfiguration.add_member(:instance_family, Shapes::ShapeRef.new(shape: String, location_name: "instanceFamily"))
    Ec2InstanceSavingsPlansConfiguration.add_member(:savings_plans_region, Shapes::ShapeRef.new(shape: String, location_name: "savingsPlansRegion"))
    Ec2InstanceSavingsPlansConfiguration.struct_class = Types::Ec2InstanceSavingsPlansConfiguration

    Ec2ReservedInstances.add_member(:configuration, Shapes::ShapeRef.new(shape: Ec2ReservedInstancesConfiguration, location_name: "configuration"))
    Ec2ReservedInstances.add_member(:cost_calculation, Shapes::ShapeRef.new(shape: ReservedInstancesCostCalculation, location_name: "costCalculation"))
    Ec2ReservedInstances.struct_class = Types::Ec2ReservedInstances

    Ec2ReservedInstancesConfiguration.add_member(:account_scope, Shapes::ShapeRef.new(shape: String, location_name: "accountScope"))
    Ec2ReservedInstancesConfiguration.add_member(:service, Shapes::ShapeRef.new(shape: String, location_name: "service"))
    Ec2ReservedInstancesConfiguration.add_member(:normalized_units_to_purchase, Shapes::ShapeRef.new(shape: String, location_name: "normalizedUnitsToPurchase"))
    Ec2ReservedInstancesConfiguration.add_member(:term, Shapes::ShapeRef.new(shape: String, location_name: "term"))
    Ec2ReservedInstancesConfiguration.add_member(:payment_option, Shapes::ShapeRef.new(shape: String, location_name: "paymentOption"))
    Ec2ReservedInstancesConfiguration.add_member(:number_of_instances_to_purchase, Shapes::ShapeRef.new(shape: String, location_name: "numberOfInstancesToPurchase"))
    Ec2ReservedInstancesConfiguration.add_member(:offering_class, Shapes::ShapeRef.new(shape: String, location_name: "offeringClass"))
    Ec2ReservedInstancesConfiguration.add_member(:instance_family, Shapes::ShapeRef.new(shape: String, location_name: "instanceFamily"))
    Ec2ReservedInstancesConfiguration.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    Ec2ReservedInstancesConfiguration.add_member(:reserved_instances_region, Shapes::ShapeRef.new(shape: String, location_name: "reservedInstancesRegion"))
    Ec2ReservedInstancesConfiguration.add_member(:current_generation, Shapes::ShapeRef.new(shape: String, location_name: "currentGeneration"))
    Ec2ReservedInstancesConfiguration.add_member(:platform, Shapes::ShapeRef.new(shape: String, location_name: "platform"))
    Ec2ReservedInstancesConfiguration.add_member(:tenancy, Shapes::ShapeRef.new(shape: String, location_name: "tenancy"))
    Ec2ReservedInstancesConfiguration.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: Boolean, location_name: "sizeFlexEligible"))
    Ec2ReservedInstancesConfiguration.add_member(:upfront_cost, Shapes::ShapeRef.new(shape: String, location_name: "upfrontCost"))
    Ec2ReservedInstancesConfiguration.add_member(:monthly_recurring_cost, Shapes::ShapeRef.new(shape: String, location_name: "monthlyRecurringCost"))
    Ec2ReservedInstancesConfiguration.struct_class = Types::Ec2ReservedInstancesConfiguration

    EcsService.add_member(:configuration, Shapes::ShapeRef.new(shape: EcsServiceConfiguration, location_name: "configuration"))
    EcsService.add_member(:cost_calculation, Shapes::ShapeRef.new(shape: ResourceCostCalculation, location_name: "costCalculation"))
    EcsService.struct_class = Types::EcsService

    EcsServiceConfiguration.add_member(:compute, Shapes::ShapeRef.new(shape: ComputeConfiguration, location_name: "compute"))
    EcsServiceConfiguration.struct_class = Types::EcsServiceConfiguration

    ElastiCacheReservedInstances.add_member(:configuration, Shapes::ShapeRef.new(shape: ElastiCacheReservedInstancesConfiguration, location_name: "configuration"))
    ElastiCacheReservedInstances.add_member(:cost_calculation, Shapes::ShapeRef.new(shape: ReservedInstancesCostCalculation, location_name: "costCalculation"))
    ElastiCacheReservedInstances.struct_class = Types::ElastiCacheReservedInstances

    ElastiCacheReservedInstancesConfiguration.add_member(:account_scope, Shapes::ShapeRef.new(shape: String, location_name: "accountScope"))
    ElastiCacheReservedInstancesConfiguration.add_member(:service, Shapes::ShapeRef.new(shape: String, location_name: "service"))
    ElastiCacheReservedInstancesConfiguration.add_member(:normalized_units_to_purchase, Shapes::ShapeRef.new(shape: String, location_name: "normalizedUnitsToPurchase"))
    ElastiCacheReservedInstancesConfiguration.add_member(:term, Shapes::ShapeRef.new(shape: String, location_name: "term"))
    ElastiCacheReservedInstancesConfiguration.add_member(:payment_option, Shapes::ShapeRef.new(shape: String, location_name: "paymentOption"))
    ElastiCacheReservedInstancesConfiguration.add_member(:number_of_instances_to_purchase, Shapes::ShapeRef.new(shape: String, location_name: "numberOfInstancesToPurchase"))
    ElastiCacheReservedInstancesConfiguration.add_member(:instance_family, Shapes::ShapeRef.new(shape: String, location_name: "instanceFamily"))
    ElastiCacheReservedInstancesConfiguration.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    ElastiCacheReservedInstancesConfiguration.add_member(:reserved_instances_region, Shapes::ShapeRef.new(shape: String, location_name: "reservedInstancesRegion"))
    ElastiCacheReservedInstancesConfiguration.add_member(:current_generation, Shapes::ShapeRef.new(shape: String, location_name: "currentGeneration"))
    ElastiCacheReservedInstancesConfiguration.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: Boolean, location_name: "sizeFlexEligible"))
    ElastiCacheReservedInstancesConfiguration.add_member(:upfront_cost, Shapes::ShapeRef.new(shape: String, location_name: "upfrontCost"))
    ElastiCacheReservedInstancesConfiguration.add_member(:monthly_recurring_cost, Shapes::ShapeRef.new(shape: String, location_name: "monthlyRecurringCost"))
    ElastiCacheReservedInstancesConfiguration.struct_class = Types::ElastiCacheReservedInstancesConfiguration

    EstimatedDiscounts.add_member(:savings_plans_discount, Shapes::ShapeRef.new(shape: Double, location_name: "savingsPlansDiscount"))
    EstimatedDiscounts.add_member(:reserved_instances_discount, Shapes::ShapeRef.new(shape: Double, location_name: "reservedInstancesDiscount"))
    EstimatedDiscounts.add_member(:other_discount, Shapes::ShapeRef.new(shape: Double, location_name: "otherDiscount"))
    EstimatedDiscounts.struct_class = Types::EstimatedDiscounts

    Filter.add_member(:restart_needed, Shapes::ShapeRef.new(shape: Boolean, location_name: "restartNeeded"))
    Filter.add_member(:rollback_possible, Shapes::ShapeRef.new(shape: Boolean, location_name: "rollbackPossible"))
    Filter.add_member(:implementation_efforts, Shapes::ShapeRef.new(shape: ImplementationEffortList, location_name: "implementationEfforts"))
    Filter.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "accountIds"))
    Filter.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    Filter.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: "resourceTypes"))
    Filter.add_member(:action_types, Shapes::ShapeRef.new(shape: ActionTypeList, location_name: "actionTypes"))
    Filter.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Filter.add_member(:resource_ids, Shapes::ShapeRef.new(shape: ResourceIdList, location_name: "resourceIds"))
    Filter.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "resourceArns"))
    Filter.add_member(:recommendation_ids, Shapes::ShapeRef.new(shape: RecommendationIdList, location_name: "recommendationIds"))
    Filter.struct_class = Types::Filter

    GetPreferencesRequest.struct_class = Types::GetPreferencesRequest

    GetPreferencesResponse.add_member(:savings_estimation_mode, Shapes::ShapeRef.new(shape: SavingsEstimationMode, location_name: "savingsEstimationMode"))
    GetPreferencesResponse.add_member(:member_account_discount_visibility, Shapes::ShapeRef.new(shape: MemberAccountDiscountVisibility, location_name: "memberAccountDiscountVisibility"))
    GetPreferencesResponse.struct_class = Types::GetPreferencesResponse

    GetRecommendationRequest.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "recommendationId"))
    GetRecommendationRequest.struct_class = Types::GetRecommendationRequest

    GetRecommendationResponse.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: String, location_name: "recommendationId"))
    GetRecommendationResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    GetRecommendationResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceArn"))
    GetRecommendationResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "accountId"))
    GetRecommendationResponse.add_member(:currency_code, Shapes::ShapeRef.new(shape: String, location_name: "currencyCode"))
    GetRecommendationResponse.add_member(:recommendation_lookback_period_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "recommendationLookbackPeriodInDays"))
    GetRecommendationResponse.add_member(:cost_calculation_lookback_period_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "costCalculationLookbackPeriodInDays"))
    GetRecommendationResponse.add_member(:estimated_savings_percentage, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedSavingsPercentage"))
    GetRecommendationResponse.add_member(:estimated_savings_over_cost_calculation_lookback_period, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedSavingsOverCostCalculationLookbackPeriod"))
    GetRecommendationResponse.add_member(:current_resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "currentResourceType"))
    GetRecommendationResponse.add_member(:recommended_resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "recommendedResourceType"))
    GetRecommendationResponse.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    GetRecommendationResponse.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    GetRecommendationResponse.add_member(:last_refresh_timestamp, Shapes::ShapeRef.new(shape: Datetime, location_name: "lastRefreshTimestamp"))
    GetRecommendationResponse.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedMonthlySavings"))
    GetRecommendationResponse.add_member(:estimated_monthly_cost, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedMonthlyCost"))
    GetRecommendationResponse.add_member(:implementation_effort, Shapes::ShapeRef.new(shape: ImplementationEffort, location_name: "implementationEffort"))
    GetRecommendationResponse.add_member(:restart_needed, Shapes::ShapeRef.new(shape: Boolean, location_name: "restartNeeded"))
    GetRecommendationResponse.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, location_name: "actionType"))
    GetRecommendationResponse.add_member(:rollback_possible, Shapes::ShapeRef.new(shape: Boolean, location_name: "rollbackPossible"))
    GetRecommendationResponse.add_member(:current_resource_details, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "currentResourceDetails"))
    GetRecommendationResponse.add_member(:recommended_resource_details, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "recommendedResourceDetails"))
    GetRecommendationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    GetRecommendationResponse.struct_class = Types::GetRecommendationResponse

    ImplementationEffortList.member = Shapes::ShapeRef.new(shape: ImplementationEffort)

    InstanceConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    InstanceConfiguration.struct_class = Types::InstanceConfiguration

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LambdaFunction.add_member(:configuration, Shapes::ShapeRef.new(shape: LambdaFunctionConfiguration, location_name: "configuration"))
    LambdaFunction.add_member(:cost_calculation, Shapes::ShapeRef.new(shape: ResourceCostCalculation, location_name: "costCalculation"))
    LambdaFunction.struct_class = Types::LambdaFunction

    LambdaFunctionConfiguration.add_member(:compute, Shapes::ShapeRef.new(shape: ComputeConfiguration, location_name: "compute"))
    LambdaFunctionConfiguration.struct_class = Types::LambdaFunctionConfiguration

    ListEnrollmentStatusesRequest.add_member(:include_organization_info, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "includeOrganizationInfo"))
    ListEnrollmentStatusesRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    ListEnrollmentStatusesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEnrollmentStatusesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEnrollmentStatusesRequest.struct_class = Types::ListEnrollmentStatusesRequest

    ListEnrollmentStatusesResponse.add_member(:items, Shapes::ShapeRef.new(shape: AccountEnrollmentStatuses, location_name: "items"))
    ListEnrollmentStatusesResponse.add_member(:include_member_accounts, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeMemberAccounts"))
    ListEnrollmentStatusesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEnrollmentStatusesResponse.struct_class = Types::ListEnrollmentStatusesResponse

    ListRecommendationSummariesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Filter, location_name: "filter"))
    ListRecommendationSummariesRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "groupBy"))
    ListRecommendationSummariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRecommendationSummariesRequestMaxResultsInteger, location_name: "maxResults"))
    ListRecommendationSummariesRequest.add_member(:metrics, Shapes::ShapeRef.new(shape: SummaryMetricsList, location_name: "metrics"))
    ListRecommendationSummariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListRecommendationSummariesRequest.struct_class = Types::ListRecommendationSummariesRequest

    ListRecommendationSummariesResponse.add_member(:estimated_total_deduped_savings, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedTotalDedupedSavings"))
    ListRecommendationSummariesResponse.add_member(:items, Shapes::ShapeRef.new(shape: RecommendationSummariesList, location_name: "items"))
    ListRecommendationSummariesResponse.add_member(:group_by, Shapes::ShapeRef.new(shape: String, location_name: "groupBy"))
    ListRecommendationSummariesResponse.add_member(:currency_code, Shapes::ShapeRef.new(shape: String, location_name: "currencyCode"))
    ListRecommendationSummariesResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: SummaryMetricsResult, location_name: "metrics"))
    ListRecommendationSummariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListRecommendationSummariesResponse.struct_class = Types::ListRecommendationSummariesResponse

    ListRecommendationsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Filter, location_name: "filter"))
    ListRecommendationsRequest.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    ListRecommendationsRequest.add_member(:include_all_recommendations, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location_name: "includeAllRecommendations"))
    ListRecommendationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRecommendationsRequestMaxResultsInteger, location_name: "maxResults"))
    ListRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListRecommendationsRequest.struct_class = Types::ListRecommendationsRequest

    ListRecommendationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: RecommendationList, location_name: "items"))
    ListRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListRecommendationsResponse.struct_class = Types::ListRecommendationsResponse

    MixedInstanceConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    MixedInstanceConfiguration.struct_class = Types::MixedInstanceConfiguration

    MixedInstanceConfigurationList.member = Shapes::ShapeRef.new(shape: MixedInstanceConfiguration)

    OpenSearchReservedInstances.add_member(:configuration, Shapes::ShapeRef.new(shape: OpenSearchReservedInstancesConfiguration, location_name: "configuration"))
    OpenSearchReservedInstances.add_member(:cost_calculation, Shapes::ShapeRef.new(shape: ReservedInstancesCostCalculation, location_name: "costCalculation"))
    OpenSearchReservedInstances.struct_class = Types::OpenSearchReservedInstances

    OpenSearchReservedInstancesConfiguration.add_member(:account_scope, Shapes::ShapeRef.new(shape: String, location_name: "accountScope"))
    OpenSearchReservedInstancesConfiguration.add_member(:service, Shapes::ShapeRef.new(shape: String, location_name: "service"))
    OpenSearchReservedInstancesConfiguration.add_member(:normalized_units_to_purchase, Shapes::ShapeRef.new(shape: String, location_name: "normalizedUnitsToPurchase"))
    OpenSearchReservedInstancesConfiguration.add_member(:term, Shapes::ShapeRef.new(shape: String, location_name: "term"))
    OpenSearchReservedInstancesConfiguration.add_member(:payment_option, Shapes::ShapeRef.new(shape: String, location_name: "paymentOption"))
    OpenSearchReservedInstancesConfiguration.add_member(:number_of_instances_to_purchase, Shapes::ShapeRef.new(shape: String, location_name: "numberOfInstancesToPurchase"))
    OpenSearchReservedInstancesConfiguration.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    OpenSearchReservedInstancesConfiguration.add_member(:reserved_instances_region, Shapes::ShapeRef.new(shape: String, location_name: "reservedInstancesRegion"))
    OpenSearchReservedInstancesConfiguration.add_member(:current_generation, Shapes::ShapeRef.new(shape: String, location_name: "currentGeneration"))
    OpenSearchReservedInstancesConfiguration.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: Boolean, location_name: "sizeFlexEligible"))
    OpenSearchReservedInstancesConfiguration.add_member(:upfront_cost, Shapes::ShapeRef.new(shape: String, location_name: "upfrontCost"))
    OpenSearchReservedInstancesConfiguration.add_member(:monthly_recurring_cost, Shapes::ShapeRef.new(shape: String, location_name: "monthlyRecurringCost"))
    OpenSearchReservedInstancesConfiguration.struct_class = Types::OpenSearchReservedInstancesConfiguration

    OrderBy.add_member(:dimension, Shapes::ShapeRef.new(shape: String, location_name: "dimension"))
    OrderBy.add_member(:order, Shapes::ShapeRef.new(shape: Order, location_name: "order"))
    OrderBy.struct_class = Types::OrderBy

    RdsDbInstance.add_member(:configuration, Shapes::ShapeRef.new(shape: RdsDbInstanceConfiguration, location_name: "configuration"))
    RdsDbInstance.add_member(:cost_calculation, Shapes::ShapeRef.new(shape: ResourceCostCalculation, location_name: "costCalculation"))
    RdsDbInstance.struct_class = Types::RdsDbInstance

    RdsDbInstanceConfiguration.add_member(:instance, Shapes::ShapeRef.new(shape: DbInstanceConfiguration, location_name: "instance"))
    RdsDbInstanceConfiguration.struct_class = Types::RdsDbInstanceConfiguration

    RdsDbInstanceStorage.add_member(:configuration, Shapes::ShapeRef.new(shape: RdsDbInstanceStorageConfiguration, location_name: "configuration"))
    RdsDbInstanceStorage.add_member(:cost_calculation, Shapes::ShapeRef.new(shape: ResourceCostCalculation, location_name: "costCalculation"))
    RdsDbInstanceStorage.struct_class = Types::RdsDbInstanceStorage

    RdsDbInstanceStorageConfiguration.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "storageType"))
    RdsDbInstanceStorageConfiguration.add_member(:allocated_storage_in_gb, Shapes::ShapeRef.new(shape: Double, location_name: "allocatedStorageInGb"))
    RdsDbInstanceStorageConfiguration.add_member(:iops, Shapes::ShapeRef.new(shape: Double, location_name: "iops"))
    RdsDbInstanceStorageConfiguration.add_member(:storage_throughput, Shapes::ShapeRef.new(shape: Double, location_name: "storageThroughput"))
    RdsDbInstanceStorageConfiguration.struct_class = Types::RdsDbInstanceStorageConfiguration

    RdsReservedInstances.add_member(:configuration, Shapes::ShapeRef.new(shape: RdsReservedInstancesConfiguration, location_name: "configuration"))
    RdsReservedInstances.add_member(:cost_calculation, Shapes::ShapeRef.new(shape: ReservedInstancesCostCalculation, location_name: "costCalculation"))
    RdsReservedInstances.struct_class = Types::RdsReservedInstances

    RdsReservedInstancesConfiguration.add_member(:account_scope, Shapes::ShapeRef.new(shape: String, location_name: "accountScope"))
    RdsReservedInstancesConfiguration.add_member(:service, Shapes::ShapeRef.new(shape: String, location_name: "service"))
    RdsReservedInstancesConfiguration.add_member(:normalized_units_to_purchase, Shapes::ShapeRef.new(shape: String, location_name: "normalizedUnitsToPurchase"))
    RdsReservedInstancesConfiguration.add_member(:term, Shapes::ShapeRef.new(shape: String, location_name: "term"))
    RdsReservedInstancesConfiguration.add_member(:payment_option, Shapes::ShapeRef.new(shape: String, location_name: "paymentOption"))
    RdsReservedInstancesConfiguration.add_member(:number_of_instances_to_purchase, Shapes::ShapeRef.new(shape: String, location_name: "numberOfInstancesToPurchase"))
    RdsReservedInstancesConfiguration.add_member(:instance_family, Shapes::ShapeRef.new(shape: String, location_name: "instanceFamily"))
    RdsReservedInstancesConfiguration.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    RdsReservedInstancesConfiguration.add_member(:reserved_instances_region, Shapes::ShapeRef.new(shape: String, location_name: "reservedInstancesRegion"))
    RdsReservedInstancesConfiguration.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: Boolean, location_name: "sizeFlexEligible"))
    RdsReservedInstancesConfiguration.add_member(:current_generation, Shapes::ShapeRef.new(shape: String, location_name: "currentGeneration"))
    RdsReservedInstancesConfiguration.add_member(:upfront_cost, Shapes::ShapeRef.new(shape: String, location_name: "upfrontCost"))
    RdsReservedInstancesConfiguration.add_member(:monthly_recurring_cost, Shapes::ShapeRef.new(shape: String, location_name: "monthlyRecurringCost"))
    RdsReservedInstancesConfiguration.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "licenseModel"))
    RdsReservedInstancesConfiguration.add_member(:database_edition, Shapes::ShapeRef.new(shape: String, location_name: "databaseEdition"))
    RdsReservedInstancesConfiguration.add_member(:database_engine, Shapes::ShapeRef.new(shape: String, location_name: "databaseEngine"))
    RdsReservedInstancesConfiguration.add_member(:deployment_option, Shapes::ShapeRef.new(shape: String, location_name: "deploymentOption"))
    RdsReservedInstancesConfiguration.struct_class = Types::RdsReservedInstancesConfiguration

    Recommendation.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: String, location_name: "recommendationId"))
    Recommendation.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "accountId"))
    Recommendation.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "region"))
    Recommendation.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    Recommendation.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceArn"))
    Recommendation.add_member(:current_resource_type, Shapes::ShapeRef.new(shape: String, location_name: "currentResourceType"))
    Recommendation.add_member(:recommended_resource_type, Shapes::ShapeRef.new(shape: String, location_name: "recommendedResourceType"))
    Recommendation.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedMonthlySavings"))
    Recommendation.add_member(:estimated_savings_percentage, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedSavingsPercentage"))
    Recommendation.add_member(:estimated_monthly_cost, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedMonthlyCost"))
    Recommendation.add_member(:currency_code, Shapes::ShapeRef.new(shape: String, location_name: "currencyCode"))
    Recommendation.add_member(:implementation_effort, Shapes::ShapeRef.new(shape: String, location_name: "implementationEffort"))
    Recommendation.add_member(:restart_needed, Shapes::ShapeRef.new(shape: Boolean, location_name: "restartNeeded"))
    Recommendation.add_member(:action_type, Shapes::ShapeRef.new(shape: String, location_name: "actionType"))
    Recommendation.add_member(:rollback_possible, Shapes::ShapeRef.new(shape: Boolean, location_name: "rollbackPossible"))
    Recommendation.add_member(:current_resource_summary, Shapes::ShapeRef.new(shape: String, location_name: "currentResourceSummary"))
    Recommendation.add_member(:recommended_resource_summary, Shapes::ShapeRef.new(shape: String, location_name: "recommendedResourceSummary"))
    Recommendation.add_member(:last_refresh_timestamp, Shapes::ShapeRef.new(shape: Datetime, location_name: "lastRefreshTimestamp"))
    Recommendation.add_member(:recommendation_lookback_period_in_days, Shapes::ShapeRef.new(shape: Integer, location_name: "recommendationLookbackPeriodInDays"))
    Recommendation.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    Recommendation.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Recommendation.struct_class = Types::Recommendation

    RecommendationIdList.member = Shapes::ShapeRef.new(shape: String)

    RecommendationList.member = Shapes::ShapeRef.new(shape: Recommendation)

    RecommendationSummariesList.member = Shapes::ShapeRef.new(shape: RecommendationSummary)

    RecommendationSummary.add_member(:group, Shapes::ShapeRef.new(shape: String, location_name: "group"))
    RecommendationSummary.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedMonthlySavings"))
    RecommendationSummary.add_member(:recommendation_count, Shapes::ShapeRef.new(shape: Integer, location_name: "recommendationCount"))
    RecommendationSummary.struct_class = Types::RecommendationSummary

    RedshiftReservedInstances.add_member(:configuration, Shapes::ShapeRef.new(shape: RedshiftReservedInstancesConfiguration, location_name: "configuration"))
    RedshiftReservedInstances.add_member(:cost_calculation, Shapes::ShapeRef.new(shape: ReservedInstancesCostCalculation, location_name: "costCalculation"))
    RedshiftReservedInstances.struct_class = Types::RedshiftReservedInstances

    RedshiftReservedInstancesConfiguration.add_member(:account_scope, Shapes::ShapeRef.new(shape: String, location_name: "accountScope"))
    RedshiftReservedInstancesConfiguration.add_member(:service, Shapes::ShapeRef.new(shape: String, location_name: "service"))
    RedshiftReservedInstancesConfiguration.add_member(:normalized_units_to_purchase, Shapes::ShapeRef.new(shape: String, location_name: "normalizedUnitsToPurchase"))
    RedshiftReservedInstancesConfiguration.add_member(:term, Shapes::ShapeRef.new(shape: String, location_name: "term"))
    RedshiftReservedInstancesConfiguration.add_member(:payment_option, Shapes::ShapeRef.new(shape: String, location_name: "paymentOption"))
    RedshiftReservedInstancesConfiguration.add_member(:number_of_instances_to_purchase, Shapes::ShapeRef.new(shape: String, location_name: "numberOfInstancesToPurchase"))
    RedshiftReservedInstancesConfiguration.add_member(:instance_family, Shapes::ShapeRef.new(shape: String, location_name: "instanceFamily"))
    RedshiftReservedInstancesConfiguration.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "instanceType"))
    RedshiftReservedInstancesConfiguration.add_member(:reserved_instances_region, Shapes::ShapeRef.new(shape: String, location_name: "reservedInstancesRegion"))
    RedshiftReservedInstancesConfiguration.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: Boolean, location_name: "sizeFlexEligible"))
    RedshiftReservedInstancesConfiguration.add_member(:current_generation, Shapes::ShapeRef.new(shape: String, location_name: "currentGeneration"))
    RedshiftReservedInstancesConfiguration.add_member(:upfront_cost, Shapes::ShapeRef.new(shape: String, location_name: "upfrontCost"))
    RedshiftReservedInstancesConfiguration.add_member(:monthly_recurring_cost, Shapes::ShapeRef.new(shape: String, location_name: "monthlyRecurringCost"))
    RedshiftReservedInstancesConfiguration.struct_class = Types::RedshiftReservedInstancesConfiguration

    RegionList.member = Shapes::ShapeRef.new(shape: String)

    ReservedInstancesCostCalculation.add_member(:pricing, Shapes::ShapeRef.new(shape: ReservedInstancesPricing, location_name: "pricing"))
    ReservedInstancesCostCalculation.struct_class = Types::ReservedInstancesCostCalculation

    ReservedInstancesPricing.add_member(:estimated_on_demand_cost, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedOnDemandCost"))
    ReservedInstancesPricing.add_member(:monthly_reservation_eligible_cost, Shapes::ShapeRef.new(shape: Double, location_name: "monthlyReservationEligibleCost"))
    ReservedInstancesPricing.add_member(:savings_percentage, Shapes::ShapeRef.new(shape: Double, location_name: "savingsPercentage"))
    ReservedInstancesPricing.add_member(:estimated_monthly_amortized_reservation_cost, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedMonthlyAmortizedReservationCost"))
    ReservedInstancesPricing.struct_class = Types::ReservedInstancesPricing

    ResourceArnList.member = Shapes::ShapeRef.new(shape: String)

    ResourceCostCalculation.add_member(:usages, Shapes::ShapeRef.new(shape: UsageList, location_name: "usages"))
    ResourceCostCalculation.add_member(:pricing, Shapes::ShapeRef.new(shape: ResourcePricing, location_name: "pricing"))
    ResourceCostCalculation.struct_class = Types::ResourceCostCalculation

    ResourceDetails.add_member(:lambda_function, Shapes::ShapeRef.new(shape: LambdaFunction, location_name: "lambdaFunction"))
    ResourceDetails.add_member(:ecs_service, Shapes::ShapeRef.new(shape: EcsService, location_name: "ecsService"))
    ResourceDetails.add_member(:ec2_instance, Shapes::ShapeRef.new(shape: Ec2Instance, location_name: "ec2Instance"))
    ResourceDetails.add_member(:ebs_volume, Shapes::ShapeRef.new(shape: EbsVolume, location_name: "ebsVolume"))
    ResourceDetails.add_member(:ec2_auto_scaling_group, Shapes::ShapeRef.new(shape: Ec2AutoScalingGroup, location_name: "ec2AutoScalingGroup"))
    ResourceDetails.add_member(:ec2_reserved_instances, Shapes::ShapeRef.new(shape: Ec2ReservedInstances, location_name: "ec2ReservedInstances"))
    ResourceDetails.add_member(:rds_reserved_instances, Shapes::ShapeRef.new(shape: RdsReservedInstances, location_name: "rdsReservedInstances"))
    ResourceDetails.add_member(:elasti_cache_reserved_instances, Shapes::ShapeRef.new(shape: ElastiCacheReservedInstances, location_name: "elastiCacheReservedInstances"))
    ResourceDetails.add_member(:open_search_reserved_instances, Shapes::ShapeRef.new(shape: OpenSearchReservedInstances, location_name: "openSearchReservedInstances"))
    ResourceDetails.add_member(:redshift_reserved_instances, Shapes::ShapeRef.new(shape: RedshiftReservedInstances, location_name: "redshiftReservedInstances"))
    ResourceDetails.add_member(:ec2_instance_savings_plans, Shapes::ShapeRef.new(shape: Ec2InstanceSavingsPlans, location_name: "ec2InstanceSavingsPlans"))
    ResourceDetails.add_member(:compute_savings_plans, Shapes::ShapeRef.new(shape: ComputeSavingsPlans, location_name: "computeSavingsPlans"))
    ResourceDetails.add_member(:sage_maker_savings_plans, Shapes::ShapeRef.new(shape: SageMakerSavingsPlans, location_name: "sageMakerSavingsPlans"))
    ResourceDetails.add_member(:rds_db_instance, Shapes::ShapeRef.new(shape: RdsDbInstance, location_name: "rdsDbInstance"))
    ResourceDetails.add_member(:rds_db_instance_storage, Shapes::ShapeRef.new(shape: RdsDbInstanceStorage, location_name: "rdsDbInstanceStorage"))
    ResourceDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceDetails.add_member_subclass(:lambda_function, Types::ResourceDetails::LambdaFunction)
    ResourceDetails.add_member_subclass(:ecs_service, Types::ResourceDetails::EcsService)
    ResourceDetails.add_member_subclass(:ec2_instance, Types::ResourceDetails::Ec2Instance)
    ResourceDetails.add_member_subclass(:ebs_volume, Types::ResourceDetails::EbsVolume)
    ResourceDetails.add_member_subclass(:ec2_auto_scaling_group, Types::ResourceDetails::Ec2AutoScalingGroup)
    ResourceDetails.add_member_subclass(:ec2_reserved_instances, Types::ResourceDetails::Ec2ReservedInstances)
    ResourceDetails.add_member_subclass(:rds_reserved_instances, Types::ResourceDetails::RdsReservedInstances)
    ResourceDetails.add_member_subclass(:elasti_cache_reserved_instances, Types::ResourceDetails::ElastiCacheReservedInstances)
    ResourceDetails.add_member_subclass(:open_search_reserved_instances, Types::ResourceDetails::OpenSearchReservedInstances)
    ResourceDetails.add_member_subclass(:redshift_reserved_instances, Types::ResourceDetails::RedshiftReservedInstances)
    ResourceDetails.add_member_subclass(:ec2_instance_savings_plans, Types::ResourceDetails::Ec2InstanceSavingsPlans)
    ResourceDetails.add_member_subclass(:compute_savings_plans, Types::ResourceDetails::ComputeSavingsPlans)
    ResourceDetails.add_member_subclass(:sage_maker_savings_plans, Types::ResourceDetails::SageMakerSavingsPlans)
    ResourceDetails.add_member_subclass(:rds_db_instance, Types::ResourceDetails::RdsDbInstance)
    ResourceDetails.add_member_subclass(:rds_db_instance_storage, Types::ResourceDetails::RdsDbInstanceStorage)
    ResourceDetails.add_member_subclass(:unknown, Types::ResourceDetails::Unknown)
    ResourceDetails.struct_class = Types::ResourceDetails

    ResourceIdList.member = Shapes::ShapeRef.new(shape: String)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePricing.add_member(:estimated_cost_before_discounts, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedCostBeforeDiscounts"))
    ResourcePricing.add_member(:estimated_net_unused_amortized_commitments, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedNetUnusedAmortizedCommitments"))
    ResourcePricing.add_member(:estimated_discounts, Shapes::ShapeRef.new(shape: EstimatedDiscounts, location_name: "estimatedDiscounts"))
    ResourcePricing.add_member(:estimated_cost_after_discounts, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedCostAfterDiscounts"))
    ResourcePricing.struct_class = Types::ResourcePricing

    ResourceTypeList.member = Shapes::ShapeRef.new(shape: ResourceType)

    SageMakerSavingsPlans.add_member(:configuration, Shapes::ShapeRef.new(shape: SageMakerSavingsPlansConfiguration, location_name: "configuration"))
    SageMakerSavingsPlans.add_member(:cost_calculation, Shapes::ShapeRef.new(shape: SavingsPlansCostCalculation, location_name: "costCalculation"))
    SageMakerSavingsPlans.struct_class = Types::SageMakerSavingsPlans

    SageMakerSavingsPlansConfiguration.add_member(:account_scope, Shapes::ShapeRef.new(shape: String, location_name: "accountScope"))
    SageMakerSavingsPlansConfiguration.add_member(:term, Shapes::ShapeRef.new(shape: String, location_name: "term"))
    SageMakerSavingsPlansConfiguration.add_member(:payment_option, Shapes::ShapeRef.new(shape: String, location_name: "paymentOption"))
    SageMakerSavingsPlansConfiguration.add_member(:hourly_commitment, Shapes::ShapeRef.new(shape: String, location_name: "hourlyCommitment"))
    SageMakerSavingsPlansConfiguration.struct_class = Types::SageMakerSavingsPlansConfiguration

    SavingsPlansCostCalculation.add_member(:pricing, Shapes::ShapeRef.new(shape: SavingsPlansPricing, location_name: "pricing"))
    SavingsPlansCostCalculation.struct_class = Types::SavingsPlansCostCalculation

    SavingsPlansPricing.add_member(:monthly_savings_plans_eligible_cost, Shapes::ShapeRef.new(shape: Double, location_name: "monthlySavingsPlansEligibleCost"))
    SavingsPlansPricing.add_member(:estimated_monthly_commitment, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedMonthlyCommitment"))
    SavingsPlansPricing.add_member(:savings_percentage, Shapes::ShapeRef.new(shape: Double, location_name: "savingsPercentage"))
    SavingsPlansPricing.add_member(:estimated_on_demand_cost, Shapes::ShapeRef.new(shape: Double, location_name: "estimatedOnDemandCost"))
    SavingsPlansPricing.struct_class = Types::SavingsPlansPricing

    StorageConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    StorageConfiguration.add_member(:size_in_gb, Shapes::ShapeRef.new(shape: Double, location_name: "sizeInGb"))
    StorageConfiguration.struct_class = Types::StorageConfiguration

    SummaryMetricsList.member = Shapes::ShapeRef.new(shape: SummaryMetrics)

    SummaryMetricsResult.add_member(:savings_percentage, Shapes::ShapeRef.new(shape: String, location_name: "savingsPercentage"))
    SummaryMetricsResult.struct_class = Types::SummaryMetricsResult

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateEnrollmentStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: EnrollmentStatus, required: true, location_name: "status"))
    UpdateEnrollmentStatusRequest.add_member(:include_member_accounts, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeMemberAccounts"))
    UpdateEnrollmentStatusRequest.struct_class = Types::UpdateEnrollmentStatusRequest

    UpdateEnrollmentStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    UpdateEnrollmentStatusResponse.struct_class = Types::UpdateEnrollmentStatusResponse

    UpdatePreferencesRequest.add_member(:savings_estimation_mode, Shapes::ShapeRef.new(shape: SavingsEstimationMode, location_name: "savingsEstimationMode"))
    UpdatePreferencesRequest.add_member(:member_account_discount_visibility, Shapes::ShapeRef.new(shape: MemberAccountDiscountVisibility, location_name: "memberAccountDiscountVisibility"))
    UpdatePreferencesRequest.struct_class = Types::UpdatePreferencesRequest

    UpdatePreferencesResponse.add_member(:savings_estimation_mode, Shapes::ShapeRef.new(shape: SavingsEstimationMode, location_name: "savingsEstimationMode"))
    UpdatePreferencesResponse.add_member(:member_account_discount_visibility, Shapes::ShapeRef.new(shape: MemberAccountDiscountVisibility, location_name: "memberAccountDiscountVisibility"))
    UpdatePreferencesResponse.struct_class = Types::UpdatePreferencesResponse

    Usage.add_member(:usage_type, Shapes::ShapeRef.new(shape: String, location_name: "usageType"))
    Usage.add_member(:usage_amount, Shapes::ShapeRef.new(shape: Double, location_name: "usageAmount"))
    Usage.add_member(:operation, Shapes::ShapeRef.new(shape: String, location_name: "operation"))
    Usage.add_member(:product_code, Shapes::ShapeRef.new(shape: String, location_name: "productCode"))
    Usage.add_member(:unit, Shapes::ShapeRef.new(shape: String, location_name: "unit"))
    Usage.struct_class = Types::Usage

    UsageList.member = Shapes::ShapeRef.new(shape: Usage)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionDetails, location_name: "fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionDetail.add_member(:field_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fieldName"))
    ValidationExceptionDetail.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionDetail.struct_class = Types::ValidationExceptionDetail

    ValidationExceptionDetails.member = Shapes::ShapeRef.new(shape: ValidationExceptionDetail)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-07-26"

      api.metadata = {
        "apiVersion" => "2022-07-26",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "cost-optimization-hub",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Cost Optimization Hub",
        "serviceId" => "Cost Optimization Hub",
        "signatureVersion" => "v4",
        "signingName" => "cost-optimization-hub",
        "targetPrefix" => "CostOptimizationHubService",
        "uid" => "cost-optimization-hub-2022-07-26",
      }

      api.add_operation(:get_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPreferences"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecommendation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_enrollment_statuses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnrollmentStatuses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEnrollmentStatusesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnrollmentStatusesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recommendation_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecommendationSummaries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRecommendationSummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecommendationSummariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_enrollment_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnrollmentStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnrollmentStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnrollmentStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePreferences"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
