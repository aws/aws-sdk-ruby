# frozen_string_literal: true

# This is generated code!

module Aws::ConfigService
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ARN", name: "ARN")
    AccountAggregationSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AccountAggregationSource", name: "AccountAggregationSource")
    AccountAggregationSourceAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#AccountAggregationSourceAccountList", name: "AccountAggregationSourceAccountList", traits: {"smithy.api#length" => {"min" => 1}})
    AccountAggregationSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#AccountAggregationSourceList", name: "AccountAggregationSourceList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^\\d{12}$"})
    AggregateComplianceByConfigRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AggregateComplianceByConfigRule", name: "AggregateComplianceByConfigRule")
    AggregateComplianceByConfigRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#AggregateComplianceByConfigRuleList", name: "AggregateComplianceByConfigRuleList")
    AggregateComplianceByConformancePack = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AggregateComplianceByConformancePack", name: "AggregateComplianceByConformancePack")
    AggregateComplianceByConformancePackList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#AggregateComplianceByConformancePackList", name: "AggregateComplianceByConformancePackList")
    AggregateComplianceCount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AggregateComplianceCount", name: "AggregateComplianceCount")
    AggregateComplianceCountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#AggregateComplianceCountList", name: "AggregateComplianceCountList")
    AggregateConformancePackCompliance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AggregateConformancePackCompliance", name: "AggregateConformancePackCompliance")
    AggregateConformancePackComplianceCount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AggregateConformancePackComplianceCount", name: "AggregateConformancePackComplianceCount")
    AggregateConformancePackComplianceFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AggregateConformancePackComplianceFilters", name: "AggregateConformancePackComplianceFilters")
    AggregateConformancePackComplianceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AggregateConformancePackComplianceSummary", name: "AggregateConformancePackComplianceSummary")
    AggregateConformancePackComplianceSummaryFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AggregateConformancePackComplianceSummaryFilters", name: "AggregateConformancePackComplianceSummaryFilters")
    AggregateConformancePackComplianceSummaryGroupKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#AggregateConformancePackComplianceSummaryGroupKey", name: "AggregateConformancePackComplianceSummaryGroupKey")
    AggregateConformancePackComplianceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#AggregateConformancePackComplianceSummaryList", name: "AggregateConformancePackComplianceSummaryList")
    AggregateEvaluationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AggregateEvaluationResult", name: "AggregateEvaluationResult")
    AggregateEvaluationResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#AggregateEvaluationResultList", name: "AggregateEvaluationResultList")
    AggregateResourceIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AggregateResourceIdentifier", name: "AggregateResourceIdentifier")
    AggregatedSourceStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AggregatedSourceStatus", name: "AggregatedSourceStatus")
    AggregatedSourceStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#AggregatedSourceStatusList", name: "AggregatedSourceStatusList")
    AggregatedSourceStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#AggregatedSourceStatusType", name: "AggregatedSourceStatusType")
    AggregatedSourceStatusTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#AggregatedSourceStatusTypeList", name: "AggregatedSourceStatusTypeList", traits: {"smithy.api#length" => {"min" => 1}})
    AggregatedSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#AggregatedSourceType", name: "AggregatedSourceType")
    AggregationAuthorization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AggregationAuthorization", name: "AggregationAuthorization")
    AggregationAuthorizationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#AggregationAuthorizationList", name: "AggregationAuthorizationList")
    AggregatorFilterResourceType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AggregatorFilterResourceType", name: "AggregatorFilterResourceType")
    AggregatorFilterServicePrincipal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AggregatorFilterServicePrincipal", name: "AggregatorFilterServicePrincipal")
    AggregatorFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#AggregatorFilterType", name: "AggregatorFilterType")
    AggregatorFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AggregatorFilters", name: "AggregatorFilters")
    AggregatorRegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#AggregatorRegionList", name: "AggregatorRegionList", traits: {"smithy.api#length" => {"min" => 1}})
    AllSupported = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.configservice#AllSupported", name: "AllSupported", traits: {"smithy.api#default" => false})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    Annotation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#Annotation", name: "Annotation", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    AssociateResourceTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AssociateResourceTypesRequest", name: "AssociateResourceTypesRequest")
    AssociateResourceTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#AssociateResourceTypesResponse", name: "AssociateResourceTypesResponse")
    AutoRemediationAttemptSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#AutoRemediationAttemptSeconds", name: "AutoRemediationAttemptSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 2678000}})
    AutoRemediationAttempts = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#AutoRemediationAttempts", name: "AutoRemediationAttempts", traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#AvailabilityZone", name: "AvailabilityZone")
    AwsRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#AwsRegion", name: "AwsRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    BaseConfigurationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#BaseConfigurationItem", name: "BaseConfigurationItem")
    BaseConfigurationItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#BaseConfigurationItems", name: "BaseConfigurationItems")
    BaseResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#BaseResourceId", name: "BaseResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 768}})
    BatchGetAggregateResourceConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#BatchGetAggregateResourceConfigRequest", name: "BatchGetAggregateResourceConfigRequest")
    BatchGetAggregateResourceConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#BatchGetAggregateResourceConfigResponse", name: "BatchGetAggregateResourceConfigResponse")
    BatchGetResourceConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#BatchGetResourceConfigRequest", name: "BatchGetResourceConfigRequest")
    BatchGetResourceConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#BatchGetResourceConfigResponse", name: "BatchGetResourceConfigResponse")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.configservice#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    ChannelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ChannelName", name: "ChannelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ChronologicalOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#ChronologicalOrder", name: "ChronologicalOrder")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 64, "max" => 256}})
    Compliance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#Compliance", name: "Compliance")
    ComplianceByConfigRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ComplianceByConfigRule", name: "ComplianceByConfigRule")
    ComplianceByConfigRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ComplianceByConfigRules", name: "ComplianceByConfigRules")
    ComplianceByResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ComplianceByResource", name: "ComplianceByResource")
    ComplianceByResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ComplianceByResources", name: "ComplianceByResources")
    ComplianceContributorCount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ComplianceContributorCount", name: "ComplianceContributorCount")
    ComplianceResourceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ComplianceResourceTypes", name: "ComplianceResourceTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ComplianceScore = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ComplianceScore", name: "ComplianceScore")
    ComplianceSummariesByResourceType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ComplianceSummariesByResourceType", name: "ComplianceSummariesByResourceType")
    ComplianceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ComplianceSummary", name: "ComplianceSummary")
    ComplianceSummaryByResourceType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ComplianceSummaryByResourceType", name: "ComplianceSummaryByResourceType")
    ComplianceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#ComplianceType", name: "ComplianceType")
    ComplianceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ComplianceTypes", name: "ComplianceTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    ConfigExportDeliveryInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConfigExportDeliveryInfo", name: "ConfigExportDeliveryInfo")
    ConfigRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConfigRule", name: "ConfigRule")
    ConfigRuleComplianceFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConfigRuleComplianceFilters", name: "ConfigRuleComplianceFilters")
    ConfigRuleComplianceSummaryFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConfigRuleComplianceSummaryFilters", name: "ConfigRuleComplianceSummaryFilters")
    ConfigRuleComplianceSummaryGroupKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#ConfigRuleComplianceSummaryGroupKey", name: "ConfigRuleComplianceSummaryGroupKey")
    ConfigRuleEvaluationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConfigRuleEvaluationStatus", name: "ConfigRuleEvaluationStatus")
    ConfigRuleEvaluationStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConfigRuleEvaluationStatusList", name: "ConfigRuleEvaluationStatusList")
    ConfigRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ConfigRuleName", name: "ConfigRuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "\\S"})
    ConfigRuleNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConfigRuleNames", name: "ConfigRuleNames", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    ConfigRuleState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#ConfigRuleState", name: "ConfigRuleState")
    ConfigRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConfigRules", name: "ConfigRules")
    ConfigSnapshotDeliveryProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConfigSnapshotDeliveryProperties", name: "ConfigSnapshotDeliveryProperties")
    ConfigStreamDeliveryInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConfigStreamDeliveryInfo", name: "ConfigStreamDeliveryInfo")
    Configuration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#Configuration", name: "Configuration")
    ConfigurationAggregator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConfigurationAggregator", name: "ConfigurationAggregator")
    ConfigurationAggregatorArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ConfigurationAggregatorArn", name: "ConfigurationAggregatorArn", traits: {"smithy.api#pattern" => "^arn:aws[a-z\\-]*:config:[a-z\\-\\d]+:\\d+:config-aggregator/config-aggregator-[a-z\\d]+$"})
    ConfigurationAggregatorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConfigurationAggregatorList", name: "ConfigurationAggregatorList")
    ConfigurationAggregatorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ConfigurationAggregatorName", name: "ConfigurationAggregatorName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w\\-]+$"})
    ConfigurationAggregatorNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConfigurationAggregatorNameList", name: "ConfigurationAggregatorNameList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ConfigurationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConfigurationItem", name: "ConfigurationItem")
    ConfigurationItemCaptureTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.configservice#ConfigurationItemCaptureTime", name: "ConfigurationItemCaptureTime")
    ConfigurationItemDeliveryTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.configservice#ConfigurationItemDeliveryTime", name: "ConfigurationItemDeliveryTime")
    ConfigurationItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConfigurationItemList", name: "ConfigurationItemList")
    ConfigurationItemMD5Hash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ConfigurationItemMD5Hash", name: "ConfigurationItemMD5Hash")
    ConfigurationItemStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#ConfigurationItemStatus", name: "ConfigurationItemStatus")
    ConfigurationRecorder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConfigurationRecorder", name: "ConfigurationRecorder")
    ConfigurationRecorderFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConfigurationRecorderFilter", name: "ConfigurationRecorderFilter")
    ConfigurationRecorderFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConfigurationRecorderFilterList", name: "ConfigurationRecorderFilterList")
    ConfigurationRecorderFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#ConfigurationRecorderFilterName", name: "ConfigurationRecorderFilterName")
    ConfigurationRecorderFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ConfigurationRecorderFilterValue", name: "ConfigurationRecorderFilterValue", traits: {"smithy.api#pattern" => "^[0-9a-zA-Z\\\\*\\\\.\\\\\\/\\\\?-]*$"})
    ConfigurationRecorderFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConfigurationRecorderFilterValues", name: "ConfigurationRecorderFilterValues")
    ConfigurationRecorderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConfigurationRecorderList", name: "ConfigurationRecorderList")
    ConfigurationRecorderNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConfigurationRecorderNameList", name: "ConfigurationRecorderNameList")
    ConfigurationRecorderStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConfigurationRecorderStatus", name: "ConfigurationRecorderStatus")
    ConfigurationRecorderStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConfigurationRecorderStatusList", name: "ConfigurationRecorderStatusList")
    ConfigurationRecorderSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConfigurationRecorderSummaries", name: "ConfigurationRecorderSummaries")
    ConfigurationRecorderSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConfigurationRecorderSummary", name: "ConfigurationRecorderSummary")
    ConfigurationStateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ConfigurationStateId", name: "ConfigurationStateId")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client"})
    ConformancePackArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ConformancePackArn", name: "ConformancePackArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ConformancePackComplianceFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConformancePackComplianceFilters", name: "ConformancePackComplianceFilters")
    ConformancePackComplianceResourceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConformancePackComplianceResourceIds", name: "ConformancePackComplianceResourceIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ConformancePackComplianceScore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConformancePackComplianceScore", name: "ConformancePackComplianceScore")
    ConformancePackComplianceScores = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConformancePackComplianceScores", name: "ConformancePackComplianceScores")
    ConformancePackComplianceScoresFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConformancePackComplianceScoresFilters", name: "ConformancePackComplianceScoresFilters")
    ConformancePackComplianceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConformancePackComplianceSummary", name: "ConformancePackComplianceSummary")
    ConformancePackComplianceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConformancePackComplianceSummaryList", name: "ConformancePackComplianceSummaryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ConformancePackComplianceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#ConformancePackComplianceType", name: "ConformancePackComplianceType")
    ConformancePackConfigRuleNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConformancePackConfigRuleNames", name: "ConformancePackConfigRuleNames", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ConformancePackDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConformancePackDetail", name: "ConformancePackDetail")
    ConformancePackDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConformancePackDetailList", name: "ConformancePackDetailList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    ConformancePackEvaluationFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConformancePackEvaluationFilters", name: "ConformancePackEvaluationFilters")
    ConformancePackEvaluationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConformancePackEvaluationResult", name: "ConformancePackEvaluationResult")
    ConformancePackId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ConformancePackId", name: "ConformancePackId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ConformancePackInputParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConformancePackInputParameter", name: "ConformancePackInputParameter")
    ConformancePackInputParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConformancePackInputParameters", name: "ConformancePackInputParameters", traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    ConformancePackName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ConformancePackName", name: "ConformancePackName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z][-a-zA-Z0-9]*$"})
    ConformancePackNameFilter = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConformancePackNameFilter", name: "ConformancePackNameFilter", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ConformancePackNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConformancePackNamesList", name: "ConformancePackNamesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    ConformancePackNamesToSummarizeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConformancePackNamesToSummarizeList", name: "ConformancePackNamesToSummarizeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ConformancePackRuleCompliance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConformancePackRuleCompliance", name: "ConformancePackRuleCompliance")
    ConformancePackRuleComplianceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConformancePackRuleComplianceList", name: "ConformancePackRuleComplianceList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ConformancePackRuleEvaluationResultsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConformancePackRuleEvaluationResultsList", name: "ConformancePackRuleEvaluationResultsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConformancePackState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#ConformancePackState", name: "ConformancePackState")
    ConformancePackStatusDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConformancePackStatusDetail", name: "ConformancePackStatusDetail")
    ConformancePackStatusDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ConformancePackStatusDetailsList", name: "ConformancePackStatusDetailsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    ConformancePackStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ConformancePackStatusReason", name: "ConformancePackStatusReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}})
    ConformancePackTemplateValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ConformancePackTemplateValidationException", name: "ConformancePackTemplateValidationException", traits: {"smithy.api#error" => "client"})
    ControlsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ControlsList", name: "ControlsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    CosmosPageLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#CosmosPageLimit", name: "CosmosPageLimit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    CustomPolicyDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#CustomPolicyDetails", name: "CustomPolicyDetails")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.configservice#Date", name: "Date")
    DebugLogDeliveryAccounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#DebugLogDeliveryAccounts", name: "DebugLogDeliveryAccounts", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    DeleteAggregationAuthorizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteAggregationAuthorizationRequest", name: "DeleteAggregationAuthorizationRequest")
    DeleteConfigRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteConfigRuleRequest", name: "DeleteConfigRuleRequest")
    DeleteConfigurationAggregatorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteConfigurationAggregatorRequest", name: "DeleteConfigurationAggregatorRequest")
    DeleteConfigurationRecorderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteConfigurationRecorderRequest", name: "DeleteConfigurationRecorderRequest")
    DeleteConformancePackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteConformancePackRequest", name: "DeleteConformancePackRequest")
    DeleteDeliveryChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteDeliveryChannelRequest", name: "DeleteDeliveryChannelRequest")
    DeleteEvaluationResultsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteEvaluationResultsRequest", name: "DeleteEvaluationResultsRequest")
    DeleteEvaluationResultsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteEvaluationResultsResponse", name: "DeleteEvaluationResultsResponse")
    DeleteOrganizationConfigRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteOrganizationConfigRuleRequest", name: "DeleteOrganizationConfigRuleRequest")
    DeleteOrganizationConformancePackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteOrganizationConformancePackRequest", name: "DeleteOrganizationConformancePackRequest")
    DeletePendingAggregationRequestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeletePendingAggregationRequestRequest", name: "DeletePendingAggregationRequestRequest")
    DeleteRemediationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteRemediationConfigurationRequest", name: "DeleteRemediationConfigurationRequest")
    DeleteRemediationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteRemediationConfigurationResponse", name: "DeleteRemediationConfigurationResponse")
    DeleteRemediationExceptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteRemediationExceptionsRequest", name: "DeleteRemediationExceptionsRequest")
    DeleteRemediationExceptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteRemediationExceptionsResponse", name: "DeleteRemediationExceptionsResponse")
    DeleteResourceConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteResourceConfigRequest", name: "DeleteResourceConfigRequest")
    DeleteRetentionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteRetentionConfigurationRequest", name: "DeleteRetentionConfigurationRequest")
    DeleteServiceLinkedConfigurationRecorderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteServiceLinkedConfigurationRecorderRequest", name: "DeleteServiceLinkedConfigurationRecorderRequest")
    DeleteServiceLinkedConfigurationRecorderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteServiceLinkedConfigurationRecorderResponse", name: "DeleteServiceLinkedConfigurationRecorderResponse")
    DeleteStoredQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteStoredQueryRequest", name: "DeleteStoredQueryRequest")
    DeleteStoredQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeleteStoredQueryResponse", name: "DeleteStoredQueryResponse")
    DeliverConfigSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeliverConfigSnapshotRequest", name: "DeliverConfigSnapshotRequest")
    DeliverConfigSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeliverConfigSnapshotResponse", name: "DeliverConfigSnapshotResponse")
    DeliveryChannel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeliveryChannel", name: "DeliveryChannel")
    DeliveryChannelList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#DeliveryChannelList", name: "DeliveryChannelList")
    DeliveryChannelNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#DeliveryChannelNameList", name: "DeliveryChannelNameList")
    DeliveryChannelStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DeliveryChannelStatus", name: "DeliveryChannelStatus")
    DeliveryChannelStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#DeliveryChannelStatusList", name: "DeliveryChannelStatusList")
    DeliveryS3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#DeliveryS3Bucket", name: "DeliveryS3Bucket", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}})
    DeliveryS3KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#DeliveryS3KeyPrefix", name: "DeliveryS3KeyPrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    DeliveryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#DeliveryStatus", name: "DeliveryStatus")
    DescribeAggregateComplianceByConfigRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeAggregateComplianceByConfigRulesRequest", name: "DescribeAggregateComplianceByConfigRulesRequest")
    DescribeAggregateComplianceByConfigRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeAggregateComplianceByConfigRulesResponse", name: "DescribeAggregateComplianceByConfigRulesResponse")
    DescribeAggregateComplianceByConformancePacksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeAggregateComplianceByConformancePacksRequest", name: "DescribeAggregateComplianceByConformancePacksRequest")
    DescribeAggregateComplianceByConformancePacksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeAggregateComplianceByConformancePacksResponse", name: "DescribeAggregateComplianceByConformancePacksResponse")
    DescribeAggregationAuthorizationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeAggregationAuthorizationsRequest", name: "DescribeAggregationAuthorizationsRequest")
    DescribeAggregationAuthorizationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeAggregationAuthorizationsResponse", name: "DescribeAggregationAuthorizationsResponse")
    DescribeComplianceByConfigRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeComplianceByConfigRuleRequest", name: "DescribeComplianceByConfigRuleRequest")
    DescribeComplianceByConfigRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeComplianceByConfigRuleResponse", name: "DescribeComplianceByConfigRuleResponse")
    DescribeComplianceByResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeComplianceByResourceRequest", name: "DescribeComplianceByResourceRequest")
    DescribeComplianceByResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeComplianceByResourceResponse", name: "DescribeComplianceByResourceResponse")
    DescribeConfigRuleEvaluationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConfigRuleEvaluationStatusRequest", name: "DescribeConfigRuleEvaluationStatusRequest")
    DescribeConfigRuleEvaluationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConfigRuleEvaluationStatusResponse", name: "DescribeConfigRuleEvaluationStatusResponse")
    DescribeConfigRulesFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConfigRulesFilters", name: "DescribeConfigRulesFilters")
    DescribeConfigRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConfigRulesRequest", name: "DescribeConfigRulesRequest")
    DescribeConfigRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConfigRulesResponse", name: "DescribeConfigRulesResponse")
    DescribeConfigurationAggregatorSourcesStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConfigurationAggregatorSourcesStatusRequest", name: "DescribeConfigurationAggregatorSourcesStatusRequest")
    DescribeConfigurationAggregatorSourcesStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConfigurationAggregatorSourcesStatusResponse", name: "DescribeConfigurationAggregatorSourcesStatusResponse")
    DescribeConfigurationAggregatorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConfigurationAggregatorsRequest", name: "DescribeConfigurationAggregatorsRequest")
    DescribeConfigurationAggregatorsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConfigurationAggregatorsResponse", name: "DescribeConfigurationAggregatorsResponse")
    DescribeConfigurationRecorderStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConfigurationRecorderStatusRequest", name: "DescribeConfigurationRecorderStatusRequest")
    DescribeConfigurationRecorderStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConfigurationRecorderStatusResponse", name: "DescribeConfigurationRecorderStatusResponse")
    DescribeConfigurationRecordersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConfigurationRecordersRequest", name: "DescribeConfigurationRecordersRequest")
    DescribeConfigurationRecordersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConfigurationRecordersResponse", name: "DescribeConfigurationRecordersResponse")
    DescribeConformancePackComplianceLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#DescribeConformancePackComplianceLimit", name: "DescribeConformancePackComplianceLimit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    DescribeConformancePackComplianceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConformancePackComplianceRequest", name: "DescribeConformancePackComplianceRequest")
    DescribeConformancePackComplianceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConformancePackComplianceResponse", name: "DescribeConformancePackComplianceResponse")
    DescribeConformancePackStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConformancePackStatusRequest", name: "DescribeConformancePackStatusRequest")
    DescribeConformancePackStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConformancePackStatusResponse", name: "DescribeConformancePackStatusResponse")
    DescribeConformancePacksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConformancePacksRequest", name: "DescribeConformancePacksRequest")
    DescribeConformancePacksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeConformancePacksResponse", name: "DescribeConformancePacksResponse")
    DescribeDeliveryChannelStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeDeliveryChannelStatusRequest", name: "DescribeDeliveryChannelStatusRequest")
    DescribeDeliveryChannelStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeDeliveryChannelStatusResponse", name: "DescribeDeliveryChannelStatusResponse")
    DescribeDeliveryChannelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeDeliveryChannelsRequest", name: "DescribeDeliveryChannelsRequest")
    DescribeDeliveryChannelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeDeliveryChannelsResponse", name: "DescribeDeliveryChannelsResponse")
    DescribeOrganizationConfigRuleStatusesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeOrganizationConfigRuleStatusesRequest", name: "DescribeOrganizationConfigRuleStatusesRequest")
    DescribeOrganizationConfigRuleStatusesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeOrganizationConfigRuleStatusesResponse", name: "DescribeOrganizationConfigRuleStatusesResponse")
    DescribeOrganizationConfigRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeOrganizationConfigRulesRequest", name: "DescribeOrganizationConfigRulesRequest")
    DescribeOrganizationConfigRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeOrganizationConfigRulesResponse", name: "DescribeOrganizationConfigRulesResponse")
    DescribeOrganizationConformancePackStatusesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeOrganizationConformancePackStatusesRequest", name: "DescribeOrganizationConformancePackStatusesRequest")
    DescribeOrganizationConformancePackStatusesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeOrganizationConformancePackStatusesResponse", name: "DescribeOrganizationConformancePackStatusesResponse")
    DescribeOrganizationConformancePacksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeOrganizationConformancePacksRequest", name: "DescribeOrganizationConformancePacksRequest")
    DescribeOrganizationConformancePacksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeOrganizationConformancePacksResponse", name: "DescribeOrganizationConformancePacksResponse")
    DescribePendingAggregationRequestsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#DescribePendingAggregationRequestsLimit", name: "DescribePendingAggregationRequestsLimit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 20}})
    DescribePendingAggregationRequestsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribePendingAggregationRequestsRequest", name: "DescribePendingAggregationRequestsRequest")
    DescribePendingAggregationRequestsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribePendingAggregationRequestsResponse", name: "DescribePendingAggregationRequestsResponse")
    DescribeRemediationConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeRemediationConfigurationsRequest", name: "DescribeRemediationConfigurationsRequest")
    DescribeRemediationConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeRemediationConfigurationsResponse", name: "DescribeRemediationConfigurationsResponse")
    DescribeRemediationExceptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeRemediationExceptionsRequest", name: "DescribeRemediationExceptionsRequest")
    DescribeRemediationExceptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeRemediationExceptionsResponse", name: "DescribeRemediationExceptionsResponse")
    DescribeRemediationExecutionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeRemediationExecutionStatusRequest", name: "DescribeRemediationExecutionStatusRequest")
    DescribeRemediationExecutionStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeRemediationExecutionStatusResponse", name: "DescribeRemediationExecutionStatusResponse")
    DescribeRetentionConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeRetentionConfigurationsRequest", name: "DescribeRetentionConfigurationsRequest")
    DescribeRetentionConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DescribeRetentionConfigurationsResponse", name: "DescribeRetentionConfigurationsResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    DisassociateResourceTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DisassociateResourceTypesRequest", name: "DisassociateResourceTypesRequest")
    DisassociateResourceTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#DisassociateResourceTypesResponse", name: "DisassociateResourceTypesResponse")
    DiscoveredResourceIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#DiscoveredResourceIdentifierList", name: "DiscoveredResourceIdentifierList")
    EarlierTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.configservice#EarlierTime", name: "EarlierTime")
    EmptiableStringWithCharLimit256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#EmptiableStringWithCharLimit256", name: "EmptiableStringWithCharLimit256", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ErrorMessage", name: "ErrorMessage")
    Evaluation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#Evaluation", name: "Evaluation")
    EvaluationContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#EvaluationContext", name: "EvaluationContext")
    EvaluationContextIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#EvaluationContextIdentifier", name: "EvaluationContextIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    EvaluationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#EvaluationMode", name: "EvaluationMode")
    EvaluationModeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#EvaluationModeConfiguration", name: "EvaluationModeConfiguration")
    EvaluationModes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#EvaluationModes", name: "EvaluationModes")
    EvaluationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#EvaluationResult", name: "EvaluationResult")
    EvaluationResultIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#EvaluationResultIdentifier", name: "EvaluationResultIdentifier")
    EvaluationResultQualifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#EvaluationResultQualifier", name: "EvaluationResultQualifier")
    EvaluationResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#EvaluationResults", name: "EvaluationResults")
    EvaluationStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#EvaluationStatus", name: "EvaluationStatus")
    EvaluationTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#EvaluationTimeout", name: "EvaluationTimeout", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 3600}})
    Evaluations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#Evaluations", name: "Evaluations", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    EventSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#EventSource", name: "EventSource")
    ExcludedAccounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ExcludedAccounts", name: "ExcludedAccounts", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ExclusionByResourceTypes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ExclusionByResourceTypes", name: "ExclusionByResourceTypes")
    ExecutionControls = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ExecutionControls", name: "ExecutionControls")
    Expression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#Expression", name: "Expression", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    ExternalEvaluation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ExternalEvaluation", name: "ExternalEvaluation")
    FailedDeleteRemediationExceptionsBatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#FailedDeleteRemediationExceptionsBatch", name: "FailedDeleteRemediationExceptionsBatch")
    FailedDeleteRemediationExceptionsBatches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#FailedDeleteRemediationExceptionsBatches", name: "FailedDeleteRemediationExceptionsBatches")
    FailedRemediationBatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#FailedRemediationBatch", name: "FailedRemediationBatch")
    FailedRemediationBatches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#FailedRemediationBatches", name: "FailedRemediationBatches")
    FailedRemediationExceptionBatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#FailedRemediationExceptionBatch", name: "FailedRemediationExceptionBatch")
    FailedRemediationExceptionBatches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#FailedRemediationExceptionBatches", name: "FailedRemediationExceptionBatches")
    FieldInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#FieldInfo", name: "FieldInfo")
    FieldInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#FieldInfoList", name: "FieldInfoList")
    FieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#FieldName", name: "FieldName")
    GetAggregateComplianceDetailsByConfigRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetAggregateComplianceDetailsByConfigRuleRequest", name: "GetAggregateComplianceDetailsByConfigRuleRequest")
    GetAggregateComplianceDetailsByConfigRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetAggregateComplianceDetailsByConfigRuleResponse", name: "GetAggregateComplianceDetailsByConfigRuleResponse")
    GetAggregateConfigRuleComplianceSummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetAggregateConfigRuleComplianceSummaryRequest", name: "GetAggregateConfigRuleComplianceSummaryRequest")
    GetAggregateConfigRuleComplianceSummaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetAggregateConfigRuleComplianceSummaryResponse", name: "GetAggregateConfigRuleComplianceSummaryResponse")
    GetAggregateConformancePackComplianceSummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetAggregateConformancePackComplianceSummaryRequest", name: "GetAggregateConformancePackComplianceSummaryRequest")
    GetAggregateConformancePackComplianceSummaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetAggregateConformancePackComplianceSummaryResponse", name: "GetAggregateConformancePackComplianceSummaryResponse")
    GetAggregateDiscoveredResourceCountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetAggregateDiscoveredResourceCountsRequest", name: "GetAggregateDiscoveredResourceCountsRequest")
    GetAggregateDiscoveredResourceCountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetAggregateDiscoveredResourceCountsResponse", name: "GetAggregateDiscoveredResourceCountsResponse")
    GetAggregateResourceConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetAggregateResourceConfigRequest", name: "GetAggregateResourceConfigRequest")
    GetAggregateResourceConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetAggregateResourceConfigResponse", name: "GetAggregateResourceConfigResponse")
    GetComplianceDetailsByConfigRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetComplianceDetailsByConfigRuleRequest", name: "GetComplianceDetailsByConfigRuleRequest")
    GetComplianceDetailsByConfigRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetComplianceDetailsByConfigRuleResponse", name: "GetComplianceDetailsByConfigRuleResponse")
    GetComplianceDetailsByResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetComplianceDetailsByResourceRequest", name: "GetComplianceDetailsByResourceRequest")
    GetComplianceDetailsByResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetComplianceDetailsByResourceResponse", name: "GetComplianceDetailsByResourceResponse")
    GetComplianceSummaryByConfigRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetComplianceSummaryByConfigRuleResponse", name: "GetComplianceSummaryByConfigRuleResponse")
    GetComplianceSummaryByResourceTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetComplianceSummaryByResourceTypeRequest", name: "GetComplianceSummaryByResourceTypeRequest")
    GetComplianceSummaryByResourceTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetComplianceSummaryByResourceTypeResponse", name: "GetComplianceSummaryByResourceTypeResponse")
    GetConformancePackComplianceDetailsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#GetConformancePackComplianceDetailsLimit", name: "GetConformancePackComplianceDetailsLimit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    GetConformancePackComplianceDetailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetConformancePackComplianceDetailsRequest", name: "GetConformancePackComplianceDetailsRequest")
    GetConformancePackComplianceDetailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetConformancePackComplianceDetailsResponse", name: "GetConformancePackComplianceDetailsResponse")
    GetConformancePackComplianceSummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetConformancePackComplianceSummaryRequest", name: "GetConformancePackComplianceSummaryRequest")
    GetConformancePackComplianceSummaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetConformancePackComplianceSummaryResponse", name: "GetConformancePackComplianceSummaryResponse")
    GetCustomRulePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetCustomRulePolicyRequest", name: "GetCustomRulePolicyRequest")
    GetCustomRulePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetCustomRulePolicyResponse", name: "GetCustomRulePolicyResponse")
    GetDiscoveredResourceCountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetDiscoveredResourceCountsRequest", name: "GetDiscoveredResourceCountsRequest")
    GetDiscoveredResourceCountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetDiscoveredResourceCountsResponse", name: "GetDiscoveredResourceCountsResponse")
    GetOrganizationConfigRuleDetailedStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetOrganizationConfigRuleDetailedStatusRequest", name: "GetOrganizationConfigRuleDetailedStatusRequest")
    GetOrganizationConfigRuleDetailedStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetOrganizationConfigRuleDetailedStatusResponse", name: "GetOrganizationConfigRuleDetailedStatusResponse")
    GetOrganizationConformancePackDetailedStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetOrganizationConformancePackDetailedStatusRequest", name: "GetOrganizationConformancePackDetailedStatusRequest")
    GetOrganizationConformancePackDetailedStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetOrganizationConformancePackDetailedStatusResponse", name: "GetOrganizationConformancePackDetailedStatusResponse")
    GetOrganizationCustomRulePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetOrganizationCustomRulePolicyRequest", name: "GetOrganizationCustomRulePolicyRequest")
    GetOrganizationCustomRulePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetOrganizationCustomRulePolicyResponse", name: "GetOrganizationCustomRulePolicyResponse")
    GetResourceConfigHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetResourceConfigHistoryRequest", name: "GetResourceConfigHistoryRequest")
    GetResourceConfigHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetResourceConfigHistoryResponse", name: "GetResourceConfigHistoryResponse")
    GetResourceEvaluationSummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetResourceEvaluationSummaryRequest", name: "GetResourceEvaluationSummaryRequest")
    GetResourceEvaluationSummaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetResourceEvaluationSummaryResponse", name: "GetResourceEvaluationSummaryResponse")
    GetStoredQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetStoredQueryRequest", name: "GetStoredQueryRequest")
    GetStoredQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GetStoredQueryResponse", name: "GetStoredQueryResponse")
    GroupByAPILimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#GroupByAPILimit", name: "GroupByAPILimit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    GroupedResourceCount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#GroupedResourceCount", name: "GroupedResourceCount")
    GroupedResourceCountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#GroupedResourceCountList", name: "GroupedResourceCountList")
    IdempotentParameterMismatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#IdempotentParameterMismatch", name: "IdempotentParameterMismatch", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IncludeGlobalResourceTypes = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.configservice#IncludeGlobalResourceTypes", name: "IncludeGlobalResourceTypes", traits: {"smithy.api#default" => false})
    InsufficientDeliveryPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#InsufficientDeliveryPolicyException", name: "InsufficientDeliveryPolicyException", traits: {"smithy.api#error" => "client"})
    InsufficientPermissionsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#InsufficientPermissionsException", name: "InsufficientPermissionsException", traits: {"smithy.api#error" => "client"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InvalidConfigurationRecorderNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#InvalidConfigurationRecorderNameException", name: "InvalidConfigurationRecorderNameException", traits: {"smithy.api#error" => "client"})
    InvalidDeliveryChannelNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#InvalidDeliveryChannelNameException", name: "InvalidDeliveryChannelNameException", traits: {"smithy.api#error" => "client"})
    InvalidExpressionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#InvalidExpressionException", name: "InvalidExpressionException", traits: {"smithy.api#error" => "client"})
    InvalidLimitException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#InvalidLimitException", name: "InvalidLimitException", traits: {"smithy.api#error" => "client"})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client"})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"smithy.api#error" => "client"})
    InvalidRecordingGroupException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#InvalidRecordingGroupException", name: "InvalidRecordingGroupException", traits: {"smithy.api#error" => "client"})
    InvalidResultTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#InvalidResultTokenException", name: "InvalidResultTokenException", traits: {"smithy.api#error" => "client"})
    InvalidRoleException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#InvalidRoleException", name: "InvalidRoleException", traits: {"smithy.api#error" => "client"})
    InvalidS3KeyPrefixException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#InvalidS3KeyPrefixException", name: "InvalidS3KeyPrefixException", traits: {"smithy.api#error" => "client"})
    InvalidS3KmsKeyArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#InvalidS3KmsKeyArnException", name: "InvalidS3KmsKeyArnException", traits: {"smithy.api#error" => "client"})
    InvalidSNSTopicARNException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#InvalidSNSTopicARNException", name: "InvalidSNSTopicARNException", traits: {"smithy.api#error" => "client"})
    InvalidTimeRangeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#InvalidTimeRangeException", name: "InvalidTimeRangeException", traits: {"smithy.api#error" => "client"})
    LastDeliveryChannelDeleteFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#LastDeliveryChannelDeleteFailedException", name: "LastDeliveryChannelDeleteFailedException", traits: {"smithy.api#error" => "client"})
    LastUpdatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.configservice#LastUpdatedTime", name: "LastUpdatedTime")
    LaterTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.configservice#LaterTime", name: "LaterTime")
    Limit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#Limit", name: "Limit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListAggregateDiscoveredResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ListAggregateDiscoveredResourcesRequest", name: "ListAggregateDiscoveredResourcesRequest")
    ListAggregateDiscoveredResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ListAggregateDiscoveredResourcesResponse", name: "ListAggregateDiscoveredResourcesResponse")
    ListConfigurationRecordersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ListConfigurationRecordersRequest", name: "ListConfigurationRecordersRequest")
    ListConfigurationRecordersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ListConfigurationRecordersResponse", name: "ListConfigurationRecordersResponse")
    ListConformancePackComplianceScoresRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ListConformancePackComplianceScoresRequest", name: "ListConformancePackComplianceScoresRequest")
    ListConformancePackComplianceScoresResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ListConformancePackComplianceScoresResponse", name: "ListConformancePackComplianceScoresResponse")
    ListDiscoveredResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ListDiscoveredResourcesRequest", name: "ListDiscoveredResourcesRequest")
    ListDiscoveredResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ListDiscoveredResourcesResponse", name: "ListDiscoveredResourcesResponse")
    ListResourceEvaluationsPageItemLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#ListResourceEvaluationsPageItemLimit", name: "ListResourceEvaluationsPageItemLimit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    ListResourceEvaluationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ListResourceEvaluationsRequest", name: "ListResourceEvaluationsRequest")
    ListResourceEvaluationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ListResourceEvaluationsResponse", name: "ListResourceEvaluationsResponse")
    ListStoredQueriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ListStoredQueriesRequest", name: "ListStoredQueriesRequest")
    ListStoredQueriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ListStoredQueriesResponse", name: "ListStoredQueriesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#Long", name: "Long", traits: {"smithy.api#default" => 0})
    MaxActiveResourcesExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#MaxActiveResourcesExceededException", name: "MaxActiveResourcesExceededException", traits: {"smithy.api#error" => "client"})
    MaxNumberOfConfigRulesExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#MaxNumberOfConfigRulesExceededException", name: "MaxNumberOfConfigRulesExceededException", traits: {"smithy.api#error" => "client"})
    MaxNumberOfConfigurationRecordersExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#MaxNumberOfConfigurationRecordersExceededException", name: "MaxNumberOfConfigurationRecordersExceededException", traits: {"smithy.api#error" => "client"})
    MaxNumberOfConformancePacksExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#MaxNumberOfConformancePacksExceededException", name: "MaxNumberOfConformancePacksExceededException", traits: {"smithy.api#error" => "client"})
    MaxNumberOfDeliveryChannelsExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#MaxNumberOfDeliveryChannelsExceededException", name: "MaxNumberOfDeliveryChannelsExceededException", traits: {"smithy.api#error" => "client"})
    MaxNumberOfOrganizationConfigRulesExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#MaxNumberOfOrganizationConfigRulesExceededException", name: "MaxNumberOfOrganizationConfigRulesExceededException", traits: {"smithy.api#error" => "client"})
    MaxNumberOfOrganizationConformancePacksExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#MaxNumberOfOrganizationConformancePacksExceededException", name: "MaxNumberOfOrganizationConformancePacksExceededException", traits: {"smithy.api#error" => "client"})
    MaxNumberOfRetentionConfigurationsExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#MaxNumberOfRetentionConfigurationsExceededException", name: "MaxNumberOfRetentionConfigurationsExceededException", traits: {"smithy.api#error" => "client"})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 20}})
    MaximumExecutionFrequency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#MaximumExecutionFrequency", name: "MaximumExecutionFrequency")
    MemberAccountRuleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#MemberAccountRuleStatus", name: "MemberAccountRuleStatus")
    MemberAccountStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#MemberAccountStatus", name: "MemberAccountStatus")
    MessageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#MessageType", name: "MessageType")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#Name", name: "Name")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#NextToken", name: "NextToken")
    NoAvailableConfigurationRecorderException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoAvailableConfigurationRecorderException", name: "NoAvailableConfigurationRecorderException", traits: {"smithy.api#error" => "client"})
    NoAvailableDeliveryChannelException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoAvailableDeliveryChannelException", name: "NoAvailableDeliveryChannelException", traits: {"smithy.api#error" => "client"})
    NoAvailableOrganizationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoAvailableOrganizationException", name: "NoAvailableOrganizationException", traits: {"smithy.api#error" => "client"})
    NoRunningConfigurationRecorderException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoRunningConfigurationRecorderException", name: "NoRunningConfigurationRecorderException", traits: {"smithy.api#error" => "client"})
    NoSuchBucketException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoSuchBucketException", name: "NoSuchBucketException", traits: {"smithy.api#error" => "client"})
    NoSuchConfigRuleException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoSuchConfigRuleException", name: "NoSuchConfigRuleException", traits: {"smithy.api#error" => "client"})
    NoSuchConfigRuleInConformancePackException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoSuchConfigRuleInConformancePackException", name: "NoSuchConfigRuleInConformancePackException", traits: {"smithy.api#error" => "client"})
    NoSuchConfigurationAggregatorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoSuchConfigurationAggregatorException", name: "NoSuchConfigurationAggregatorException", traits: {"smithy.api#error" => "client"})
    NoSuchConfigurationRecorderException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoSuchConfigurationRecorderException", name: "NoSuchConfigurationRecorderException", traits: {"smithy.api#error" => "client"})
    NoSuchConformancePackException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoSuchConformancePackException", name: "NoSuchConformancePackException", traits: {"smithy.api#error" => "client"})
    NoSuchDeliveryChannelException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoSuchDeliveryChannelException", name: "NoSuchDeliveryChannelException", traits: {"smithy.api#error" => "client"})
    NoSuchOrganizationConfigRuleException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoSuchOrganizationConfigRuleException", name: "NoSuchOrganizationConfigRuleException", traits: {"smithy.api#error" => "client"})
    NoSuchOrganizationConformancePackException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoSuchOrganizationConformancePackException", name: "NoSuchOrganizationConformancePackException", traits: {"smithy.api#error" => "client"})
    NoSuchRemediationConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoSuchRemediationConfigurationException", name: "NoSuchRemediationConfigurationException", traits: {"smithy.api#error" => "client"})
    NoSuchRemediationExceptionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoSuchRemediationExceptionException", name: "NoSuchRemediationExceptionException", traits: {"smithy.api#error" => "client"})
    NoSuchRetentionConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#NoSuchRetentionConfigurationException", name: "NoSuchRetentionConfigurationException", traits: {"smithy.api#error" => "client"})
    OrderingTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.configservice#OrderingTimestamp", name: "OrderingTimestamp")
    OrganizationAccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#OrganizationAccessDeniedException", name: "OrganizationAccessDeniedException", traits: {"smithy.api#error" => "client"})
    OrganizationAggregationSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#OrganizationAggregationSource", name: "OrganizationAggregationSource")
    OrganizationAllFeaturesNotEnabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#OrganizationAllFeaturesNotEnabledException", name: "OrganizationAllFeaturesNotEnabledException", traits: {"smithy.api#error" => "client"})
    OrganizationConfigRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#OrganizationConfigRule", name: "OrganizationConfigRule")
    OrganizationConfigRuleDetailedStatus = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#OrganizationConfigRuleDetailedStatus", name: "OrganizationConfigRuleDetailedStatus")
    OrganizationConfigRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#OrganizationConfigRuleName", name: "OrganizationConfigRuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9-_]+$"})
    OrganizationConfigRuleNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#OrganizationConfigRuleNames", name: "OrganizationConfigRuleNames", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    OrganizationConfigRuleStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#OrganizationConfigRuleStatus", name: "OrganizationConfigRuleStatus")
    OrganizationConfigRuleStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#OrganizationConfigRuleStatuses", name: "OrganizationConfigRuleStatuses")
    OrganizationConfigRuleTriggerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#OrganizationConfigRuleTriggerType", name: "OrganizationConfigRuleTriggerType")
    OrganizationConfigRuleTriggerTypeNoSN = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#OrganizationConfigRuleTriggerTypeNoSN", name: "OrganizationConfigRuleTriggerTypeNoSN")
    OrganizationConfigRuleTriggerTypeNoSNs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#OrganizationConfigRuleTriggerTypeNoSNs", name: "OrganizationConfigRuleTriggerTypeNoSNs")
    OrganizationConfigRuleTriggerTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#OrganizationConfigRuleTriggerTypes", name: "OrganizationConfigRuleTriggerTypes")
    OrganizationConfigRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#OrganizationConfigRules", name: "OrganizationConfigRules")
    OrganizationConformancePack = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#OrganizationConformancePack", name: "OrganizationConformancePack")
    OrganizationConformancePackDetailedStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#OrganizationConformancePackDetailedStatus", name: "OrganizationConformancePackDetailedStatus")
    OrganizationConformancePackDetailedStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#OrganizationConformancePackDetailedStatuses", name: "OrganizationConformancePackDetailedStatuses")
    OrganizationConformancePackName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#OrganizationConformancePackName", name: "OrganizationConformancePackName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z][-a-zA-Z0-9]*$"})
    OrganizationConformancePackNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#OrganizationConformancePackNames", name: "OrganizationConformancePackNames", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    OrganizationConformancePackStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#OrganizationConformancePackStatus", name: "OrganizationConformancePackStatus")
    OrganizationConformancePackStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#OrganizationConformancePackStatuses", name: "OrganizationConformancePackStatuses")
    OrganizationConformancePackTemplateValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#OrganizationConformancePackTemplateValidationException", name: "OrganizationConformancePackTemplateValidationException", traits: {"smithy.api#error" => "client"})
    OrganizationConformancePacks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#OrganizationConformancePacks", name: "OrganizationConformancePacks")
    OrganizationCustomPolicyRuleMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#OrganizationCustomPolicyRuleMetadata", name: "OrganizationCustomPolicyRuleMetadata")
    OrganizationCustomPolicyRuleMetadataNoPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#OrganizationCustomPolicyRuleMetadataNoPolicy", name: "OrganizationCustomPolicyRuleMetadataNoPolicy")
    OrganizationCustomRuleMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#OrganizationCustomRuleMetadata", name: "OrganizationCustomRuleMetadata")
    OrganizationManagedRuleMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#OrganizationManagedRuleMetadata", name: "OrganizationManagedRuleMetadata")
    OrganizationResourceDetailedStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#OrganizationResourceDetailedStatus", name: "OrganizationResourceDetailedStatus")
    OrganizationResourceDetailedStatusFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#OrganizationResourceDetailedStatusFilters", name: "OrganizationResourceDetailedStatusFilters")
    OrganizationResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#OrganizationResourceStatus", name: "OrganizationResourceStatus")
    OrganizationRuleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#OrganizationRuleStatus", name: "OrganizationRuleStatus")
    OversizedConfigurationItemException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#OversizedConfigurationItemException", name: "OversizedConfigurationItemException", traits: {"smithy.api#error" => "client"})
    Owner = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#Owner", name: "Owner")
    PageSizeLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#PageSizeLimit", name: "PageSizeLimit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 20}})
    ParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ParameterName", name: "ParameterName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ParameterValue", name: "ParameterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    PendingAggregationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PendingAggregationRequest", name: "PendingAggregationRequest")
    PendingAggregationRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#PendingAggregationRequestList", name: "PendingAggregationRequestList")
    Percentage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#Percentage", name: "Percentage", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    PolicyRuntime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#PolicyRuntime", name: "PolicyRuntime", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^guard\\-2\\.x\\.x$"})
    PolicyText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#PolicyText", name: "PolicyText", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}})
    PutAggregationAuthorizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutAggregationAuthorizationRequest", name: "PutAggregationAuthorizationRequest")
    PutAggregationAuthorizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutAggregationAuthorizationResponse", name: "PutAggregationAuthorizationResponse")
    PutConfigRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutConfigRuleRequest", name: "PutConfigRuleRequest")
    PutConfigurationAggregatorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutConfigurationAggregatorRequest", name: "PutConfigurationAggregatorRequest")
    PutConfigurationAggregatorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutConfigurationAggregatorResponse", name: "PutConfigurationAggregatorResponse")
    PutConfigurationRecorderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutConfigurationRecorderRequest", name: "PutConfigurationRecorderRequest")
    PutConformancePackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutConformancePackRequest", name: "PutConformancePackRequest")
    PutConformancePackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutConformancePackResponse", name: "PutConformancePackResponse")
    PutDeliveryChannelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutDeliveryChannelRequest", name: "PutDeliveryChannelRequest")
    PutEvaluationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutEvaluationsRequest", name: "PutEvaluationsRequest")
    PutEvaluationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutEvaluationsResponse", name: "PutEvaluationsResponse")
    PutExternalEvaluationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutExternalEvaluationRequest", name: "PutExternalEvaluationRequest")
    PutExternalEvaluationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutExternalEvaluationResponse", name: "PutExternalEvaluationResponse")
    PutOrganizationConfigRuleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutOrganizationConfigRuleRequest", name: "PutOrganizationConfigRuleRequest")
    PutOrganizationConfigRuleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutOrganizationConfigRuleResponse", name: "PutOrganizationConfigRuleResponse")
    PutOrganizationConformancePackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutOrganizationConformancePackRequest", name: "PutOrganizationConformancePackRequest")
    PutOrganizationConformancePackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutOrganizationConformancePackResponse", name: "PutOrganizationConformancePackResponse")
    PutRemediationConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutRemediationConfigurationsRequest", name: "PutRemediationConfigurationsRequest")
    PutRemediationConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutRemediationConfigurationsResponse", name: "PutRemediationConfigurationsResponse")
    PutRemediationExceptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutRemediationExceptionsRequest", name: "PutRemediationExceptionsRequest")
    PutRemediationExceptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutRemediationExceptionsResponse", name: "PutRemediationExceptionsResponse")
    PutResourceConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutResourceConfigRequest", name: "PutResourceConfigRequest")
    PutRetentionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutRetentionConfigurationRequest", name: "PutRetentionConfigurationRequest")
    PutRetentionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutRetentionConfigurationResponse", name: "PutRetentionConfigurationResponse")
    PutServiceLinkedConfigurationRecorderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutServiceLinkedConfigurationRecorderRequest", name: "PutServiceLinkedConfigurationRecorderRequest")
    PutServiceLinkedConfigurationRecorderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutServiceLinkedConfigurationRecorderResponse", name: "PutServiceLinkedConfigurationRecorderResponse")
    PutStoredQueryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutStoredQueryRequest", name: "PutStoredQueryRequest")
    PutStoredQueryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#PutStoredQueryResponse", name: "PutStoredQueryResponse")
    QueryArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#QueryArn", name: "QueryArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:config:[a-z\\-\\d]+:\\d+:stored-query/[a-zA-Z0-9-_]+/query-[a-zA-Z\\d-_/]+$"})
    QueryDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#QueryDescription", name: "QueryDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    QueryExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#QueryExpression", name: "QueryExpression", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    QueryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#QueryId", name: "QueryId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^\\S+$"})
    QueryInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#QueryInfo", name: "QueryInfo")
    QueryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#QueryName", name: "QueryName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    RecorderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#RecorderName", name: "RecorderName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    RecorderStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#RecorderStatus", name: "RecorderStatus")
    RecordingFrequency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#RecordingFrequency", name: "RecordingFrequency")
    RecordingGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#RecordingGroup", name: "RecordingGroup")
    RecordingMode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#RecordingMode", name: "RecordingMode")
    RecordingModeOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#RecordingModeOverride", name: "RecordingModeOverride")
    RecordingModeOverrides = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#RecordingModeOverrides", name: "RecordingModeOverrides", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    RecordingModeResourceTypesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#RecordingModeResourceTypesList", name: "RecordingModeResourceTypesList")
    RecordingScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#RecordingScope", name: "RecordingScope")
    RecordingStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#RecordingStrategy", name: "RecordingStrategy")
    RecordingStrategyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#RecordingStrategyType", name: "RecordingStrategyType")
    ReevaluateConfigRuleNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ReevaluateConfigRuleNames", name: "ReevaluateConfigRuleNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    RelatedEvent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#RelatedEvent", name: "RelatedEvent")
    RelatedEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#RelatedEventList", name: "RelatedEventList")
    Relationship = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#Relationship", name: "Relationship")
    RelationshipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#RelationshipList", name: "RelationshipList")
    RelationshipName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#RelationshipName", name: "RelationshipName")
    RemediationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#RemediationConfiguration", name: "RemediationConfiguration")
    RemediationConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#RemediationConfigurations", name: "RemediationConfigurations", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    RemediationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#RemediationException", name: "RemediationException")
    RemediationExceptionResourceKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#RemediationExceptionResourceKey", name: "RemediationExceptionResourceKey")
    RemediationExceptionResourceKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#RemediationExceptionResourceKeys", name: "RemediationExceptionResourceKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RemediationExceptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#RemediationExceptions", name: "RemediationExceptions", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    RemediationExecutionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#RemediationExecutionState", name: "RemediationExecutionState")
    RemediationExecutionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#RemediationExecutionStatus", name: "RemediationExecutionStatus")
    RemediationExecutionStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#RemediationExecutionStatuses", name: "RemediationExecutionStatuses")
    RemediationExecutionStep = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#RemediationExecutionStep", name: "RemediationExecutionStep")
    RemediationExecutionStepState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#RemediationExecutionStepState", name: "RemediationExecutionStepState")
    RemediationExecutionSteps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#RemediationExecutionSteps", name: "RemediationExecutionSteps")
    RemediationInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#RemediationInProgressException", name: "RemediationInProgressException", traits: {"smithy.api#error" => "client"})
    RemediationParameterValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#RemediationParameterValue", name: "RemediationParameterValue")
    RemediationParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.configservice#RemediationParameters", name: "RemediationParameters", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    RemediationTargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#RemediationTargetType", name: "RemediationTargetType")
    ResourceConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ResourceConcurrentModificationException", name: "ResourceConcurrentModificationException", traits: {"smithy.api#error" => "client"})
    ResourceConfiguration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ResourceConfiguration", name: "ResourceConfiguration", traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}})
    ResourceConfigurationSchemaType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#ResourceConfigurationSchemaType", name: "ResourceConfigurationSchemaType")
    ResourceCount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ResourceCount", name: "ResourceCount")
    ResourceCountFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ResourceCountFilters", name: "ResourceCountFilters")
    ResourceCountGroupKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#ResourceCountGroupKey", name: "ResourceCountGroupKey")
    ResourceCounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ResourceCounts", name: "ResourceCounts")
    ResourceCreationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.configservice#ResourceCreationTime", name: "ResourceCreationTime")
    ResourceDeletionTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.configservice#ResourceDeletionTime", name: "ResourceDeletionTime")
    ResourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ResourceDetails", name: "ResourceDetails")
    ResourceEvaluation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ResourceEvaluation", name: "ResourceEvaluation")
    ResourceEvaluationFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ResourceEvaluationFilters", name: "ResourceEvaluationFilters")
    ResourceEvaluationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ResourceEvaluationId", name: "ResourceEvaluationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ResourceEvaluationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#ResourceEvaluationStatus", name: "ResourceEvaluationStatus")
    ResourceEvaluations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ResourceEvaluations", name: "ResourceEvaluations")
    ResourceFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ResourceFilters", name: "ResourceFilters")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 768}})
    ResourceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ResourceIdList", name: "ResourceIdList")
    ResourceIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ResourceIdentifier", name: "ResourceIdentifier")
    ResourceIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ResourceIdentifierList", name: "ResourceIdentifierList")
    ResourceIdentifiersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ResourceIdentifiersList", name: "ResourceIdentifiersList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client"})
    ResourceKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ResourceKey", name: "ResourceKey")
    ResourceKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ResourceKeys", name: "ResourceKeys", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ResourceName", name: "ResourceName")
    ResourceNotDiscoveredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ResourceNotDiscoveredException", name: "ResourceNotDiscoveredException", traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#ResourceType", name: "ResourceType")
    ResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ResourceTypeList", name: "ResourceTypeList")
    ResourceTypeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ResourceTypeString", name: "ResourceTypeString", traits: {"smithy.api#length" => {"min" => 1, "max" => 196}})
    ResourceTypeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ResourceTypeValue", name: "ResourceTypeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9]{2,64}::[a-zA-Z0-9]{2,64}::[a-zA-Z0-9]{2,64}$"})
    ResourceTypeValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ResourceTypeValueList", name: "ResourceTypeValueList")
    ResourceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ResourceTypes", name: "ResourceTypes", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ResourceTypesScope = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ResourceTypesScope", name: "ResourceTypesScope", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ResourceValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ResourceValue", name: "ResourceValue")
    ResourceValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#ResourceValueType", name: "ResourceValueType")
    Results = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#Results", name: "Results")
    RetentionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#RetentionConfiguration", name: "RetentionConfiguration")
    RetentionConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#RetentionConfigurationList", name: "RetentionConfigurationList")
    RetentionConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#RetentionConfigurationName", name: "RetentionConfigurationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w\\-]+$"})
    RetentionConfigurationNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#RetentionConfigurationNameList", name: "RetentionConfigurationNameList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    RetentionPeriodInDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#RetentionPeriodInDays", name: "RetentionPeriodInDays", traits: {"smithy.api#range" => {"min" => 30, "max" => 2557}})
    RuleLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.configservice#RuleLimit", name: "RuleLimit", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 50}})
    SSMDocumentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#SSMDocumentName", name: "SSMDocumentName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\-.:/]{3,200}$"})
    SSMDocumentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#SSMDocumentVersion", name: "SSMDocumentVersion", traits: {"smithy.api#pattern" => "^([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)$"})
    SchemaVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#SchemaVersionId", name: "SchemaVersionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-]+$"})
    Scope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#Scope", name: "Scope")
    SelectAggregateResourceConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#SelectAggregateResourceConfigRequest", name: "SelectAggregateResourceConfigRequest")
    SelectAggregateResourceConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#SelectAggregateResourceConfigResponse", name: "SelectAggregateResourceConfigResponse")
    SelectResourceConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#SelectResourceConfigRequest", name: "SelectResourceConfigRequest")
    SelectResourceConfigResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#SelectResourceConfigResponse", name: "SelectResourceConfigResponse")
    ServicePrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ServicePrincipal", name: "ServicePrincipal", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    ServicePrincipalValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#ServicePrincipalValue", name: "ServicePrincipalValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    ServicePrincipalValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#ServicePrincipalValueList", name: "ServicePrincipalValueList")
    SortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#SortBy", name: "SortBy")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.configservice#SortOrder", name: "SortOrder")
    Source = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#Source", name: "Source")
    SourceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#SourceDetail", name: "SourceDetail")
    SourceDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#SourceDetails", name: "SourceDetails", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    SsmControls = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#SsmControls", name: "SsmControls")
    StackArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#StackArn", name: "StackArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    StartConfigRulesEvaluationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#StartConfigRulesEvaluationRequest", name: "StartConfigRulesEvaluationRequest")
    StartConfigRulesEvaluationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#StartConfigRulesEvaluationResponse", name: "StartConfigRulesEvaluationResponse")
    StartConfigurationRecorderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#StartConfigurationRecorderRequest", name: "StartConfigurationRecorderRequest")
    StartRemediationExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#StartRemediationExecutionRequest", name: "StartRemediationExecutionRequest")
    StartRemediationExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#StartRemediationExecutionResponse", name: "StartRemediationExecutionResponse")
    StartResourceEvaluationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#StartResourceEvaluationRequest", name: "StartResourceEvaluationRequest")
    StartResourceEvaluationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#StartResourceEvaluationResponse", name: "StartResourceEvaluationResponse")
    StaticParameterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#StaticParameterValues", name: "StaticParameterValues", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    StaticValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#StaticValue", name: "StaticValue")
    StatusDetailFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#StatusDetailFilters", name: "StatusDetailFilters")
    StopConfigurationRecorderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#StopConfigurationRecorderRequest", name: "StopConfigurationRecorderRequest")
    StoredQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#StoredQuery", name: "StoredQuery")
    StoredQueryMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#StoredQueryMetadata", name: "StoredQueryMetadata")
    StoredQueryMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#StoredQueryMetadataList", name: "StoredQueryMetadataList")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#String", name: "String")
    StringWithCharLimit1024 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#StringWithCharLimit1024", name: "StringWithCharLimit1024", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    StringWithCharLimit128 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#StringWithCharLimit128", name: "StringWithCharLimit128", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    StringWithCharLimit2048 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#StringWithCharLimit2048", name: "StringWithCharLimit2048", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    StringWithCharLimit256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#StringWithCharLimit256", name: "StringWithCharLimit256", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    StringWithCharLimit256Min0 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#StringWithCharLimit256Min0", name: "StringWithCharLimit256Min0", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    StringWithCharLimit64 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#StringWithCharLimit64", name: "StringWithCharLimit64", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    StringWithCharLimit768 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#StringWithCharLimit768", name: "StringWithCharLimit768", traits: {"smithy.api#length" => {"min" => 1, "max" => 768}})
    SupplementaryConfiguration = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.configservice#SupplementaryConfiguration", name: "SupplementaryConfiguration")
    SupplementaryConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#SupplementaryConfigurationName", name: "SupplementaryConfigurationName")
    SupplementaryConfigurationValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#SupplementaryConfigurationValue", name: "SupplementaryConfigurationValue")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#TagResourceRequest", name: "TagResourceRequest")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.configservice#Tags", name: "Tags")
    TagsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#TagsList", name: "TagsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TemplateBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#TemplateBody", name: "TemplateBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 51200}})
    TemplateS3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#TemplateS3Uri", name: "TemplateS3Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://"})
    TemplateSSMDocumentDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#TemplateSSMDocumentDetails", name: "TemplateSSMDocumentDetails")
    TimeWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#TimeWindow", name: "TimeWindow")
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client"})
    UnmodifiableEntityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#UnmodifiableEntityException", name: "UnmodifiableEntityException", traits: {"smithy.api#error" => "client"})
    UnprocessedResourceIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.configservice#UnprocessedResourceIdentifierList", name: "UnprocessedResourceIdentifierList")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#UntagResourceRequest", name: "UntagResourceRequest")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.configservice#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#Value", name: "Value")
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.configservice#Version", name: "Version")

    AccountAggregationSource.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAggregationSourceAccountList, name: "AccountIds", traits: {"smithy.api#required" => {}}))
    AccountAggregationSource.add_member(:all_aws_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllAwsRegions", traits: {"smithy.api#default" => false}))
    AccountAggregationSource.add_member(:aws_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatorRegionList, name: "AwsRegions"))
    AccountAggregationSource.type = Types::AccountAggregationSource
    AccountAggregationSourceAccountList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member")
    AccountAggregationSourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAggregationSource, name: "member")
    AggregateComplianceByConfigRule.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName"))
    AggregateComplianceByConfigRule.add_member(:compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: Compliance, name: "Compliance"))
    AggregateComplianceByConfigRule.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    AggregateComplianceByConfigRule.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "AwsRegion"))
    AggregateComplianceByConfigRule.type = Types::AggregateComplianceByConfigRule
    AggregateComplianceByConfigRuleList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateComplianceByConfigRule, name: "member")
    AggregateComplianceByConformancePack.add_member(:conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackName, name: "ConformancePackName"))
    AggregateComplianceByConformancePack.add_member(:compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateConformancePackCompliance, name: "Compliance"))
    AggregateComplianceByConformancePack.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    AggregateComplianceByConformancePack.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "AwsRegion"))
    AggregateComplianceByConformancePack.type = Types::AggregateComplianceByConformancePack
    AggregateComplianceByConformancePackList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateComplianceByConformancePack, name: "member")
    AggregateComplianceCount.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "GroupName"))
    AggregateComplianceCount.add_member(:compliance_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSummary, name: "ComplianceSummary"))
    AggregateComplianceCount.type = Types::AggregateComplianceCount
    AggregateComplianceCountList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateComplianceCount, name: "member")
    AggregateConformancePackCompliance.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackComplianceType, name: "ComplianceType"))
    AggregateConformancePackCompliance.add_member(:compliant_rule_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "CompliantRuleCount", traits: {"smithy.api#default" => 0}))
    AggregateConformancePackCompliance.add_member(:non_compliant_rule_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NonCompliantRuleCount", traits: {"smithy.api#default" => 0}))
    AggregateConformancePackCompliance.add_member(:total_rule_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TotalRuleCount", traits: {"smithy.api#default" => 0}))
    AggregateConformancePackCompliance.type = Types::AggregateConformancePackCompliance
    AggregateConformancePackComplianceCount.add_member(:compliant_conformance_pack_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "CompliantConformancePackCount", traits: {"smithy.api#default" => 0}))
    AggregateConformancePackComplianceCount.add_member(:non_compliant_conformance_pack_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NonCompliantConformancePackCount", traits: {"smithy.api#default" => 0}))
    AggregateConformancePackComplianceCount.type = Types::AggregateConformancePackComplianceCount
    AggregateConformancePackComplianceFilters.add_member(:conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackName, name: "ConformancePackName"))
    AggregateConformancePackComplianceFilters.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackComplianceType, name: "ComplianceType"))
    AggregateConformancePackComplianceFilters.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    AggregateConformancePackComplianceFilters.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "AwsRegion"))
    AggregateConformancePackComplianceFilters.type = Types::AggregateConformancePackComplianceFilters
    AggregateConformancePackComplianceSummary.add_member(:compliance_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateConformancePackComplianceCount, name: "ComplianceSummary"))
    AggregateConformancePackComplianceSummary.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "GroupName"))
    AggregateConformancePackComplianceSummary.type = Types::AggregateConformancePackComplianceSummary
    AggregateConformancePackComplianceSummaryFilters.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    AggregateConformancePackComplianceSummaryFilters.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "AwsRegion"))
    AggregateConformancePackComplianceSummaryFilters.type = Types::AggregateConformancePackComplianceSummaryFilters
    AggregateConformancePackComplianceSummaryGroupKey.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    AggregateConformancePackComplianceSummaryGroupKey.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_REGION", traits: {"smithy.api#enumValue" => "AWS_REGION"}))
    AggregateConformancePackComplianceSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateConformancePackComplianceSummary, name: "member")
    AggregateEvaluationResult.add_member(:evaluation_result_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResultIdentifier, name: "EvaluationResultIdentifier"))
    AggregateEvaluationResult.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceType, name: "ComplianceType"))
    AggregateEvaluationResult.add_member(:result_recorded_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ResultRecordedTime"))
    AggregateEvaluationResult.add_member(:config_rule_invoked_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ConfigRuleInvokedTime"))
    AggregateEvaluationResult.add_member(:annotation, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "Annotation"))
    AggregateEvaluationResult.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    AggregateEvaluationResult.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "AwsRegion"))
    AggregateEvaluationResult.type = Types::AggregateEvaluationResult
    AggregateEvaluationResultList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateEvaluationResult, name: "member")
    AggregateResourceIdentifier.add_member(:source_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "SourceAccountId", traits: {"smithy.api#required" => {}}))
    AggregateResourceIdentifier.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "SourceRegion", traits: {"smithy.api#required" => {}}))
    AggregateResourceIdentifier.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    AggregateResourceIdentifier.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    AggregateResourceIdentifier.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName"))
    AggregateResourceIdentifier.type = Types::AggregateResourceIdentifier
    AggregatedSourceStatus.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceId"))
    AggregatedSourceStatus.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedSourceType, name: "SourceType"))
    AggregatedSourceStatus.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "AwsRegion"))
    AggregatedSourceStatus.add_member(:last_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedSourceStatusType, name: "LastUpdateStatus"))
    AggregatedSourceStatus.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdateTime"))
    AggregatedSourceStatus.add_member(:last_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastErrorCode"))
    AggregatedSourceStatus.add_member(:last_error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastErrorMessage"))
    AggregatedSourceStatus.type = Types::AggregatedSourceStatus
    AggregatedSourceStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedSourceStatus, name: "member")
    AggregatedSourceStatusType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AggregatedSourceStatusType.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    AggregatedSourceStatusType.add_member(:outdated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTDATED", traits: {"smithy.api#enumValue" => "OUTDATED"}))
    AggregatedSourceStatusTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedSourceStatusType, name: "member")
    AggregatedSourceType.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    AggregatedSourceType.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION", traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    AggregationAuthorization.add_member(:aggregation_authorization_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AggregationAuthorizationArn"))
    AggregationAuthorization.add_member(:authorized_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AuthorizedAccountId"))
    AggregationAuthorization.add_member(:authorized_aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "AuthorizedAwsRegion"))
    AggregationAuthorization.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationTime"))
    AggregationAuthorization.type = Types::AggregationAuthorization
    AggregationAuthorizationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationAuthorization, name: "member")
    AggregatorFilterResourceType.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatorFilterType, name: "Type"))
    AggregatorFilterResourceType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeValueList, name: "Value"))
    AggregatorFilterResourceType.type = Types::AggregatorFilterResourceType
    AggregatorFilterServicePrincipal.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatorFilterType, name: "Type"))
    AggregatorFilterServicePrincipal.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipalValueList, name: "Value"))
    AggregatorFilterServicePrincipal.type = Types::AggregatorFilterServicePrincipal
    AggregatorFilterType.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUDE", traits: {"smithy.api#enumValue" => "INCLUDE"}))
    AggregatorFilters.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatorFilterResourceType, name: "ResourceType"))
    AggregatorFilters.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatorFilterServicePrincipal, name: "ServicePrincipal"))
    AggregatorFilters.type = Types::AggregatorFilters
    AggregatorRegionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    AssociateResourceTypesRequest.add_member(:configuration_recorder_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ConfigurationRecorderArn", traits: {"smithy.api#required" => {}}))
    AssociateResourceTypesRequest.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeList, name: "ResourceTypes", traits: {"smithy.api#required" => {}}))
    AssociateResourceTypesRequest.type = Types::AssociateResourceTypesRequest
    AssociateResourceTypesResponse.add_member(:configuration_recorder, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorder, name: "ConfigurationRecorder", traits: {"smithy.api#required" => {}}))
    AssociateResourceTypesResponse.type = Types::AssociateResourceTypesResponse
    BaseConfigurationItem.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version"))
    BaseConfigurationItem.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    BaseConfigurationItem.add_member(:configuration_item_capture_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationItemCaptureTime, name: "configurationItemCaptureTime"))
    BaseConfigurationItem.add_member(:configuration_item_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationItemStatus, name: "configurationItemStatus"))
    BaseConfigurationItem.add_member(:configuration_state_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationStateId, name: "configurationStateId"))
    BaseConfigurationItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    BaseConfigurationItem.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    BaseConfigurationItem.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    BaseConfigurationItem.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName"))
    BaseConfigurationItem.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "awsRegion"))
    BaseConfigurationItem.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "availabilityZone"))
    BaseConfigurationItem.add_member(:resource_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCreationTime, name: "resourceCreationTime"))
    BaseConfigurationItem.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "configuration"))
    BaseConfigurationItem.add_member(:supplementary_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplementaryConfiguration, name: "supplementaryConfiguration"))
    BaseConfigurationItem.add_member(:recording_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingFrequency, name: "recordingFrequency"))
    BaseConfigurationItem.add_member(:configuration_item_delivery_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationItemDeliveryTime, name: "configurationItemDeliveryTime"))
    BaseConfigurationItem.type = Types::BaseConfigurationItem
    BaseConfigurationItems.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BaseConfigurationItem, name: "member")
    BatchGetAggregateResourceConfigRequest.add_member(:configuration_aggregator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorName, name: "ConfigurationAggregatorName", traits: {"smithy.api#required" => {}}))
    BatchGetAggregateResourceConfigRequest.add_member(:resource_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifiersList, name: "ResourceIdentifiers", traits: {"smithy.api#required" => {}}))
    BatchGetAggregateResourceConfigRequest.type = Types::BatchGetAggregateResourceConfigRequest
    BatchGetAggregateResourceConfigResponse.add_member(:base_configuration_items, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseConfigurationItems, name: "BaseConfigurationItems"))
    BatchGetAggregateResourceConfigResponse.add_member(:unprocessed_resource_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedResourceIdentifierList, name: "UnprocessedResourceIdentifiers"))
    BatchGetAggregateResourceConfigResponse.type = Types::BatchGetAggregateResourceConfigResponse
    BatchGetResourceConfigRequest.add_member(:resource_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceKeys, name: "resourceKeys", traits: {"smithy.api#required" => {}}))
    BatchGetResourceConfigRequest.type = Types::BatchGetResourceConfigRequest
    BatchGetResourceConfigResponse.add_member(:base_configuration_items, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseConfigurationItems, name: "baseConfigurationItems"))
    BatchGetResourceConfigResponse.add_member(:unprocessed_resource_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceKeys, name: "unprocessedResourceKeys"))
    BatchGetResourceConfigResponse.type = Types::BatchGetResourceConfigResponse
    ChronologicalOrder.add_member(:reverse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Reverse", traits: {"smithy.api#enumValue" => "Reverse"}))
    ChronologicalOrder.add_member(:forward, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Forward", traits: {"smithy.api#enumValue" => "Forward"}))
    Compliance.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceType, name: "ComplianceType"))
    Compliance.add_member(:compliance_contributor_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceContributorCount, name: "ComplianceContributorCount"))
    Compliance.type = Types::Compliance
    ComplianceByConfigRule.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit64, name: "ConfigRuleName"))
    ComplianceByConfigRule.add_member(:compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: Compliance, name: "Compliance"))
    ComplianceByConfigRule.type = Types::ComplianceByConfigRule
    ComplianceByConfigRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceByConfigRule, name: "member")
    ComplianceByResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "ResourceType"))
    ComplianceByResource.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseResourceId, name: "ResourceId"))
    ComplianceByResource.add_member(:compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: Compliance, name: "Compliance"))
    ComplianceByResource.type = Types::ComplianceByResource
    ComplianceByResources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceByResource, name: "member")
    ComplianceContributorCount.add_member(:capped_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "CappedCount", traits: {"smithy.api#default" => 0}))
    ComplianceContributorCount.add_member(:cap_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CapExceeded", traits: {"smithy.api#default" => false}))
    ComplianceContributorCount.type = Types::ComplianceContributorCount
    ComplianceResourceTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "member")
    ComplianceSummariesByResourceType.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSummaryByResourceType, name: "member")
    ComplianceSummary.add_member(:compliant_resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceContributorCount, name: "CompliantResourceCount"))
    ComplianceSummary.add_member(:non_compliant_resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceContributorCount, name: "NonCompliantResourceCount"))
    ComplianceSummary.add_member(:compliance_summary_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ComplianceSummaryTimestamp"))
    ComplianceSummary.type = Types::ComplianceSummary
    ComplianceSummaryByResourceType.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "ResourceType"))
    ComplianceSummaryByResourceType.add_member(:compliance_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSummary, name: "ComplianceSummary"))
    ComplianceSummaryByResourceType.type = Types::ComplianceSummaryByResourceType
    ComplianceType.add_member(:compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Compliant", traits: {"smithy.api#enumValue" => "COMPLIANT"}))
    ComplianceType.add_member(:non_compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Non_Compliant", traits: {"smithy.api#enumValue" => "NON_COMPLIANT"}))
    ComplianceType.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Not_Applicable", traits: {"smithy.api#enumValue" => "NOT_APPLICABLE"}))
    ComplianceType.add_member(:insufficient_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Insufficient_Data", traits: {"smithy.api#enumValue" => "INSUFFICIENT_DATA"}))
    ComplianceTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceType, name: "member")
    ConfigExportDeliveryInfo.add_member(:last_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStatus, name: "lastStatus"))
    ConfigExportDeliveryInfo.add_member(:last_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lastErrorCode"))
    ConfigExportDeliveryInfo.add_member(:last_error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lastErrorMessage"))
    ConfigExportDeliveryInfo.add_member(:last_attempt_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "lastAttemptTime"))
    ConfigExportDeliveryInfo.add_member(:last_successful_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "lastSuccessfulTime"))
    ConfigExportDeliveryInfo.add_member(:next_delivery_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "nextDeliveryTime"))
    ConfigExportDeliveryInfo.type = Types::ConfigExportDeliveryInfo
    ConfigRule.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName"))
    ConfigRule.add_member(:config_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "ConfigRuleArn"))
    ConfigRule.add_member(:config_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit64, name: "ConfigRuleId"))
    ConfigRule.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EmptiableStringWithCharLimit256, name: "Description"))
    ConfigRule.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope"))
    ConfigRule.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, name: "Source", traits: {"smithy.api#required" => {}}))
    ConfigRule.add_member(:input_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit1024, name: "InputParameters"))
    ConfigRule.add_member(:maximum_execution_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumExecutionFrequency, name: "MaximumExecutionFrequency"))
    ConfigRule.add_member(:config_rule_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleState, name: "ConfigRuleState"))
    ConfigRule.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "CreatedBy"))
    ConfigRule.add_member(:evaluation_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationModes, name: "EvaluationModes"))
    ConfigRule.type = Types::ConfigRule
    ConfigRuleComplianceFilters.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName"))
    ConfigRuleComplianceFilters.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceType, name: "ComplianceType"))
    ConfigRuleComplianceFilters.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    ConfigRuleComplianceFilters.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "AwsRegion"))
    ConfigRuleComplianceFilters.type = Types::ConfigRuleComplianceFilters
    ConfigRuleComplianceSummaryFilters.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    ConfigRuleComplianceSummaryFilters.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "AwsRegion"))
    ConfigRuleComplianceSummaryFilters.type = Types::ConfigRuleComplianceSummaryFilters
    ConfigRuleComplianceSummaryGroupKey.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    ConfigRuleComplianceSummaryGroupKey.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_REGION", traits: {"smithy.api#enumValue" => "AWS_REGION"}))
    ConfigRuleEvaluationStatus.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName"))
    ConfigRuleEvaluationStatus.add_member(:config_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConfigRuleArn"))
    ConfigRuleEvaluationStatus.add_member(:config_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConfigRuleId"))
    ConfigRuleEvaluationStatus.add_member(:last_successful_invocation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastSuccessfulInvocationTime"))
    ConfigRuleEvaluationStatus.add_member(:last_failed_invocation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastFailedInvocationTime"))
    ConfigRuleEvaluationStatus.add_member(:last_successful_evaluation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastSuccessfulEvaluationTime"))
    ConfigRuleEvaluationStatus.add_member(:last_failed_evaluation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastFailedEvaluationTime"))
    ConfigRuleEvaluationStatus.add_member(:first_activated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "FirstActivatedTime"))
    ConfigRuleEvaluationStatus.add_member(:last_deactivated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastDeactivatedTime"))
    ConfigRuleEvaluationStatus.add_member(:last_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastErrorCode"))
    ConfigRuleEvaluationStatus.add_member(:last_error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastErrorMessage"))
    ConfigRuleEvaluationStatus.add_member(:first_evaluation_started, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "FirstEvaluationStarted", traits: {"smithy.api#default" => false}))
    ConfigRuleEvaluationStatus.add_member(:last_debug_log_delivery_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastDebugLogDeliveryStatus"))
    ConfigRuleEvaluationStatus.add_member(:last_debug_log_delivery_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastDebugLogDeliveryStatusReason"))
    ConfigRuleEvaluationStatus.add_member(:last_debug_log_delivery_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastDebugLogDeliveryTime"))
    ConfigRuleEvaluationStatus.type = Types::ConfigRuleEvaluationStatus
    ConfigRuleEvaluationStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleEvaluationStatus, name: "member")
    ConfigRuleNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "member")
    ConfigRuleState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ConfigRuleState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ConfigRuleState.add_member(:deleting_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING_RESULTS", traits: {"smithy.api#enumValue" => "DELETING_RESULTS"}))
    ConfigRuleState.add_member(:evaluating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVALUATING", traits: {"smithy.api#enumValue" => "EVALUATING"}))
    ConfigRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRule, name: "member")
    ConfigSnapshotDeliveryProperties.add_member(:delivery_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumExecutionFrequency, name: "deliveryFrequency"))
    ConfigSnapshotDeliveryProperties.type = Types::ConfigSnapshotDeliveryProperties
    ConfigStreamDeliveryInfo.add_member(:last_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStatus, name: "lastStatus"))
    ConfigStreamDeliveryInfo.add_member(:last_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lastErrorCode"))
    ConfigStreamDeliveryInfo.add_member(:last_error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lastErrorMessage"))
    ConfigStreamDeliveryInfo.add_member(:last_status_change_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "lastStatusChangeTime"))
    ConfigStreamDeliveryInfo.type = Types::ConfigStreamDeliveryInfo
    ConfigurationAggregator.add_member(:configuration_aggregator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorName, name: "ConfigurationAggregatorName"))
    ConfigurationAggregator.add_member(:configuration_aggregator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorArn, name: "ConfigurationAggregatorArn"))
    ConfigurationAggregator.add_member(:account_aggregation_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAggregationSourceList, name: "AccountAggregationSources"))
    ConfigurationAggregator.add_member(:organization_aggregation_source, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAggregationSource, name: "OrganizationAggregationSource"))
    ConfigurationAggregator.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationTime"))
    ConfigurationAggregator.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdatedTime"))
    ConfigurationAggregator.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "CreatedBy"))
    ConfigurationAggregator.add_member(:aggregator_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatorFilters, name: "AggregatorFilters"))
    ConfigurationAggregator.type = Types::ConfigurationAggregator
    ConfigurationAggregatorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregator, name: "member")
    ConfigurationAggregatorNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorName, name: "member")
    ConfigurationItem.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version"))
    ConfigurationItem.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    ConfigurationItem.add_member(:configuration_item_capture_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationItemCaptureTime, name: "configurationItemCaptureTime"))
    ConfigurationItem.add_member(:configuration_item_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationItemStatus, name: "configurationItemStatus"))
    ConfigurationItem.add_member(:configuration_state_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationStateId, name: "configurationStateId"))
    ConfigurationItem.add_member(:configuration_item_md5_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationItemMD5Hash, name: "configurationItemMD5Hash"))
    ConfigurationItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "arn"))
    ConfigurationItem.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ConfigurationItem.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    ConfigurationItem.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName"))
    ConfigurationItem.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "awsRegion"))
    ConfigurationItem.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "availabilityZone"))
    ConfigurationItem.add_member(:resource_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCreationTime, name: "resourceCreationTime"))
    ConfigurationItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ConfigurationItem.add_member(:related_events, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedEventList, name: "relatedEvents"))
    ConfigurationItem.add_member(:relationships, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipList, name: "relationships"))
    ConfigurationItem.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "configuration"))
    ConfigurationItem.add_member(:supplementary_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SupplementaryConfiguration, name: "supplementaryConfiguration"))
    ConfigurationItem.add_member(:recording_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingFrequency, name: "recordingFrequency"))
    ConfigurationItem.add_member(:configuration_item_delivery_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationItemDeliveryTime, name: "configurationItemDeliveryTime"))
    ConfigurationItem.type = Types::ConfigurationItem
    ConfigurationItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationItem, name: "member")
    ConfigurationItemStatus.add_member(:ok, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OK", traits: {"smithy.api#enumValue" => "OK"}))
    ConfigurationItemStatus.add_member(:resource_discovered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceDiscovered", traits: {"smithy.api#enumValue" => "ResourceDiscovered"}))
    ConfigurationItemStatus.add_member(:resource_not_recorded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceNotRecorded", traits: {"smithy.api#enumValue" => "ResourceNotRecorded"}))
    ConfigurationItemStatus.add_member(:resource_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceDeleted", traits: {"smithy.api#enumValue" => "ResourceDeleted"}))
    ConfigurationItemStatus.add_member(:resource_deleted_not_recorded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceDeletedNotRecorded", traits: {"smithy.api#enumValue" => "ResourceDeletedNotRecorded"}))
    ConfigurationRecorder.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "arn"))
    ConfigurationRecorder.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecorderName, name: "name"))
    ConfigurationRecorder.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "roleARN"))
    ConfigurationRecorder.add_member(:recording_group, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingGroup, name: "recordingGroup"))
    ConfigurationRecorder.add_member(:recording_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingMode, name: "recordingMode"))
    ConfigurationRecorder.add_member(:recording_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingScope, name: "recordingScope"))
    ConfigurationRecorder.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "servicePrincipal"))
    ConfigurationRecorder.type = Types::ConfigurationRecorder
    ConfigurationRecorderFilter.add_member(:filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorderFilterName, name: "filterName"))
    ConfigurationRecorderFilter.add_member(:filter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorderFilterValues, name: "filterValue"))
    ConfigurationRecorderFilter.type = Types::ConfigurationRecorderFilter
    ConfigurationRecorderFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorderFilter, name: "member")
    ConfigurationRecorderFilterName.add_member(:recording_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RecordingScope", traits: {"smithy.api#enumValue" => "recordingScope"}))
    ConfigurationRecorderFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorderFilterValue, name: "member")
    ConfigurationRecorderList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorder, name: "member")
    ConfigurationRecorderNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecorderName, name: "member")
    ConfigurationRecorderStatus.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "arn"))
    ConfigurationRecorderStatus.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    ConfigurationRecorderStatus.add_member(:last_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "lastStartTime"))
    ConfigurationRecorderStatus.add_member(:last_stop_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "lastStopTime"))
    ConfigurationRecorderStatus.add_member(:recording, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "recording", traits: {"smithy.api#default" => false}))
    ConfigurationRecorderStatus.add_member(:last_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecorderStatus, name: "lastStatus"))
    ConfigurationRecorderStatus.add_member(:last_error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lastErrorCode"))
    ConfigurationRecorderStatus.add_member(:last_error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lastErrorMessage"))
    ConfigurationRecorderStatus.add_member(:last_status_change_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "lastStatusChangeTime"))
    ConfigurationRecorderStatus.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "servicePrincipal"))
    ConfigurationRecorderStatus.type = Types::ConfigurationRecorderStatus
    ConfigurationRecorderStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorderStatus, name: "member")
    ConfigurationRecorderSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorderSummary, name: "member")
    ConfigurationRecorderSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "arn", traits: {"smithy.api#required" => {}}))
    ConfigurationRecorderSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecorderName, name: "name", traits: {"smithy.api#required" => {}}))
    ConfigurationRecorderSummary.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "servicePrincipal"))
    ConfigurationRecorderSummary.add_member(:recording_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingScope, name: "recordingScope", traits: {"smithy.api#required" => {}}))
    ConfigurationRecorderSummary.type = Types::ConfigurationRecorderSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConflictException.type = Types::ConflictException
    ConformancePackComplianceFilters.add_member(:config_rule_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackConfigRuleNames, name: "ConfigRuleNames"))
    ConformancePackComplianceFilters.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackComplianceType, name: "ComplianceType"))
    ConformancePackComplianceFilters.type = Types::ConformancePackComplianceFilters
    ConformancePackComplianceResourceIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "member")
    ConformancePackComplianceScore.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceScore, name: "Score"))
    ConformancePackComplianceScore.add_member(:conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackName, name: "ConformancePackName"))
    ConformancePackComplianceScore.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedTime, name: "LastUpdatedTime"))
    ConformancePackComplianceScore.type = Types::ConformancePackComplianceScore
    ConformancePackComplianceScores.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackComplianceScore, name: "member")
    ConformancePackComplianceScoresFilters.add_member(:conformance_pack_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackNameFilter, name: "ConformancePackNames", traits: {"smithy.api#required" => {}}))
    ConformancePackComplianceScoresFilters.type = Types::ConformancePackComplianceScoresFilters
    ConformancePackComplianceSummary.add_member(:conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackName, name: "ConformancePackName", traits: {"smithy.api#required" => {}}))
    ConformancePackComplianceSummary.add_member(:conformance_pack_compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackComplianceType, name: "ConformancePackComplianceStatus", traits: {"smithy.api#required" => {}}))
    ConformancePackComplianceSummary.type = Types::ConformancePackComplianceSummary
    ConformancePackComplianceSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackComplianceSummary, name: "member")
    ConformancePackComplianceType.add_member(:compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLIANT", traits: {"smithy.api#enumValue" => "COMPLIANT"}))
    ConformancePackComplianceType.add_member(:non_compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_COMPLIANT", traits: {"smithy.api#enumValue" => "NON_COMPLIANT"}))
    ConformancePackComplianceType.add_member(:insufficient_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_DATA", traits: {"smithy.api#enumValue" => "INSUFFICIENT_DATA"}))
    ConformancePackConfigRuleNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit64, name: "member")
    ConformancePackDetail.add_member(:conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackName, name: "ConformancePackName", traits: {"smithy.api#required" => {}}))
    ConformancePackDetail.add_member(:conformance_pack_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackArn, name: "ConformancePackArn", traits: {"smithy.api#required" => {}}))
    ConformancePackDetail.add_member(:conformance_pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackId, name: "ConformancePackId", traits: {"smithy.api#required" => {}}))
    ConformancePackDetail.add_member(:delivery_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryS3Bucket, name: "DeliveryS3Bucket"))
    ConformancePackDetail.add_member(:delivery_s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryS3KeyPrefix, name: "DeliveryS3KeyPrefix"))
    ConformancePackDetail.add_member(:conformance_pack_input_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackInputParameters, name: "ConformancePackInputParameters"))
    ConformancePackDetail.add_member(:last_update_requested_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdateRequestedTime"))
    ConformancePackDetail.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "CreatedBy"))
    ConformancePackDetail.add_member(:template_ssm_document_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSSMDocumentDetails, name: "TemplateSSMDocumentDetails"))
    ConformancePackDetail.type = Types::ConformancePackDetail
    ConformancePackDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackDetail, name: "member")
    ConformancePackEvaluationFilters.add_member(:config_rule_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackConfigRuleNames, name: "ConfigRuleNames"))
    ConformancePackEvaluationFilters.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackComplianceType, name: "ComplianceType"))
    ConformancePackEvaluationFilters.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "ResourceType"))
    ConformancePackEvaluationFilters.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackComplianceResourceIds, name: "ResourceIds"))
    ConformancePackEvaluationFilters.type = Types::ConformancePackEvaluationFilters
    ConformancePackEvaluationResult.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackComplianceType, name: "ComplianceType", traits: {"smithy.api#required" => {}}))
    ConformancePackEvaluationResult.add_member(:evaluation_result_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResultIdentifier, name: "EvaluationResultIdentifier", traits: {"smithy.api#required" => {}}))
    ConformancePackEvaluationResult.add_member(:config_rule_invoked_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ConfigRuleInvokedTime", traits: {"smithy.api#required" => {}}))
    ConformancePackEvaluationResult.add_member(:result_recorded_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ResultRecordedTime", traits: {"smithy.api#required" => {}}))
    ConformancePackEvaluationResult.add_member(:annotation, ::Smithy::Schema::Shapes::MemberShape.new(target: Annotation, name: "Annotation"))
    ConformancePackEvaluationResult.type = Types::ConformancePackEvaluationResult
    ConformancePackInputParameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, name: "ParameterName", traits: {"smithy.api#required" => {}}))
    ConformancePackInputParameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "ParameterValue", traits: {"smithy.api#required" => {}}))
    ConformancePackInputParameter.type = Types::ConformancePackInputParameter
    ConformancePackInputParameters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackInputParameter, name: "member")
    ConformancePackNameFilter.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackName, name: "member")
    ConformancePackNamesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackName, name: "member")
    ConformancePackNamesToSummarizeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackName, name: "member")
    ConformancePackRuleCompliance.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName"))
    ConformancePackRuleCompliance.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackComplianceType, name: "ComplianceType"))
    ConformancePackRuleCompliance.add_member(:controls, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlsList, name: "Controls"))
    ConformancePackRuleCompliance.type = Types::ConformancePackRuleCompliance
    ConformancePackRuleComplianceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackRuleCompliance, name: "member")
    ConformancePackRuleEvaluationResultsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackEvaluationResult, name: "member")
    ConformancePackState.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    ConformancePackState.add_member(:create_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_COMPLETE", traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    ConformancePackState.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ConformancePackState.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    ConformancePackState.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ConformancePackStatusDetail.add_member(:conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackName, name: "ConformancePackName", traits: {"smithy.api#required" => {}}))
    ConformancePackStatusDetail.add_member(:conformance_pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackId, name: "ConformancePackId", traits: {"smithy.api#required" => {}}))
    ConformancePackStatusDetail.add_member(:conformance_pack_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackArn, name: "ConformancePackArn", traits: {"smithy.api#required" => {}}))
    ConformancePackStatusDetail.add_member(:conformance_pack_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackState, name: "ConformancePackState", traits: {"smithy.api#required" => {}}))
    ConformancePackStatusDetail.add_member(:stack_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StackArn, name: "StackArn", traits: {"smithy.api#required" => {}}))
    ConformancePackStatusDetail.add_member(:conformance_pack_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackStatusReason, name: "ConformancePackStatusReason"))
    ConformancePackStatusDetail.add_member(:last_update_requested_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdateRequestedTime", traits: {"smithy.api#required" => {}}))
    ConformancePackStatusDetail.add_member(:last_update_completed_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdateCompletedTime"))
    ConformancePackStatusDetail.type = Types::ConformancePackStatusDetail
    ConformancePackStatusDetailsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackStatusDetail, name: "member")
    ConformancePackTemplateValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConformancePackTemplateValidationException.type = Types::ConformancePackTemplateValidationException
    ControlsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit128, name: "member")
    CustomPolicyDetails.add_member(:policy_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRuntime, name: "PolicyRuntime", traits: {"smithy.api#required" => {}}))
    CustomPolicyDetails.add_member(:policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyText, name: "PolicyText", traits: {"smithy.api#required" => {}}))
    CustomPolicyDetails.add_member(:enable_debug_log_delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableDebugLogDelivery", traits: {"smithy.api#default" => false}))
    CustomPolicyDetails.type = Types::CustomPolicyDetails
    DebugLogDeliveryAccounts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member")
    DeleteAggregationAuthorizationRequest.add_member(:authorized_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AuthorizedAccountId", traits: {"smithy.api#required" => {}}))
    DeleteAggregationAuthorizationRequest.add_member(:authorized_aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "AuthorizedAwsRegion", traits: {"smithy.api#required" => {}}))
    DeleteAggregationAuthorizationRequest.type = Types::DeleteAggregationAuthorizationRequest
    DeleteConfigRuleRequest.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName", traits: {"smithy.api#required" => {}}))
    DeleteConfigRuleRequest.type = Types::DeleteConfigRuleRequest
    DeleteConfigurationAggregatorRequest.add_member(:configuration_aggregator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorName, name: "ConfigurationAggregatorName", traits: {"smithy.api#required" => {}}))
    DeleteConfigurationAggregatorRequest.type = Types::DeleteConfigurationAggregatorRequest
    DeleteConfigurationRecorderRequest.add_member(:configuration_recorder_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecorderName, name: "ConfigurationRecorderName", traits: {"smithy.api#required" => {}}))
    DeleteConfigurationRecorderRequest.type = Types::DeleteConfigurationRecorderRequest
    DeleteConformancePackRequest.add_member(:conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackName, name: "ConformancePackName", traits: {"smithy.api#required" => {}}))
    DeleteConformancePackRequest.type = Types::DeleteConformancePackRequest
    DeleteDeliveryChannelRequest.add_member(:delivery_channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "DeliveryChannelName", traits: {"smithy.api#required" => {}}))
    DeleteDeliveryChannelRequest.type = Types::DeleteDeliveryChannelRequest
    DeleteEvaluationResultsRequest.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit64, name: "ConfigRuleName", traits: {"smithy.api#required" => {}}))
    DeleteEvaluationResultsRequest.type = Types::DeleteEvaluationResultsRequest
    DeleteEvaluationResultsResponse.type = Types::DeleteEvaluationResultsResponse
    DeleteOrganizationConfigRuleRequest.add_member(:organization_config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleName, name: "OrganizationConfigRuleName", traits: {"smithy.api#required" => {}}))
    DeleteOrganizationConfigRuleRequest.type = Types::DeleteOrganizationConfigRuleRequest
    DeleteOrganizationConformancePackRequest.add_member(:organization_conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConformancePackName, name: "OrganizationConformancePackName", traits: {"smithy.api#required" => {}}))
    DeleteOrganizationConformancePackRequest.type = Types::DeleteOrganizationConformancePackRequest
    DeletePendingAggregationRequestRequest.add_member(:requester_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "RequesterAccountId", traits: {"smithy.api#required" => {}}))
    DeletePendingAggregationRequestRequest.add_member(:requester_aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "RequesterAwsRegion", traits: {"smithy.api#required" => {}}))
    DeletePendingAggregationRequestRequest.type = Types::DeletePendingAggregationRequestRequest
    DeleteRemediationConfigurationRequest.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName", traits: {"smithy.api#required" => {}}))
    DeleteRemediationConfigurationRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType"))
    DeleteRemediationConfigurationRequest.type = Types::DeleteRemediationConfigurationRequest
    DeleteRemediationConfigurationResponse.type = Types::DeleteRemediationConfigurationResponse
    DeleteRemediationExceptionsRequest.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName", traits: {"smithy.api#required" => {}}))
    DeleteRemediationExceptionsRequest.add_member(:resource_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationExceptionResourceKeys, name: "ResourceKeys", traits: {"smithy.api#required" => {}}))
    DeleteRemediationExceptionsRequest.type = Types::DeleteRemediationExceptionsRequest
    DeleteRemediationExceptionsResponse.add_member(:failed_batches, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedDeleteRemediationExceptionsBatches, name: "FailedBatches"))
    DeleteRemediationExceptionsResponse.type = Types::DeleteRemediationExceptionsResponse
    DeleteResourceConfigRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeString, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    DeleteResourceConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DeleteResourceConfigRequest.type = Types::DeleteResourceConfigRequest
    DeleteRetentionConfigurationRequest.add_member(:retention_configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionConfigurationName, name: "RetentionConfigurationName", traits: {"smithy.api#required" => {}}))
    DeleteRetentionConfigurationRequest.type = Types::DeleteRetentionConfigurationRequest
    DeleteServiceLinkedConfigurationRecorderRequest.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "ServicePrincipal", traits: {"smithy.api#required" => {}}))
    DeleteServiceLinkedConfigurationRecorderRequest.type = Types::DeleteServiceLinkedConfigurationRecorderRequest
    DeleteServiceLinkedConfigurationRecorderResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "Arn", traits: {"smithy.api#required" => {}}))
    DeleteServiceLinkedConfigurationRecorderResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecorderName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteServiceLinkedConfigurationRecorderResponse.type = Types::DeleteServiceLinkedConfigurationRecorderResponse
    DeleteStoredQueryRequest.add_member(:query_name, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryName, name: "QueryName", traits: {"smithy.api#required" => {}}))
    DeleteStoredQueryRequest.type = Types::DeleteStoredQueryRequest
    DeleteStoredQueryResponse.type = Types::DeleteStoredQueryResponse
    DeliverConfigSnapshotRequest.add_member(:delivery_channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "deliveryChannelName", traits: {"smithy.api#required" => {}}))
    DeliverConfigSnapshotRequest.type = Types::DeliverConfigSnapshotRequest
    DeliverConfigSnapshotResponse.add_member(:config_snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "configSnapshotId"))
    DeliverConfigSnapshotResponse.type = Types::DeliverConfigSnapshotResponse
    DeliveryChannel.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "name"))
    DeliveryChannel.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "s3BucketName"))
    DeliveryChannel.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "s3KeyPrefix"))
    DeliveryChannel.add_member(:s3_kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "s3KmsKeyArn"))
    DeliveryChannel.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "snsTopicARN"))
    DeliveryChannel.add_member(:config_snapshot_delivery_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigSnapshotDeliveryProperties, name: "configSnapshotDeliveryProperties"))
    DeliveryChannel.type = Types::DeliveryChannel
    DeliveryChannelList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryChannel, name: "member")
    DeliveryChannelNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "member")
    DeliveryChannelStatus.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    DeliveryChannelStatus.add_member(:config_snapshot_delivery_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigExportDeliveryInfo, name: "configSnapshotDeliveryInfo"))
    DeliveryChannelStatus.add_member(:config_history_delivery_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigExportDeliveryInfo, name: "configHistoryDeliveryInfo"))
    DeliveryChannelStatus.add_member(:config_stream_delivery_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigStreamDeliveryInfo, name: "configStreamDeliveryInfo"))
    DeliveryChannelStatus.type = Types::DeliveryChannelStatus
    DeliveryChannelStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryChannelStatus, name: "member")
    DeliveryStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Success", traits: {"smithy.api#enumValue" => "Success"}))
    DeliveryStatus.add_member(:failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failure", traits: {"smithy.api#enumValue" => "Failure"}))
    DeliveryStatus.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Not_Applicable", traits: {"smithy.api#enumValue" => "Not_Applicable"}))
    DescribeAggregateComplianceByConfigRulesRequest.add_member(:configuration_aggregator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorName, name: "ConfigurationAggregatorName", traits: {"smithy.api#required" => {}}))
    DescribeAggregateComplianceByConfigRulesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleComplianceFilters, name: "Filters"))
    DescribeAggregateComplianceByConfigRulesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupByAPILimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeAggregateComplianceByConfigRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAggregateComplianceByConfigRulesRequest.type = Types::DescribeAggregateComplianceByConfigRulesRequest
    DescribeAggregateComplianceByConfigRulesResponse.add_member(:aggregate_compliance_by_config_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateComplianceByConfigRuleList, name: "AggregateComplianceByConfigRules"))
    DescribeAggregateComplianceByConfigRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAggregateComplianceByConfigRulesResponse.type = Types::DescribeAggregateComplianceByConfigRulesResponse
    DescribeAggregateComplianceByConformancePacksRequest.add_member(:configuration_aggregator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorName, name: "ConfigurationAggregatorName", traits: {"smithy.api#required" => {}}))
    DescribeAggregateComplianceByConformancePacksRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateConformancePackComplianceFilters, name: "Filters"))
    DescribeAggregateComplianceByConformancePacksRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeAggregateComplianceByConformancePacksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAggregateComplianceByConformancePacksRequest.type = Types::DescribeAggregateComplianceByConformancePacksRequest
    DescribeAggregateComplianceByConformancePacksResponse.add_member(:aggregate_compliance_by_conformance_packs, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateComplianceByConformancePackList, name: "AggregateComplianceByConformancePacks"))
    DescribeAggregateComplianceByConformancePacksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeAggregateComplianceByConformancePacksResponse.type = Types::DescribeAggregateComplianceByConformancePacksResponse
    DescribeAggregationAuthorizationsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeAggregationAuthorizationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeAggregationAuthorizationsRequest.type = Types::DescribeAggregationAuthorizationsRequest
    DescribeAggregationAuthorizationsResponse.add_member(:aggregation_authorizations, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationAuthorizationList, name: "AggregationAuthorizations"))
    DescribeAggregationAuthorizationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeAggregationAuthorizationsResponse.type = Types::DescribeAggregationAuthorizationsResponse
    DescribeComplianceByConfigRuleRequest.add_member(:config_rule_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleNames, name: "ConfigRuleNames"))
    DescribeComplianceByConfigRuleRequest.add_member(:compliance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceTypes, name: "ComplianceTypes"))
    DescribeComplianceByConfigRuleRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeComplianceByConfigRuleRequest.type = Types::DescribeComplianceByConfigRuleRequest
    DescribeComplianceByConfigRuleResponse.add_member(:compliance_by_config_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceByConfigRules, name: "ComplianceByConfigRules"))
    DescribeComplianceByConfigRuleResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeComplianceByConfigRuleResponse.type = Types::DescribeComplianceByConfigRuleResponse
    DescribeComplianceByResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "ResourceType"))
    DescribeComplianceByResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseResourceId, name: "ResourceId"))
    DescribeComplianceByResourceRequest.add_member(:compliance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceTypes, name: "ComplianceTypes"))
    DescribeComplianceByResourceRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeComplianceByResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeComplianceByResourceRequest.type = Types::DescribeComplianceByResourceRequest
    DescribeComplianceByResourceResponse.add_member(:compliance_by_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceByResources, name: "ComplianceByResources"))
    DescribeComplianceByResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeComplianceByResourceResponse.type = Types::DescribeComplianceByResourceResponse
    DescribeConfigRuleEvaluationStatusRequest.add_member(:config_rule_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleNames, name: "ConfigRuleNames"))
    DescribeConfigRuleEvaluationStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeConfigRuleEvaluationStatusRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeConfigRuleEvaluationStatusRequest.type = Types::DescribeConfigRuleEvaluationStatusRequest
    DescribeConfigRuleEvaluationStatusResponse.add_member(:config_rules_evaluation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleEvaluationStatusList, name: "ConfigRulesEvaluationStatus"))
    DescribeConfigRuleEvaluationStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeConfigRuleEvaluationStatusResponse.type = Types::DescribeConfigRuleEvaluationStatusResponse
    DescribeConfigRulesFilters.add_member(:evaluation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationMode, name: "EvaluationMode"))
    DescribeConfigRulesFilters.type = Types::DescribeConfigRulesFilters
    DescribeConfigRulesRequest.add_member(:config_rule_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleNames, name: "ConfigRuleNames"))
    DescribeConfigRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeConfigRulesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeConfigRulesFilters, name: "Filters"))
    DescribeConfigRulesRequest.type = Types::DescribeConfigRulesRequest
    DescribeConfigRulesResponse.add_member(:config_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRules, name: "ConfigRules"))
    DescribeConfigRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeConfigRulesResponse.type = Types::DescribeConfigRulesResponse
    DescribeConfigurationAggregatorSourcesStatusRequest.add_member(:configuration_aggregator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorName, name: "ConfigurationAggregatorName", traits: {"smithy.api#required" => {}}))
    DescribeConfigurationAggregatorSourcesStatusRequest.add_member(:update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedSourceStatusTypeList, name: "UpdateStatus"))
    DescribeConfigurationAggregatorSourcesStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeConfigurationAggregatorSourcesStatusRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeConfigurationAggregatorSourcesStatusRequest.type = Types::DescribeConfigurationAggregatorSourcesStatusRequest
    DescribeConfigurationAggregatorSourcesStatusResponse.add_member(:aggregated_source_status_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedSourceStatusList, name: "AggregatedSourceStatusList"))
    DescribeConfigurationAggregatorSourcesStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeConfigurationAggregatorSourcesStatusResponse.type = Types::DescribeConfigurationAggregatorSourcesStatusResponse
    DescribeConfigurationAggregatorsRequest.add_member(:configuration_aggregator_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorNameList, name: "ConfigurationAggregatorNames"))
    DescribeConfigurationAggregatorsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeConfigurationAggregatorsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeConfigurationAggregatorsRequest.type = Types::DescribeConfigurationAggregatorsRequest
    DescribeConfigurationAggregatorsResponse.add_member(:configuration_aggregators, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorList, name: "ConfigurationAggregators"))
    DescribeConfigurationAggregatorsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeConfigurationAggregatorsResponse.type = Types::DescribeConfigurationAggregatorsResponse
    DescribeConfigurationRecorderStatusRequest.add_member(:configuration_recorder_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorderNameList, name: "ConfigurationRecorderNames"))
    DescribeConfigurationRecorderStatusRequest.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "ServicePrincipal"))
    DescribeConfigurationRecorderStatusRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "Arn"))
    DescribeConfigurationRecorderStatusRequest.type = Types::DescribeConfigurationRecorderStatusRequest
    DescribeConfigurationRecorderStatusResponse.add_member(:configuration_recorders_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorderStatusList, name: "ConfigurationRecordersStatus"))
    DescribeConfigurationRecorderStatusResponse.type = Types::DescribeConfigurationRecorderStatusResponse
    DescribeConfigurationRecordersRequest.add_member(:configuration_recorder_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorderNameList, name: "ConfigurationRecorderNames"))
    DescribeConfigurationRecordersRequest.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "ServicePrincipal"))
    DescribeConfigurationRecordersRequest.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "Arn"))
    DescribeConfigurationRecordersRequest.type = Types::DescribeConfigurationRecordersRequest
    DescribeConfigurationRecordersResponse.add_member(:configuration_recorders, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorderList, name: "ConfigurationRecorders"))
    DescribeConfigurationRecordersResponse.type = Types::DescribeConfigurationRecordersResponse
    DescribeConformancePackComplianceRequest.add_member(:conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackName, name: "ConformancePackName", traits: {"smithy.api#required" => {}}))
    DescribeConformancePackComplianceRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackComplianceFilters, name: "Filters"))
    DescribeConformancePackComplianceRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeConformancePackComplianceLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeConformancePackComplianceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeConformancePackComplianceRequest.type = Types::DescribeConformancePackComplianceRequest
    DescribeConformancePackComplianceResponse.add_member(:conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackName, name: "ConformancePackName", traits: {"smithy.api#required" => {}}))
    DescribeConformancePackComplianceResponse.add_member(:conformance_pack_rule_compliance_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackRuleComplianceList, name: "ConformancePackRuleComplianceList", traits: {"smithy.api#required" => {}}))
    DescribeConformancePackComplianceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeConformancePackComplianceResponse.type = Types::DescribeConformancePackComplianceResponse
    DescribeConformancePackStatusRequest.add_member(:conformance_pack_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackNamesList, name: "ConformancePackNames"))
    DescribeConformancePackStatusRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSizeLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeConformancePackStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeConformancePackStatusRequest.type = Types::DescribeConformancePackStatusRequest
    DescribeConformancePackStatusResponse.add_member(:conformance_pack_status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackStatusDetailsList, name: "ConformancePackStatusDetails"))
    DescribeConformancePackStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeConformancePackStatusResponse.type = Types::DescribeConformancePackStatusResponse
    DescribeConformancePacksRequest.add_member(:conformance_pack_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackNamesList, name: "ConformancePackNames"))
    DescribeConformancePacksRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSizeLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeConformancePacksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeConformancePacksRequest.type = Types::DescribeConformancePacksRequest
    DescribeConformancePacksResponse.add_member(:conformance_pack_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackDetailList, name: "ConformancePackDetails"))
    DescribeConformancePacksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeConformancePacksResponse.type = Types::DescribeConformancePacksResponse
    DescribeDeliveryChannelStatusRequest.add_member(:delivery_channel_names, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryChannelNameList, name: "DeliveryChannelNames"))
    DescribeDeliveryChannelStatusRequest.type = Types::DescribeDeliveryChannelStatusRequest
    DescribeDeliveryChannelStatusResponse.add_member(:delivery_channels_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryChannelStatusList, name: "DeliveryChannelsStatus"))
    DescribeDeliveryChannelStatusResponse.type = Types::DescribeDeliveryChannelStatusResponse
    DescribeDeliveryChannelsRequest.add_member(:delivery_channel_names, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryChannelNameList, name: "DeliveryChannelNames"))
    DescribeDeliveryChannelsRequest.type = Types::DescribeDeliveryChannelsRequest
    DescribeDeliveryChannelsResponse.add_member(:delivery_channels, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryChannelList, name: "DeliveryChannels"))
    DescribeDeliveryChannelsResponse.type = Types::DescribeDeliveryChannelsResponse
    DescribeOrganizationConfigRuleStatusesRequest.add_member(:organization_config_rule_names, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleNames, name: "OrganizationConfigRuleNames"))
    DescribeOrganizationConfigRuleStatusesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: CosmosPageLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeOrganizationConfigRuleStatusesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeOrganizationConfigRuleStatusesRequest.type = Types::DescribeOrganizationConfigRuleStatusesRequest
    DescribeOrganizationConfigRuleStatusesResponse.add_member(:organization_config_rule_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleStatuses, name: "OrganizationConfigRuleStatuses"))
    DescribeOrganizationConfigRuleStatusesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeOrganizationConfigRuleStatusesResponse.type = Types::DescribeOrganizationConfigRuleStatusesResponse
    DescribeOrganizationConfigRulesRequest.add_member(:organization_config_rule_names, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleNames, name: "OrganizationConfigRuleNames"))
    DescribeOrganizationConfigRulesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: CosmosPageLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeOrganizationConfigRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeOrganizationConfigRulesRequest.type = Types::DescribeOrganizationConfigRulesRequest
    DescribeOrganizationConfigRulesResponse.add_member(:organization_config_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRules, name: "OrganizationConfigRules"))
    DescribeOrganizationConfigRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeOrganizationConfigRulesResponse.type = Types::DescribeOrganizationConfigRulesResponse
    DescribeOrganizationConformancePackStatusesRequest.add_member(:organization_conformance_pack_names, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConformancePackNames, name: "OrganizationConformancePackNames"))
    DescribeOrganizationConformancePackStatusesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: CosmosPageLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeOrganizationConformancePackStatusesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeOrganizationConformancePackStatusesRequest.type = Types::DescribeOrganizationConformancePackStatusesRequest
    DescribeOrganizationConformancePackStatusesResponse.add_member(:organization_conformance_pack_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConformancePackStatuses, name: "OrganizationConformancePackStatuses"))
    DescribeOrganizationConformancePackStatusesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeOrganizationConformancePackStatusesResponse.type = Types::DescribeOrganizationConformancePackStatusesResponse
    DescribeOrganizationConformancePacksRequest.add_member(:organization_conformance_pack_names, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConformancePackNames, name: "OrganizationConformancePackNames"))
    DescribeOrganizationConformancePacksRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: CosmosPageLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeOrganizationConformancePacksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeOrganizationConformancePacksRequest.type = Types::DescribeOrganizationConformancePacksRequest
    DescribeOrganizationConformancePacksResponse.add_member(:organization_conformance_packs, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConformancePacks, name: "OrganizationConformancePacks"))
    DescribeOrganizationConformancePacksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeOrganizationConformancePacksResponse.type = Types::DescribeOrganizationConformancePacksResponse
    DescribePendingAggregationRequestsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribePendingAggregationRequestsLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribePendingAggregationRequestsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribePendingAggregationRequestsRequest.type = Types::DescribePendingAggregationRequestsRequest
    DescribePendingAggregationRequestsResponse.add_member(:pending_aggregation_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingAggregationRequestList, name: "PendingAggregationRequests"))
    DescribePendingAggregationRequestsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribePendingAggregationRequestsResponse.type = Types::DescribePendingAggregationRequestsResponse
    DescribeRemediationConfigurationsRequest.add_member(:config_rule_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleNames, name: "ConfigRuleNames", traits: {"smithy.api#required" => {}}))
    DescribeRemediationConfigurationsRequest.type = Types::DescribeRemediationConfigurationsRequest
    DescribeRemediationConfigurationsResponse.add_member(:remediation_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationConfigurations, name: "RemediationConfigurations"))
    DescribeRemediationConfigurationsResponse.type = Types::DescribeRemediationConfigurationsResponse
    DescribeRemediationExceptionsRequest.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName", traits: {"smithy.api#required" => {}}))
    DescribeRemediationExceptionsRequest.add_member(:resource_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationExceptionResourceKeys, name: "ResourceKeys"))
    DescribeRemediationExceptionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeRemediationExceptionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeRemediationExceptionsRequest.type = Types::DescribeRemediationExceptionsRequest
    DescribeRemediationExceptionsResponse.add_member(:remediation_exceptions, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationExceptions, name: "RemediationExceptions"))
    DescribeRemediationExceptionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeRemediationExceptionsResponse.type = Types::DescribeRemediationExceptionsResponse
    DescribeRemediationExecutionStatusRequest.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName", traits: {"smithy.api#required" => {}}))
    DescribeRemediationExecutionStatusRequest.add_member(:resource_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceKeys, name: "ResourceKeys"))
    DescribeRemediationExecutionStatusRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit", traits: {"smithy.api#default" => 0}))
    DescribeRemediationExecutionStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeRemediationExecutionStatusRequest.type = Types::DescribeRemediationExecutionStatusRequest
    DescribeRemediationExecutionStatusResponse.add_member(:remediation_execution_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationExecutionStatuses, name: "RemediationExecutionStatuses"))
    DescribeRemediationExecutionStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeRemediationExecutionStatusResponse.type = Types::DescribeRemediationExecutionStatusResponse
    DescribeRetentionConfigurationsRequest.add_member(:retention_configuration_names, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionConfigurationNameList, name: "RetentionConfigurationNames"))
    DescribeRetentionConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRetentionConfigurationsRequest.type = Types::DescribeRetentionConfigurationsRequest
    DescribeRetentionConfigurationsResponse.add_member(:retention_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionConfigurationList, name: "RetentionConfigurations"))
    DescribeRetentionConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    DescribeRetentionConfigurationsResponse.type = Types::DescribeRetentionConfigurationsResponse
    DisassociateResourceTypesRequest.add_member(:configuration_recorder_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ConfigurationRecorderArn", traits: {"smithy.api#required" => {}}))
    DisassociateResourceTypesRequest.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeList, name: "ResourceTypes", traits: {"smithy.api#required" => {}}))
    DisassociateResourceTypesRequest.type = Types::DisassociateResourceTypesRequest
    DisassociateResourceTypesResponse.add_member(:configuration_recorder, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorder, name: "ConfigurationRecorder", traits: {"smithy.api#required" => {}}))
    DisassociateResourceTypesResponse.type = Types::DisassociateResourceTypesResponse
    DiscoveredResourceIdentifierList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateResourceIdentifier, name: "member")
    Evaluation.add_member(:compliance_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "ComplianceResourceType", traits: {"smithy.api#required" => {}}))
    Evaluation.add_member(:compliance_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseResourceId, name: "ComplianceResourceId", traits: {"smithy.api#required" => {}}))
    Evaluation.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceType, name: "ComplianceType", traits: {"smithy.api#required" => {}}))
    Evaluation.add_member(:annotation, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "Annotation"))
    Evaluation.add_member(:ordering_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderingTimestamp, name: "OrderingTimestamp", traits: {"smithy.api#required" => {}}))
    Evaluation.type = Types::Evaluation
    EvaluationContext.add_member(:evaluation_context_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationContextIdentifier, name: "EvaluationContextIdentifier"))
    EvaluationContext.type = Types::EvaluationContext
    EvaluationMode.add_member(:detective, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETECTIVE", traits: {"smithy.api#enumValue" => "DETECTIVE"}))
    EvaluationMode.add_member(:proactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROACTIVE", traits: {"smithy.api#enumValue" => "PROACTIVE"}))
    EvaluationModeConfiguration.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationMode, name: "Mode"))
    EvaluationModeConfiguration.type = Types::EvaluationModeConfiguration
    EvaluationModes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationModeConfiguration, name: "member")
    EvaluationResult.add_member(:evaluation_result_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResultIdentifier, name: "EvaluationResultIdentifier"))
    EvaluationResult.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceType, name: "ComplianceType"))
    EvaluationResult.add_member(:result_recorded_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ResultRecordedTime"))
    EvaluationResult.add_member(:config_rule_invoked_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ConfigRuleInvokedTime"))
    EvaluationResult.add_member(:annotation, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "Annotation"))
    EvaluationResult.add_member(:result_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResultToken"))
    EvaluationResult.type = Types::EvaluationResult
    EvaluationResultIdentifier.add_member(:evaluation_result_qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResultQualifier, name: "EvaluationResultQualifier"))
    EvaluationResultIdentifier.add_member(:ordering_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "OrderingTimestamp"))
    EvaluationResultIdentifier.add_member(:resource_evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEvaluationId, name: "ResourceEvaluationId"))
    EvaluationResultIdentifier.type = Types::EvaluationResultIdentifier
    EvaluationResultQualifier.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName"))
    EvaluationResultQualifier.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "ResourceType"))
    EvaluationResultQualifier.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseResourceId, name: "ResourceId"))
    EvaluationResultQualifier.add_member(:evaluation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationMode, name: "EvaluationMode"))
    EvaluationResultQualifier.type = Types::EvaluationResultQualifier
    EvaluationResults.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResult, name: "member")
    EvaluationStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEvaluationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    EvaluationStatus.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit1024, name: "FailureReason"))
    EvaluationStatus.type = Types::EvaluationStatus
    Evaluations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Evaluation, name: "member")
    EventSource.add_member(:aws_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Aws_Config", traits: {"smithy.api#enumValue" => "aws.config"}))
    ExcludedAccounts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member")
    ExclusionByResourceTypes.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeList, name: "resourceTypes"))
    ExclusionByResourceTypes.type = Types::ExclusionByResourceTypes
    ExecutionControls.add_member(:ssm_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmControls, name: "SsmControls"))
    ExecutionControls.type = Types::ExecutionControls
    ExternalEvaluation.add_member(:compliance_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "ComplianceResourceType", traits: {"smithy.api#required" => {}}))
    ExternalEvaluation.add_member(:compliance_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseResourceId, name: "ComplianceResourceId", traits: {"smithy.api#required" => {}}))
    ExternalEvaluation.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceType, name: "ComplianceType", traits: {"smithy.api#required" => {}}))
    ExternalEvaluation.add_member(:annotation, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "Annotation"))
    ExternalEvaluation.add_member(:ordering_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderingTimestamp, name: "OrderingTimestamp", traits: {"smithy.api#required" => {}}))
    ExternalEvaluation.type = Types::ExternalEvaluation
    FailedDeleteRemediationExceptionsBatch.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureMessage"))
    FailedDeleteRemediationExceptionsBatch.add_member(:failed_items, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationExceptionResourceKeys, name: "FailedItems"))
    FailedDeleteRemediationExceptionsBatch.type = Types::FailedDeleteRemediationExceptionsBatch
    FailedDeleteRemediationExceptionsBatches.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedDeleteRemediationExceptionsBatch, name: "member")
    FailedRemediationBatch.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureMessage"))
    FailedRemediationBatch.add_member(:failed_items, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationConfigurations, name: "FailedItems"))
    FailedRemediationBatch.type = Types::FailedRemediationBatch
    FailedRemediationBatches.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedRemediationBatch, name: "member")
    FailedRemediationExceptionBatch.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureMessage"))
    FailedRemediationExceptionBatch.add_member(:failed_items, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationExceptions, name: "FailedItems"))
    FailedRemediationExceptionBatch.type = Types::FailedRemediationExceptionBatch
    FailedRemediationExceptionBatches.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedRemediationExceptionBatch, name: "member")
    FieldInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, name: "Name"))
    FieldInfo.type = Types::FieldInfo
    FieldInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FieldInfo, name: "member")
    GetAggregateComplianceDetailsByConfigRuleRequest.add_member(:configuration_aggregator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorName, name: "ConfigurationAggregatorName", traits: {"smithy.api#required" => {}}))
    GetAggregateComplianceDetailsByConfigRuleRequest.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName", traits: {"smithy.api#required" => {}}))
    GetAggregateComplianceDetailsByConfigRuleRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    GetAggregateComplianceDetailsByConfigRuleRequest.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "AwsRegion", traits: {"smithy.api#required" => {}}))
    GetAggregateComplianceDetailsByConfigRuleRequest.add_member(:compliance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceType, name: "ComplianceType"))
    GetAggregateComplianceDetailsByConfigRuleRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit", traits: {"smithy.api#default" => 0}))
    GetAggregateComplianceDetailsByConfigRuleRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetAggregateComplianceDetailsByConfigRuleRequest.type = Types::GetAggregateComplianceDetailsByConfigRuleRequest
    GetAggregateComplianceDetailsByConfigRuleResponse.add_member(:aggregate_evaluation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateEvaluationResultList, name: "AggregateEvaluationResults"))
    GetAggregateComplianceDetailsByConfigRuleResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetAggregateComplianceDetailsByConfigRuleResponse.type = Types::GetAggregateComplianceDetailsByConfigRuleResponse
    GetAggregateConfigRuleComplianceSummaryRequest.add_member(:configuration_aggregator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorName, name: "ConfigurationAggregatorName", traits: {"smithy.api#required" => {}}))
    GetAggregateConfigRuleComplianceSummaryRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleComplianceSummaryFilters, name: "Filters"))
    GetAggregateConfigRuleComplianceSummaryRequest.add_member(:group_by_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleComplianceSummaryGroupKey, name: "GroupByKey"))
    GetAggregateConfigRuleComplianceSummaryRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupByAPILimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    GetAggregateConfigRuleComplianceSummaryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetAggregateConfigRuleComplianceSummaryRequest.type = Types::GetAggregateConfigRuleComplianceSummaryRequest
    GetAggregateConfigRuleComplianceSummaryResponse.add_member(:group_by_key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "GroupByKey"))
    GetAggregateConfigRuleComplianceSummaryResponse.add_member(:aggregate_compliance_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateComplianceCountList, name: "AggregateComplianceCounts"))
    GetAggregateConfigRuleComplianceSummaryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetAggregateConfigRuleComplianceSummaryResponse.type = Types::GetAggregateConfigRuleComplianceSummaryResponse
    GetAggregateConformancePackComplianceSummaryRequest.add_member(:configuration_aggregator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorName, name: "ConfigurationAggregatorName", traits: {"smithy.api#required" => {}}))
    GetAggregateConformancePackComplianceSummaryRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateConformancePackComplianceSummaryFilters, name: "Filters"))
    GetAggregateConformancePackComplianceSummaryRequest.add_member(:group_by_key, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateConformancePackComplianceSummaryGroupKey, name: "GroupByKey"))
    GetAggregateConformancePackComplianceSummaryRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit", traits: {"smithy.api#default" => 0}))
    GetAggregateConformancePackComplianceSummaryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetAggregateConformancePackComplianceSummaryRequest.type = Types::GetAggregateConformancePackComplianceSummaryRequest
    GetAggregateConformancePackComplianceSummaryResponse.add_member(:aggregate_conformance_pack_compliance_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateConformancePackComplianceSummaryList, name: "AggregateConformancePackComplianceSummaries"))
    GetAggregateConformancePackComplianceSummaryResponse.add_member(:group_by_key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "GroupByKey"))
    GetAggregateConformancePackComplianceSummaryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetAggregateConformancePackComplianceSummaryResponse.type = Types::GetAggregateConformancePackComplianceSummaryResponse
    GetAggregateDiscoveredResourceCountsRequest.add_member(:configuration_aggregator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorName, name: "ConfigurationAggregatorName", traits: {"smithy.api#required" => {}}))
    GetAggregateDiscoveredResourceCountsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCountFilters, name: "Filters"))
    GetAggregateDiscoveredResourceCountsRequest.add_member(:group_by_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCountGroupKey, name: "GroupByKey"))
    GetAggregateDiscoveredResourceCountsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupByAPILimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    GetAggregateDiscoveredResourceCountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetAggregateDiscoveredResourceCountsRequest.type = Types::GetAggregateDiscoveredResourceCountsRequest
    GetAggregateDiscoveredResourceCountsResponse.add_member(:total_discovered_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalDiscoveredResources", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GetAggregateDiscoveredResourceCountsResponse.add_member(:group_by_key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "GroupByKey"))
    GetAggregateDiscoveredResourceCountsResponse.add_member(:grouped_resource_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupedResourceCountList, name: "GroupedResourceCounts"))
    GetAggregateDiscoveredResourceCountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetAggregateDiscoveredResourceCountsResponse.type = Types::GetAggregateDiscoveredResourceCountsResponse
    GetAggregateResourceConfigRequest.add_member(:configuration_aggregator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorName, name: "ConfigurationAggregatorName", traits: {"smithy.api#required" => {}}))
    GetAggregateResourceConfigRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateResourceIdentifier, name: "ResourceIdentifier", traits: {"smithy.api#required" => {}}))
    GetAggregateResourceConfigRequest.type = Types::GetAggregateResourceConfigRequest
    GetAggregateResourceConfigResponse.add_member(:configuration_item, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationItem, name: "ConfigurationItem"))
    GetAggregateResourceConfigResponse.type = Types::GetAggregateResourceConfigResponse
    GetComplianceDetailsByConfigRuleRequest.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit64, name: "ConfigRuleName", traits: {"smithy.api#required" => {}}))
    GetComplianceDetailsByConfigRuleRequest.add_member(:compliance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceTypes, name: "ComplianceTypes"))
    GetComplianceDetailsByConfigRuleRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit", traits: {"smithy.api#default" => 0}))
    GetComplianceDetailsByConfigRuleRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetComplianceDetailsByConfigRuleRequest.type = Types::GetComplianceDetailsByConfigRuleRequest
    GetComplianceDetailsByConfigRuleResponse.add_member(:evaluation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResults, name: "EvaluationResults"))
    GetComplianceDetailsByConfigRuleResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetComplianceDetailsByConfigRuleResponse.type = Types::GetComplianceDetailsByConfigRuleResponse
    GetComplianceDetailsByResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "ResourceType"))
    GetComplianceDetailsByResourceRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseResourceId, name: "ResourceId"))
    GetComplianceDetailsByResourceRequest.add_member(:compliance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceTypes, name: "ComplianceTypes"))
    GetComplianceDetailsByResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetComplianceDetailsByResourceRequest.add_member(:resource_evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEvaluationId, name: "ResourceEvaluationId"))
    GetComplianceDetailsByResourceRequest.type = Types::GetComplianceDetailsByResourceRequest
    GetComplianceDetailsByResourceResponse.add_member(:evaluation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResults, name: "EvaluationResults"))
    GetComplianceDetailsByResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetComplianceDetailsByResourceResponse.type = Types::GetComplianceDetailsByResourceResponse
    GetComplianceSummaryByConfigRuleResponse.add_member(:compliance_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSummary, name: "ComplianceSummary"))
    GetComplianceSummaryByConfigRuleResponse.type = Types::GetComplianceSummaryByConfigRuleResponse
    GetComplianceSummaryByResourceTypeRequest.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, name: "ResourceTypes"))
    GetComplianceSummaryByResourceTypeRequest.type = Types::GetComplianceSummaryByResourceTypeRequest
    GetComplianceSummaryByResourceTypeResponse.add_member(:compliance_summaries_by_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceSummariesByResourceType, name: "ComplianceSummariesByResourceType"))
    GetComplianceSummaryByResourceTypeResponse.type = Types::GetComplianceSummaryByResourceTypeResponse
    GetConformancePackComplianceDetailsRequest.add_member(:conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackName, name: "ConformancePackName", traits: {"smithy.api#required" => {}}))
    GetConformancePackComplianceDetailsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackEvaluationFilters, name: "Filters"))
    GetConformancePackComplianceDetailsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: GetConformancePackComplianceDetailsLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    GetConformancePackComplianceDetailsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetConformancePackComplianceDetailsRequest.type = Types::GetConformancePackComplianceDetailsRequest
    GetConformancePackComplianceDetailsResponse.add_member(:conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackName, name: "ConformancePackName", traits: {"smithy.api#required" => {}}))
    GetConformancePackComplianceDetailsResponse.add_member(:conformance_pack_rule_evaluation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackRuleEvaluationResultsList, name: "ConformancePackRuleEvaluationResults"))
    GetConformancePackComplianceDetailsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetConformancePackComplianceDetailsResponse.type = Types::GetConformancePackComplianceDetailsResponse
    GetConformancePackComplianceSummaryRequest.add_member(:conformance_pack_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackNamesToSummarizeList, name: "ConformancePackNames", traits: {"smithy.api#required" => {}}))
    GetConformancePackComplianceSummaryRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSizeLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    GetConformancePackComplianceSummaryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetConformancePackComplianceSummaryRequest.type = Types::GetConformancePackComplianceSummaryRequest
    GetConformancePackComplianceSummaryResponse.add_member(:conformance_pack_compliance_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackComplianceSummaryList, name: "ConformancePackComplianceSummaryList"))
    GetConformancePackComplianceSummaryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetConformancePackComplianceSummaryResponse.type = Types::GetConformancePackComplianceSummaryResponse
    GetCustomRulePolicyRequest.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName"))
    GetCustomRulePolicyRequest.type = Types::GetCustomRulePolicyRequest
    GetCustomRulePolicyResponse.add_member(:policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyText, name: "PolicyText"))
    GetCustomRulePolicyResponse.type = Types::GetCustomRulePolicyResponse
    GetDiscoveredResourceCountsRequest.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypes, name: "resourceTypes"))
    GetDiscoveredResourceCountsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "limit", traits: {"smithy.api#default" => 0}))
    GetDiscoveredResourceCountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetDiscoveredResourceCountsRequest.type = Types::GetDiscoveredResourceCountsRequest
    GetDiscoveredResourceCountsResponse.add_member(:total_discovered_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "totalDiscoveredResources", traits: {"smithy.api#default" => 0}))
    GetDiscoveredResourceCountsResponse.add_member(:resource_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCounts, name: "resourceCounts"))
    GetDiscoveredResourceCountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetDiscoveredResourceCountsResponse.type = Types::GetDiscoveredResourceCountsResponse
    GetOrganizationConfigRuleDetailedStatusRequest.add_member(:organization_config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleName, name: "OrganizationConfigRuleName", traits: {"smithy.api#required" => {}}))
    GetOrganizationConfigRuleDetailedStatusRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusDetailFilters, name: "Filters"))
    GetOrganizationConfigRuleDetailedStatusRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: CosmosPageLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    GetOrganizationConfigRuleDetailedStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetOrganizationConfigRuleDetailedStatusRequest.type = Types::GetOrganizationConfigRuleDetailedStatusRequest
    GetOrganizationConfigRuleDetailedStatusResponse.add_member(:organization_config_rule_detailed_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleDetailedStatus, name: "OrganizationConfigRuleDetailedStatus"))
    GetOrganizationConfigRuleDetailedStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetOrganizationConfigRuleDetailedStatusResponse.type = Types::GetOrganizationConfigRuleDetailedStatusResponse
    GetOrganizationConformancePackDetailedStatusRequest.add_member(:organization_conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConformancePackName, name: "OrganizationConformancePackName", traits: {"smithy.api#required" => {}}))
    GetOrganizationConformancePackDetailedStatusRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationResourceDetailedStatusFilters, name: "Filters"))
    GetOrganizationConformancePackDetailedStatusRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: CosmosPageLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    GetOrganizationConformancePackDetailedStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetOrganizationConformancePackDetailedStatusRequest.type = Types::GetOrganizationConformancePackDetailedStatusRequest
    GetOrganizationConformancePackDetailedStatusResponse.add_member(:organization_conformance_pack_detailed_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConformancePackDetailedStatuses, name: "OrganizationConformancePackDetailedStatuses"))
    GetOrganizationConformancePackDetailedStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    GetOrganizationConformancePackDetailedStatusResponse.type = Types::GetOrganizationConformancePackDetailedStatusResponse
    GetOrganizationCustomRulePolicyRequest.add_member(:organization_config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleName, name: "OrganizationConfigRuleName", traits: {"smithy.api#required" => {}}))
    GetOrganizationCustomRulePolicyRequest.type = Types::GetOrganizationCustomRulePolicyRequest
    GetOrganizationCustomRulePolicyResponse.add_member(:policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyText, name: "PolicyText"))
    GetOrganizationCustomRulePolicyResponse.type = Types::GetOrganizationCustomRulePolicyResponse
    GetResourceConfigHistoryRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    GetResourceConfigHistoryRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    GetResourceConfigHistoryRequest.add_member(:later_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LaterTime, name: "laterTime"))
    GetResourceConfigHistoryRequest.add_member(:earlier_time, ::Smithy::Schema::Shapes::MemberShape.new(target: EarlierTime, name: "earlierTime"))
    GetResourceConfigHistoryRequest.add_member(:chronological_order, ::Smithy::Schema::Shapes::MemberShape.new(target: ChronologicalOrder, name: "chronologicalOrder"))
    GetResourceConfigHistoryRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "limit", traits: {"smithy.api#default" => 0}))
    GetResourceConfigHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetResourceConfigHistoryRequest.type = Types::GetResourceConfigHistoryRequest
    GetResourceConfigHistoryResponse.add_member(:configuration_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationItemList, name: "configurationItems"))
    GetResourceConfigHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetResourceConfigHistoryResponse.type = Types::GetResourceConfigHistoryResponse
    GetResourceEvaluationSummaryRequest.add_member(:resource_evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEvaluationId, name: "ResourceEvaluationId", traits: {"smithy.api#required" => {}}))
    GetResourceEvaluationSummaryRequest.type = Types::GetResourceEvaluationSummaryRequest
    GetResourceEvaluationSummaryResponse.add_member(:resource_evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEvaluationId, name: "ResourceEvaluationId"))
    GetResourceEvaluationSummaryResponse.add_member(:evaluation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationMode, name: "EvaluationMode"))
    GetResourceEvaluationSummaryResponse.add_member(:evaluation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationStatus, name: "EvaluationStatus"))
    GetResourceEvaluationSummaryResponse.add_member(:evaluation_start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EvaluationStartTimestamp"))
    GetResourceEvaluationSummaryResponse.add_member(:compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceType, name: "Compliance"))
    GetResourceEvaluationSummaryResponse.add_member(:evaluation_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationContext, name: "EvaluationContext"))
    GetResourceEvaluationSummaryResponse.add_member(:resource_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetails, name: "ResourceDetails"))
    GetResourceEvaluationSummaryResponse.type = Types::GetResourceEvaluationSummaryResponse
    GetStoredQueryRequest.add_member(:query_name, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryName, name: "QueryName", traits: {"smithy.api#required" => {}}))
    GetStoredQueryRequest.type = Types::GetStoredQueryRequest
    GetStoredQueryResponse.add_member(:stored_query, ::Smithy::Schema::Shapes::MemberShape.new(target: StoredQuery, name: "StoredQuery"))
    GetStoredQueryResponse.type = Types::GetStoredQueryResponse
    GroupedResourceCount.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "GroupName", traits: {"smithy.api#required" => {}}))
    GroupedResourceCount.add_member(:resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ResourceCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GroupedResourceCount.type = Types::GroupedResourceCount
    GroupedResourceCountList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupedResourceCount, name: "member")
    IdempotentParameterMismatch.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    IdempotentParameterMismatch.type = Types::IdempotentParameterMismatch
    InsufficientDeliveryPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InsufficientDeliveryPolicyException.type = Types::InsufficientDeliveryPolicyException
    InsufficientPermissionsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InsufficientPermissionsException.type = Types::InsufficientPermissionsException
    InvalidConfigurationRecorderNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidConfigurationRecorderNameException.type = Types::InvalidConfigurationRecorderNameException
    InvalidDeliveryChannelNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidDeliveryChannelNameException.type = Types::InvalidDeliveryChannelNameException
    InvalidExpressionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidExpressionException.type = Types::InvalidExpressionException
    InvalidLimitException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidLimitException.type = Types::InvalidLimitException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidRecordingGroupException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidRecordingGroupException.type = Types::InvalidRecordingGroupException
    InvalidResultTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidResultTokenException.type = Types::InvalidResultTokenException
    InvalidRoleException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidRoleException.type = Types::InvalidRoleException
    InvalidS3KeyPrefixException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidS3KeyPrefixException.type = Types::InvalidS3KeyPrefixException
    InvalidS3KmsKeyArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidS3KmsKeyArnException.type = Types::InvalidS3KmsKeyArnException
    InvalidSNSTopicARNException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidSNSTopicARNException.type = Types::InvalidSNSTopicARNException
    InvalidTimeRangeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidTimeRangeException.type = Types::InvalidTimeRangeException
    LastDeliveryChannelDeleteFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LastDeliveryChannelDeleteFailedException.type = Types::LastDeliveryChannelDeleteFailedException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAggregateDiscoveredResourcesRequest.add_member(:configuration_aggregator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorName, name: "ConfigurationAggregatorName", traits: {"smithy.api#required" => {}}))
    ListAggregateDiscoveredResourcesRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ListAggregateDiscoveredResourcesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceFilters, name: "Filters"))
    ListAggregateDiscoveredResourcesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListAggregateDiscoveredResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAggregateDiscoveredResourcesRequest.type = Types::ListAggregateDiscoveredResourcesRequest
    ListAggregateDiscoveredResourcesResponse.add_member(:resource_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveredResourceIdentifierList, name: "ResourceIdentifiers"))
    ListAggregateDiscoveredResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListAggregateDiscoveredResourcesResponse.type = Types::ListAggregateDiscoveredResourcesResponse
    ListConfigurationRecordersRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorderFilterList, name: "Filters"))
    ListConfigurationRecordersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListConfigurationRecordersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConfigurationRecordersRequest.type = Types::ListConfigurationRecordersRequest
    ListConfigurationRecordersResponse.add_member(:configuration_recorder_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorderSummaries, name: "ConfigurationRecorderSummaries", traits: {"smithy.api#required" => {}}))
    ListConfigurationRecordersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConfigurationRecordersResponse.type = Types::ListConfigurationRecordersResponse
    ListConformancePackComplianceScoresRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackComplianceScoresFilters, name: "Filters"))
    ListConformancePackComplianceScoresRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    ListConformancePackComplianceScoresRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SortBy, name: "SortBy"))
    ListConformancePackComplianceScoresRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSizeLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListConformancePackComplianceScoresRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConformancePackComplianceScoresRequest.type = Types::ListConformancePackComplianceScoresRequest
    ListConformancePackComplianceScoresResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConformancePackComplianceScoresResponse.add_member(:conformance_pack_compliance_scores, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackComplianceScores, name: "ConformancePackComplianceScores", traits: {"smithy.api#required" => {}}))
    ListConformancePackComplianceScoresResponse.type = Types::ListConformancePackComplianceScoresResponse
    ListDiscoveredResourcesRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ListDiscoveredResourcesRequest.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdList, name: "resourceIds"))
    ListDiscoveredResourcesRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName"))
    ListDiscoveredResourcesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "limit", traits: {"smithy.api#default" => 0}))
    ListDiscoveredResourcesRequest.add_member(:include_deleted_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "includeDeletedResources", traits: {"smithy.api#default" => false}))
    ListDiscoveredResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDiscoveredResourcesRequest.type = Types::ListDiscoveredResourcesRequest
    ListDiscoveredResourcesResponse.add_member(:resource_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifierList, name: "resourceIdentifiers"))
    ListDiscoveredResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDiscoveredResourcesResponse.type = Types::ListDiscoveredResourcesResponse
    ListResourceEvaluationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEvaluationFilters, name: "Filters"))
    ListResourceEvaluationsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListResourceEvaluationsPageItemLimit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListResourceEvaluationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListResourceEvaluationsRequest.type = Types::ListResourceEvaluationsRequest
    ListResourceEvaluationsResponse.add_member(:resource_evaluations, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEvaluations, name: "ResourceEvaluations"))
    ListResourceEvaluationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListResourceEvaluationsResponse.type = Types::ListResourceEvaluationsResponse
    ListStoredQueriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListStoredQueriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    ListStoredQueriesRequest.type = Types::ListStoredQueriesRequest
    ListStoredQueriesResponse.add_member(:stored_query_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: StoredQueryMetadataList, name: "StoredQueryMetadata"))
    ListStoredQueriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListStoredQueriesResponse.type = Types::ListStoredQueriesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit", traits: {"smithy.api#default" => 0}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MaxActiveResourcesExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MaxActiveResourcesExceededException.type = Types::MaxActiveResourcesExceededException
    MaxNumberOfConfigRulesExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MaxNumberOfConfigRulesExceededException.type = Types::MaxNumberOfConfigRulesExceededException
    MaxNumberOfConfigurationRecordersExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MaxNumberOfConfigurationRecordersExceededException.type = Types::MaxNumberOfConfigurationRecordersExceededException
    MaxNumberOfConformancePacksExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MaxNumberOfConformancePacksExceededException.type = Types::MaxNumberOfConformancePacksExceededException
    MaxNumberOfDeliveryChannelsExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MaxNumberOfDeliveryChannelsExceededException.type = Types::MaxNumberOfDeliveryChannelsExceededException
    MaxNumberOfOrganizationConfigRulesExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MaxNumberOfOrganizationConfigRulesExceededException.type = Types::MaxNumberOfOrganizationConfigRulesExceededException
    MaxNumberOfOrganizationConformancePacksExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MaxNumberOfOrganizationConformancePacksExceededException.type = Types::MaxNumberOfOrganizationConformancePacksExceededException
    MaxNumberOfRetentionConfigurationsExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MaxNumberOfRetentionConfigurationsExceededException.type = Types::MaxNumberOfRetentionConfigurationsExceededException
    MaximumExecutionFrequency.add_member(:one_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "One_Hour", traits: {"smithy.api#enumValue" => "One_Hour"}))
    MaximumExecutionFrequency.add_member(:three_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Three_Hours", traits: {"smithy.api#enumValue" => "Three_Hours"}))
    MaximumExecutionFrequency.add_member(:six_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Six_Hours", traits: {"smithy.api#enumValue" => "Six_Hours"}))
    MaximumExecutionFrequency.add_member(:twelve_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Twelve_Hours", traits: {"smithy.api#enumValue" => "Twelve_Hours"}))
    MaximumExecutionFrequency.add_member(:twenty_four_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TwentyFour_Hours", traits: {"smithy.api#enumValue" => "TwentyFour_Hours"}))
    MemberAccountRuleStatus.add_member(:create_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_SUCCESSFUL", traits: {"smithy.api#enumValue" => "CREATE_SUCCESSFUL"}))
    MemberAccountRuleStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    MemberAccountRuleStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    MemberAccountRuleStatus.add_member(:delete_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_SUCCESSFUL", traits: {"smithy.api#enumValue" => "DELETE_SUCCESSFUL"}))
    MemberAccountRuleStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    MemberAccountRuleStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    MemberAccountRuleStatus.add_member(:update_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_SUCCESSFUL", traits: {"smithy.api#enumValue" => "UPDATE_SUCCESSFUL"}))
    MemberAccountRuleStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    MemberAccountRuleStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    MemberAccountStatus.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    MemberAccountStatus.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit64, name: "ConfigRuleName", traits: {"smithy.api#required" => {}}))
    MemberAccountStatus.add_member(:member_account_rule_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAccountRuleStatus, name: "MemberAccountRuleStatus", traits: {"smithy.api#required" => {}}))
    MemberAccountStatus.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    MemberAccountStatus.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    MemberAccountStatus.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdateTime"))
    MemberAccountStatus.type = Types::MemberAccountStatus
    MessageType.add_member(:configuration_item_change_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConfigurationItemChangeNotification", traits: {"smithy.api#enumValue" => "ConfigurationItemChangeNotification"}))
    MessageType.add_member(:configuration_snapshot_delivery_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConfigurationSnapshotDeliveryCompleted", traits: {"smithy.api#enumValue" => "ConfigurationSnapshotDeliveryCompleted"}))
    MessageType.add_member(:scheduled_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ScheduledNotification", traits: {"smithy.api#enumValue" => "ScheduledNotification"}))
    MessageType.add_member(:oversized_configuration_item_change_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OversizedConfigurationItemChangeNotification", traits: {"smithy.api#enumValue" => "OversizedConfigurationItemChangeNotification"}))
    NoAvailableConfigurationRecorderException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoAvailableConfigurationRecorderException.type = Types::NoAvailableConfigurationRecorderException
    NoAvailableDeliveryChannelException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoAvailableDeliveryChannelException.type = Types::NoAvailableDeliveryChannelException
    NoAvailableOrganizationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoAvailableOrganizationException.type = Types::NoAvailableOrganizationException
    NoRunningConfigurationRecorderException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoRunningConfigurationRecorderException.type = Types::NoRunningConfigurationRecorderException
    NoSuchBucketException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoSuchBucketException.type = Types::NoSuchBucketException
    NoSuchConfigRuleException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoSuchConfigRuleException.type = Types::NoSuchConfigRuleException
    NoSuchConfigRuleInConformancePackException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoSuchConfigRuleInConformancePackException.type = Types::NoSuchConfigRuleInConformancePackException
    NoSuchConfigurationAggregatorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoSuchConfigurationAggregatorException.type = Types::NoSuchConfigurationAggregatorException
    NoSuchConfigurationRecorderException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoSuchConfigurationRecorderException.type = Types::NoSuchConfigurationRecorderException
    NoSuchConformancePackException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoSuchConformancePackException.type = Types::NoSuchConformancePackException
    NoSuchDeliveryChannelException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoSuchDeliveryChannelException.type = Types::NoSuchDeliveryChannelException
    NoSuchOrganizationConfigRuleException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoSuchOrganizationConfigRuleException.type = Types::NoSuchOrganizationConfigRuleException
    NoSuchOrganizationConformancePackException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoSuchOrganizationConformancePackException.type = Types::NoSuchOrganizationConformancePackException
    NoSuchRemediationConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoSuchRemediationConfigurationException.type = Types::NoSuchRemediationConfigurationException
    NoSuchRemediationExceptionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoSuchRemediationExceptionException.type = Types::NoSuchRemediationExceptionException
    NoSuchRetentionConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NoSuchRetentionConfigurationException.type = Types::NoSuchRetentionConfigurationException
    OrganizationAccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    OrganizationAccessDeniedException.type = Types::OrganizationAccessDeniedException
    OrganizationAggregationSource.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    OrganizationAggregationSource.add_member(:aws_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatorRegionList, name: "AwsRegions"))
    OrganizationAggregationSource.add_member(:all_aws_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllAwsRegions", traits: {"smithy.api#default" => false}))
    OrganizationAggregationSource.type = Types::OrganizationAggregationSource
    OrganizationAllFeaturesNotEnabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    OrganizationAllFeaturesNotEnabledException.type = Types::OrganizationAllFeaturesNotEnabledException
    OrganizationConfigRule.add_member(:organization_config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleName, name: "OrganizationConfigRuleName", traits: {"smithy.api#required" => {}}))
    OrganizationConfigRule.add_member(:organization_config_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "OrganizationConfigRuleArn", traits: {"smithy.api#required" => {}}))
    OrganizationConfigRule.add_member(:organization_managed_rule_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationManagedRuleMetadata, name: "OrganizationManagedRuleMetadata"))
    OrganizationConfigRule.add_member(:organization_custom_rule_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationCustomRuleMetadata, name: "OrganizationCustomRuleMetadata"))
    OrganizationConfigRule.add_member(:excluded_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedAccounts, name: "ExcludedAccounts"))
    OrganizationConfigRule.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdateTime"))
    OrganizationConfigRule.add_member(:organization_custom_policy_rule_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationCustomPolicyRuleMetadataNoPolicy, name: "OrganizationCustomPolicyRuleMetadata"))
    OrganizationConfigRule.type = Types::OrganizationConfigRule
    OrganizationConfigRuleDetailedStatus.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAccountStatus, name: "member")
    OrganizationConfigRuleNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit64, name: "member")
    OrganizationConfigRuleStatus.add_member(:organization_config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleName, name: "OrganizationConfigRuleName", traits: {"smithy.api#required" => {}}))
    OrganizationConfigRuleStatus.add_member(:organization_rule_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRuleStatus, name: "OrganizationRuleStatus", traits: {"smithy.api#required" => {}}))
    OrganizationConfigRuleStatus.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    OrganizationConfigRuleStatus.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    OrganizationConfigRuleStatus.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdateTime"))
    OrganizationConfigRuleStatus.type = Types::OrganizationConfigRuleStatus
    OrganizationConfigRuleStatuses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleStatus, name: "member")
    OrganizationConfigRuleTriggerType.add_member(:configuration_item_change_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION_ITEM_CHANGE_NOTIFICATION", traits: {"smithy.api#enumValue" => "ConfigurationItemChangeNotification"}))
    OrganizationConfigRuleTriggerType.add_member(:oversized_configuration_item_change_notifcation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERSIZED_CONFIGURATION_ITEM_CHANGE_NOTIFCATION", traits: {"smithy.api#enumValue" => "OversizedConfigurationItemChangeNotification"}))
    OrganizationConfigRuleTriggerType.add_member(:scheduled_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED_NOTIFICATION", traits: {"smithy.api#enumValue" => "ScheduledNotification"}))
    OrganizationConfigRuleTriggerTypeNoSN.add_member(:configuration_item_change_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION_ITEM_CHANGE_NOTIFICATION", traits: {"smithy.api#enumValue" => "ConfigurationItemChangeNotification"}))
    OrganizationConfigRuleTriggerTypeNoSN.add_member(:oversized_configuration_item_change_notifcation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERSIZED_CONFIGURATION_ITEM_CHANGE_NOTIFCATION", traits: {"smithy.api#enumValue" => "OversizedConfigurationItemChangeNotification"}))
    OrganizationConfigRuleTriggerTypeNoSNs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleTriggerTypeNoSN, name: "member")
    OrganizationConfigRuleTriggerTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleTriggerType, name: "member")
    OrganizationConfigRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRule, name: "member")
    OrganizationConformancePack.add_member(:organization_conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConformancePackName, name: "OrganizationConformancePackName", traits: {"smithy.api#required" => {}}))
    OrganizationConformancePack.add_member(:organization_conformance_pack_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "OrganizationConformancePackArn", traits: {"smithy.api#required" => {}}))
    OrganizationConformancePack.add_member(:delivery_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryS3Bucket, name: "DeliveryS3Bucket"))
    OrganizationConformancePack.add_member(:delivery_s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryS3KeyPrefix, name: "DeliveryS3KeyPrefix"))
    OrganizationConformancePack.add_member(:conformance_pack_input_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackInputParameters, name: "ConformancePackInputParameters"))
    OrganizationConformancePack.add_member(:excluded_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedAccounts, name: "ExcludedAccounts"))
    OrganizationConformancePack.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdateTime", traits: {"smithy.api#required" => {}}))
    OrganizationConformancePack.type = Types::OrganizationConformancePack
    OrganizationConformancePackDetailedStatus.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    OrganizationConformancePackDetailedStatus.add_member(:conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "ConformancePackName", traits: {"smithy.api#required" => {}}))
    OrganizationConformancePackDetailedStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationResourceDetailedStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    OrganizationConformancePackDetailedStatus.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    OrganizationConformancePackDetailedStatus.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    OrganizationConformancePackDetailedStatus.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdateTime"))
    OrganizationConformancePackDetailedStatus.type = Types::OrganizationConformancePackDetailedStatus
    OrganizationConformancePackDetailedStatuses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConformancePackDetailedStatus, name: "member")
    OrganizationConformancePackNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConformancePackName, name: "member")
    OrganizationConformancePackStatus.add_member(:organization_conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConformancePackName, name: "OrganizationConformancePackName", traits: {"smithy.api#required" => {}}))
    OrganizationConformancePackStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationResourceStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    OrganizationConformancePackStatus.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    OrganizationConformancePackStatus.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    OrganizationConformancePackStatus.add_member(:last_update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdateTime"))
    OrganizationConformancePackStatus.type = Types::OrganizationConformancePackStatus
    OrganizationConformancePackStatuses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConformancePackStatus, name: "member")
    OrganizationConformancePackTemplateValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    OrganizationConformancePackTemplateValidationException.type = Types::OrganizationConformancePackTemplateValidationException
    OrganizationConformancePacks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConformancePack, name: "member")
    OrganizationCustomPolicyRuleMetadata.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256Min0, name: "Description"))
    OrganizationCustomPolicyRuleMetadata.add_member(:organization_config_rule_trigger_types, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleTriggerTypeNoSNs, name: "OrganizationConfigRuleTriggerTypes"))
    OrganizationCustomPolicyRuleMetadata.add_member(:input_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit2048, name: "InputParameters"))
    OrganizationCustomPolicyRuleMetadata.add_member(:maximum_execution_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumExecutionFrequency, name: "MaximumExecutionFrequency"))
    OrganizationCustomPolicyRuleMetadata.add_member(:resource_types_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypesScope, name: "ResourceTypesScope"))
    OrganizationCustomPolicyRuleMetadata.add_member(:resource_id_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit768, name: "ResourceIdScope"))
    OrganizationCustomPolicyRuleMetadata.add_member(:tag_key_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit128, name: "TagKeyScope"))
    OrganizationCustomPolicyRuleMetadata.add_member(:tag_value_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "TagValueScope"))
    OrganizationCustomPolicyRuleMetadata.add_member(:policy_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRuntime, name: "PolicyRuntime", traits: {"smithy.api#required" => {}}))
    OrganizationCustomPolicyRuleMetadata.add_member(:policy_text, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyText, name: "PolicyText", traits: {"smithy.api#required" => {}}))
    OrganizationCustomPolicyRuleMetadata.add_member(:debug_log_delivery_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: DebugLogDeliveryAccounts, name: "DebugLogDeliveryAccounts"))
    OrganizationCustomPolicyRuleMetadata.type = Types::OrganizationCustomPolicyRuleMetadata
    OrganizationCustomPolicyRuleMetadataNoPolicy.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256Min0, name: "Description"))
    OrganizationCustomPolicyRuleMetadataNoPolicy.add_member(:organization_config_rule_trigger_types, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleTriggerTypeNoSNs, name: "OrganizationConfigRuleTriggerTypes"))
    OrganizationCustomPolicyRuleMetadataNoPolicy.add_member(:input_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit2048, name: "InputParameters"))
    OrganizationCustomPolicyRuleMetadataNoPolicy.add_member(:maximum_execution_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumExecutionFrequency, name: "MaximumExecutionFrequency"))
    OrganizationCustomPolicyRuleMetadataNoPolicy.add_member(:resource_types_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypesScope, name: "ResourceTypesScope"))
    OrganizationCustomPolicyRuleMetadataNoPolicy.add_member(:resource_id_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit768, name: "ResourceIdScope"))
    OrganizationCustomPolicyRuleMetadataNoPolicy.add_member(:tag_key_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit128, name: "TagKeyScope"))
    OrganizationCustomPolicyRuleMetadataNoPolicy.add_member(:tag_value_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "TagValueScope"))
    OrganizationCustomPolicyRuleMetadataNoPolicy.add_member(:policy_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRuntime, name: "PolicyRuntime"))
    OrganizationCustomPolicyRuleMetadataNoPolicy.add_member(:debug_log_delivery_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: DebugLogDeliveryAccounts, name: "DebugLogDeliveryAccounts"))
    OrganizationCustomPolicyRuleMetadataNoPolicy.type = Types::OrganizationCustomPolicyRuleMetadataNoPolicy
    OrganizationCustomRuleMetadata.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256Min0, name: "Description"))
    OrganizationCustomRuleMetadata.add_member(:lambda_function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "LambdaFunctionArn", traits: {"smithy.api#required" => {}}))
    OrganizationCustomRuleMetadata.add_member(:organization_config_rule_trigger_types, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleTriggerTypes, name: "OrganizationConfigRuleTriggerTypes", traits: {"smithy.api#required" => {}}))
    OrganizationCustomRuleMetadata.add_member(:input_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit2048, name: "InputParameters"))
    OrganizationCustomRuleMetadata.add_member(:maximum_execution_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumExecutionFrequency, name: "MaximumExecutionFrequency"))
    OrganizationCustomRuleMetadata.add_member(:resource_types_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypesScope, name: "ResourceTypesScope"))
    OrganizationCustomRuleMetadata.add_member(:resource_id_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit768, name: "ResourceIdScope"))
    OrganizationCustomRuleMetadata.add_member(:tag_key_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit128, name: "TagKeyScope"))
    OrganizationCustomRuleMetadata.add_member(:tag_value_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "TagValueScope"))
    OrganizationCustomRuleMetadata.type = Types::OrganizationCustomRuleMetadata
    OrganizationManagedRuleMetadata.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256Min0, name: "Description"))
    OrganizationManagedRuleMetadata.add_member(:rule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "RuleIdentifier", traits: {"smithy.api#required" => {}}))
    OrganizationManagedRuleMetadata.add_member(:input_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit2048, name: "InputParameters"))
    OrganizationManagedRuleMetadata.add_member(:maximum_execution_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumExecutionFrequency, name: "MaximumExecutionFrequency"))
    OrganizationManagedRuleMetadata.add_member(:resource_types_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypesScope, name: "ResourceTypesScope"))
    OrganizationManagedRuleMetadata.add_member(:resource_id_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit768, name: "ResourceIdScope"))
    OrganizationManagedRuleMetadata.add_member(:tag_key_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit128, name: "TagKeyScope"))
    OrganizationManagedRuleMetadata.add_member(:tag_value_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "TagValueScope"))
    OrganizationManagedRuleMetadata.type = Types::OrganizationManagedRuleMetadata
    OrganizationResourceDetailedStatus.add_member(:create_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_SUCCESSFUL", traits: {"smithy.api#enumValue" => "CREATE_SUCCESSFUL"}))
    OrganizationResourceDetailedStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    OrganizationResourceDetailedStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    OrganizationResourceDetailedStatus.add_member(:delete_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_SUCCESSFUL", traits: {"smithy.api#enumValue" => "DELETE_SUCCESSFUL"}))
    OrganizationResourceDetailedStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    OrganizationResourceDetailedStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    OrganizationResourceDetailedStatus.add_member(:update_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_SUCCESSFUL", traits: {"smithy.api#enumValue" => "UPDATE_SUCCESSFUL"}))
    OrganizationResourceDetailedStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    OrganizationResourceDetailedStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    OrganizationResourceDetailedStatusFilters.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    OrganizationResourceDetailedStatusFilters.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationResourceDetailedStatus, name: "Status"))
    OrganizationResourceDetailedStatusFilters.type = Types::OrganizationResourceDetailedStatusFilters
    OrganizationResourceStatus.add_member(:create_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_SUCCESSFUL", traits: {"smithy.api#enumValue" => "CREATE_SUCCESSFUL"}))
    OrganizationResourceStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    OrganizationResourceStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    OrganizationResourceStatus.add_member(:delete_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_SUCCESSFUL", traits: {"smithy.api#enumValue" => "DELETE_SUCCESSFUL"}))
    OrganizationResourceStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    OrganizationResourceStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    OrganizationResourceStatus.add_member(:update_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_SUCCESSFUL", traits: {"smithy.api#enumValue" => "UPDATE_SUCCESSFUL"}))
    OrganizationResourceStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    OrganizationResourceStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    OrganizationRuleStatus.add_member(:create_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_SUCCESSFUL", traits: {"smithy.api#enumValue" => "CREATE_SUCCESSFUL"}))
    OrganizationRuleStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    OrganizationRuleStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    OrganizationRuleStatus.add_member(:delete_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_SUCCESSFUL", traits: {"smithy.api#enumValue" => "DELETE_SUCCESSFUL"}))
    OrganizationRuleStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    OrganizationRuleStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    OrganizationRuleStatus.add_member(:update_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_SUCCESSFUL", traits: {"smithy.api#enumValue" => "UPDATE_SUCCESSFUL"}))
    OrganizationRuleStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    OrganizationRuleStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    OversizedConfigurationItemException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    OversizedConfigurationItemException.type = Types::OversizedConfigurationItemException
    Owner.add_member(:custom_lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Custom_Lambda", traits: {"smithy.api#enumValue" => "CUSTOM_LAMBDA"}))
    Owner.add_member(:aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Aws", traits: {"smithy.api#enumValue" => "AWS"}))
    Owner.add_member(:custom_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Custom_Policy", traits: {"smithy.api#enumValue" => "CUSTOM_POLICY"}))
    PendingAggregationRequest.add_member(:requester_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "RequesterAccountId"))
    PendingAggregationRequest.add_member(:requester_aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "RequesterAwsRegion"))
    PendingAggregationRequest.type = Types::PendingAggregationRequest
    PendingAggregationRequestList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PendingAggregationRequest, name: "member")
    PutAggregationAuthorizationRequest.add_member(:authorized_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AuthorizedAccountId", traits: {"smithy.api#required" => {}}))
    PutAggregationAuthorizationRequest.add_member(:authorized_aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "AuthorizedAwsRegion", traits: {"smithy.api#required" => {}}))
    PutAggregationAuthorizationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, name: "Tags"))
    PutAggregationAuthorizationRequest.type = Types::PutAggregationAuthorizationRequest
    PutAggregationAuthorizationResponse.add_member(:aggregation_authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationAuthorization, name: "AggregationAuthorization"))
    PutAggregationAuthorizationResponse.type = Types::PutAggregationAuthorizationResponse
    PutConfigRuleRequest.add_member(:config_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRule, name: "ConfigRule", traits: {"smithy.api#required" => {}}))
    PutConfigRuleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, name: "Tags"))
    PutConfigRuleRequest.type = Types::PutConfigRuleRequest
    PutConfigurationAggregatorRequest.add_member(:configuration_aggregator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorName, name: "ConfigurationAggregatorName", traits: {"smithy.api#required" => {}}))
    PutConfigurationAggregatorRequest.add_member(:account_aggregation_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAggregationSourceList, name: "AccountAggregationSources"))
    PutConfigurationAggregatorRequest.add_member(:organization_aggregation_source, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationAggregationSource, name: "OrganizationAggregationSource"))
    PutConfigurationAggregatorRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, name: "Tags"))
    PutConfigurationAggregatorRequest.add_member(:aggregator_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatorFilters, name: "AggregatorFilters"))
    PutConfigurationAggregatorRequest.type = Types::PutConfigurationAggregatorRequest
    PutConfigurationAggregatorResponse.add_member(:configuration_aggregator, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregator, name: "ConfigurationAggregator"))
    PutConfigurationAggregatorResponse.type = Types::PutConfigurationAggregatorResponse
    PutConfigurationRecorderRequest.add_member(:configuration_recorder, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationRecorder, name: "ConfigurationRecorder", traits: {"smithy.api#required" => {}}))
    PutConfigurationRecorderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, name: "Tags"))
    PutConfigurationRecorderRequest.type = Types::PutConfigurationRecorderRequest
    PutConformancePackRequest.add_member(:conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackName, name: "ConformancePackName", traits: {"smithy.api#required" => {}}))
    PutConformancePackRequest.add_member(:template_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateS3Uri, name: "TemplateS3Uri"))
    PutConformancePackRequest.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateBody, name: "TemplateBody"))
    PutConformancePackRequest.add_member(:delivery_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryS3Bucket, name: "DeliveryS3Bucket"))
    PutConformancePackRequest.add_member(:delivery_s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryS3KeyPrefix, name: "DeliveryS3KeyPrefix"))
    PutConformancePackRequest.add_member(:conformance_pack_input_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackInputParameters, name: "ConformancePackInputParameters"))
    PutConformancePackRequest.add_member(:template_ssm_document_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSSMDocumentDetails, name: "TemplateSSMDocumentDetails"))
    PutConformancePackRequest.type = Types::PutConformancePackRequest
    PutConformancePackResponse.add_member(:conformance_pack_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackArn, name: "ConformancePackArn"))
    PutConformancePackResponse.type = Types::PutConformancePackResponse
    PutDeliveryChannelRequest.add_member(:delivery_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryChannel, name: "DeliveryChannel", traits: {"smithy.api#required" => {}}))
    PutDeliveryChannelRequest.type = Types::PutDeliveryChannelRequest
    PutEvaluationsRequest.add_member(:evaluations, ::Smithy::Schema::Shapes::MemberShape.new(target: Evaluations, name: "Evaluations"))
    PutEvaluationsRequest.add_member(:result_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResultToken", traits: {"smithy.api#required" => {}}))
    PutEvaluationsRequest.add_member(:test_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "TestMode", traits: {"smithy.api#default" => false}))
    PutEvaluationsRequest.type = Types::PutEvaluationsRequest
    PutEvaluationsResponse.add_member(:failed_evaluations, ::Smithy::Schema::Shapes::MemberShape.new(target: Evaluations, name: "FailedEvaluations"))
    PutEvaluationsResponse.type = Types::PutEvaluationsResponse
    PutExternalEvaluationRequest.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName", traits: {"smithy.api#required" => {}}))
    PutExternalEvaluationRequest.add_member(:external_evaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalEvaluation, name: "ExternalEvaluation", traits: {"smithy.api#required" => {}}))
    PutExternalEvaluationRequest.type = Types::PutExternalEvaluationRequest
    PutExternalEvaluationResponse.type = Types::PutExternalEvaluationResponse
    PutOrganizationConfigRuleRequest.add_member(:organization_config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConfigRuleName, name: "OrganizationConfigRuleName", traits: {"smithy.api#required" => {}}))
    PutOrganizationConfigRuleRequest.add_member(:organization_managed_rule_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationManagedRuleMetadata, name: "OrganizationManagedRuleMetadata"))
    PutOrganizationConfigRuleRequest.add_member(:organization_custom_rule_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationCustomRuleMetadata, name: "OrganizationCustomRuleMetadata"))
    PutOrganizationConfigRuleRequest.add_member(:excluded_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedAccounts, name: "ExcludedAccounts"))
    PutOrganizationConfigRuleRequest.add_member(:organization_custom_policy_rule_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationCustomPolicyRuleMetadata, name: "OrganizationCustomPolicyRuleMetadata"))
    PutOrganizationConfigRuleRequest.type = Types::PutOrganizationConfigRuleRequest
    PutOrganizationConfigRuleResponse.add_member(:organization_config_rule_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "OrganizationConfigRuleArn"))
    PutOrganizationConfigRuleResponse.type = Types::PutOrganizationConfigRuleResponse
    PutOrganizationConformancePackRequest.add_member(:organization_conformance_pack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationConformancePackName, name: "OrganizationConformancePackName", traits: {"smithy.api#required" => {}}))
    PutOrganizationConformancePackRequest.add_member(:template_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateS3Uri, name: "TemplateS3Uri"))
    PutOrganizationConformancePackRequest.add_member(:template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateBody, name: "TemplateBody"))
    PutOrganizationConformancePackRequest.add_member(:delivery_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryS3Bucket, name: "DeliveryS3Bucket"))
    PutOrganizationConformancePackRequest.add_member(:delivery_s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryS3KeyPrefix, name: "DeliveryS3KeyPrefix"))
    PutOrganizationConformancePackRequest.add_member(:conformance_pack_input_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConformancePackInputParameters, name: "ConformancePackInputParameters"))
    PutOrganizationConformancePackRequest.add_member(:excluded_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedAccounts, name: "ExcludedAccounts"))
    PutOrganizationConformancePackRequest.type = Types::PutOrganizationConformancePackRequest
    PutOrganizationConformancePackResponse.add_member(:organization_conformance_pack_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "OrganizationConformancePackArn"))
    PutOrganizationConformancePackResponse.type = Types::PutOrganizationConformancePackResponse
    PutRemediationConfigurationsRequest.add_member(:remediation_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationConfigurations, name: "RemediationConfigurations", traits: {"smithy.api#required" => {}}))
    PutRemediationConfigurationsRequest.type = Types::PutRemediationConfigurationsRequest
    PutRemediationConfigurationsResponse.add_member(:failed_batches, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedRemediationBatches, name: "FailedBatches"))
    PutRemediationConfigurationsResponse.type = Types::PutRemediationConfigurationsResponse
    PutRemediationExceptionsRequest.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName", traits: {"smithy.api#required" => {}}))
    PutRemediationExceptionsRequest.add_member(:resource_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationExceptionResourceKeys, name: "ResourceKeys", traits: {"smithy.api#required" => {}}))
    PutRemediationExceptionsRequest.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit1024, name: "Message"))
    PutRemediationExceptionsRequest.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ExpirationTime"))
    PutRemediationExceptionsRequest.type = Types::PutRemediationExceptionsRequest
    PutRemediationExceptionsResponse.add_member(:failed_batches, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedRemediationExceptionBatches, name: "FailedBatches"))
    PutRemediationExceptionsResponse.type = Types::PutRemediationExceptionsResponse
    PutResourceConfigRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeString, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    PutResourceConfigRequest.add_member(:schema_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersionId, name: "SchemaVersionId", traits: {"smithy.api#required" => {}}))
    PutResourceConfigRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    PutResourceConfigRequest.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName"))
    PutResourceConfigRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "Configuration", traits: {"smithy.api#required" => {}}))
    PutResourceConfigRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    PutResourceConfigRequest.type = Types::PutResourceConfigRequest
    PutRetentionConfigurationRequest.add_member(:retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodInDays, name: "RetentionPeriodInDays", traits: {"smithy.api#required" => {}}))
    PutRetentionConfigurationRequest.type = Types::PutRetentionConfigurationRequest
    PutRetentionConfigurationResponse.add_member(:retention_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionConfiguration, name: "RetentionConfiguration"))
    PutRetentionConfigurationResponse.type = Types::PutRetentionConfigurationResponse
    PutServiceLinkedConfigurationRecorderRequest.add_member(:service_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipal, name: "ServicePrincipal", traits: {"smithy.api#required" => {}}))
    PutServiceLinkedConfigurationRecorderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, name: "Tags"))
    PutServiceLinkedConfigurationRecorderRequest.type = Types::PutServiceLinkedConfigurationRecorderRequest
    PutServiceLinkedConfigurationRecorderResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "Arn"))
    PutServiceLinkedConfigurationRecorderResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecorderName, name: "Name"))
    PutServiceLinkedConfigurationRecorderResponse.type = Types::PutServiceLinkedConfigurationRecorderResponse
    PutStoredQueryRequest.add_member(:stored_query, ::Smithy::Schema::Shapes::MemberShape.new(target: StoredQuery, name: "StoredQuery", traits: {"smithy.api#required" => {}}))
    PutStoredQueryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, name: "Tags"))
    PutStoredQueryRequest.type = Types::PutStoredQueryRequest
    PutStoredQueryResponse.add_member(:query_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryArn, name: "QueryArn"))
    PutStoredQueryResponse.type = Types::PutStoredQueryResponse
    QueryInfo.add_member(:select_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldInfoList, name: "SelectFields"))
    QueryInfo.type = Types::QueryInfo
    RecorderStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    RecorderStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Success", traits: {"smithy.api#enumValue" => "Success"}))
    RecorderStatus.add_member(:failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failure", traits: {"smithy.api#enumValue" => "Failure"}))
    RecorderStatus.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NotApplicable", traits: {"smithy.api#enumValue" => "NotApplicable"}))
    RecordingFrequency.add_member(:continuous, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUOUS", traits: {"smithy.api#enumValue" => "CONTINUOUS"}))
    RecordingFrequency.add_member(:daily, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY", traits: {"smithy.api#enumValue" => "DAILY"}))
    RecordingGroup.add_member(:all_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: AllSupported, name: "allSupported", traits: {"smithy.api#default" => false}))
    RecordingGroup.add_member(:include_global_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeGlobalResourceTypes, name: "includeGlobalResourceTypes", traits: {"smithy.api#default" => false}))
    RecordingGroup.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeList, name: "resourceTypes"))
    RecordingGroup.add_member(:exclusion_by_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ExclusionByResourceTypes, name: "exclusionByResourceTypes"))
    RecordingGroup.add_member(:recording_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingStrategy, name: "recordingStrategy"))
    RecordingGroup.type = Types::RecordingGroup
    RecordingMode.add_member(:recording_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingFrequency, name: "recordingFrequency", traits: {"smithy.api#required" => {}}))
    RecordingMode.add_member(:recording_mode_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingModeOverrides, name: "recordingModeOverrides"))
    RecordingMode.type = Types::RecordingMode
    RecordingModeOverride.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    RecordingModeOverride.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingModeResourceTypesList, name: "resourceTypes", traits: {"smithy.api#required" => {}}))
    RecordingModeOverride.add_member(:recording_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingFrequency, name: "recordingFrequency", traits: {"smithy.api#required" => {}}))
    RecordingModeOverride.type = Types::RecordingModeOverride
    RecordingModeOverrides.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingModeOverride, name: "member")
    RecordingModeResourceTypesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "member")
    RecordingScope.add_member(:internal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL", traits: {"smithy.api#enumValue" => "INTERNAL"}))
    RecordingScope.add_member(:paid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAID", traits: {"smithy.api#enumValue" => "PAID"}))
    RecordingStrategy.add_member(:use_only, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordingStrategyType, name: "useOnly"))
    RecordingStrategy.type = Types::RecordingStrategy
    RecordingStrategyType.add_member(:all_supported_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_SUPPORTED_RESOURCE_TYPES", traits: {"smithy.api#enumValue" => "ALL_SUPPORTED_RESOURCE_TYPES"}))
    RecordingStrategyType.add_member(:inclusion_by_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUSION_BY_RESOURCE_TYPES", traits: {"smithy.api#enumValue" => "INCLUSION_BY_RESOURCE_TYPES"}))
    RecordingStrategyType.add_member(:exclusion_by_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUSION_BY_RESOURCE_TYPES", traits: {"smithy.api#enumValue" => "EXCLUSION_BY_RESOURCE_TYPES"}))
    ReevaluateConfigRuleNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "member")
    RelatedEventList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedEvent, name: "member")
    Relationship.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    Relationship.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    Relationship.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName"))
    Relationship.add_member(:relationship_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipName, name: "relationshipName"))
    Relationship.type = Types::Relationship
    RelationshipList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Relationship, name: "member")
    RemediationConfiguration.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName", traits: {"smithy.api#required" => {}}))
    RemediationConfiguration.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationTargetType, name: "TargetType", traits: {"smithy.api#required" => {}}))
    RemediationConfiguration.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "TargetId", traits: {"smithy.api#required" => {}}))
    RemediationConfiguration.add_member(:target_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetVersion"))
    RemediationConfiguration.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationParameters, name: "Parameters"))
    RemediationConfiguration.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType"))
    RemediationConfiguration.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Automatic", traits: {"smithy.api#default" => false}))
    RemediationConfiguration.add_member(:execution_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionControls, name: "ExecutionControls"))
    RemediationConfiguration.add_member(:maximum_automatic_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRemediationAttempts, name: "MaximumAutomaticAttempts"))
    RemediationConfiguration.add_member(:retry_attempt_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRemediationAttemptSeconds, name: "RetryAttemptSeconds"))
    RemediationConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit1024, name: "Arn"))
    RemediationConfiguration.add_member(:created_by_service, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit1024, name: "CreatedByService"))
    RemediationConfiguration.type = Types::RemediationConfiguration
    RemediationConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationConfiguration, name: "member")
    RemediationException.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName", traits: {"smithy.api#required" => {}}))
    RemediationException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    RemediationException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit1024, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    RemediationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit1024, name: "Message"))
    RemediationException.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ExpirationTime"))
    RemediationException.type = Types::RemediationException
    RemediationExceptionResourceKey.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "ResourceType"))
    RemediationExceptionResourceKey.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit1024, name: "ResourceId"))
    RemediationExceptionResourceKey.type = Types::RemediationExceptionResourceKey
    RemediationExceptionResourceKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationExceptionResourceKey, name: "member")
    RemediationExceptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationException, name: "member")
    RemediationExecutionState.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    RemediationExecutionState.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    RemediationExecutionState.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    RemediationExecutionState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RemediationExecutionState.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    RemediationExecutionStatus.add_member(:resource_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceKey, name: "ResourceKey"))
    RemediationExecutionStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationExecutionState, name: "State"))
    RemediationExecutionStatus.add_member(:step_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationExecutionSteps, name: "StepDetails"))
    RemediationExecutionStatus.add_member(:invocation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "InvocationTime"))
    RemediationExecutionStatus.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "LastUpdatedTime"))
    RemediationExecutionStatus.type = Types::RemediationExecutionStatus
    RemediationExecutionStatuses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationExecutionStatus, name: "member")
    RemediationExecutionStep.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    RemediationExecutionStep.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationExecutionStepState, name: "State"))
    RemediationExecutionStep.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    RemediationExecutionStep.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartTime"))
    RemediationExecutionStep.add_member(:stop_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StopTime"))
    RemediationExecutionStep.type = Types::RemediationExecutionStep
    RemediationExecutionStepState.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    RemediationExecutionStepState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    RemediationExecutionStepState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RemediationExecutionStepState.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    RemediationExecutionStepState.add_member(:exited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXITED", traits: {"smithy.api#enumValue" => "EXITED"}))
    RemediationExecutionStepState.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    RemediationExecutionSteps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationExecutionStep, name: "member")
    RemediationInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    RemediationInProgressException.type = Types::RemediationInProgressException
    RemediationParameterValue.add_member(:resource_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceValue, name: "ResourceValue"))
    RemediationParameterValue.add_member(:static_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StaticValue, name: "StaticValue"))
    RemediationParameterValue.type = Types::RemediationParameterValue
    RemediationParameters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "key")
    RemediationParameters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationParameterValue, name: "value")
    RemediationTargetType.add_member(:ssm_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSM_DOCUMENT", traits: {"smithy.api#enumValue" => "SSM_DOCUMENT"}))
    ResourceConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceConcurrentModificationException.type = Types::ResourceConcurrentModificationException
    ResourceConfigurationSchemaType.add_member(:cfn_resource_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CFN_RESOURCE_SCHEMA", traits: {"smithy.api#enumValue" => "CFN_RESOURCE_SCHEMA"}))
    ResourceCount.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ResourceCount.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "count", traits: {"smithy.api#default" => 0}))
    ResourceCount.type = Types::ResourceCount
    ResourceCountFilters.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourceCountFilters.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    ResourceCountFilters.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "Region"))
    ResourceCountFilters.type = Types::ResourceCountFilters
    ResourceCountGroupKey.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "RESOURCE_TYPE"}))
    ResourceCountGroupKey.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    ResourceCountGroupKey.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_REGION", traits: {"smithy.api#enumValue" => "AWS_REGION"}))
    ResourceCounts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCount, name: "member")
    ResourceDetails.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ResourceDetails.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    ResourceDetails.add_member(:resource_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfiguration, name: "ResourceConfiguration", traits: {"smithy.api#required" => {}}))
    ResourceDetails.add_member(:resource_configuration_schema_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationSchemaType, name: "ResourceConfigurationSchemaType"))
    ResourceDetails.type = Types::ResourceDetails
    ResourceEvaluation.add_member(:resource_evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEvaluationId, name: "ResourceEvaluationId"))
    ResourceEvaluation.add_member(:evaluation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationMode, name: "EvaluationMode"))
    ResourceEvaluation.add_member(:evaluation_start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EvaluationStartTimestamp"))
    ResourceEvaluation.type = Types::ResourceEvaluation
    ResourceEvaluationFilters.add_member(:evaluation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationMode, name: "EvaluationMode"))
    ResourceEvaluationFilters.add_member(:time_window, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeWindow, name: "TimeWindow"))
    ResourceEvaluationFilters.add_member(:evaluation_context_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationContextIdentifier, name: "EvaluationContextIdentifier"))
    ResourceEvaluationFilters.type = Types::ResourceEvaluationFilters
    ResourceEvaluationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ResourceEvaluationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResourceEvaluationStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ResourceEvaluations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEvaluation, name: "member")
    ResourceFilters.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    ResourceFilters.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId"))
    ResourceFilters.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName"))
    ResourceFilters.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "Region"))
    ResourceFilters.type = Types::ResourceFilters
    ResourceIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "member")
    ResourceIdentifier.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ResourceIdentifier.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    ResourceIdentifier.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "resourceName"))
    ResourceIdentifier.add_member(:resource_deletion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDeletionTime, name: "resourceDeletionTime"))
    ResourceIdentifier.type = Types::ResourceIdentifier
    ResourceIdentifierList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "member")
    ResourceIdentifiersList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateResourceIdentifier, name: "member")
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceKey.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceKey.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceKey.type = Types::ResourceKey
    ResourceKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceKey, name: "member")
    ResourceNotDiscoveredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotDiscoveredException.type = Types::ResourceNotDiscoveredException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:customer_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CustomerGateway", traits: {"smithy.api#enumValue" => "AWS::EC2::CustomerGateway"}))
    ResourceType.add_member(:eip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EIP", traits: {"smithy.api#enumValue" => "AWS::EC2::EIP"}))
    ResourceType.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Host", traits: {"smithy.api#enumValue" => "AWS::EC2::Host"}))
    ResourceType.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Instance", traits: {"smithy.api#enumValue" => "AWS::EC2::Instance"}))
    ResourceType.add_member(:internet_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternetGateway", traits: {"smithy.api#enumValue" => "AWS::EC2::InternetGateway"}))
    ResourceType.add_member(:network_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkAcl", traits: {"smithy.api#enumValue" => "AWS::EC2::NetworkAcl"}))
    ResourceType.add_member(:network_interface, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkInterface", traits: {"smithy.api#enumValue" => "AWS::EC2::NetworkInterface"}))
    ResourceType.add_member(:route_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RouteTable", traits: {"smithy.api#enumValue" => "AWS::EC2::RouteTable"}))
    ResourceType.add_member(:security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityGroup", traits: {"smithy.api#enumValue" => "AWS::EC2::SecurityGroup"}))
    ResourceType.add_member(:subnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Subnet", traits: {"smithy.api#enumValue" => "AWS::EC2::Subnet"}))
    ResourceType.add_member(:trail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Trail", traits: {"smithy.api#enumValue" => "AWS::CloudTrail::Trail"}))
    ResourceType.add_member(:volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Volume", traits: {"smithy.api#enumValue" => "AWS::EC2::Volume"}))
    ResourceType.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC", traits: {"smithy.api#enumValue" => "AWS::EC2::VPC"}))
    ResourceType.add_member(:vpn_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPNConnection", traits: {"smithy.api#enumValue" => "AWS::EC2::VPNConnection"}))
    ResourceType.add_member(:vpn_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPNGateway", traits: {"smithy.api#enumValue" => "AWS::EC2::VPNGateway"}))
    ResourceType.add_member(:registered_ha_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RegisteredHAInstance", traits: {"smithy.api#enumValue" => "AWS::EC2::RegisteredHAInstance"}))
    ResourceType.add_member(:nat_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NatGateway", traits: {"smithy.api#enumValue" => "AWS::EC2::NatGateway"}))
    ResourceType.add_member(:egress_only_internet_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EgressOnlyInternetGateway", traits: {"smithy.api#enumValue" => "AWS::EC2::EgressOnlyInternetGateway"}))
    ResourceType.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPCEndpoint", traits: {"smithy.api#enumValue" => "AWS::EC2::VPCEndpoint"}))
    ResourceType.add_member(:vpc_endpoint_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPCEndpointService", traits: {"smithy.api#enumValue" => "AWS::EC2::VPCEndpointService"}))
    ResourceType.add_member(:flow_log, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FlowLog", traits: {"smithy.api#enumValue" => "AWS::EC2::FlowLog"}))
    ResourceType.add_member(:vpc_peering_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPCPeeringConnection", traits: {"smithy.api#enumValue" => "AWS::EC2::VPCPeeringConnection"}))
    ResourceType.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Domain", traits: {"smithy.api#enumValue" => "AWS::Elasticsearch::Domain"}))
    ResourceType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Group", traits: {"smithy.api#enumValue" => "AWS::IAM::Group"}))
    ResourceType.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Policy", traits: {"smithy.api#enumValue" => "AWS::IAM::Policy"}))
    ResourceType.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Role", traits: {"smithy.api#enumValue" => "AWS::IAM::Role"}))
    ResourceType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "User", traits: {"smithy.api#enumValue" => "AWS::IAM::User"}))
    ResourceType.add_member(:load_balancer_v2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LoadBalancerV2", traits: {"smithy.api#enumValue" => "AWS::ElasticLoadBalancingV2::LoadBalancer"}))
    ResourceType.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Certificate", traits: {"smithy.api#enumValue" => "AWS::ACM::Certificate"}))
    ResourceType.add_member(:db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DBInstance", traits: {"smithy.api#enumValue" => "AWS::RDS::DBInstance"}))
    ResourceType.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DBSubnetGroup", traits: {"smithy.api#enumValue" => "AWS::RDS::DBSubnetGroup"}))
    ResourceType.add_member(:db_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DBSecurityGroup", traits: {"smithy.api#enumValue" => "AWS::RDS::DBSecurityGroup"}))
    ResourceType.add_member(:db_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DBSnapshot", traits: {"smithy.api#enumValue" => "AWS::RDS::DBSnapshot"}))
    ResourceType.add_member(:db_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DBCluster", traits: {"smithy.api#enumValue" => "AWS::RDS::DBCluster"}))
    ResourceType.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DBClusterSnapshot", traits: {"smithy.api#enumValue" => "AWS::RDS::DBClusterSnapshot"}))
    ResourceType.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventSubscription", traits: {"smithy.api#enumValue" => "AWS::RDS::EventSubscription"}))
    ResourceType.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bucket", traits: {"smithy.api#enumValue" => "AWS::S3::Bucket"}))
    ResourceType.add_member(:account_public_access_block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccountPublicAccessBlock", traits: {"smithy.api#enumValue" => "AWS::S3::AccountPublicAccessBlock"}))
    ResourceType.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cluster", traits: {"smithy.api#enumValue" => "AWS::Redshift::Cluster"}))
    ResourceType.add_member(:cluster_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ClusterSnapshot", traits: {"smithy.api#enumValue" => "AWS::Redshift::ClusterSnapshot"}))
    ResourceType.add_member(:cluster_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ClusterParameterGroup", traits: {"smithy.api#enumValue" => "AWS::Redshift::ClusterParameterGroup"}))
    ResourceType.add_member(:cluster_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ClusterSecurityGroup", traits: {"smithy.api#enumValue" => "AWS::Redshift::ClusterSecurityGroup"}))
    ResourceType.add_member(:cluster_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ClusterSubnetGroup", traits: {"smithy.api#enumValue" => "AWS::Redshift::ClusterSubnetGroup"}))
    ResourceType.add_member(:redshift_event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RedshiftEventSubscription", traits: {"smithy.api#enumValue" => "AWS::Redshift::EventSubscription"}))
    ResourceType.add_member(:managed_instance_inventory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ManagedInstanceInventory", traits: {"smithy.api#enumValue" => "AWS::SSM::ManagedInstanceInventory"}))
    ResourceType.add_member(:alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Alarm", traits: {"smithy.api#enumValue" => "AWS::CloudWatch::Alarm"}))
    ResourceType.add_member(:stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stack", traits: {"smithy.api#enumValue" => "AWS::CloudFormation::Stack"}))
    ResourceType.add_member(:load_balancer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LoadBalancer", traits: {"smithy.api#enumValue" => "AWS::ElasticLoadBalancing::LoadBalancer"}))
    ResourceType.add_member(:auto_scaling_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AutoScalingGroup", traits: {"smithy.api#enumValue" => "AWS::AutoScaling::AutoScalingGroup"}))
    ResourceType.add_member(:launch_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LaunchConfiguration", traits: {"smithy.api#enumValue" => "AWS::AutoScaling::LaunchConfiguration"}))
    ResourceType.add_member(:scaling_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ScalingPolicy", traits: {"smithy.api#enumValue" => "AWS::AutoScaling::ScalingPolicy"}))
    ResourceType.add_member(:scheduled_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ScheduledAction", traits: {"smithy.api#enumValue" => "AWS::AutoScaling::ScheduledAction"}))
    ResourceType.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Table", traits: {"smithy.api#enumValue" => "AWS::DynamoDB::Table"}))
    ResourceType.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Project", traits: {"smithy.api#enumValue" => "AWS::CodeBuild::Project"}))
    ResourceType.add_member(:rate_based_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RateBasedRule", traits: {"smithy.api#enumValue" => "AWS::WAF::RateBasedRule"}))
    ResourceType.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Rule", traits: {"smithy.api#enumValue" => "AWS::WAF::Rule"}))
    ResourceType.add_member(:rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RuleGroup", traits: {"smithy.api#enumValue" => "AWS::WAF::RuleGroup"}))
    ResourceType.add_member(:web_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WebACL", traits: {"smithy.api#enumValue" => "AWS::WAF::WebACL"}))
    ResourceType.add_member(:regional_rate_based_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RegionalRateBasedRule", traits: {"smithy.api#enumValue" => "AWS::WAFRegional::RateBasedRule"}))
    ResourceType.add_member(:regional_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RegionalRule", traits: {"smithy.api#enumValue" => "AWS::WAFRegional::Rule"}))
    ResourceType.add_member(:regional_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RegionalRuleGroup", traits: {"smithy.api#enumValue" => "AWS::WAFRegional::RuleGroup"}))
    ResourceType.add_member(:regional_web_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RegionalWebACL", traits: {"smithy.api#enumValue" => "AWS::WAFRegional::WebACL"}))
    ResourceType.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Distribution", traits: {"smithy.api#enumValue" => "AWS::CloudFront::Distribution"}))
    ResourceType.add_member(:streaming_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StreamingDistribution", traits: {"smithy.api#enumValue" => "AWS::CloudFront::StreamingDistribution"}))
    ResourceType.add_member(:function, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Function", traits: {"smithy.api#enumValue" => "AWS::Lambda::Function"}))
    ResourceType.add_member(:network_firewall_firewall, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkFirewallFirewall", traits: {"smithy.api#enumValue" => "AWS::NetworkFirewall::Firewall"}))
    ResourceType.add_member(:network_firewall_firewall_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkFirewallFirewallPolicy", traits: {"smithy.api#enumValue" => "AWS::NetworkFirewall::FirewallPolicy"}))
    ResourceType.add_member(:network_firewall_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkFirewallRuleGroup", traits: {"smithy.api#enumValue" => "AWS::NetworkFirewall::RuleGroup"}))
    ResourceType.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Application", traits: {"smithy.api#enumValue" => "AWS::ElasticBeanstalk::Application"}))
    ResourceType.add_member(:application_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ApplicationVersion", traits: {"smithy.api#enumValue" => "AWS::ElasticBeanstalk::ApplicationVersion"}))
    ResourceType.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Environment", traits: {"smithy.api#enumValue" => "AWS::ElasticBeanstalk::Environment"}))
    ResourceType.add_member(:web_aclv2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WebACLV2", traits: {"smithy.api#enumValue" => "AWS::WAFv2::WebACL"}))
    ResourceType.add_member(:rule_group_v2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RuleGroupV2", traits: {"smithy.api#enumValue" => "AWS::WAFv2::RuleGroup"}))
    ResourceType.add_member(:ip_set_v2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPSetV2", traits: {"smithy.api#enumValue" => "AWS::WAFv2::IPSet"}))
    ResourceType.add_member(:regex_pattern_set_v2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RegexPatternSetV2", traits: {"smithy.api#enumValue" => "AWS::WAFv2::RegexPatternSet"}))
    ResourceType.add_member(:managed_rule_set_v2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ManagedRuleSetV2", traits: {"smithy.api#enumValue" => "AWS::WAFv2::ManagedRuleSet"}))
    ResourceType.add_member(:encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EncryptionConfig", traits: {"smithy.api#enumValue" => "AWS::XRay::EncryptionConfig"}))
    ResourceType.add_member(:association_compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AssociationCompliance", traits: {"smithy.api#enumValue" => "AWS::SSM::AssociationCompliance"}))
    ResourceType.add_member(:patch_compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PatchCompliance", traits: {"smithy.api#enumValue" => "AWS::SSM::PatchCompliance"}))
    ResourceType.add_member(:protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Protection", traits: {"smithy.api#enumValue" => "AWS::Shield::Protection"}))
    ResourceType.add_member(:regional_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RegionalProtection", traits: {"smithy.api#enumValue" => "AWS::ShieldRegional::Protection"}))
    ResourceType.add_member(:conformance_pack_compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConformancePackCompliance", traits: {"smithy.api#enumValue" => "AWS::Config::ConformancePackCompliance"}))
    ResourceType.add_member(:resource_compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceCompliance", traits: {"smithy.api#enumValue" => "AWS::Config::ResourceCompliance"}))
    ResourceType.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Stage", traits: {"smithy.api#enumValue" => "AWS::ApiGateway::Stage"}))
    ResourceType.add_member(:rest_api, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RestApi", traits: {"smithy.api#enumValue" => "AWS::ApiGateway::RestApi"}))
    ResourceType.add_member(:stage_v2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StageV2", traits: {"smithy.api#enumValue" => "AWS::ApiGatewayV2::Stage"}))
    ResourceType.add_member(:api, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Api", traits: {"smithy.api#enumValue" => "AWS::ApiGatewayV2::Api"}))
    ResourceType.add_member(:pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pipeline", traits: {"smithy.api#enumValue" => "AWS::CodePipeline::Pipeline"}))
    ResourceType.add_member(:cloud_formation_provisioned_product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloudFormationProvisionedProduct", traits: {"smithy.api#enumValue" => "AWS::ServiceCatalog::CloudFormationProvisionedProduct"}))
    ResourceType.add_member(:cloud_formation_product, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloudFormationProduct", traits: {"smithy.api#enumValue" => "AWS::ServiceCatalog::CloudFormationProduct"}))
    ResourceType.add_member(:portfolio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Portfolio", traits: {"smithy.api#enumValue" => "AWS::ServiceCatalog::Portfolio"}))
    ResourceType.add_member(:queue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Queue", traits: {"smithy.api#enumValue" => "AWS::SQS::Queue"}))
    ResourceType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Key", traits: {"smithy.api#enumValue" => "AWS::KMS::Key"}))
    ResourceType.add_member(:qldb_ledger, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QLDBLedger", traits: {"smithy.api#enumValue" => "AWS::QLDB::Ledger"}))
    ResourceType.add_member(:secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Secret", traits: {"smithy.api#enumValue" => "AWS::SecretsManager::Secret"}))
    ResourceType.add_member(:topic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Topic", traits: {"smithy.api#enumValue" => "AWS::SNS::Topic"}))
    ResourceType.add_member(:file_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FileData", traits: {"smithy.api#enumValue" => "AWS::SSM::FileData"}))
    ResourceType.add_member(:backup_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BackupPlan", traits: {"smithy.api#enumValue" => "AWS::Backup::BackupPlan"}))
    ResourceType.add_member(:backup_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BackupSelection", traits: {"smithy.api#enumValue" => "AWS::Backup::BackupSelection"}))
    ResourceType.add_member(:backup_vault, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BackupVault", traits: {"smithy.api#enumValue" => "AWS::Backup::BackupVault"}))
    ResourceType.add_member(:backup_recovery_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BackupRecoveryPoint", traits: {"smithy.api#enumValue" => "AWS::Backup::RecoveryPoint"}))
    ResourceType.add_member(:ecr_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECRRepository", traits: {"smithy.api#enumValue" => "AWS::ECR::Repository"}))
    ResourceType.add_member(:ecs_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECSCluster", traits: {"smithy.api#enumValue" => "AWS::ECS::Cluster"}))
    ResourceType.add_member(:ecs_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECSService", traits: {"smithy.api#enumValue" => "AWS::ECS::Service"}))
    ResourceType.add_member(:ecs_task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECSTaskDefinition", traits: {"smithy.api#enumValue" => "AWS::ECS::TaskDefinition"}))
    ResourceType.add_member(:efs_access_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSAccessPoint", traits: {"smithy.api#enumValue" => "AWS::EFS::AccessPoint"}))
    ResourceType.add_member(:efs_file_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFSFileSystem", traits: {"smithy.api#enumValue" => "AWS::EFS::FileSystem"}))
    ResourceType.add_member(:eks_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKSCluster", traits: {"smithy.api#enumValue" => "AWS::EKS::Cluster"}))
    ResourceType.add_member(:open_search_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OpenSearchDomain", traits: {"smithy.api#enumValue" => "AWS::OpenSearch::Domain"}))
    ResourceType.add_member(:transit_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TransitGateway", traits: {"smithy.api#enumValue" => "AWS::EC2::TransitGateway"}))
    ResourceType.add_member(:kinesis_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KinesisStream", traits: {"smithy.api#enumValue" => "AWS::Kinesis::Stream"}))
    ResourceType.add_member(:kinesis_stream_consumer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KinesisStreamConsumer", traits: {"smithy.api#enumValue" => "AWS::Kinesis::StreamConsumer"}))
    ResourceType.add_member(:code_deploy_application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CodeDeployApplication", traits: {"smithy.api#enumValue" => "AWS::CodeDeploy::Application"}))
    ResourceType.add_member(:code_deploy_deployment_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CodeDeployDeploymentConfig", traits: {"smithy.api#enumValue" => "AWS::CodeDeploy::DeploymentConfig"}))
    ResourceType.add_member(:code_deploy_deployment_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CodeDeployDeploymentGroup", traits: {"smithy.api#enumValue" => "AWS::CodeDeploy::DeploymentGroup"}))
    ResourceType.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LaunchTemplate", traits: {"smithy.api#enumValue" => "AWS::EC2::LaunchTemplate"}))
    ResourceType.add_member(:ecr_public_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECRPublicRepository", traits: {"smithy.api#enumValue" => "AWS::ECR::PublicRepository"}))
    ResourceType.add_member(:guard_duty_detector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GuardDutyDetector", traits: {"smithy.api#enumValue" => "AWS::GuardDuty::Detector"}))
    ResourceType.add_member(:emr_security_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMRSecurityConfiguration", traits: {"smithy.api#enumValue" => "AWS::EMR::SecurityConfiguration"}))
    ResourceType.add_member(:sage_maker_code_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerCodeRepository", traits: {"smithy.api#enumValue" => "AWS::SageMaker::CodeRepository"}))
    ResourceType.add_member(:route53_resolver_resolver_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53ResolverResolverEndpoint", traits: {"smithy.api#enumValue" => "AWS::Route53Resolver::ResolverEndpoint"}))
    ResourceType.add_member(:route53_resolver_resolver_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53ResolverResolverRule", traits: {"smithy.api#enumValue" => "AWS::Route53Resolver::ResolverRule"}))
    ResourceType.add_member(:route53_resolver_resolver_rule_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53ResolverResolverRuleAssociation", traits: {"smithy.api#enumValue" => "AWS::Route53Resolver::ResolverRuleAssociation"}))
    ResourceType.add_member(:dms_replication_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DMSReplicationSubnetGroup", traits: {"smithy.api#enumValue" => "AWS::DMS::ReplicationSubnetGroup"}))
    ResourceType.add_member(:dms_event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DMSEventSubscription", traits: {"smithy.api#enumValue" => "AWS::DMS::EventSubscription"}))
    ResourceType.add_member(:msk_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MSKCluster", traits: {"smithy.api#enumValue" => "AWS::MSK::Cluster"}))
    ResourceType.add_member(:step_functions_activity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StepFunctionsActivity", traits: {"smithy.api#enumValue" => "AWS::StepFunctions::Activity"}))
    ResourceType.add_member(:work_spaces_workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WorkSpacesWorkspace", traits: {"smithy.api#enumValue" => "AWS::WorkSpaces::Workspace"}))
    ResourceType.add_member(:work_spaces_connection_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WorkSpacesConnectionAlias", traits: {"smithy.api#enumValue" => "AWS::WorkSpaces::ConnectionAlias"}))
    ResourceType.add_member(:sage_maker_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerModel", traits: {"smithy.api#enumValue" => "AWS::SageMaker::Model"}))
    ResourceType.add_member(:listener_v2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ListenerV2", traits: {"smithy.api#enumValue" => "AWS::ElasticLoadBalancingV2::Listener"}))
    ResourceType.add_member(:step_functions_state_machine, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StepFunctionsStateMachine", traits: {"smithy.api#enumValue" => "AWS::StepFunctions::StateMachine"}))
    ResourceType.add_member(:batch_job_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BatchJobQueue", traits: {"smithy.api#enumValue" => "AWS::Batch::JobQueue"}))
    ResourceType.add_member(:batch_compute_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BatchComputeEnvironment", traits: {"smithy.api#enumValue" => "AWS::Batch::ComputeEnvironment"}))
    ResourceType.add_member(:access_analyzer_analyzer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AccessAnalyzerAnalyzer", traits: {"smithy.api#enumValue" => "AWS::AccessAnalyzer::Analyzer"}))
    ResourceType.add_member(:athena_work_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AthenaWorkGroup", traits: {"smithy.api#enumValue" => "AWS::Athena::WorkGroup"}))
    ResourceType.add_member(:athena_data_catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AthenaDataCatalog", traits: {"smithy.api#enumValue" => "AWS::Athena::DataCatalog"}))
    ResourceType.add_member(:detective_graph, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DetectiveGraph", traits: {"smithy.api#enumValue" => "AWS::Detective::Graph"}))
    ResourceType.add_member(:global_accelerator_accelerator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GlobalAcceleratorAccelerator", traits: {"smithy.api#enumValue" => "AWS::GlobalAccelerator::Accelerator"}))
    ResourceType.add_member(:global_accelerator_endpoint_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GlobalAcceleratorEndpointGroup", traits: {"smithy.api#enumValue" => "AWS::GlobalAccelerator::EndpointGroup"}))
    ResourceType.add_member(:global_accelerator_listener, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GlobalAcceleratorListener", traits: {"smithy.api#enumValue" => "AWS::GlobalAccelerator::Listener"}))
    ResourceType.add_member(:transit_gateway_attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TransitGatewayAttachment", traits: {"smithy.api#enumValue" => "AWS::EC2::TransitGatewayAttachment"}))
    ResourceType.add_member(:transit_gateway_route_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TransitGatewayRouteTable", traits: {"smithy.api#enumValue" => "AWS::EC2::TransitGatewayRouteTable"}))
    ResourceType.add_member(:dms_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DMSCertificate", traits: {"smithy.api#enumValue" => "AWS::DMS::Certificate"}))
    ResourceType.add_member(:app_config_application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppConfigApplication", traits: {"smithy.api#enumValue" => "AWS::AppConfig::Application"}))
    ResourceType.add_member(:app_sync_graph_ql_api, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppSyncGraphQLApi", traits: {"smithy.api#enumValue" => "AWS::AppSync::GraphQLApi"}))
    ResourceType.add_member(:data_sync_location_smb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DataSyncLocationSMB", traits: {"smithy.api#enumValue" => "AWS::DataSync::LocationSMB"}))
    ResourceType.add_member(:data_sync_location_f_sx_lustre, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DataSyncLocationFSxLustre", traits: {"smithy.api#enumValue" => "AWS::DataSync::LocationFSxLustre"}))
    ResourceType.add_member(:data_sync_location_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DataSyncLocationS3", traits: {"smithy.api#enumValue" => "AWS::DataSync::LocationS3"}))
    ResourceType.add_member(:data_sync_location_efs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DataSyncLocationEFS", traits: {"smithy.api#enumValue" => "AWS::DataSync::LocationEFS"}))
    ResourceType.add_member(:data_sync_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DataSyncTask", traits: {"smithy.api#enumValue" => "AWS::DataSync::Task"}))
    ResourceType.add_member(:data_sync_location_nfs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DataSyncLocationNFS", traits: {"smithy.api#enumValue" => "AWS::DataSync::LocationNFS"}))
    ResourceType.add_member(:network_insights_access_scope_analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkInsightsAccessScopeAnalysis", traits: {"smithy.api#enumValue" => "AWS::EC2::NetworkInsightsAccessScopeAnalysis"}))
    ResourceType.add_member(:eks_fargate_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKSFargateProfile", traits: {"smithy.api#enumValue" => "AWS::EKS::FargateProfile"}))
    ResourceType.add_member(:glue_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GlueJob", traits: {"smithy.api#enumValue" => "AWS::Glue::Job"}))
    ResourceType.add_member(:guard_duty_threat_intel_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GuardDutyThreatIntelSet", traits: {"smithy.api#enumValue" => "AWS::GuardDuty::ThreatIntelSet"}))
    ResourceType.add_member(:guard_duty_ip_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GuardDutyIPSet", traits: {"smithy.api#enumValue" => "AWS::GuardDuty::IPSet"}))
    ResourceType.add_member(:sage_maker_workteam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerWorkteam", traits: {"smithy.api#enumValue" => "AWS::SageMaker::Workteam"}))
    ResourceType.add_member(:sage_maker_notebook_instance_lifecycle_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerNotebookInstanceLifecycleConfig", traits: {"smithy.api#enumValue" => "AWS::SageMaker::NotebookInstanceLifecycleConfig"}))
    ResourceType.add_member(:service_discovery_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceDiscoveryService", traits: {"smithy.api#enumValue" => "AWS::ServiceDiscovery::Service"}))
    ResourceType.add_member(:service_discovery_public_dns_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceDiscoveryPublicDnsNamespace", traits: {"smithy.api#enumValue" => "AWS::ServiceDiscovery::PublicDnsNamespace"}))
    ResourceType.add_member(:ses_contact_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SESContactList", traits: {"smithy.api#enumValue" => "AWS::SES::ContactList"}))
    ResourceType.add_member(:ses_configuration_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SESConfigurationSet", traits: {"smithy.api#enumValue" => "AWS::SES::ConfigurationSet"}))
    ResourceType.add_member(:route53_hosted_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53HostedZone", traits: {"smithy.api#enumValue" => "AWS::Route53::HostedZone"}))
    ResourceType.add_member(:io_t_events_input, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTEventsInput", traits: {"smithy.api#enumValue" => "AWS::IoTEvents::Input"}))
    ResourceType.add_member(:io_t_events_detector_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTEventsDetectorModel", traits: {"smithy.api#enumValue" => "AWS::IoTEvents::DetectorModel"}))
    ResourceType.add_member(:io_t_events_alarm_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTEventsAlarmModel", traits: {"smithy.api#enumValue" => "AWS::IoTEvents::AlarmModel"}))
    ResourceType.add_member(:service_discovery_http_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceDiscoveryHttpNamespace", traits: {"smithy.api#enumValue" => "AWS::ServiceDiscovery::HttpNamespace"}))
    ResourceType.add_member(:events_event_bus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventsEventBus", traits: {"smithy.api#enumValue" => "AWS::Events::EventBus"}))
    ResourceType.add_member(:image_builder_container_recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageBuilderContainerRecipe", traits: {"smithy.api#enumValue" => "AWS::ImageBuilder::ContainerRecipe"}))
    ResourceType.add_member(:image_builder_distribution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageBuilderDistributionConfiguration", traits: {"smithy.api#enumValue" => "AWS::ImageBuilder::DistributionConfiguration"}))
    ResourceType.add_member(:image_builder_infrastructure_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageBuilderInfrastructureConfiguration", traits: {"smithy.api#enumValue" => "AWS::ImageBuilder::InfrastructureConfiguration"}))
    ResourceType.add_member(:data_sync_location_object_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DataSyncLocationObjectStorage", traits: {"smithy.api#enumValue" => "AWS::DataSync::LocationObjectStorage"}))
    ResourceType.add_member(:data_sync_location_hdfs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DataSyncLocationHDFS", traits: {"smithy.api#enumValue" => "AWS::DataSync::LocationHDFS"}))
    ResourceType.add_member(:glue_classifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GlueClassifier", traits: {"smithy.api#enumValue" => "AWS::Glue::Classifier"}))
    ResourceType.add_member(:route53_recovery_readiness_cell, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53RecoveryReadinessCell", traits: {"smithy.api#enumValue" => "AWS::Route53RecoveryReadiness::Cell"}))
    ResourceType.add_member(:route53_recovery_readiness_readiness_check, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53RecoveryReadinessReadinessCheck", traits: {"smithy.api#enumValue" => "AWS::Route53RecoveryReadiness::ReadinessCheck"}))
    ResourceType.add_member(:ecr_registry_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECRRegistryPolicy", traits: {"smithy.api#enumValue" => "AWS::ECR::RegistryPolicy"}))
    ResourceType.add_member(:backup_report_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BackupReportPlan", traits: {"smithy.api#enumValue" => "AWS::Backup::ReportPlan"}))
    ResourceType.add_member(:lightsail_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LightsailCertificate", traits: {"smithy.api#enumValue" => "AWS::Lightsail::Certificate"}))
    ResourceType.add_member(:rum_app_monitor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUMAppMonitor", traits: {"smithy.api#enumValue" => "AWS::RUM::AppMonitor"}))
    ResourceType.add_member(:events_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventsEndpoint", traits: {"smithy.api#enumValue" => "AWS::Events::Endpoint"}))
    ResourceType.add_member(:ses_receipt_rule_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SESReceiptRuleSet", traits: {"smithy.api#enumValue" => "AWS::SES::ReceiptRuleSet"}))
    ResourceType.add_member(:events_archive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventsArchive", traits: {"smithy.api#enumValue" => "AWS::Events::Archive"}))
    ResourceType.add_member(:events_api_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventsApiDestination", traits: {"smithy.api#enumValue" => "AWS::Events::ApiDestination"}))
    ResourceType.add_member(:lightsail_disk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LightsailDisk", traits: {"smithy.api#enumValue" => "AWS::Lightsail::Disk"}))
    ResourceType.add_member(:fis_experiment_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FISExperimentTemplate", traits: {"smithy.api#enumValue" => "AWS::FIS::ExperimentTemplate"}))
    ResourceType.add_member(:data_sync_location_f_sx_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DataSyncLocationFSxWindows", traits: {"smithy.api#enumValue" => "AWS::DataSync::LocationFSxWindows"}))
    ResourceType.add_member(:ses_receipt_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SESReceiptFilter", traits: {"smithy.api#enumValue" => "AWS::SES::ReceiptFilter"}))
    ResourceType.add_member(:guard_duty_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GuardDutyFilter", traits: {"smithy.api#enumValue" => "AWS::GuardDuty::Filter"}))
    ResourceType.add_member(:ses_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SESTemplate", traits: {"smithy.api#enumValue" => "AWS::SES::Template"}))
    ResourceType.add_member(:amazon_mq_broker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AmazonMQBroker", traits: {"smithy.api#enumValue" => "AWS::AmazonMQ::Broker"}))
    ResourceType.add_member(:app_config_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppConfigEnvironment", traits: {"smithy.api#enumValue" => "AWS::AppConfig::Environment"}))
    ResourceType.add_member(:app_config_configuration_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppConfigConfigurationProfile", traits: {"smithy.api#enumValue" => "AWS::AppConfig::ConfigurationProfile"}))
    ResourceType.add_member(:cloud9_environment_ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cloud9EnvironmentEC2", traits: {"smithy.api#enumValue" => "AWS::Cloud9::EnvironmentEC2"}))
    ResourceType.add_member(:event_schemas_registry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventSchemasRegistry", traits: {"smithy.api#enumValue" => "AWS::EventSchemas::Registry"}))
    ResourceType.add_member(:event_schemas_registry_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventSchemasRegistryPolicy", traits: {"smithy.api#enumValue" => "AWS::EventSchemas::RegistryPolicy"}))
    ResourceType.add_member(:event_schemas_discoverer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventSchemasDiscoverer", traits: {"smithy.api#enumValue" => "AWS::EventSchemas::Discoverer"}))
    ResourceType.add_member(:fraud_detector_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FraudDetectorLabel", traits: {"smithy.api#enumValue" => "AWS::FraudDetector::Label"}))
    ResourceType.add_member(:fraud_detector_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FraudDetectorEntityType", traits: {"smithy.api#enumValue" => "AWS::FraudDetector::EntityType"}))
    ResourceType.add_member(:fraud_detector_variable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FraudDetectorVariable", traits: {"smithy.api#enumValue" => "AWS::FraudDetector::Variable"}))
    ResourceType.add_member(:fraud_detector_outcome, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FraudDetectorOutcome", traits: {"smithy.api#enumValue" => "AWS::FraudDetector::Outcome"}))
    ResourceType.add_member(:io_t_authorizer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTAuthorizer", traits: {"smithy.api#enumValue" => "AWS::IoT::Authorizer"}))
    ResourceType.add_member(:io_t_security_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTSecurityProfile", traits: {"smithy.api#enumValue" => "AWS::IoT::SecurityProfile"}))
    ResourceType.add_member(:io_t_role_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTRoleAlias", traits: {"smithy.api#enumValue" => "AWS::IoT::RoleAlias"}))
    ResourceType.add_member(:io_t_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTDimension", traits: {"smithy.api#enumValue" => "AWS::IoT::Dimension"}))
    ResourceType.add_member(:io_t_analytics_datastore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTAnalyticsDatastore", traits: {"smithy.api#enumValue" => "AWS::IoTAnalytics::Datastore"}))
    ResourceType.add_member(:lightsail_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LightsailBucket", traits: {"smithy.api#enumValue" => "AWS::Lightsail::Bucket"}))
    ResourceType.add_member(:lightsail_static_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LightsailStaticIp", traits: {"smithy.api#enumValue" => "AWS::Lightsail::StaticIp"}))
    ResourceType.add_member(:media_package_packaging_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MediaPackagePackagingGroup", traits: {"smithy.api#enumValue" => "AWS::MediaPackage::PackagingGroup"}))
    ResourceType.add_member(:route53_recovery_readiness_recovery_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53RecoveryReadinessRecoveryGroup", traits: {"smithy.api#enumValue" => "AWS::Route53RecoveryReadiness::RecoveryGroup"}))
    ResourceType.add_member(:resilience_hub_resiliency_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResilienceHubResiliencyPolicy", traits: {"smithy.api#enumValue" => "AWS::ResilienceHub::ResiliencyPolicy"}))
    ResourceType.add_member(:transfer_workflow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TransferWorkflow", traits: {"smithy.api#enumValue" => "AWS::Transfer::Workflow"}))
    ResourceType.add_member(:eks_identity_provider_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKSIdentityProviderConfig", traits: {"smithy.api#enumValue" => "AWS::EKS::IdentityProviderConfig"}))
    ResourceType.add_member(:eks_addon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKSAddon", traits: {"smithy.api#enumValue" => "AWS::EKS::Addon"}))
    ResourceType.add_member(:glue_ml_transform, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GlueMLTransform", traits: {"smithy.api#enumValue" => "AWS::Glue::MLTransform"}))
    ResourceType.add_member(:io_t_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTPolicy", traits: {"smithy.api#enumValue" => "AWS::IoT::Policy"}))
    ResourceType.add_member(:io_t_mitigation_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTMitigationAction", traits: {"smithy.api#enumValue" => "AWS::IoT::MitigationAction"}))
    ResourceType.add_member(:io_t_twin_maker_workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTTwinMakerWorkspace", traits: {"smithy.api#enumValue" => "AWS::IoTTwinMaker::Workspace"}))
    ResourceType.add_member(:io_t_twin_maker_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTTwinMakerEntity", traits: {"smithy.api#enumValue" => "AWS::IoTTwinMaker::Entity"}))
    ResourceType.add_member(:io_t_analytics_dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTAnalyticsDataset", traits: {"smithy.api#enumValue" => "AWS::IoTAnalytics::Dataset"}))
    ResourceType.add_member(:io_t_analytics_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTAnalyticsPipeline", traits: {"smithy.api#enumValue" => "AWS::IoTAnalytics::Pipeline"}))
    ResourceType.add_member(:io_t_analytics_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTAnalyticsChannel", traits: {"smithy.api#enumValue" => "AWS::IoTAnalytics::Channel"}))
    ResourceType.add_member(:io_t_site_wise_dashboard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTSiteWiseDashboard", traits: {"smithy.api#enumValue" => "AWS::IoTSiteWise::Dashboard"}))
    ResourceType.add_member(:io_t_site_wise_project, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTSiteWiseProject", traits: {"smithy.api#enumValue" => "AWS::IoTSiteWise::Project"}))
    ResourceType.add_member(:io_t_site_wise_portal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTSiteWisePortal", traits: {"smithy.api#enumValue" => "AWS::IoTSiteWise::Portal"}))
    ResourceType.add_member(:io_t_site_wise_asset_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTSiteWiseAssetModel", traits: {"smithy.api#enumValue" => "AWS::IoTSiteWise::AssetModel"}))
    ResourceType.add_member(:ivs_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IVSChannel", traits: {"smithy.api#enumValue" => "AWS::IVS::Channel"}))
    ResourceType.add_member(:ivs_recording_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IVSRecordingConfiguration", traits: {"smithy.api#enumValue" => "AWS::IVS::RecordingConfiguration"}))
    ResourceType.add_member(:ivs_playback_key_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IVSPlaybackKeyPair", traits: {"smithy.api#enumValue" => "AWS::IVS::PlaybackKeyPair"}))
    ResourceType.add_member(:kinesis_analytics_v2_application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KinesisAnalyticsV2Application", traits: {"smithy.api#enumValue" => "AWS::KinesisAnalyticsV2::Application"}))
    ResourceType.add_member(:rds_global_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDSGlobalCluster", traits: {"smithy.api#enumValue" => "AWS::RDS::GlobalCluster"}))
    ResourceType.add_member(:s3_multi_region_access_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3MultiRegionAccessPoint", traits: {"smithy.api#enumValue" => "AWS::S3::MultiRegionAccessPoint"}))
    ResourceType.add_member(:device_farm_test_grid_project, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceFarmTestGridProject", traits: {"smithy.api#enumValue" => "AWS::DeviceFarm::TestGridProject"}))
    ResourceType.add_member(:budgets_budgets_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BudgetsBudgetsAction", traits: {"smithy.api#enumValue" => "AWS::Budgets::BudgetsAction"}))
    ResourceType.add_member(:lex_bot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LexBot", traits: {"smithy.api#enumValue" => "AWS::Lex::Bot"}))
    ResourceType.add_member(:code_guru_reviewer_repository_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CodeGuruReviewerRepositoryAssociation", traits: {"smithy.api#enumValue" => "AWS::CodeGuruReviewer::RepositoryAssociation"}))
    ResourceType.add_member(:io_t_custom_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTCustomMetric", traits: {"smithy.api#enumValue" => "AWS::IoT::CustomMetric"}))
    ResourceType.add_member(:route53_resolver_firewall_domain_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53ResolverFirewallDomainList", traits: {"smithy.api#enumValue" => "AWS::Route53Resolver::FirewallDomainList"}))
    ResourceType.add_member(:robo_maker_robot_application_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RoboMakerRobotApplicationVersion", traits: {"smithy.api#enumValue" => "AWS::RoboMaker::RobotApplicationVersion"}))
    ResourceType.add_member(:ec2_traffic_mirror_session, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2TrafficMirrorSession", traits: {"smithy.api#enumValue" => "AWS::EC2::TrafficMirrorSession"}))
    ResourceType.add_member(:io_t_site_wise_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTSiteWiseGateway", traits: {"smithy.api#enumValue" => "AWS::IoTSiteWise::Gateway"}))
    ResourceType.add_member(:lex_bot_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LexBotAlias", traits: {"smithy.api#enumValue" => "AWS::Lex::BotAlias"}))
    ResourceType.add_member(:lookout_metrics_alert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LookoutMetricsAlert", traits: {"smithy.api#enumValue" => "AWS::LookoutMetrics::Alert"}))
    ResourceType.add_member(:io_t_account_audit_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTAccountAuditConfiguration", traits: {"smithy.api#enumValue" => "AWS::IoT::AccountAuditConfiguration"}))
    ResourceType.add_member(:ec2_traffic_mirror_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2TrafficMirrorTarget", traits: {"smithy.api#enumValue" => "AWS::EC2::TrafficMirrorTarget"}))
    ResourceType.add_member(:s3_storage_lens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3StorageLens", traits: {"smithy.api#enumValue" => "AWS::S3::StorageLens"}))
    ResourceType.add_member(:io_t_scheduled_audit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTScheduledAudit", traits: {"smithy.api#enumValue" => "AWS::IoT::ScheduledAudit"}))
    ResourceType.add_member(:events_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventsConnection", traits: {"smithy.api#enumValue" => "AWS::Events::Connection"}))
    ResourceType.add_member(:event_schemas_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventSchemasSchema", traits: {"smithy.api#enumValue" => "AWS::EventSchemas::Schema"}))
    ResourceType.add_member(:media_package_packaging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MediaPackagePackagingConfiguration", traits: {"smithy.api#enumValue" => "AWS::MediaPackage::PackagingConfiguration"}))
    ResourceType.add_member(:kinesis_video_signaling_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KinesisVideoSignalingChannel", traits: {"smithy.api#enumValue" => "AWS::KinesisVideo::SignalingChannel"}))
    ResourceType.add_member(:app_stream_directory_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppStreamDirectoryConfig", traits: {"smithy.api#enumValue" => "AWS::AppStream::DirectoryConfig"}))
    ResourceType.add_member(:lookout_vision_project, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LookoutVisionProject", traits: {"smithy.api#enumValue" => "AWS::LookoutVision::Project"}))
    ResourceType.add_member(:route53_recovery_control_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53RecoveryControlCluster", traits: {"smithy.api#enumValue" => "AWS::Route53RecoveryControl::Cluster"}))
    ResourceType.add_member(:route53_recovery_control_safety_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53RecoveryControlSafetyRule", traits: {"smithy.api#enumValue" => "AWS::Route53RecoveryControl::SafetyRule"}))
    ResourceType.add_member(:route53_recovery_control_control_panel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53RecoveryControlControlPanel", traits: {"smithy.api#enumValue" => "AWS::Route53RecoveryControl::ControlPanel"}))
    ResourceType.add_member(:route53_recovery_control_routing_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53RecoveryControlRoutingControl", traits: {"smithy.api#enumValue" => "AWS::Route53RecoveryControl::RoutingControl"}))
    ResourceType.add_member(:route53_recovery_readiness_resource_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53RecoveryReadinessResourceSet", traits: {"smithy.api#enumValue" => "AWS::Route53RecoveryReadiness::ResourceSet"}))
    ResourceType.add_member(:robo_maker_simulation_application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RoboMakerSimulationApplication", traits: {"smithy.api#enumValue" => "AWS::RoboMaker::SimulationApplication"}))
    ResourceType.add_member(:robo_maker_robot_application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RoboMakerRobotApplication", traits: {"smithy.api#enumValue" => "AWS::RoboMaker::RobotApplication"}))
    ResourceType.add_member(:health_lake_fhir_datastore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HealthLakeFHIRDatastore", traits: {"smithy.api#enumValue" => "AWS::HealthLake::FHIRDatastore"}))
    ResourceType.add_member(:pinpoint_segment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PinpointSegment", traits: {"smithy.api#enumValue" => "AWS::Pinpoint::Segment"}))
    ResourceType.add_member(:pinpoint_application_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PinpointApplicationSettings", traits: {"smithy.api#enumValue" => "AWS::Pinpoint::ApplicationSettings"}))
    ResourceType.add_member(:events_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventsRule", traits: {"smithy.api#enumValue" => "AWS::Events::Rule"}))
    ResourceType.add_member(:ec2_dhcp_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2DHCPOptions", traits: {"smithy.api#enumValue" => "AWS::EC2::DHCPOptions"}))
    ResourceType.add_member(:ec2_network_insights_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2NetworkInsightsPath", traits: {"smithy.api#enumValue" => "AWS::EC2::NetworkInsightsPath"}))
    ResourceType.add_member(:ec2_traffic_mirror_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2TrafficMirrorFilter", traits: {"smithy.api#enumValue" => "AWS::EC2::TrafficMirrorFilter"}))
    ResourceType.add_member(:ec2_ipam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2IPAM", traits: {"smithy.api#enumValue" => "AWS::EC2::IPAM"}))
    ResourceType.add_member(:io_t_twin_maker_scene, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTTwinMakerScene", traits: {"smithy.api#enumValue" => "AWS::IoTTwinMaker::Scene"}))
    ResourceType.add_member(:network_manager_transit_gateway_registration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkManagerTransitGatewayRegistration", traits: {"smithy.api#enumValue" => "AWS::NetworkManager::TransitGatewayRegistration"}))
    ResourceType.add_member(:customer_profiles_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CustomerProfilesDomain", traits: {"smithy.api#enumValue" => "AWS::CustomerProfiles::Domain"}))
    ResourceType.add_member(:auto_scaling_warm_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AutoScalingWarmPool", traits: {"smithy.api#enumValue" => "AWS::AutoScaling::WarmPool"}))
    ResourceType.add_member(:connect_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConnectPhoneNumber", traits: {"smithy.api#enumValue" => "AWS::Connect::PhoneNumber"}))
    ResourceType.add_member(:app_config_deployment_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppConfigDeploymentStrategy", traits: {"smithy.api#enumValue" => "AWS::AppConfig::DeploymentStrategy"}))
    ResourceType.add_member(:app_flow_flow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppFlowFlow", traits: {"smithy.api#enumValue" => "AWS::AppFlow::Flow"}))
    ResourceType.add_member(:audit_manager_assessment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AuditManagerAssessment", traits: {"smithy.api#enumValue" => "AWS::AuditManager::Assessment"}))
    ResourceType.add_member(:cloud_watch_metric_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloudWatchMetricStream", traits: {"smithy.api#enumValue" => "AWS::CloudWatch::MetricStream"}))
    ResourceType.add_member(:device_farm_instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceFarmInstanceProfile", traits: {"smithy.api#enumValue" => "AWS::DeviceFarm::InstanceProfile"}))
    ResourceType.add_member(:device_farm_project, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeviceFarmProject", traits: {"smithy.api#enumValue" => "AWS::DeviceFarm::Project"}))
    ResourceType.add_member(:ec2_ec2_fleet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2EC2Fleet", traits: {"smithy.api#enumValue" => "AWS::EC2::EC2Fleet"}))
    ResourceType.add_member(:ec2_subnet_route_table_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2SubnetRouteTableAssociation", traits: {"smithy.api#enumValue" => "AWS::EC2::SubnetRouteTableAssociation"}))
    ResourceType.add_member(:ecr_pull_through_cache_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECRPullThroughCacheRule", traits: {"smithy.api#enumValue" => "AWS::ECR::PullThroughCacheRule"}))
    ResourceType.add_member(:ground_station_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GroundStationConfig", traits: {"smithy.api#enumValue" => "AWS::GroundStation::Config"}))
    ResourceType.add_member(:image_builder_image_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageBuilderImagePipeline", traits: {"smithy.api#enumValue" => "AWS::ImageBuilder::ImagePipeline"}))
    ResourceType.add_member(:io_t_fleet_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTFleetMetric", traits: {"smithy.api#enumValue" => "AWS::IoT::FleetMetric"}))
    ResourceType.add_member(:io_t_wireless_service_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTWirelessServiceProfile", traits: {"smithy.api#enumValue" => "AWS::IoTWireless::ServiceProfile"}))
    ResourceType.add_member(:network_manager_device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkManagerDevice", traits: {"smithy.api#enumValue" => "AWS::NetworkManager::Device"}))
    ResourceType.add_member(:network_manager_global_network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkManagerGlobalNetwork", traits: {"smithy.api#enumValue" => "AWS::NetworkManager::GlobalNetwork"}))
    ResourceType.add_member(:network_manager_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkManagerLink", traits: {"smithy.api#enumValue" => "AWS::NetworkManager::Link"}))
    ResourceType.add_member(:network_manager_site, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkManagerSite", traits: {"smithy.api#enumValue" => "AWS::NetworkManager::Site"}))
    ResourceType.add_member(:panorama_package, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PanoramaPackage", traits: {"smithy.api#enumValue" => "AWS::Panorama::Package"}))
    ResourceType.add_member(:pinpoint_app, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PinpointApp", traits: {"smithy.api#enumValue" => "AWS::Pinpoint::App"}))
    ResourceType.add_member(:redshift_scheduled_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RedshiftScheduledAction", traits: {"smithy.api#enumValue" => "AWS::Redshift::ScheduledAction"}))
    ResourceType.add_member(:route53_resolver_firewall_rule_group_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53ResolverFirewallRuleGroupAssociation", traits: {"smithy.api#enumValue" => "AWS::Route53Resolver::FirewallRuleGroupAssociation"}))
    ResourceType.add_member(:sage_maker_app_image_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerAppImageConfig", traits: {"smithy.api#enumValue" => "AWS::SageMaker::AppImageConfig"}))
    ResourceType.add_member(:sage_maker_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerImage", traits: {"smithy.api#enumValue" => "AWS::SageMaker::Image"}))
    ResourceType.add_member(:ecs_task_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECSTaskSet", traits: {"smithy.api#enumValue" => "AWS::ECS::TaskSet"}))
    ResourceType.add_member(:cassandra_keyspace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CassandraKeyspace", traits: {"smithy.api#enumValue" => "AWS::Cassandra::Keyspace"}))
    ResourceType.add_member(:signer_signing_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SignerSigningProfile", traits: {"smithy.api#enumValue" => "AWS::Signer::SigningProfile"}))
    ResourceType.add_member(:amplify_app, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AmplifyApp", traits: {"smithy.api#enumValue" => "AWS::Amplify::App"}))
    ResourceType.add_member(:app_mesh_virtual_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppMeshVirtualNode", traits: {"smithy.api#enumValue" => "AWS::AppMesh::VirtualNode"}))
    ResourceType.add_member(:app_mesh_virtual_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppMeshVirtualService", traits: {"smithy.api#enumValue" => "AWS::AppMesh::VirtualService"}))
    ResourceType.add_member(:app_runner_vpc_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppRunnerVpcConnector", traits: {"smithy.api#enumValue" => "AWS::AppRunner::VpcConnector"}))
    ResourceType.add_member(:app_stream_application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppStreamApplication", traits: {"smithy.api#enumValue" => "AWS::AppStream::Application"}))
    ResourceType.add_member(:code_artifact_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CodeArtifactRepository", traits: {"smithy.api#enumValue" => "AWS::CodeArtifact::Repository"}))
    ResourceType.add_member(:ec2_prefix_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2PrefixList", traits: {"smithy.api#enumValue" => "AWS::EC2::PrefixList"}))
    ResourceType.add_member(:ec2_spot_fleet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2SpotFleet", traits: {"smithy.api#enumValue" => "AWS::EC2::SpotFleet"}))
    ResourceType.add_member(:evidently_project, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EvidentlyProject", traits: {"smithy.api#enumValue" => "AWS::Evidently::Project"}))
    ResourceType.add_member(:forecast_dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ForecastDataset", traits: {"smithy.api#enumValue" => "AWS::Forecast::Dataset"}))
    ResourceType.add_member(:iamsaml_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAMSAMLProvider", traits: {"smithy.api#enumValue" => "AWS::IAM::SAMLProvider"}))
    ResourceType.add_member(:iam_server_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAMServerCertificate", traits: {"smithy.api#enumValue" => "AWS::IAM::ServerCertificate"}))
    ResourceType.add_member(:pinpoint_campaign, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PinpointCampaign", traits: {"smithy.api#enumValue" => "AWS::Pinpoint::Campaign"}))
    ResourceType.add_member(:pinpoint_in_app_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PinpointInAppTemplate", traits: {"smithy.api#enumValue" => "AWS::Pinpoint::InAppTemplate"}))
    ResourceType.add_member(:sage_maker_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerDomain", traits: {"smithy.api#enumValue" => "AWS::SageMaker::Domain"}))
    ResourceType.add_member(:transfer_agreement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TransferAgreement", traits: {"smithy.api#enumValue" => "AWS::Transfer::Agreement"}))
    ResourceType.add_member(:transfer_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TransferConnector", traits: {"smithy.api#enumValue" => "AWS::Transfer::Connector"}))
    ResourceType.add_member(:kinesis_firehose_delivery_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KinesisFirehoseDeliveryStream", traits: {"smithy.api#enumValue" => "AWS::KinesisFirehose::DeliveryStream"}))
    ResourceType.add_member(:amplify_branch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AmplifyBranch", traits: {"smithy.api#enumValue" => "AWS::Amplify::Branch"}))
    ResourceType.add_member(:app_integrations_event_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppIntegrationsEventIntegration", traits: {"smithy.api#enumValue" => "AWS::AppIntegrations::EventIntegration"}))
    ResourceType.add_member(:app_mesh_route, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppMeshRoute", traits: {"smithy.api#enumValue" => "AWS::AppMesh::Route"}))
    ResourceType.add_member(:athena_prepared_statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AthenaPreparedStatement", traits: {"smithy.api#enumValue" => "AWS::Athena::PreparedStatement"}))
    ResourceType.add_member(:ec2_ipam_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2IPAMScope", traits: {"smithy.api#enumValue" => "AWS::EC2::IPAMScope"}))
    ResourceType.add_member(:evidently_launch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EvidentlyLaunch", traits: {"smithy.api#enumValue" => "AWS::Evidently::Launch"}))
    ResourceType.add_member(:forecast_dataset_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ForecastDatasetGroup", traits: {"smithy.api#enumValue" => "AWS::Forecast::DatasetGroup"}))
    ResourceType.add_member(:greengrass_v2_component_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GreengrassV2ComponentVersion", traits: {"smithy.api#enumValue" => "AWS::GreengrassV2::ComponentVersion"}))
    ResourceType.add_member(:ground_station_mission_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GroundStationMissionProfile", traits: {"smithy.api#enumValue" => "AWS::GroundStation::MissionProfile"}))
    ResourceType.add_member(:media_connect_flow_entitlement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MediaConnectFlowEntitlement", traits: {"smithy.api#enumValue" => "AWS::MediaConnect::FlowEntitlement"}))
    ResourceType.add_member(:media_connect_flow_vpc_interface, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MediaConnectFlowVpcInterface", traits: {"smithy.api#enumValue" => "AWS::MediaConnect::FlowVpcInterface"}))
    ResourceType.add_member(:media_tailor_playback_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MediaTailorPlaybackConfiguration", traits: {"smithy.api#enumValue" => "AWS::MediaTailor::PlaybackConfiguration"}))
    ResourceType.add_member(:msk_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MSKConfiguration", traits: {"smithy.api#enumValue" => "AWS::MSK::Configuration"}))
    ResourceType.add_member(:personalize_dataset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PersonalizeDataset", traits: {"smithy.api#enumValue" => "AWS::Personalize::Dataset"}))
    ResourceType.add_member(:personalize_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PersonalizeSchema", traits: {"smithy.api#enumValue" => "AWS::Personalize::Schema"}))
    ResourceType.add_member(:personalize_solution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PersonalizeSolution", traits: {"smithy.api#enumValue" => "AWS::Personalize::Solution"}))
    ResourceType.add_member(:pinpoint_email_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PinpointEmailTemplate", traits: {"smithy.api#enumValue" => "AWS::Pinpoint::EmailTemplate"}))
    ResourceType.add_member(:pinpoint_event_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PinpointEventStream", traits: {"smithy.api#enumValue" => "AWS::Pinpoint::EventStream"}))
    ResourceType.add_member(:resilience_hub_app, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResilienceHubApp", traits: {"smithy.api#enumValue" => "AWS::ResilienceHub::App"}))
    ResourceType.add_member(:acmpca_certificate_authority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACMPCACertificateAuthority", traits: {"smithy.api#enumValue" => "AWS::ACMPCA::CertificateAuthority"}))
    ResourceType.add_member(:app_config_hosted_configuration_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppConfigHostedConfigurationVersion", traits: {"smithy.api#enumValue" => "AWS::AppConfig::HostedConfigurationVersion"}))
    ResourceType.add_member(:app_mesh_virtual_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppMeshVirtualGateway", traits: {"smithy.api#enumValue" => "AWS::AppMesh::VirtualGateway"}))
    ResourceType.add_member(:app_mesh_virtual_router, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppMeshVirtualRouter", traits: {"smithy.api#enumValue" => "AWS::AppMesh::VirtualRouter"}))
    ResourceType.add_member(:app_runner_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppRunnerService", traits: {"smithy.api#enumValue" => "AWS::AppRunner::Service"}))
    ResourceType.add_member(:customer_profiles_object_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CustomerProfilesObjectType", traits: {"smithy.api#enumValue" => "AWS::CustomerProfiles::ObjectType"}))
    ResourceType.add_member(:dms_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DMSEndpoint", traits: {"smithy.api#enumValue" => "AWS::DMS::Endpoint"}))
    ResourceType.add_member(:ec2_capacity_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2CapacityReservation", traits: {"smithy.api#enumValue" => "AWS::EC2::CapacityReservation"}))
    ResourceType.add_member(:ec2_client_vpn_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2ClientVpnEndpoint", traits: {"smithy.api#enumValue" => "AWS::EC2::ClientVpnEndpoint"}))
    ResourceType.add_member(:kendra_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KendraIndex", traits: {"smithy.api#enumValue" => "AWS::Kendra::Index"}))
    ResourceType.add_member(:kinesis_video_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KinesisVideoStream", traits: {"smithy.api#enumValue" => "AWS::KinesisVideo::Stream"}))
    ResourceType.add_member(:logs_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LogsDestination", traits: {"smithy.api#enumValue" => "AWS::Logs::Destination"}))
    ResourceType.add_member(:pinpoint_email_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PinpointEmailChannel", traits: {"smithy.api#enumValue" => "AWS::Pinpoint::EmailChannel"}))
    ResourceType.add_member(:s3_access_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3AccessPoint", traits: {"smithy.api#enumValue" => "AWS::S3::AccessPoint"}))
    ResourceType.add_member(:network_manager_customer_gateway_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkManagerCustomerGatewayAssociation", traits: {"smithy.api#enumValue" => "AWS::NetworkManager::CustomerGatewayAssociation"}))
    ResourceType.add_member(:network_manager_link_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkManagerLinkAssociation", traits: {"smithy.api#enumValue" => "AWS::NetworkManager::LinkAssociation"}))
    ResourceType.add_member(:io_t_wireless_multicast_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTWirelessMulticastGroup", traits: {"smithy.api#enumValue" => "AWS::IoTWireless::MulticastGroup"}))
    ResourceType.add_member(:personalize_dataset_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PersonalizeDatasetGroup", traits: {"smithy.api#enumValue" => "AWS::Personalize::DatasetGroup"}))
    ResourceType.add_member(:io_t_twin_maker_component_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTTwinMakerComponentType", traits: {"smithy.api#enumValue" => "AWS::IoTTwinMaker::ComponentType"}))
    ResourceType.add_member(:code_build_report_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CodeBuildReportGroup", traits: {"smithy.api#enumValue" => "AWS::CodeBuild::ReportGroup"}))
    ResourceType.add_member(:sage_maker_feature_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerFeatureGroup", traits: {"smithy.api#enumValue" => "AWS::SageMaker::FeatureGroup"}))
    ResourceType.add_member(:msk_batch_scram_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MSKBatchScramSecret", traits: {"smithy.api#enumValue" => "AWS::MSK::BatchScramSecret"}))
    ResourceType.add_member(:app_stream_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppStreamStack", traits: {"smithy.api#enumValue" => "AWS::AppStream::Stack"}))
    ResourceType.add_member(:io_t_job_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTJobTemplate", traits: {"smithy.api#enumValue" => "AWS::IoT::JobTemplate"}))
    ResourceType.add_member(:io_t_wireless_fuota_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTWirelessFuotaTask", traits: {"smithy.api#enumValue" => "AWS::IoTWireless::FuotaTask"}))
    ResourceType.add_member(:io_t_provisioning_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTProvisioningTemplate", traits: {"smithy.api#enumValue" => "AWS::IoT::ProvisioningTemplate"}))
    ResourceType.add_member(:inspector_v2_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InspectorV2Filter", traits: {"smithy.api#enumValue" => "AWS::InspectorV2::Filter"}))
    ResourceType.add_member(:route53_resolver_resolver_query_logging_config_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53ResolverResolverQueryLoggingConfigAssociation", traits: {"smithy.api#enumValue" => "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation"}))
    ResourceType.add_member(:service_discovery_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ServiceDiscoveryInstance", traits: {"smithy.api#enumValue" => "AWS::ServiceDiscovery::Instance"}))
    ResourceType.add_member(:transfer_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TransferCertificate", traits: {"smithy.api#enumValue" => "AWS::Transfer::Certificate"}))
    ResourceType.add_member(:media_connect_flow_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MediaConnectFlowSource", traits: {"smithy.api#enumValue" => "AWS::MediaConnect::FlowSource"}))
    ResourceType.add_member(:aps_rule_groups_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APSRuleGroupsNamespace", traits: {"smithy.api#enumValue" => "AWS::APS::RuleGroupsNamespace"}))
    ResourceType.add_member(:code_guru_profiler_profiling_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CodeGuruProfilerProfilingGroup", traits: {"smithy.api#enumValue" => "AWS::CodeGuruProfiler::ProfilingGroup"}))
    ResourceType.add_member(:route53_resolver_resolver_query_logging_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53ResolverResolverQueryLoggingConfig", traits: {"smithy.api#enumValue" => "AWS::Route53Resolver::ResolverQueryLoggingConfig"}))
    ResourceType.add_member(:batch_scheduling_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BatchSchedulingPolicy", traits: {"smithy.api#enumValue" => "AWS::Batch::SchedulingPolicy"}))
    ResourceType.add_member(:acmpca_certificate_authority_activation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACMPCACertificateAuthorityActivation", traits: {"smithy.api#enumValue" => "AWS::ACMPCA::CertificateAuthorityActivation"}))
    ResourceType.add_member(:app_mesh_gateway_route, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppMeshGatewayRoute", traits: {"smithy.api#enumValue" => "AWS::AppMesh::GatewayRoute"}))
    ResourceType.add_member(:app_mesh_mesh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppMeshMesh", traits: {"smithy.api#enumValue" => "AWS::AppMesh::Mesh"}))
    ResourceType.add_member(:connect_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConnectInstance", traits: {"smithy.api#enumValue" => "AWS::Connect::Instance"}))
    ResourceType.add_member(:connect_quick_connect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConnectQuickConnect", traits: {"smithy.api#enumValue" => "AWS::Connect::QuickConnect"}))
    ResourceType.add_member(:ec2_carrier_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2CarrierGateway", traits: {"smithy.api#enumValue" => "AWS::EC2::CarrierGateway"}))
    ResourceType.add_member(:ec2_ipam_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2IPAMPool", traits: {"smithy.api#enumValue" => "AWS::EC2::IPAMPool"}))
    ResourceType.add_member(:ec2_transit_gateway_connect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2TransitGatewayConnect", traits: {"smithy.api#enumValue" => "AWS::EC2::TransitGatewayConnect"}))
    ResourceType.add_member(:ec2_transit_gateway_multicast_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2TransitGatewayMulticastDomain", traits: {"smithy.api#enumValue" => "AWS::EC2::TransitGatewayMulticastDomain"}))
    ResourceType.add_member(:ecs_capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECSCapacityProvider", traits: {"smithy.api#enumValue" => "AWS::ECS::CapacityProvider"}))
    ResourceType.add_member(:iam_instance_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAMInstanceProfile", traits: {"smithy.api#enumValue" => "AWS::IAM::InstanceProfile"}))
    ResourceType.add_member(:io_tca_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTCACertificate", traits: {"smithy.api#enumValue" => "AWS::IoT::CACertificate"}))
    ResourceType.add_member(:io_t_twin_maker_sync_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IoTTwinMakerSyncJob", traits: {"smithy.api#enumValue" => "AWS::IoTTwinMaker::SyncJob"}))
    ResourceType.add_member(:kafka_connect_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KafkaConnectConnector", traits: {"smithy.api#enumValue" => "AWS::KafkaConnect::Connector"}))
    ResourceType.add_member(:lambda_code_signing_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaCodeSigningConfig", traits: {"smithy.api#enumValue" => "AWS::Lambda::CodeSigningConfig"}))
    ResourceType.add_member(:network_manager_connect_peer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NetworkManagerConnectPeer", traits: {"smithy.api#enumValue" => "AWS::NetworkManager::ConnectPeer"}))
    ResourceType.add_member(:resource_explorer2_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceExplorer2Index", traits: {"smithy.api#enumValue" => "AWS::ResourceExplorer2::Index"}))
    ResourceType.add_member(:app_stream_fleet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppStreamFleet", traits: {"smithy.api#enumValue" => "AWS::AppStream::Fleet"}))
    ResourceType.add_member(:cognito_user_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CognitoUserPool", traits: {"smithy.api#enumValue" => "AWS::Cognito::UserPool"}))
    ResourceType.add_member(:cognito_user_pool_client, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CognitoUserPoolClient", traits: {"smithy.api#enumValue" => "AWS::Cognito::UserPoolClient"}))
    ResourceType.add_member(:cognito_user_pool_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CognitoUserPoolGroup", traits: {"smithy.api#enumValue" => "AWS::Cognito::UserPoolGroup"}))
    ResourceType.add_member(:ec2_network_insights_access_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2NetworkInsightsAccessScope", traits: {"smithy.api#enumValue" => "AWS::EC2::NetworkInsightsAccessScope"}))
    ResourceType.add_member(:ec2_network_insights_analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2NetworkInsightsAnalysis", traits: {"smithy.api#enumValue" => "AWS::EC2::NetworkInsightsAnalysis"}))
    ResourceType.add_member(:grafana_workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GrafanaWorkspace", traits: {"smithy.api#enumValue" => "AWS::Grafana::Workspace"}))
    ResourceType.add_member(:ground_station_dataflow_endpoint_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GroundStationDataflowEndpointGroup", traits: {"smithy.api#enumValue" => "AWS::GroundStation::DataflowEndpointGroup"}))
    ResourceType.add_member(:image_builder_image_recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ImageBuilderImageRecipe", traits: {"smithy.api#enumValue" => "AWS::ImageBuilder::ImageRecipe"}))
    ResourceType.add_member(:kms_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMSAlias", traits: {"smithy.api#enumValue" => "AWS::KMS::Alias"}))
    ResourceType.add_member(:m2_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "M2Environment", traits: {"smithy.api#enumValue" => "AWS::M2::Environment"}))
    ResourceType.add_member(:quick_sight_data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QuickSightDataSource", traits: {"smithy.api#enumValue" => "AWS::QuickSight::DataSource"}))
    ResourceType.add_member(:quick_sight_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QuickSightTemplate", traits: {"smithy.api#enumValue" => "AWS::QuickSight::Template"}))
    ResourceType.add_member(:quick_sight_theme, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QuickSightTheme", traits: {"smithy.api#enumValue" => "AWS::QuickSight::Theme"}))
    ResourceType.add_member(:rds_option_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDSOptionGroup", traits: {"smithy.api#enumValue" => "AWS::RDS::OptionGroup"}))
    ResourceType.add_member(:redshift_endpoint_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RedshiftEndpointAccess", traits: {"smithy.api#enumValue" => "AWS::Redshift::EndpointAccess"}))
    ResourceType.add_member(:route53_resolver_firewall_rule_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53ResolverFirewallRuleGroup", traits: {"smithy.api#enumValue" => "AWS::Route53Resolver::FirewallRuleGroup"}))
    ResourceType.add_member(:ssm_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSMDocument", traits: {"smithy.api#enumValue" => "AWS::SSM::Document"}))
    ResourceType.add_member(:app_config_extension_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppConfigExtensionAssociation", traits: {"smithy.api#enumValue" => "AWS::AppConfig::ExtensionAssociation"}))
    ResourceType.add_member(:app_integrations_application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppIntegrationsApplication", traits: {"smithy.api#enumValue" => "AWS::AppIntegrations::Application"}))
    ResourceType.add_member(:app_sync_api_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppSyncApiCache", traits: {"smithy.api#enumValue" => "AWS::AppSync::ApiCache"}))
    ResourceType.add_member(:bedrock_guardrail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BedrockGuardrail", traits: {"smithy.api#enumValue" => "AWS::Bedrock::Guardrail"}))
    ResourceType.add_member(:bedrock_knowledge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BedrockKnowledgeBase", traits: {"smithy.api#enumValue" => "AWS::Bedrock::KnowledgeBase"}))
    ResourceType.add_member(:cognito_identity_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CognitoIdentityPool", traits: {"smithy.api#enumValue" => "AWS::Cognito::IdentityPool"}))
    ResourceType.add_member(:connect_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConnectRule", traits: {"smithy.api#enumValue" => "AWS::Connect::Rule"}))
    ResourceType.add_member(:connect_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConnectUser", traits: {"smithy.api#enumValue" => "AWS::Connect::User"}))
    ResourceType.add_member(:ec2_client_vpn_target_network_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2ClientVpnTargetNetworkAssociation", traits: {"smithy.api#enumValue" => "AWS::EC2::ClientVpnTargetNetworkAssociation"}))
    ResourceType.add_member(:ec2_eip_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2EIPAssociation", traits: {"smithy.api#enumValue" => "AWS::EC2::EIPAssociation"}))
    ResourceType.add_member(:ec2_ipam_resource_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2IPAMResourceDiscovery", traits: {"smithy.api#enumValue" => "AWS::EC2::IPAMResourceDiscovery"}))
    ResourceType.add_member(:ec2_ipam_resource_discovery_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2IPAMResourceDiscoveryAssociation", traits: {"smithy.api#enumValue" => "AWS::EC2::IPAMResourceDiscoveryAssociation"}))
    ResourceType.add_member(:ec2_instance_connect_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2InstanceConnectEndpoint", traits: {"smithy.api#enumValue" => "AWS::EC2::InstanceConnectEndpoint"}))
    ResourceType.add_member(:ec2_snapshot_block_public_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2SnapshotBlockPublicAccess", traits: {"smithy.api#enumValue" => "AWS::EC2::SnapshotBlockPublicAccess"}))
    ResourceType.add_member(:ec2_vpc_block_public_access_exclusion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2VPCBlockPublicAccessExclusion", traits: {"smithy.api#enumValue" => "AWS::EC2::VPCBlockPublicAccessExclusion"}))
    ResourceType.add_member(:ec2_vpc_block_public_access_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2VPCBlockPublicAccessOptions", traits: {"smithy.api#enumValue" => "AWS::EC2::VPCBlockPublicAccessOptions"}))
    ResourceType.add_member(:ec2_vpc_endpoint_connection_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2VPCEndpointConnectionNotification", traits: {"smithy.api#enumValue" => "AWS::EC2::VPCEndpointConnectionNotification"}))
    ResourceType.add_member(:ec2_vpn_connection_route, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2VPNConnectionRoute", traits: {"smithy.api#enumValue" => "AWS::EC2::VPNConnectionRoute"}))
    ResourceType.add_member(:evidently_segment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EvidentlySegment", traits: {"smithy.api#enumValue" => "AWS::Evidently::Segment"}))
    ResourceType.add_member(:iamoidc_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAMOIDCProvider", traits: {"smithy.api#enumValue" => "AWS::IAM::OIDCProvider"}))
    ResourceType.add_member(:inspector_v2_activation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InspectorV2Activation", traits: {"smithy.api#enumValue" => "AWS::InspectorV2::Activation"}))
    ResourceType.add_member(:msk_cluster_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MSKClusterPolicy", traits: {"smithy.api#enumValue" => "AWS::MSK::ClusterPolicy"}))
    ResourceType.add_member(:msk_vpc_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MSKVpcConnection", traits: {"smithy.api#enumValue" => "AWS::MSK::VpcConnection"}))
    ResourceType.add_member(:media_connect_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MediaConnectGateway", traits: {"smithy.api#enumValue" => "AWS::MediaConnect::Gateway"}))
    ResourceType.add_member(:memory_db_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MemoryDBSubnetGroup", traits: {"smithy.api#enumValue" => "AWS::MemoryDB::SubnetGroup"}))
    ResourceType.add_member(:open_search_serverless_collection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OpenSearchServerlessCollection", traits: {"smithy.api#enumValue" => "AWS::OpenSearchServerless::Collection"}))
    ResourceType.add_member(:open_search_serverless_vpc_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OpenSearchServerlessVpcEndpoint", traits: {"smithy.api#enumValue" => "AWS::OpenSearchServerless::VpcEndpoint"}))
    ResourceType.add_member(:redshift_endpoint_authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RedshiftEndpointAuthorization", traits: {"smithy.api#enumValue" => "AWS::Redshift::EndpointAuthorization"}))
    ResourceType.add_member(:route53_profiles_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Route53ProfilesProfile", traits: {"smithy.api#enumValue" => "AWS::Route53Profiles::Profile"}))
    ResourceType.add_member(:s3_storage_lens_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3StorageLensGroup", traits: {"smithy.api#enumValue" => "AWS::S3::StorageLensGroup"}))
    ResourceType.add_member(:s3_express_bucket_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3ExpressBucketPolicy", traits: {"smithy.api#enumValue" => "AWS::S3Express::BucketPolicy"}))
    ResourceType.add_member(:s3_express_directory_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3ExpressDirectoryBucket", traits: {"smithy.api#enumValue" => "AWS::S3Express::DirectoryBucket"}))
    ResourceType.add_member(:sage_maker_inference_experiment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerInferenceExperiment", traits: {"smithy.api#enumValue" => "AWS::SageMaker::InferenceExperiment"}))
    ResourceType.add_member(:security_hub_standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SecurityHubStandard", traits: {"smithy.api#enumValue" => "AWS::SecurityHub::Standard"}))
    ResourceType.add_member(:transfer_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TransferProfile", traits: {"smithy.api#enumValue" => "AWS::Transfer::Profile"}))
    ResourceTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "member")
    ResourceTypeValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeValue, name: "member")
    ResourceTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "member")
    ResourceTypesScope.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "member")
    ResourceValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceValueType, name: "Value", traits: {"smithy.api#required" => {}}))
    ResourceValue.type = Types::ResourceValue
    ResourceValueType.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ID", traits: {"smithy.api#enumValue" => "RESOURCE_ID"}))
    Results.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    RetentionConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionConfigurationName, name: "Name", traits: {"smithy.api#required" => {}}))
    RetentionConfiguration.add_member(:retention_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodInDays, name: "RetentionPeriodInDays", traits: {"smithy.api#required" => {}}))
    RetentionConfiguration.type = Types::RetentionConfiguration
    RetentionConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionConfiguration, name: "member")
    RetentionConfigurationNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionConfigurationName, name: "member")
    Scope.add_member(:compliance_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceResourceTypes, name: "ComplianceResourceTypes"))
    Scope.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit128, name: "TagKey"))
    Scope.add_member(:tag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "TagValue"))
    Scope.add_member(:compliance_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BaseResourceId, name: "ComplianceResourceId"))
    Scope.type = Types::Scope
    SelectAggregateResourceConfigRequest.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression", traits: {"smithy.api#required" => {}}))
    SelectAggregateResourceConfigRequest.add_member(:configuration_aggregator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationAggregatorName, name: "ConfigurationAggregatorName", traits: {"smithy.api#required" => {}}))
    SelectAggregateResourceConfigRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit", traits: {"smithy.api#default" => 0}))
    SelectAggregateResourceConfigRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "MaxResults", traits: {"smithy.api#default" => 0}))
    SelectAggregateResourceConfigRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    SelectAggregateResourceConfigRequest.type = Types::SelectAggregateResourceConfigRequest
    SelectAggregateResourceConfigResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: Results, name: "Results"))
    SelectAggregateResourceConfigResponse.add_member(:query_info, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryInfo, name: "QueryInfo"))
    SelectAggregateResourceConfigResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    SelectAggregateResourceConfigResponse.type = Types::SelectAggregateResourceConfigResponse
    SelectResourceConfigRequest.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression", traits: {"smithy.api#required" => {}}))
    SelectResourceConfigRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "Limit", traits: {"smithy.api#default" => 0}))
    SelectResourceConfigRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    SelectResourceConfigRequest.type = Types::SelectResourceConfigRequest
    SelectResourceConfigResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: Results, name: "Results"))
    SelectResourceConfigResponse.add_member(:query_info, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryInfo, name: "QueryInfo"))
    SelectResourceConfigResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    SelectResourceConfigResponse.type = Types::SelectResourceConfigResponse
    ServicePrincipalValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePrincipalValue, name: "member")
    SortBy.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCORE", traits: {"smithy.api#enumValue" => "SCORE"}))
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    Source.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner", traits: {"smithy.api#required" => {}}))
    Source.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "SourceIdentifier"))
    Source.add_member(:source_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceDetails, name: "SourceDetails"))
    Source.add_member(:custom_policy_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomPolicyDetails, name: "CustomPolicyDetails"))
    Source.type = Types::Source
    SourceDetail.add_member(:event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSource, name: "EventSource"))
    SourceDetail.add_member(:message_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageType, name: "MessageType"))
    SourceDetail.add_member(:maximum_execution_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumExecutionFrequency, name: "MaximumExecutionFrequency"))
    SourceDetail.type = Types::SourceDetail
    SourceDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SourceDetail, name: "member")
    SsmControls.add_member(:concurrent_execution_rate_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "ConcurrentExecutionRatePercentage"))
    SsmControls.add_member(:error_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "ErrorPercentage"))
    SsmControls.type = Types::SsmControls
    StartConfigRulesEvaluationRequest.add_member(:config_rule_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ReevaluateConfigRuleNames, name: "ConfigRuleNames"))
    StartConfigRulesEvaluationRequest.type = Types::StartConfigRulesEvaluationRequest
    StartConfigRulesEvaluationResponse.type = Types::StartConfigRulesEvaluationResponse
    StartConfigurationRecorderRequest.add_member(:configuration_recorder_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecorderName, name: "ConfigurationRecorderName", traits: {"smithy.api#required" => {}}))
    StartConfigurationRecorderRequest.type = Types::StartConfigurationRecorderRequest
    StartRemediationExecutionRequest.add_member(:config_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRuleName, name: "ConfigRuleName", traits: {"smithy.api#required" => {}}))
    StartRemediationExecutionRequest.add_member(:resource_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceKeys, name: "ResourceKeys", traits: {"smithy.api#required" => {}}))
    StartRemediationExecutionRequest.type = Types::StartRemediationExecutionRequest
    StartRemediationExecutionResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureMessage"))
    StartRemediationExecutionResponse.add_member(:failed_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceKeys, name: "FailedItems"))
    StartRemediationExecutionResponse.type = Types::StartRemediationExecutionResponse
    StartResourceEvaluationRequest.add_member(:resource_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetails, name: "ResourceDetails", traits: {"smithy.api#required" => {}}))
    StartResourceEvaluationRequest.add_member(:evaluation_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationContext, name: "EvaluationContext"))
    StartResourceEvaluationRequest.add_member(:evaluation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationMode, name: "EvaluationMode", traits: {"smithy.api#required" => {}}))
    StartResourceEvaluationRequest.add_member(:evaluation_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationTimeout, name: "EvaluationTimeout", traits: {"smithy.api#default" => 0}))
    StartResourceEvaluationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken"))
    StartResourceEvaluationRequest.type = Types::StartResourceEvaluationRequest
    StartResourceEvaluationResponse.add_member(:resource_evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceEvaluationId, name: "ResourceEvaluationId"))
    StartResourceEvaluationResponse.type = Types::StartResourceEvaluationResponse
    StaticParameterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithCharLimit256, name: "member")
    StaticValue.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: StaticParameterValues, name: "Values", traits: {"smithy.api#required" => {}}))
    StaticValue.type = Types::StaticValue
    StatusDetailFilters.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    StatusDetailFilters.add_member(:member_account_rule_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAccountRuleStatus, name: "MemberAccountRuleStatus"))
    StatusDetailFilters.type = Types::StatusDetailFilters
    StopConfigurationRecorderRequest.add_member(:configuration_recorder_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecorderName, name: "ConfigurationRecorderName", traits: {"smithy.api#required" => {}}))
    StopConfigurationRecorderRequest.type = Types::StopConfigurationRecorderRequest
    StoredQuery.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryId, name: "QueryId"))
    StoredQuery.add_member(:query_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryArn, name: "QueryArn"))
    StoredQuery.add_member(:query_name, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryName, name: "QueryName", traits: {"smithy.api#required" => {}}))
    StoredQuery.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryDescription, name: "Description"))
    StoredQuery.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryExpression, name: "Expression"))
    StoredQuery.type = Types::StoredQuery
    StoredQueryMetadata.add_member(:query_id, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryId, name: "QueryId", traits: {"smithy.api#required" => {}}))
    StoredQueryMetadata.add_member(:query_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryArn, name: "QueryArn", traits: {"smithy.api#required" => {}}))
    StoredQueryMetadata.add_member(:query_name, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryName, name: "QueryName", traits: {"smithy.api#required" => {}}))
    StoredQueryMetadata.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryDescription, name: "Description"))
    StoredQueryMetadata.type = Types::StoredQueryMetadata
    StoredQueryMetadataList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StoredQueryMetadata, name: "member")
    SupplementaryConfiguration.key = ::Smithy::Schema::Shapes::MemberShape.new(target: SupplementaryConfigurationName, name: "key")
    SupplementaryConfiguration.value = ::Smithy::Schema::Shapes::MemberShape.new(target: SupplementaryConfigurationValue, name: "value")
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "key")
    Tags.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "value")
    TagsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TemplateSSMDocumentDetails.add_member(:document_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SSMDocumentName, name: "DocumentName", traits: {"smithy.api#required" => {}}))
    TemplateSSMDocumentDetails.add_member(:document_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SSMDocumentVersion, name: "DocumentVersion"))
    TemplateSSMDocumentDetails.type = Types::TemplateSSMDocumentDetails
    TimeWindow.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "StartTime"))
    TimeWindow.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EndTime"))
    TimeWindow.type = Types::TimeWindow
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TooManyTagsException.type = Types::TooManyTagsException
    UnmodifiableEntityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    UnmodifiableEntityException.type = Types::UnmodifiableEntityException
    UnprocessedResourceIdentifierList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AggregateResourceIdentifier, name: "member")
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ValidationException.type = Types::ValidationException

    StarlingDoveService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.configservice#StarlingDoveService"
      service.name = "StarlingDoveService"
      service.version = "2014-11-12"
      service.traits = {"aws.api#service" => {"sdkId" => "Config Service", "arnNamespace" => "config", "cloudFormationName" => "Config", "cloudTrailEventSource" => "configservice.amazonaws.com", "docId" => "config-2014-11-12", "endpointPrefix" => "config"}, "aws.auth#sigv4" => {"name" => "config"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Config", "smithy.api#xmlNamespace" => {"uri" => "http://config.amazonaws.com/doc/2014-11-12/"}}
      service.add_operation(:associate_resource_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#AssociateResourceTypes"
        operation.name = "AssociateResourceTypes"
        operation.input = AssociateResourceTypesRequest
        operation.output = AssociateResourceTypesResponse
        operation.errors << ConflictException
        operation.errors << NoSuchConfigurationRecorderException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_aggregate_resource_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#BatchGetAggregateResourceConfig"
        operation.name = "BatchGetAggregateResourceConfig"
        operation.input = BatchGetAggregateResourceConfigRequest
        operation.output = BatchGetAggregateResourceConfigResponse
        operation.errors << NoSuchConfigurationAggregatorException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_resource_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#BatchGetResourceConfig"
        operation.name = "BatchGetResourceConfig"
        operation.input = BatchGetResourceConfigRequest
        operation.output = BatchGetResourceConfigResponse
        operation.errors << NoAvailableConfigurationRecorderException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_aggregation_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeleteAggregationAuthorization"
        operation.name = "DeleteAggregationAuthorization"
        operation.input = DeleteAggregationAuthorizationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:delete_config_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeleteConfigRule"
        operation.name = "DeleteConfigRule"
        operation.input = DeleteConfigRuleRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NoSuchConfigRuleException
        operation.errors << ResourceInUseException
        operation.traits = {}
      end)
      service.add_operation(:delete_configuration_aggregator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeleteConfigurationAggregator"
        operation.name = "DeleteConfigurationAggregator"
        operation.input = DeleteConfigurationAggregatorRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NoSuchConfigurationAggregatorException
        operation.traits = {}
      end)
      service.add_operation(:delete_configuration_recorder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeleteConfigurationRecorder"
        operation.name = "DeleteConfigurationRecorder"
        operation.input = DeleteConfigurationRecorderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NoSuchConfigurationRecorderException
        operation.errors << UnmodifiableEntityException
        operation.traits = {}
      end)
      service.add_operation(:delete_conformance_pack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeleteConformancePack"
        operation.name = "DeleteConformancePack"
        operation.input = DeleteConformancePackRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NoSuchConformancePackException
        operation.errors << ResourceInUseException
        operation.traits = {}
      end)
      service.add_operation(:delete_delivery_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeleteDeliveryChannel"
        operation.name = "DeleteDeliveryChannel"
        operation.input = DeleteDeliveryChannelRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << LastDeliveryChannelDeleteFailedException
        operation.errors << NoSuchDeliveryChannelException
        operation.traits = {}
      end)
      service.add_operation(:delete_evaluation_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeleteEvaluationResults"
        operation.name = "DeleteEvaluationResults"
        operation.input = DeleteEvaluationResultsRequest
        operation.output = DeleteEvaluationResultsResponse
        operation.errors << NoSuchConfigRuleException
        operation.errors << ResourceInUseException
        operation.traits = {}
      end)
      service.add_operation(:delete_organization_config_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeleteOrganizationConfigRule"
        operation.name = "DeleteOrganizationConfigRule"
        operation.input = DeleteOrganizationConfigRuleRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NoSuchOrganizationConfigRuleException
        operation.errors << OrganizationAccessDeniedException
        operation.errors << ResourceInUseException
        operation.traits = {}
      end)
      service.add_operation(:delete_organization_conformance_pack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeleteOrganizationConformancePack"
        operation.name = "DeleteOrganizationConformancePack"
        operation.input = DeleteOrganizationConformancePackRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NoSuchOrganizationConformancePackException
        operation.errors << OrganizationAccessDeniedException
        operation.errors << ResourceInUseException
        operation.traits = {}
      end)
      service.add_operation(:delete_pending_aggregation_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeletePendingAggregationRequest"
        operation.name = "DeletePendingAggregationRequest"
        operation.input = DeletePendingAggregationRequestRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:delete_remediation_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeleteRemediationConfiguration"
        operation.name = "DeleteRemediationConfiguration"
        operation.input = DeleteRemediationConfigurationRequest
        operation.output = DeleteRemediationConfigurationResponse
        operation.errors << InsufficientPermissionsException
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchRemediationConfigurationException
        operation.errors << RemediationInProgressException
        operation.traits = {}
      end)
      service.add_operation(:delete_remediation_exceptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeleteRemediationExceptions"
        operation.name = "DeleteRemediationExceptions"
        operation.input = DeleteRemediationExceptionsRequest
        operation.output = DeleteRemediationExceptionsResponse
        operation.errors << NoSuchRemediationExceptionException
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeleteResourceConfig"
        operation.name = "DeleteResourceConfig"
        operation.input = DeleteResourceConfigRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NoRunningConfigurationRecorderException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_retention_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeleteRetentionConfiguration"
        operation.name = "DeleteRetentionConfiguration"
        operation.input = DeleteRetentionConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchRetentionConfigurationException
        operation.traits = {}
      end)
      service.add_operation(:delete_service_linked_configuration_recorder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeleteServiceLinkedConfigurationRecorder"
        operation.name = "DeleteServiceLinkedConfigurationRecorder"
        operation.input = DeleteServiceLinkedConfigurationRecorderRequest
        operation.output = DeleteServiceLinkedConfigurationRecorderResponse
        operation.errors << ConflictException
        operation.errors << NoSuchConfigurationRecorderException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_stored_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeleteStoredQuery"
        operation.name = "DeleteStoredQuery"
        operation.input = DeleteStoredQueryRequest
        operation.output = DeleteStoredQueryResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:deliver_config_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DeliverConfigSnapshot"
        operation.name = "DeliverConfigSnapshot"
        operation.input = DeliverConfigSnapshotRequest
        operation.output = DeliverConfigSnapshotResponse
        operation.errors << NoAvailableConfigurationRecorderException
        operation.errors << NoRunningConfigurationRecorderException
        operation.errors << NoSuchDeliveryChannelException
        operation.traits = {}
      end)
      service.add_operation(:describe_aggregate_compliance_by_config_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeAggregateComplianceByConfigRules"
        operation.name = "DescribeAggregateComplianceByConfigRules"
        operation.input = DescribeAggregateComplianceByConfigRulesRequest
        operation.output = DescribeAggregateComplianceByConfigRulesResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoSuchConfigurationAggregatorException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAggregateComplianceByConfigRules.new
      end)
      service.add_operation(:describe_aggregate_compliance_by_conformance_packs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeAggregateComplianceByConformancePacks"
        operation.name = "DescribeAggregateComplianceByConformancePacks"
        operation.input = DescribeAggregateComplianceByConformancePacksRequest
        operation.output = DescribeAggregateComplianceByConformancePacksResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoSuchConfigurationAggregatorException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAggregateComplianceByConformancePacks.new
      end)
      service.add_operation(:describe_aggregation_authorizations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeAggregationAuthorizations"
        operation.name = "DescribeAggregationAuthorizations"
        operation.input = DescribeAggregationAuthorizationsRequest
        operation.output = DescribeAggregationAuthorizationsResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAggregationAuthorizations.new
      end)
      service.add_operation(:describe_compliance_by_config_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeComplianceByConfigRule"
        operation.name = "DescribeComplianceByConfigRule"
        operation.input = DescribeComplianceByConfigRuleRequest
        operation.output = DescribeComplianceByConfigRuleResponse
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchConfigRuleException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeComplianceByConfigRule.new
      end)
      service.add_operation(:describe_compliance_by_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeComplianceByResource"
        operation.name = "DescribeComplianceByResource"
        operation.input = DescribeComplianceByResourceRequest
        operation.output = DescribeComplianceByResourceResponse
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeComplianceByResource.new
      end)
      service.add_operation(:describe_config_rule_evaluation_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeConfigRuleEvaluationStatus"
        operation.name = "DescribeConfigRuleEvaluationStatus"
        operation.input = DescribeConfigRuleEvaluationStatusRequest
        operation.output = DescribeConfigRuleEvaluationStatusResponse
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchConfigRuleException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeConfigRuleEvaluationStatus.new
      end)
      service.add_operation(:describe_config_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeConfigRules"
        operation.name = "DescribeConfigRules"
        operation.input = DescribeConfigRulesRequest
        operation.output = DescribeConfigRulesResponse
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchConfigRuleException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeConfigRules.new
      end)
      service.add_operation(:describe_configuration_aggregator_sources_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeConfigurationAggregatorSourcesStatus"
        operation.name = "DescribeConfigurationAggregatorSourcesStatus"
        operation.input = DescribeConfigurationAggregatorSourcesStatusRequest
        operation.output = DescribeConfigurationAggregatorSourcesStatusResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchConfigurationAggregatorException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeConfigurationAggregatorSourcesStatus.new
      end)
      service.add_operation(:describe_configuration_aggregators, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeConfigurationAggregators"
        operation.name = "DescribeConfigurationAggregators"
        operation.input = DescribeConfigurationAggregatorsRequest
        operation.output = DescribeConfigurationAggregatorsResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchConfigurationAggregatorException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeConfigurationAggregators.new
      end)
      service.add_operation(:describe_configuration_recorder_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeConfigurationRecorderStatus"
        operation.name = "DescribeConfigurationRecorderStatus"
        operation.input = DescribeConfigurationRecorderStatusRequest
        operation.output = DescribeConfigurationRecorderStatusResponse
        operation.errors << NoSuchConfigurationRecorderException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_configuration_recorders, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeConfigurationRecorders"
        operation.name = "DescribeConfigurationRecorders"
        operation.input = DescribeConfigurationRecordersRequest
        operation.output = DescribeConfigurationRecordersResponse
        operation.errors << NoSuchConfigurationRecorderException
        operation.errors << ValidationException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeConfigurationRecordersSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:describe_conformance_pack_compliance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeConformancePackCompliance"
        operation.name = "DescribeConformancePackCompliance"
        operation.input = DescribeConformancePackComplianceRequest
        operation.output = DescribeConformancePackComplianceResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchConfigRuleInConformancePackException
        operation.errors << NoSuchConformancePackException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeConformancePackCompliance.new
      end)
      service.add_operation(:describe_conformance_pack_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeConformancePackStatus"
        operation.name = "DescribeConformancePackStatus"
        operation.input = DescribeConformancePackStatusRequest
        operation.output = DescribeConformancePackStatusResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeConformancePackStatus.new
      end)
      service.add_operation(:describe_conformance_packs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeConformancePacks"
        operation.name = "DescribeConformancePacks"
        operation.input = DescribeConformancePacksRequest
        operation.output = DescribeConformancePacksResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchConformancePackException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeConformancePacks.new
      end)
      service.add_operation(:describe_delivery_channel_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeDeliveryChannelStatus"
        operation.name = "DescribeDeliveryChannelStatus"
        operation.input = DescribeDeliveryChannelStatusRequest
        operation.output = DescribeDeliveryChannelStatusResponse
        operation.errors << NoSuchDeliveryChannelException
        operation.traits = {}
      end)
      service.add_operation(:describe_delivery_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeDeliveryChannels"
        operation.name = "DescribeDeliveryChannels"
        operation.input = DescribeDeliveryChannelsRequest
        operation.output = DescribeDeliveryChannelsResponse
        operation.errors << NoSuchDeliveryChannelException
        operation.traits = {}
      end)
      service.add_operation(:describe_organization_config_rule_statuses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeOrganizationConfigRuleStatuses"
        operation.name = "DescribeOrganizationConfigRuleStatuses"
        operation.input = DescribeOrganizationConfigRuleStatusesRequest
        operation.output = DescribeOrganizationConfigRuleStatusesResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoSuchOrganizationConfigRuleException
        operation.errors << OrganizationAccessDeniedException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOrganizationConfigRuleStatuses.new
      end)
      service.add_operation(:describe_organization_config_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeOrganizationConfigRules"
        operation.name = "DescribeOrganizationConfigRules"
        operation.input = DescribeOrganizationConfigRulesRequest
        operation.output = DescribeOrganizationConfigRulesResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoSuchOrganizationConfigRuleException
        operation.errors << OrganizationAccessDeniedException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOrganizationConfigRules.new
      end)
      service.add_operation(:describe_organization_conformance_pack_statuses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeOrganizationConformancePackStatuses"
        operation.name = "DescribeOrganizationConformancePackStatuses"
        operation.input = DescribeOrganizationConformancePackStatusesRequest
        operation.output = DescribeOrganizationConformancePackStatusesResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoSuchOrganizationConformancePackException
        operation.errors << OrganizationAccessDeniedException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOrganizationConformancePackStatuses.new
      end)
      service.add_operation(:describe_organization_conformance_packs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeOrganizationConformancePacks"
        operation.name = "DescribeOrganizationConformancePacks"
        operation.input = DescribeOrganizationConformancePacksRequest
        operation.output = DescribeOrganizationConformancePacksResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoSuchOrganizationConformancePackException
        operation.errors << OrganizationAccessDeniedException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOrganizationConformancePacks.new
      end)
      service.add_operation(:describe_pending_aggregation_requests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribePendingAggregationRequests"
        operation.name = "DescribePendingAggregationRequests"
        operation.input = DescribePendingAggregationRequestsRequest
        operation.output = DescribePendingAggregationRequestsResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePendingAggregationRequests.new
      end)
      service.add_operation(:describe_remediation_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeRemediationConfigurations"
        operation.name = "DescribeRemediationConfigurations"
        operation.input = DescribeRemediationConfigurationsRequest
        operation.output = DescribeRemediationConfigurationsResponse
        operation.traits = {}
      end)
      service.add_operation(:describe_remediation_exceptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeRemediationExceptions"
        operation.name = "DescribeRemediationExceptions"
        operation.input = DescribeRemediationExceptionsRequest
        operation.output = DescribeRemediationExceptionsResponse
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRemediationExceptions.new
      end)
      service.add_operation(:describe_remediation_execution_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeRemediationExecutionStatus"
        operation.name = "DescribeRemediationExecutionStatus"
        operation.input = DescribeRemediationExecutionStatusRequest
        operation.output = DescribeRemediationExecutionStatusResponse
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchRemediationConfigurationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRemediationExecutionStatus.new
      end)
      service.add_operation(:describe_retention_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DescribeRetentionConfigurations"
        operation.name = "DescribeRetentionConfigurations"
        operation.input = DescribeRetentionConfigurationsRequest
        operation.output = DescribeRetentionConfigurationsResponse
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchRetentionConfigurationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRetentionConfigurations.new
      end)
      service.add_operation(:disassociate_resource_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#DisassociateResourceTypes"
        operation.name = "DisassociateResourceTypes"
        operation.input = DisassociateResourceTypesRequest
        operation.output = DisassociateResourceTypesResponse
        operation.errors << ConflictException
        operation.errors << NoSuchConfigurationRecorderException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_aggregate_compliance_details_by_config_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetAggregateComplianceDetailsByConfigRule"
        operation.name = "GetAggregateComplianceDetailsByConfigRule"
        operation.input = GetAggregateComplianceDetailsByConfigRuleRequest
        operation.output = GetAggregateComplianceDetailsByConfigRuleResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoSuchConfigurationAggregatorException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::GetAggregateComplianceDetailsByConfigRule.new
      end)
      service.add_operation(:get_aggregate_config_rule_compliance_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetAggregateConfigRuleComplianceSummary"
        operation.name = "GetAggregateConfigRuleComplianceSummary"
        operation.input = GetAggregateConfigRuleComplianceSummaryRequest
        operation.output = GetAggregateConfigRuleComplianceSummaryResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoSuchConfigurationAggregatorException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::GetAggregateConfigRuleComplianceSummary.new
      end)
      service.add_operation(:get_aggregate_conformance_pack_compliance_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetAggregateConformancePackComplianceSummary"
        operation.name = "GetAggregateConformancePackComplianceSummary"
        operation.input = GetAggregateConformancePackComplianceSummaryRequest
        operation.output = GetAggregateConformancePackComplianceSummaryResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoSuchConfigurationAggregatorException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::GetAggregateConformancePackComplianceSummary.new
      end)
      service.add_operation(:get_aggregate_discovered_resource_counts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetAggregateDiscoveredResourceCounts"
        operation.name = "GetAggregateDiscoveredResourceCounts"
        operation.input = GetAggregateDiscoveredResourceCountsRequest
        operation.output = GetAggregateDiscoveredResourceCountsResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoSuchConfigurationAggregatorException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::GetAggregateDiscoveredResourceCounts.new
      end)
      service.add_operation(:get_aggregate_resource_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetAggregateResourceConfig"
        operation.name = "GetAggregateResourceConfig"
        operation.input = GetAggregateResourceConfigRequest
        operation.output = GetAggregateResourceConfigResponse
        operation.errors << NoSuchConfigurationAggregatorException
        operation.errors << OversizedConfigurationItemException
        operation.errors << ResourceNotDiscoveredException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_compliance_details_by_config_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetComplianceDetailsByConfigRule"
        operation.name = "GetComplianceDetailsByConfigRule"
        operation.input = GetComplianceDetailsByConfigRuleRequest
        operation.output = GetComplianceDetailsByConfigRuleResponse
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchConfigRuleException
        operation.traits = {}
        operation[:paginator] = Paginators::GetComplianceDetailsByConfigRule.new
      end)
      service.add_operation(:get_compliance_details_by_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetComplianceDetailsByResource"
        operation.name = "GetComplianceDetailsByResource"
        operation.input = GetComplianceDetailsByResourceRequest
        operation.output = GetComplianceDetailsByResourceResponse
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::GetComplianceDetailsByResource.new
      end)
      service.add_operation(:get_compliance_summary_by_config_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetComplianceSummaryByConfigRule"
        operation.name = "GetComplianceSummaryByConfigRule"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetComplianceSummaryByConfigRuleResponse
        operation.traits = {}
      end)
      service.add_operation(:get_compliance_summary_by_resource_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetComplianceSummaryByResourceType"
        operation.name = "GetComplianceSummaryByResourceType"
        operation.input = GetComplianceSummaryByResourceTypeRequest
        operation.output = GetComplianceSummaryByResourceTypeResponse
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:get_conformance_pack_compliance_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetConformancePackComplianceDetails"
        operation.name = "GetConformancePackComplianceDetails"
        operation.input = GetConformancePackComplianceDetailsRequest
        operation.output = GetConformancePackComplianceDetailsResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchConfigRuleInConformancePackException
        operation.errors << NoSuchConformancePackException
        operation.traits = {}
        operation[:paginator] = Paginators::GetConformancePackComplianceDetails.new
      end)
      service.add_operation(:get_conformance_pack_compliance_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetConformancePackComplianceSummary"
        operation.name = "GetConformancePackComplianceSummary"
        operation.input = GetConformancePackComplianceSummaryRequest
        operation.output = GetConformancePackComplianceSummaryResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoSuchConformancePackException
        operation.traits = {}
        operation[:paginator] = Paginators::GetConformancePackComplianceSummary.new
      end)
      service.add_operation(:get_custom_rule_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetCustomRulePolicy"
        operation.name = "GetCustomRulePolicy"
        operation.input = GetCustomRulePolicyRequest
        operation.output = GetCustomRulePolicyResponse
        operation.errors << NoSuchConfigRuleException
        operation.traits = {}
      end)
      service.add_operation(:get_discovered_resource_counts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetDiscoveredResourceCounts"
        operation.name = "GetDiscoveredResourceCounts"
        operation.input = GetDiscoveredResourceCountsRequest
        operation.output = GetDiscoveredResourceCountsResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::GetDiscoveredResourceCounts.new
      end)
      service.add_operation(:get_organization_config_rule_detailed_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetOrganizationConfigRuleDetailedStatus"
        operation.name = "GetOrganizationConfigRuleDetailedStatus"
        operation.input = GetOrganizationConfigRuleDetailedStatusRequest
        operation.output = GetOrganizationConfigRuleDetailedStatusResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoSuchOrganizationConfigRuleException
        operation.errors << OrganizationAccessDeniedException
        operation.traits = {}
        operation[:paginator] = Paginators::GetOrganizationConfigRuleDetailedStatus.new
      end)
      service.add_operation(:get_organization_conformance_pack_detailed_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetOrganizationConformancePackDetailedStatus"
        operation.name = "GetOrganizationConformancePackDetailedStatus"
        operation.input = GetOrganizationConformancePackDetailedStatusRequest
        operation.output = GetOrganizationConformancePackDetailedStatusResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoSuchOrganizationConformancePackException
        operation.errors << OrganizationAccessDeniedException
        operation.traits = {}
        operation[:paginator] = Paginators::GetOrganizationConformancePackDetailedStatus.new
      end)
      service.add_operation(:get_organization_custom_rule_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetOrganizationCustomRulePolicy"
        operation.name = "GetOrganizationCustomRulePolicy"
        operation.input = GetOrganizationCustomRulePolicyRequest
        operation.output = GetOrganizationCustomRulePolicyResponse
        operation.errors << NoSuchOrganizationConfigRuleException
        operation.errors << OrganizationAccessDeniedException
        operation.traits = {}
      end)
      service.add_operation(:get_resource_config_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetResourceConfigHistory"
        operation.name = "GetResourceConfigHistory"
        operation.input = GetResourceConfigHistoryRequest
        operation.output = GetResourceConfigHistoryResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidTimeRangeException
        operation.errors << NoAvailableConfigurationRecorderException
        operation.errors << ResourceNotDiscoveredException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::GetResourceConfigHistory.new
      end)
      service.add_operation(:get_resource_evaluation_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetResourceEvaluationSummary"
        operation.name = "GetResourceEvaluationSummary"
        operation.input = GetResourceEvaluationSummaryRequest
        operation.output = GetResourceEvaluationSummaryResponse
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_stored_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#GetStoredQuery"
        operation.name = "GetStoredQuery"
        operation.input = GetStoredQueryRequest
        operation.output = GetStoredQueryResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_aggregate_discovered_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#ListAggregateDiscoveredResources"
        operation.name = "ListAggregateDiscoveredResources"
        operation.input = ListAggregateDiscoveredResourcesRequest
        operation.output = ListAggregateDiscoveredResourcesResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoSuchConfigurationAggregatorException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAggregateDiscoveredResources.new
      end)
      service.add_operation(:list_configuration_recorders, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#ListConfigurationRecorders"
        operation.name = "ListConfigurationRecorders"
        operation.input = ListConfigurationRecordersRequest
        operation.output = ListConfigurationRecordersResponse
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListConfigurationRecorders.new
      end)
      service.add_operation(:list_conformance_pack_compliance_scores, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#ListConformancePackComplianceScores"
        operation.name = "ListConformancePackComplianceScores"
        operation.input = ListConformancePackComplianceScoresRequest
        operation.output = ListConformancePackComplianceScoresResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
        operation[:paginator] = Paginators::ListConformancePackComplianceScores.new
      end)
      service.add_operation(:list_discovered_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#ListDiscoveredResources"
        operation.name = "ListDiscoveredResources"
        operation.input = ListDiscoveredResourcesRequest
        operation.output = ListDiscoveredResourcesResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoAvailableConfigurationRecorderException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListDiscoveredResources.new
      end)
      service.add_operation(:list_resource_evaluations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#ListResourceEvaluations"
        operation.name = "ListResourceEvaluations"
        operation.input = ListResourceEvaluationsRequest
        operation.output = ListResourceEvaluationsResponse
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidTimeRangeException
        operation.traits = {}
        operation[:paginator] = Paginators::ListResourceEvaluations.new
      end)
      service.add_operation(:list_stored_queries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#ListStoredQueries"
        operation.name = "ListStoredQueries"
        operation.input = ListStoredQueriesRequest
        operation.output = ListStoredQueriesResponse
        operation.errors << InvalidNextTokenException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListStoredQueries.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:put_aggregation_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutAggregationAuthorization"
        operation.name = "PutAggregationAuthorization"
        operation.input = PutAggregationAuthorizationRequest
        operation.output = PutAggregationAuthorizationResponse
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:put_config_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutConfigRule"
        operation.name = "PutConfigRule"
        operation.input = PutConfigRuleRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InsufficientPermissionsException
        operation.errors << InvalidParameterValueException
        operation.errors << MaxNumberOfConfigRulesExceededException
        operation.errors << NoAvailableConfigurationRecorderException
        operation.errors << ResourceInUseException
        operation.traits = {}
      end)
      service.add_operation(:put_configuration_aggregator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutConfigurationAggregator"
        operation.name = "PutConfigurationAggregator"
        operation.input = PutConfigurationAggregatorRequest
        operation.output = PutConfigurationAggregatorResponse
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRoleException
        operation.errors << LimitExceededException
        operation.errors << NoAvailableOrganizationException
        operation.errors << OrganizationAccessDeniedException
        operation.errors << OrganizationAllFeaturesNotEnabledException
        operation.traits = {}
      end)
      service.add_operation(:put_configuration_recorder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutConfigurationRecorder"
        operation.name = "PutConfigurationRecorder"
        operation.input = PutConfigurationRecorderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidConfigurationRecorderNameException
        operation.errors << InvalidRecordingGroupException
        operation.errors << InvalidRoleException
        operation.errors << MaxNumberOfConfigurationRecordersExceededException
        operation.errors << UnmodifiableEntityException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_conformance_pack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutConformancePack"
        operation.name = "PutConformancePack"
        operation.input = PutConformancePackRequest
        operation.output = PutConformancePackResponse
        operation.errors << ConformancePackTemplateValidationException
        operation.errors << InsufficientPermissionsException
        operation.errors << InvalidParameterValueException
        operation.errors << MaxNumberOfConformancePacksExceededException
        operation.errors << ResourceInUseException
        operation.traits = {}
      end)
      service.add_operation(:put_delivery_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutDeliveryChannel"
        operation.name = "PutDeliveryChannel"
        operation.input = PutDeliveryChannelRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InsufficientDeliveryPolicyException
        operation.errors << InvalidDeliveryChannelNameException
        operation.errors << InvalidS3KeyPrefixException
        operation.errors << InvalidS3KmsKeyArnException
        operation.errors << InvalidSNSTopicARNException
        operation.errors << MaxNumberOfDeliveryChannelsExceededException
        operation.errors << NoAvailableConfigurationRecorderException
        operation.errors << NoSuchBucketException
        operation.traits = {}
      end)
      service.add_operation(:put_evaluations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutEvaluations"
        operation.name = "PutEvaluations"
        operation.input = PutEvaluationsRequest
        operation.output = PutEvaluationsResponse
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidResultTokenException
        operation.errors << NoSuchConfigRuleException
        operation.traits = {}
      end)
      service.add_operation(:put_external_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutExternalEvaluation"
        operation.name = "PutExternalEvaluation"
        operation.input = PutExternalEvaluationRequest
        operation.output = PutExternalEvaluationResponse
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchConfigRuleException
        operation.traits = {}
      end)
      service.add_operation(:put_organization_config_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutOrganizationConfigRule"
        operation.name = "PutOrganizationConfigRule"
        operation.input = PutOrganizationConfigRuleRequest
        operation.output = PutOrganizationConfigRuleResponse
        operation.errors << InsufficientPermissionsException
        operation.errors << InvalidParameterValueException
        operation.errors << MaxNumberOfOrganizationConfigRulesExceededException
        operation.errors << NoAvailableOrganizationException
        operation.errors << OrganizationAccessDeniedException
        operation.errors << OrganizationAllFeaturesNotEnabledException
        operation.errors << ResourceInUseException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_organization_conformance_pack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutOrganizationConformancePack"
        operation.name = "PutOrganizationConformancePack"
        operation.input = PutOrganizationConformancePackRequest
        operation.output = PutOrganizationConformancePackResponse
        operation.errors << InsufficientPermissionsException
        operation.errors << MaxNumberOfOrganizationConformancePacksExceededException
        operation.errors << NoAvailableOrganizationException
        operation.errors << OrganizationAccessDeniedException
        operation.errors << OrganizationAllFeaturesNotEnabledException
        operation.errors << OrganizationConformancePackTemplateValidationException
        operation.errors << ResourceInUseException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_remediation_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutRemediationConfigurations"
        operation.name = "PutRemediationConfigurations"
        operation.input = PutRemediationConfigurationsRequest
        operation.output = PutRemediationConfigurationsResponse
        operation.errors << InsufficientPermissionsException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:put_remediation_exceptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutRemediationExceptions"
        operation.name = "PutRemediationExceptions"
        operation.input = PutRemediationExceptionsRequest
        operation.output = PutRemediationExceptionsResponse
        operation.errors << InsufficientPermissionsException
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:put_resource_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutResourceConfig"
        operation.name = "PutResourceConfig"
        operation.input = PutResourceConfigRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InsufficientPermissionsException
        operation.errors << MaxActiveResourcesExceededException
        operation.errors << NoRunningConfigurationRecorderException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_retention_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutRetentionConfiguration"
        operation.name = "PutRetentionConfiguration"
        operation.input = PutRetentionConfigurationRequest
        operation.output = PutRetentionConfigurationResponse
        operation.errors << InvalidParameterValueException
        operation.errors << MaxNumberOfRetentionConfigurationsExceededException
        operation.traits = {}
      end)
      service.add_operation(:put_service_linked_configuration_recorder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutServiceLinkedConfigurationRecorder"
        operation.name = "PutServiceLinkedConfigurationRecorder"
        operation.input = PutServiceLinkedConfigurationRecorderRequest
        operation.output = PutServiceLinkedConfigurationRecorderResponse
        operation.errors << ConflictException
        operation.errors << InsufficientPermissionsException
        operation.errors << LimitExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_stored_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#PutStoredQuery"
        operation.name = "PutStoredQuery"
        operation.input = PutStoredQueryRequest
        operation.output = PutStoredQueryResponse
        operation.errors << ResourceConcurrentModificationException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:select_aggregate_resource_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#SelectAggregateResourceConfig"
        operation.name = "SelectAggregateResourceConfig"
        operation.input = SelectAggregateResourceConfigRequest
        operation.output = SelectAggregateResourceConfigResponse
        operation.errors << InvalidExpressionException
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.errors << NoSuchConfigurationAggregatorException
        operation.traits = {}
        operation[:paginator] = Paginators::SelectAggregateResourceConfig.new
      end)
      service.add_operation(:select_resource_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#SelectResourceConfig"
        operation.name = "SelectResourceConfig"
        operation.input = SelectResourceConfigRequest
        operation.output = SelectResourceConfigResponse
        operation.errors << InvalidExpressionException
        operation.errors << InvalidLimitException
        operation.errors << InvalidNextTokenException
        operation.traits = {}
        operation[:paginator] = Paginators::SelectResourceConfig.new
      end)
      service.add_operation(:start_config_rules_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#StartConfigRulesEvaluation"
        operation.name = "StartConfigRulesEvaluation"
        operation.input = StartConfigRulesEvaluationRequest
        operation.output = StartConfigRulesEvaluationResponse
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << NoSuchConfigRuleException
        operation.errors << ResourceInUseException
        operation.traits = {}
      end)
      service.add_operation(:start_configuration_recorder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#StartConfigurationRecorder"
        operation.name = "StartConfigurationRecorder"
        operation.input = StartConfigurationRecorderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NoAvailableDeliveryChannelException
        operation.errors << NoSuchConfigurationRecorderException
        operation.errors << UnmodifiableEntityException
        operation.traits = {}
      end)
      service.add_operation(:start_remediation_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#StartRemediationExecution"
        operation.name = "StartRemediationExecution"
        operation.input = StartRemediationExecutionRequest
        operation.output = StartRemediationExecutionResponse
        operation.errors << InsufficientPermissionsException
        operation.errors << InvalidParameterValueException
        operation.errors << NoSuchRemediationConfigurationException
        operation.traits = {}
      end)
      service.add_operation(:start_resource_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#StartResourceEvaluation"
        operation.name = "StartResourceEvaluation"
        operation.input = StartResourceEvaluationRequest
        operation.output = StartResourceEvaluationResponse
        operation.errors << IdempotentParameterMismatch
        operation.errors << InvalidParameterValueException
        operation.traits = {}
      end)
      service.add_operation(:stop_configuration_recorder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#StopConfigurationRecorder"
        operation.name = "StopConfigurationRecorder"
        operation.input = StopConfigurationRecorderRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << NoSuchConfigurationRecorderException
        operation.errors << UnmodifiableEntityException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.configservice#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceNotFoundException
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
