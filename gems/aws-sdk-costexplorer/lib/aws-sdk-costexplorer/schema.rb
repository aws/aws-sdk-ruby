# frozen_string_literal: true

# This is generated code!

module Aws::CostExplorer
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AccountScope = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#AccountScope', name: 'AccountScope')
    AmortizedRecurringFee = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#AmortizedRecurringFee', name: 'AmortizedRecurringFee')
    AmortizedUpfrontFee = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#AmortizedUpfrontFee', name: 'AmortizedUpfrontFee')
    AnalysisDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#AnalysisDetails', name: 'AnalysisDetails')
    AnalysisId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#AnalysisId', name: 'AnalysisId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[\\S\\s]{8}-[\\S\\s]{4}-[\\S\\s]{4}-[\\S\\s]{4}-[\\S\\s]{12}$"})
    AnalysisIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#AnalysisIds', name: 'AnalysisIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 600}})
    AnalysisNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#AnalysisNotFoundException', name: 'AnalysisNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AnalysisStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#AnalysisStatus', name: 'AnalysisStatus')
    AnalysisSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#AnalysisSummary', name: 'AnalysisSummary')
    AnalysisSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#AnalysisSummaryList', name: 'AnalysisSummaryList')
    AnalysisType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#AnalysisType', name: 'AnalysisType')
    Anomalies = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#Anomalies', name: 'Anomalies')
    Anomaly = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#Anomaly', name: 'Anomaly')
    AnomalyDateInterval = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#AnomalyDateInterval', name: 'AnomalyDateInterval')
    AnomalyFeedbackType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#AnomalyFeedbackType', name: 'AnomalyFeedbackType')
    AnomalyMonitor = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#AnomalyMonitor', name: 'AnomalyMonitor')
    AnomalyMonitors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#AnomalyMonitors', name: 'AnomalyMonitors')
    AnomalyScore = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#AnomalyScore', name: 'AnomalyScore')
    AnomalySubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#AnomalySubscription', name: 'AnomalySubscription')
    AnomalySubscriptionFrequency = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#AnomalySubscriptionFrequency', name: 'AnomalySubscriptionFrequency')
    AnomalySubscriptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#AnomalySubscriptions', name: 'AnomalySubscriptions')
    ApproximateUsageRecordsPerService = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.costexplorer#ApproximateUsageRecordsPerService', name: 'ApproximateUsageRecordsPerService')
    ApproximationDimension = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#ApproximationDimension', name: 'ApproximationDimension')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:[a-z0-9]+:[-a-z0-9]*:[0-9]{12}:[-a-zA-Z0-9/:_]+$"})
    AttributeType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#AttributeType', name: 'AttributeType')
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#AttributeValue', name: 'AttributeValue')
    Attributes = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.costexplorer#Attributes', name: 'Attributes')
    BackfillLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#BackfillLimitExceededException', name: 'BackfillLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BillExpirationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#BillExpirationException', name: 'BillExpirationException', traits: {"smithy.api#error" => "client"})
    BillingViewArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#BillingViewArn', name: 'BillingViewArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z-]*:(billing)::[0-9]{12}:billingview/[-a-zA-Z0-9/:_+=.-@]{1,43}$"})
    CommitmentPurchaseAnalysisConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CommitmentPurchaseAnalysisConfiguration', name: 'CommitmentPurchaseAnalysisConfiguration')
    ComparisonMetricValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ComparisonMetricValue', name: 'ComparisonMetricValue')
    ComparisonMetrics = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.costexplorer#ComparisonMetrics', name: 'ComparisonMetrics')
    Context = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#Context', name: 'Context')
    CostAllocationTag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CostAllocationTag', name: 'CostAllocationTag')
    CostAllocationTagBackfillRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CostAllocationTagBackfillRequest', name: 'CostAllocationTagBackfillRequest')
    CostAllocationTagBackfillRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostAllocationTagBackfillRequestList', name: 'CostAllocationTagBackfillRequestList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    CostAllocationTagBackfillStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#CostAllocationTagBackfillStatus', name: 'CostAllocationTagBackfillStatus')
    CostAllocationTagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostAllocationTagKeyList', name: 'CostAllocationTagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CostAllocationTagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostAllocationTagList', name: 'CostAllocationTagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    CostAllocationTagStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#CostAllocationTagStatus', name: 'CostAllocationTagStatus')
    CostAllocationTagStatusEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CostAllocationTagStatusEntry', name: 'CostAllocationTagStatusEntry')
    CostAllocationTagStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostAllocationTagStatusList', name: 'CostAllocationTagStatusList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    CostAllocationTagType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#CostAllocationTagType', name: 'CostAllocationTagType')
    CostAllocationTagsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.costexplorer#CostAllocationTagsMaxResults', name: 'CostAllocationTagsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    CostAndUsageComparison = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CostAndUsageComparison', name: 'CostAndUsageComparison')
    CostAndUsageComparisons = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostAndUsageComparisons', name: 'CostAndUsageComparisons')
    CostAndUsageComparisonsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.costexplorer#CostAndUsageComparisonsMaxResults', name: 'CostAndUsageComparisonsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 2000}})
    CostCategory = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CostCategory', name: 'CostCategory')
    CostCategoryInheritedValueDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CostCategoryInheritedValueDimension', name: 'CostCategoryInheritedValueDimension')
    CostCategoryInheritedValueDimensionName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#CostCategoryInheritedValueDimensionName', name: 'CostCategoryInheritedValueDimensionName')
    CostCategoryMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.costexplorer#CostCategoryMaxResults', name: 'CostCategoryMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    CostCategoryName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#CostCategoryName', name: 'CostCategoryName', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^(?! )[\\p{L}\\p{N}\\p{Z}-_]*(?<! )$"})
    CostCategoryNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostCategoryNamesList', name: 'CostCategoryNamesList')
    CostCategoryProcessingStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CostCategoryProcessingStatus', name: 'CostCategoryProcessingStatus')
    CostCategoryProcessingStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostCategoryProcessingStatusList', name: 'CostCategoryProcessingStatusList')
    CostCategoryReference = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CostCategoryReference', name: 'CostCategoryReference')
    CostCategoryReferencesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostCategoryReferencesList', name: 'CostCategoryReferencesList')
    CostCategoryRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CostCategoryRule', name: 'CostCategoryRule')
    CostCategoryRuleType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#CostCategoryRuleType', name: 'CostCategoryRuleType')
    CostCategoryRuleVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#CostCategoryRuleVersion', name: 'CostCategoryRuleVersion')
    CostCategoryRulesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostCategoryRulesList', name: 'CostCategoryRulesList', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    CostCategorySplitChargeMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#CostCategorySplitChargeMethod', name: 'CostCategorySplitChargeMethod')
    CostCategorySplitChargeRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CostCategorySplitChargeRule', name: 'CostCategorySplitChargeRule')
    CostCategorySplitChargeRuleParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CostCategorySplitChargeRuleParameter', name: 'CostCategorySplitChargeRuleParameter')
    CostCategorySplitChargeRuleParameterType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#CostCategorySplitChargeRuleParameterType', name: 'CostCategorySplitChargeRuleParameterType')
    CostCategorySplitChargeRuleParameterValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostCategorySplitChargeRuleParameterValuesList', name: 'CostCategorySplitChargeRuleParameterValuesList', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    CostCategorySplitChargeRuleParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostCategorySplitChargeRuleParametersList', name: 'CostCategorySplitChargeRuleParametersList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CostCategorySplitChargeRuleTargetsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostCategorySplitChargeRuleTargetsList', name: 'CostCategorySplitChargeRuleTargetsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    CostCategorySplitChargeRulesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostCategorySplitChargeRulesList', name: 'CostCategorySplitChargeRulesList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    CostCategoryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#CostCategoryStatus', name: 'CostCategoryStatus')
    CostCategoryStatusComponent = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#CostCategoryStatusComponent', name: 'CostCategoryStatusComponent')
    CostCategoryValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#CostCategoryValue', name: 'CostCategoryValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^(?! )[\\p{L}\\p{N}\\p{Z}-_]*(?<! )$"})
    CostCategoryValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CostCategoryValues', name: 'CostCategoryValues')
    CostCategoryValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostCategoryValuesList', name: 'CostCategoryValuesList')
    CostComparisonDriver = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CostComparisonDriver', name: 'CostComparisonDriver')
    CostComparisonDrivers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostComparisonDrivers', name: 'CostComparisonDrivers')
    CostComparisonDriversMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.costexplorer#CostComparisonDriversMaxResults', name: 'CostComparisonDriversMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    CostDriver = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CostDriver', name: 'CostDriver')
    CostDrivers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CostDrivers', name: 'CostDrivers')
    Coverage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#Coverage', name: 'Coverage')
    CoverageByTime = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CoverageByTime', name: 'CoverageByTime')
    CoverageCost = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CoverageCost', name: 'CoverageCost')
    CoverageHours = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CoverageHours', name: 'CoverageHours')
    CoverageHoursPercentage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#CoverageHoursPercentage', name: 'CoverageHoursPercentage')
    CoverageNormalizedUnits = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CoverageNormalizedUnits', name: 'CoverageNormalizedUnits')
    CoverageNormalizedUnitsPercentage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#CoverageNormalizedUnitsPercentage', name: 'CoverageNormalizedUnitsPercentage')
    CoveragesByTime = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#CoveragesByTime', name: 'CoveragesByTime')
    CreateAnomalyMonitorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CreateAnomalyMonitorRequest', name: 'CreateAnomalyMonitorRequest')
    CreateAnomalyMonitorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CreateAnomalyMonitorResponse', name: 'CreateAnomalyMonitorResponse')
    CreateAnomalySubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CreateAnomalySubscriptionRequest', name: 'CreateAnomalySubscriptionRequest')
    CreateAnomalySubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CreateAnomalySubscriptionResponse', name: 'CreateAnomalySubscriptionResponse')
    CreateCostCategoryDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CreateCostCategoryDefinitionRequest', name: 'CreateCostCategoryDefinitionRequest')
    CreateCostCategoryDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CreateCostCategoryDefinitionResponse', name: 'CreateCostCategoryDefinitionResponse')
    CurrentInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#CurrentInstance', name: 'CurrentInstance')
    DataUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#DataUnavailableException', name: 'DataUnavailableException', traits: {"smithy.api#error" => "client"})
    DateInterval = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#DateInterval', name: 'DateInterval')
    DeleteAnomalyMonitorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#DeleteAnomalyMonitorRequest', name: 'DeleteAnomalyMonitorRequest')
    DeleteAnomalyMonitorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#DeleteAnomalyMonitorResponse', name: 'DeleteAnomalyMonitorResponse')
    DeleteAnomalySubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#DeleteAnomalySubscriptionRequest', name: 'DeleteAnomalySubscriptionRequest')
    DeleteAnomalySubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#DeleteAnomalySubscriptionResponse', name: 'DeleteAnomalySubscriptionResponse')
    DeleteCostCategoryDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#DeleteCostCategoryDefinitionRequest', name: 'DeleteCostCategoryDefinitionRequest')
    DeleteCostCategoryDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#DeleteCostCategoryDefinitionResponse', name: 'DeleteCostCategoryDefinitionResponse')
    DescribeCostCategoryDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#DescribeCostCategoryDefinitionRequest', name: 'DescribeCostCategoryDefinitionRequest')
    DescribeCostCategoryDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#DescribeCostCategoryDefinitionResponse', name: 'DescribeCostCategoryDefinitionResponse')
    Dimension = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#Dimension', name: 'Dimension')
    DimensionValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#DimensionValues', name: 'DimensionValues')
    DimensionValuesWithAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#DimensionValuesWithAttributes', name: 'DimensionValuesWithAttributes')
    DimensionValuesWithAttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#DimensionValuesWithAttributesList', name: 'DimensionValuesWithAttributesList')
    DiskResourceUtilization = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#DiskResourceUtilization', name: 'DiskResourceUtilization')
    DynamoDBCapacityDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#DynamoDBCapacityDetails', name: 'DynamoDBCapacityDetails')
    EBSResourceUtilization = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#EBSResourceUtilization', name: 'EBSResourceUtilization')
    EC2InstanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#EC2InstanceDetails', name: 'EC2InstanceDetails')
    EC2ResourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#EC2ResourceDetails', name: 'EC2ResourceDetails')
    EC2ResourceUtilization = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#EC2ResourceUtilization', name: 'EC2ResourceUtilization')
    EC2Specification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#EC2Specification', name: 'EC2Specification')
    ESInstanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ESInstanceDetails', name: 'ESInstanceDetails')
    ElastiCacheInstanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ElastiCacheInstanceDetails', name: 'ElastiCacheInstanceDetails')
    Entity = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#Entity', name: 'Entity')
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#ErrorCode', name: 'ErrorCode')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#ErrorMessage', name: 'ErrorMessage')
    Estimated = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.costexplorer#Estimated', name: 'Estimated', traits: {"smithy.api#default" => false})
    Expression = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#Expression', name: 'Expression')
    Expressions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#Expressions', name: 'Expressions')
    FindingReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#FindingReasonCode', name: 'FindingReasonCode')
    FindingReasonCodes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#FindingReasonCodes', name: 'FindingReasonCodes')
    ForecastResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ForecastResult', name: 'ForecastResult')
    ForecastResultsByTime = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#ForecastResultsByTime', name: 'ForecastResultsByTime')
    GenerationExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GenerationExistsException', name: 'GenerationExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GenerationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#GenerationStatus', name: 'GenerationStatus')
    GenerationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GenerationSummary', name: 'GenerationSummary')
    GenerationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#GenerationSummaryList', name: 'GenerationSummaryList')
    GenericBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.costexplorer#GenericBoolean', name: 'GenericBoolean', traits: {"smithy.api#default" => false})
    GenericDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.costexplorer#GenericDouble', name: 'GenericDouble', traits: {"smithy.api#default" => 0})
    GenericString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#GenericString', name: 'GenericString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    GetAnomaliesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetAnomaliesRequest', name: 'GetAnomaliesRequest')
    GetAnomaliesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetAnomaliesResponse', name: 'GetAnomaliesResponse')
    GetAnomalyMonitorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetAnomalyMonitorsRequest', name: 'GetAnomalyMonitorsRequest')
    GetAnomalyMonitorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetAnomalyMonitorsResponse', name: 'GetAnomalyMonitorsResponse')
    GetAnomalySubscriptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetAnomalySubscriptionsRequest', name: 'GetAnomalySubscriptionsRequest')
    GetAnomalySubscriptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetAnomalySubscriptionsResponse', name: 'GetAnomalySubscriptionsResponse')
    GetApproximateUsageRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetApproximateUsageRecordsRequest', name: 'GetApproximateUsageRecordsRequest')
    GetApproximateUsageRecordsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetApproximateUsageRecordsResponse', name: 'GetApproximateUsageRecordsResponse')
    GetCommitmentPurchaseAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetCommitmentPurchaseAnalysisRequest', name: 'GetCommitmentPurchaseAnalysisRequest')
    GetCommitmentPurchaseAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetCommitmentPurchaseAnalysisResponse', name: 'GetCommitmentPurchaseAnalysisResponse')
    GetCostAndUsageComparisonsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetCostAndUsageComparisonsRequest', name: 'GetCostAndUsageComparisonsRequest')
    GetCostAndUsageComparisonsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetCostAndUsageComparisonsResponse', name: 'GetCostAndUsageComparisonsResponse')
    GetCostAndUsageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetCostAndUsageRequest', name: 'GetCostAndUsageRequest')
    GetCostAndUsageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetCostAndUsageResponse', name: 'GetCostAndUsageResponse')
    GetCostAndUsageWithResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetCostAndUsageWithResourcesRequest', name: 'GetCostAndUsageWithResourcesRequest')
    GetCostAndUsageWithResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetCostAndUsageWithResourcesResponse', name: 'GetCostAndUsageWithResourcesResponse')
    GetCostCategoriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetCostCategoriesRequest', name: 'GetCostCategoriesRequest')
    GetCostCategoriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetCostCategoriesResponse', name: 'GetCostCategoriesResponse')
    GetCostComparisonDriversRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetCostComparisonDriversRequest', name: 'GetCostComparisonDriversRequest')
    GetCostComparisonDriversResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetCostComparisonDriversResponse', name: 'GetCostComparisonDriversResponse')
    GetCostForecastRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetCostForecastRequest', name: 'GetCostForecastRequest')
    GetCostForecastResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetCostForecastResponse', name: 'GetCostForecastResponse')
    GetDimensionValuesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetDimensionValuesRequest', name: 'GetDimensionValuesRequest')
    GetDimensionValuesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetDimensionValuesResponse', name: 'GetDimensionValuesResponse')
    GetReservationCoverageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetReservationCoverageRequest', name: 'GetReservationCoverageRequest')
    GetReservationCoverageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetReservationCoverageResponse', name: 'GetReservationCoverageResponse')
    GetReservationPurchaseRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetReservationPurchaseRecommendationRequest', name: 'GetReservationPurchaseRecommendationRequest')
    GetReservationPurchaseRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetReservationPurchaseRecommendationResponse', name: 'GetReservationPurchaseRecommendationResponse')
    GetReservationUtilizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetReservationUtilizationRequest', name: 'GetReservationUtilizationRequest')
    GetReservationUtilizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetReservationUtilizationResponse', name: 'GetReservationUtilizationResponse')
    GetRightsizingRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetRightsizingRecommendationRequest', name: 'GetRightsizingRecommendationRequest')
    GetRightsizingRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetRightsizingRecommendationResponse', name: 'GetRightsizingRecommendationResponse')
    GetSavingsPlanPurchaseRecommendationDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetSavingsPlanPurchaseRecommendationDetailsRequest', name: 'GetSavingsPlanPurchaseRecommendationDetailsRequest')
    GetSavingsPlanPurchaseRecommendationDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetSavingsPlanPurchaseRecommendationDetailsResponse', name: 'GetSavingsPlanPurchaseRecommendationDetailsResponse')
    GetSavingsPlansCoverageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetSavingsPlansCoverageRequest', name: 'GetSavingsPlansCoverageRequest')
    GetSavingsPlansCoverageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetSavingsPlansCoverageResponse', name: 'GetSavingsPlansCoverageResponse')
    GetSavingsPlansPurchaseRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetSavingsPlansPurchaseRecommendationRequest', name: 'GetSavingsPlansPurchaseRecommendationRequest')
    GetSavingsPlansPurchaseRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetSavingsPlansPurchaseRecommendationResponse', name: 'GetSavingsPlansPurchaseRecommendationResponse')
    GetSavingsPlansUtilizationDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetSavingsPlansUtilizationDetailsRequest', name: 'GetSavingsPlansUtilizationDetailsRequest')
    GetSavingsPlansUtilizationDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetSavingsPlansUtilizationDetailsResponse', name: 'GetSavingsPlansUtilizationDetailsResponse')
    GetSavingsPlansUtilizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetSavingsPlansUtilizationRequest', name: 'GetSavingsPlansUtilizationRequest')
    GetSavingsPlansUtilizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetSavingsPlansUtilizationResponse', name: 'GetSavingsPlansUtilizationResponse')
    GetTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetTagsRequest', name: 'GetTagsRequest')
    GetTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetTagsResponse', name: 'GetTagsResponse')
    GetUsageForecastRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetUsageForecastRequest', name: 'GetUsageForecastRequest')
    GetUsageForecastResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GetUsageForecastResponse', name: 'GetUsageForecastResponse')
    Granularity = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#Granularity', name: 'Granularity')
    Group = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#Group', name: 'Group')
    GroupDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#GroupDefinition', name: 'GroupDefinition')
    GroupDefinitionKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#GroupDefinitionKey', name: 'GroupDefinitionKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    GroupDefinitionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#GroupDefinitionType', name: 'GroupDefinitionType')
    GroupDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#GroupDefinitions', name: 'GroupDefinitions')
    Groups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#Groups', name: 'Groups')
    Impact = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#Impact', name: 'Impact')
    InstanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#InstanceDetails', name: 'InstanceDetails')
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client"})
    Key = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#Key', name: 'Key')
    Keys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#Keys', name: 'Keys')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListCommitmentPurchaseAnalysesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ListCommitmentPurchaseAnalysesRequest', name: 'ListCommitmentPurchaseAnalysesRequest')
    ListCommitmentPurchaseAnalysesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ListCommitmentPurchaseAnalysesResponse', name: 'ListCommitmentPurchaseAnalysesResponse')
    ListCostAllocationTagBackfillHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ListCostAllocationTagBackfillHistoryRequest', name: 'ListCostAllocationTagBackfillHistoryRequest')
    ListCostAllocationTagBackfillHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ListCostAllocationTagBackfillHistoryResponse', name: 'ListCostAllocationTagBackfillHistoryResponse')
    ListCostAllocationTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ListCostAllocationTagsRequest', name: 'ListCostAllocationTagsRequest')
    ListCostAllocationTagsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ListCostAllocationTagsResponse', name: 'ListCostAllocationTagsResponse')
    ListCostCategoryDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ListCostCategoryDefinitionsRequest', name: 'ListCostCategoryDefinitionsRequest')
    ListCostCategoryDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ListCostCategoryDefinitionsResponse', name: 'ListCostCategoryDefinitionsResponse')
    ListSavingsPlansPurchaseRecommendationGenerationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ListSavingsPlansPurchaseRecommendationGenerationRequest', name: 'ListSavingsPlansPurchaseRecommendationGenerationRequest')
    ListSavingsPlansPurchaseRecommendationGenerationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ListSavingsPlansPurchaseRecommendationGenerationResponse', name: 'ListSavingsPlansPurchaseRecommendationGenerationResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LookbackPeriodInDays = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#LookbackPeriodInDays', name: 'LookbackPeriodInDays')
    MatchOption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#MatchOption', name: 'MatchOption')
    MatchOptions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#MatchOptions', name: 'MatchOptions')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.costexplorer#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1}})
    MemoryDBInstanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#MemoryDBInstanceDetails', name: 'MemoryDBInstanceDetails')
    Metric = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#Metric', name: 'Metric')
    MetricAmount = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#MetricAmount', name: 'MetricAmount')
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#MetricName', name: 'MetricName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    MetricNames = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#MetricNames', name: 'MetricNames')
    MetricUnit = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#MetricUnit', name: 'MetricUnit')
    MetricValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#MetricValue', name: 'MetricValue')
    Metrics = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.costexplorer#Metrics', name: 'Metrics')
    MetricsOverLookbackPeriod = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#MetricsOverLookbackPeriod', name: 'MetricsOverLookbackPeriod')
    ModifyRecommendationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ModifyRecommendationDetail', name: 'ModifyRecommendationDetail')
    MonitorArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#MonitorArnList', name: 'MonitorArnList')
    MonitorDimension = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#MonitorDimension', name: 'MonitorDimension')
    MonitorType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#MonitorType', name: 'MonitorType')
    NetRISavings = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#NetRISavings', name: 'NetRISavings')
    NetworkResourceUtilization = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#NetworkResourceUtilization', name: 'NetworkResourceUtilization')
    NextPageToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#NextPageToken', name: 'NextPageToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    NonNegativeInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.costexplorer#NonNegativeInteger', name: 'NonNegativeInteger', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    NonNegativeLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.costexplorer#NonNegativeLong', name: 'NonNegativeLong', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    NullableNonNegativeDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.costexplorer#NullableNonNegativeDouble', name: 'NullableNonNegativeDouble', traits: {"smithy.api#range" => {"min" => 0.0}})
    NumericOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#NumericOperator', name: 'NumericOperator')
    OfferingClass = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#OfferingClass', name: 'OfferingClass')
    OnDemandCost = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#OnDemandCost', name: 'OnDemandCost')
    OnDemandCostOfRIHoursUsed = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#OnDemandCostOfRIHoursUsed', name: 'OnDemandCostOfRIHoursUsed')
    OnDemandHours = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#OnDemandHours', name: 'OnDemandHours')
    OnDemandNormalizedUnits = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#OnDemandNormalizedUnits', name: 'OnDemandNormalizedUnits')
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.costexplorer#PageSize', name: 'PageSize')
    PaymentOption = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#PaymentOption', name: 'PaymentOption')
    PlatformDifference = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#PlatformDifference', name: 'PlatformDifference')
    PlatformDifferences = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#PlatformDifferences', name: 'PlatformDifferences')
    PredictionIntervalLevel = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.costexplorer#PredictionIntervalLevel', name: 'PredictionIntervalLevel', traits: {"smithy.api#range" => {"min" => 51, "max" => 99}})
    ProvideAnomalyFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ProvideAnomalyFeedbackRequest', name: 'ProvideAnomalyFeedbackRequest')
    ProvideAnomalyFeedbackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ProvideAnomalyFeedbackResponse', name: 'ProvideAnomalyFeedbackResponse')
    PurchasedHours = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#PurchasedHours', name: 'PurchasedHours')
    PurchasedUnits = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#PurchasedUnits', name: 'PurchasedUnits')
    RDSInstanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#RDSInstanceDetails', name: 'RDSInstanceDetails')
    RICostForUnusedHours = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#RICostForUnusedHours', name: 'RICostForUnusedHours')
    RealizedSavings = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#RealizedSavings', name: 'RealizedSavings')
    RecommendationDetailData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#RecommendationDetailData', name: 'RecommendationDetailData')
    RecommendationDetailHourlyMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#RecommendationDetailHourlyMetrics', name: 'RecommendationDetailHourlyMetrics')
    RecommendationDetailId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#RecommendationDetailId', name: 'RecommendationDetailId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[\\S\\s]{8}-[\\S\\s]{4}-[\\S\\s]{4}-[\\S\\s]{4}-[\\S\\s]{12}$"})
    RecommendationId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#RecommendationId', name: 'RecommendationId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[\\S\\s]{8}-[\\S\\s]{4}-[\\S\\s]{4}-[\\S\\s]{4}-[\\S\\s]{12}$"})
    RecommendationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#RecommendationIdList', name: 'RecommendationIdList')
    RecommendationTarget = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#RecommendationTarget', name: 'RecommendationTarget')
    RedshiftInstanceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#RedshiftInstanceDetails', name: 'RedshiftInstanceDetails')
    RequestChangedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#RequestChangedException', name: 'RequestChangedException', traits: {"smithy.api#error" => "client"})
    ReservationAggregates = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ReservationAggregates', name: 'ReservationAggregates')
    ReservationCoverageGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ReservationCoverageGroup', name: 'ReservationCoverageGroup')
    ReservationCoverageGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#ReservationCoverageGroups', name: 'ReservationCoverageGroups')
    ReservationGroupKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#ReservationGroupKey', name: 'ReservationGroupKey')
    ReservationGroupValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#ReservationGroupValue', name: 'ReservationGroupValue')
    ReservationPurchaseRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ReservationPurchaseRecommendation', name: 'ReservationPurchaseRecommendation')
    ReservationPurchaseRecommendationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ReservationPurchaseRecommendationDetail', name: 'ReservationPurchaseRecommendationDetail')
    ReservationPurchaseRecommendationDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#ReservationPurchaseRecommendationDetails', name: 'ReservationPurchaseRecommendationDetails')
    ReservationPurchaseRecommendationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ReservationPurchaseRecommendationMetadata', name: 'ReservationPurchaseRecommendationMetadata')
    ReservationPurchaseRecommendationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ReservationPurchaseRecommendationSummary', name: 'ReservationPurchaseRecommendationSummary')
    ReservationPurchaseRecommendations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#ReservationPurchaseRecommendations', name: 'ReservationPurchaseRecommendations')
    ReservationUtilizationGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ReservationUtilizationGroup', name: 'ReservationUtilizationGroup')
    ReservationUtilizationGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#ReservationUtilizationGroups', name: 'ReservationUtilizationGroups')
    ReservedCapacityDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ReservedCapacityDetails', name: 'ReservedCapacityDetails')
    ReservedHours = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#ReservedHours', name: 'ReservedHours')
    ReservedNormalizedUnits = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#ReservedNormalizedUnits', name: 'ReservedNormalizedUnits')
    ResourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ResourceDetails', name: 'ResourceDetails')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ResourceTag', name: 'ResourceTag')
    ResourceTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#ResourceTagKey', name: 'ResourceTagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ResourceTagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#ResourceTagKeyList', name: 'ResourceTagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#ResourceTagList', name: 'ResourceTagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    ResourceTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#ResourceTagValue', name: 'ResourceTagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ResourceUtilization = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ResourceUtilization', name: 'ResourceUtilization')
    ResultByTime = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ResultByTime', name: 'ResultByTime')
    ResultsByTime = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#ResultsByTime', name: 'ResultsByTime')
    RightsizingRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#RightsizingRecommendation', name: 'RightsizingRecommendation')
    RightsizingRecommendationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#RightsizingRecommendationConfiguration', name: 'RightsizingRecommendationConfiguration')
    RightsizingRecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#RightsizingRecommendationList', name: 'RightsizingRecommendationList')
    RightsizingRecommendationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#RightsizingRecommendationMetadata', name: 'RightsizingRecommendationMetadata')
    RightsizingRecommendationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#RightsizingRecommendationSummary', name: 'RightsizingRecommendationSummary')
    RightsizingType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#RightsizingType', name: 'RightsizingType')
    RootCause = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#RootCause', name: 'RootCause')
    RootCauseImpact = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#RootCauseImpact', name: 'RootCauseImpact')
    RootCauses = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#RootCauses', name: 'RootCauses')
    SavingsPlanArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#SavingsPlanArn', name: 'SavingsPlanArn')
    SavingsPlans = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlans', name: 'SavingsPlans')
    SavingsPlansAmortizedCommitment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansAmortizedCommitment', name: 'SavingsPlansAmortizedCommitment')
    SavingsPlansCommitment = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansCommitment', name: 'SavingsPlansCommitment', traits: {"smithy.api#range" => {"min" => 0.001, "max" => 5000}})
    SavingsPlansCoverage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansCoverage', name: 'SavingsPlansCoverage')
    SavingsPlansCoverageData = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansCoverageData', name: 'SavingsPlansCoverageData')
    SavingsPlansCoverages = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansCoverages', name: 'SavingsPlansCoverages')
    SavingsPlansDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansDataType', name: 'SavingsPlansDataType')
    SavingsPlansDataTypes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansDataTypes', name: 'SavingsPlansDataTypes')
    SavingsPlansDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansDetails', name: 'SavingsPlansDetails')
    SavingsPlansId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansId', name: 'SavingsPlansId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[\\S\\s]{8}-[\\S\\s]{4}-[\\S\\s]{4}-[\\S\\s]{4}-[\\S\\s]{12}$"})
    SavingsPlansPurchaseAnalysisConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansPurchaseAnalysisConfiguration', name: 'SavingsPlansPurchaseAnalysisConfiguration')
    SavingsPlansPurchaseAnalysisDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansPurchaseAnalysisDetails', name: 'SavingsPlansPurchaseAnalysisDetails')
    SavingsPlansPurchaseRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansPurchaseRecommendation', name: 'SavingsPlansPurchaseRecommendation')
    SavingsPlansPurchaseRecommendationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansPurchaseRecommendationDetail', name: 'SavingsPlansPurchaseRecommendationDetail')
    SavingsPlansPurchaseRecommendationDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansPurchaseRecommendationDetailList', name: 'SavingsPlansPurchaseRecommendationDetailList')
    SavingsPlansPurchaseRecommendationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansPurchaseRecommendationMetadata', name: 'SavingsPlansPurchaseRecommendationMetadata')
    SavingsPlansPurchaseRecommendationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansPurchaseRecommendationSummary', name: 'SavingsPlansPurchaseRecommendationSummary')
    SavingsPlansSavings = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansSavings', name: 'SavingsPlansSavings')
    SavingsPlansToAdd = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansToAdd', name: 'SavingsPlansToAdd', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SavingsPlansToExclude = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansToExclude', name: 'SavingsPlansToExclude', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    SavingsPlansUtilization = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansUtilization', name: 'SavingsPlansUtilization')
    SavingsPlansUtilizationAggregates = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansUtilizationAggregates', name: 'SavingsPlansUtilizationAggregates')
    SavingsPlansUtilizationByTime = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansUtilizationByTime', name: 'SavingsPlansUtilizationByTime')
    SavingsPlansUtilizationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansUtilizationDetail', name: 'SavingsPlansUtilizationDetail')
    SavingsPlansUtilizationDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansUtilizationDetails', name: 'SavingsPlansUtilizationDetails')
    SavingsPlansUtilizationsByTime = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#SavingsPlansUtilizationsByTime', name: 'SavingsPlansUtilizationsByTime')
    SearchString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#SearchString', name: 'SearchString', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#ServiceSpecification', name: 'ServiceSpecification')
    SortDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#SortDefinition', name: 'SortDefinition')
    SortDefinitionKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#SortDefinitionKey', name: 'SortDefinitionKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    SortDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#SortDefinitions', name: 'SortDefinitions')
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#SortOrder', name: 'SortOrder')
    StartCommitmentPurchaseAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#StartCommitmentPurchaseAnalysisRequest', name: 'StartCommitmentPurchaseAnalysisRequest')
    StartCommitmentPurchaseAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#StartCommitmentPurchaseAnalysisResponse', name: 'StartCommitmentPurchaseAnalysisResponse')
    StartCostAllocationTagBackfillRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#StartCostAllocationTagBackfillRequest', name: 'StartCostAllocationTagBackfillRequest')
    StartCostAllocationTagBackfillResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#StartCostAllocationTagBackfillResponse', name: 'StartCostAllocationTagBackfillResponse')
    StartSavingsPlansPurchaseRecommendationGenerationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#StartSavingsPlansPurchaseRecommendationGenerationRequest', name: 'StartSavingsPlansPurchaseRecommendationGenerationRequest')
    StartSavingsPlansPurchaseRecommendationGenerationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#StartSavingsPlansPurchaseRecommendationGenerationResponse', name: 'StartSavingsPlansPurchaseRecommendationGenerationResponse')
    Subscriber = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#Subscriber', name: 'Subscriber')
    SubscriberAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#SubscriberAddress', name: 'SubscriberAddress', traits: {"smithy.api#length" => {"min" => 6, "max" => 302}, "smithy.api#pattern" => "^(^[a-zA-Z0-9.!\#$%&'*+=?^_‘{|}~-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$)|(^arn:(aws[a-zA-Z-]*):sns:[a-zA-Z0-9-]+:[0-9]{12}:[a-zA-Z0-9_-]+(\\.fifo)?$)$"})
    SubscriberStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#SubscriberStatus', name: 'SubscriberStatus')
    SubscriberType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#SubscriberType', name: 'SubscriberType')
    Subscribers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#Subscribers', name: 'Subscribers')
    SupportedSavingsPlansType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#SupportedSavingsPlansType', name: 'SupportedSavingsPlansType')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#TagList', name: 'TagList')
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#TagResourceResponse', name: 'TagResourceResponse')
    TagValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#TagValues', name: 'TagValues')
    TagValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#TagValuesList', name: 'TagValuesList')
    TargetInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#TargetInstance', name: 'TargetInstance')
    TargetInstancesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#TargetInstancesList', name: 'TargetInstancesList')
    TermInYears = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.costexplorer#TermInYears', name: 'TermInYears')
    TerminateRecommendationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#TerminateRecommendationDetail', name: 'TerminateRecommendationDetail')
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TotalActualHours = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#TotalActualHours', name: 'TotalActualHours')
    TotalActualUnits = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#TotalActualUnits', name: 'TotalActualUnits')
    TotalAmortizedFee = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#TotalAmortizedFee', name: 'TotalAmortizedFee')
    TotalImpactFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#TotalImpactFilter', name: 'TotalImpactFilter')
    TotalPotentialRISavings = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#TotalPotentialRISavings', name: 'TotalPotentialRISavings')
    TotalRunningHours = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#TotalRunningHours', name: 'TotalRunningHours')
    TotalRunningNormalizedUnits = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#TotalRunningNormalizedUnits', name: 'TotalRunningNormalizedUnits')
    UnknownMonitorException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#UnknownMonitorException', name: 'UnknownMonitorException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UnknownSubscriptionException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#UnknownSubscriptionException', name: 'UnknownSubscriptionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UnrealizedSavings = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#UnrealizedSavings', name: 'UnrealizedSavings')
    UnresolvableUsageUnitException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#UnresolvableUsageUnitException', name: 'UnresolvableUsageUnitException', traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#UntagResourceResponse', name: 'UntagResourceResponse')
    UnusedHours = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#UnusedHours', name: 'UnusedHours')
    UnusedUnits = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#UnusedUnits', name: 'UnusedUnits')
    UpdateAnomalyMonitorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#UpdateAnomalyMonitorRequest', name: 'UpdateAnomalyMonitorRequest')
    UpdateAnomalyMonitorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#UpdateAnomalyMonitorResponse', name: 'UpdateAnomalyMonitorResponse')
    UpdateAnomalySubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#UpdateAnomalySubscriptionRequest', name: 'UpdateAnomalySubscriptionRequest')
    UpdateAnomalySubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#UpdateAnomalySubscriptionResponse', name: 'UpdateAnomalySubscriptionResponse')
    UpdateCostAllocationTagsStatusError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#UpdateCostAllocationTagsStatusError', name: 'UpdateCostAllocationTagsStatusError')
    UpdateCostAllocationTagsStatusErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#UpdateCostAllocationTagsStatusErrors', name: 'UpdateCostAllocationTagsStatusErrors', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    UpdateCostAllocationTagsStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#UpdateCostAllocationTagsStatusRequest', name: 'UpdateCostAllocationTagsStatusRequest')
    UpdateCostAllocationTagsStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#UpdateCostAllocationTagsStatusResponse', name: 'UpdateCostAllocationTagsStatusResponse')
    UpdateCostCategoryDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#UpdateCostCategoryDefinitionRequest', name: 'UpdateCostCategoryDefinitionRequest')
    UpdateCostCategoryDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#UpdateCostCategoryDefinitionResponse', name: 'UpdateCostCategoryDefinitionResponse')
    UsageServices = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#UsageServices', name: 'UsageServices')
    UtilizationByTime = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.costexplorer#UtilizationByTime', name: 'UtilizationByTime')
    UtilizationPercentage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#UtilizationPercentage', name: 'UtilizationPercentage')
    UtilizationPercentageInUnits = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#UtilizationPercentageInUnits', name: 'UtilizationPercentageInUnits')
    UtilizationsByTime = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#UtilizationsByTime', name: 'UtilizationsByTime')
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#Value', name: 'Value', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\S\\s]*$"})
    Values = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.costexplorer#Values', name: 'Values')
    YearMonthDay = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#YearMonthDay', name: 'YearMonthDay', traits: {"smithy.api#length" => {"min" => 0, "max" => 40}, "smithy.api#pattern" => "^(\\d{4}-\\d{2}-\\d{2})(T\\d{2}:\\d{2}:\\d{2}Z)?$"})
    ZonedDateTime = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.costexplorer#ZonedDateTime', name: 'ZonedDateTime', traits: {"smithy.api#length" => {"min" => 20, "max" => 25}, "smithy.api#pattern" => "^\\d{4}-\\d\\d-\\d\\dT\\d\\d:\\d\\d:\\d\\d(([+-]\\d\\d:\\d\\d)|Z)$"})

    AccountScope.add_member(:payer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAYER', traits: {"smithy.api#enumValue" => "PAYER"}))
    AccountScope.add_member(:linked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINKED', traits: {"smithy.api#enumValue" => "LINKED"}))
    AnalysisDetails.add_member(:savings_plans_purchase_analysis_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansPurchaseAnalysisDetails, location_name: 'SavingsPlansPurchaseAnalysisDetails'))
    AnalysisDetails.type = Types::AnalysisDetails
    AnalysisIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisId)
    AnalysisNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AnalysisNotFoundException.type = Types::AnalysisNotFoundException
    AnalysisStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    AnalysisStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    AnalysisStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    AnalysisSummary.add_member(:estimated_completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EstimatedCompletionTime'))
    AnalysisSummary.add_member(:analysis_completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'AnalysisCompletionTime'))
    AnalysisSummary.add_member(:analysis_started_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'AnalysisStartedTime'))
    AnalysisSummary.add_member(:analysis_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisStatus, location_name: 'AnalysisStatus'))
    AnalysisSummary.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    AnalysisSummary.add_member(:analysis_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisId, location_name: 'AnalysisId'))
    AnalysisSummary.add_member(:commitment_purchase_analysis_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitmentPurchaseAnalysisConfiguration, location_name: 'CommitmentPurchaseAnalysisConfiguration'))
    AnalysisSummary.type = Types::AnalysisSummary
    AnalysisSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisSummary)
    AnalysisType.add_member(:max_savings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_SAVINGS', traits: {"smithy.api#enumValue" => "MAX_SAVINGS"}))
    AnalysisType.add_member(:custom_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_COMMITMENT', traits: {"smithy.api#enumValue" => "CUSTOM_COMMITMENT"}))
    Anomalies.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Anomaly)
    Anomaly.add_member(:anomaly_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AnomalyId', traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:anomaly_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: YearMonthDay, location_name: 'AnomalyStartDate'))
    Anomaly.add_member(:anomaly_end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: YearMonthDay, location_name: 'AnomalyEndDate'))
    Anomaly.add_member(:dimension_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'DimensionValue'))
    Anomaly.add_member(:root_causes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootCauses, location_name: 'RootCauses'))
    Anomaly.add_member(:anomaly_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyScore, location_name: 'AnomalyScore', traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:impact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Impact, location_name: 'Impact', traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:monitor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MonitorArn', traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:feedback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyFeedbackType, location_name: 'Feedback'))
    Anomaly.type = Types::Anomaly
    AnomalyDateInterval.add_member(:start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: YearMonthDay, location_name: 'StartDate', traits: {"smithy.api#required" => {}}))
    AnomalyDateInterval.add_member(:end_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: YearMonthDay, location_name: 'EndDate'))
    AnomalyDateInterval.type = Types::AnomalyDateInterval
    AnomalyFeedbackType.add_member(:yes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'YES', traits: {"smithy.api#enumValue" => "YES"}))
    AnomalyFeedbackType.add_member(:no, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO', traits: {"smithy.api#enumValue" => "NO"}))
    AnomalyFeedbackType.add_member(:planned_activity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLANNED_ACTIVITY', traits: {"smithy.api#enumValue" => "PLANNED_ACTIVITY"}))
    AnomalyMonitor.add_member(:monitor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MonitorArn'))
    AnomalyMonitor.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MonitorName', traits: {"smithy.api#required" => {}}))
    AnomalyMonitor.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: YearMonthDay, location_name: 'CreationDate'))
    AnomalyMonitor.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: YearMonthDay, location_name: 'LastUpdatedDate'))
    AnomalyMonitor.add_member(:last_evaluated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: YearMonthDay, location_name: 'LastEvaluatedDate'))
    AnomalyMonitor.add_member(:monitor_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorType, location_name: 'MonitorType', traits: {"smithy.api#required" => {}}))
    AnomalyMonitor.add_member(:monitor_dimension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorDimension, location_name: 'MonitorDimension'))
    AnomalyMonitor.add_member(:monitor_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'MonitorSpecification'))
    AnomalyMonitor.add_member(:dimensional_value_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'DimensionalValueCount', traits: {"smithy.api#default" => 0}))
    AnomalyMonitor.type = Types::AnomalyMonitor
    AnomalyMonitors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyMonitor)
    AnomalyScore.add_member(:max_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericDouble, location_name: 'MaxScore', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AnomalyScore.add_member(:current_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericDouble, location_name: 'CurrentScore', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    AnomalyScore.type = Types::AnomalyScore
    AnomalySubscription.add_member(:subscription_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'SubscriptionArn'))
    AnomalySubscription.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AccountId'))
    AnomalySubscription.add_member(:monitor_arn_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorArnList, location_name: 'MonitorArnList', traits: {"smithy.api#required" => {}}))
    AnomalySubscription.add_member(:subscribers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscribers, location_name: 'Subscribers', traits: {"smithy.api#required" => {}}))
    AnomalySubscription.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableNonNegativeDouble, location_name: 'Threshold', traits: {"smithy.api#deprecated" => {"message" => "Threshold has been deprecated in favor of ThresholdExpression"}}))
    AnomalySubscription.add_member(:frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySubscriptionFrequency, location_name: 'Frequency', traits: {"smithy.api#required" => {}}))
    AnomalySubscription.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'SubscriptionName', traits: {"smithy.api#required" => {}}))
    AnomalySubscription.add_member(:threshold_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'ThresholdExpression'))
    AnomalySubscription.type = Types::AnomalySubscription
    AnomalySubscriptionFrequency.add_member(:daily, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAILY', traits: {"smithy.api#enumValue" => "DAILY"}))
    AnomalySubscriptionFrequency.add_member(:immediate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMMEDIATE', traits: {"smithy.api#enumValue" => "IMMEDIATE"}))
    AnomalySubscriptionFrequency.add_member(:weekly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEKLY', traits: {"smithy.api#enumValue" => "WEEKLY"}))
    AnomalySubscriptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySubscription)
    ApproximateUsageRecordsPerService.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString)
    ApproximateUsageRecordsPerService.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeLong)
    ApproximationDimension.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE', traits: {"smithy.api#enumValue" => "SERVICE"}))
    ApproximationDimension.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE', traits: {"smithy.api#enumValue" => "RESOURCE"}))
    Attributes.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeType)
    Attributes.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    BackfillLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    BackfillLimitExceededException.type = Types::BackfillLimitExceededException
    BillExpirationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    BillExpirationException.type = Types::BillExpirationException
    CommitmentPurchaseAnalysisConfiguration.add_member(:savings_plans_purchase_analysis_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansPurchaseAnalysisConfiguration, location_name: 'SavingsPlansPurchaseAnalysisConfiguration'))
    CommitmentPurchaseAnalysisConfiguration.type = Types::CommitmentPurchaseAnalysisConfiguration
    ComparisonMetricValue.add_member(:baseline_time_period_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'BaselineTimePeriodAmount'))
    ComparisonMetricValue.add_member(:comparison_time_period_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ComparisonTimePeriodAmount'))
    ComparisonMetricValue.add_member(:difference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Difference'))
    ComparisonMetricValue.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Unit'))
    ComparisonMetricValue.type = Types::ComparisonMetricValue
    ComparisonMetrics.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName)
    ComparisonMetrics.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonMetricValue)
    Context.add_member(:cost_and_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COST_AND_USAGE', traits: {"smithy.api#enumValue" => "COST_AND_USAGE"}))
    Context.add_member(:reservations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESERVATIONS', traits: {"smithy.api#enumValue" => "RESERVATIONS"}))
    Context.add_member(:savings_plans, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAVINGS_PLANS', traits: {"smithy.api#enumValue" => "SAVINGS_PLANS"}))
    CostAllocationTag.add_member(:tag_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'TagKey', traits: {"smithy.api#required" => {}}))
    CostAllocationTag.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTagType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    CostAllocationTag.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTagStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    CostAllocationTag.add_member(:last_updated_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'LastUpdatedDate'))
    CostAllocationTag.add_member(:last_used_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'LastUsedDate'))
    CostAllocationTag.type = Types::CostAllocationTag
    CostAllocationTagBackfillRequest.add_member(:backfill_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'BackfillFrom'))
    CostAllocationTagBackfillRequest.add_member(:requested_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'RequestedAt'))
    CostAllocationTagBackfillRequest.add_member(:completed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'CompletedAt'))
    CostAllocationTagBackfillRequest.add_member(:backfill_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTagBackfillStatus, location_name: 'BackfillStatus'))
    CostAllocationTagBackfillRequest.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'LastUpdatedAt'))
    CostAllocationTagBackfillRequest.type = Types::CostAllocationTagBackfillRequest
    CostAllocationTagBackfillRequestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTagBackfillRequest)
    CostAllocationTagBackfillStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    CostAllocationTagBackfillStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    CostAllocationTagBackfillStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CostAllocationTagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    CostAllocationTagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTag)
    CostAllocationTagStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "Active"}))
    CostAllocationTagStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "Inactive"}))
    CostAllocationTagStatusEntry.add_member(:tag_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'TagKey', traits: {"smithy.api#required" => {}}))
    CostAllocationTagStatusEntry.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTagStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    CostAllocationTagStatusEntry.type = Types::CostAllocationTagStatusEntry
    CostAllocationTagStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTagStatusEntry)
    CostAllocationTagType.add_member(:aws_generated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_GENERATED', traits: {"smithy.api#enumValue" => "AWSGenerated"}))
    CostAllocationTagType.add_member(:user_defined, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_DEFINED', traits: {"smithy.api#enumValue" => "UserDefined"}))
    CostAndUsageComparison.add_member(:cost_and_usage_selector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'CostAndUsageSelector'))
    CostAndUsageComparison.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonMetrics, location_name: 'Metrics'))
    CostAndUsageComparison.type = Types::CostAndUsageComparison
    CostAndUsageComparisons.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAndUsageComparison)
    CostCategory.add_member(:cost_category_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CostCategoryArn', traits: {"smithy.api#required" => {}}))
    CostCategory.add_member(:effective_start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EffectiveStart', traits: {"smithy.api#required" => {}}))
    CostCategory.add_member(:effective_end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EffectiveEnd'))
    CostCategory.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CostCategory.add_member(:rule_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryRuleVersion, location_name: 'RuleVersion', traits: {"smithy.api#required" => {}}))
    CostCategory.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryRulesList, location_name: 'Rules', traits: {"smithy.api#required" => {}}))
    CostCategory.add_member(:split_charge_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategorySplitChargeRulesList, location_name: 'SplitChargeRules'))
    CostCategory.add_member(:processing_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryProcessingStatusList, location_name: 'ProcessingStatus'))
    CostCategory.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryValue, location_name: 'DefaultValue'))
    CostCategory.type = Types::CostCategory
    CostCategoryInheritedValueDimension.add_member(:dimension_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryInheritedValueDimensionName, location_name: 'DimensionName'))
    CostCategoryInheritedValueDimension.add_member(:dimension_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'DimensionKey'))
    CostCategoryInheritedValueDimension.type = Types::CostCategoryInheritedValueDimension
    CostCategoryInheritedValueDimensionName.add_member(:linked_account_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINKED_ACCOUNT_NAME', traits: {"smithy.api#enumValue" => "LINKED_ACCOUNT_NAME"}))
    CostCategoryInheritedValueDimensionName.add_member(:tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAG', traits: {"smithy.api#enumValue" => "TAG"}))
    CostCategoryNamesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryName)
    CostCategoryProcessingStatus.add_member(:component, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryStatusComponent, location_name: 'Component'))
    CostCategoryProcessingStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryStatus, location_name: 'Status'))
    CostCategoryProcessingStatus.type = Types::CostCategoryProcessingStatus
    CostCategoryProcessingStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryProcessingStatus)
    CostCategoryReference.add_member(:cost_category_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CostCategoryArn'))
    CostCategoryReference.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryName, location_name: 'Name'))
    CostCategoryReference.add_member(:effective_start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EffectiveStart'))
    CostCategoryReference.add_member(:effective_end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EffectiveEnd'))
    CostCategoryReference.add_member(:number_of_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'NumberOfRules', traits: {"smithy.api#default" => 0}))
    CostCategoryReference.add_member(:processing_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryProcessingStatusList, location_name: 'ProcessingStatus'))
    CostCategoryReference.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryValuesList, location_name: 'Values'))
    CostCategoryReference.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryValue, location_name: 'DefaultValue'))
    CostCategoryReference.type = Types::CostCategoryReference
    CostCategoryReferencesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryReference)
    CostCategoryRule.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryValue, location_name: 'Value'))
    CostCategoryRule.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Rule'))
    CostCategoryRule.add_member(:inherited_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryInheritedValueDimension, location_name: 'InheritedValue'))
    CostCategoryRule.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryRuleType, location_name: 'Type'))
    CostCategoryRule.type = Types::CostCategoryRule
    CostCategoryRuleType.add_member(:regular, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGULAR', traits: {"smithy.api#enumValue" => "REGULAR"}))
    CostCategoryRuleType.add_member(:inherited_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INHERITED_VALUE', traits: {"smithy.api#enumValue" => "INHERITED_VALUE"}))
    CostCategoryRuleVersion.add_member(:cost_category_expression_v1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CostCategoryExpressionV1', traits: {"smithy.api#enumValue" => "CostCategoryExpression.v1"}))
    CostCategoryRulesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryRule)
    CostCategorySplitChargeMethod.add_member(:fixed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIXED', traits: {"smithy.api#enumValue" => "FIXED"}))
    CostCategorySplitChargeMethod.add_member(:proportional, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROPORTIONAL', traits: {"smithy.api#enumValue" => "PROPORTIONAL"}))
    CostCategorySplitChargeMethod.add_member(:even, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVEN', traits: {"smithy.api#enumValue" => "EVEN"}))
    CostCategorySplitChargeRule.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Source', traits: {"smithy.api#required" => {}}))
    CostCategorySplitChargeRule.add_member(:targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategorySplitChargeRuleTargetsList, location_name: 'Targets', traits: {"smithy.api#required" => {}}))
    CostCategorySplitChargeRule.add_member(:method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategorySplitChargeMethod, location_name: 'Method', traits: {"smithy.api#required" => {}}))
    CostCategorySplitChargeRule.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategorySplitChargeRuleParametersList, location_name: 'Parameters'))
    CostCategorySplitChargeRule.type = Types::CostCategorySplitChargeRule
    CostCategorySplitChargeRuleParameter.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategorySplitChargeRuleParameterType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    CostCategorySplitChargeRuleParameter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategorySplitChargeRuleParameterValuesList, location_name: 'Values', traits: {"smithy.api#required" => {}}))
    CostCategorySplitChargeRuleParameter.type = Types::CostCategorySplitChargeRuleParameter
    CostCategorySplitChargeRuleParameterType.add_member(:allocation_percentages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOCATION_PERCENTAGES', traits: {"smithy.api#enumValue" => "ALLOCATION_PERCENTAGES"}))
    CostCategorySplitChargeRuleParameterValuesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString)
    CostCategorySplitChargeRuleParametersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategorySplitChargeRuleParameter)
    CostCategorySplitChargeRuleTargetsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString)
    CostCategorySplitChargeRulesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategorySplitChargeRule)
    CostCategoryStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    CostCategoryStatus.add_member(:applied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLIED', traits: {"smithy.api#enumValue" => "APPLIED"}))
    CostCategoryStatusComponent.add_member(:cost_explorer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COST_EXPLORER', traits: {"smithy.api#enumValue" => "COST_EXPLORER"}))
    CostCategoryValues.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryName, location_name: 'Key'))
    CostCategoryValues.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Values, location_name: 'Values'))
    CostCategoryValues.add_member(:match_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOptions, location_name: 'MatchOptions'))
    CostCategoryValues.type = Types::CostCategoryValues
    CostCategoryValuesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryValue)
    CostComparisonDriver.add_member(:cost_selector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'CostSelector'))
    CostComparisonDriver.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonMetrics, location_name: 'Metrics'))
    CostComparisonDriver.add_member(:cost_drivers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostDrivers, location_name: 'CostDrivers'))
    CostComparisonDriver.type = Types::CostComparisonDriver
    CostComparisonDrivers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostComparisonDriver)
    CostDriver.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Type'))
    CostDriver.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Name'))
    CostDriver.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonMetrics, location_name: 'Metrics'))
    CostDriver.type = Types::CostDriver
    CostDrivers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostDriver)
    Coverage.add_member(:coverage_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageHours, location_name: 'CoverageHours'))
    Coverage.add_member(:coverage_normalized_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageNormalizedUnits, location_name: 'CoverageNormalizedUnits'))
    Coverage.add_member(:coverage_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageCost, location_name: 'CoverageCost'))
    Coverage.type = Types::Coverage
    CoverageByTime.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod'))
    CoverageByTime.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationCoverageGroups, location_name: 'Groups'))
    CoverageByTime.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Coverage, location_name: 'Total'))
    CoverageByTime.type = Types::CoverageByTime
    CoverageCost.add_member(:on_demand_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandCost, location_name: 'OnDemandCost'))
    CoverageCost.type = Types::CoverageCost
    CoverageHours.add_member(:on_demand_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandHours, location_name: 'OnDemandHours'))
    CoverageHours.add_member(:reserved_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedHours, location_name: 'ReservedHours'))
    CoverageHours.add_member(:total_running_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TotalRunningHours, location_name: 'TotalRunningHours'))
    CoverageHours.add_member(:coverage_hours_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageHoursPercentage, location_name: 'CoverageHoursPercentage'))
    CoverageHours.type = Types::CoverageHours
    CoverageNormalizedUnits.add_member(:on_demand_normalized_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandNormalizedUnits, location_name: 'OnDemandNormalizedUnits'))
    CoverageNormalizedUnits.add_member(:reserved_normalized_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNormalizedUnits, location_name: 'ReservedNormalizedUnits'))
    CoverageNormalizedUnits.add_member(:total_running_normalized_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TotalRunningNormalizedUnits, location_name: 'TotalRunningNormalizedUnits'))
    CoverageNormalizedUnits.add_member(:coverage_normalized_units_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageNormalizedUnitsPercentage, location_name: 'CoverageNormalizedUnitsPercentage'))
    CoverageNormalizedUnits.type = Types::CoverageNormalizedUnits
    CoveragesByTime.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoverageByTime)
    CreateAnomalyMonitorRequest.add_member(:anomaly_monitor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyMonitor, location_name: 'AnomalyMonitor', traits: {"smithy.api#required" => {}}))
    CreateAnomalyMonitorRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'ResourceTags'))
    CreateAnomalyMonitorRequest.type = Types::CreateAnomalyMonitorRequest
    CreateAnomalyMonitorResponse.add_member(:monitor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MonitorArn', traits: {"smithy.api#required" => {}}))
    CreateAnomalyMonitorResponse.type = Types::CreateAnomalyMonitorResponse
    CreateAnomalySubscriptionRequest.add_member(:anomaly_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySubscription, location_name: 'AnomalySubscription', traits: {"smithy.api#required" => {}}))
    CreateAnomalySubscriptionRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'ResourceTags'))
    CreateAnomalySubscriptionRequest.type = Types::CreateAnomalySubscriptionRequest
    CreateAnomalySubscriptionResponse.add_member(:subscription_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'SubscriptionArn', traits: {"smithy.api#required" => {}}))
    CreateAnomalySubscriptionResponse.type = Types::CreateAnomalySubscriptionResponse
    CreateCostCategoryDefinitionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateCostCategoryDefinitionRequest.add_member(:effective_start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EffectiveStart'))
    CreateCostCategoryDefinitionRequest.add_member(:rule_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryRuleVersion, location_name: 'RuleVersion', traits: {"smithy.api#required" => {}}))
    CreateCostCategoryDefinitionRequest.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryRulesList, location_name: 'Rules', traits: {"smithy.api#required" => {}}))
    CreateCostCategoryDefinitionRequest.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryValue, location_name: 'DefaultValue'))
    CreateCostCategoryDefinitionRequest.add_member(:split_charge_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategorySplitChargeRulesList, location_name: 'SplitChargeRules'))
    CreateCostCategoryDefinitionRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'ResourceTags'))
    CreateCostCategoryDefinitionRequest.type = Types::CreateCostCategoryDefinitionRequest
    CreateCostCategoryDefinitionResponse.add_member(:cost_category_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CostCategoryArn'))
    CreateCostCategoryDefinitionResponse.add_member(:effective_start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EffectiveStart'))
    CreateCostCategoryDefinitionResponse.type = Types::CreateCostCategoryDefinitionResponse
    CurrentInstance.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ResourceId'))
    CurrentInstance.add_member(:instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'InstanceName'))
    CurrentInstance.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValuesList, location_name: 'Tags'))
    CurrentInstance.add_member(:resource_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDetails, location_name: 'ResourceDetails'))
    CurrentInstance.add_member(:resource_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUtilization, location_name: 'ResourceUtilization'))
    CurrentInstance.add_member(:reservation_covered_hours_in_lookback_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ReservationCoveredHoursInLookbackPeriod'))
    CurrentInstance.add_member(:savings_plans_covered_hours_in_lookback_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'SavingsPlansCoveredHoursInLookbackPeriod'))
    CurrentInstance.add_member(:on_demand_hours_in_lookback_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'OnDemandHoursInLookbackPeriod'))
    CurrentInstance.add_member(:total_running_hours_in_lookback_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'TotalRunningHoursInLookbackPeriod'))
    CurrentInstance.add_member(:monthly_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MonthlyCost'))
    CurrentInstance.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrencyCode'))
    CurrentInstance.type = Types::CurrentInstance
    DataUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DataUnavailableException.type = Types::DataUnavailableException
    DateInterval.add_member(:start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: YearMonthDay, location_name: 'Start', traits: {"smithy.api#required" => {}}))
    DateInterval.add_member(:end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: YearMonthDay, location_name: 'End', traits: {"smithy.api#required" => {}}))
    DateInterval.type = Types::DateInterval
    DeleteAnomalyMonitorRequest.add_member(:monitor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MonitorArn', traits: {"smithy.api#required" => {}}))
    DeleteAnomalyMonitorRequest.type = Types::DeleteAnomalyMonitorRequest
    DeleteAnomalyMonitorResponse.type = Types::DeleteAnomalyMonitorResponse
    DeleteAnomalySubscriptionRequest.add_member(:subscription_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'SubscriptionArn', traits: {"smithy.api#required" => {}}))
    DeleteAnomalySubscriptionRequest.type = Types::DeleteAnomalySubscriptionRequest
    DeleteAnomalySubscriptionResponse.type = Types::DeleteAnomalySubscriptionResponse
    DeleteCostCategoryDefinitionRequest.add_member(:cost_category_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CostCategoryArn', traits: {"smithy.api#required" => {}}))
    DeleteCostCategoryDefinitionRequest.type = Types::DeleteCostCategoryDefinitionRequest
    DeleteCostCategoryDefinitionResponse.add_member(:cost_category_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CostCategoryArn'))
    DeleteCostCategoryDefinitionResponse.add_member(:effective_end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EffectiveEnd'))
    DeleteCostCategoryDefinitionResponse.type = Types::DeleteCostCategoryDefinitionResponse
    DescribeCostCategoryDefinitionRequest.add_member(:cost_category_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CostCategoryArn', traits: {"smithy.api#required" => {}}))
    DescribeCostCategoryDefinitionRequest.add_member(:effective_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EffectiveOn'))
    DescribeCostCategoryDefinitionRequest.type = Types::DescribeCostCategoryDefinitionRequest
    DescribeCostCategoryDefinitionResponse.add_member(:cost_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategory, location_name: 'CostCategory'))
    DescribeCostCategoryDefinitionResponse.type = Types::DescribeCostCategoryDefinitionResponse
    Dimension.add_member(:az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AZ', traits: {"smithy.api#enumValue" => "AZ"}))
    Dimension.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_TYPE', traits: {"smithy.api#enumValue" => "INSTANCE_TYPE"}))
    Dimension.add_member(:linked_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINKED_ACCOUNT', traits: {"smithy.api#enumValue" => "LINKED_ACCOUNT"}))
    Dimension.add_member(:linked_account_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINKED_ACCOUNT_NAME', traits: {"smithy.api#enumValue" => "LINKED_ACCOUNT_NAME"}))
    Dimension.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPERATION', traits: {"smithy.api#enumValue" => "OPERATION"}))
    Dimension.add_member(:purchase_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PURCHASE_TYPE', traits: {"smithy.api#enumValue" => "PURCHASE_TYPE"}))
    Dimension.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGION', traits: {"smithy.api#enumValue" => "REGION"}))
    Dimension.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE', traits: {"smithy.api#enumValue" => "SERVICE"}))
    Dimension.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE_CODE', traits: {"smithy.api#enumValue" => "SERVICE_CODE"}))
    Dimension.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USAGE_TYPE', traits: {"smithy.api#enumValue" => "USAGE_TYPE"}))
    Dimension.add_member(:usage_type_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USAGE_TYPE_GROUP', traits: {"smithy.api#enumValue" => "USAGE_TYPE_GROUP"}))
    Dimension.add_member(:record_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECORD_TYPE', traits: {"smithy.api#enumValue" => "RECORD_TYPE"}))
    Dimension.add_member(:operating_system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPERATING_SYSTEM', traits: {"smithy.api#enumValue" => "OPERATING_SYSTEM"}))
    Dimension.add_member(:tenancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TENANCY', traits: {"smithy.api#enumValue" => "TENANCY"}))
    Dimension.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCOPE', traits: {"smithy.api#enumValue" => "SCOPE"}))
    Dimension.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLATFORM', traits: {"smithy.api#enumValue" => "PLATFORM"}))
    Dimension.add_member(:subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBSCRIPTION_ID', traits: {"smithy.api#enumValue" => "SUBSCRIPTION_ID"}))
    Dimension.add_member(:legal_entity_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LEGAL_ENTITY_NAME', traits: {"smithy.api#enumValue" => "LEGAL_ENTITY_NAME"}))
    Dimension.add_member(:deployment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPLOYMENT_OPTION', traits: {"smithy.api#enumValue" => "DEPLOYMENT_OPTION"}))
    Dimension.add_member(:database_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATABASE_ENGINE', traits: {"smithy.api#enumValue" => "DATABASE_ENGINE"}))
    Dimension.add_member(:cache_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CACHE_ENGINE', traits: {"smithy.api#enumValue" => "CACHE_ENGINE"}))
    Dimension.add_member(:instance_type_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_TYPE_FAMILY', traits: {"smithy.api#enumValue" => "INSTANCE_TYPE_FAMILY"}))
    Dimension.add_member(:billing_entity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BILLING_ENTITY', traits: {"smithy.api#enumValue" => "BILLING_ENTITY"}))
    Dimension.add_member(:reservation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESERVATION_ID', traits: {"smithy.api#enumValue" => "RESERVATION_ID"}))
    Dimension.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_ID', traits: {"smithy.api#enumValue" => "RESOURCE_ID"}))
    Dimension.add_member(:rightsizing_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RIGHTSIZING_TYPE', traits: {"smithy.api#enumValue" => "RIGHTSIZING_TYPE"}))
    Dimension.add_member(:savings_plans_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAVINGS_PLANS_TYPE', traits: {"smithy.api#enumValue" => "SAVINGS_PLANS_TYPE"}))
    Dimension.add_member(:savings_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAVINGS_PLAN_ARN', traits: {"smithy.api#enumValue" => "SAVINGS_PLAN_ARN"}))
    Dimension.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAYMENT_OPTION', traits: {"smithy.api#enumValue" => "PAYMENT_OPTION"}))
    Dimension.add_member(:agreement_end_date_time_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGREEMENT_END_DATE_TIME_AFTER', traits: {"smithy.api#enumValue" => "AGREEMENT_END_DATE_TIME_AFTER"}))
    Dimension.add_member(:agreement_end_date_time_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGREEMENT_END_DATE_TIME_BEFORE', traits: {"smithy.api#enumValue" => "AGREEMENT_END_DATE_TIME_BEFORE"}))
    Dimension.add_member(:invoicing_entity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVOICING_ENTITY', traits: {"smithy.api#enumValue" => "INVOICING_ENTITY"}))
    Dimension.add_member(:anomaly_total_impact_absolute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANOMALY_TOTAL_IMPACT_ABSOLUTE', traits: {"smithy.api#enumValue" => "ANOMALY_TOTAL_IMPACT_ABSOLUTE"}))
    Dimension.add_member(:anomaly_total_impact_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANOMALY_TOTAL_IMPACT_PERCENTAGE', traits: {"smithy.api#enumValue" => "ANOMALY_TOTAL_IMPACT_PERCENTAGE"}))
    DimensionValues.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension, location_name: 'Key'))
    DimensionValues.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Values, location_name: 'Values'))
    DimensionValues.add_member(:match_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOptions, location_name: 'MatchOptions'))
    DimensionValues.type = Types::DimensionValues
    DimensionValuesWithAttributes.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value, location_name: 'Value'))
    DimensionValuesWithAttributes.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'Attributes'))
    DimensionValuesWithAttributes.type = Types::DimensionValuesWithAttributes
    DimensionValuesWithAttributesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValuesWithAttributes)
    DiskResourceUtilization.add_member(:disk_read_ops_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'DiskReadOpsPerSecond'))
    DiskResourceUtilization.add_member(:disk_write_ops_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'DiskWriteOpsPerSecond'))
    DiskResourceUtilization.add_member(:disk_read_bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'DiskReadBytesPerSecond'))
    DiskResourceUtilization.add_member(:disk_write_bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'DiskWriteBytesPerSecond'))
    DiskResourceUtilization.type = Types::DiskResourceUtilization
    DynamoDBCapacityDetails.add_member(:capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CapacityUnits'))
    DynamoDBCapacityDetails.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Region'))
    DynamoDBCapacityDetails.type = Types::DynamoDBCapacityDetails
    EBSResourceUtilization.add_member(:ebs_read_ops_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EbsReadOpsPerSecond'))
    EBSResourceUtilization.add_member(:ebs_write_ops_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EbsWriteOpsPerSecond'))
    EBSResourceUtilization.add_member(:ebs_read_bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EbsReadBytesPerSecond'))
    EBSResourceUtilization.add_member(:ebs_write_bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EbsWriteBytesPerSecond'))
    EBSResourceUtilization.type = Types::EBSResourceUtilization
    EC2InstanceDetails.add_member(:family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Family'))
    EC2InstanceDetails.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'InstanceType'))
    EC2InstanceDetails.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Region'))
    EC2InstanceDetails.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AvailabilityZone'))
    EC2InstanceDetails.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Platform'))
    EC2InstanceDetails.add_member(:tenancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Tenancy'))
    EC2InstanceDetails.add_member(:current_generation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'CurrentGeneration', traits: {"smithy.api#default" => false}))
    EC2InstanceDetails.add_member(:size_flex_eligible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'SizeFlexEligible', traits: {"smithy.api#default" => false}))
    EC2InstanceDetails.type = Types::EC2InstanceDetails
    EC2ResourceDetails.add_member(:hourly_on_demand_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'HourlyOnDemandRate'))
    EC2ResourceDetails.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'InstanceType'))
    EC2ResourceDetails.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Platform'))
    EC2ResourceDetails.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Region'))
    EC2ResourceDetails.add_member(:sku, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Sku'))
    EC2ResourceDetails.add_member(:memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Memory'))
    EC2ResourceDetails.add_member(:network_performance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NetworkPerformance'))
    EC2ResourceDetails.add_member(:storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Storage'))
    EC2ResourceDetails.add_member(:vcpu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Vcpu'))
    EC2ResourceDetails.type = Types::EC2ResourceDetails
    EC2ResourceUtilization.add_member(:max_cpu_utilization_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MaxCpuUtilizationPercentage'))
    EC2ResourceUtilization.add_member(:max_memory_utilization_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MaxMemoryUtilizationPercentage'))
    EC2ResourceUtilization.add_member(:max_storage_utilization_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MaxStorageUtilizationPercentage'))
    EC2ResourceUtilization.add_member(:ebs_resource_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EBSResourceUtilization, location_name: 'EBSResourceUtilization'))
    EC2ResourceUtilization.add_member(:disk_resource_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiskResourceUtilization, location_name: 'DiskResourceUtilization'))
    EC2ResourceUtilization.add_member(:network_resource_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkResourceUtilization, location_name: 'NetworkResourceUtilization'))
    EC2ResourceUtilization.type = Types::EC2ResourceUtilization
    EC2Specification.add_member(:offering_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferingClass, location_name: 'OfferingClass'))
    EC2Specification.type = Types::EC2Specification
    ESInstanceDetails.add_member(:instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'InstanceClass'))
    ESInstanceDetails.add_member(:instance_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'InstanceSize'))
    ESInstanceDetails.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Region'))
    ESInstanceDetails.add_member(:current_generation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'CurrentGeneration', traits: {"smithy.api#default" => false}))
    ESInstanceDetails.add_member(:size_flex_eligible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'SizeFlexEligible', traits: {"smithy.api#default" => false}))
    ESInstanceDetails.type = Types::ESInstanceDetails
    ElastiCacheInstanceDetails.add_member(:family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Family'))
    ElastiCacheInstanceDetails.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NodeType'))
    ElastiCacheInstanceDetails.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Region'))
    ElastiCacheInstanceDetails.add_member(:product_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ProductDescription'))
    ElastiCacheInstanceDetails.add_member(:current_generation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'CurrentGeneration', traits: {"smithy.api#default" => false}))
    ElastiCacheInstanceDetails.add_member(:size_flex_eligible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'SizeFlexEligible', traits: {"smithy.api#default" => false}))
    ElastiCacheInstanceDetails.type = Types::ElastiCacheInstanceDetails
    ErrorCode.add_member(:no_usage_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_USAGE_FOUND', traits: {"smithy.api#enumValue" => "NO_USAGE_FOUND"}))
    ErrorCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_FAILURE', traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    ErrorCode.add_member(:invalid_savings_plans_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SAVINGS_PLANS_TO_ADD', traits: {"smithy.api#enumValue" => "INVALID_SAVINGS_PLANS_TO_ADD"}))
    ErrorCode.add_member(:invalid_savings_plans_to_exclude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SAVINGS_PLANS_TO_EXCLUDE', traits: {"smithy.api#enumValue" => "INVALID_SAVINGS_PLANS_TO_EXCLUDE"}))
    ErrorCode.add_member(:invalid_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ACCOUNT_ID', traits: {"smithy.api#enumValue" => "INVALID_ACCOUNT_ID"}))
    Expression.add_member(:or, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expressions, location_name: 'Or'))
    Expression.add_member(:and, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expressions, location_name: 'And'))
    Expression.add_member(:not, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Not'))
    Expression.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValues, location_name: 'Dimensions'))
    Expression.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValues, location_name: 'Tags'))
    Expression.add_member(:cost_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryValues, location_name: 'CostCategories'))
    Expression.type = Types::Expression
    Expressions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression)
    FindingReasonCode.add_member(:cpu_over_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CPU_OVER_PROVISIONED', traits: {"smithy.api#enumValue" => "CPU_OVER_PROVISIONED"}))
    FindingReasonCode.add_member(:cpu_under_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CPU_UNDER_PROVISIONED', traits: {"smithy.api#enumValue" => "CPU_UNDER_PROVISIONED"}))
    FindingReasonCode.add_member(:memory_over_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEMORY_OVER_PROVISIONED', traits: {"smithy.api#enumValue" => "MEMORY_OVER_PROVISIONED"}))
    FindingReasonCode.add_member(:memory_under_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEMORY_UNDER_PROVISIONED', traits: {"smithy.api#enumValue" => "MEMORY_UNDER_PROVISIONED"}))
    FindingReasonCode.add_member(:ebs_throughput_over_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EBS_THROUGHPUT_OVER_PROVISIONED', traits: {"smithy.api#enumValue" => "EBS_THROUGHPUT_OVER_PROVISIONED"}))
    FindingReasonCode.add_member(:ebs_throughput_under_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EBS_THROUGHPUT_UNDER_PROVISIONED', traits: {"smithy.api#enumValue" => "EBS_THROUGHPUT_UNDER_PROVISIONED"}))
    FindingReasonCode.add_member(:ebs_iops_over_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EBS_IOPS_OVER_PROVISIONED', traits: {"smithy.api#enumValue" => "EBS_IOPS_OVER_PROVISIONED"}))
    FindingReasonCode.add_member(:ebs_iops_under_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EBS_IOPS_UNDER_PROVISIONED', traits: {"smithy.api#enumValue" => "EBS_IOPS_UNDER_PROVISIONED"}))
    FindingReasonCode.add_member(:network_bandwidth_over_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_BANDWIDTH_OVER_PROVISIONED', traits: {"smithy.api#enumValue" => "NETWORK_BANDWIDTH_OVER_PROVISIONED"}))
    FindingReasonCode.add_member(:network_bandwidth_under_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_BANDWIDTH_UNDER_PROVISIONED', traits: {"smithy.api#enumValue" => "NETWORK_BANDWIDTH_UNDER_PROVISIONED"}))
    FindingReasonCode.add_member(:network_pps_over_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_PPS_OVER_PROVISIONED', traits: {"smithy.api#enumValue" => "NETWORK_PPS_OVER_PROVISIONED"}))
    FindingReasonCode.add_member(:network_pps_under_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_PPS_UNDER_PROVISIONED', traits: {"smithy.api#enumValue" => "NETWORK_PPS_UNDER_PROVISIONED"}))
    FindingReasonCode.add_member(:disk_iops_over_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISK_IOPS_OVER_PROVISIONED', traits: {"smithy.api#enumValue" => "DISK_IOPS_OVER_PROVISIONED"}))
    FindingReasonCode.add_member(:disk_iops_under_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISK_IOPS_UNDER_PROVISIONED', traits: {"smithy.api#enumValue" => "DISK_IOPS_UNDER_PROVISIONED"}))
    FindingReasonCode.add_member(:disk_throughput_over_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISK_THROUGHPUT_OVER_PROVISIONED', traits: {"smithy.api#enumValue" => "DISK_THROUGHPUT_OVER_PROVISIONED"}))
    FindingReasonCode.add_member(:disk_throughput_under_provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISK_THROUGHPUT_UNDER_PROVISIONED', traits: {"smithy.api#enumValue" => "DISK_THROUGHPUT_UNDER_PROVISIONED"}))
    FindingReasonCodes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingReasonCode)
    ForecastResult.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod'))
    ForecastResult.add_member(:mean_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MeanValue'))
    ForecastResult.add_member(:prediction_interval_lower_bound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'PredictionIntervalLowerBound'))
    ForecastResult.add_member(:prediction_interval_upper_bound, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'PredictionIntervalUpperBound'))
    ForecastResult.type = Types::ForecastResult
    ForecastResultsByTime.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForecastResult)
    GenerationExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    GenerationExistsException.type = Types::GenerationExistsException
    GenerationStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    GenerationStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    GenerationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    GenerationSummary.add_member(:recommendation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationId, location_name: 'RecommendationId'))
    GenerationSummary.add_member(:generation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerationStatus, location_name: 'GenerationStatus'))
    GenerationSummary.add_member(:generation_started_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'GenerationStartedTime'))
    GenerationSummary.add_member(:generation_completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'GenerationCompletionTime'))
    GenerationSummary.add_member(:estimated_completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EstimatedCompletionTime'))
    GenerationSummary.type = Types::GenerationSummary
    GenerationSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerationSummary)
    GetAnomaliesRequest.add_member(:monitor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MonitorArn'))
    GetAnomaliesRequest.add_member(:date_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyDateInterval, location_name: 'DateInterval', traits: {"smithy.api#required" => {}}))
    GetAnomaliesRequest.add_member(:feedback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyFeedbackType, location_name: 'Feedback'))
    GetAnomaliesRequest.add_member(:total_impact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TotalImpactFilter, location_name: 'TotalImpact'))
    GetAnomaliesRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetAnomaliesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults'))
    GetAnomaliesRequest.type = Types::GetAnomaliesRequest
    GetAnomaliesResponse.add_member(:anomalies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Anomalies, location_name: 'Anomalies', traits: {"smithy.api#required" => {}}))
    GetAnomaliesResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetAnomaliesResponse.type = Types::GetAnomaliesResponse
    GetAnomalyMonitorsRequest.add_member(:monitor_arn_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Values, location_name: 'MonitorArnList'))
    GetAnomalyMonitorsRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetAnomalyMonitorsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults'))
    GetAnomalyMonitorsRequest.type = Types::GetAnomalyMonitorsRequest
    GetAnomalyMonitorsResponse.add_member(:anomaly_monitors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyMonitors, location_name: 'AnomalyMonitors', traits: {"smithy.api#required" => {}}))
    GetAnomalyMonitorsResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetAnomalyMonitorsResponse.type = Types::GetAnomalyMonitorsResponse
    GetAnomalySubscriptionsRequest.add_member(:subscription_arn_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Values, location_name: 'SubscriptionArnList'))
    GetAnomalySubscriptionsRequest.add_member(:monitor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MonitorArn'))
    GetAnomalySubscriptionsRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetAnomalySubscriptionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'MaxResults'))
    GetAnomalySubscriptionsRequest.type = Types::GetAnomalySubscriptionsRequest
    GetAnomalySubscriptionsResponse.add_member(:anomaly_subscriptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySubscriptions, location_name: 'AnomalySubscriptions', traits: {"smithy.api#required" => {}}))
    GetAnomalySubscriptionsResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetAnomalySubscriptionsResponse.type = Types::GetAnomalySubscriptionsResponse
    GetApproximateUsageRecordsRequest.add_member(:granularity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Granularity, location_name: 'Granularity', traits: {"smithy.api#required" => {}}))
    GetApproximateUsageRecordsRequest.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageServices, location_name: 'Services'))
    GetApproximateUsageRecordsRequest.add_member(:approximation_dimension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApproximationDimension, location_name: 'ApproximationDimension', traits: {"smithy.api#required" => {}}))
    GetApproximateUsageRecordsRequest.type = Types::GetApproximateUsageRecordsRequest
    GetApproximateUsageRecordsResponse.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApproximateUsageRecordsPerService, location_name: 'Services'))
    GetApproximateUsageRecordsResponse.add_member(:total_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: 'TotalRecords', traits: {"smithy.api#default" => 0}))
    GetApproximateUsageRecordsResponse.add_member(:lookback_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'LookbackPeriod'))
    GetApproximateUsageRecordsResponse.type = Types::GetApproximateUsageRecordsResponse
    GetCommitmentPurchaseAnalysisRequest.add_member(:analysis_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisId, location_name: 'AnalysisId', traits: {"smithy.api#required" => {}}))
    GetCommitmentPurchaseAnalysisRequest.type = Types::GetCommitmentPurchaseAnalysisRequest
    GetCommitmentPurchaseAnalysisResponse.add_member(:estimated_completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EstimatedCompletionTime', traits: {"smithy.api#required" => {}}))
    GetCommitmentPurchaseAnalysisResponse.add_member(:analysis_completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'AnalysisCompletionTime'))
    GetCommitmentPurchaseAnalysisResponse.add_member(:analysis_started_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'AnalysisStartedTime', traits: {"smithy.api#required" => {}}))
    GetCommitmentPurchaseAnalysisResponse.add_member(:analysis_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisId, location_name: 'AnalysisId', traits: {"smithy.api#required" => {}}))
    GetCommitmentPurchaseAnalysisResponse.add_member(:analysis_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisStatus, location_name: 'AnalysisStatus', traits: {"smithy.api#required" => {}}))
    GetCommitmentPurchaseAnalysisResponse.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode'))
    GetCommitmentPurchaseAnalysisResponse.add_member(:analysis_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisDetails, location_name: 'AnalysisDetails'))
    GetCommitmentPurchaseAnalysisResponse.add_member(:commitment_purchase_analysis_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitmentPurchaseAnalysisConfiguration, location_name: 'CommitmentPurchaseAnalysisConfiguration', traits: {"smithy.api#required" => {}}))
    GetCommitmentPurchaseAnalysisResponse.type = Types::GetCommitmentPurchaseAnalysisResponse
    GetCostAndUsageComparisonsRequest.add_member(:billing_view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'BillingViewArn'))
    GetCostAndUsageComparisonsRequest.add_member(:baseline_time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'BaselineTimePeriod', traits: {"smithy.api#required" => {}}))
    GetCostAndUsageComparisonsRequest.add_member(:comparison_time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'ComparisonTimePeriod', traits: {"smithy.api#required" => {}}))
    GetCostAndUsageComparisonsRequest.add_member(:metric_for_comparison, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricForComparison', traits: {"smithy.api#required" => {}}))
    GetCostAndUsageComparisonsRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetCostAndUsageComparisonsRequest.add_member(:group_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: 'GroupBy'))
    GetCostAndUsageComparisonsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAndUsageComparisonsMaxResults, location_name: 'MaxResults'))
    GetCostAndUsageComparisonsRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetCostAndUsageComparisonsRequest.type = Types::GetCostAndUsageComparisonsRequest
    GetCostAndUsageComparisonsResponse.add_member(:cost_and_usage_comparisons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAndUsageComparisons, location_name: 'CostAndUsageComparisons'))
    GetCostAndUsageComparisonsResponse.add_member(:total_cost_and_usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonMetrics, location_name: 'TotalCostAndUsage'))
    GetCostAndUsageComparisonsResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetCostAndUsageComparisonsResponse.type = Types::GetCostAndUsageComparisonsResponse
    GetCostAndUsageRequest.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod', traits: {"smithy.api#required" => {}}))
    GetCostAndUsageRequest.add_member(:granularity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Granularity, location_name: 'Granularity', traits: {"smithy.api#required" => {}}))
    GetCostAndUsageRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetCostAndUsageRequest.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricNames, location_name: 'Metrics', traits: {"smithy.api#required" => {}}))
    GetCostAndUsageRequest.add_member(:group_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: 'GroupBy'))
    GetCostAndUsageRequest.add_member(:billing_view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'BillingViewArn'))
    GetCostAndUsageRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetCostAndUsageRequest.type = Types::GetCostAndUsageRequest
    GetCostAndUsageResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetCostAndUsageResponse.add_member(:group_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: 'GroupDefinitions'))
    GetCostAndUsageResponse.add_member(:results_by_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultsByTime, location_name: 'ResultsByTime'))
    GetCostAndUsageResponse.add_member(:dimension_value_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValuesWithAttributesList, location_name: 'DimensionValueAttributes'))
    GetCostAndUsageResponse.type = Types::GetCostAndUsageResponse
    GetCostAndUsageWithResourcesRequest.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod', traits: {"smithy.api#required" => {}}))
    GetCostAndUsageWithResourcesRequest.add_member(:granularity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Granularity, location_name: 'Granularity', traits: {"smithy.api#required" => {}}))
    GetCostAndUsageWithResourcesRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter', traits: {"smithy.api#required" => {}}))
    GetCostAndUsageWithResourcesRequest.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricNames, location_name: 'Metrics'))
    GetCostAndUsageWithResourcesRequest.add_member(:group_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: 'GroupBy'))
    GetCostAndUsageWithResourcesRequest.add_member(:billing_view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'BillingViewArn'))
    GetCostAndUsageWithResourcesRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetCostAndUsageWithResourcesRequest.type = Types::GetCostAndUsageWithResourcesRequest
    GetCostAndUsageWithResourcesResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetCostAndUsageWithResourcesResponse.add_member(:group_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: 'GroupDefinitions'))
    GetCostAndUsageWithResourcesResponse.add_member(:results_by_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultsByTime, location_name: 'ResultsByTime'))
    GetCostAndUsageWithResourcesResponse.add_member(:dimension_value_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValuesWithAttributesList, location_name: 'DimensionValueAttributes'))
    GetCostAndUsageWithResourcesResponse.type = Types::GetCostAndUsageWithResourcesResponse
    GetCostCategoriesRequest.add_member(:search_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchString, location_name: 'SearchString'))
    GetCostCategoriesRequest.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod', traits: {"smithy.api#required" => {}}))
    GetCostCategoriesRequest.add_member(:cost_category_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryName, location_name: 'CostCategoryName'))
    GetCostCategoriesRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetCostCategoriesRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortDefinitions, location_name: 'SortBy'))
    GetCostCategoriesRequest.add_member(:billing_view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'BillingViewArn'))
    GetCostCategoriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    GetCostCategoriesRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetCostCategoriesRequest.type = Types::GetCostCategoriesRequest
    GetCostCategoriesResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetCostCategoriesResponse.add_member(:cost_category_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryNamesList, location_name: 'CostCategoryNames'))
    GetCostCategoriesResponse.add_member(:cost_category_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryValuesList, location_name: 'CostCategoryValues'))
    GetCostCategoriesResponse.add_member(:return_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'ReturnSize', traits: {"smithy.api#required" => {}}))
    GetCostCategoriesResponse.add_member(:total_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'TotalSize', traits: {"smithy.api#required" => {}}))
    GetCostCategoriesResponse.type = Types::GetCostCategoriesResponse
    GetCostComparisonDriversRequest.add_member(:billing_view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'BillingViewArn'))
    GetCostComparisonDriversRequest.add_member(:baseline_time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'BaselineTimePeriod', traits: {"smithy.api#required" => {}}))
    GetCostComparisonDriversRequest.add_member(:comparison_time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'ComparisonTimePeriod', traits: {"smithy.api#required" => {}}))
    GetCostComparisonDriversRequest.add_member(:metric_for_comparison, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricForComparison', traits: {"smithy.api#required" => {}}))
    GetCostComparisonDriversRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetCostComparisonDriversRequest.add_member(:group_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: 'GroupBy'))
    GetCostComparisonDriversRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostComparisonDriversMaxResults, location_name: 'MaxResults'))
    GetCostComparisonDriversRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetCostComparisonDriversRequest.type = Types::GetCostComparisonDriversRequest
    GetCostComparisonDriversResponse.add_member(:cost_comparison_drivers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostComparisonDrivers, location_name: 'CostComparisonDrivers'))
    GetCostComparisonDriversResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetCostComparisonDriversResponse.type = Types::GetCostComparisonDriversResponse
    GetCostForecastRequest.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod', traits: {"smithy.api#required" => {}}))
    GetCostForecastRequest.add_member(:metric, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metric, location_name: 'Metric', traits: {"smithy.api#required" => {}}))
    GetCostForecastRequest.add_member(:granularity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Granularity, location_name: 'Granularity', traits: {"smithy.api#required" => {}}))
    GetCostForecastRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetCostForecastRequest.add_member(:billing_view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'BillingViewArn'))
    GetCostForecastRequest.add_member(:prediction_interval_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictionIntervalLevel, location_name: 'PredictionIntervalLevel'))
    GetCostForecastRequest.type = Types::GetCostForecastRequest
    GetCostForecastResponse.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricValue, location_name: 'Total'))
    GetCostForecastResponse.add_member(:forecast_results_by_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForecastResultsByTime, location_name: 'ForecastResultsByTime'))
    GetCostForecastResponse.type = Types::GetCostForecastResponse
    GetDimensionValuesRequest.add_member(:search_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchString, location_name: 'SearchString'))
    GetDimensionValuesRequest.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod', traits: {"smithy.api#required" => {}}))
    GetDimensionValuesRequest.add_member(:dimension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dimension, location_name: 'Dimension', traits: {"smithy.api#required" => {}}))
    GetDimensionValuesRequest.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Context, location_name: 'Context'))
    GetDimensionValuesRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetDimensionValuesRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortDefinitions, location_name: 'SortBy'))
    GetDimensionValuesRequest.add_member(:billing_view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'BillingViewArn'))
    GetDimensionValuesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    GetDimensionValuesRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetDimensionValuesRequest.type = Types::GetDimensionValuesRequest
    GetDimensionValuesResponse.add_member(:dimension_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValuesWithAttributesList, location_name: 'DimensionValues', traits: {"smithy.api#required" => {}}))
    GetDimensionValuesResponse.add_member(:return_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'ReturnSize', traits: {"smithy.api#required" => {}}))
    GetDimensionValuesResponse.add_member(:total_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'TotalSize', traits: {"smithy.api#required" => {}}))
    GetDimensionValuesResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetDimensionValuesResponse.type = Types::GetDimensionValuesResponse
    GetReservationCoverageRequest.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod', traits: {"smithy.api#required" => {}}))
    GetReservationCoverageRequest.add_member(:group_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: 'GroupBy'))
    GetReservationCoverageRequest.add_member(:granularity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Granularity, location_name: 'Granularity'))
    GetReservationCoverageRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetReservationCoverageRequest.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricNames, location_name: 'Metrics'))
    GetReservationCoverageRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetReservationCoverageRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortDefinition, location_name: 'SortBy'))
    GetReservationCoverageRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    GetReservationCoverageRequest.type = Types::GetReservationCoverageRequest
    GetReservationCoverageResponse.add_member(:coverages_by_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CoveragesByTime, location_name: 'CoveragesByTime', traits: {"smithy.api#required" => {}}))
    GetReservationCoverageResponse.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Coverage, location_name: 'Total'))
    GetReservationCoverageResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetReservationCoverageResponse.type = Types::GetReservationCoverageResponse
    GetReservationPurchaseRecommendationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AccountId'))
    GetReservationPurchaseRecommendationRequest.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Service', traits: {"smithy.api#required" => {}}))
    GetReservationPurchaseRecommendationRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetReservationPurchaseRecommendationRequest.add_member(:account_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountScope, location_name: 'AccountScope'))
    GetReservationPurchaseRecommendationRequest.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LookbackPeriodInDays, location_name: 'LookbackPeriodInDays'))
    GetReservationPurchaseRecommendationRequest.add_member(:term_in_years, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TermInYears, location_name: 'TermInYears'))
    GetReservationPurchaseRecommendationRequest.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentOption, location_name: 'PaymentOption'))
    GetReservationPurchaseRecommendationRequest.add_member(:service_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSpecification, location_name: 'ServiceSpecification'))
    GetReservationPurchaseRecommendationRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'PageSize', traits: {"smithy.api#default" => 0}))
    GetReservationPurchaseRecommendationRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetReservationPurchaseRecommendationRequest.type = Types::GetReservationPurchaseRecommendationRequest
    GetReservationPurchaseRecommendationResponse.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendationMetadata, location_name: 'Metadata'))
    GetReservationPurchaseRecommendationResponse.add_member(:recommendations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendations, location_name: 'Recommendations'))
    GetReservationPurchaseRecommendationResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetReservationPurchaseRecommendationResponse.type = Types::GetReservationPurchaseRecommendationResponse
    GetReservationUtilizationRequest.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod', traits: {"smithy.api#required" => {}}))
    GetReservationUtilizationRequest.add_member(:group_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: 'GroupBy'))
    GetReservationUtilizationRequest.add_member(:granularity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Granularity, location_name: 'Granularity'))
    GetReservationUtilizationRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetReservationUtilizationRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortDefinition, location_name: 'SortBy'))
    GetReservationUtilizationRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetReservationUtilizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    GetReservationUtilizationRequest.type = Types::GetReservationUtilizationRequest
    GetReservationUtilizationResponse.add_member(:utilizations_by_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UtilizationsByTime, location_name: 'UtilizationsByTime', traits: {"smithy.api#required" => {}}))
    GetReservationUtilizationResponse.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationAggregates, location_name: 'Total'))
    GetReservationUtilizationResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetReservationUtilizationResponse.type = Types::GetReservationUtilizationResponse
    GetRightsizingRecommendationRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetRightsizingRecommendationRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RightsizingRecommendationConfiguration, location_name: 'Configuration'))
    GetRightsizingRecommendationRequest.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Service', traits: {"smithy.api#required" => {}}))
    GetRightsizingRecommendationRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'PageSize', traits: {"smithy.api#default" => 0}))
    GetRightsizingRecommendationRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetRightsizingRecommendationRequest.type = Types::GetRightsizingRecommendationRequest
    GetRightsizingRecommendationResponse.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RightsizingRecommendationMetadata, location_name: 'Metadata'))
    GetRightsizingRecommendationResponse.add_member(:summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RightsizingRecommendationSummary, location_name: 'Summary'))
    GetRightsizingRecommendationResponse.add_member(:rightsizing_recommendations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RightsizingRecommendationList, location_name: 'RightsizingRecommendations'))
    GetRightsizingRecommendationResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetRightsizingRecommendationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RightsizingRecommendationConfiguration, location_name: 'Configuration'))
    GetRightsizingRecommendationResponse.type = Types::GetRightsizingRecommendationResponse
    GetSavingsPlanPurchaseRecommendationDetailsRequest.add_member(:recommendation_detail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationDetailId, location_name: 'RecommendationDetailId', traits: {"smithy.api#required" => {}}))
    GetSavingsPlanPurchaseRecommendationDetailsRequest.type = Types::GetSavingsPlanPurchaseRecommendationDetailsRequest
    GetSavingsPlanPurchaseRecommendationDetailsResponse.add_member(:recommendation_detail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationDetailId, location_name: 'RecommendationDetailId'))
    GetSavingsPlanPurchaseRecommendationDetailsResponse.add_member(:recommendation_detail_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationDetailData, location_name: 'RecommendationDetailData'))
    GetSavingsPlanPurchaseRecommendationDetailsResponse.type = Types::GetSavingsPlanPurchaseRecommendationDetailsResponse
    GetSavingsPlansCoverageRequest.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod', traits: {"smithy.api#required" => {}}))
    GetSavingsPlansCoverageRequest.add_member(:group_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: 'GroupBy'))
    GetSavingsPlansCoverageRequest.add_member(:granularity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Granularity, location_name: 'Granularity'))
    GetSavingsPlansCoverageRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetSavingsPlansCoverageRequest.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricNames, location_name: 'Metrics'))
    GetSavingsPlansCoverageRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextToken'))
    GetSavingsPlansCoverageRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    GetSavingsPlansCoverageRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortDefinition, location_name: 'SortBy'))
    GetSavingsPlansCoverageRequest.type = Types::GetSavingsPlansCoverageRequest
    GetSavingsPlansCoverageResponse.add_member(:savings_plans_coverages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansCoverages, location_name: 'SavingsPlansCoverages', traits: {"smithy.api#required" => {}}))
    GetSavingsPlansCoverageResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextToken'))
    GetSavingsPlansCoverageResponse.type = Types::GetSavingsPlansCoverageResponse
    GetSavingsPlansPurchaseRecommendationRequest.add_member(:savings_plans_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedSavingsPlansType, location_name: 'SavingsPlansType', traits: {"smithy.api#required" => {}}))
    GetSavingsPlansPurchaseRecommendationRequest.add_member(:term_in_years, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TermInYears, location_name: 'TermInYears', traits: {"smithy.api#required" => {}}))
    GetSavingsPlansPurchaseRecommendationRequest.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentOption, location_name: 'PaymentOption', traits: {"smithy.api#required" => {}}))
    GetSavingsPlansPurchaseRecommendationRequest.add_member(:account_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountScope, location_name: 'AccountScope'))
    GetSavingsPlansPurchaseRecommendationRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetSavingsPlansPurchaseRecommendationRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'PageSize', traits: {"smithy.api#default" => 0}))
    GetSavingsPlansPurchaseRecommendationRequest.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LookbackPeriodInDays, location_name: 'LookbackPeriodInDays', traits: {"smithy.api#required" => {}}))
    GetSavingsPlansPurchaseRecommendationRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetSavingsPlansPurchaseRecommendationRequest.type = Types::GetSavingsPlansPurchaseRecommendationRequest
    GetSavingsPlansPurchaseRecommendationResponse.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansPurchaseRecommendationMetadata, location_name: 'Metadata'))
    GetSavingsPlansPurchaseRecommendationResponse.add_member(:savings_plans_purchase_recommendation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansPurchaseRecommendation, location_name: 'SavingsPlansPurchaseRecommendation'))
    GetSavingsPlansPurchaseRecommendationResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetSavingsPlansPurchaseRecommendationResponse.type = Types::GetSavingsPlansPurchaseRecommendationResponse
    GetSavingsPlansUtilizationDetailsRequest.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod', traits: {"smithy.api#required" => {}}))
    GetSavingsPlansUtilizationDetailsRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetSavingsPlansUtilizationDetailsRequest.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansDataTypes, location_name: 'DataType'))
    GetSavingsPlansUtilizationDetailsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextToken'))
    GetSavingsPlansUtilizationDetailsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    GetSavingsPlansUtilizationDetailsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortDefinition, location_name: 'SortBy'))
    GetSavingsPlansUtilizationDetailsRequest.type = Types::GetSavingsPlansUtilizationDetailsRequest
    GetSavingsPlansUtilizationDetailsResponse.add_member(:savings_plans_utilization_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansUtilizationDetails, location_name: 'SavingsPlansUtilizationDetails', traits: {"smithy.api#required" => {}}))
    GetSavingsPlansUtilizationDetailsResponse.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansUtilizationAggregates, location_name: 'Total'))
    GetSavingsPlansUtilizationDetailsResponse.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod', traits: {"smithy.api#required" => {}}))
    GetSavingsPlansUtilizationDetailsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextToken'))
    GetSavingsPlansUtilizationDetailsResponse.type = Types::GetSavingsPlansUtilizationDetailsResponse
    GetSavingsPlansUtilizationRequest.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod', traits: {"smithy.api#required" => {}}))
    GetSavingsPlansUtilizationRequest.add_member(:granularity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Granularity, location_name: 'Granularity'))
    GetSavingsPlansUtilizationRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetSavingsPlansUtilizationRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortDefinition, location_name: 'SortBy'))
    GetSavingsPlansUtilizationRequest.type = Types::GetSavingsPlansUtilizationRequest
    GetSavingsPlansUtilizationResponse.add_member(:savings_plans_utilizations_by_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansUtilizationsByTime, location_name: 'SavingsPlansUtilizationsByTime'))
    GetSavingsPlansUtilizationResponse.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansUtilizationAggregates, location_name: 'Total', traits: {"smithy.api#required" => {}}))
    GetSavingsPlansUtilizationResponse.type = Types::GetSavingsPlansUtilizationResponse
    GetTagsRequest.add_member(:search_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchString, location_name: 'SearchString'))
    GetTagsRequest.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod', traits: {"smithy.api#required" => {}}))
    GetTagsRequest.add_member(:tag_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'TagKey'))
    GetTagsRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetTagsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortDefinitions, location_name: 'SortBy'))
    GetTagsRequest.add_member(:billing_view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'BillingViewArn'))
    GetTagsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    GetTagsRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetTagsRequest.type = Types::GetTagsRequest
    GetTagsResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    GetTagsResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    GetTagsResponse.add_member(:return_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'ReturnSize', traits: {"smithy.api#required" => {}}))
    GetTagsResponse.add_member(:total_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: 'TotalSize', traits: {"smithy.api#required" => {}}))
    GetTagsResponse.type = Types::GetTagsResponse
    GetUsageForecastRequest.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod', traits: {"smithy.api#required" => {}}))
    GetUsageForecastRequest.add_member(:metric, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metric, location_name: 'Metric', traits: {"smithy.api#required" => {}}))
    GetUsageForecastRequest.add_member(:granularity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Granularity, location_name: 'Granularity', traits: {"smithy.api#required" => {}}))
    GetUsageForecastRequest.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Filter'))
    GetUsageForecastRequest.add_member(:billing_view_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillingViewArn, location_name: 'BillingViewArn'))
    GetUsageForecastRequest.add_member(:prediction_interval_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictionIntervalLevel, location_name: 'PredictionIntervalLevel'))
    GetUsageForecastRequest.type = Types::GetUsageForecastRequest
    GetUsageForecastResponse.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricValue, location_name: 'Total'))
    GetUsageForecastResponse.add_member(:forecast_results_by_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForecastResultsByTime, location_name: 'ForecastResultsByTime'))
    GetUsageForecastResponse.type = Types::GetUsageForecastResponse
    Granularity.add_member(:daily, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAILY', traits: {"smithy.api#enumValue" => "DAILY"}))
    Granularity.add_member(:monthly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHLY', traits: {"smithy.api#enumValue" => "MONTHLY"}))
    Granularity.add_member(:hourly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOURLY', traits: {"smithy.api#enumValue" => "HOURLY"}))
    Group.add_member(:keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Keys, location_name: 'Keys'))
    Group.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metrics, location_name: 'Metrics'))
    Group.type = Types::Group
    GroupDefinition.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupDefinitionType, location_name: 'Type'))
    GroupDefinition.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupDefinitionKey, location_name: 'Key'))
    GroupDefinition.type = Types::GroupDefinition
    GroupDefinitionType.add_member(:dimension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIMENSION', traits: {"smithy.api#enumValue" => "DIMENSION"}))
    GroupDefinitionType.add_member(:tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAG', traits: {"smithy.api#enumValue" => "TAG"}))
    GroupDefinitionType.add_member(:cost_category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COST_CATEGORY', traits: {"smithy.api#enumValue" => "COST_CATEGORY"}))
    GroupDefinitions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupDefinition)
    Groups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Group)
    Impact.add_member(:max_impact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericDouble, location_name: 'MaxImpact', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Impact.add_member(:total_impact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericDouble, location_name: 'TotalImpact', traits: {"smithy.api#default" => 0}))
    Impact.add_member(:total_actual_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableNonNegativeDouble, location_name: 'TotalActualSpend'))
    Impact.add_member(:total_expected_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableNonNegativeDouble, location_name: 'TotalExpectedSpend'))
    Impact.add_member(:total_impact_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableNonNegativeDouble, location_name: 'TotalImpactPercentage'))
    Impact.type = Types::Impact
    InstanceDetails.add_member(:ec2_instance_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceDetails, location_name: 'EC2InstanceDetails'))
    InstanceDetails.add_member(:rds_instance_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RDSInstanceDetails, location_name: 'RDSInstanceDetails'))
    InstanceDetails.add_member(:redshift_instance_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftInstanceDetails, location_name: 'RedshiftInstanceDetails'))
    InstanceDetails.add_member(:elasti_cache_instance_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElastiCacheInstanceDetails, location_name: 'ElastiCacheInstanceDetails'))
    InstanceDetails.add_member(:es_instance_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ESInstanceDetails, location_name: 'ESInstanceDetails'))
    InstanceDetails.add_member(:memory_db_instance_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryDBInstanceDetails, location_name: 'MemoryDBInstanceDetails'))
    InstanceDetails.type = Types::InstanceDetails
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    Keys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Key)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    ListCommitmentPurchaseAnalysesRequest.add_member(:analysis_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisStatus, location_name: 'AnalysisStatus'))
    ListCommitmentPurchaseAnalysesRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    ListCommitmentPurchaseAnalysesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'PageSize', traits: {"smithy.api#default" => 0}))
    ListCommitmentPurchaseAnalysesRequest.add_member(:analysis_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisIds, location_name: 'AnalysisIds'))
    ListCommitmentPurchaseAnalysesRequest.type = Types::ListCommitmentPurchaseAnalysesRequest
    ListCommitmentPurchaseAnalysesResponse.add_member(:analysis_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisSummaryList, location_name: 'AnalysisSummaryList'))
    ListCommitmentPurchaseAnalysesResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    ListCommitmentPurchaseAnalysesResponse.type = Types::ListCommitmentPurchaseAnalysesResponse
    ListCostAllocationTagBackfillHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextToken'))
    ListCostAllocationTagBackfillHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTagsMaxResults, location_name: 'MaxResults'))
    ListCostAllocationTagBackfillHistoryRequest.type = Types::ListCostAllocationTagBackfillHistoryRequest
    ListCostAllocationTagBackfillHistoryResponse.add_member(:backfill_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTagBackfillRequestList, location_name: 'BackfillRequests'))
    ListCostAllocationTagBackfillHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextToken'))
    ListCostAllocationTagBackfillHistoryResponse.type = Types::ListCostAllocationTagBackfillHistoryResponse
    ListCostAllocationTagsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTagStatus, location_name: 'Status'))
    ListCostAllocationTagsRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTagKeyList, location_name: 'TagKeys'))
    ListCostAllocationTagsRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTagType, location_name: 'Type'))
    ListCostAllocationTagsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextToken'))
    ListCostAllocationTagsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTagsMaxResults, location_name: 'MaxResults'))
    ListCostAllocationTagsRequest.type = Types::ListCostAllocationTagsRequest
    ListCostAllocationTagsResponse.add_member(:cost_allocation_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTagList, location_name: 'CostAllocationTags'))
    ListCostAllocationTagsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextToken'))
    ListCostAllocationTagsResponse.type = Types::ListCostAllocationTagsResponse
    ListCostCategoryDefinitionsRequest.add_member(:effective_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EffectiveOn'))
    ListCostCategoryDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextToken'))
    ListCostCategoryDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryMaxResults, location_name: 'MaxResults'))
    ListCostCategoryDefinitionsRequest.type = Types::ListCostCategoryDefinitionsRequest
    ListCostCategoryDefinitionsResponse.add_member(:cost_category_references, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryReferencesList, location_name: 'CostCategoryReferences'))
    ListCostCategoryDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextToken'))
    ListCostCategoryDefinitionsResponse.type = Types::ListCostCategoryDefinitionsResponse
    ListSavingsPlansPurchaseRecommendationGenerationRequest.add_member(:generation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerationStatus, location_name: 'GenerationStatus'))
    ListSavingsPlansPurchaseRecommendationGenerationRequest.add_member(:recommendation_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationIdList, location_name: 'RecommendationIds'))
    ListSavingsPlansPurchaseRecommendationGenerationRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: 'PageSize', traits: {"smithy.api#default" => 0}))
    ListSavingsPlansPurchaseRecommendationGenerationRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    ListSavingsPlansPurchaseRecommendationGenerationRequest.type = Types::ListSavingsPlansPurchaseRecommendationGenerationRequest
    ListSavingsPlansPurchaseRecommendationGenerationResponse.add_member(:generation_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerationSummaryList, location_name: 'GenerationSummaryList'))
    ListSavingsPlansPurchaseRecommendationGenerationResponse.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextPageToken, location_name: 'NextPageToken'))
    ListSavingsPlansPurchaseRecommendationGenerationResponse.type = Types::ListSavingsPlansPurchaseRecommendationGenerationResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'ResourceTags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LookbackPeriodInDays.add_member(:seven_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEVEN_DAYS', traits: {"smithy.api#enumValue" => "SEVEN_DAYS"}))
    LookbackPeriodInDays.add_member(:thirty_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THIRTY_DAYS', traits: {"smithy.api#enumValue" => "THIRTY_DAYS"}))
    LookbackPeriodInDays.add_member(:sixty_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIXTY_DAYS', traits: {"smithy.api#enumValue" => "SIXTY_DAYS"}))
    MatchOption.add_member(:equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    MatchOption.add_member(:absent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ABSENT', traits: {"smithy.api#enumValue" => "ABSENT"}))
    MatchOption.add_member(:starts_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTS_WITH', traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    MatchOption.add_member(:ends_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENDS_WITH', traits: {"smithy.api#enumValue" => "ENDS_WITH"}))
    MatchOption.add_member(:contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    MatchOption.add_member(:case_sensitive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CASE_SENSITIVE', traits: {"smithy.api#enumValue" => "CASE_SENSITIVE"}))
    MatchOption.add_member(:case_insensitive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CASE_INSENSITIVE', traits: {"smithy.api#enumValue" => "CASE_INSENSITIVE"}))
    MatchOption.add_member(:greater_than_or_equal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_OR_EQUAL', traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL"}))
    MatchOptions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOption)
    MemoryDBInstanceDetails.add_member(:family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Family'))
    MemoryDBInstanceDetails.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NodeType'))
    MemoryDBInstanceDetails.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Region'))
    MemoryDBInstanceDetails.add_member(:current_generation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'CurrentGeneration', traits: {"smithy.api#default" => false}))
    MemoryDBInstanceDetails.add_member(:size_flex_eligible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'SizeFlexEligible', traits: {"smithy.api#default" => false}))
    MemoryDBInstanceDetails.type = Types::MemoryDBInstanceDetails
    Metric.add_member(:blended_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLENDED_COST', traits: {"smithy.api#enumValue" => "BLENDED_COST"}))
    Metric.add_member(:unblended_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNBLENDED_COST', traits: {"smithy.api#enumValue" => "UNBLENDED_COST"}))
    Metric.add_member(:amortized_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMORTIZED_COST', traits: {"smithy.api#enumValue" => "AMORTIZED_COST"}))
    Metric.add_member(:net_unblended_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NET_UNBLENDED_COST', traits: {"smithy.api#enumValue" => "NET_UNBLENDED_COST"}))
    Metric.add_member(:net_amortized_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NET_AMORTIZED_COST', traits: {"smithy.api#enumValue" => "NET_AMORTIZED_COST"}))
    Metric.add_member(:usage_quantity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USAGE_QUANTITY', traits: {"smithy.api#enumValue" => "USAGE_QUANTITY"}))
    Metric.add_member(:normalized_usage_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NORMALIZED_USAGE_AMOUNT', traits: {"smithy.api#enumValue" => "NORMALIZED_USAGE_AMOUNT"}))
    MetricNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName)
    MetricValue.add_member(:amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricAmount, location_name: 'Amount'))
    MetricValue.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricUnit, location_name: 'Unit'))
    MetricValue.type = Types::MetricValue
    Metrics.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName)
    Metrics.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricValue)
    MetricsOverLookbackPeriod.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationDetailHourlyMetrics)
    ModifyRecommendationDetail.add_member(:target_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstancesList, location_name: 'TargetInstances'))
    ModifyRecommendationDetail.type = Types::ModifyRecommendationDetail
    MonitorArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    MonitorDimension.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SERVICE', traits: {"smithy.api#enumValue" => "SERVICE"}))
    MonitorType.add_member(:dimensional, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIMENSIONAL', traits: {"smithy.api#enumValue" => "DIMENSIONAL"}))
    MonitorType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    NetworkResourceUtilization.add_member(:network_in_bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NetworkInBytesPerSecond'))
    NetworkResourceUtilization.add_member(:network_out_bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NetworkOutBytesPerSecond'))
    NetworkResourceUtilization.add_member(:network_packets_in_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NetworkPacketsInPerSecond'))
    NetworkResourceUtilization.add_member(:network_packets_out_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NetworkPacketsOutPerSecond'))
    NetworkResourceUtilization.type = Types::NetworkResourceUtilization
    NumericOperator.add_member(:equal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUAL', traits: {"smithy.api#enumValue" => "EQUAL"}))
    NumericOperator.add_member(:greater_than_or_equal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_OR_EQUAL', traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUAL"}))
    NumericOperator.add_member(:less_than_or_equal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN_OR_EQUAL', traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUAL"}))
    NumericOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN', traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    NumericOperator.add_member(:less_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN', traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    NumericOperator.add_member(:between, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BETWEEN', traits: {"smithy.api#enumValue" => "BETWEEN"}))
    OfferingClass.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    OfferingClass.add_member(:convertible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONVERTIBLE', traits: {"smithy.api#enumValue" => "CONVERTIBLE"}))
    PaymentOption.add_member(:no_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_UPFRONT', traits: {"smithy.api#enumValue" => "NO_UPFRONT"}))
    PaymentOption.add_member(:partial_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTIAL_UPFRONT', traits: {"smithy.api#enumValue" => "PARTIAL_UPFRONT"}))
    PaymentOption.add_member(:all_upfront, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL_UPFRONT', traits: {"smithy.api#enumValue" => "ALL_UPFRONT"}))
    PaymentOption.add_member(:light_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIGHT_UTILIZATION', traits: {"smithy.api#enumValue" => "LIGHT_UTILIZATION"}))
    PaymentOption.add_member(:medium_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM_UTILIZATION', traits: {"smithy.api#enumValue" => "MEDIUM_UTILIZATION"}))
    PaymentOption.add_member(:heavy_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEAVY_UTILIZATION', traits: {"smithy.api#enumValue" => "HEAVY_UTILIZATION"}))
    PlatformDifference.add_member(:hypervisor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HYPERVISOR', traits: {"smithy.api#enumValue" => "HYPERVISOR"}))
    PlatformDifference.add_member(:network_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_INTERFACE', traits: {"smithy.api#enumValue" => "NETWORK_INTERFACE"}))
    PlatformDifference.add_member(:storage_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STORAGE_INTERFACE', traits: {"smithy.api#enumValue" => "STORAGE_INTERFACE"}))
    PlatformDifference.add_member(:instance_store_availability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE_STORE_AVAILABILITY', traits: {"smithy.api#enumValue" => "INSTANCE_STORE_AVAILABILITY"}))
    PlatformDifference.add_member(:virtualization_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VIRTUALIZATION_TYPE', traits: {"smithy.api#enumValue" => "VIRTUALIZATION_TYPE"}))
    PlatformDifferences.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformDifference)
    ProvideAnomalyFeedbackRequest.add_member(:anomaly_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AnomalyId', traits: {"smithy.api#required" => {}}))
    ProvideAnomalyFeedbackRequest.add_member(:feedback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalyFeedbackType, location_name: 'Feedback', traits: {"smithy.api#required" => {}}))
    ProvideAnomalyFeedbackRequest.type = Types::ProvideAnomalyFeedbackRequest
    ProvideAnomalyFeedbackResponse.add_member(:anomaly_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AnomalyId', traits: {"smithy.api#required" => {}}))
    ProvideAnomalyFeedbackResponse.type = Types::ProvideAnomalyFeedbackResponse
    RDSInstanceDetails.add_member(:family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Family'))
    RDSInstanceDetails.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'InstanceType'))
    RDSInstanceDetails.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Region'))
    RDSInstanceDetails.add_member(:database_engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'DatabaseEngine'))
    RDSInstanceDetails.add_member(:database_edition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'DatabaseEdition'))
    RDSInstanceDetails.add_member(:deployment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'DeploymentOption'))
    RDSInstanceDetails.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'LicenseModel'))
    RDSInstanceDetails.add_member(:current_generation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'CurrentGeneration', traits: {"smithy.api#default" => false}))
    RDSInstanceDetails.add_member(:size_flex_eligible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'SizeFlexEligible', traits: {"smithy.api#default" => false}))
    RDSInstanceDetails.type = Types::RDSInstanceDetails
    RecommendationDetailData.add_member(:account_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountScope, location_name: 'AccountScope'))
    RecommendationDetailData.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LookbackPeriodInDays, location_name: 'LookbackPeriodInDays'))
    RecommendationDetailData.add_member(:savings_plans_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedSavingsPlansType, location_name: 'SavingsPlansType'))
    RecommendationDetailData.add_member(:term_in_years, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TermInYears, location_name: 'TermInYears'))
    RecommendationDetailData.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentOption, location_name: 'PaymentOption'))
    RecommendationDetailData.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AccountId'))
    RecommendationDetailData.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrencyCode'))
    RecommendationDetailData.add_member(:instance_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'InstanceFamily'))
    RecommendationDetailData.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Region'))
    RecommendationDetailData.add_member(:offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'OfferingId'))
    RecommendationDetailData.add_member(:generation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'GenerationTimestamp'))
    RecommendationDetailData.add_member(:latest_usage_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'LatestUsageTimestamp'))
    RecommendationDetailData.add_member(:current_average_hourly_on_demand_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrentAverageHourlyOnDemandSpend'))
    RecommendationDetailData.add_member(:current_maximum_hourly_on_demand_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrentMaximumHourlyOnDemandSpend'))
    RecommendationDetailData.add_member(:current_minimum_hourly_on_demand_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrentMinimumHourlyOnDemandSpend'))
    RecommendationDetailData.add_member(:estimated_average_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedAverageUtilization'))
    RecommendationDetailData.add_member(:estimated_monthly_savings_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedMonthlySavingsAmount'))
    RecommendationDetailData.add_member(:estimated_on_demand_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedOnDemandCost'))
    RecommendationDetailData.add_member(:estimated_on_demand_cost_with_current_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedOnDemandCostWithCurrentCommitment'))
    RecommendationDetailData.add_member(:estimated_roi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedROI'))
    RecommendationDetailData.add_member(:estimated_sp_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedSPCost'))
    RecommendationDetailData.add_member(:estimated_savings_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedSavingsAmount'))
    RecommendationDetailData.add_member(:estimated_savings_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedSavingsPercentage'))
    RecommendationDetailData.add_member(:existing_hourly_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ExistingHourlyCommitment'))
    RecommendationDetailData.add_member(:hourly_commitment_to_purchase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'HourlyCommitmentToPurchase'))
    RecommendationDetailData.add_member(:upfront_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'UpfrontCost'))
    RecommendationDetailData.add_member(:current_average_coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrentAverageCoverage'))
    RecommendationDetailData.add_member(:estimated_average_coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedAverageCoverage'))
    RecommendationDetailData.add_member(:metrics_over_lookback_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsOverLookbackPeriod, location_name: 'MetricsOverLookbackPeriod'))
    RecommendationDetailData.type = Types::RecommendationDetailData
    RecommendationDetailHourlyMetrics.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'StartTime'))
    RecommendationDetailHourlyMetrics.add_member(:estimated_on_demand_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedOnDemandCost'))
    RecommendationDetailHourlyMetrics.add_member(:current_coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrentCoverage'))
    RecommendationDetailHourlyMetrics.add_member(:estimated_coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedCoverage'))
    RecommendationDetailHourlyMetrics.add_member(:estimated_new_commitment_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedNewCommitmentUtilization'))
    RecommendationDetailHourlyMetrics.type = Types::RecommendationDetailHourlyMetrics
    RecommendationIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationId)
    RecommendationTarget.add_member(:same_instance_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAME_INSTANCE_FAMILY', traits: {"smithy.api#enumValue" => "SAME_INSTANCE_FAMILY"}))
    RecommendationTarget.add_member(:cross_instance_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CROSS_INSTANCE_FAMILY', traits: {"smithy.api#enumValue" => "CROSS_INSTANCE_FAMILY"}))
    RedshiftInstanceDetails.add_member(:family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Family'))
    RedshiftInstanceDetails.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NodeType'))
    RedshiftInstanceDetails.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Region'))
    RedshiftInstanceDetails.add_member(:current_generation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'CurrentGeneration', traits: {"smithy.api#default" => false}))
    RedshiftInstanceDetails.add_member(:size_flex_eligible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'SizeFlexEligible', traits: {"smithy.api#default" => false}))
    RedshiftInstanceDetails.type = Types::RedshiftInstanceDetails
    RequestChangedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    RequestChangedException.type = Types::RequestChangedException
    ReservationAggregates.add_member(:utilization_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UtilizationPercentage, location_name: 'UtilizationPercentage'))
    ReservationAggregates.add_member(:utilization_percentage_in_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UtilizationPercentageInUnits, location_name: 'UtilizationPercentageInUnits'))
    ReservationAggregates.add_member(:purchased_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchasedHours, location_name: 'PurchasedHours'))
    ReservationAggregates.add_member(:purchased_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchasedUnits, location_name: 'PurchasedUnits'))
    ReservationAggregates.add_member(:total_actual_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TotalActualHours, location_name: 'TotalActualHours'))
    ReservationAggregates.add_member(:total_actual_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TotalActualUnits, location_name: 'TotalActualUnits'))
    ReservationAggregates.add_member(:unused_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedHours, location_name: 'UnusedHours'))
    ReservationAggregates.add_member(:unused_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedUnits, location_name: 'UnusedUnits'))
    ReservationAggregates.add_member(:on_demand_cost_of_ri_hours_used, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnDemandCostOfRIHoursUsed, location_name: 'OnDemandCostOfRIHoursUsed'))
    ReservationAggregates.add_member(:net_ri_savings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetRISavings, location_name: 'NetRISavings'))
    ReservationAggregates.add_member(:total_potential_ri_savings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TotalPotentialRISavings, location_name: 'TotalPotentialRISavings'))
    ReservationAggregates.add_member(:amortized_upfront_fee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmortizedUpfrontFee, location_name: 'AmortizedUpfrontFee'))
    ReservationAggregates.add_member(:amortized_recurring_fee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmortizedRecurringFee, location_name: 'AmortizedRecurringFee'))
    ReservationAggregates.add_member(:total_amortized_fee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TotalAmortizedFee, location_name: 'TotalAmortizedFee'))
    ReservationAggregates.add_member(:ri_cost_for_unused_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RICostForUnusedHours, location_name: 'RICostForUnusedHours'))
    ReservationAggregates.add_member(:realized_savings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RealizedSavings, location_name: 'RealizedSavings'))
    ReservationAggregates.add_member(:unrealized_savings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnrealizedSavings, location_name: 'UnrealizedSavings'))
    ReservationAggregates.type = Types::ReservationAggregates
    ReservationCoverageGroup.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'Attributes'))
    ReservationCoverageGroup.add_member(:coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Coverage, location_name: 'Coverage'))
    ReservationCoverageGroup.type = Types::ReservationCoverageGroup
    ReservationCoverageGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationCoverageGroup)
    ReservationPurchaseRecommendation.add_member(:account_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountScope, location_name: 'AccountScope'))
    ReservationPurchaseRecommendation.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LookbackPeriodInDays, location_name: 'LookbackPeriodInDays'))
    ReservationPurchaseRecommendation.add_member(:term_in_years, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TermInYears, location_name: 'TermInYears'))
    ReservationPurchaseRecommendation.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentOption, location_name: 'PaymentOption'))
    ReservationPurchaseRecommendation.add_member(:service_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSpecification, location_name: 'ServiceSpecification'))
    ReservationPurchaseRecommendation.add_member(:recommendation_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendationDetails, location_name: 'RecommendationDetails'))
    ReservationPurchaseRecommendation.add_member(:recommendation_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendationSummary, location_name: 'RecommendationSummary'))
    ReservationPurchaseRecommendation.type = Types::ReservationPurchaseRecommendation
    ReservationPurchaseRecommendationDetail.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AccountId'))
    ReservationPurchaseRecommendationDetail.add_member(:instance_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceDetails, location_name: 'InstanceDetails'))
    ReservationPurchaseRecommendationDetail.add_member(:recommended_number_of_instances_to_purchase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'RecommendedNumberOfInstancesToPurchase'))
    ReservationPurchaseRecommendationDetail.add_member(:recommended_normalized_units_to_purchase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'RecommendedNormalizedUnitsToPurchase'))
    ReservationPurchaseRecommendationDetail.add_member(:minimum_number_of_instances_used_per_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MinimumNumberOfInstancesUsedPerHour'))
    ReservationPurchaseRecommendationDetail.add_member(:minimum_normalized_units_used_per_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MinimumNormalizedUnitsUsedPerHour'))
    ReservationPurchaseRecommendationDetail.add_member(:maximum_number_of_instances_used_per_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MaximumNumberOfInstancesUsedPerHour'))
    ReservationPurchaseRecommendationDetail.add_member(:maximum_normalized_units_used_per_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MaximumNormalizedUnitsUsedPerHour'))
    ReservationPurchaseRecommendationDetail.add_member(:average_number_of_instances_used_per_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AverageNumberOfInstancesUsedPerHour'))
    ReservationPurchaseRecommendationDetail.add_member(:average_normalized_units_used_per_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AverageNormalizedUnitsUsedPerHour'))
    ReservationPurchaseRecommendationDetail.add_member(:average_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AverageUtilization'))
    ReservationPurchaseRecommendationDetail.add_member(:estimated_break_even_in_months, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedBreakEvenInMonths'))
    ReservationPurchaseRecommendationDetail.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrencyCode'))
    ReservationPurchaseRecommendationDetail.add_member(:estimated_monthly_savings_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedMonthlySavingsAmount'))
    ReservationPurchaseRecommendationDetail.add_member(:estimated_monthly_savings_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedMonthlySavingsPercentage'))
    ReservationPurchaseRecommendationDetail.add_member(:estimated_monthly_on_demand_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedMonthlyOnDemandCost'))
    ReservationPurchaseRecommendationDetail.add_member(:estimated_reservation_cost_for_lookback_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedReservationCostForLookbackPeriod'))
    ReservationPurchaseRecommendationDetail.add_member(:upfront_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'UpfrontCost'))
    ReservationPurchaseRecommendationDetail.add_member(:recurring_standard_monthly_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'RecurringStandardMonthlyCost'))
    ReservationPurchaseRecommendationDetail.add_member(:reserved_capacity_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedCapacityDetails, location_name: 'ReservedCapacityDetails'))
    ReservationPurchaseRecommendationDetail.add_member(:recommended_number_of_capacity_units_to_purchase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'RecommendedNumberOfCapacityUnitsToPurchase'))
    ReservationPurchaseRecommendationDetail.add_member(:minimum_number_of_capacity_units_used_per_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MinimumNumberOfCapacityUnitsUsedPerHour'))
    ReservationPurchaseRecommendationDetail.add_member(:maximum_number_of_capacity_units_used_per_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MaximumNumberOfCapacityUnitsUsedPerHour'))
    ReservationPurchaseRecommendationDetail.add_member(:average_number_of_capacity_units_used_per_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AverageNumberOfCapacityUnitsUsedPerHour'))
    ReservationPurchaseRecommendationDetail.type = Types::ReservationPurchaseRecommendationDetail
    ReservationPurchaseRecommendationDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendationDetail)
    ReservationPurchaseRecommendationMetadata.add_member(:recommendation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'RecommendationId'))
    ReservationPurchaseRecommendationMetadata.add_member(:generation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'GenerationTimestamp'))
    ReservationPurchaseRecommendationMetadata.add_member(:additional_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AdditionalMetadata'))
    ReservationPurchaseRecommendationMetadata.type = Types::ReservationPurchaseRecommendationMetadata
    ReservationPurchaseRecommendationSummary.add_member(:total_estimated_monthly_savings_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'TotalEstimatedMonthlySavingsAmount'))
    ReservationPurchaseRecommendationSummary.add_member(:total_estimated_monthly_savings_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'TotalEstimatedMonthlySavingsPercentage'))
    ReservationPurchaseRecommendationSummary.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrencyCode'))
    ReservationPurchaseRecommendationSummary.type = Types::ReservationPurchaseRecommendationSummary
    ReservationPurchaseRecommendations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendation)
    ReservationUtilizationGroup.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationGroupKey, location_name: 'Key'))
    ReservationUtilizationGroup.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationGroupValue, location_name: 'Value'))
    ReservationUtilizationGroup.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'Attributes'))
    ReservationUtilizationGroup.add_member(:utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationAggregates, location_name: 'Utilization'))
    ReservationUtilizationGroup.type = Types::ReservationUtilizationGroup
    ReservationUtilizationGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationUtilizationGroup)
    ReservedCapacityDetails.add_member(:dynamo_db_capacity_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamoDBCapacityDetails, location_name: 'DynamoDBCapacityDetails'))
    ReservedCapacityDetails.type = Types::ReservedCapacityDetails
    ResourceDetails.add_member(:ec2_resource_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2ResourceDetails, location_name: 'EC2ResourceDetails'))
    ResourceDetails.type = Types::ResourceDetails
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceName'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    ResourceTag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    ResourceTag.type = Types::ResourceTag
    ResourceTagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKey)
    ResourceTagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTag)
    ResourceUtilization.add_member(:ec2_resource_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2ResourceUtilization, location_name: 'EC2ResourceUtilization'))
    ResourceUtilization.type = Types::ResourceUtilization
    ResultByTime.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod'))
    ResultByTime.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metrics, location_name: 'Total'))
    ResultByTime.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Groups, location_name: 'Groups'))
    ResultByTime.add_member(:estimated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Estimated, location_name: 'Estimated', traits: {"smithy.api#default" => false}))
    ResultByTime.type = Types::ResultByTime
    ResultsByTime.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultByTime)
    RightsizingRecommendation.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AccountId'))
    RightsizingRecommendation.add_member(:current_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrentInstance, location_name: 'CurrentInstance'))
    RightsizingRecommendation.add_member(:rightsizing_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RightsizingType, location_name: 'RightsizingType'))
    RightsizingRecommendation.add_member(:modify_recommendation_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyRecommendationDetail, location_name: 'ModifyRecommendationDetail'))
    RightsizingRecommendation.add_member(:terminate_recommendation_detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateRecommendationDetail, location_name: 'TerminateRecommendationDetail'))
    RightsizingRecommendation.add_member(:finding_reason_codes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingReasonCodes, location_name: 'FindingReasonCodes'))
    RightsizingRecommendation.type = Types::RightsizingRecommendation
    RightsizingRecommendationConfiguration.add_member(:recommendation_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTarget, location_name: 'RecommendationTarget', traits: {"smithy.api#required" => {}}))
    RightsizingRecommendationConfiguration.add_member(:benefits_considered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'BenefitsConsidered', traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    RightsizingRecommendationConfiguration.type = Types::RightsizingRecommendationConfiguration
    RightsizingRecommendationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RightsizingRecommendation)
    RightsizingRecommendationMetadata.add_member(:recommendation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'RecommendationId'))
    RightsizingRecommendationMetadata.add_member(:generation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'GenerationTimestamp'))
    RightsizingRecommendationMetadata.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LookbackPeriodInDays, location_name: 'LookbackPeriodInDays'))
    RightsizingRecommendationMetadata.add_member(:additional_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AdditionalMetadata'))
    RightsizingRecommendationMetadata.type = Types::RightsizingRecommendationMetadata
    RightsizingRecommendationSummary.add_member(:total_recommendation_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'TotalRecommendationCount'))
    RightsizingRecommendationSummary.add_member(:estimated_total_monthly_savings_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedTotalMonthlySavingsAmount'))
    RightsizingRecommendationSummary.add_member(:savings_currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'SavingsCurrencyCode'))
    RightsizingRecommendationSummary.add_member(:savings_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'SavingsPercentage'))
    RightsizingRecommendationSummary.type = Types::RightsizingRecommendationSummary
    RightsizingType.add_member(:terminate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATE', traits: {"smithy.api#enumValue" => "TERMINATE"}))
    RightsizingType.add_member(:modify, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFY', traits: {"smithy.api#enumValue" => "MODIFY"}))
    RootCause.add_member(:service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Service'))
    RootCause.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Region'))
    RootCause.add_member(:linked_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'LinkedAccount'))
    RootCause.add_member(:linked_account_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'LinkedAccountName'))
    RootCause.add_member(:usage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'UsageType'))
    RootCause.add_member(:impact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootCauseImpact, location_name: 'Impact'))
    RootCause.type = Types::RootCause
    RootCauseImpact.add_member(:contribution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericDouble, location_name: 'Contribution', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    RootCauseImpact.type = Types::RootCauseImpact
    RootCauses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootCause)
    SavingsPlans.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentOption, location_name: 'PaymentOption'))
    SavingsPlans.add_member(:savings_plans_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedSavingsPlansType, location_name: 'SavingsPlansType'))
    SavingsPlans.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Region'))
    SavingsPlans.add_member(:instance_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'InstanceFamily'))
    SavingsPlans.add_member(:term_in_years, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TermInYears, location_name: 'TermInYears'))
    SavingsPlans.add_member(:savings_plans_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansCommitment, location_name: 'SavingsPlansCommitment'))
    SavingsPlans.add_member(:offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'OfferingId'))
    SavingsPlans.type = Types::SavingsPlans
    SavingsPlansAmortizedCommitment.add_member(:amortized_recurring_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AmortizedRecurringCommitment'))
    SavingsPlansAmortizedCommitment.add_member(:amortized_upfront_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AmortizedUpfrontCommitment'))
    SavingsPlansAmortizedCommitment.add_member(:total_amortized_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'TotalAmortizedCommitment'))
    SavingsPlansAmortizedCommitment.type = Types::SavingsPlansAmortizedCommitment
    SavingsPlansCoverage.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'Attributes'))
    SavingsPlansCoverage.add_member(:coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansCoverageData, location_name: 'Coverage'))
    SavingsPlansCoverage.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod'))
    SavingsPlansCoverage.type = Types::SavingsPlansCoverage
    SavingsPlansCoverageData.add_member(:spend_covered_by_savings_plans, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'SpendCoveredBySavingsPlans'))
    SavingsPlansCoverageData.add_member(:on_demand_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'OnDemandCost'))
    SavingsPlansCoverageData.add_member(:total_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'TotalCost'))
    SavingsPlansCoverageData.add_member(:coverage_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CoveragePercentage'))
    SavingsPlansCoverageData.type = Types::SavingsPlansCoverageData
    SavingsPlansCoverages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansCoverage)
    SavingsPlansDataType.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTRIBUTES', traits: {"smithy.api#enumValue" => "ATTRIBUTES"}))
    SavingsPlansDataType.add_member(:utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UTILIZATION', traits: {"smithy.api#enumValue" => "UTILIZATION"}))
    SavingsPlansDataType.add_member(:amortized_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMORTIZED_COMMITMENT', traits: {"smithy.api#enumValue" => "AMORTIZED_COMMITMENT"}))
    SavingsPlansDataType.add_member(:savings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAVINGS', traits: {"smithy.api#enumValue" => "SAVINGS"}))
    SavingsPlansDataTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansDataType)
    SavingsPlansDetails.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Region'))
    SavingsPlansDetails.add_member(:instance_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'InstanceFamily'))
    SavingsPlansDetails.add_member(:offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'OfferingId'))
    SavingsPlansDetails.type = Types::SavingsPlansDetails
    SavingsPlansPurchaseAnalysisConfiguration.add_member(:account_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountScope, location_name: 'AccountScope'))
    SavingsPlansPurchaseAnalysisConfiguration.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'AccountId'))
    SavingsPlansPurchaseAnalysisConfiguration.add_member(:analysis_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisType, location_name: 'AnalysisType', traits: {"smithy.api#required" => {}}))
    SavingsPlansPurchaseAnalysisConfiguration.add_member(:savings_plans_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansToAdd, location_name: 'SavingsPlansToAdd', traits: {"smithy.api#required" => {}}))
    SavingsPlansPurchaseAnalysisConfiguration.add_member(:savings_plans_to_exclude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansToExclude, location_name: 'SavingsPlansToExclude'))
    SavingsPlansPurchaseAnalysisConfiguration.add_member(:look_back_time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'LookBackTimePeriod', traits: {"smithy.api#required" => {}}))
    SavingsPlansPurchaseAnalysisConfiguration.type = Types::SavingsPlansPurchaseAnalysisConfiguration
    SavingsPlansPurchaseAnalysisDetails.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrencyCode'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:lookback_period_in_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'LookbackPeriodInHours'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:current_average_coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrentAverageCoverage'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:current_average_hourly_on_demand_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrentAverageHourlyOnDemandSpend'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:current_maximum_hourly_on_demand_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrentMaximumHourlyOnDemandSpend'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:current_minimum_hourly_on_demand_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrentMinimumHourlyOnDemandSpend'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:current_on_demand_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrentOnDemandSpend'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:existing_hourly_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'ExistingHourlyCommitment'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:hourly_commitment_to_purchase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'HourlyCommitmentToPurchase'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_average_coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedAverageCoverage'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_average_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedAverageUtilization'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_monthly_savings_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedMonthlySavingsAmount'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_on_demand_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedOnDemandCost'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_on_demand_cost_with_current_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedOnDemandCostWithCurrentCommitment'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_roi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedROI'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_savings_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedSavingsAmount'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_savings_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedSavingsPercentage'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_commitment_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedCommitmentCost'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:latest_usage_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'LatestUsageTimestamp'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:upfront_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'UpfrontCost'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:additional_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AdditionalMetadata'))
    SavingsPlansPurchaseAnalysisDetails.add_member(:metrics_over_lookback_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsOverLookbackPeriod, location_name: 'MetricsOverLookbackPeriod'))
    SavingsPlansPurchaseAnalysisDetails.type = Types::SavingsPlansPurchaseAnalysisDetails
    SavingsPlansPurchaseRecommendation.add_member(:account_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountScope, location_name: 'AccountScope'))
    SavingsPlansPurchaseRecommendation.add_member(:savings_plans_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedSavingsPlansType, location_name: 'SavingsPlansType'))
    SavingsPlansPurchaseRecommendation.add_member(:term_in_years, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TermInYears, location_name: 'TermInYears'))
    SavingsPlansPurchaseRecommendation.add_member(:payment_option, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaymentOption, location_name: 'PaymentOption'))
    SavingsPlansPurchaseRecommendation.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LookbackPeriodInDays, location_name: 'LookbackPeriodInDays'))
    SavingsPlansPurchaseRecommendation.add_member(:savings_plans_purchase_recommendation_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansPurchaseRecommendationDetailList, location_name: 'SavingsPlansPurchaseRecommendationDetails'))
    SavingsPlansPurchaseRecommendation.add_member(:savings_plans_purchase_recommendation_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansPurchaseRecommendationSummary, location_name: 'SavingsPlansPurchaseRecommendationSummary'))
    SavingsPlansPurchaseRecommendation.type = Types::SavingsPlansPurchaseRecommendation
    SavingsPlansPurchaseRecommendationDetail.add_member(:savings_plans_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansDetails, location_name: 'SavingsPlansDetails'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AccountId'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:upfront_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'UpfrontCost'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_roi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedROI'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrencyCode'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_sp_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedSPCost'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_on_demand_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedOnDemandCost'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_on_demand_cost_with_current_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedOnDemandCostWithCurrentCommitment'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_savings_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedSavingsAmount'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_savings_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedSavingsPercentage'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:hourly_commitment_to_purchase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'HourlyCommitmentToPurchase'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_average_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedAverageUtilization'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_monthly_savings_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedMonthlySavingsAmount'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:current_minimum_hourly_on_demand_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrentMinimumHourlyOnDemandSpend'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:current_maximum_hourly_on_demand_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrentMaximumHourlyOnDemandSpend'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:current_average_hourly_on_demand_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrentAverageHourlyOnDemandSpend'))
    SavingsPlansPurchaseRecommendationDetail.add_member(:recommendation_detail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationDetailId, location_name: 'RecommendationDetailId'))
    SavingsPlansPurchaseRecommendationDetail.type = Types::SavingsPlansPurchaseRecommendationDetail
    SavingsPlansPurchaseRecommendationDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansPurchaseRecommendationDetail)
    SavingsPlansPurchaseRecommendationMetadata.add_member(:recommendation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'RecommendationId'))
    SavingsPlansPurchaseRecommendationMetadata.add_member(:generation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'GenerationTimestamp'))
    SavingsPlansPurchaseRecommendationMetadata.add_member(:additional_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'AdditionalMetadata'))
    SavingsPlansPurchaseRecommendationMetadata.type = Types::SavingsPlansPurchaseRecommendationMetadata
    SavingsPlansPurchaseRecommendationSummary.add_member(:estimated_roi, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedROI'))
    SavingsPlansPurchaseRecommendationSummary.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrencyCode'))
    SavingsPlansPurchaseRecommendationSummary.add_member(:estimated_total_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedTotalCost'))
    SavingsPlansPurchaseRecommendationSummary.add_member(:current_on_demand_spend, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrentOnDemandSpend'))
    SavingsPlansPurchaseRecommendationSummary.add_member(:estimated_savings_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedSavingsAmount'))
    SavingsPlansPurchaseRecommendationSummary.add_member(:total_recommendation_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'TotalRecommendationCount'))
    SavingsPlansPurchaseRecommendationSummary.add_member(:daily_commitment_to_purchase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'DailyCommitmentToPurchase'))
    SavingsPlansPurchaseRecommendationSummary.add_member(:hourly_commitment_to_purchase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'HourlyCommitmentToPurchase'))
    SavingsPlansPurchaseRecommendationSummary.add_member(:estimated_savings_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedSavingsPercentage'))
    SavingsPlansPurchaseRecommendationSummary.add_member(:estimated_monthly_savings_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedMonthlySavingsAmount'))
    SavingsPlansPurchaseRecommendationSummary.add_member(:estimated_on_demand_cost_with_current_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedOnDemandCostWithCurrentCommitment'))
    SavingsPlansPurchaseRecommendationSummary.type = Types::SavingsPlansPurchaseRecommendationSummary
    SavingsPlansSavings.add_member(:net_savings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'NetSavings'))
    SavingsPlansSavings.add_member(:on_demand_cost_equivalent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'OnDemandCostEquivalent'))
    SavingsPlansSavings.type = Types::SavingsPlansSavings
    SavingsPlansToAdd.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlans)
    SavingsPlansToExclude.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansId)
    SavingsPlansUtilization.add_member(:total_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'TotalCommitment'))
    SavingsPlansUtilization.add_member(:used_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'UsedCommitment'))
    SavingsPlansUtilization.add_member(:unused_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'UnusedCommitment'))
    SavingsPlansUtilization.add_member(:utilization_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'UtilizationPercentage'))
    SavingsPlansUtilization.type = Types::SavingsPlansUtilization
    SavingsPlansUtilizationAggregates.add_member(:utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansUtilization, location_name: 'Utilization', traits: {"smithy.api#required" => {}}))
    SavingsPlansUtilizationAggregates.add_member(:savings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansSavings, location_name: 'Savings'))
    SavingsPlansUtilizationAggregates.add_member(:amortized_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansAmortizedCommitment, location_name: 'AmortizedCommitment'))
    SavingsPlansUtilizationAggregates.type = Types::SavingsPlansUtilizationAggregates
    SavingsPlansUtilizationByTime.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod', traits: {"smithy.api#required" => {}}))
    SavingsPlansUtilizationByTime.add_member(:utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansUtilization, location_name: 'Utilization', traits: {"smithy.api#required" => {}}))
    SavingsPlansUtilizationByTime.add_member(:savings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansSavings, location_name: 'Savings'))
    SavingsPlansUtilizationByTime.add_member(:amortized_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansAmortizedCommitment, location_name: 'AmortizedCommitment'))
    SavingsPlansUtilizationByTime.type = Types::SavingsPlansUtilizationByTime
    SavingsPlansUtilizationDetail.add_member(:savings_plan_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlanArn, location_name: 'SavingsPlanArn'))
    SavingsPlansUtilizationDetail.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'Attributes'))
    SavingsPlansUtilizationDetail.add_member(:utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansUtilization, location_name: 'Utilization'))
    SavingsPlansUtilizationDetail.add_member(:savings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansSavings, location_name: 'Savings'))
    SavingsPlansUtilizationDetail.add_member(:amortized_commitment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansAmortizedCommitment, location_name: 'AmortizedCommitment'))
    SavingsPlansUtilizationDetail.type = Types::SavingsPlansUtilizationDetail
    SavingsPlansUtilizationDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansUtilizationDetail)
    SavingsPlansUtilizationsByTime.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SavingsPlansUtilizationByTime)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceSpecification.add_member(:ec2_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2Specification, location_name: 'EC2Specification'))
    ServiceSpecification.type = Types::ServiceSpecification
    SortDefinition.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortDefinitionKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    SortDefinition.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'SortOrder'))
    SortDefinition.type = Types::SortDefinition
    SortDefinitions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortDefinition)
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "DESCENDING"}))
    StartCommitmentPurchaseAnalysisRequest.add_member(:commitment_purchase_analysis_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitmentPurchaseAnalysisConfiguration, location_name: 'CommitmentPurchaseAnalysisConfiguration', traits: {"smithy.api#required" => {}}))
    StartCommitmentPurchaseAnalysisRequest.type = Types::StartCommitmentPurchaseAnalysisRequest
    StartCommitmentPurchaseAnalysisResponse.add_member(:analysis_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisId, location_name: 'AnalysisId', traits: {"smithy.api#required" => {}}))
    StartCommitmentPurchaseAnalysisResponse.add_member(:analysis_started_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'AnalysisStartedTime', traits: {"smithy.api#required" => {}}))
    StartCommitmentPurchaseAnalysisResponse.add_member(:estimated_completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EstimatedCompletionTime', traits: {"smithy.api#required" => {}}))
    StartCommitmentPurchaseAnalysisResponse.type = Types::StartCommitmentPurchaseAnalysisResponse
    StartCostAllocationTagBackfillRequest.add_member(:backfill_from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'BackfillFrom', traits: {"smithy.api#required" => {}}))
    StartCostAllocationTagBackfillRequest.type = Types::StartCostAllocationTagBackfillRequest
    StartCostAllocationTagBackfillResponse.add_member(:backfill_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTagBackfillRequest, location_name: 'BackfillRequest'))
    StartCostAllocationTagBackfillResponse.type = Types::StartCostAllocationTagBackfillResponse
    StartSavingsPlansPurchaseRecommendationGenerationRequest.type = Types::StartSavingsPlansPurchaseRecommendationGenerationRequest
    StartSavingsPlansPurchaseRecommendationGenerationResponse.add_member(:recommendation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationId, location_name: 'RecommendationId'))
    StartSavingsPlansPurchaseRecommendationGenerationResponse.add_member(:generation_started_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'GenerationStartedTime'))
    StartSavingsPlansPurchaseRecommendationGenerationResponse.add_member(:estimated_completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EstimatedCompletionTime'))
    StartSavingsPlansPurchaseRecommendationGenerationResponse.type = Types::StartSavingsPlansPurchaseRecommendationGenerationResponse
    Subscriber.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriberAddress, location_name: 'Address'))
    Subscriber.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriberType, location_name: 'Type'))
    Subscriber.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriberStatus, location_name: 'Status'))
    Subscriber.type = Types::Subscriber
    SubscriberStatus.add_member(:confirmed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIRMED', traits: {"smithy.api#enumValue" => "CONFIRMED"}))
    SubscriberStatus.add_member(:declined, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DECLINED', traits: {"smithy.api#enumValue" => "DECLINED"}))
    SubscriberType.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL', traits: {"smithy.api#enumValue" => "EMAIL"}))
    SubscriberType.add_member(:sns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNS', traits: {"smithy.api#enumValue" => "SNS"}))
    Subscribers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscriber)
    SupportedSavingsPlansType.add_member(:compute_sp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPUTE_SP', traits: {"smithy.api#enumValue" => "COMPUTE_SP"}))
    SupportedSavingsPlansType.add_member(:ec2_instance_sp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2_INSTANCE_SP', traits: {"smithy.api#enumValue" => "EC2_INSTANCE_SP"}))
    SupportedSavingsPlansType.add_member(:sagemaker_sp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAGEMAKER_SP', traits: {"smithy.api#enumValue" => "SAGEMAKER_SP"}))
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Entity)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagList, location_name: 'ResourceTags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagValues.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key'))
    TagValues.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Values, location_name: 'Values'))
    TagValues.add_member(:match_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchOptions, location_name: 'MatchOptions'))
    TagValues.type = Types::TagValues
    TagValuesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValues)
    TargetInstance.add_member(:estimated_monthly_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedMonthlyCost'))
    TargetInstance.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedMonthlySavings'))
    TargetInstance.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrencyCode'))
    TargetInstance.add_member(:default_target_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericBoolean, location_name: 'DefaultTargetInstance', traits: {"smithy.api#default" => false}))
    TargetInstance.add_member(:resource_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDetails, location_name: 'ResourceDetails'))
    TargetInstance.add_member(:expected_resource_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUtilization, location_name: 'ExpectedResourceUtilization'))
    TargetInstance.add_member(:platform_differences, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformDifferences, location_name: 'PlatformDifferences'))
    TargetInstance.type = Types::TargetInstance
    TargetInstancesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetInstance)
    TermInYears.add_member(:one_year, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_YEAR', traits: {"smithy.api#enumValue" => "ONE_YEAR"}))
    TermInYears.add_member(:three_years, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THREE_YEARS', traits: {"smithy.api#enumValue" => "THREE_YEARS"}))
    TerminateRecommendationDetail.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'EstimatedMonthlySavings'))
    TerminateRecommendationDetail.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'CurrencyCode'))
    TerminateRecommendationDetail.type = Types::TerminateRecommendationDetail
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceName'))
    TooManyTagsException.type = Types::TooManyTagsException
    TotalImpactFilter.add_member(:numeric_operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumericOperator, location_name: 'NumericOperator', traits: {"smithy.api#required" => {}}))
    TotalImpactFilter.add_member(:start_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericDouble, location_name: 'StartValue', traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    TotalImpactFilter.add_member(:end_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericDouble, location_name: 'EndValue', traits: {"smithy.api#default" => 0}))
    TotalImpactFilter.type = Types::TotalImpactFilter
    UnknownMonitorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UnknownMonitorException.type = Types::UnknownMonitorException
    UnknownSubscriptionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UnknownSubscriptionException.type = Types::UnknownSubscriptionException
    UnresolvableUsageUnitException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UnresolvableUsageUnitException.type = Types::UnresolvableUsageUnitException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:resource_tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagKeyList, location_name: 'ResourceTagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAnomalyMonitorRequest.add_member(:monitor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MonitorArn', traits: {"smithy.api#required" => {}}))
    UpdateAnomalyMonitorRequest.add_member(:monitor_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MonitorName'))
    UpdateAnomalyMonitorRequest.type = Types::UpdateAnomalyMonitorRequest
    UpdateAnomalyMonitorResponse.add_member(:monitor_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'MonitorArn', traits: {"smithy.api#required" => {}}))
    UpdateAnomalyMonitorResponse.type = Types::UpdateAnomalyMonitorResponse
    UpdateAnomalySubscriptionRequest.add_member(:subscription_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'SubscriptionArn', traits: {"smithy.api#required" => {}}))
    UpdateAnomalySubscriptionRequest.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableNonNegativeDouble, location_name: 'Threshold', traits: {"smithy.api#deprecated" => {"message" => "Threshold has been deprecated in favor of ThresholdExpression"}}))
    UpdateAnomalySubscriptionRequest.add_member(:frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnomalySubscriptionFrequency, location_name: 'Frequency'))
    UpdateAnomalySubscriptionRequest.add_member(:monitor_arn_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonitorArnList, location_name: 'MonitorArnList'))
    UpdateAnomalySubscriptionRequest.add_member(:subscribers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subscribers, location_name: 'Subscribers'))
    UpdateAnomalySubscriptionRequest.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'SubscriptionName'))
    UpdateAnomalySubscriptionRequest.add_member(:threshold_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'ThresholdExpression'))
    UpdateAnomalySubscriptionRequest.type = Types::UpdateAnomalySubscriptionRequest
    UpdateAnomalySubscriptionResponse.add_member(:subscription_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'SubscriptionArn', traits: {"smithy.api#required" => {}}))
    UpdateAnomalySubscriptionResponse.type = Types::UpdateAnomalySubscriptionResponse
    UpdateCostAllocationTagsStatusError.add_member(:tag_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'TagKey'))
    UpdateCostAllocationTagsStatusError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString, location_name: 'Code'))
    UpdateCostAllocationTagsStatusError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UpdateCostAllocationTagsStatusError.type = Types::UpdateCostAllocationTagsStatusError
    UpdateCostAllocationTagsStatusErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCostAllocationTagsStatusError)
    UpdateCostAllocationTagsStatusRequest.add_member(:cost_allocation_tags_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostAllocationTagStatusList, location_name: 'CostAllocationTagsStatus', traits: {"smithy.api#required" => {}}))
    UpdateCostAllocationTagsStatusRequest.type = Types::UpdateCostAllocationTagsStatusRequest
    UpdateCostAllocationTagsStatusResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCostAllocationTagsStatusErrors, location_name: 'Errors'))
    UpdateCostAllocationTagsStatusResponse.type = Types::UpdateCostAllocationTagsStatusResponse
    UpdateCostCategoryDefinitionRequest.add_member(:cost_category_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CostCategoryArn', traits: {"smithy.api#required" => {}}))
    UpdateCostCategoryDefinitionRequest.add_member(:effective_start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EffectiveStart'))
    UpdateCostCategoryDefinitionRequest.add_member(:rule_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryRuleVersion, location_name: 'RuleVersion', traits: {"smithy.api#required" => {}}))
    UpdateCostCategoryDefinitionRequest.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryRulesList, location_name: 'Rules', traits: {"smithy.api#required" => {}}))
    UpdateCostCategoryDefinitionRequest.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategoryValue, location_name: 'DefaultValue'))
    UpdateCostCategoryDefinitionRequest.add_member(:split_charge_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CostCategorySplitChargeRulesList, location_name: 'SplitChargeRules'))
    UpdateCostCategoryDefinitionRequest.type = Types::UpdateCostCategoryDefinitionRequest
    UpdateCostCategoryDefinitionResponse.add_member(:cost_category_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CostCategoryArn'))
    UpdateCostCategoryDefinitionResponse.add_member(:effective_start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: 'EffectiveStart'))
    UpdateCostCategoryDefinitionResponse.type = Types::UpdateCostCategoryDefinitionResponse
    UsageServices.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericString)
    UtilizationByTime.add_member(:time_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateInterval, location_name: 'TimePeriod'))
    UtilizationByTime.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationUtilizationGroups, location_name: 'Groups'))
    UtilizationByTime.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservationAggregates, location_name: 'Total'))
    UtilizationByTime.type = Types::UtilizationByTime
    UtilizationsByTime.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UtilizationByTime)
    Values.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Value)

    AWSInsightsIndexService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.costexplorer#AWSInsightsIndexService"
      service.name = "AWSInsightsIndexService"
      service.version = "2017-10-25"
      service.traits = {"aws.api#service" => {"sdkId" => "Cost Explorer", "arnNamespace" => "ce", "cloudFormationName" => "CostExplorer", "cloudTrailEventSource" => "costexplorer.amazonaws.com", "docId" => "ce-2017-10-25", "endpointPrefix" => "ce"}, "aws.auth#sigv4" => {"name" => "ce"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Cost Explorer Service"}
      service.add_operation(:create_anomaly_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#CreateAnomalyMonitor"
        operation.name = "CreateAnomalyMonitor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnomalyMonitorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnomalyMonitorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_anomaly_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#CreateAnomalySubscription"
        operation.name = "CreateAnomalySubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnomalySubscriptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnomalySubscriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownMonitorException)
        operation.traits = {}
      end)
      service.add_operation(:create_cost_category_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#CreateCostCategoryDefinition"
        operation.name = "CreateCostCategoryDefinition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCostCategoryDefinitionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCostCategoryDefinitionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {}
      end)
      service.add_operation(:delete_anomaly_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#DeleteAnomalyMonitor"
        operation.name = "DeleteAnomalyMonitor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnomalyMonitorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnomalyMonitorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownMonitorException)
        operation.traits = {}
      end)
      service.add_operation(:delete_anomaly_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#DeleteAnomalySubscription"
        operation.name = "DeleteAnomalySubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnomalySubscriptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnomalySubscriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownSubscriptionException)
        operation.traits = {}
      end)
      service.add_operation(:delete_cost_category_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#DeleteCostCategoryDefinition"
        operation.name = "DeleteCostCategoryDefinition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCostCategoryDefinitionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCostCategoryDefinitionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_cost_category_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#DescribeCostCategoryDefinition"
        operation.name = "DescribeCostCategoryDefinition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCostCategoryDefinitionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCostCategoryDefinitionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_anomalies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetAnomalies"
        operation.name = "GetAnomalies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnomaliesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnomaliesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetAnomalies.new
      end)
      service.add_operation(:get_anomaly_monitors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetAnomalyMonitors"
        operation.name = "GetAnomalyMonitors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnomalyMonitorsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnomalyMonitorsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownMonitorException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetAnomalyMonitors.new
      end)
      service.add_operation(:get_anomaly_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetAnomalySubscriptions"
        operation.name = "GetAnomalySubscriptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnomalySubscriptionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnomalySubscriptionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownSubscriptionException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetAnomalySubscriptions.new
      end)
      service.add_operation(:get_approximate_usage_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetApproximateUsageRecords"
        operation.name = "GetApproximateUsageRecords"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApproximateUsageRecordsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApproximateUsageRecordsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:get_commitment_purchase_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetCommitmentPurchaseAnalysis"
        operation.name = "GetCommitmentPurchaseAnalysis"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCommitmentPurchaseAnalysisRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCommitmentPurchaseAnalysisResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:get_cost_and_usage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetCostAndUsage"
        operation.name = "GetCostAndUsage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostAndUsageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostAndUsageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillExpirationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestChangedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_cost_and_usage_comparisons, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetCostAndUsageComparisons"
        operation.name = "GetCostAndUsageComparisons"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostAndUsageComparisonsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostAndUsageComparisonsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetCostAndUsageComparisons.new
      end)
      service.add_operation(:get_cost_and_usage_with_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetCostAndUsageWithResources"
        operation.name = "GetCostAndUsageWithResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostAndUsageWithResourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostAndUsageWithResourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillExpirationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestChangedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_cost_categories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetCostCategories"
        operation.name = "GetCostCategories"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostCategoriesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostCategoriesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillExpirationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestChangedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_cost_comparison_drivers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetCostComparisonDrivers"
        operation.name = "GetCostComparisonDrivers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostComparisonDriversRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostComparisonDriversResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetCostComparisonDrivers.new
      end)
      service.add_operation(:get_cost_forecast, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetCostForecast"
        operation.name = "GetCostForecast"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostForecastRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCostForecastResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_dimension_values, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetDimensionValues"
        operation.name = "GetDimensionValues"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDimensionValuesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDimensionValuesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillExpirationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestChangedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_reservation_coverage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetReservationCoverage"
        operation.name = "GetReservationCoverage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservationCoverageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservationCoverageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:get_reservation_purchase_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetReservationPurchaseRecommendation"
        operation.name = "GetReservationPurchaseRecommendation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservationPurchaseRecommendationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservationPurchaseRecommendationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:get_reservation_utilization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetReservationUtilization"
        operation.name = "GetReservationUtilization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservationUtilizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservationUtilizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:get_rightsizing_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetRightsizingRecommendation"
        operation.name = "GetRightsizingRecommendation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRightsizingRecommendationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRightsizingRecommendationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:get_savings_plan_purchase_recommendation_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetSavingsPlanPurchaseRecommendationDetails"
        operation.name = "GetSavingsPlanPurchaseRecommendationDetails"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSavingsPlanPurchaseRecommendationDetailsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSavingsPlanPurchaseRecommendationDetailsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:get_savings_plans_coverage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetSavingsPlansCoverage"
        operation.name = "GetSavingsPlansCoverage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSavingsPlansCoverageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSavingsPlansCoverageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetSavingsPlansCoverage.new
      end)
      service.add_operation(:get_savings_plans_purchase_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetSavingsPlansPurchaseRecommendation"
        operation.name = "GetSavingsPlansPurchaseRecommendation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSavingsPlansPurchaseRecommendationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSavingsPlansPurchaseRecommendationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:get_savings_plans_utilization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetSavingsPlansUtilization"
        operation.name = "GetSavingsPlansUtilization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSavingsPlansUtilizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSavingsPlansUtilizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:get_savings_plans_utilization_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetSavingsPlansUtilizationDetails"
        operation.name = "GetSavingsPlansUtilizationDetails"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSavingsPlansUtilizationDetailsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSavingsPlansUtilizationDetailsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetSavingsPlansUtilizationDetails.new
      end)
      service.add_operation(:get_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetTags"
        operation.name = "GetTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTagsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BillExpirationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestChangedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_usage_forecast, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#GetUsageForecast"
        operation.name = "GetUsageForecast"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsageForecastRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsageForecastResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnresolvableUsageUnitException)
        operation.traits = {}
      end)
      service.add_operation(:list_commitment_purchase_analyses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#ListCommitmentPurchaseAnalyses"
        operation.name = "ListCommitmentPurchaseAnalyses"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCommitmentPurchaseAnalysesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCommitmentPurchaseAnalysesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:list_cost_allocation_tag_backfill_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#ListCostAllocationTagBackfillHistory"
        operation.name = "ListCostAllocationTagBackfillHistory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCostAllocationTagBackfillHistoryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCostAllocationTagBackfillHistoryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCostAllocationTagBackfillHistory.new
      end)
      service.add_operation(:list_cost_allocation_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#ListCostAllocationTags"
        operation.name = "ListCostAllocationTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCostAllocationTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCostAllocationTagsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCostAllocationTags.new
      end)
      service.add_operation(:list_cost_category_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#ListCostCategoryDefinitions"
        operation.name = "ListCostCategoryDefinitions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCostCategoryDefinitionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCostCategoryDefinitionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCostCategoryDefinitions.new
      end)
      service.add_operation(:list_savings_plans_purchase_recommendation_generation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#ListSavingsPlansPurchaseRecommendationGeneration"
        operation.name = "ListSavingsPlansPurchaseRecommendationGeneration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSavingsPlansPurchaseRecommendationGenerationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSavingsPlansPurchaseRecommendationGenerationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:provide_anomaly_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#ProvideAnomalyFeedback"
        operation.name = "ProvideAnomalyFeedback"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvideAnomalyFeedbackRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvideAnomalyFeedbackResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:start_commitment_purchase_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#StartCommitmentPurchaseAnalysis"
        operation.name = "StartCommitmentPurchaseAnalysis"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCommitmentPurchaseAnalysisRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCommitmentPurchaseAnalysisResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerationExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {}
      end)
      service.add_operation(:start_cost_allocation_tag_backfill, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#StartCostAllocationTagBackfill"
        operation.name = "StartCostAllocationTagBackfill"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCostAllocationTagBackfillRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCostAllocationTagBackfillResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackfillLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:start_savings_plans_purchase_recommendation_generation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#StartSavingsPlansPurchaseRecommendationGeneration"
        operation.name = "StartSavingsPlansPurchaseRecommendationGeneration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSavingsPlansPurchaseRecommendationGenerationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSavingsPlansPurchaseRecommendationGenerationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerationExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_anomaly_monitor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#UpdateAnomalyMonitor"
        operation.name = "UpdateAnomalyMonitor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnomalyMonitorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnomalyMonitorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownMonitorException)
        operation.traits = {}
      end)
      service.add_operation(:update_anomaly_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#UpdateAnomalySubscription"
        operation.name = "UpdateAnomalySubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnomalySubscriptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnomalySubscriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownMonitorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownSubscriptionException)
        operation.traits = {}
      end)
      service.add_operation(:update_cost_allocation_tags_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#UpdateCostAllocationTagsStatus"
        operation.name = "UpdateCostAllocationTagsStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCostAllocationTagsStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCostAllocationTagsStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:update_cost_category_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costexplorer#UpdateCostCategoryDefinition"
        operation.name = "UpdateCostCategoryDefinition"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCostCategoryDefinitionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCostCategoryDefinitionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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
