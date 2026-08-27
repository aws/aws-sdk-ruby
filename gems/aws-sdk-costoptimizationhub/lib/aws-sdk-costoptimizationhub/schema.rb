# frozen_string_literal: true

# This is generated code!

module Aws::CostOptimizationHub
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountEnrollmentStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#AccountEnrollmentStatus", name: "AccountEnrollmentStatus")
    AccountEnrollmentStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#AccountEnrollmentStatuses", name: "AccountEnrollmentStatuses")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.costoptimizationhub#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#AccountIdList", name: "AccountIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costoptimizationhub#ActionType", name: "ActionType")
    ActionTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#ActionTypeList", name: "ActionTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AllocationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costoptimizationhub#AllocationStrategy", name: "AllocationStrategy")
    AuroraDbClusterStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#AuroraDbClusterStorage", name: "AuroraDbClusterStorage", traits: {"smithy.api#tags" => ["aurora"]})
    AuroraDbClusterStorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#AuroraDbClusterStorageConfiguration", name: "AuroraDbClusterStorageConfiguration", traits: {"smithy.api#tags" => ["aurora"]})
    BlockStoragePerformanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#BlockStoragePerformanceConfiguration", name: "BlockStoragePerformanceConfiguration")
    ComputeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ComputeConfiguration", name: "ComputeConfiguration")
    ComputeSavingsPlans = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ComputeSavingsPlans", name: "ComputeSavingsPlans")
    ComputeSavingsPlansConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ComputeSavingsPlansConfiguration", name: "ComputeSavingsPlansConfiguration")
    Datetime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.costoptimizationhub#Datetime", name: "Datetime")
    DbInstanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#DbInstanceConfiguration", name: "DbInstanceConfiguration")
    DynamoDbReservedCapacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#DynamoDbReservedCapacity", name: "DynamoDbReservedCapacity")
    DynamoDbReservedCapacityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#DynamoDbReservedCapacityConfiguration", name: "DynamoDbReservedCapacityConfiguration")
    EbsVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#EbsVolume", name: "EbsVolume")
    EbsVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#EbsVolumeConfiguration", name: "EbsVolumeConfiguration")
    Ec2AutoScalingGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#Ec2AutoScalingGroup", name: "Ec2AutoScalingGroup")
    Ec2AutoScalingGroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#Ec2AutoScalingGroupConfiguration", name: "Ec2AutoScalingGroupConfiguration")
    Ec2AutoScalingGroupType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costoptimizationhub#Ec2AutoScalingGroupType", name: "Ec2AutoScalingGroupType")
    Ec2Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#Ec2Instance", name: "Ec2Instance")
    Ec2InstanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#Ec2InstanceConfiguration", name: "Ec2InstanceConfiguration")
    Ec2InstanceSavingsPlans = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#Ec2InstanceSavingsPlans", name: "Ec2InstanceSavingsPlans")
    Ec2InstanceSavingsPlansConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#Ec2InstanceSavingsPlansConfiguration", name: "Ec2InstanceSavingsPlansConfiguration")
    Ec2ReservedInstances = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#Ec2ReservedInstances", name: "Ec2ReservedInstances")
    Ec2ReservedInstancesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#Ec2ReservedInstancesConfiguration", name: "Ec2ReservedInstancesConfiguration")
    EcsService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#EcsService", name: "EcsService")
    EcsServiceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#EcsServiceConfiguration", name: "EcsServiceConfiguration")
    ElastiCacheReservedInstances = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ElastiCacheReservedInstances", name: "ElastiCacheReservedInstances")
    ElastiCacheReservedInstancesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ElastiCacheReservedInstancesConfiguration", name: "ElastiCacheReservedInstancesConfiguration")
    EnrollmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costoptimizationhub#EnrollmentStatus", name: "EnrollmentStatus")
    EstimatedDiscounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#EstimatedDiscounts", name: "EstimatedDiscounts")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#Filter", name: "Filter")
    GetPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#GetPreferencesRequest", name: "GetPreferencesRequest")
    GetPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#GetPreferencesResponse", name: "GetPreferencesResponse")
    GetRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#GetRecommendationRequest", name: "GetRecommendationRequest")
    GetRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#GetRecommendationResponse", name: "GetRecommendationResponse")
    ImplementationEffort = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costoptimizationhub#ImplementationEffort", name: "ImplementationEffort")
    ImplementationEffortList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#ImplementationEffortList", name: "ImplementationEffortList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    InstanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#InstanceConfiguration", name: "InstanceConfiguration")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LambdaFunction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#LambdaFunction", name: "LambdaFunction")
    LambdaFunctionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#LambdaFunctionConfiguration", name: "LambdaFunctionConfiguration")
    ListEnrollmentStatusesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ListEnrollmentStatusesRequest", name: "ListEnrollmentStatusesRequest")
    ListEnrollmentStatusesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ListEnrollmentStatusesResponse", name: "ListEnrollmentStatusesResponse")
    ListRecommendationSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ListRecommendationSummariesRequest", name: "ListRecommendationSummariesRequest")
    ListRecommendationSummariesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ListRecommendationSummariesResponse", name: "ListRecommendationSummariesResponse")
    ListRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ListRecommendationsRequest", name: "ListRecommendationsRequest")
    ListRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ListRecommendationsResponse", name: "ListRecommendationsResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.costoptimizationhub#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    MemberAccountDiscountVisibility = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costoptimizationhub#MemberAccountDiscountVisibility", name: "MemberAccountDiscountVisibility")
    MemoryDbReservedInstances = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#MemoryDbReservedInstances", name: "MemoryDbReservedInstances")
    MemoryDbReservedInstancesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#MemoryDbReservedInstancesConfiguration", name: "MemoryDbReservedInstancesConfiguration")
    MixedInstanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#MixedInstanceConfiguration", name: "MixedInstanceConfiguration")
    MixedInstanceConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#MixedInstanceConfigurationList", name: "MixedInstanceConfigurationList")
    OpenSearchReservedInstances = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#OpenSearchReservedInstances", name: "OpenSearchReservedInstances")
    OpenSearchReservedInstancesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#OpenSearchReservedInstancesConfiguration", name: "OpenSearchReservedInstancesConfiguration")
    Order = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costoptimizationhub#Order", name: "Order")
    OrderBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#OrderBy", name: "OrderBy")
    PaymentOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costoptimizationhub#PaymentOption", name: "PaymentOption")
    PreferredCommitment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#PreferredCommitment", name: "PreferredCommitment", traits: {"smithy.api#tags" => ["commitmentPreferences"]})
    RdsDbInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#RdsDbInstance", name: "RdsDbInstance")
    RdsDbInstanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#RdsDbInstanceConfiguration", name: "RdsDbInstanceConfiguration")
    RdsDbInstanceStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#RdsDbInstanceStorage", name: "RdsDbInstanceStorage")
    RdsDbInstanceStorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#RdsDbInstanceStorageConfiguration", name: "RdsDbInstanceStorageConfiguration")
    RdsReservedInstances = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#RdsReservedInstances", name: "RdsReservedInstances")
    RdsReservedInstancesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#RdsReservedInstancesConfiguration", name: "RdsReservedInstancesConfiguration")
    Recommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#Recommendation", name: "Recommendation")
    RecommendationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#RecommendationIdList", name: "RecommendationIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#RecommendationList", name: "RecommendationList")
    RecommendationSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#RecommendationSummariesList", name: "RecommendationSummariesList")
    RecommendationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#RecommendationSummary", name: "RecommendationSummary")
    RedshiftReservedInstances = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#RedshiftReservedInstances", name: "RedshiftReservedInstances")
    RedshiftReservedInstancesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#RedshiftReservedInstancesConfiguration", name: "RedshiftReservedInstancesConfiguration")
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#RegionList", name: "RegionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ReservedInstancesCostCalculation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ReservedInstancesCostCalculation", name: "ReservedInstancesCostCalculation")
    ReservedInstancesPricing = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ReservedInstancesPricing", name: "ReservedInstancesPricing")
    ResourceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#ResourceArnList", name: "ResourceArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceCostCalculation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ResourceCostCalculation", name: "ResourceCostCalculation")
    ResourceDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.costoptimizationhub#ResourceDetails", name: "ResourceDetails")
    ResourceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#ResourceIdList", name: "ResourceIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePricing = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ResourcePricing", name: "ResourcePricing")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costoptimizationhub#ResourceType", name: "ResourceType")
    ResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#ResourceTypeList", name: "ResourceTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SageMakerSavingsPlans = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#SageMakerSavingsPlans", name: "SageMakerSavingsPlans")
    SageMakerSavingsPlansConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#SageMakerSavingsPlansConfiguration", name: "SageMakerSavingsPlansConfiguration")
    SavingsEstimationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costoptimizationhub#SavingsEstimationMode", name: "SavingsEstimationMode")
    SavingsPlansCostCalculation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#SavingsPlansCostCalculation", name: "SavingsPlansCostCalculation")
    SavingsPlansPricing = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#SavingsPlansPricing", name: "SavingsPlansPricing")
    Source = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costoptimizationhub#Source", name: "Source")
    StorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#StorageConfiguration", name: "StorageConfiguration")
    SummaryMetrics = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costoptimizationhub#SummaryMetrics", name: "SummaryMetrics")
    SummaryMetricsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#SummaryMetricsList", name: "SummaryMetricsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SummaryMetricsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#SummaryMetricsResult", name: "SummaryMetricsResult")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#Tag", name: "Tag")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Term = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costoptimizationhub#Term", name: "Term")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UpdateEnrollmentStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#UpdateEnrollmentStatusRequest", name: "UpdateEnrollmentStatusRequest")
    UpdateEnrollmentStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#UpdateEnrollmentStatusResponse", name: "UpdateEnrollmentStatusResponse")
    UpdatePreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#UpdatePreferencesRequest", name: "UpdatePreferencesRequest")
    UpdatePreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#UpdatePreferencesResponse", name: "UpdatePreferencesResponse")
    Usage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#Usage", name: "Usage")
    UsageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#UsageList", name: "UsageList")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costoptimizationhub#ValidationExceptionDetail", name: "ValidationExceptionDetail")
    ValidationExceptionDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costoptimizationhub#ValidationExceptionDetails", name: "ValidationExceptionDetails")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costoptimizationhub#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountEnrollmentStatus.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    AccountEnrollmentStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EnrollmentStatus, name: "status"))
    AccountEnrollmentStatus.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastUpdatedTimestamp"))
    AccountEnrollmentStatus.add_member(:created_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdTimestamp"))
    AccountEnrollmentStatus.type = Types::AccountEnrollmentStatus
    AccountEnrollmentStatuses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountEnrollmentStatus, name: "member")
    AccountIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member")
    ActionType.add_member(:rightsize, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RIGHTSIZE", traits: {"smithy.api#enumValue" => "Rightsize"}))
    ActionType.add_member(:stop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP", traits: {"smithy.api#enumValue" => "Stop"}))
    ActionType.add_member(:upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPGRADE", traits: {"smithy.api#enumValue" => "Upgrade"}))
    ActionType.add_member(:purchase_savings_plans, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PURCHASE_SAVINGS_PLANS", traits: {"smithy.api#enumValue" => "PurchaseSavingsPlans"}))
    ActionType.add_member(:purchase_reserved_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PURCHASE_RESERVED_INSTANCES", traits: {"smithy.api#enumValue" => "PurchaseReservedInstances"}))
    ActionType.add_member(:migrate_to_graviton, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIGRATE_TO_GRAVITON", traits: {"smithy.api#enumValue" => "MigrateToGraviton"}))
    ActionType.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "Delete"}))
    ActionType.add_member(:scale_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCALE_IN", traits: {"smithy.api#enumValue" => "ScaleIn"}))
    ActionTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionType, name: "member")
    AllocationStrategy.add_member(:prioritized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIORITIZED", traits: {"smithy.api#enumValue" => "Prioritized"}))
    AllocationStrategy.add_member(:lowest_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOWEST_PRICE", traits: {"smithy.api#enumValue" => "LowestPrice"}))
    AuroraDbClusterStorage.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AuroraDbClusterStorageConfiguration, name: "configuration"))
    AuroraDbClusterStorage.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCostCalculation, name: "costCalculation"))
    AuroraDbClusterStorage.type = Types::AuroraDbClusterStorage
    AuroraDbClusterStorageConfiguration.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "storageType"))
    AuroraDbClusterStorageConfiguration.type = Types::AuroraDbClusterStorageConfiguration
    BlockStoragePerformanceConfiguration.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "iops"))
    BlockStoragePerformanceConfiguration.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "throughput"))
    BlockStoragePerformanceConfiguration.type = Types::BlockStoragePerformanceConfiguration
    ComputeConfiguration.add_member(:v_cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "vCpu"))
    ComputeConfiguration.add_member(:memory_size_in_mb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "memorySizeInMB"))
    ComputeConfiguration.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "architecture"))
    ComputeConfiguration.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "platform"))
    ComputeConfiguration.type = Types::ComputeConfiguration
    ComputeSavingsPlans.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeSavingsPlansConfiguration, name: "configuration"))
    ComputeSavingsPlans.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsPlansCostCalculation, name: "costCalculation"))
    ComputeSavingsPlans.type = Types::ComputeSavingsPlans
    ComputeSavingsPlansConfiguration.add_member(:account_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountScope"))
    ComputeSavingsPlansConfiguration.add_member(:term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "term"))
    ComputeSavingsPlansConfiguration.add_member(:payment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "paymentOption"))
    ComputeSavingsPlansConfiguration.add_member(:hourly_commitment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hourlyCommitment"))
    ComputeSavingsPlansConfiguration.type = Types::ComputeSavingsPlansConfiguration
    DbInstanceConfiguration.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dbInstanceClass"))
    DbInstanceConfiguration.type = Types::DbInstanceConfiguration
    DynamoDbReservedCapacity.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamoDbReservedCapacityConfiguration, name: "configuration"))
    DynamoDbReservedCapacity.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedInstancesCostCalculation, name: "costCalculation"))
    DynamoDbReservedCapacity.type = Types::DynamoDbReservedCapacity
    DynamoDbReservedCapacityConfiguration.add_member(:account_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountScope"))
    DynamoDbReservedCapacityConfiguration.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "service"))
    DynamoDbReservedCapacityConfiguration.add_member(:term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "term"))
    DynamoDbReservedCapacityConfiguration.add_member(:payment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "paymentOption"))
    DynamoDbReservedCapacityConfiguration.add_member(:reserved_instances_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reservedInstancesRegion"))
    DynamoDbReservedCapacityConfiguration.add_member(:upfront_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "upfrontCost"))
    DynamoDbReservedCapacityConfiguration.add_member(:monthly_recurring_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "monthlyRecurringCost"))
    DynamoDbReservedCapacityConfiguration.add_member(:number_of_capacity_units_to_purchase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "numberOfCapacityUnitsToPurchase"))
    DynamoDbReservedCapacityConfiguration.add_member(:capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "capacityUnits"))
    DynamoDbReservedCapacityConfiguration.type = Types::DynamoDbReservedCapacityConfiguration
    EbsVolume.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolumeConfiguration, name: "configuration"))
    EbsVolume.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCostCalculation, name: "costCalculation"))
    EbsVolume.type = Types::EbsVolume
    EbsVolumeConfiguration.add_member(:storage, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConfiguration, name: "storage"))
    EbsVolumeConfiguration.add_member(:performance, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockStoragePerformanceConfiguration, name: "performance"))
    EbsVolumeConfiguration.add_member(:attachment_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "attachmentState"))
    EbsVolumeConfiguration.type = Types::EbsVolumeConfiguration
    Ec2AutoScalingGroup.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2AutoScalingGroupConfiguration, name: "configuration"))
    Ec2AutoScalingGroup.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCostCalculation, name: "costCalculation"))
    Ec2AutoScalingGroup.type = Types::Ec2AutoScalingGroup
    Ec2AutoScalingGroupConfiguration.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceConfiguration, name: "instance"))
    Ec2AutoScalingGroupConfiguration.add_member(:mixed_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: MixedInstanceConfigurationList, name: "mixedInstances"))
    Ec2AutoScalingGroupConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2AutoScalingGroupType, name: "type"))
    Ec2AutoScalingGroupConfiguration.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationStrategy, name: "allocationStrategy"))
    Ec2AutoScalingGroupConfiguration.type = Types::Ec2AutoScalingGroupConfiguration
    Ec2AutoScalingGroupType.add_member(:single_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "SingleInstanceType"}))
    Ec2AutoScalingGroupType.add_member(:mixed_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIXED_INSTANCE_TYPES", traits: {"smithy.api#enumValue" => "MixedInstanceTypes"}))
    Ec2Instance.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceConfiguration, name: "configuration"))
    Ec2Instance.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCostCalculation, name: "costCalculation"))
    Ec2Instance.type = Types::Ec2Instance
    Ec2InstanceConfiguration.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceConfiguration, name: "instance"))
    Ec2InstanceConfiguration.type = Types::Ec2InstanceConfiguration
    Ec2InstanceSavingsPlans.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceSavingsPlansConfiguration, name: "configuration"))
    Ec2InstanceSavingsPlans.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsPlansCostCalculation, name: "costCalculation"))
    Ec2InstanceSavingsPlans.type = Types::Ec2InstanceSavingsPlans
    Ec2InstanceSavingsPlansConfiguration.add_member(:account_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountScope"))
    Ec2InstanceSavingsPlansConfiguration.add_member(:term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "term"))
    Ec2InstanceSavingsPlansConfiguration.add_member(:payment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "paymentOption"))
    Ec2InstanceSavingsPlansConfiguration.add_member(:hourly_commitment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hourlyCommitment"))
    Ec2InstanceSavingsPlansConfiguration.add_member(:instance_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceFamily"))
    Ec2InstanceSavingsPlansConfiguration.add_member(:savings_plans_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "savingsPlansRegion"))
    Ec2InstanceSavingsPlansConfiguration.type = Types::Ec2InstanceSavingsPlansConfiguration
    Ec2ReservedInstances.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2ReservedInstancesConfiguration, name: "configuration"))
    Ec2ReservedInstances.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedInstancesCostCalculation, name: "costCalculation"))
    Ec2ReservedInstances.type = Types::Ec2ReservedInstances
    Ec2ReservedInstancesConfiguration.add_member(:account_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountScope"))
    Ec2ReservedInstancesConfiguration.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "service"))
    Ec2ReservedInstancesConfiguration.add_member(:term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "term"))
    Ec2ReservedInstancesConfiguration.add_member(:payment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "paymentOption"))
    Ec2ReservedInstancesConfiguration.add_member(:reserved_instances_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reservedInstancesRegion"))
    Ec2ReservedInstancesConfiguration.add_member(:upfront_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "upfrontCost"))
    Ec2ReservedInstancesConfiguration.add_member(:monthly_recurring_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "monthlyRecurringCost"))
    Ec2ReservedInstancesConfiguration.add_member(:normalized_units_to_purchase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "normalizedUnitsToPurchase"))
    Ec2ReservedInstancesConfiguration.add_member(:number_of_instances_to_purchase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "numberOfInstancesToPurchase"))
    Ec2ReservedInstancesConfiguration.add_member(:offering_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "offeringClass"))
    Ec2ReservedInstancesConfiguration.add_member(:instance_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceFamily"))
    Ec2ReservedInstancesConfiguration.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceType"))
    Ec2ReservedInstancesConfiguration.add_member(:current_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currentGeneration"))
    Ec2ReservedInstancesConfiguration.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "platform"))
    Ec2ReservedInstancesConfiguration.add_member(:tenancy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tenancy"))
    Ec2ReservedInstancesConfiguration.add_member(:size_flex_eligible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "sizeFlexEligible"))
    Ec2ReservedInstancesConfiguration.type = Types::Ec2ReservedInstancesConfiguration
    EcsService.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsServiceConfiguration, name: "configuration"))
    EcsService.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCostCalculation, name: "costCalculation"))
    EcsService.type = Types::EcsService
    EcsServiceConfiguration.add_member(:compute, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeConfiguration, name: "compute"))
    EcsServiceConfiguration.type = Types::EcsServiceConfiguration
    ElastiCacheReservedInstances.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ElastiCacheReservedInstancesConfiguration, name: "configuration"))
    ElastiCacheReservedInstances.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedInstancesCostCalculation, name: "costCalculation"))
    ElastiCacheReservedInstances.type = Types::ElastiCacheReservedInstances
    ElastiCacheReservedInstancesConfiguration.add_member(:account_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountScope"))
    ElastiCacheReservedInstancesConfiguration.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "service"))
    ElastiCacheReservedInstancesConfiguration.add_member(:term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "term"))
    ElastiCacheReservedInstancesConfiguration.add_member(:payment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "paymentOption"))
    ElastiCacheReservedInstancesConfiguration.add_member(:reserved_instances_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reservedInstancesRegion"))
    ElastiCacheReservedInstancesConfiguration.add_member(:upfront_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "upfrontCost"))
    ElastiCacheReservedInstancesConfiguration.add_member(:monthly_recurring_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "monthlyRecurringCost"))
    ElastiCacheReservedInstancesConfiguration.add_member(:normalized_units_to_purchase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "normalizedUnitsToPurchase"))
    ElastiCacheReservedInstancesConfiguration.add_member(:number_of_instances_to_purchase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "numberOfInstancesToPurchase"))
    ElastiCacheReservedInstancesConfiguration.add_member(:instance_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceFamily"))
    ElastiCacheReservedInstancesConfiguration.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceType"))
    ElastiCacheReservedInstancesConfiguration.add_member(:current_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currentGeneration"))
    ElastiCacheReservedInstancesConfiguration.add_member(:size_flex_eligible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "sizeFlexEligible"))
    ElastiCacheReservedInstancesConfiguration.type = Types::ElastiCacheReservedInstancesConfiguration
    EnrollmentStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    EnrollmentStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "Inactive"}))
    EstimatedDiscounts.add_member(:savings_plans_discount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "savingsPlansDiscount"))
    EstimatedDiscounts.add_member(:reserved_instances_discount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "reservedInstancesDiscount"))
    EstimatedDiscounts.add_member(:other_discount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "otherDiscount"))
    EstimatedDiscounts.type = Types::EstimatedDiscounts
    Filter.add_member(:restart_needed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "restartNeeded"))
    Filter.add_member(:rollback_possible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "rollbackPossible"))
    Filter.add_member(:implementation_efforts, ::Smithy::Schema::Shapes::MemberShape.new(target: ImplementationEffortList, name: "implementationEfforts"))
    Filter.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdList, name: "accountIds"))
    Filter.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions"))
    Filter.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeList, name: "resourceTypes"))
    Filter.add_member(:action_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionTypeList, name: "actionTypes"))
    Filter.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    Filter.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdList, name: "resourceIds"))
    Filter.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, name: "resourceArns"))
    Filter.add_member(:recommendation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationIdList, name: "recommendationIds"))
    Filter.type = Types::Filter
    GetPreferencesRequest.type = Types::GetPreferencesRequest
    GetPreferencesResponse.add_member(:savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsEstimationMode, name: "savingsEstimationMode"))
    GetPreferencesResponse.add_member(:member_account_discount_visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAccountDiscountVisibility, name: "memberAccountDiscountVisibility"))
    GetPreferencesResponse.add_member(:preferred_commitment, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredCommitment, name: "preferredCommitment", traits: {"smithy.api#tags" => ["commitmentPreferences"]}))
    GetPreferencesResponse.type = Types::GetPreferencesResponse
    GetRecommendationRequest.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendationId", traits: {"smithy.api#required" => {}}))
    GetRecommendationRequest.type = Types::GetRecommendationRequest
    GetRecommendationResponse.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendationId"))
    GetRecommendationResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    GetRecommendationResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn"))
    GetRecommendationResponse.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId"))
    GetRecommendationResponse.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currencyCode"))
    GetRecommendationResponse.add_member(:recommendation_lookback_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "recommendationLookbackPeriodInDays"))
    GetRecommendationResponse.add_member(:cost_calculation_lookback_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "costCalculationLookbackPeriodInDays"))
    GetRecommendationResponse.add_member(:estimated_savings_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedSavingsPercentage"))
    GetRecommendationResponse.add_member(:estimated_savings_over_cost_calculation_lookback_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedSavingsOverCostCalculationLookbackPeriod"))
    GetRecommendationResponse.add_member(:current_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "currentResourceType"))
    GetRecommendationResponse.add_member(:recommended_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "recommendedResourceType"))
    GetRecommendationResponse.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region"))
    GetRecommendationResponse.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "source"))
    GetRecommendationResponse.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Datetime, name: "lastRefreshTimestamp"))
    GetRecommendationResponse.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedMonthlySavings"))
    GetRecommendationResponse.add_member(:estimated_monthly_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedMonthlyCost"))
    GetRecommendationResponse.add_member(:implementation_effort, ::Smithy::Schema::Shapes::MemberShape.new(target: ImplementationEffort, name: "implementationEffort"))
    GetRecommendationResponse.add_member(:restart_needed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "restartNeeded"))
    GetRecommendationResponse.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionType, name: "actionType"))
    GetRecommendationResponse.add_member(:rollback_possible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "rollbackPossible"))
    GetRecommendationResponse.add_member(:current_resource_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetails, name: "currentResourceDetails"))
    GetRecommendationResponse.add_member(:recommended_resource_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetails, name: "recommendedResourceDetails"))
    GetRecommendationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    GetRecommendationResponse.type = Types::GetRecommendationResponse
    ImplementationEffort.add_member(:very_low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERY_LOW", traits: {"smithy.api#enumValue" => "VeryLow"}))
    ImplementationEffort.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "Low"}))
    ImplementationEffort.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "Medium"}))
    ImplementationEffort.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "High"}))
    ImplementationEffort.add_member(:very_high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERY_HIGH", traits: {"smithy.api#enumValue" => "VeryHigh"}))
    ImplementationEffortList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImplementationEffort, name: "member")
    InstanceConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type"))
    InstanceConfiguration.type = Types::InstanceConfiguration
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    LambdaFunction.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionConfiguration, name: "configuration"))
    LambdaFunction.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCostCalculation, name: "costCalculation"))
    LambdaFunction.type = Types::LambdaFunction
    LambdaFunctionConfiguration.add_member(:compute, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeConfiguration, name: "compute"))
    LambdaFunctionConfiguration.type = Types::LambdaFunctionConfiguration
    ListEnrollmentStatusesRequest.add_member(:include_organization_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "includeOrganizationInfo", traits: {"smithy.api#default" => false}))
    ListEnrollmentStatusesRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    ListEnrollmentStatusesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListEnrollmentStatusesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListEnrollmentStatusesRequest.type = Types::ListEnrollmentStatusesRequest
    ListEnrollmentStatusesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountEnrollmentStatuses, name: "items"))
    ListEnrollmentStatusesResponse.add_member(:include_member_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includeMemberAccounts"))
    ListEnrollmentStatusesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListEnrollmentStatusesResponse.type = Types::ListEnrollmentStatusesResponse
    ListRecommendationSummariesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "filter"))
    ListRecommendationSummariesRequest.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "groupBy", traits: {"smithy.api#required" => {}}))
    ListRecommendationSummariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000}}))
    ListRecommendationSummariesRequest.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryMetricsList, name: "metrics"))
    ListRecommendationSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListRecommendationSummariesRequest.type = Types::ListRecommendationSummariesRequest
    ListRecommendationSummariesResponse.add_member(:estimated_total_deduped_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedTotalDedupedSavings"))
    ListRecommendationSummariesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSummariesList, name: "items"))
    ListRecommendationSummariesResponse.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "groupBy"))
    ListRecommendationSummariesResponse.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currencyCode"))
    ListRecommendationSummariesResponse.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryMetricsResult, name: "metrics"))
    ListRecommendationSummariesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListRecommendationSummariesResponse.type = Types::ListRecommendationSummariesResponse
    ListRecommendationsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "filter"))
    ListRecommendationsRequest.add_member(:order_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderBy, name: "orderBy"))
    ListRecommendationsRequest.add_member(:include_all_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, name: "includeAllRecommendations", traits: {"smithy.api#default" => false}))
    ListRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000}}))
    ListRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListRecommendationsRequest.type = Types::ListRecommendationsRequest
    ListRecommendationsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationList, name: "items"))
    ListRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListRecommendationsResponse.type = Types::ListRecommendationsResponse
    MemberAccountDiscountVisibility.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "All"}))
    MemberAccountDiscountVisibility.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "None"}))
    MemoryDbReservedInstances.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryDbReservedInstancesConfiguration, name: "configuration"))
    MemoryDbReservedInstances.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedInstancesCostCalculation, name: "costCalculation"))
    MemoryDbReservedInstances.type = Types::MemoryDbReservedInstances
    MemoryDbReservedInstancesConfiguration.add_member(:account_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountScope"))
    MemoryDbReservedInstancesConfiguration.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "service"))
    MemoryDbReservedInstancesConfiguration.add_member(:term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "term"))
    MemoryDbReservedInstancesConfiguration.add_member(:payment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "paymentOption"))
    MemoryDbReservedInstancesConfiguration.add_member(:reserved_instances_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reservedInstancesRegion"))
    MemoryDbReservedInstancesConfiguration.add_member(:upfront_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "upfrontCost"))
    MemoryDbReservedInstancesConfiguration.add_member(:monthly_recurring_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "monthlyRecurringCost"))
    MemoryDbReservedInstancesConfiguration.add_member(:normalized_units_to_purchase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "normalizedUnitsToPurchase"))
    MemoryDbReservedInstancesConfiguration.add_member(:number_of_instances_to_purchase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "numberOfInstancesToPurchase"))
    MemoryDbReservedInstancesConfiguration.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceType"))
    MemoryDbReservedInstancesConfiguration.add_member(:instance_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceFamily"))
    MemoryDbReservedInstancesConfiguration.add_member(:size_flex_eligible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "sizeFlexEligible"))
    MemoryDbReservedInstancesConfiguration.add_member(:current_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currentGeneration"))
    MemoryDbReservedInstancesConfiguration.type = Types::MemoryDbReservedInstancesConfiguration
    MixedInstanceConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type"))
    MixedInstanceConfiguration.type = Types::MixedInstanceConfiguration
    MixedInstanceConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MixedInstanceConfiguration, name: "member")
    OpenSearchReservedInstances.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchReservedInstancesConfiguration, name: "configuration"))
    OpenSearchReservedInstances.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedInstancesCostCalculation, name: "costCalculation"))
    OpenSearchReservedInstances.type = Types::OpenSearchReservedInstances
    OpenSearchReservedInstancesConfiguration.add_member(:account_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountScope"))
    OpenSearchReservedInstancesConfiguration.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "service"))
    OpenSearchReservedInstancesConfiguration.add_member(:term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "term"))
    OpenSearchReservedInstancesConfiguration.add_member(:payment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "paymentOption"))
    OpenSearchReservedInstancesConfiguration.add_member(:reserved_instances_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reservedInstancesRegion"))
    OpenSearchReservedInstancesConfiguration.add_member(:upfront_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "upfrontCost"))
    OpenSearchReservedInstancesConfiguration.add_member(:monthly_recurring_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "monthlyRecurringCost"))
    OpenSearchReservedInstancesConfiguration.add_member(:normalized_units_to_purchase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "normalizedUnitsToPurchase"))
    OpenSearchReservedInstancesConfiguration.add_member(:number_of_instances_to_purchase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "numberOfInstancesToPurchase"))
    OpenSearchReservedInstancesConfiguration.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceType"))
    OpenSearchReservedInstancesConfiguration.add_member(:current_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currentGeneration"))
    OpenSearchReservedInstancesConfiguration.add_member(:size_flex_eligible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "sizeFlexEligible"))
    OpenSearchReservedInstancesConfiguration.type = Types::OpenSearchReservedInstancesConfiguration
    Order.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "Asc"}))
    Order.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "Desc"}))
    OrderBy.add_member(:dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dimension"))
    OrderBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: Order, name: "order"))
    OrderBy.type = Types::OrderBy
    PaymentOption.add_member(:all_upfront, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_UPFRONT", traits: {"smithy.api#enumValue" => "AllUpfront"}))
    PaymentOption.add_member(:partial_upfront, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL_UPFRONT", traits: {"smithy.api#enumValue" => "PartialUpfront"}))
    PaymentOption.add_member(:no_upfront, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_UPFRONT", traits: {"smithy.api#enumValue" => "NoUpfront"}))
    PreferredCommitment.add_member(:term, ::Smithy::Schema::Shapes::MemberShape.new(target: Term, name: "term"))
    PreferredCommitment.add_member(:payment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentOption, name: "paymentOption"))
    PreferredCommitment.type = Types::PreferredCommitment
    RdsDbInstance.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbInstanceConfiguration, name: "configuration"))
    RdsDbInstance.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCostCalculation, name: "costCalculation"))
    RdsDbInstance.type = Types::RdsDbInstance
    RdsDbInstanceConfiguration.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: DbInstanceConfiguration, name: "instance"))
    RdsDbInstanceConfiguration.type = Types::RdsDbInstanceConfiguration
    RdsDbInstanceStorage.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbInstanceStorageConfiguration, name: "configuration"))
    RdsDbInstanceStorage.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCostCalculation, name: "costCalculation"))
    RdsDbInstanceStorage.type = Types::RdsDbInstanceStorage
    RdsDbInstanceStorageConfiguration.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "storageType"))
    RdsDbInstanceStorageConfiguration.add_member(:allocated_storage_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "allocatedStorageInGb"))
    RdsDbInstanceStorageConfiguration.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "iops"))
    RdsDbInstanceStorageConfiguration.add_member(:storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "storageThroughput"))
    RdsDbInstanceStorageConfiguration.type = Types::RdsDbInstanceStorageConfiguration
    RdsReservedInstances.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsReservedInstancesConfiguration, name: "configuration"))
    RdsReservedInstances.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedInstancesCostCalculation, name: "costCalculation"))
    RdsReservedInstances.type = Types::RdsReservedInstances
    RdsReservedInstancesConfiguration.add_member(:account_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountScope"))
    RdsReservedInstancesConfiguration.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "service"))
    RdsReservedInstancesConfiguration.add_member(:term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "term"))
    RdsReservedInstancesConfiguration.add_member(:payment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "paymentOption"))
    RdsReservedInstancesConfiguration.add_member(:reserved_instances_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reservedInstancesRegion"))
    RdsReservedInstancesConfiguration.add_member(:upfront_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "upfrontCost"))
    RdsReservedInstancesConfiguration.add_member(:monthly_recurring_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "monthlyRecurringCost"))
    RdsReservedInstancesConfiguration.add_member(:normalized_units_to_purchase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "normalizedUnitsToPurchase"))
    RdsReservedInstancesConfiguration.add_member(:number_of_instances_to_purchase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "numberOfInstancesToPurchase"))
    RdsReservedInstancesConfiguration.add_member(:instance_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceFamily"))
    RdsReservedInstancesConfiguration.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceType"))
    RdsReservedInstancesConfiguration.add_member(:size_flex_eligible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "sizeFlexEligible"))
    RdsReservedInstancesConfiguration.add_member(:current_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currentGeneration"))
    RdsReservedInstancesConfiguration.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "licenseModel"))
    RdsReservedInstancesConfiguration.add_member(:database_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "databaseEdition"))
    RdsReservedInstancesConfiguration.add_member(:database_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "databaseEngine"))
    RdsReservedInstancesConfiguration.add_member(:deployment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "deploymentOption"))
    RdsReservedInstancesConfiguration.type = Types::RdsReservedInstancesConfiguration
    Recommendation.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendationId"))
    Recommendation.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId"))
    Recommendation.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region"))
    Recommendation.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    Recommendation.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn"))
    Recommendation.add_member(:current_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currentResourceType"))
    Recommendation.add_member(:recommended_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendedResourceType"))
    Recommendation.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedMonthlySavings"))
    Recommendation.add_member(:estimated_savings_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedSavingsPercentage"))
    Recommendation.add_member(:estimated_monthly_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedMonthlyCost"))
    Recommendation.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currencyCode"))
    Recommendation.add_member(:implementation_effort, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "implementationEffort"))
    Recommendation.add_member(:restart_needed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "restartNeeded"))
    Recommendation.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "actionType"))
    Recommendation.add_member(:rollback_possible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "rollbackPossible"))
    Recommendation.add_member(:current_resource_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currentResourceSummary"))
    Recommendation.add_member(:recommended_resource_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendedResourceSummary"))
    Recommendation.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Datetime, name: "lastRefreshTimestamp"))
    Recommendation.add_member(:recommendation_lookback_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "recommendationLookbackPeriodInDays"))
    Recommendation.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "source"))
    Recommendation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    Recommendation.type = Types::Recommendation
    RecommendationIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    RecommendationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation, name: "member")
    RecommendationSummariesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSummary, name: "member")
    RecommendationSummary.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "group"))
    RecommendationSummary.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedMonthlySavings"))
    RecommendationSummary.add_member(:recommendation_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "recommendationCount"))
    RecommendationSummary.type = Types::RecommendationSummary
    RedshiftReservedInstances.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftReservedInstancesConfiguration, name: "configuration"))
    RedshiftReservedInstances.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedInstancesCostCalculation, name: "costCalculation"))
    RedshiftReservedInstances.type = Types::RedshiftReservedInstances
    RedshiftReservedInstancesConfiguration.add_member(:account_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountScope"))
    RedshiftReservedInstancesConfiguration.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "service"))
    RedshiftReservedInstancesConfiguration.add_member(:term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "term"))
    RedshiftReservedInstancesConfiguration.add_member(:payment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "paymentOption"))
    RedshiftReservedInstancesConfiguration.add_member(:reserved_instances_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reservedInstancesRegion"))
    RedshiftReservedInstancesConfiguration.add_member(:upfront_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "upfrontCost"))
    RedshiftReservedInstancesConfiguration.add_member(:monthly_recurring_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "monthlyRecurringCost"))
    RedshiftReservedInstancesConfiguration.add_member(:normalized_units_to_purchase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "normalizedUnitsToPurchase"))
    RedshiftReservedInstancesConfiguration.add_member(:number_of_instances_to_purchase, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "numberOfInstancesToPurchase"))
    RedshiftReservedInstancesConfiguration.add_member(:instance_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceFamily"))
    RedshiftReservedInstancesConfiguration.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instanceType"))
    RedshiftReservedInstancesConfiguration.add_member(:size_flex_eligible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "sizeFlexEligible"))
    RedshiftReservedInstancesConfiguration.add_member(:current_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currentGeneration"))
    RedshiftReservedInstancesConfiguration.type = Types::RedshiftReservedInstancesConfiguration
    RegionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    ReservedInstancesCostCalculation.add_member(:pricing, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedInstancesPricing, name: "pricing"))
    ReservedInstancesCostCalculation.type = Types::ReservedInstancesCostCalculation
    ReservedInstancesPricing.add_member(:estimated_on_demand_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedOnDemandCost"))
    ReservedInstancesPricing.add_member(:monthly_reservation_eligible_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "monthlyReservationEligibleCost"))
    ReservedInstancesPricing.add_member(:savings_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "savingsPercentage"))
    ReservedInstancesPricing.add_member(:estimated_monthly_amortized_reservation_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedMonthlyAmortizedReservationCost"))
    ReservedInstancesPricing.type = Types::ReservedInstancesPricing
    ResourceArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    ResourceCostCalculation.add_member(:usages, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageList, name: "usages"))
    ResourceCostCalculation.add_member(:pricing, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePricing, name: "pricing"))
    ResourceCostCalculation.type = Types::ResourceCostCalculation
    ResourceDetails.add_member(:lambda_function, Types::ResourceDetails::LambdaFunction, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunction, name: "lambdaFunction"))
    ResourceDetails.add_member(:ecs_service, Types::ResourceDetails::EcsService, ::Smithy::Schema::Shapes::MemberShape.new(target: EcsService, name: "ecsService"))
    ResourceDetails.add_member(:ec2_instance, Types::ResourceDetails::Ec2Instance, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2Instance, name: "ec2Instance"))
    ResourceDetails.add_member(:ebs_volume, Types::ResourceDetails::EbsVolume, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolume, name: "ebsVolume"))
    ResourceDetails.add_member(:ec2_auto_scaling_group, Types::ResourceDetails::Ec2AutoScalingGroup, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2AutoScalingGroup, name: "ec2AutoScalingGroup"))
    ResourceDetails.add_member(:ec2_reserved_instances, Types::ResourceDetails::Ec2ReservedInstances, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2ReservedInstances, name: "ec2ReservedInstances"))
    ResourceDetails.add_member(:rds_reserved_instances, Types::ResourceDetails::RdsReservedInstances, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsReservedInstances, name: "rdsReservedInstances"))
    ResourceDetails.add_member(:elasti_cache_reserved_instances, Types::ResourceDetails::ElastiCacheReservedInstances, ::Smithy::Schema::Shapes::MemberShape.new(target: ElastiCacheReservedInstances, name: "elastiCacheReservedInstances"))
    ResourceDetails.add_member(:open_search_reserved_instances, Types::ResourceDetails::OpenSearchReservedInstances, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenSearchReservedInstances, name: "openSearchReservedInstances"))
    ResourceDetails.add_member(:redshift_reserved_instances, Types::ResourceDetails::RedshiftReservedInstances, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftReservedInstances, name: "redshiftReservedInstances"))
    ResourceDetails.add_member(:ec2_instance_savings_plans, Types::ResourceDetails::Ec2InstanceSavingsPlans, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2InstanceSavingsPlans, name: "ec2InstanceSavingsPlans"))
    ResourceDetails.add_member(:compute_savings_plans, Types::ResourceDetails::ComputeSavingsPlans, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeSavingsPlans, name: "computeSavingsPlans"))
    ResourceDetails.add_member(:sage_maker_savings_plans, Types::ResourceDetails::SageMakerSavingsPlans, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerSavingsPlans, name: "sageMakerSavingsPlans"))
    ResourceDetails.add_member(:rds_db_instance, Types::ResourceDetails::RdsDbInstance, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbInstance, name: "rdsDbInstance"))
    ResourceDetails.add_member(:rds_db_instance_storage, Types::ResourceDetails::RdsDbInstanceStorage, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbInstanceStorage, name: "rdsDbInstanceStorage"))
    ResourceDetails.add_member(:aurora_db_cluster_storage, Types::ResourceDetails::AuroraDbClusterStorage, ::Smithy::Schema::Shapes::MemberShape.new(target: AuroraDbClusterStorage, name: "auroraDbClusterStorage", traits: {"smithy.api#tags" => ["aurora"]}))
    ResourceDetails.add_member(:dynamo_db_reserved_capacity, Types::ResourceDetails::DynamoDbReservedCapacity, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamoDbReservedCapacity, name: "dynamoDbReservedCapacity"))
    ResourceDetails.add_member(:memory_db_reserved_instances, Types::ResourceDetails::MemoryDbReservedInstances, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryDbReservedInstances, name: "memoryDbReservedInstances"))
    ResourceDetails.add_member(:unknown, Types::ResourceDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResourceDetails.type = Types::ResourceDetails
    ResourceIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePricing.add_member(:estimated_cost_before_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedCostBeforeDiscounts"))
    ResourcePricing.add_member(:estimated_net_unused_amortized_commitments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedNetUnusedAmortizedCommitments"))
    ResourcePricing.add_member(:estimated_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedDiscounts, name: "estimatedDiscounts"))
    ResourcePricing.add_member(:estimated_cost_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedCostAfterDiscounts"))
    ResourcePricing.type = Types::ResourcePricing
    ResourceType.add_member(:ec2_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_INSTANCE", traits: {"smithy.api#enumValue" => "Ec2Instance"}))
    ResourceType.add_member(:lambda_function, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_FUNCTION", traits: {"smithy.api#enumValue" => "LambdaFunction"}))
    ResourceType.add_member(:ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME", traits: {"smithy.api#enumValue" => "EbsVolume"}))
    ResourceType.add_member(:ecs_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_SERVICE", traits: {"smithy.api#enumValue" => "EcsService"}))
    ResourceType.add_member(:ec2_auto_scaling_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_AUTO_SCALING_GROUP", traits: {"smithy.api#enumValue" => "Ec2AutoScalingGroup"}))
    ResourceType.add_member(:ec2_instance_savings_plans, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_INSTANCE_SAVINGS_PLANS", traits: {"smithy.api#enumValue" => "Ec2InstanceSavingsPlans"}))
    ResourceType.add_member(:compute_savings_plans, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPUTE_SAVINGS_PLANS", traits: {"smithy.api#enumValue" => "ComputeSavingsPlans"}))
    ResourceType.add_member(:sage_maker_savings_plans, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAGE_MAKER_SAVINGS_PLANS", traits: {"smithy.api#enumValue" => "SageMakerSavingsPlans"}))
    ResourceType.add_member(:ec2_reserved_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_RESERVED_INSTANCES", traits: {"smithy.api#enumValue" => "Ec2ReservedInstances"}))
    ResourceType.add_member(:rds_reserved_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_RESERVED_INSTANCES", traits: {"smithy.api#enumValue" => "RdsReservedInstances"}))
    ResourceType.add_member(:open_search_reserved_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN_SEARCH_RESERVED_INSTANCES", traits: {"smithy.api#enumValue" => "OpenSearchReservedInstances"}))
    ResourceType.add_member(:redshift_reserved_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDSHIFT_RESERVED_INSTANCES", traits: {"smithy.api#enumValue" => "RedshiftReservedInstances"}))
    ResourceType.add_member(:elasti_cache_reserved_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTI_CACHE_RESERVED_INSTANCES", traits: {"smithy.api#enumValue" => "ElastiCacheReservedInstances"}))
    ResourceType.add_member(:rds_db_instance_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DB_INSTANCE_STORAGE", traits: {"smithy.api#enumValue" => "RdsDbInstanceStorage"}))
    ResourceType.add_member(:rds_db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DB_INSTANCE", traits: {"smithy.api#enumValue" => "RdsDbInstance"}))
    ResourceType.add_member(:aurora_db_cluster_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AURORA_DB_CLUSTER_STORAGE", traits: {"smithy.api#enumValue" => "AuroraDbClusterStorage", "smithy.api#tags" => ["aurora"]}))
    ResourceType.add_member(:dynamo_db_reserved_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DYNAMO_DB_RESERVED_CAPACITY", traits: {"smithy.api#enumValue" => "DynamoDbReservedCapacity"}))
    ResourceType.add_member(:memory_db_reserved_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY_DB_RESERVED_INSTANCES", traits: {"smithy.api#enumValue" => "MemoryDbReservedInstances"}))
    ResourceTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "member")
    SageMakerSavingsPlans.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SageMakerSavingsPlansConfiguration, name: "configuration"))
    SageMakerSavingsPlans.add_member(:cost_calculation, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsPlansCostCalculation, name: "costCalculation"))
    SageMakerSavingsPlans.type = Types::SageMakerSavingsPlans
    SageMakerSavingsPlansConfiguration.add_member(:account_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountScope"))
    SageMakerSavingsPlansConfiguration.add_member(:term, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "term"))
    SageMakerSavingsPlansConfiguration.add_member(:payment_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "paymentOption"))
    SageMakerSavingsPlansConfiguration.add_member(:hourly_commitment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "hourlyCommitment"))
    SageMakerSavingsPlansConfiguration.type = Types::SageMakerSavingsPlansConfiguration
    SavingsEstimationMode.add_member(:before_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE_DISCOUNTS", traits: {"smithy.api#enumValue" => "BeforeDiscounts"}))
    SavingsEstimationMode.add_member(:after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "AfterDiscounts"}))
    SavingsPlansCostCalculation.add_member(:pricing, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsPlansPricing, name: "pricing"))
    SavingsPlansCostCalculation.type = Types::SavingsPlansCostCalculation
    SavingsPlansPricing.add_member(:monthly_savings_plans_eligible_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "monthlySavingsPlansEligibleCost"))
    SavingsPlansPricing.add_member(:estimated_monthly_commitment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedMonthlyCommitment"))
    SavingsPlansPricing.add_member(:savings_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "savingsPercentage"))
    SavingsPlansPricing.add_member(:estimated_on_demand_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "estimatedOnDemandCost"))
    SavingsPlansPricing.type = Types::SavingsPlansPricing
    Source.add_member(:compute_optimizer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPUTE_OPTIMIZER", traits: {"smithy.api#enumValue" => "ComputeOptimizer"}))
    Source.add_member(:cost_explorer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COST_EXPLORER", traits: {"smithy.api#enumValue" => "CostExplorer"}))
    StorageConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type"))
    StorageConfiguration.add_member(:size_in_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "sizeInGb"))
    StorageConfiguration.type = Types::StorageConfiguration
    SummaryMetrics.add_member(:savings_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAVINGS_PERCENTAGE", traits: {"smithy.api#enumValue" => "SavingsPercentage"}))
    SummaryMetricsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryMetrics, name: "member")
    SummaryMetricsResult.add_member(:savings_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "savingsPercentage"))
    SummaryMetricsResult.type = Types::SummaryMetricsResult
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    Tag.type = Types::Tag
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    Term.add_member(:one_year, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_YEAR", traits: {"smithy.api#enumValue" => "OneYear"}))
    Term.add_member(:three_years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THREE_YEARS", traits: {"smithy.api#enumValue" => "ThreeYears"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UpdateEnrollmentStatusRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EnrollmentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateEnrollmentStatusRequest.add_member(:include_member_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includeMemberAccounts"))
    UpdateEnrollmentStatusRequest.type = Types::UpdateEnrollmentStatusRequest
    UpdateEnrollmentStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "status"))
    UpdateEnrollmentStatusResponse.type = Types::UpdateEnrollmentStatusResponse
    UpdatePreferencesRequest.add_member(:savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsEstimationMode, name: "savingsEstimationMode"))
    UpdatePreferencesRequest.add_member(:member_account_discount_visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAccountDiscountVisibility, name: "memberAccountDiscountVisibility"))
    UpdatePreferencesRequest.add_member(:preferred_commitment, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredCommitment, name: "preferredCommitment", traits: {"smithy.api#tags" => ["commitmentPreferences"]}))
    UpdatePreferencesRequest.type = Types::UpdatePreferencesRequest
    UpdatePreferencesResponse.add_member(:savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsEstimationMode, name: "savingsEstimationMode"))
    UpdatePreferencesResponse.add_member(:member_account_discount_visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAccountDiscountVisibility, name: "memberAccountDiscountVisibility"))
    UpdatePreferencesResponse.add_member(:preferred_commitment, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredCommitment, name: "preferredCommitment", traits: {"smithy.api#tags" => ["commitmentPreferences"]}))
    UpdatePreferencesResponse.type = Types::UpdatePreferencesResponse
    Usage.add_member(:usage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "usageType"))
    Usage.add_member(:usage_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "usageAmount"))
    Usage.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operation"))
    Usage.add_member(:product_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "productCode"))
    Usage.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "unit"))
    Usage.type = Types::Usage
    UsageList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Usage, name: "member")
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason"))
    ValidationException.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionDetails, name: "fields"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionDetail.add_member(:field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fieldName", traits: {"smithy.api#required" => {}}))
    ValidationExceptionDetail.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionDetail.type = Types::ValidationExceptionDetail
    ValidationExceptionDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionDetail, name: "member")
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "Other"}))

    CostOptimizationHubService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.costoptimizationhub#CostOptimizationHubService"
      service.name = "CostOptimizationHubService"
      service.version = "2022-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Cost Optimization Hub", "endpointPrefix" => "cost-optimization-hub"}, "aws.auth#sigv4" => {"name" => "cost-optimization-hub"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Cost Optimization Hub"}
      service.add_operation(:get_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costoptimizationhub#GetPreferences"
        operation.name = "GetPreferences"
        operation.input = GetPreferencesRequest
        operation.output = GetPreferencesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costoptimizationhub#GetRecommendation"
        operation.name = "GetRecommendation"
        operation.input = GetRecommendationRequest
        operation.output = GetRecommendationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_enrollment_statuses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costoptimizationhub#ListEnrollmentStatuses"
        operation.name = "ListEnrollmentStatuses"
        operation.input = ListEnrollmentStatusesRequest
        operation.output = ListEnrollmentStatusesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEnrollmentStatuses.new
      end)
      service.add_operation(:list_recommendation_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costoptimizationhub#ListRecommendationSummaries"
        operation.name = "ListRecommendationSummaries"
        operation.input = ListRecommendationSummariesRequest
        operation.output = ListRecommendationSummariesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecommendationSummaries.new
      end)
      service.add_operation(:list_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costoptimizationhub#ListRecommendations"
        operation.name = "ListRecommendations"
        operation.input = ListRecommendationsRequest
        operation.output = ListRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecommendations.new
      end)
      service.add_operation(:update_enrollment_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costoptimizationhub#UpdateEnrollmentStatus"
        operation.name = "UpdateEnrollmentStatus"
        operation.input = UpdateEnrollmentStatusRequest
        operation.output = UpdateEnrollmentStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costoptimizationhub#UpdatePreferences"
        operation.name = "UpdatePreferences"
        operation.input = UpdatePreferencesRequest
        operation.output = UpdatePreferencesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
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
