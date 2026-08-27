# frozen_string_literal: true

# This is generated code!

module Aws::ComputeOptimizer
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountEnrollmentStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#AccountEnrollmentStatus", name: "AccountEnrollmentStatus")
    AccountEnrollmentStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#AccountEnrollmentStatuses", name: "AccountEnrollmentStatuses")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#AccountId", name: "AccountId")
    AccountIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#AccountIds", name: "AccountIds")
    AllocatedStorage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#AllocatedStorage", name: "AllocatedStorage", traits: {"smithy.api#default" => 0})
    AllocationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#AllocationStrategy", name: "AllocationStrategy")
    AsgType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#AsgType", name: "AsgType")
    AutoScalingConfiguration = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#AutoScalingConfiguration", name: "AutoScalingConfiguration")
    AutoScalingGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#AutoScalingGroupArn", name: "AutoScalingGroupArn")
    AutoScalingGroupArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#AutoScalingGroupArns", name: "AutoScalingGroupArns")
    AutoScalingGroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#AutoScalingGroupConfiguration", name: "AutoScalingGroupConfiguration")
    AutoScalingGroupEstimatedMonthlySavings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#AutoScalingGroupEstimatedMonthlySavings", name: "AutoScalingGroupEstimatedMonthlySavings")
    AutoScalingGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#AutoScalingGroupName", name: "AutoScalingGroupName")
    AutoScalingGroupRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#AutoScalingGroupRecommendation", name: "AutoScalingGroupRecommendation")
    AutoScalingGroupRecommendationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#AutoScalingGroupRecommendationOption", name: "AutoScalingGroupRecommendationOption")
    AutoScalingGroupRecommendationOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#AutoScalingGroupRecommendationOptions", name: "AutoScalingGroupRecommendationOptions")
    AutoScalingGroupRecommendations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#AutoScalingGroupRecommendations", name: "AutoScalingGroupRecommendations")
    AutoScalingGroupSavingsOpportunityAfterDiscounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#AutoScalingGroupSavingsOpportunityAfterDiscounts", name: "AutoScalingGroupSavingsOpportunityAfterDiscounts")
    Code = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#Code", name: "Code")
    ContainerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ContainerConfiguration", name: "ContainerConfiguration")
    ContainerConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ContainerConfigurations", name: "ContainerConfigurations")
    ContainerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#ContainerName", name: "ContainerName")
    ContainerRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ContainerRecommendation", name: "ContainerRecommendation")
    ContainerRecommendations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ContainerRecommendations", name: "ContainerRecommendations")
    CpuSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#CpuSize", name: "CpuSize", traits: {"smithy.api#default" => 0})
    CpuVendorArchitecture = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#CpuVendorArchitecture", name: "CpuVendorArchitecture")
    CpuVendorArchitectures = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#CpuVendorArchitectures", name: "CpuVendorArchitectures")
    CreationTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.computeoptimizer#CreationTimestamp", name: "CreationTimestamp")
    Currency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#Currency", name: "Currency")
    CurrentDBInstanceClass = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#CurrentDBInstanceClass", name: "CurrentDBInstanceClass")
    CurrentInstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#CurrentInstanceType", name: "CurrentInstanceType")
    CurrentPerformanceRisk = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#CurrentPerformanceRisk", name: "CurrentPerformanceRisk")
    CurrentPerformanceRiskRatings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#CurrentPerformanceRiskRatings", name: "CurrentPerformanceRiskRatings")
    CustomizableMetricHeadroom = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#CustomizableMetricHeadroom", name: "CustomizableMetricHeadroom")
    CustomizableMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#CustomizableMetricName", name: "CustomizableMetricName")
    CustomizableMetricParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#CustomizableMetricParameters", name: "CustomizableMetricParameters")
    CustomizableMetricThreshold = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#CustomizableMetricThreshold", name: "CustomizableMetricThreshold")
    DBClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#DBClusterIdentifier", name: "DBClusterIdentifier")
    DBInstanceClass = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#DBInstanceClass", name: "DBInstanceClass")
    DBStorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#DBStorageConfiguration", name: "DBStorageConfiguration")
    DeleteRecommendationPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#DeleteRecommendationPreferencesRequest", name: "DeleteRecommendationPreferencesRequest")
    DeleteRecommendationPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#DeleteRecommendationPreferencesResponse", name: "DeleteRecommendationPreferencesResponse")
    DescribeRecommendationExportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#DescribeRecommendationExportJobsRequest", name: "DescribeRecommendationExportJobsRequest")
    DescribeRecommendationExportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#DescribeRecommendationExportJobsResponse", name: "DescribeRecommendationExportJobsResponse")
    DesiredCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#DesiredCapacity", name: "DesiredCapacity", traits: {"smithy.api#default" => 0})
    DestinationBucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#DestinationBucket", name: "DestinationBucket")
    DestinationKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#DestinationKey", name: "DestinationKey")
    DestinationKeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#DestinationKeyPrefix", name: "DestinationKeyPrefix")
    Dimension = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#Dimension", name: "Dimension")
    EBSEffectiveRecommendationPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#EBSEffectiveRecommendationPreferences", name: "EBSEffectiveRecommendationPreferences")
    EBSEstimatedMonthlySavings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#EBSEstimatedMonthlySavings", name: "EBSEstimatedMonthlySavings")
    EBSFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#EBSFilter", name: "EBSFilter")
    EBSFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#EBSFilterName", name: "EBSFilterName")
    EBSFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#EBSFilters", name: "EBSFilters")
    EBSFinding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#EBSFinding", name: "EBSFinding")
    EBSMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#EBSMetricName", name: "EBSMetricName")
    EBSSavingsEstimationMode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#EBSSavingsEstimationMode", name: "EBSSavingsEstimationMode")
    EBSSavingsEstimationModeSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#EBSSavingsEstimationModeSource", name: "EBSSavingsEstimationModeSource")
    EBSSavingsOpportunityAfterDiscounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#EBSSavingsOpportunityAfterDiscounts", name: "EBSSavingsOpportunityAfterDiscounts")
    EBSUtilizationMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#EBSUtilizationMetric", name: "EBSUtilizationMetric")
    EBSUtilizationMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#EBSUtilizationMetrics", name: "EBSUtilizationMetrics")
    ECSEffectiveRecommendationPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ECSEffectiveRecommendationPreferences", name: "ECSEffectiveRecommendationPreferences")
    ECSEstimatedMonthlySavings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ECSEstimatedMonthlySavings", name: "ECSEstimatedMonthlySavings")
    ECSSavingsEstimationMode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ECSSavingsEstimationMode", name: "ECSSavingsEstimationMode")
    ECSSavingsEstimationModeSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ECSSavingsEstimationModeSource", name: "ECSSavingsEstimationModeSource")
    ECSSavingsOpportunityAfterDiscounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ECSSavingsOpportunityAfterDiscounts", name: "ECSSavingsOpportunityAfterDiscounts")
    ECSServiceLaunchType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceLaunchType", name: "ECSServiceLaunchType")
    ECSServiceMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceMetricName", name: "ECSServiceMetricName")
    ECSServiceMetricStatistic = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceMetricStatistic", name: "ECSServiceMetricStatistic")
    ECSServiceProjectedMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceProjectedMetric", name: "ECSServiceProjectedMetric")
    ECSServiceProjectedMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceProjectedMetrics", name: "ECSServiceProjectedMetrics")
    ECSServiceProjectedUtilizationMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceProjectedUtilizationMetric", name: "ECSServiceProjectedUtilizationMetric")
    ECSServiceProjectedUtilizationMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceProjectedUtilizationMetrics", name: "ECSServiceProjectedUtilizationMetrics")
    ECSServiceRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceRecommendation", name: "ECSServiceRecommendation")
    ECSServiceRecommendationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceRecommendationFilter", name: "ECSServiceRecommendationFilter")
    ECSServiceRecommendationFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceRecommendationFilterName", name: "ECSServiceRecommendationFilterName")
    ECSServiceRecommendationFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceRecommendationFilters", name: "ECSServiceRecommendationFilters")
    ECSServiceRecommendationFinding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceRecommendationFinding", name: "ECSServiceRecommendationFinding")
    ECSServiceRecommendationFindingReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceRecommendationFindingReasonCode", name: "ECSServiceRecommendationFindingReasonCode")
    ECSServiceRecommendationFindingReasonCodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceRecommendationFindingReasonCodes", name: "ECSServiceRecommendationFindingReasonCodes")
    ECSServiceRecommendationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceRecommendationOption", name: "ECSServiceRecommendationOption")
    ECSServiceRecommendationOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceRecommendationOptions", name: "ECSServiceRecommendationOptions")
    ECSServiceRecommendations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceRecommendations", name: "ECSServiceRecommendations")
    ECSServiceRecommendedOptionProjectedMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceRecommendedOptionProjectedMetric", name: "ECSServiceRecommendedOptionProjectedMetric")
    ECSServiceRecommendedOptionProjectedMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceRecommendedOptionProjectedMetrics", name: "ECSServiceRecommendedOptionProjectedMetrics")
    ECSServiceUtilizationMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceUtilizationMetric", name: "ECSServiceUtilizationMetric")
    ECSServiceUtilizationMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ECSServiceUtilizationMetrics", name: "ECSServiceUtilizationMetrics")
    EffectivePreferredResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#EffectivePreferredResource", name: "EffectivePreferredResource")
    EffectivePreferredResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#EffectivePreferredResources", name: "EffectivePreferredResources")
    EffectiveRecommendationPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#EffectiveRecommendationPreferences", name: "EffectiveRecommendationPreferences")
    Engine = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#Engine", name: "Engine")
    EngineVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#EngineVersion", name: "EngineVersion")
    EnhancedInfrastructureMetrics = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#EnhancedInfrastructureMetrics", name: "EnhancedInfrastructureMetrics")
    EnrollmentFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#EnrollmentFilter", name: "EnrollmentFilter")
    EnrollmentFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#EnrollmentFilterName", name: "EnrollmentFilterName")
    EnrollmentFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#EnrollmentFilters", name: "EnrollmentFilters")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#ErrorMessage", name: "ErrorMessage")
    EstimatedMonthlySavings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#EstimatedMonthlySavings", name: "EstimatedMonthlySavings")
    ExportAutoScalingGroupRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportAutoScalingGroupRecommendationsRequest", name: "ExportAutoScalingGroupRecommendationsRequest")
    ExportAutoScalingGroupRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportAutoScalingGroupRecommendationsResponse", name: "ExportAutoScalingGroupRecommendationsResponse")
    ExportDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportDestination", name: "ExportDestination")
    ExportEBSVolumeRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportEBSVolumeRecommendationsRequest", name: "ExportEBSVolumeRecommendationsRequest")
    ExportEBSVolumeRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportEBSVolumeRecommendationsResponse", name: "ExportEBSVolumeRecommendationsResponse")
    ExportEC2InstanceRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportEC2InstanceRecommendationsRequest", name: "ExportEC2InstanceRecommendationsRequest")
    ExportEC2InstanceRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportEC2InstanceRecommendationsResponse", name: "ExportEC2InstanceRecommendationsResponse")
    ExportECSServiceRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportECSServiceRecommendationsRequest", name: "ExportECSServiceRecommendationsRequest")
    ExportECSServiceRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportECSServiceRecommendationsResponse", name: "ExportECSServiceRecommendationsResponse")
    ExportIdleRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportIdleRecommendationsRequest", name: "ExportIdleRecommendationsRequest")
    ExportIdleRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportIdleRecommendationsResponse", name: "ExportIdleRecommendationsResponse")
    ExportLambdaFunctionRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportLambdaFunctionRecommendationsRequest", name: "ExportLambdaFunctionRecommendationsRequest")
    ExportLambdaFunctionRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportLambdaFunctionRecommendationsResponse", name: "ExportLambdaFunctionRecommendationsResponse")
    ExportLicenseRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportLicenseRecommendationsRequest", name: "ExportLicenseRecommendationsRequest")
    ExportLicenseRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportLicenseRecommendationsResponse", name: "ExportLicenseRecommendationsResponse")
    ExportRDSDatabaseRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportRDSDatabaseRecommendationsRequest", name: "ExportRDSDatabaseRecommendationsRequest")
    ExportRDSDatabaseRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExportRDSDatabaseRecommendationsResponse", name: "ExportRDSDatabaseRecommendationsResponse")
    ExportableAutoScalingGroupField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ExportableAutoScalingGroupField", name: "ExportableAutoScalingGroupField")
    ExportableAutoScalingGroupFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ExportableAutoScalingGroupFields", name: "ExportableAutoScalingGroupFields")
    ExportableECSServiceField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ExportableECSServiceField", name: "ExportableECSServiceField")
    ExportableECSServiceFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ExportableECSServiceFields", name: "ExportableECSServiceFields")
    ExportableIdleField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ExportableIdleField", name: "ExportableIdleField")
    ExportableIdleFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ExportableIdleFields", name: "ExportableIdleFields")
    ExportableInstanceField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ExportableInstanceField", name: "ExportableInstanceField")
    ExportableInstanceFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ExportableInstanceFields", name: "ExportableInstanceFields")
    ExportableLambdaFunctionField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ExportableLambdaFunctionField", name: "ExportableLambdaFunctionField")
    ExportableLambdaFunctionFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ExportableLambdaFunctionFields", name: "ExportableLambdaFunctionFields")
    ExportableLicenseField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ExportableLicenseField", name: "ExportableLicenseField")
    ExportableLicenseFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ExportableLicenseFields", name: "ExportableLicenseFields")
    ExportableRDSDBField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ExportableRDSDBField", name: "ExportableRDSDBField")
    ExportableRDSDBFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ExportableRDSDBFields", name: "ExportableRDSDBFields")
    ExportableVolumeField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ExportableVolumeField", name: "ExportableVolumeField")
    ExportableVolumeFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ExportableVolumeFields", name: "ExportableVolumeFields")
    ExternalMetricStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExternalMetricStatus", name: "ExternalMetricStatus")
    ExternalMetricStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ExternalMetricStatusCode", name: "ExternalMetricStatusCode")
    ExternalMetricStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#ExternalMetricStatusReason", name: "ExternalMetricStatusReason")
    ExternalMetricsPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ExternalMetricsPreference", name: "ExternalMetricsPreference")
    ExternalMetricsSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ExternalMetricsSource", name: "ExternalMetricsSource")
    FailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#FailureReason", name: "FailureReason")
    FileFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#FileFormat", name: "FileFormat")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#Filter", name: "Filter")
    FilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#FilterName", name: "FilterName")
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#FilterValue", name: "FilterValue")
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#FilterValues", name: "FilterValues")
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#Filters", name: "Filters")
    Finding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#Finding", name: "Finding")
    FindingReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#FindingReasonCode", name: "FindingReasonCode")
    FunctionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#FunctionArn", name: "FunctionArn")
    FunctionArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#FunctionArns", name: "FunctionArns")
    FunctionVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#FunctionVersion", name: "FunctionVersion")
    GetAutoScalingGroupRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetAutoScalingGroupRecommendationsRequest", name: "GetAutoScalingGroupRecommendationsRequest")
    GetAutoScalingGroupRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetAutoScalingGroupRecommendationsResponse", name: "GetAutoScalingGroupRecommendationsResponse")
    GetEBSVolumeRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetEBSVolumeRecommendationsRequest", name: "GetEBSVolumeRecommendationsRequest")
    GetEBSVolumeRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetEBSVolumeRecommendationsResponse", name: "GetEBSVolumeRecommendationsResponse")
    GetEC2InstanceRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetEC2InstanceRecommendationsRequest", name: "GetEC2InstanceRecommendationsRequest")
    GetEC2InstanceRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetEC2InstanceRecommendationsResponse", name: "GetEC2InstanceRecommendationsResponse")
    GetEC2RecommendationProjectedMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetEC2RecommendationProjectedMetricsRequest", name: "GetEC2RecommendationProjectedMetricsRequest")
    GetEC2RecommendationProjectedMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetEC2RecommendationProjectedMetricsResponse", name: "GetEC2RecommendationProjectedMetricsResponse")
    GetECSServiceRecommendationProjectedMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetECSServiceRecommendationProjectedMetricsRequest", name: "GetECSServiceRecommendationProjectedMetricsRequest")
    GetECSServiceRecommendationProjectedMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetECSServiceRecommendationProjectedMetricsResponse", name: "GetECSServiceRecommendationProjectedMetricsResponse")
    GetECSServiceRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetECSServiceRecommendationsRequest", name: "GetECSServiceRecommendationsRequest")
    GetECSServiceRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetECSServiceRecommendationsResponse", name: "GetECSServiceRecommendationsResponse")
    GetEffectiveRecommendationPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetEffectiveRecommendationPreferencesRequest", name: "GetEffectiveRecommendationPreferencesRequest")
    GetEffectiveRecommendationPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetEffectiveRecommendationPreferencesResponse", name: "GetEffectiveRecommendationPreferencesResponse")
    GetEnrollmentStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetEnrollmentStatusRequest", name: "GetEnrollmentStatusRequest")
    GetEnrollmentStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetEnrollmentStatusResponse", name: "GetEnrollmentStatusResponse")
    GetEnrollmentStatusesForOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetEnrollmentStatusesForOrganizationRequest", name: "GetEnrollmentStatusesForOrganizationRequest")
    GetEnrollmentStatusesForOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetEnrollmentStatusesForOrganizationResponse", name: "GetEnrollmentStatusesForOrganizationResponse")
    GetIdleRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetIdleRecommendationsRequest", name: "GetIdleRecommendationsRequest")
    GetIdleRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetIdleRecommendationsResponse", name: "GetIdleRecommendationsResponse")
    GetLambdaFunctionRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetLambdaFunctionRecommendationsRequest", name: "GetLambdaFunctionRecommendationsRequest")
    GetLambdaFunctionRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetLambdaFunctionRecommendationsResponse", name: "GetLambdaFunctionRecommendationsResponse")
    GetLicenseRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetLicenseRecommendationsRequest", name: "GetLicenseRecommendationsRequest")
    GetLicenseRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetLicenseRecommendationsResponse", name: "GetLicenseRecommendationsResponse")
    GetRDSDatabaseRecommendationProjectedMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetRDSDatabaseRecommendationProjectedMetricsRequest", name: "GetRDSDatabaseRecommendationProjectedMetricsRequest")
    GetRDSDatabaseRecommendationProjectedMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetRDSDatabaseRecommendationProjectedMetricsResponse", name: "GetRDSDatabaseRecommendationProjectedMetricsResponse")
    GetRDSDatabaseRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetRDSDatabaseRecommendationsRequest", name: "GetRDSDatabaseRecommendationsRequest")
    GetRDSDatabaseRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetRDSDatabaseRecommendationsResponse", name: "GetRDSDatabaseRecommendationsResponse")
    GetRecommendationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetRecommendationError", name: "GetRecommendationError")
    GetRecommendationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#GetRecommendationErrors", name: "GetRecommendationErrors")
    GetRecommendationPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetRecommendationPreferencesRequest", name: "GetRecommendationPreferencesRequest")
    GetRecommendationPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetRecommendationPreferencesResponse", name: "GetRecommendationPreferencesResponse")
    GetRecommendationSummariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetRecommendationSummariesRequest", name: "GetRecommendationSummariesRequest")
    GetRecommendationSummariesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GetRecommendationSummariesResponse", name: "GetRecommendationSummariesResponse")
    Gpu = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#Gpu", name: "Gpu")
    GpuCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#GpuCount", name: "GpuCount", traits: {"smithy.api#default" => 0})
    GpuInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#GpuInfo", name: "GpuInfo")
    GpuMemorySizeInMiB = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#GpuMemorySizeInMiB", name: "GpuMemorySizeInMiB", traits: {"smithy.api#default" => 0})
    Gpus = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#Gpus", name: "Gpus")
    High = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#High", name: "High", traits: {"smithy.api#default" => 0})
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#Identifier", name: "Identifier")
    Idle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#Idle", name: "Idle")
    IdleEstimatedMonthlySavings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#IdleEstimatedMonthlySavings", name: "IdleEstimatedMonthlySavings")
    IdleFinding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#IdleFinding", name: "IdleFinding")
    IdleFindingDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#IdleFindingDescription", name: "IdleFindingDescription")
    IdleMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#IdleMaxResults", name: "IdleMaxResults", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    IdleMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#IdleMetricName", name: "IdleMetricName")
    IdleRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#IdleRecommendation", name: "IdleRecommendation")
    IdleRecommendationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#IdleRecommendationError", name: "IdleRecommendationError")
    IdleRecommendationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#IdleRecommendationErrors", name: "IdleRecommendationErrors")
    IdleRecommendationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#IdleRecommendationFilter", name: "IdleRecommendationFilter")
    IdleRecommendationFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#IdleRecommendationFilterName", name: "IdleRecommendationFilterName")
    IdleRecommendationFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#IdleRecommendationFilters", name: "IdleRecommendationFilters")
    IdleRecommendationResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#IdleRecommendationResourceType", name: "IdleRecommendationResourceType")
    IdleRecommendations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#IdleRecommendations", name: "IdleRecommendations")
    IdleSavingsOpportunity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#IdleSavingsOpportunity", name: "IdleSavingsOpportunity")
    IdleSavingsOpportunityAfterDiscounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#IdleSavingsOpportunityAfterDiscounts", name: "IdleSavingsOpportunityAfterDiscounts")
    IdleSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#IdleSummaries", name: "IdleSummaries")
    IdleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#IdleSummary", name: "IdleSummary")
    IdleUtilizationMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#IdleUtilizationMetric", name: "IdleUtilizationMetric")
    IdleUtilizationMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#IdleUtilizationMetrics", name: "IdleUtilizationMetrics")
    IncludeMemberAccounts = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.computeoptimizer#IncludeMemberAccounts", name: "IncludeMemberAccounts", traits: {"smithy.api#default" => false})
    InferredWorkloadSaving = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#InferredWorkloadSaving", name: "InferredWorkloadSaving")
    InferredWorkloadSavings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#InferredWorkloadSavings", name: "InferredWorkloadSavings")
    InferredWorkloadType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#InferredWorkloadType", name: "InferredWorkloadType")
    InferredWorkloadTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#InferredWorkloadTypes", name: "InferredWorkloadTypes")
    InferredWorkloadTypesPreference = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#InferredWorkloadTypesPreference", name: "InferredWorkloadTypesPreference")
    InstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#InstanceArn", name: "InstanceArn")
    InstanceArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#InstanceArns", name: "InstanceArns")
    InstanceEstimatedMonthlySavings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#InstanceEstimatedMonthlySavings", name: "InstanceEstimatedMonthlySavings")
    InstanceIdle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#InstanceIdle", name: "InstanceIdle")
    InstanceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#InstanceName", name: "InstanceName")
    InstanceRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#InstanceRecommendation", name: "InstanceRecommendation")
    InstanceRecommendationFindingReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#InstanceRecommendationFindingReasonCode", name: "InstanceRecommendationFindingReasonCode")
    InstanceRecommendationFindingReasonCodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#InstanceRecommendationFindingReasonCodes", name: "InstanceRecommendationFindingReasonCodes")
    InstanceRecommendationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#InstanceRecommendationOption", name: "InstanceRecommendationOption")
    InstanceRecommendations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#InstanceRecommendations", name: "InstanceRecommendations")
    InstanceSavingsEstimationMode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#InstanceSavingsEstimationMode", name: "InstanceSavingsEstimationMode")
    InstanceSavingsEstimationModeSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#InstanceSavingsEstimationModeSource", name: "InstanceSavingsEstimationModeSource")
    InstanceSavingsOpportunityAfterDiscounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#InstanceSavingsOpportunityAfterDiscounts", name: "InstanceSavingsOpportunityAfterDiscounts")
    InstanceState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#InstanceState", name: "InstanceState")
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#InstanceType", name: "InstanceType")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JobFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#JobFilter", name: "JobFilter")
    JobFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#JobFilterName", name: "JobFilterName")
    JobFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#JobFilters", name: "JobFilters")
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#JobId", name: "JobId")
    JobIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#JobIds", name: "JobIds")
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#JobStatus", name: "JobStatus")
    LambdaEffectiveRecommendationPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#LambdaEffectiveRecommendationPreferences", name: "LambdaEffectiveRecommendationPreferences")
    LambdaEstimatedMonthlySavings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#LambdaEstimatedMonthlySavings", name: "LambdaEstimatedMonthlySavings")
    LambdaFunctionMemoryMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionMemoryMetricName", name: "LambdaFunctionMemoryMetricName")
    LambdaFunctionMemoryMetricStatistic = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionMemoryMetricStatistic", name: "LambdaFunctionMemoryMetricStatistic")
    LambdaFunctionMemoryProjectedMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionMemoryProjectedMetric", name: "LambdaFunctionMemoryProjectedMetric")
    LambdaFunctionMemoryProjectedMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionMemoryProjectedMetrics", name: "LambdaFunctionMemoryProjectedMetrics")
    LambdaFunctionMemoryRecommendationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionMemoryRecommendationOption", name: "LambdaFunctionMemoryRecommendationOption")
    LambdaFunctionMemoryRecommendationOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionMemoryRecommendationOptions", name: "LambdaFunctionMemoryRecommendationOptions")
    LambdaFunctionMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionMetricName", name: "LambdaFunctionMetricName")
    LambdaFunctionMetricStatistic = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionMetricStatistic", name: "LambdaFunctionMetricStatistic")
    LambdaFunctionRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionRecommendation", name: "LambdaFunctionRecommendation")
    LambdaFunctionRecommendationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionRecommendationFilter", name: "LambdaFunctionRecommendationFilter")
    LambdaFunctionRecommendationFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionRecommendationFilterName", name: "LambdaFunctionRecommendationFilterName")
    LambdaFunctionRecommendationFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionRecommendationFilters", name: "LambdaFunctionRecommendationFilters")
    LambdaFunctionRecommendationFinding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionRecommendationFinding", name: "LambdaFunctionRecommendationFinding")
    LambdaFunctionRecommendationFindingReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionRecommendationFindingReasonCode", name: "LambdaFunctionRecommendationFindingReasonCode")
    LambdaFunctionRecommendationFindingReasonCodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionRecommendationFindingReasonCodes", name: "LambdaFunctionRecommendationFindingReasonCodes")
    LambdaFunctionRecommendations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionRecommendations", name: "LambdaFunctionRecommendations")
    LambdaFunctionUtilizationMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionUtilizationMetric", name: "LambdaFunctionUtilizationMetric")
    LambdaFunctionUtilizationMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#LambdaFunctionUtilizationMetrics", name: "LambdaFunctionUtilizationMetrics")
    LambdaSavingsEstimationMode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#LambdaSavingsEstimationMode", name: "LambdaSavingsEstimationMode")
    LambdaSavingsEstimationModeSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#LambdaSavingsEstimationModeSource", name: "LambdaSavingsEstimationModeSource")
    LambdaSavingsOpportunityAfterDiscounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#LambdaSavingsOpportunityAfterDiscounts", name: "LambdaSavingsOpportunityAfterDiscounts")
    LastRefreshTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.computeoptimizer#LastRefreshTimestamp", name: "LastRefreshTimestamp")
    LastUpdatedTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.computeoptimizer#LastUpdatedTimestamp", name: "LastUpdatedTimestamp")
    LicenseConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#LicenseConfiguration", name: "LicenseConfiguration")
    LicenseEdition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#LicenseEdition", name: "LicenseEdition")
    LicenseFinding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#LicenseFinding", name: "LicenseFinding")
    LicenseFindingReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#LicenseFindingReasonCode", name: "LicenseFindingReasonCode")
    LicenseFindingReasonCodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#LicenseFindingReasonCodes", name: "LicenseFindingReasonCodes")
    LicenseModel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#LicenseModel", name: "LicenseModel")
    LicenseName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#LicenseName", name: "LicenseName")
    LicenseRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#LicenseRecommendation", name: "LicenseRecommendation")
    LicenseRecommendationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#LicenseRecommendationFilter", name: "LicenseRecommendationFilter")
    LicenseRecommendationFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#LicenseRecommendationFilterName", name: "LicenseRecommendationFilterName")
    LicenseRecommendationFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#LicenseRecommendationFilters", name: "LicenseRecommendationFilters")
    LicenseRecommendationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#LicenseRecommendationOption", name: "LicenseRecommendationOption")
    LicenseRecommendationOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#LicenseRecommendationOptions", name: "LicenseRecommendationOptions")
    LicenseRecommendations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#LicenseRecommendations", name: "LicenseRecommendations")
    LicenseVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#LicenseVersion", name: "LicenseVersion")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LookBackPeriodInDays = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.computeoptimizer#LookBackPeriodInDays", name: "LookBackPeriodInDays", traits: {"smithy.api#default" => 0})
    LookBackPeriodPreference = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#LookBackPeriodPreference", name: "LookBackPeriodPreference")
    Low = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#Low", name: "Low", traits: {"smithy.api#default" => 0})
    LowerBoundValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.computeoptimizer#LowerBoundValue", name: "LowerBoundValue", traits: {"smithy.api#default" => 0})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000}})
    MaxSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#MaxSize", name: "MaxSize", traits: {"smithy.api#default" => 0})
    Medium = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#Medium", name: "Medium", traits: {"smithy.api#default" => 0})
    MemberAccountsEnrolled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.computeoptimizer#MemberAccountsEnrolled", name: "MemberAccountsEnrolled", traits: {"smithy.api#default" => false})
    MemorySize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#MemorySize", name: "MemorySize", traits: {"smithy.api#default" => 0})
    MemorySizeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#MemorySizeConfiguration", name: "MemorySizeConfiguration")
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#Message", name: "Message")
    MetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#MetadataKey", name: "MetadataKey")
    MetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#MetricName", name: "MetricName")
    MetricProviderArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#MetricProviderArn", name: "MetricProviderArn")
    MetricSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#MetricSource", name: "MetricSource")
    MetricSourceProvider = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#MetricSourceProvider", name: "MetricSourceProvider")
    MetricStatistic = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#MetricStatistic", name: "MetricStatistic")
    MetricValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.computeoptimizer#MetricValue", name: "MetricValue", traits: {"smithy.api#default" => 0})
    MetricValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#MetricValues", name: "MetricValues")
    MetricsSource = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#MetricsSource", name: "MetricsSource")
    MigrationEffort = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#MigrationEffort", name: "MigrationEffort")
    MinSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#MinSize", name: "MinSize", traits: {"smithy.api#default" => 0})
    MissingAuthenticationToken = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#MissingAuthenticationToken", name: "MissingAuthenticationToken", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    MixedInstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#MixedInstanceType", name: "MixedInstanceType")
    MixedInstanceTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#MixedInstanceTypes", name: "MixedInstanceTypes")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#NextToken", name: "NextToken")
    NullableCpu = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#NullableCpu", name: "NullableCpu")
    NullableEstimatedInstanceHourReductionPercentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.computeoptimizer#NullableEstimatedInstanceHourReductionPercentage", name: "NullableEstimatedInstanceHourReductionPercentage")
    NullableIOPS = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#NullableIOPS", name: "NullableIOPS")
    NullableInstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#NullableInstanceType", name: "NullableInstanceType")
    NullableMaxAllocatedStorage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#NullableMaxAllocatedStorage", name: "NullableMaxAllocatedStorage")
    NullableMemory = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#NullableMemory", name: "NullableMemory")
    NullableMemoryReservation = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#NullableMemoryReservation", name: "NullableMemoryReservation")
    NullableStorageThroughput = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#NullableStorageThroughput", name: "NullableStorageThroughput")
    NumberOfCores = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#NumberOfCores", name: "NumberOfCores", traits: {"smithy.api#default" => 0})
    NumberOfInvocations = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#NumberOfInvocations", name: "NumberOfInvocations", traits: {"smithy.api#default" => 0})
    NumberOfMemberAccountsOptedIn = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#NumberOfMemberAccountsOptedIn", name: "NumberOfMemberAccountsOptedIn")
    OperatingSystem = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#OperatingSystem", name: "OperatingSystem")
    OptInRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#OptInRequiredException", name: "OptInRequiredException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Order = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#Order", name: "Order")
    OrderBy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#OrderBy", name: "OrderBy")
    PerformanceRisk = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.computeoptimizer#PerformanceRisk", name: "PerformanceRisk", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 4}})
    Period = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#Period", name: "Period", traits: {"smithy.api#default" => 0})
    PlatformDifference = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#PlatformDifference", name: "PlatformDifference")
    PlatformDifferences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#PlatformDifferences", name: "PlatformDifferences")
    PreferredResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#PreferredResource", name: "PreferredResource")
    PreferredResourceName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#PreferredResourceName", name: "PreferredResourceName")
    PreferredResourceValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#PreferredResourceValue", name: "PreferredResourceValue")
    PreferredResourceValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#PreferredResourceValues", name: "PreferredResourceValues")
    PreferredResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#PreferredResources", name: "PreferredResources")
    ProjectedMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ProjectedMetric", name: "ProjectedMetric")
    ProjectedMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ProjectedMetrics", name: "ProjectedMetrics")
    ProjectedUtilizationMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ProjectedUtilizationMetrics", name: "ProjectedUtilizationMetrics")
    PromotionTier = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#PromotionTier", name: "PromotionTier")
    PutRecommendationPreferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#PutRecommendationPreferencesRequest", name: "PutRecommendationPreferencesRequest")
    PutRecommendationPreferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#PutRecommendationPreferencesResponse", name: "PutRecommendationPreferencesResponse")
    RDSCurrentInstancePerformanceRisk = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#RDSCurrentInstancePerformanceRisk", name: "RDSCurrentInstancePerformanceRisk")
    RDSDBInstanceRecommendationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RDSDBInstanceRecommendationOption", name: "RDSDBInstanceRecommendationOption")
    RDSDBInstanceRecommendationOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RDSDBInstanceRecommendationOptions", name: "RDSDBInstanceRecommendationOptions")
    RDSDBMetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#RDSDBMetricName", name: "RDSDBMetricName")
    RDSDBMetricStatistic = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#RDSDBMetricStatistic", name: "RDSDBMetricStatistic")
    RDSDBProjectedUtilizationMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RDSDBProjectedUtilizationMetrics", name: "RDSDBProjectedUtilizationMetrics")
    RDSDBRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RDSDBRecommendation", name: "RDSDBRecommendation")
    RDSDBRecommendationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RDSDBRecommendationFilter", name: "RDSDBRecommendationFilter")
    RDSDBRecommendationFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#RDSDBRecommendationFilterName", name: "RDSDBRecommendationFilterName")
    RDSDBRecommendationFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RDSDBRecommendationFilters", name: "RDSDBRecommendationFilters")
    RDSDBRecommendations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RDSDBRecommendations", name: "RDSDBRecommendations")
    RDSDBStorageRecommendationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RDSDBStorageRecommendationOption", name: "RDSDBStorageRecommendationOption")
    RDSDBStorageRecommendationOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RDSDBStorageRecommendationOptions", name: "RDSDBStorageRecommendationOptions")
    RDSDBUtilizationMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RDSDBUtilizationMetric", name: "RDSDBUtilizationMetric")
    RDSDBUtilizationMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RDSDBUtilizationMetrics", name: "RDSDBUtilizationMetrics")
    RDSDatabaseProjectedMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RDSDatabaseProjectedMetric", name: "RDSDatabaseProjectedMetric")
    RDSDatabaseProjectedMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RDSDatabaseProjectedMetrics", name: "RDSDatabaseProjectedMetrics")
    RDSDatabaseRecommendedOptionProjectedMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RDSDatabaseRecommendedOptionProjectedMetric", name: "RDSDatabaseRecommendedOptionProjectedMetric")
    RDSDatabaseRecommendedOptionProjectedMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RDSDatabaseRecommendedOptionProjectedMetrics", name: "RDSDatabaseRecommendedOptionProjectedMetrics")
    RDSEffectiveRecommendationPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RDSEffectiveRecommendationPreferences", name: "RDSEffectiveRecommendationPreferences")
    RDSEstimatedMonthlyVolumeIOPsCostVariation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#RDSEstimatedMonthlyVolumeIOPsCostVariation", name: "RDSEstimatedMonthlyVolumeIOPsCostVariation")
    RDSInstanceEstimatedMonthlySavings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RDSInstanceEstimatedMonthlySavings", name: "RDSInstanceEstimatedMonthlySavings")
    RDSInstanceFinding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#RDSInstanceFinding", name: "RDSInstanceFinding")
    RDSInstanceFindingReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#RDSInstanceFindingReasonCode", name: "RDSInstanceFindingReasonCode")
    RDSInstanceFindingReasonCodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RDSInstanceFindingReasonCodes", name: "RDSInstanceFindingReasonCodes")
    RDSInstanceSavingsOpportunityAfterDiscounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RDSInstanceSavingsOpportunityAfterDiscounts", name: "RDSInstanceSavingsOpportunityAfterDiscounts")
    RDSSavingsEstimationMode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RDSSavingsEstimationMode", name: "RDSSavingsEstimationMode")
    RDSSavingsEstimationModeSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#RDSSavingsEstimationModeSource", name: "RDSSavingsEstimationModeSource")
    RDSStorageEstimatedMonthlySavings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RDSStorageEstimatedMonthlySavings", name: "RDSStorageEstimatedMonthlySavings")
    RDSStorageFinding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#RDSStorageFinding", name: "RDSStorageFinding")
    RDSStorageFindingReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#RDSStorageFindingReasonCode", name: "RDSStorageFindingReasonCode")
    RDSStorageFindingReasonCodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RDSStorageFindingReasonCodes", name: "RDSStorageFindingReasonCodes")
    RDSStorageSavingsOpportunityAfterDiscounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RDSStorageSavingsOpportunityAfterDiscounts", name: "RDSStorageSavingsOpportunityAfterDiscounts")
    Rank = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#Rank", name: "Rank", traits: {"smithy.api#default" => 0})
    ReasonCodeSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ReasonCodeSummaries", name: "ReasonCodeSummaries")
    ReasonCodeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ReasonCodeSummary", name: "ReasonCodeSummary")
    RecommendationExportJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RecommendationExportJob", name: "RecommendationExportJob")
    RecommendationExportJobs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RecommendationExportJobs", name: "RecommendationExportJobs")
    RecommendationOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RecommendationOptions", name: "RecommendationOptions")
    RecommendationPreferenceName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#RecommendationPreferenceName", name: "RecommendationPreferenceName")
    RecommendationPreferenceNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RecommendationPreferenceNames", name: "RecommendationPreferenceNames")
    RecommendationPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RecommendationPreferences", name: "RecommendationPreferences")
    RecommendationPreferencesDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RecommendationPreferencesDetail", name: "RecommendationPreferencesDetail")
    RecommendationPreferencesDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RecommendationPreferencesDetails", name: "RecommendationPreferencesDetails")
    RecommendationSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RecommendationSource", name: "RecommendationSource")
    RecommendationSourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#RecommendationSourceArn", name: "RecommendationSourceArn")
    RecommendationSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#RecommendationSourceType", name: "RecommendationSourceType")
    RecommendationSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RecommendationSources", name: "RecommendationSources")
    RecommendationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RecommendationSummaries", name: "RecommendationSummaries")
    RecommendationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RecommendationSummary", name: "RecommendationSummary")
    RecommendedDBInstanceClass = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#RecommendedDBInstanceClass", name: "RecommendedDBInstanceClass")
    RecommendedInstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#RecommendedInstanceType", name: "RecommendedInstanceType")
    RecommendedOptionProjectedMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#RecommendedOptionProjectedMetric", name: "RecommendedOptionProjectedMetric")
    RecommendedOptionProjectedMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#RecommendedOptionProjectedMetrics", name: "RecommendedOptionProjectedMetrics")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#ResourceArn", name: "ResourceArn")
    ResourceArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ResourceArns", name: "ResourceArns")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#ResourceId", name: "ResourceId")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ResourceType", name: "ResourceType")
    RootVolume = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.computeoptimizer#RootVolume", name: "RootVolume")
    S3Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#S3Destination", name: "S3Destination")
    S3DestinationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#S3DestinationConfig", name: "S3DestinationConfig")
    SavingsEstimationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#SavingsEstimationMode", name: "SavingsEstimationMode")
    SavingsOpportunity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#SavingsOpportunity", name: "SavingsOpportunity")
    SavingsOpportunityPercentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.computeoptimizer#SavingsOpportunityPercentage", name: "SavingsOpportunityPercentage", traits: {"smithy.api#default" => 0})
    Scope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#Scope", name: "Scope")
    ScopeName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#ScopeName", name: "ScopeName")
    ScopeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#ScopeValue", name: "ScopeValue")
    ServiceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#ServiceArn", name: "ServiceArn")
    ServiceArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#ServiceArns", name: "ServiceArns")
    ServiceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ServiceConfiguration", name: "ServiceConfiguration")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.computeoptimizer#Status", name: "Status")
    StatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#StatusReason", name: "StatusReason")
    StorageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#StorageType", name: "StorageType")
    Summaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#Summaries", name: "Summaries")
    Summary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#Summary", name: "Summary")
    SummaryValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.computeoptimizer#SummaryValue", name: "SummaryValue", traits: {"smithy.api#default" => 0})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#TagKey", name: "TagKey")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#TagValue", name: "TagValue")
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#Tags", name: "Tags")
    TaskDefinitionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#TaskDefinitionArn", name: "TaskDefinitionArn")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.computeoptimizer#Timestamp", name: "Timestamp")
    Timestamps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#Timestamps", name: "Timestamps")
    UpdateEnrollmentStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#UpdateEnrollmentStatusRequest", name: "UpdateEnrollmentStatusRequest")
    UpdateEnrollmentStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#UpdateEnrollmentStatusResponse", name: "UpdateEnrollmentStatusResponse")
    UpperBoundValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.computeoptimizer#UpperBoundValue", name: "UpperBoundValue", traits: {"smithy.api#default" => 0})
    UtilizationMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#UtilizationMetric", name: "UtilizationMetric")
    UtilizationMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#UtilizationMetrics", name: "UtilizationMetrics")
    UtilizationPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#UtilizationPreference", name: "UtilizationPreference")
    UtilizationPreferences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#UtilizationPreferences", name: "UtilizationPreferences")
    Value = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.computeoptimizer#Value", name: "Value", traits: {"smithy.api#default" => 0})
    VeryLow = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#VeryLow", name: "VeryLow", traits: {"smithy.api#default" => 0})
    VolumeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#VolumeArn", name: "VolumeArn")
    VolumeArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#VolumeArns", name: "VolumeArns")
    VolumeBaselineIOPS = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#VolumeBaselineIOPS", name: "VolumeBaselineIOPS", traits: {"smithy.api#default" => 0})
    VolumeBaselineThroughput = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#VolumeBaselineThroughput", name: "VolumeBaselineThroughput", traits: {"smithy.api#default" => 0})
    VolumeBurstIOPS = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#VolumeBurstIOPS", name: "VolumeBurstIOPS", traits: {"smithy.api#default" => 0})
    VolumeBurstThroughput = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#VolumeBurstThroughput", name: "VolumeBurstThroughput", traits: {"smithy.api#default" => 0})
    VolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#VolumeConfiguration", name: "VolumeConfiguration")
    VolumeRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#VolumeRecommendation", name: "VolumeRecommendation")
    VolumeRecommendationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.computeoptimizer#VolumeRecommendationOption", name: "VolumeRecommendationOption")
    VolumeRecommendationOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#VolumeRecommendationOptions", name: "VolumeRecommendationOptions")
    VolumeRecommendations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.computeoptimizer#VolumeRecommendations", name: "VolumeRecommendations")
    VolumeSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.computeoptimizer#VolumeSize", name: "VolumeSize", traits: {"smithy.api#default" => 0})
    VolumeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.computeoptimizer#VolumeType", name: "VolumeType")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountEnrollmentStatus.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    AccountEnrollmentStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    AccountEnrollmentStatus.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "statusReason"))
    AccountEnrollmentStatus.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedTimestamp, name: "lastUpdatedTimestamp"))
    AccountEnrollmentStatus.type = Types::AccountEnrollmentStatus
    AccountEnrollmentStatuses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountEnrollmentStatus, name: "member")
    AccountIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member")
    AllocationStrategy.add_member(:prioritized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIORITIZED", traits: {"smithy.api#enumValue" => "Prioritized"}))
    AllocationStrategy.add_member(:lowest_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOWEST_PRICE", traits: {"smithy.api#enumValue" => "LowestPrice"}))
    AsgType.add_member(:single_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "SingleInstanceType"}))
    AsgType.add_member(:mixed_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIXED_INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "MixedInstanceTypes"}))
    AutoScalingConfiguration.add_member(:target_tracking_scaling_cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_TRACKING_SCALING_CPU", traits: {"smithy.api#enumValue" => "TargetTrackingScalingCpu"}))
    AutoScalingConfiguration.add_member(:target_tracking_scaling_memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_TRACKING_SCALING_MEMORY", traits: {"smithy.api#enumValue" => "TargetTrackingScalingMemory"}))
    AutoScalingGroupArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupArn, name: "member")
    AutoScalingGroupConfiguration.add_member(:desired_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredCapacity, name: "desiredCapacity", traits: {"smithy.api#default" => 0}))
    AutoScalingGroupConfiguration.add_member(:min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MinSize, name: "minSize", traits: {"smithy.api#default" => 0}))
    AutoScalingGroupConfiguration.add_member(:max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSize, name: "maxSize", traits: {"smithy.api#default" => 0}))
    AutoScalingGroupConfiguration.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableInstanceType, name: "instanceType"))
    AutoScalingGroupConfiguration.add_member(:allocation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocationStrategy, name: "allocationStrategy"))
    AutoScalingGroupConfiguration.add_member(:estimated_instance_hour_reduction_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableEstimatedInstanceHourReductionPercentage, name: "estimatedInstanceHourReductionPercentage"))
    AutoScalingGroupConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AsgType, name: "type"))
    AutoScalingGroupConfiguration.add_member(:mixed_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: MixedInstanceTypes, name: "mixedInstanceTypes"))
    AutoScalingGroupConfiguration.type = Types::AutoScalingGroupConfiguration
    AutoScalingGroupEstimatedMonthlySavings.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, name: "currency"))
    AutoScalingGroupEstimatedMonthlySavings.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "value", traits: {"smithy.api#default" => 0}))
    AutoScalingGroupEstimatedMonthlySavings.type = Types::AutoScalingGroupEstimatedMonthlySavings
    AutoScalingGroupRecommendation.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    AutoScalingGroupRecommendation.add_member(:auto_scaling_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupArn, name: "autoScalingGroupArn"))
    AutoScalingGroupRecommendation.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupName, name: "autoScalingGroupName"))
    AutoScalingGroupRecommendation.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: Finding, name: "finding"))
    AutoScalingGroupRecommendation.add_member(:utilization_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: UtilizationMetrics, name: "utilizationMetrics"))
    AutoScalingGroupRecommendation.add_member(:look_back_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: LookBackPeriodInDays, name: "lookBackPeriodInDays", traits: {"smithy.api#default" => 0}))
    AutoScalingGroupRecommendation.add_member(:current_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupConfiguration, name: "currentConfiguration"))
    AutoScalingGroupRecommendation.add_member(:current_instance_gpu_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GpuInfo, name: "currentInstanceGpuInfo"))
    AutoScalingGroupRecommendation.add_member(:recommendation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupRecommendationOptions, name: "recommendationOptions"))
    AutoScalingGroupRecommendation.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: LastRefreshTimestamp, name: "lastRefreshTimestamp"))
    AutoScalingGroupRecommendation.add_member(:current_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentPerformanceRisk, name: "currentPerformanceRisk"))
    AutoScalingGroupRecommendation.add_member(:effective_recommendation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveRecommendationPreferences, name: "effectiveRecommendationPreferences"))
    AutoScalingGroupRecommendation.add_member(:inferred_workload_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InferredWorkloadTypes, name: "inferredWorkloadTypes"))
    AutoScalingGroupRecommendation.type = Types::AutoScalingGroupRecommendation
    AutoScalingGroupRecommendationOption.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupConfiguration, name: "configuration"))
    AutoScalingGroupRecommendationOption.add_member(:instance_gpu_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GpuInfo, name: "instanceGpuInfo"))
    AutoScalingGroupRecommendationOption.add_member(:projected_utilization_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectedUtilizationMetrics, name: "projectedUtilizationMetrics"))
    AutoScalingGroupRecommendationOption.add_member(:performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceRisk, name: "performanceRisk", traits: {"smithy.api#default" => 0}))
    AutoScalingGroupRecommendationOption.add_member(:rank, ::Smithy::Schema::Shapes::MemberShape.new(target: Rank, name: "rank", traits: {"smithy.api#default" => 0}))
    AutoScalingGroupRecommendationOption.add_member(:savings_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunity, name: "savingsOpportunity"))
    AutoScalingGroupRecommendationOption.add_member(:savings_opportunity_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupSavingsOpportunityAfterDiscounts, name: "savingsOpportunityAfterDiscounts"))
    AutoScalingGroupRecommendationOption.add_member(:migration_effort, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationEffort, name: "migrationEffort"))
    AutoScalingGroupRecommendationOption.type = Types::AutoScalingGroupRecommendationOption
    AutoScalingGroupRecommendationOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupRecommendationOption, name: "member")
    AutoScalingGroupRecommendations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupRecommendation, name: "member")
    AutoScalingGroupSavingsOpportunityAfterDiscounts.add_member(:savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunityPercentage, name: "savingsOpportunityPercentage", traits: {"smithy.api#default" => 0}))
    AutoScalingGroupSavingsOpportunityAfterDiscounts.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupEstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    AutoScalingGroupSavingsOpportunityAfterDiscounts.type = Types::AutoScalingGroupSavingsOpportunityAfterDiscounts
    ContainerConfiguration.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "containerName"))
    ContainerConfiguration.add_member(:memory_size_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySizeConfiguration, name: "memorySizeConfiguration"))
    ContainerConfiguration.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableCpu, name: "cpu"))
    ContainerConfiguration.type = Types::ContainerConfiguration
    ContainerConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerConfiguration, name: "member")
    ContainerRecommendation.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "containerName"))
    ContainerRecommendation.add_member(:memory_size_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySizeConfiguration, name: "memorySizeConfiguration"))
    ContainerRecommendation.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableCpu, name: "cpu"))
    ContainerRecommendation.type = Types::ContainerRecommendation
    ContainerRecommendations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecommendation, name: "member")
    CpuVendorArchitecture.add_member(:aws_arm64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_ARM64", traits: {"smithy.api#enumValue" => "AWS_ARM64"}))
    CpuVendorArchitecture.add_member(:current, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT", traits: {"smithy.api#enumValue" => "CURRENT"}))
    CpuVendorArchitectures.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CpuVendorArchitecture, name: "member")
    Currency.add_member(:usd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USD", traits: {"smithy.api#enumValue" => "USD"}))
    Currency.add_member(:cny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CNY", traits: {"smithy.api#enumValue" => "CNY"}))
    CurrentPerformanceRisk.add_member(:very_low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERY_LOW", traits: {"smithy.api#enumValue" => "VeryLow"}))
    CurrentPerformanceRisk.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "Low"}))
    CurrentPerformanceRisk.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "Medium"}))
    CurrentPerformanceRisk.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "High"}))
    CurrentPerformanceRiskRatings.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: High, name: "high", traits: {"smithy.api#default" => 0}))
    CurrentPerformanceRiskRatings.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: Medium, name: "medium", traits: {"smithy.api#default" => 0}))
    CurrentPerformanceRiskRatings.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: Low, name: "low", traits: {"smithy.api#default" => 0}))
    CurrentPerformanceRiskRatings.add_member(:very_low, ::Smithy::Schema::Shapes::MemberShape.new(target: VeryLow, name: "veryLow", traits: {"smithy.api#default" => 0}))
    CurrentPerformanceRiskRatings.type = Types::CurrentPerformanceRiskRatings
    CustomizableMetricHeadroom.add_member(:percent_30, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERCENT_30", traits: {"smithy.api#enumValue" => "PERCENT_30"}))
    CustomizableMetricHeadroom.add_member(:percent_20, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERCENT_20", traits: {"smithy.api#enumValue" => "PERCENT_20"}))
    CustomizableMetricHeadroom.add_member(:percent_10, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERCENT_10", traits: {"smithy.api#enumValue" => "PERCENT_10"}))
    CustomizableMetricHeadroom.add_member(:percent_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERCENT_0", traits: {"smithy.api#enumValue" => "PERCENT_0"}))
    CustomizableMetricName.add_member(:cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPU_UTILIZATION", traits: {"smithy.api#enumValue" => "CpuUtilization"}))
    CustomizableMetricName.add_member(:memory_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY_UTILIZATION", traits: {"smithy.api#enumValue" => "MemoryUtilization"}))
    CustomizableMetricParameters.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomizableMetricThreshold, name: "threshold"))
    CustomizableMetricParameters.add_member(:headroom, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomizableMetricHeadroom, name: "headroom"))
    CustomizableMetricParameters.type = Types::CustomizableMetricParameters
    CustomizableMetricThreshold.add_member(:p90, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "P90", traits: {"smithy.api#enumValue" => "P90"}))
    CustomizableMetricThreshold.add_member(:p95, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "P95", traits: {"smithy.api#enumValue" => "P95"}))
    CustomizableMetricThreshold.add_member(:p99_5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "P99_5", traits: {"smithy.api#enumValue" => "P99_5"}))
    DBStorageConfiguration.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, name: "storageType"))
    DBStorageConfiguration.add_member(:allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: AllocatedStorage, name: "allocatedStorage", traits: {"smithy.api#default" => 0}))
    DBStorageConfiguration.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableIOPS, name: "iops"))
    DBStorageConfiguration.add_member(:max_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableMaxAllocatedStorage, name: "maxAllocatedStorage"))
    DBStorageConfiguration.add_member(:storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableStorageThroughput, name: "storageThroughput"))
    DBStorageConfiguration.type = Types::DBStorageConfiguration
    DeleteRecommendationPreferencesRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    DeleteRecommendationPreferencesRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "scope"))
    DeleteRecommendationPreferencesRequest.add_member(:recommendation_preference_names, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPreferenceNames, name: "recommendationPreferenceNames", traits: {"smithy.api#required" => {}}))
    DeleteRecommendationPreferencesRequest.type = Types::DeleteRecommendationPreferencesRequest
    DeleteRecommendationPreferencesResponse.type = Types::DeleteRecommendationPreferencesResponse
    DescribeRecommendationExportJobsRequest.add_member(:job_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: JobIds, name: "jobIds"))
    DescribeRecommendationExportJobsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: JobFilters, name: "filters"))
    DescribeRecommendationExportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeRecommendationExportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    DescribeRecommendationExportJobsRequest.type = Types::DescribeRecommendationExportJobsRequest
    DescribeRecommendationExportJobsResponse.add_member(:recommendation_export_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationExportJobs, name: "recommendationExportJobs"))
    DescribeRecommendationExportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeRecommendationExportJobsResponse.type = Types::DescribeRecommendationExportJobsResponse
    Dimension.add_member(:savings_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAVINGS_VALUE", traits: {"smithy.api#enumValue" => "SavingsValue"}))
    Dimension.add_member(:savings_value_after_discount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAVINGS_VALUE_AFTER_DISCOUNT", traits: {"smithy.api#enumValue" => "SavingsValueAfterDiscount"}))
    EBSEffectiveRecommendationPreferences.add_member(:savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSSavingsEstimationMode, name: "savingsEstimationMode"))
    EBSEffectiveRecommendationPreferences.type = Types::EBSEffectiveRecommendationPreferences
    EBSEstimatedMonthlySavings.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, name: "currency"))
    EBSEstimatedMonthlySavings.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "value", traits: {"smithy.api#default" => 0}))
    EBSEstimatedMonthlySavings.type = Types::EBSEstimatedMonthlySavings
    EBSFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSFilterName, name: "name"))
    EBSFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values"))
    EBSFilter.type = Types::EBSFilter
    EBSFilterName.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING", traits: {"smithy.api#enumValue" => "Finding"}))
    EBSFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EBSFilter, name: "member")
    EBSFinding.add_member(:optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIMIZED", traits: {"smithy.api#enumValue" => "Optimized"}))
    EBSFinding.add_member(:not_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_OPTIMIZED", traits: {"smithy.api#enumValue" => "NotOptimized"}))
    EBSMetricName.add_member(:volume_read_ops_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_READ_OPS_PER_SECOND", traits: {"smithy.api#enumValue" => "VolumeReadOpsPerSecond"}))
    EBSMetricName.add_member(:volume_write_ops_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_WRITE_OPS_PER_SECOND", traits: {"smithy.api#enumValue" => "VolumeWriteOpsPerSecond"}))
    EBSMetricName.add_member(:volume_read_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_READ_BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "VolumeReadBytesPerSecond"}))
    EBSMetricName.add_member(:volume_write_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_WRITE_BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "VolumeWriteBytesPerSecond"}))
    EBSSavingsEstimationMode.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSSavingsEstimationModeSource, name: "source"))
    EBSSavingsEstimationMode.type = Types::EBSSavingsEstimationMode
    EBSSavingsEstimationModeSource.add_member(:public_pricing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_PRICING", traits: {"smithy.api#enumValue" => "PublicPricing"}))
    EBSSavingsEstimationModeSource.add_member(:cost_explorer_rightsizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COST_EXPLORER_RIGHTSIZING", traits: {"smithy.api#enumValue" => "CostExplorerRightsizing"}))
    EBSSavingsEstimationModeSource.add_member(:cost_optimization_hub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COST_OPTIMIZATION_HUB", traits: {"smithy.api#enumValue" => "CostOptimizationHub"}))
    EBSSavingsOpportunityAfterDiscounts.add_member(:savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunityPercentage, name: "savingsOpportunityPercentage", traits: {"smithy.api#default" => 0}))
    EBSSavingsOpportunityAfterDiscounts.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSEstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    EBSSavingsOpportunityAfterDiscounts.type = Types::EBSSavingsOpportunityAfterDiscounts
    EBSUtilizationMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSMetricName, name: "name"))
    EBSUtilizationMetric.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatistic, name: "statistic"))
    EBSUtilizationMetric.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, name: "value", traits: {"smithy.api#default" => 0}))
    EBSUtilizationMetric.type = Types::EBSUtilizationMetric
    EBSUtilizationMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EBSUtilizationMetric, name: "member")
    ECSEffectiveRecommendationPreferences.add_member(:savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSSavingsEstimationMode, name: "savingsEstimationMode"))
    ECSEffectiveRecommendationPreferences.type = Types::ECSEffectiveRecommendationPreferences
    ECSEstimatedMonthlySavings.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, name: "currency"))
    ECSEstimatedMonthlySavings.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "value", traits: {"smithy.api#default" => 0}))
    ECSEstimatedMonthlySavings.type = Types::ECSEstimatedMonthlySavings
    ECSSavingsEstimationMode.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSSavingsEstimationModeSource, name: "source"))
    ECSSavingsEstimationMode.type = Types::ECSSavingsEstimationMode
    ECSSavingsEstimationModeSource.add_member(:public_pricing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_PRICING", traits: {"smithy.api#enumValue" => "PublicPricing"}))
    ECSSavingsEstimationModeSource.add_member(:cost_explorer_rightsizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COST_EXPLORER_RIGHTSIZING", traits: {"smithy.api#enumValue" => "CostExplorerRightsizing"}))
    ECSSavingsEstimationModeSource.add_member(:cost_optimization_hub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COST_OPTIMIZATION_HUB", traits: {"smithy.api#enumValue" => "CostOptimizationHub"}))
    ECSSavingsOpportunityAfterDiscounts.add_member(:savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunityPercentage, name: "savingsOpportunityPercentage", traits: {"smithy.api#default" => 0}))
    ECSSavingsOpportunityAfterDiscounts.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSEstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    ECSSavingsOpportunityAfterDiscounts.type = Types::ECSSavingsOpportunityAfterDiscounts
    ECSServiceLaunchType.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    ECSServiceLaunchType.add_member(:fargate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FARGATE", traits: {"smithy.api#enumValue" => "Fargate"}))
    ECSServiceMetricName.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPU", traits: {"smithy.api#enumValue" => "Cpu"}))
    ECSServiceMetricName.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY", traits: {"smithy.api#enumValue" => "Memory"}))
    ECSServiceMetricStatistic.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAXIMUM", traits: {"smithy.api#enumValue" => "Maximum"}))
    ECSServiceMetricStatistic.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVERAGE", traits: {"smithy.api#enumValue" => "Average"}))
    ECSServiceProjectedMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceMetricName, name: "name"))
    ECSServiceProjectedMetric.add_member(:timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamps, name: "timestamps"))
    ECSServiceProjectedMetric.add_member(:upper_bound_values, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValues, name: "upperBoundValues"))
    ECSServiceProjectedMetric.add_member(:lower_bound_values, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValues, name: "lowerBoundValues"))
    ECSServiceProjectedMetric.type = Types::ECSServiceProjectedMetric
    ECSServiceProjectedMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceProjectedMetric, name: "member")
    ECSServiceProjectedUtilizationMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceMetricName, name: "name"))
    ECSServiceProjectedUtilizationMetric.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceMetricStatistic, name: "statistic"))
    ECSServiceProjectedUtilizationMetric.add_member(:lower_bound_value, ::Smithy::Schema::Shapes::MemberShape.new(target: LowerBoundValue, name: "lowerBoundValue", traits: {"smithy.api#default" => 0}))
    ECSServiceProjectedUtilizationMetric.add_member(:upper_bound_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UpperBoundValue, name: "upperBoundValue", traits: {"smithy.api#default" => 0}))
    ECSServiceProjectedUtilizationMetric.type = Types::ECSServiceProjectedUtilizationMetric
    ECSServiceProjectedUtilizationMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceProjectedUtilizationMetric, name: "member")
    ECSServiceRecommendation.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArn, name: "serviceArn"))
    ECSServiceRecommendation.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    ECSServiceRecommendation.add_member(:current_service_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConfiguration, name: "currentServiceConfiguration"))
    ECSServiceRecommendation.add_member(:utilization_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceUtilizationMetrics, name: "utilizationMetrics"))
    ECSServiceRecommendation.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: LookBackPeriodInDays, name: "lookbackPeriodInDays", traits: {"smithy.api#default" => 0}))
    ECSServiceRecommendation.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceLaunchType, name: "launchType"))
    ECSServiceRecommendation.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: LastRefreshTimestamp, name: "lastRefreshTimestamp"))
    ECSServiceRecommendation.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceRecommendationFinding, name: "finding"))
    ECSServiceRecommendation.add_member(:finding_reason_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceRecommendationFindingReasonCodes, name: "findingReasonCodes"))
    ECSServiceRecommendation.add_member(:service_recommendation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceRecommendationOptions, name: "serviceRecommendationOptions"))
    ECSServiceRecommendation.add_member(:current_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentPerformanceRisk, name: "currentPerformanceRisk"))
    ECSServiceRecommendation.add_member(:effective_recommendation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSEffectiveRecommendationPreferences, name: "effectiveRecommendationPreferences"))
    ECSServiceRecommendation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ECSServiceRecommendation.type = Types::ECSServiceRecommendation
    ECSServiceRecommendationFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceRecommendationFilterName, name: "name"))
    ECSServiceRecommendationFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values"))
    ECSServiceRecommendationFilter.type = Types::ECSServiceRecommendationFilter
    ECSServiceRecommendationFilterName.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING", traits: {"smithy.api#enumValue" => "Finding"}))
    ECSServiceRecommendationFilterName.add_member(:finding_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING_REASON_CODE", traits: {"smithy.api#enumValue" => "FindingReasonCode"}))
    ECSServiceRecommendationFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceRecommendationFilter, name: "member")
    ECSServiceRecommendationFinding.add_member(:optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIMIZED", traits: {"smithy.api#enumValue" => "Optimized"}))
    ECSServiceRecommendationFinding.add_member(:under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "Underprovisioned"}))
    ECSServiceRecommendationFinding.add_member(:over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "Overprovisioned"}))
    ECSServiceRecommendationFindingReasonCode.add_member(:memory_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "MemoryOverprovisioned"}))
    ECSServiceRecommendationFindingReasonCode.add_member(:memory_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "MemoryUnderprovisioned"}))
    ECSServiceRecommendationFindingReasonCode.add_member(:cpu_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPU_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "CPUOverprovisioned"}))
    ECSServiceRecommendationFindingReasonCode.add_member(:cpu_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPU_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "CPUUnderprovisioned"}))
    ECSServiceRecommendationFindingReasonCodes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceRecommendationFindingReasonCode, name: "member")
    ECSServiceRecommendationOption.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableMemory, name: "memory"))
    ECSServiceRecommendationOption.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableCpu, name: "cpu"))
    ECSServiceRecommendationOption.add_member(:savings_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunity, name: "savingsOpportunity"))
    ECSServiceRecommendationOption.add_member(:savings_opportunity_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSSavingsOpportunityAfterDiscounts, name: "savingsOpportunityAfterDiscounts"))
    ECSServiceRecommendationOption.add_member(:projected_utilization_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceProjectedUtilizationMetrics, name: "projectedUtilizationMetrics"))
    ECSServiceRecommendationOption.add_member(:container_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecommendations, name: "containerRecommendations"))
    ECSServiceRecommendationOption.type = Types::ECSServiceRecommendationOption
    ECSServiceRecommendationOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceRecommendationOption, name: "member")
    ECSServiceRecommendations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceRecommendation, name: "member")
    ECSServiceRecommendedOptionProjectedMetric.add_member(:recommended_cpu_units, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuSize, name: "recommendedCpuUnits", traits: {"smithy.api#default" => 0}))
    ECSServiceRecommendedOptionProjectedMetric.add_member(:recommended_memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "recommendedMemorySize", traits: {"smithy.api#default" => 0}))
    ECSServiceRecommendedOptionProjectedMetric.add_member(:projected_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceProjectedMetrics, name: "projectedMetrics"))
    ECSServiceRecommendedOptionProjectedMetric.type = Types::ECSServiceRecommendedOptionProjectedMetric
    ECSServiceRecommendedOptionProjectedMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceRecommendedOptionProjectedMetric, name: "member")
    ECSServiceUtilizationMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceMetricName, name: "name"))
    ECSServiceUtilizationMetric.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceMetricStatistic, name: "statistic"))
    ECSServiceUtilizationMetric.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, name: "value", traits: {"smithy.api#default" => 0}))
    ECSServiceUtilizationMetric.type = Types::ECSServiceUtilizationMetric
    ECSServiceUtilizationMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceUtilizationMetric, name: "member")
    EffectivePreferredResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredResourceName, name: "name"))
    EffectivePreferredResource.add_member(:include_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredResourceValues, name: "includeList"))
    EffectivePreferredResource.add_member(:effective_include_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredResourceValues, name: "effectiveIncludeList"))
    EffectivePreferredResource.add_member(:exclude_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredResourceValues, name: "excludeList"))
    EffectivePreferredResource.type = Types::EffectivePreferredResource
    EffectivePreferredResources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePreferredResource, name: "member")
    EffectiveRecommendationPreferences.add_member(:cpu_vendor_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuVendorArchitectures, name: "cpuVendorArchitectures"))
    EffectiveRecommendationPreferences.add_member(:enhanced_infrastructure_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedInfrastructureMetrics, name: "enhancedInfrastructureMetrics"))
    EffectiveRecommendationPreferences.add_member(:inferred_workload_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InferredWorkloadTypesPreference, name: "inferredWorkloadTypes"))
    EffectiveRecommendationPreferences.add_member(:external_metrics_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalMetricsPreference, name: "externalMetricsPreference"))
    EffectiveRecommendationPreferences.add_member(:look_back_period, ::Smithy::Schema::Shapes::MemberShape.new(target: LookBackPeriodPreference, name: "lookBackPeriod"))
    EffectiveRecommendationPreferences.add_member(:utilization_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: UtilizationPreferences, name: "utilizationPreferences"))
    EffectiveRecommendationPreferences.add_member(:preferred_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePreferredResources, name: "preferredResources"))
    EffectiveRecommendationPreferences.add_member(:savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSavingsEstimationMode, name: "savingsEstimationMode"))
    EffectiveRecommendationPreferences.type = Types::EffectiveRecommendationPreferences
    EnhancedInfrastructureMetrics.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    EnhancedInfrastructureMetrics.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "Inactive"}))
    EnrollmentFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnrollmentFilterName, name: "name"))
    EnrollmentFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values"))
    EnrollmentFilter.type = Types::EnrollmentFilter
    EnrollmentFilterName.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "Status"}))
    EnrollmentFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EnrollmentFilter, name: "member")
    EstimatedMonthlySavings.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, name: "currency"))
    EstimatedMonthlySavings.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "value", traits: {"smithy.api#default" => 0}))
    EstimatedMonthlySavings.type = Types::EstimatedMonthlySavings
    ExportAutoScalingGroupRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    ExportAutoScalingGroupRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "filters"))
    ExportAutoScalingGroupRecommendationsRequest.add_member(:fields_to_export, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableAutoScalingGroupFields, name: "fieldsToExport"))
    ExportAutoScalingGroupRecommendationsRequest.add_member(:s3_destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfig, name: "s3DestinationConfig", traits: {"smithy.api#required" => {}}))
    ExportAutoScalingGroupRecommendationsRequest.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, name: "fileFormat"))
    ExportAutoScalingGroupRecommendationsRequest.add_member(:include_member_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeMemberAccounts, name: "includeMemberAccounts", traits: {"smithy.api#default" => false}))
    ExportAutoScalingGroupRecommendationsRequest.add_member(:recommendation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPreferences, name: "recommendationPreferences"))
    ExportAutoScalingGroupRecommendationsRequest.type = Types::ExportAutoScalingGroupRecommendationsRequest
    ExportAutoScalingGroupRecommendationsResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    ExportAutoScalingGroupRecommendationsResponse.add_member(:s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Destination, name: "s3Destination"))
    ExportAutoScalingGroupRecommendationsResponse.type = Types::ExportAutoScalingGroupRecommendationsResponse
    ExportDestination.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Destination, name: "s3"))
    ExportDestination.type = Types::ExportDestination
    ExportEBSVolumeRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    ExportEBSVolumeRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSFilters, name: "filters"))
    ExportEBSVolumeRecommendationsRequest.add_member(:fields_to_export, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableVolumeFields, name: "fieldsToExport"))
    ExportEBSVolumeRecommendationsRequest.add_member(:s3_destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfig, name: "s3DestinationConfig", traits: {"smithy.api#required" => {}}))
    ExportEBSVolumeRecommendationsRequest.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, name: "fileFormat"))
    ExportEBSVolumeRecommendationsRequest.add_member(:include_member_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeMemberAccounts, name: "includeMemberAccounts", traits: {"smithy.api#default" => false}))
    ExportEBSVolumeRecommendationsRequest.type = Types::ExportEBSVolumeRecommendationsRequest
    ExportEBSVolumeRecommendationsResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    ExportEBSVolumeRecommendationsResponse.add_member(:s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Destination, name: "s3Destination"))
    ExportEBSVolumeRecommendationsResponse.type = Types::ExportEBSVolumeRecommendationsResponse
    ExportEC2InstanceRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    ExportEC2InstanceRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "filters"))
    ExportEC2InstanceRecommendationsRequest.add_member(:fields_to_export, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableInstanceFields, name: "fieldsToExport"))
    ExportEC2InstanceRecommendationsRequest.add_member(:s3_destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfig, name: "s3DestinationConfig", traits: {"smithy.api#required" => {}}))
    ExportEC2InstanceRecommendationsRequest.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, name: "fileFormat"))
    ExportEC2InstanceRecommendationsRequest.add_member(:include_member_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeMemberAccounts, name: "includeMemberAccounts", traits: {"smithy.api#default" => false}))
    ExportEC2InstanceRecommendationsRequest.add_member(:recommendation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPreferences, name: "recommendationPreferences"))
    ExportEC2InstanceRecommendationsRequest.type = Types::ExportEC2InstanceRecommendationsRequest
    ExportEC2InstanceRecommendationsResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    ExportEC2InstanceRecommendationsResponse.add_member(:s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Destination, name: "s3Destination"))
    ExportEC2InstanceRecommendationsResponse.type = Types::ExportEC2InstanceRecommendationsResponse
    ExportECSServiceRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    ExportECSServiceRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceRecommendationFilters, name: "filters"))
    ExportECSServiceRecommendationsRequest.add_member(:fields_to_export, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableECSServiceFields, name: "fieldsToExport"))
    ExportECSServiceRecommendationsRequest.add_member(:s3_destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfig, name: "s3DestinationConfig", traits: {"smithy.api#required" => {}}))
    ExportECSServiceRecommendationsRequest.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, name: "fileFormat"))
    ExportECSServiceRecommendationsRequest.add_member(:include_member_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeMemberAccounts, name: "includeMemberAccounts", traits: {"smithy.api#default" => false}))
    ExportECSServiceRecommendationsRequest.type = Types::ExportECSServiceRecommendationsRequest
    ExportECSServiceRecommendationsResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    ExportECSServiceRecommendationsResponse.add_member(:s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Destination, name: "s3Destination"))
    ExportECSServiceRecommendationsResponse.type = Types::ExportECSServiceRecommendationsResponse
    ExportIdleRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    ExportIdleRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleRecommendationFilters, name: "filters"))
    ExportIdleRecommendationsRequest.add_member(:fields_to_export, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableIdleFields, name: "fieldsToExport"))
    ExportIdleRecommendationsRequest.add_member(:s3_destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfig, name: "s3DestinationConfig", traits: {"smithy.api#required" => {}}))
    ExportIdleRecommendationsRequest.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, name: "fileFormat"))
    ExportIdleRecommendationsRequest.add_member(:include_member_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeMemberAccounts, name: "includeMemberAccounts", traits: {"smithy.api#default" => false}))
    ExportIdleRecommendationsRequest.type = Types::ExportIdleRecommendationsRequest
    ExportIdleRecommendationsResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    ExportIdleRecommendationsResponse.add_member(:s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Destination, name: "s3Destination"))
    ExportIdleRecommendationsResponse.type = Types::ExportIdleRecommendationsResponse
    ExportLambdaFunctionRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    ExportLambdaFunctionRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionRecommendationFilters, name: "filters"))
    ExportLambdaFunctionRecommendationsRequest.add_member(:fields_to_export, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableLambdaFunctionFields, name: "fieldsToExport"))
    ExportLambdaFunctionRecommendationsRequest.add_member(:s3_destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfig, name: "s3DestinationConfig", traits: {"smithy.api#required" => {}}))
    ExportLambdaFunctionRecommendationsRequest.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, name: "fileFormat"))
    ExportLambdaFunctionRecommendationsRequest.add_member(:include_member_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeMemberAccounts, name: "includeMemberAccounts", traits: {"smithy.api#default" => false}))
    ExportLambdaFunctionRecommendationsRequest.type = Types::ExportLambdaFunctionRecommendationsRequest
    ExportLambdaFunctionRecommendationsResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    ExportLambdaFunctionRecommendationsResponse.add_member(:s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Destination, name: "s3Destination"))
    ExportLambdaFunctionRecommendationsResponse.type = Types::ExportLambdaFunctionRecommendationsResponse
    ExportLicenseRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    ExportLicenseRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseRecommendationFilters, name: "filters"))
    ExportLicenseRecommendationsRequest.add_member(:fields_to_export, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableLicenseFields, name: "fieldsToExport"))
    ExportLicenseRecommendationsRequest.add_member(:s3_destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfig, name: "s3DestinationConfig", traits: {"smithy.api#required" => {}}))
    ExportLicenseRecommendationsRequest.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, name: "fileFormat"))
    ExportLicenseRecommendationsRequest.add_member(:include_member_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeMemberAccounts, name: "includeMemberAccounts", traits: {"smithy.api#default" => false}))
    ExportLicenseRecommendationsRequest.type = Types::ExportLicenseRecommendationsRequest
    ExportLicenseRecommendationsResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    ExportLicenseRecommendationsResponse.add_member(:s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Destination, name: "s3Destination"))
    ExportLicenseRecommendationsResponse.type = Types::ExportLicenseRecommendationsResponse
    ExportRDSDatabaseRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    ExportRDSDatabaseRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBRecommendationFilters, name: "filters"))
    ExportRDSDatabaseRecommendationsRequest.add_member(:fields_to_export, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableRDSDBFields, name: "fieldsToExport"))
    ExportRDSDatabaseRecommendationsRequest.add_member(:s3_destination_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfig, name: "s3DestinationConfig", traits: {"smithy.api#required" => {}}))
    ExportRDSDatabaseRecommendationsRequest.add_member(:file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: FileFormat, name: "fileFormat"))
    ExportRDSDatabaseRecommendationsRequest.add_member(:include_member_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeMemberAccounts, name: "includeMemberAccounts", traits: {"smithy.api#default" => false}))
    ExportRDSDatabaseRecommendationsRequest.add_member(:recommendation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPreferences, name: "recommendationPreferences"))
    ExportRDSDatabaseRecommendationsRequest.type = Types::ExportRDSDatabaseRecommendationsRequest
    ExportRDSDatabaseRecommendationsResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    ExportRDSDatabaseRecommendationsResponse.add_member(:s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Destination, name: "s3Destination"))
    ExportRDSDatabaseRecommendationsResponse.type = Types::ExportRDSDatabaseRecommendationsResponse
    ExportableAutoScalingGroupField.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "AccountId"}))
    ExportableAutoScalingGroupField.add_member(:auto_scaling_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_SCALING_GROUP_ARN", traits: {"smithy.api#enumValue" => "AutoScalingGroupArn"}))
    ExportableAutoScalingGroupField.add_member(:auto_scaling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_SCALING_GROUP_NAME", traits: {"smithy.api#enumValue" => "AutoScalingGroupName"}))
    ExportableAutoScalingGroupField.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING", traits: {"smithy.api#enumValue" => "Finding"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_cpu_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_CPU_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsCpuMaximum"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_memory_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_MEMORY_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsMemoryMaximum"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_ebs_read_ops_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_EBS_READ_OPS_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsEbsReadOpsPerSecondMaximum"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_ebs_write_ops_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_EBS_WRITE_OPS_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsEbsWriteOpsPerSecondMaximum"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_ebs_read_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_EBS_READ_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsEbsReadBytesPerSecondMaximum"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_ebs_write_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_EBS_WRITE_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsEbsWriteBytesPerSecondMaximum"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_disk_read_ops_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_DISK_READ_OPS_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsDiskReadOpsPerSecondMaximum"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_disk_write_ops_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_DISK_WRITE_OPS_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsDiskWriteOpsPerSecondMaximum"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_disk_read_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_DISK_READ_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsDiskReadBytesPerSecondMaximum"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_disk_write_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_DISK_WRITE_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsDiskWriteBytesPerSecondMaximum"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_network_in_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_NETWORK_IN_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsNetworkInBytesPerSecondMaximum"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_network_out_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_NETWORK_OUT_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsNetworkOutBytesPerSecondMaximum"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_network_packets_in_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_NETWORK_PACKETS_IN_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsNetworkPacketsInPerSecondMaximum"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_network_packets_out_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_NETWORK_PACKETS_OUT_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsNetworkPacketsOutPerSecondMaximum"}))
    ExportableAutoScalingGroupField.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOOKBACK_PERIOD_IN_DAYS", traits: {"smithy.api#enumValue" => "LookbackPeriodInDays"}))
    ExportableAutoScalingGroupField.add_member(:current_configuration_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "CurrentConfigurationInstanceType"}))
    ExportableAutoScalingGroupField.add_member(:current_configuration_desired_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_DESIRED_CAPACITY", traits: {"smithy.api#enumValue" => "CurrentConfigurationDesiredCapacity"}))
    ExportableAutoScalingGroupField.add_member(:current_configuration_min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_MIN_SIZE", traits: {"smithy.api#enumValue" => "CurrentConfigurationMinSize"}))
    ExportableAutoScalingGroupField.add_member(:current_configuration_max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_MAX_SIZE", traits: {"smithy.api#enumValue" => "CurrentConfigurationMaxSize"}))
    ExportableAutoScalingGroupField.add_member(:current_configuration_allocation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_ALLOCATION_STRATEGY", traits: {"smithy.api#enumValue" => "CurrentConfigurationAllocationStrategy"}))
    ExportableAutoScalingGroupField.add_member(:current_configuration_mixed_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_MIXED_INSTANCE_TYPES", traits: {"smithy.api#enumValue" => "CurrentConfigurationMixedInstanceTypes"}))
    ExportableAutoScalingGroupField.add_member(:current_configuration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_TYPE", traits: {"smithy.api#enumValue" => "CurrentConfigurationType"}))
    ExportableAutoScalingGroupField.add_member(:current_on_demand_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_ON_DEMAND_PRICE", traits: {"smithy.api#enumValue" => "CurrentOnDemandPrice"}))
    ExportableAutoScalingGroupField.add_member(:current_standard_one_year_no_upfront_reserved_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STANDARD_ONE_YEAR_NO_UPFRONT_RESERVED_PRICE", traits: {"smithy.api#enumValue" => "CurrentStandardOneYearNoUpfrontReservedPrice"}))
    ExportableAutoScalingGroupField.add_member(:current_standard_three_year_no_upfront_reserved_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STANDARD_THREE_YEAR_NO_UPFRONT_RESERVED_PRICE", traits: {"smithy.api#enumValue" => "CurrentStandardThreeYearNoUpfrontReservedPrice"}))
    ExportableAutoScalingGroupField.add_member(:current_vcpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_VCPUS", traits: {"smithy.api#enumValue" => "CurrentVCpus"}))
    ExportableAutoScalingGroupField.add_member(:current_memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_MEMORY", traits: {"smithy.api#enumValue" => "CurrentMemory"}))
    ExportableAutoScalingGroupField.add_member(:current_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STORAGE", traits: {"smithy.api#enumValue" => "CurrentStorage"}))
    ExportableAutoScalingGroupField.add_member(:current_network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_NETWORK", traits: {"smithy.api#enumValue" => "CurrentNetwork"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_configuration_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONFIGURATION_INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "RecommendationOptionsConfigurationInstanceType"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_configuration_desired_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONFIGURATION_DESIRED_CAPACITY", traits: {"smithy.api#enumValue" => "RecommendationOptionsConfigurationDesiredCapacity"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_configuration_min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONFIGURATION_MIN_SIZE", traits: {"smithy.api#enumValue" => "RecommendationOptionsConfigurationMinSize"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_configuration_max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONFIGURATION_MAX_SIZE", traits: {"smithy.api#enumValue" => "RecommendationOptionsConfigurationMaxSize"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_configuration_estimated_instance_hour_reduction_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONFIGURATION_ESTIMATED_INSTANCE_HOUR_REDUCTION_PERCENTAGE", traits: {"smithy.api#enumValue" => "RecommendationOptionsConfigurationEstimatedInstanceHourReductionPercentage"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_configuration_allocation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONFIGURATION_ALLOCATION_STRATEGY", traits: {"smithy.api#enumValue" => "RecommendationOptionsConfigurationAllocationStrategy"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_configuration_mixed_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONFIGURATION_MIXED_INSTANCE_TYPES", traits: {"smithy.api#enumValue" => "RecommendationOptionsConfigurationMixedInstanceTypes"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_configuration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONFIGURATION_TYPE", traits: {"smithy.api#enumValue" => "RecommendationOptionsConfigurationType"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_projected_utilization_metrics_cpu_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_CPU_MAXIMUM", traits: {"smithy.api#enumValue" => "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_projected_utilization_metrics_memory_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_MEMORY_MAXIMUM", traits: {"smithy.api#enumValue" => "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PERFORMANCE_RISK", traits: {"smithy.api#enumValue" => "RecommendationOptionsPerformanceRisk"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_on_demand_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ON_DEMAND_PRICE", traits: {"smithy.api#enumValue" => "RecommendationOptionsOnDemandPrice"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_standard_one_year_no_upfront_reserved_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_STANDARD_ONE_YEAR_NO_UPFRONT_RESERVED_PRICE", traits: {"smithy.api#enumValue" => "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_standard_three_year_no_upfront_reserved_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_STANDARD_THREE_YEAR_NO_UPFRONT_RESERVED_PRICE", traits: {"smithy.api#enumValue" => "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_vcpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_VCPUS", traits: {"smithy.api#enumValue" => "RecommendationOptionsVcpus"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_MEMORY", traits: {"smithy.api#enumValue" => "RecommendationOptionsMemory"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_STORAGE", traits: {"smithy.api#enumValue" => "RecommendationOptionsStorage"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_NETWORK", traits: {"smithy.api#enumValue" => "RecommendationOptionsNetwork"}))
    ExportableAutoScalingGroupField.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_REFRESH_TIMESTAMP", traits: {"smithy.api#enumValue" => "LastRefreshTimestamp"}))
    ExportableAutoScalingGroupField.add_member(:current_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_PERFORMANCE_RISK", traits: {"smithy.api#enumValue" => "CurrentPerformanceRisk"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE", traits: {"smithy.api#enumValue" => "RecommendationOptionsSavingsOpportunityPercentage"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_estimated_monthly_savings_currency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsCurrency"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_estimated_monthly_savings_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsValue"}))
    ExportableAutoScalingGroupField.add_member(:effective_recommendation_preferences_cpu_vendor_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_CPU_VENDOR_ARCHITECTURES", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesCpuVendorArchitectures"}))
    ExportableAutoScalingGroupField.add_member(:effective_recommendation_preferences_enhanced_infrastructure_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_ENHANCED_INFRASTRUCTURE_METRICS", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics"}))
    ExportableAutoScalingGroupField.add_member(:effective_recommendation_preferences_inferred_workload_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_INFERRED_WORKLOAD_TYPES", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesInferredWorkloadTypes"}))
    ExportableAutoScalingGroupField.add_member(:effective_recommendation_preferences_preferred_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_PREFERRED_RESOURCES", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesPreferredResources"}))
    ExportableAutoScalingGroupField.add_member(:effective_recommendation_preferences_lookback_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_LOOKBACK_PERIOD", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesLookBackPeriod"}))
    ExportableAutoScalingGroupField.add_member(:inferred_workload_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFERRED_WORKLOAD_TYPES", traits: {"smithy.api#enumValue" => "InferredWorkloadTypes"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_migration_effort, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_MIGRATION_EFFORT", traits: {"smithy.api#enumValue" => "RecommendationOptionsMigrationEffort"}))
    ExportableAutoScalingGroupField.add_member(:current_instance_gpu_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_INSTANCE_GPU_INFO", traits: {"smithy.api#enumValue" => "CurrentInstanceGpuInfo"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_instance_gpu_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_INSTANCE_GPU_INFO", traits: {"smithy.api#enumValue" => "RecommendationOptionsInstanceGpuInfo"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_gpu_percentage_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_GPU_PERCENTAGE_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsGpuPercentageMaximum"}))
    ExportableAutoScalingGroupField.add_member(:utilization_metrics_gpu_memory_percentage_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_GPU_MEMORY_PERCENTAGE_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsGpuMemoryPercentageMaximum"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_projected_utilization_metrics_gpu_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_GPU_MAXIMUM", traits: {"smithy.api#enumValue" => "RecommendationOptionsProjectedUtilizationMetricsGpuPercentageMaximum"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_projected_utilization_metrics_gpu_memory_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_GPU_MEMORY_MAXIMUM", traits: {"smithy.api#enumValue" => "RecommendationOptionsProjectedUtilizationMetricsGpuMemoryPercentageMaximum"}))
    ExportableAutoScalingGroupField.add_member(:effective_recommendation_preferences_savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_SAVINGS_ESTIMATION_MODE", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesSavingsEstimationMode"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_savings_opportunity_after_discounts_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_AFTER_DISCOUNTS_PERCENTAGE", traits: {"smithy.api#enumValue" => "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_estimated_monthly_savings_currency_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY_AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts"}))
    ExportableAutoScalingGroupField.add_member(:recommendation_options_estimated_monthly_savings_value_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE_AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"}))
    ExportableAutoScalingGroupFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableAutoScalingGroupField, name: "member")
    ExportableECSServiceField.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "AccountId"}))
    ExportableECSServiceField.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_ARN", traits: {"smithy.api#enumValue" => "ServiceArn"}))
    ExportableECSServiceField.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOOKBACK_PERIOD_IN_DAYS", traits: {"smithy.api#enumValue" => "LookbackPeriodInDays"}))
    ExportableECSServiceField.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_REFRESH_TIMESTAMP", traits: {"smithy.api#enumValue" => "LastRefreshTimestamp"}))
    ExportableECSServiceField.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAUNCH_TYPE", traits: {"smithy.api#enumValue" => "LaunchType"}))
    ExportableECSServiceField.add_member(:current_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_PERFORMANCE_RISK", traits: {"smithy.api#enumValue" => "CurrentPerformanceRisk"}))
    ExportableECSServiceField.add_member(:current_service_configuration_memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_SERVICE_CONFIGURATION_MEMORY", traits: {"smithy.api#enumValue" => "CurrentServiceConfigurationMemory"}))
    ExportableECSServiceField.add_member(:current_service_configuration_cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_SERVICE_CONFIGURATION_CPU", traits: {"smithy.api#enumValue" => "CurrentServiceConfigurationCpu"}))
    ExportableECSServiceField.add_member(:current_service_configuration_task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_SERVICE_CONFIGURATION_TASK_DEFINITION_ARN", traits: {"smithy.api#enumValue" => "CurrentServiceConfigurationTaskDefinitionArn"}))
    ExportableECSServiceField.add_member(:current_service_configuration_auto_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_SERVICE_CONFIGURATION_AUTO_SCALING_CONFIGURATION", traits: {"smithy.api#enumValue" => "CurrentServiceConfigurationAutoScalingConfiguration"}))
    ExportableECSServiceField.add_member(:current_service_container_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_SERVICE_CONTAINER_CONFIGURATIONS", traits: {"smithy.api#enumValue" => "CurrentServiceContainerConfigurations"}))
    ExportableECSServiceField.add_member(:utilization_metrics_cpu_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_CPU_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsCpuMaximum"}))
    ExportableECSServiceField.add_member(:utilization_metrics_memory_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_MEMORY_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsMemoryMaximum"}))
    ExportableECSServiceField.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING", traits: {"smithy.api#enumValue" => "Finding"}))
    ExportableECSServiceField.add_member(:finding_reason_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING_REASON_CODES", traits: {"smithy.api#enumValue" => "FindingReasonCodes"}))
    ExportableECSServiceField.add_member(:recommendation_options_memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_MEMORY", traits: {"smithy.api#enumValue" => "RecommendationOptionsMemory"}))
    ExportableECSServiceField.add_member(:recommendation_options_cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CPU", traits: {"smithy.api#enumValue" => "RecommendationOptionsCpu"}))
    ExportableECSServiceField.add_member(:recommendation_options_savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE", traits: {"smithy.api#enumValue" => "RecommendationOptionsSavingsOpportunityPercentage"}))
    ExportableECSServiceField.add_member(:recommendation_options_estimated_monthly_savings_currency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsCurrency"}))
    ExportableECSServiceField.add_member(:recommendation_options_estimated_monthly_savings_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsValue"}))
    ExportableECSServiceField.add_member(:recommendation_options_container_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONTAINER_RECOMMENDATIONS", traits: {"smithy.api#enumValue" => "RecommendationOptionsContainerRecommendations"}))
    ExportableECSServiceField.add_member(:recommendation_options_projected_utilization_metrics_cpu_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_CPU_MAXIMUM", traits: {"smithy.api#enumValue" => "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum"}))
    ExportableECSServiceField.add_member(:recommendation_options_projected_utilization_metrics_memory_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_MEMORY_MAXIMUM", traits: {"smithy.api#enumValue" => "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum"}))
    ExportableECSServiceField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "Tags"}))
    ExportableECSServiceField.add_member(:effective_recommendation_preferences_savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_SAVINGS_ESTIMATION_MODE", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesSavingsEstimationMode"}))
    ExportableECSServiceField.add_member(:recommendation_options_savings_opportunity_after_discounts_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_AFTER_DISCOUNTS_PERCENTAGE", traits: {"smithy.api#enumValue" => "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage"}))
    ExportableECSServiceField.add_member(:recommendation_options_estimated_monthly_savings_currency_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY_AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts"}))
    ExportableECSServiceField.add_member(:recommendation_options_estimated_monthly_savings_value_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE_AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"}))
    ExportableECSServiceFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableECSServiceField, name: "member")
    ExportableIdleField.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "AccountId"}))
    ExportableIdleField.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ARN", traits: {"smithy.api#enumValue" => "ResourceArn"}))
    ExportableIdleField.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ID", traits: {"smithy.api#enumValue" => "ResourceId"}))
    ExportableIdleField.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "ResourceType"}))
    ExportableIdleField.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_REFRESH_TIMESTAMP", traits: {"smithy.api#enumValue" => "LastRefreshTimestamp"}))
    ExportableIdleField.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOOKBACK_PERIOD_IN_DAYS", traits: {"smithy.api#enumValue" => "LookbackPeriodInDays"}))
    ExportableIdleField.add_member(:savings_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAVINGS_OPPORTUNITY", traits: {"smithy.api#enumValue" => "SavingsOpportunity"}))
    ExportableIdleField.add_member(:savings_opportunity_after_discount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAVINGS_OPPORTUNITY_AFTER_DISCOUNT", traits: {"smithy.api#enumValue" => "SavingsOpportunityAfterDiscount"}))
    ExportableIdleField.add_member(:utilization_metrics_cpu_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_CPU_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsCpuMaximum"}))
    ExportableIdleField.add_member(:utilization_metrics_memory_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_MEMORY_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsMemoryMaximum"}))
    ExportableIdleField.add_member(:utilization_metrics_network_out_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_NETWORK_OUT_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsNetworkOutBytesPerSecondMaximum"}))
    ExportableIdleField.add_member(:utilization_metrics_network_in_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_NETWORK_IN_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsNetworkInBytesPerSecondMaximum"}))
    ExportableIdleField.add_member(:utilization_metrics_database_connections_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_DATABASE_CONNECTIONS_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsDatabaseConnectionsMaximum"}))
    ExportableIdleField.add_member(:utilization_metrics_ebs_volume_read_iops_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_EBS_VOLUME_READ_IOPS_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsEBSVolumeReadIOPSMaximum"}))
    ExportableIdleField.add_member(:utilization_metrics_ebs_volume_write_iops_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_EBS_VOLUME_WRITE_IOPS_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsEBSVolumeWriteIOPSMaximum"}))
    ExportableIdleField.add_member(:utilization_metrics_volume_read_ops_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_VOLUME_READ_OPS_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsVolumeReadOpsPerSecondMaximum"}))
    ExportableIdleField.add_member(:utilization_metrics_volume_write_ops_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_VOLUME_WRITE_OPS_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsVolumeWriteOpsPerSecondMaximum"}))
    ExportableIdleField.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING", traits: {"smithy.api#enumValue" => "Finding"}))
    ExportableIdleField.add_member(:finding_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING_DESCRIPTION", traits: {"smithy.api#enumValue" => "FindingDescription"}))
    ExportableIdleField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "Tags"}))
    ExportableIdleFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableIdleField, name: "member")
    ExportableInstanceField.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "AccountId"}))
    ExportableInstanceField.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_ARN", traits: {"smithy.api#enumValue" => "InstanceArn"}))
    ExportableInstanceField.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_NAME", traits: {"smithy.api#enumValue" => "InstanceName"}))
    ExportableInstanceField.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING", traits: {"smithy.api#enumValue" => "Finding"}))
    ExportableInstanceField.add_member(:finding_reason_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Finding_Reason_Codes", traits: {"smithy.api#enumValue" => "FindingReasonCodes"}))
    ExportableInstanceField.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOOKBACK_PERIOD_IN_DAYS", traits: {"smithy.api#enumValue" => "LookbackPeriodInDays"}))
    ExportableInstanceField.add_member(:current_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "CurrentInstanceType"}))
    ExportableInstanceField.add_member(:utilization_metrics_cpu_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_CPU_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsCpuMaximum"}))
    ExportableInstanceField.add_member(:utilization_metrics_memory_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_MEMORY_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsMemoryMaximum"}))
    ExportableInstanceField.add_member(:utilization_metrics_ebs_read_ops_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_EBS_READ_OPS_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsEbsReadOpsPerSecondMaximum"}))
    ExportableInstanceField.add_member(:utilization_metrics_ebs_write_ops_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_EBS_WRITE_OPS_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsEbsWriteOpsPerSecondMaximum"}))
    ExportableInstanceField.add_member(:utilization_metrics_ebs_read_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_EBS_READ_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsEbsReadBytesPerSecondMaximum"}))
    ExportableInstanceField.add_member(:utilization_metrics_ebs_write_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_EBS_WRITE_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsEbsWriteBytesPerSecondMaximum"}))
    ExportableInstanceField.add_member(:utilization_metrics_disk_read_ops_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_DISK_READ_OPS_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsDiskReadOpsPerSecondMaximum"}))
    ExportableInstanceField.add_member(:utilization_metrics_disk_write_ops_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_DISK_WRITE_OPS_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsDiskWriteOpsPerSecondMaximum"}))
    ExportableInstanceField.add_member(:utilization_metrics_disk_read_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_DISK_READ_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsDiskReadBytesPerSecondMaximum"}))
    ExportableInstanceField.add_member(:utilization_metrics_disk_write_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_DISK_WRITE_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsDiskWriteBytesPerSecondMaximum"}))
    ExportableInstanceField.add_member(:utilization_metrics_network_in_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_NETWORK_IN_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsNetworkInBytesPerSecondMaximum"}))
    ExportableInstanceField.add_member(:utilization_metrics_network_out_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_NETWORK_OUT_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsNetworkOutBytesPerSecondMaximum"}))
    ExportableInstanceField.add_member(:utilization_metrics_network_packets_in_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_NETWORK_PACKETS_IN_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsNetworkPacketsInPerSecondMaximum"}))
    ExportableInstanceField.add_member(:utilization_metrics_network_packets_out_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_NETWORK_PACKETS_OUT_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsNetworkPacketsOutPerSecondMaximum"}))
    ExportableInstanceField.add_member(:current_on_demand_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_ON_DEMAND_PRICE", traits: {"smithy.api#enumValue" => "CurrentOnDemandPrice"}))
    ExportableInstanceField.add_member(:current_standard_one_year_no_upfront_reserved_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STANDARD_ONE_YEAR_NO_UPFRONT_RESERVED_PRICE", traits: {"smithy.api#enumValue" => "CurrentStandardOneYearNoUpfrontReservedPrice"}))
    ExportableInstanceField.add_member(:current_standard_three_year_no_upfront_reserved_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STANDARD_THREE_YEAR_NO_UPFRONT_RESERVED_PRICE", traits: {"smithy.api#enumValue" => "CurrentStandardThreeYearNoUpfrontReservedPrice"}))
    ExportableInstanceField.add_member(:current_vcpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_VCPUS", traits: {"smithy.api#enumValue" => "CurrentVCpus"}))
    ExportableInstanceField.add_member(:current_memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_MEMORY", traits: {"smithy.api#enumValue" => "CurrentMemory"}))
    ExportableInstanceField.add_member(:current_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STORAGE", traits: {"smithy.api#enumValue" => "CurrentStorage"}))
    ExportableInstanceField.add_member(:current_network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_NETWORK", traits: {"smithy.api#enumValue" => "CurrentNetwork"}))
    ExportableInstanceField.add_member(:recommendation_options_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "RecommendationOptionsInstanceType"}))
    ExportableInstanceField.add_member(:recommendation_options_projected_utilization_metrics_cpu_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_CPU_MAXIMUM", traits: {"smithy.api#enumValue" => "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum"}))
    ExportableInstanceField.add_member(:recommendation_options_projected_utilization_metrics_memory_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_MEMORY_MAXIMUM", traits: {"smithy.api#enumValue" => "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum"}))
    ExportableInstanceField.add_member(:recommendation_options_platform_differences, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PLATFORM_DIFFERENCES", traits: {"smithy.api#enumValue" => "RecommendationOptionsPlatformDifferences"}))
    ExportableInstanceField.add_member(:recommendation_options_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PERFORMANCE_RISK", traits: {"smithy.api#enumValue" => "RecommendationOptionsPerformanceRisk"}))
    ExportableInstanceField.add_member(:recommendation_options_vcpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_VCPUS", traits: {"smithy.api#enumValue" => "RecommendationOptionsVcpus"}))
    ExportableInstanceField.add_member(:recommendation_options_memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_MEMORY", traits: {"smithy.api#enumValue" => "RecommendationOptionsMemory"}))
    ExportableInstanceField.add_member(:recommendation_options_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_STORAGE", traits: {"smithy.api#enumValue" => "RecommendationOptionsStorage"}))
    ExportableInstanceField.add_member(:recommendation_options_network, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_NETWORK", traits: {"smithy.api#enumValue" => "RecommendationOptionsNetwork"}))
    ExportableInstanceField.add_member(:recommendation_options_on_demand_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ON_DEMAND_PRICE", traits: {"smithy.api#enumValue" => "RecommendationOptionsOnDemandPrice"}))
    ExportableInstanceField.add_member(:recommendation_options_standard_one_year_no_upfront_reserved_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_STANDARD_ONE_YEAR_NO_UPFRONT_RESERVED_PRICE", traits: {"smithy.api#enumValue" => "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice"}))
    ExportableInstanceField.add_member(:recommendation_options_standard_three_year_no_upfront_reserved_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_STANDARD_THREE_YEAR_NO_UPFRONT_RESERVED_PRICE", traits: {"smithy.api#enumValue" => "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice"}))
    ExportableInstanceField.add_member(:recommendations_sources_recommendation_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATIONS_SOURCES_RECOMMENDATION_SOURCE_ARN", traits: {"smithy.api#enumValue" => "RecommendationsSourcesRecommendationSourceArn"}))
    ExportableInstanceField.add_member(:recommendations_sources_recommendation_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATIONS_SOURCES_RECOMMENDATION_SOURCE_TYPE", traits: {"smithy.api#enumValue" => "RecommendationsSourcesRecommendationSourceType"}))
    ExportableInstanceField.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_REFRESH_TIMESTAMP", traits: {"smithy.api#enumValue" => "LastRefreshTimestamp"}))
    ExportableInstanceField.add_member(:current_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_PERFORMANCE_RISK", traits: {"smithy.api#enumValue" => "CurrentPerformanceRisk"}))
    ExportableInstanceField.add_member(:recommendation_options_savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE", traits: {"smithy.api#enumValue" => "RecommendationOptionsSavingsOpportunityPercentage"}))
    ExportableInstanceField.add_member(:recommendation_options_estimated_monthly_savings_currency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsCurrency"}))
    ExportableInstanceField.add_member(:recommendation_options_estimated_monthly_savings_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsValue"}))
    ExportableInstanceField.add_member(:effective_recommendation_preferences_cpu_vendor_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_CPU_VENDOR_ARCHITECTURES", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesCpuVendorArchitectures"}))
    ExportableInstanceField.add_member(:effective_recommendation_preferences_enhanced_infrastructure_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_ENHANCED_INFRASTRUCTURE_METRICS", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics"}))
    ExportableInstanceField.add_member(:effective_recommendation_preferences_inferred_workload_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_INFERRED_WORKLOAD_TYPES", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesInferredWorkloadTypes"}))
    ExportableInstanceField.add_member(:inferred_workload_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFERRED_WORKLOAD_TYPES", traits: {"smithy.api#enumValue" => "InferredWorkloadTypes"}))
    ExportableInstanceField.add_member(:recommendation_options_migration_effort, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_MIGRATION_EFFORT", traits: {"smithy.api#enumValue" => "RecommendationOptionsMigrationEffort"}))
    ExportableInstanceField.add_member(:effective_recommendation_preferences_external_metrics_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_EXTERNAL_METRICS_SOURCE", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesExternalMetricsSource"}))
    ExportableInstanceField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "Tags"}))
    ExportableInstanceField.add_member(:instance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_STATE", traits: {"smithy.api#enumValue" => "InstanceState"}))
    ExportableInstanceField.add_member(:external_metric_status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL_METRIC_STATUS_CODE", traits: {"smithy.api#enumValue" => "ExternalMetricStatusCode"}))
    ExportableInstanceField.add_member(:external_metric_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL_METRIC_STATUS_REASON", traits: {"smithy.api#enumValue" => "ExternalMetricStatusReason"}))
    ExportableInstanceField.add_member(:current_instance_gpu_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_INSTANCE_GPU_INFO", traits: {"smithy.api#enumValue" => "CurrentInstanceGpuInfo"}))
    ExportableInstanceField.add_member(:recommendation_options_instance_gpu_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_INSTANCE_GPU_INFO", traits: {"smithy.api#enumValue" => "RecommendationOptionsInstanceGpuInfo"}))
    ExportableInstanceField.add_member(:utilization_metrics_gpu_percentage_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_GPU_PERCENTAGE_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsGpuPercentageMaximum"}))
    ExportableInstanceField.add_member(:utilization_metrics_gpu_memory_percentage_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_GPU_MEMORY_PERCENTAGE_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsGpuMemoryPercentageMaximum"}))
    ExportableInstanceField.add_member(:recommendation_options_projected_utilization_metrics_gpu_percentage_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_GPU_PERCENTAGE_MAXIMUM", traits: {"smithy.api#enumValue" => "RecommendationOptionsProjectedUtilizationMetricsGpuPercentageMaximum"}))
    ExportableInstanceField.add_member(:recommendation_options_projected_utilization_metrics_gpu_memory_percentage_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_GPU_MEMORY_PERCENTAGE_MAXIMUM", traits: {"smithy.api#enumValue" => "RecommendationOptionsProjectedUtilizationMetricsGpuMemoryPercentageMaximum"}))
    ExportableInstanceField.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDLE", traits: {"smithy.api#enumValue" => "Idle"}))
    ExportableInstanceField.add_member(:effective_recommendation_preferences_preferred_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_PREFERRED_RESOURCES", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesPreferredResources"}))
    ExportableInstanceField.add_member(:effective_recommendation_preferences_lookback_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_LOOKBACK_PERIOD", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesLookBackPeriod"}))
    ExportableInstanceField.add_member(:effective_recommendation_preferences_utilization_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_UTILIZATION_PREFERENCES", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesUtilizationPreferences"}))
    ExportableInstanceField.add_member(:effective_recommendation_preferences_savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_SAVINGS_ESTIMATION_MODE", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesSavingsEstimationMode"}))
    ExportableInstanceField.add_member(:recommendation_options_savings_opportunity_after_discounts_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_AFTER_DISCOUNTS_PERCENTAGE", traits: {"smithy.api#enumValue" => "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage"}))
    ExportableInstanceField.add_member(:recommendation_options_estimated_monthly_savings_currency_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY_AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts"}))
    ExportableInstanceField.add_member(:recommendation_options_estimated_monthly_savings_value_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE_AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"}))
    ExportableInstanceFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableInstanceField, name: "member")
    ExportableLambdaFunctionField.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "AccountId"}))
    ExportableLambdaFunctionField.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FUNCTION_ARN", traits: {"smithy.api#enumValue" => "FunctionArn"}))
    ExportableLambdaFunctionField.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FUNCTION_VERSION", traits: {"smithy.api#enumValue" => "FunctionVersion"}))
    ExportableLambdaFunctionField.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING", traits: {"smithy.api#enumValue" => "Finding"}))
    ExportableLambdaFunctionField.add_member(:finding_reason_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING_REASON_CODES", traits: {"smithy.api#enumValue" => "FindingReasonCodes"}))
    ExportableLambdaFunctionField.add_member(:number_of_invocations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUMBER_OF_INVOCATIONS", traits: {"smithy.api#enumValue" => "NumberOfInvocations"}))
    ExportableLambdaFunctionField.add_member(:utilization_metrics_duration_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_DURATION_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsDurationMaximum"}))
    ExportableLambdaFunctionField.add_member(:utilization_metrics_duration_average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_DURATION_AVERAGE", traits: {"smithy.api#enumValue" => "UtilizationMetricsDurationAverage"}))
    ExportableLambdaFunctionField.add_member(:utilization_metrics_memory_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_MEMORY_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsMemoryMaximum"}))
    ExportableLambdaFunctionField.add_member(:utilization_metrics_memory_average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_MEMORY_AVERAGE", traits: {"smithy.api#enumValue" => "UtilizationMetricsMemoryAverage"}))
    ExportableLambdaFunctionField.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOOKBACK_PERIOD_IN_DAYS", traits: {"smithy.api#enumValue" => "LookbackPeriodInDays"}))
    ExportableLambdaFunctionField.add_member(:current_configuration_memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_MEMORY_SIZE", traits: {"smithy.api#enumValue" => "CurrentConfigurationMemorySize"}))
    ExportableLambdaFunctionField.add_member(:current_configuration_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_TIMEOUT", traits: {"smithy.api#enumValue" => "CurrentConfigurationTimeout"}))
    ExportableLambdaFunctionField.add_member(:current_cost_total, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_COST_TOTAL", traits: {"smithy.api#enumValue" => "CurrentCostTotal"}))
    ExportableLambdaFunctionField.add_member(:current_cost_average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_COST_AVERAGE", traits: {"smithy.api#enumValue" => "CurrentCostAverage"}))
    ExportableLambdaFunctionField.add_member(:recommendation_options_configuration_memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONFIGURATION_MEMORY_SIZE", traits: {"smithy.api#enumValue" => "RecommendationOptionsConfigurationMemorySize"}))
    ExportableLambdaFunctionField.add_member(:recommendation_options_cost_low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_COST_LOW", traits: {"smithy.api#enumValue" => "RecommendationOptionsCostLow"}))
    ExportableLambdaFunctionField.add_member(:recommendation_options_cost_high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_COST_HIGH", traits: {"smithy.api#enumValue" => "RecommendationOptionsCostHigh"}))
    ExportableLambdaFunctionField.add_member(:recommendation_options_projected_utilization_metrics_duration_lower_bound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_DURATION_LOWER_BOUND", traits: {"smithy.api#enumValue" => "RecommendationOptionsProjectedUtilizationMetricsDurationLowerBound"}))
    ExportableLambdaFunctionField.add_member(:recommendation_options_projected_utilization_metrics_duration_upper_bound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_DURATION_UPPER_BOUND", traits: {"smithy.api#enumValue" => "RecommendationOptionsProjectedUtilizationMetricsDurationUpperBound"}))
    ExportableLambdaFunctionField.add_member(:recommendation_options_projected_utilization_metrics_duration_expected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_DURATION_EXPECTED", traits: {"smithy.api#enumValue" => "RecommendationOptionsProjectedUtilizationMetricsDurationExpected"}))
    ExportableLambdaFunctionField.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_REFRESH_TIMESTAMP", traits: {"smithy.api#enumValue" => "LastRefreshTimestamp"}))
    ExportableLambdaFunctionField.add_member(:current_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_PERFORMANCE_RISK", traits: {"smithy.api#enumValue" => "CurrentPerformanceRisk"}))
    ExportableLambdaFunctionField.add_member(:recommendation_options_savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE", traits: {"smithy.api#enumValue" => "RecommendationOptionsSavingsOpportunityPercentage"}))
    ExportableLambdaFunctionField.add_member(:recommendation_options_estimated_monthly_savings_currency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsCurrency"}))
    ExportableLambdaFunctionField.add_member(:recommendation_options_estimated_monthly_savings_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsValue"}))
    ExportableLambdaFunctionField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "Tags"}))
    ExportableLambdaFunctionField.add_member(:effective_recommendation_preferences_savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_SAVINGS_ESTIMATION_MODE", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesSavingsEstimationMode"}))
    ExportableLambdaFunctionField.add_member(:recommendation_options_savings_opportunity_after_discounts_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_AFTER_DISCOUNTS_PERCENTAGE", traits: {"smithy.api#enumValue" => "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage"}))
    ExportableLambdaFunctionField.add_member(:recommendation_options_estimated_monthly_savings_currency_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY_AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts"}))
    ExportableLambdaFunctionField.add_member(:recommendation_options_estimated_monthly_savings_value_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE_AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"}))
    ExportableLambdaFunctionFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableLambdaFunctionField, name: "member")
    ExportableLicenseField.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "AccountId"}))
    ExportableLicenseField.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ARN", traits: {"smithy.api#enumValue" => "ResourceArn"}))
    ExportableLicenseField.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOOKBACK_PERIOD_IN_DAYS", traits: {"smithy.api#enumValue" => "LookbackPeriodInDays"}))
    ExportableLicenseField.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_REFRESH_TIMESTAMP", traits: {"smithy.api#enumValue" => "LastRefreshTimestamp"}))
    ExportableLicenseField.add_member(:license_finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE_FINDING", traits: {"smithy.api#enumValue" => "Finding"}))
    ExportableLicenseField.add_member(:license_finding_reason_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE_FINDING_REASON_CODES", traits: {"smithy.api#enumValue" => "FindingReasonCodes"}))
    ExportableLicenseField.add_member(:current_license_configuration_number_of_cores, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_LICENSE_CONFIGURATION_NUMBER_OF_CORES", traits: {"smithy.api#enumValue" => "CurrentLicenseConfigurationNumberOfCores"}))
    ExportableLicenseField.add_member(:current_license_configuration_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_LICENSE_CONFIGURATION_INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "CurrentLicenseConfigurationInstanceType"}))
    ExportableLicenseField.add_member(:current_license_configuration_operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_LICENSE_CONFIGURATION_OPERATING_SYSTEM", traits: {"smithy.api#enumValue" => "CurrentLicenseConfigurationOperatingSystem"}))
    ExportableLicenseField.add_member(:current_license_configuration_license_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_LICENSE_CONFIGURATION_LICENSE_NAME", traits: {"smithy.api#enumValue" => "CurrentLicenseConfigurationLicenseName"}))
    ExportableLicenseField.add_member(:current_license_configuration_license_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_LICENSE_CONFIGURATION_LICENSE_EDITION", traits: {"smithy.api#enumValue" => "CurrentLicenseConfigurationLicenseEdition"}))
    ExportableLicenseField.add_member(:current_license_configuration_license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_LICENSE_CONFIGURATION_LICENSE_MODEL", traits: {"smithy.api#enumValue" => "CurrentLicenseConfigurationLicenseModel"}))
    ExportableLicenseField.add_member(:current_license_configuration_license_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_LICENSE_CONFIGURATION_LICENSE_VERSION", traits: {"smithy.api#enumValue" => "CurrentLicenseConfigurationLicenseVersion"}))
    ExportableLicenseField.add_member(:current_license_configuration_metrics_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_LICENSE_CONFIGURATION_METRICS_SOURCE", traits: {"smithy.api#enumValue" => "CurrentLicenseConfigurationMetricsSource"}))
    ExportableLicenseField.add_member(:recommendation_options_operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_OPERATING_SYSTEM", traits: {"smithy.api#enumValue" => "RecommendationOptionsOperatingSystem"}))
    ExportableLicenseField.add_member(:recommendation_options_license_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_LICENSE_EDITION", traits: {"smithy.api#enumValue" => "RecommendationOptionsLicenseEdition"}))
    ExportableLicenseField.add_member(:recommendation_options_license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_LICENSE_MODEL", traits: {"smithy.api#enumValue" => "RecommendationOptionsLicenseModel"}))
    ExportableLicenseField.add_member(:recommendation_options_savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE", traits: {"smithy.api#enumValue" => "RecommendationOptionsSavingsOpportunityPercentage"}))
    ExportableLicenseField.add_member(:recommendation_options_estimated_monthly_savings_currency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsCurrency"}))
    ExportableLicenseField.add_member(:recommendation_options_estimated_monthly_savings_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsValue"}))
    ExportableLicenseField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "Tags"}))
    ExportableLicenseFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableLicenseField, name: "member")
    ExportableRDSDBField.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ARN", traits: {"smithy.api#enumValue" => "ResourceArn"}))
    ExportableRDSDBField.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "AccountId"}))
    ExportableRDSDBField.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENGINE", traits: {"smithy.api#enumValue" => "Engine"}))
    ExportableRDSDBField.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENGINE_VERSION", traits: {"smithy.api#enumValue" => "EngineVersion"}))
    ExportableRDSDBField.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDLE", traits: {"smithy.api#enumValue" => "Idle"}))
    ExportableRDSDBField.add_member(:multi_az_db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_AZ_DB_INSTANCE", traits: {"smithy.api#enumValue" => "MultiAZDBInstance"}))
    ExportableRDSDBField.add_member(:cluster_writer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_WRITER", traits: {"smithy.api#enumValue" => "ClusterWriter"}))
    ExportableRDSDBField.add_member(:current_db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_DB_INSTANCE_CLASS", traits: {"smithy.api#enumValue" => "CurrentDBInstanceClass"}))
    ExportableRDSDBField.add_member(:current_storage_configuration_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STORAGE_CONFIGURATION_STORAGE_TYPE", traits: {"smithy.api#enumValue" => "CurrentStorageConfigurationStorageType"}))
    ExportableRDSDBField.add_member(:current_storage_configuration_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STORAGE_CONFIGURATION_ALLOCATED_STORAGE", traits: {"smithy.api#enumValue" => "CurrentStorageConfigurationAllocatedStorage"}))
    ExportableRDSDBField.add_member(:current_storage_configuration_max_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STORAGE_CONFIGURATION_MAX_ALLOCATED_STORAGE", traits: {"smithy.api#enumValue" => "CurrentStorageConfigurationMaxAllocatedStorage"}))
    ExportableRDSDBField.add_member(:current_storage_configuration_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STORAGE_CONFIGURATION_IOPS", traits: {"smithy.api#enumValue" => "CurrentStorageConfigurationIOPS"}))
    ExportableRDSDBField.add_member(:current_storage_configuration_storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STORAGE_CONFIGURATION_STORAGE_THROUGHPUT", traits: {"smithy.api#enumValue" => "CurrentStorageConfigurationStorageThroughput"}))
    ExportableRDSDBField.add_member(:current_storage_estimated_monthly_volume_iops_cost_variation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STORAGE_ESTIMATED_MONTHLY_VOLUME_IOPS_COST_VARIATION", traits: {"smithy.api#enumValue" => "CurrentStorageEstimatedMonthlyVolumeIOPsCostVariation"}))
    ExportableRDSDBField.add_member(:current_instance_on_demand_hourly_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_INSTANCE_ON_DEMAND_HOURLY_PRICE", traits: {"smithy.api#enumValue" => "CurrentInstanceOnDemandHourlyPrice"}))
    ExportableRDSDBField.add_member(:current_storage_on_demand_monthly_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STORAGE_ON_DEMAND_MONTHLY_PRICE", traits: {"smithy.api#enumValue" => "CurrentStorageOnDemandMonthlyPrice"}))
    ExportableRDSDBField.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOOKBACK_PERIOD_IN_DAYS", traits: {"smithy.api#enumValue" => "LookbackPeriodInDays"}))
    ExportableRDSDBField.add_member(:current_storage_estimated_cluster_instance_on_demand_monthly_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STORAGE_ESTIMATED_CLUSTER_INSTANCE_ON_DEMAND_MONTHLY_COST", traits: {"smithy.api#enumValue" => "CurrentStorageEstimatedClusterInstanceOnDemandMonthlyCost"}))
    ExportableRDSDBField.add_member(:current_storage_estimated_cluster_storage_on_demand_monthly_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STORAGE_ESTIMATED_CLUSTER_STORAGE_ON_DEMAND_MONTHLY_COST", traits: {"smithy.api#enumValue" => "CurrentStorageEstimatedClusterStorageOnDemandMonthlyCost"}))
    ExportableRDSDBField.add_member(:current_storage_estimated_cluster_storage_io_on_demand_monthly_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_STORAGE_ESTIMATED_CLUSTER_STORAGE_IO_ON_DEMAND_MONTHLY_COST", traits: {"smithy.api#enumValue" => "CurrentStorageEstimatedClusterStorageIOOnDemandMonthlyCost"}))
    ExportableRDSDBField.add_member(:current_instance_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_INSTANCE_PERFORMANCE_RISK", traits: {"smithy.api#enumValue" => "CurrentInstancePerformanceRisk"}))
    ExportableRDSDBField.add_member(:utilization_metrics_cpu_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_CPU_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsCpuMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_memory_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_MEMORY_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsMemoryMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_ebs_volume_storage_space_utilization_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_EBS_VOLUME_STORAGE_SPACE_UTILIZATION_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsEBSVolumeStorageSpaceUtilizationMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_network_receive_throughput_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_NETWORK_RECEIVE_THROUGHPUT_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsNetworkReceiveThroughputMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_network_transmit_throughput_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_NETWORK_TRANSMIT_THROUGHPUT_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsNetworkTransmitThroughputMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_ebs_volume_read_iops_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_EBS_VOLUME_READ_IOPS_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsEBSVolumeReadIOPSMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_ebs_volume_write_iops_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_EBS_VOLUME_WRITE_IOPS_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsEBSVolumeWriteIOPSMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_ebs_volume_read_throughput_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_EBS_VOLUME_READ_THROUGHPUT_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsEBSVolumeReadThroughputMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_ebs_volume_write_throughput_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_EBS_VOLUME_WRITE_THROUGHPUT_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsEBSVolumeWriteThroughputMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_database_connections_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_DATABASE_CONNECTIONS_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsDatabaseConnectionsMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_storage_network_receive_throughput_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_STORAGE_NETWORK_RECEIVE_THROUGHPUT_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsStorageNetworkReceiveThroughputMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_storage_network_transmit_throughput_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_STORAGE_NETWORK_TRANSMIT_THROUGHPUT_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsStorageNetworkTransmitThroughputMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_aurora_memory_health_state_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_AURORA_MEMORY_HEALTH_STATE_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsAuroraMemoryHealthStateMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_aurora_memory_num_declined_sql_total_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_AURORA_MEMORY_NUM_DECLINED_SQL_TOTAL_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsAuroraMemoryNumDeclinedSqlTotalMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_aurora_memory_num_kill_conn_total_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_AURORA_MEMORY_NUM_KILL_CONN_TOTAL_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsAuroraMemoryNumKillConnTotalMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_aurora_memory_num_kill_query_total_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_AURORA_MEMORY_NUM_KILL_QUERY_TOTAL_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsAuroraMemoryNumKillQueryTotalMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_read_iops_ephemeral_storage_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_READ_IOPS_EPHEMERAL_STORAGE_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsReadIOPSEphemeralStorageMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_write_iops_ephemeral_storage_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_WRITE_IOPS_EPHEMERAL_STORAGE_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsWriteIOPSEphemeralStorageMaximum"}))
    ExportableRDSDBField.add_member(:utilization_metrics_volume_bytes_used_average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_VOLUME_BYTES_USED_AVERAGE", traits: {"smithy.api#enumValue" => "UtilizationMetricsVolumeBytesUsedAverage"}))
    ExportableRDSDBField.add_member(:utilization_metrics_volume_read_iops_average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_VOLUME_READ_IOPS_AVERAGE", traits: {"smithy.api#enumValue" => "UtilizationMetricsVolumeReadIOPsAverage"}))
    ExportableRDSDBField.add_member(:utilization_metrics_volume_write_iops_average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_VOLUME_WRITE_IOPS_AVERAGE", traits: {"smithy.api#enumValue" => "UtilizationMetricsVolumeWriteIOPsAverage"}))
    ExportableRDSDBField.add_member(:instance_finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_FINDING", traits: {"smithy.api#enumValue" => "InstanceFinding"}))
    ExportableRDSDBField.add_member(:instance_finding_reason_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_FINDING_REASON_CODES", traits: {"smithy.api#enumValue" => "InstanceFindingReasonCodes"}))
    ExportableRDSDBField.add_member(:storage_finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_FINDING", traits: {"smithy.api#enumValue" => "StorageFinding"}))
    ExportableRDSDBField.add_member(:storage_finding_reason_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_FINDING_REASON_CODES", traits: {"smithy.api#enumValue" => "StorageFindingReasonCodes"}))
    ExportableRDSDBField.add_member(:instance_recommendation_options_db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_RECOMMENDATION_OPTIONS_DB_INSTANCE_CLASS", traits: {"smithy.api#enumValue" => "InstanceRecommendationOptionsDBInstanceClass"}))
    ExportableRDSDBField.add_member(:instance_recommendation_options_rank, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_RECOMMENDATION_OPTIONS_RANK", traits: {"smithy.api#enumValue" => "InstanceRecommendationOptionsRank"}))
    ExportableRDSDBField.add_member(:instance_recommendation_options_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_RECOMMENDATION_OPTIONS_PERFORMANCE_RISK", traits: {"smithy.api#enumValue" => "InstanceRecommendationOptionsPerformanceRisk"}))
    ExportableRDSDBField.add_member(:instance_recommendation_options_projected_utilization_metrics_cpu_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_RECOMMENDATION_OPTIONS_PROJECTED_UTILIZATION_METRICS_CPU_MAXIMUM", traits: {"smithy.api#enumValue" => "InstanceRecommendationOptionsProjectedUtilizationMetricsCpuMaximum"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_STORAGE_TYPE", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsStorageType"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_ALLOCATED_STORAGE", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsAllocatedStorage"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_max_allocated_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_MAX_ALLOCATED_STORAGE", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsMaxAllocatedStorage"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_IOPS", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsIOPS"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_storage_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_STORAGE_THROUGHPUT", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsStorageThroughput"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_rank, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_RANK", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsRank"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_estimated_monthly_volume_iops_cost_variation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_VOLUME_IOPS_COST_VARIATION", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsEstimatedMonthlyVolumeIOPsCostVariation"}))
    ExportableRDSDBField.add_member(:instance_recommendation_options_instance_on_demand_hourly_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_RECOMMENDATION_OPTIONS_INSTANCE_ON_DEMAND_HOURLY_PRICE", traits: {"smithy.api#enumValue" => "InstanceRecommendationOptionsInstanceOnDemandHourlyPrice"}))
    ExportableRDSDBField.add_member(:instance_recommendation_options_savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE", traits: {"smithy.api#enumValue" => "InstanceRecommendationOptionsSavingsOpportunityPercentage"}))
    ExportableRDSDBField.add_member(:instance_recommendation_options_estimated_monthly_savings_currency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY", traits: {"smithy.api#enumValue" => "InstanceRecommendationOptionsEstimatedMonthlySavingsCurrency"}))
    ExportableRDSDBField.add_member(:instance_recommendation_options_estimated_monthly_savings_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE", traits: {"smithy.api#enumValue" => "InstanceRecommendationOptionsEstimatedMonthlySavingsValue"}))
    ExportableRDSDBField.add_member(:instance_recommendation_options_savings_opportunity_after_discounts_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_AFTER_DISCOUNTS_PERCENTAGE", traits: {"smithy.api#enumValue" => "InstanceRecommendationOptionsSavingsOpportunityAfterDiscountsPercentage"}))
    ExportableRDSDBField.add_member(:instance_recommendation_options_estimated_monthly_savings_currency_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY_AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "InstanceRecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts"}))
    ExportableRDSDBField.add_member(:instance_recommendation_options_estimated_monthly_savings_value_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE_AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "InstanceRecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_on_demand_monthly_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_ON_DEMAND_MONTHLY_PRICE", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsOnDemandMonthlyPrice"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_estimated_cluster_instance_on_demand_monthly_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_CLUSTER_INSTANCE_ON_DEMAND_MONTHLY_COST", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsEstimatedClusterInstanceOnDemandMonthlyCost"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_estimated_cluster_storage_on_demand_monthly_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_CLUSTER_STORAGE_ON_DEMAND_MONTHLY_COST", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsEstimatedClusterStorageOnDemandMonthlyCost"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_estimated_cluster_storage_io_on_demand_monthly_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_CLUSTER_STORAGE_IO_ON_DEMAND_MONTHLY_COST", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsEstimatedClusterStorageIOOnDemandMonthlyCost"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsSavingsOpportunityPercentage"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_estimated_monthly_savings_currency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsEstimatedMonthlySavingsCurrency"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_estimated_monthly_savings_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsEstimatedMonthlySavingsValue"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_savings_opportunity_after_discounts_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_AFTER_DISCOUNTS_PERCENTAGE", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsSavingsOpportunityAfterDiscountsPercentage"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_estimated_monthly_savings_currency_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY_AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts"}))
    ExportableRDSDBField.add_member(:storage_recommendation_options_estimated_monthly_savings_value_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE_AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "StorageRecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"}))
    ExportableRDSDBField.add_member(:effective_recommendation_preferences_cpu_vendor_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_CPU_VENDOR_ARCHITECTURES", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesCpuVendorArchitectures"}))
    ExportableRDSDBField.add_member(:effective_recommendation_preferences_enhanced_infrastructure_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_ENHANCED_INFRASTRUCTURE_METRICS", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics"}))
    ExportableRDSDBField.add_member(:effective_recommendation_preferences_lookback_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_LOOKBACK_PERIOD", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesLookBackPeriod"}))
    ExportableRDSDBField.add_member(:effective_recommendation_preferences_savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_SAVINGS_ESTIMATION_MODE", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesSavingsEstimationMode"}))
    ExportableRDSDBField.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_REFRESH_TIMESTAMP", traits: {"smithy.api#enumValue" => "LastRefreshTimestamp"}))
    ExportableRDSDBField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "Tags"}))
    ExportableRDSDBField.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB_CLUSTER_IDENTIFIER", traits: {"smithy.api#enumValue" => "DBClusterIdentifier"}))
    ExportableRDSDBField.add_member(:promotion_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROMOTION_TIER", traits: {"smithy.api#enumValue" => "PromotionTier"}))
    ExportableRDSDBFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableRDSDBField, name: "member")
    ExportableVolumeField.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "AccountId"}))
    ExportableVolumeField.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_ARN", traits: {"smithy.api#enumValue" => "VolumeArn"}))
    ExportableVolumeField.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING", traits: {"smithy.api#enumValue" => "Finding"}))
    ExportableVolumeField.add_member(:utilization_metrics_volume_read_ops_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_VOLUME_READ_OPS_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsVolumeReadOpsPerSecondMaximum"}))
    ExportableVolumeField.add_member(:utilization_metrics_volume_write_ops_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_VOLUME_WRITE_OPS_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsVolumeWriteOpsPerSecondMaximum"}))
    ExportableVolumeField.add_member(:utilization_metrics_volume_read_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_VOLUME_READ_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsVolumeReadBytesPerSecondMaximum"}))
    ExportableVolumeField.add_member(:utilization_metrics_volume_write_bytes_per_second_maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_METRICS_VOLUME_WRITE_BYTES_PER_SECOND_MAXIMUM", traits: {"smithy.api#enumValue" => "UtilizationMetricsVolumeWriteBytesPerSecondMaximum"}))
    ExportableVolumeField.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOOKBACK_PERIOD_IN_DAYS", traits: {"smithy.api#enumValue" => "LookbackPeriodInDays"}))
    ExportableVolumeField.add_member(:current_configuration_volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_VOLUME_TYPE", traits: {"smithy.api#enumValue" => "CurrentConfigurationVolumeType"}))
    ExportableVolumeField.add_member(:current_configuration_volume_baseline_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_VOLUME_BASELINE_IOPS", traits: {"smithy.api#enumValue" => "CurrentConfigurationVolumeBaselineIOPS"}))
    ExportableVolumeField.add_member(:current_configuration_volume_baseline_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_VOLUME_BASELINE_THROUGHPUT", traits: {"smithy.api#enumValue" => "CurrentConfigurationVolumeBaselineThroughput"}))
    ExportableVolumeField.add_member(:current_configuration_volume_burst_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_VOLUME_BURST_IOPS", traits: {"smithy.api#enumValue" => "CurrentConfigurationVolumeBurstIOPS"}))
    ExportableVolumeField.add_member(:current_configuration_volume_burst_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_VOLUME_BURST_THROUGHPUT", traits: {"smithy.api#enumValue" => "CurrentConfigurationVolumeBurstThroughput"}))
    ExportableVolumeField.add_member(:current_configuration_volume_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_VOLUME_SIZE", traits: {"smithy.api#enumValue" => "CurrentConfigurationVolumeSize"}))
    ExportableVolumeField.add_member(:current_monthly_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_MONTHLY_PRICE", traits: {"smithy.api#enumValue" => "CurrentMonthlyPrice"}))
    ExportableVolumeField.add_member(:recommendation_options_configuration_volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_TYPE", traits: {"smithy.api#enumValue" => "RecommendationOptionsConfigurationVolumeType"}))
    ExportableVolumeField.add_member(:recommendation_options_configuration_volume_baseline_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_BASELINE_IOPS", traits: {"smithy.api#enumValue" => "RecommendationOptionsConfigurationVolumeBaselineIOPS"}))
    ExportableVolumeField.add_member(:recommendation_options_configuration_volume_baseline_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_BASELINE_THROUGHPUT", traits: {"smithy.api#enumValue" => "RecommendationOptionsConfigurationVolumeBaselineThroughput"}))
    ExportableVolumeField.add_member(:recommendation_options_configuration_volume_burst_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_BURST_IOPS", traits: {"smithy.api#enumValue" => "RecommendationOptionsConfigurationVolumeBurstIOPS"}))
    ExportableVolumeField.add_member(:recommendation_options_configuration_volume_burst_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_BURST_THROUGHPUT", traits: {"smithy.api#enumValue" => "RecommendationOptionsConfigurationVolumeBurstThroughput"}))
    ExportableVolumeField.add_member(:recommendation_options_configuration_volume_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_CONFIGURATION_VOLUME_SIZE", traits: {"smithy.api#enumValue" => "RecommendationOptionsConfigurationVolumeSize"}))
    ExportableVolumeField.add_member(:recommendation_options_monthly_price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_MONTHLY_PRICE", traits: {"smithy.api#enumValue" => "RecommendationOptionsMonthlyPrice"}))
    ExportableVolumeField.add_member(:recommendation_options_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_PERFORMANCE_RISK", traits: {"smithy.api#enumValue" => "RecommendationOptionsPerformanceRisk"}))
    ExportableVolumeField.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_REFRESH_TIMESTAMP", traits: {"smithy.api#enumValue" => "LastRefreshTimestamp"}))
    ExportableVolumeField.add_member(:current_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_PERFORMANCE_RISK", traits: {"smithy.api#enumValue" => "CurrentPerformanceRisk"}))
    ExportableVolumeField.add_member(:recommendation_options_savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_PERCENTAGE", traits: {"smithy.api#enumValue" => "RecommendationOptionsSavingsOpportunityPercentage"}))
    ExportableVolumeField.add_member(:recommendation_options_estimated_monthly_savings_currency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsCurrency"}))
    ExportableVolumeField.add_member(:recommendation_options_estimated_monthly_savings_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsValue"}))
    ExportableVolumeField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "Tags"}))
    ExportableVolumeField.add_member(:root_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROOT_VOLUME", traits: {"smithy.api#enumValue" => "RootVolume"}))
    ExportableVolumeField.add_member(:current_configuration_root_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT_CONFIGURATION_ROOT_VOLUME", traits: {"smithy.api#enumValue" => "CurrentConfigurationRootVolume"}))
    ExportableVolumeField.add_member(:effective_recommendation_preferences_savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFFECTIVE_RECOMMENDATION_PREFERENCES_SAVINGS_ESTIMATION_MODE", traits: {"smithy.api#enumValue" => "EffectiveRecommendationPreferencesSavingsEstimationMode"}))
    ExportableVolumeField.add_member(:recommendation_options_savings_opportunity_after_discounts_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_SAVINGS_OPPORTUNITY_AFTER_DISCOUNTS_PERCENTAGE", traits: {"smithy.api#enumValue" => "RecommendationOptionsSavingsOpportunityAfterDiscountsPercentage"}))
    ExportableVolumeField.add_member(:recommendation_options_estimated_monthly_savings_currency_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_CURRENCY_AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsCurrencyAfterDiscounts"}))
    ExportableVolumeField.add_member(:recommendation_options_estimated_monthly_savings_value_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_OPTIONS_ESTIMATED_MONTHLY_SAVINGS_VALUE_AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "RecommendationOptionsEstimatedMonthlySavingsValueAfterDiscounts"}))
    ExportableVolumeFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportableVolumeField, name: "member")
    ExternalMetricStatus.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalMetricStatusCode, name: "statusCode"))
    ExternalMetricStatus.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalMetricStatusReason, name: "statusReason"))
    ExternalMetricStatus.type = Types::ExternalMetricStatus
    ExternalMetricStatusCode.add_member(:no_external_metric_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_EXTERNAL_METRIC_SET", traits: {"smithy.api#enumValue" => "NO_EXTERNAL_METRIC_SET"}))
    ExternalMetricStatusCode.add_member(:integration_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEGRATION_SUCCESS", traits: {"smithy.api#enumValue" => "INTEGRATION_SUCCESS"}))
    ExternalMetricStatusCode.add_member(:datadog_integration_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATADOG_INTEGRATION_ERROR", traits: {"smithy.api#enumValue" => "DATADOG_INTEGRATION_ERROR"}))
    ExternalMetricStatusCode.add_member(:dynatrace_integration_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DYNATRACE_INTEGRATION_ERROR", traits: {"smithy.api#enumValue" => "DYNATRACE_INTEGRATION_ERROR"}))
    ExternalMetricStatusCode.add_member(:newrelic_integration_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEWRELIC_INTEGRATION_ERROR", traits: {"smithy.api#enumValue" => "NEWRELIC_INTEGRATION_ERROR"}))
    ExternalMetricStatusCode.add_member(:instana_integration_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANA_INTEGRATION_ERROR", traits: {"smithy.api#enumValue" => "INSTANA_INTEGRATION_ERROR"}))
    ExternalMetricStatusCode.add_member(:insufficient_datadog_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_DATADOG_METRICS", traits: {"smithy.api#enumValue" => "INSUFFICIENT_DATADOG_METRICS"}))
    ExternalMetricStatusCode.add_member(:insufficient_dynatrace_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_DYNATRACE_METRICS", traits: {"smithy.api#enumValue" => "INSUFFICIENT_DYNATRACE_METRICS"}))
    ExternalMetricStatusCode.add_member(:insufficient_newrelic_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_NEWRELIC_METRICS", traits: {"smithy.api#enumValue" => "INSUFFICIENT_NEWRELIC_METRICS"}))
    ExternalMetricStatusCode.add_member(:insufficient_instana_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_INSTANA_METRICS", traits: {"smithy.api#enumValue" => "INSUFFICIENT_INSTANA_METRICS"}))
    ExternalMetricsPreference.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalMetricsSource, name: "source"))
    ExternalMetricsPreference.type = Types::ExternalMetricsPreference
    ExternalMetricsSource.add_member(:datadog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATADOG", traits: {"smithy.api#enumValue" => "Datadog"}))
    ExternalMetricsSource.add_member(:dynatrace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DYNATRACE", traits: {"smithy.api#enumValue" => "Dynatrace"}))
    ExternalMetricsSource.add_member(:newrelic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEWRELIC", traits: {"smithy.api#enumValue" => "NewRelic"}))
    ExternalMetricsSource.add_member(:instana, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANA", traits: {"smithy.api#enumValue" => "Instana"}))
    FileFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "Csv"}))
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "name"))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values"))
    Filter.type = Types::Filter
    FilterName.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING", traits: {"smithy.api#enumValue" => "Finding"}))
    FilterName.add_member(:finding_reason_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING_REASON_CODES", traits: {"smithy.api#enumValue" => "FindingReasonCodes"}))
    FilterName.add_member(:recommendation_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDATION_SOURCE_TYPE", traits: {"smithy.api#enumValue" => "RecommendationSourceType"}))
    FilterName.add_member(:inferred_workload_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFERRED_WORKLOAD_TYPES", traits: {"smithy.api#enumValue" => "InferredWorkloadTypes"}))
    FilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member")
    Filters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member")
    Finding.add_member(:under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "Underprovisioned"}))
    Finding.add_member(:over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "Overprovisioned"}))
    Finding.add_member(:optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIMIZED", traits: {"smithy.api#enumValue" => "Optimized"}))
    Finding.add_member(:not_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_OPTIMIZED", traits: {"smithy.api#enumValue" => "NotOptimized"}))
    FindingReasonCode.add_member(:memory_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "MemoryOverprovisioned"}))
    FindingReasonCode.add_member(:memory_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "MemoryUnderprovisioned"}))
    FunctionArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "member")
    GetAutoScalingGroupRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    GetAutoScalingGroupRecommendationsRequest.add_member(:auto_scaling_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupArns, name: "autoScalingGroupArns"))
    GetAutoScalingGroupRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetAutoScalingGroupRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetAutoScalingGroupRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "filters"))
    GetAutoScalingGroupRecommendationsRequest.add_member(:recommendation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPreferences, name: "recommendationPreferences"))
    GetAutoScalingGroupRecommendationsRequest.type = Types::GetAutoScalingGroupRecommendationsRequest
    GetAutoScalingGroupRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetAutoScalingGroupRecommendationsResponse.add_member(:auto_scaling_group_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupRecommendations, name: "autoScalingGroupRecommendations"))
    GetAutoScalingGroupRecommendationsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: GetRecommendationErrors, name: "errors"))
    GetAutoScalingGroupRecommendationsResponse.type = Types::GetAutoScalingGroupRecommendationsResponse
    GetEBSVolumeRecommendationsRequest.add_member(:volume_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeArns, name: "volumeArns"))
    GetEBSVolumeRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetEBSVolumeRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetEBSVolumeRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSFilters, name: "filters"))
    GetEBSVolumeRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    GetEBSVolumeRecommendationsRequest.type = Types::GetEBSVolumeRecommendationsRequest
    GetEBSVolumeRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetEBSVolumeRecommendationsResponse.add_member(:volume_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeRecommendations, name: "volumeRecommendations"))
    GetEBSVolumeRecommendationsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: GetRecommendationErrors, name: "errors"))
    GetEBSVolumeRecommendationsResponse.type = Types::GetEBSVolumeRecommendationsResponse
    GetEC2InstanceRecommendationsRequest.add_member(:instance_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArns, name: "instanceArns"))
    GetEC2InstanceRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetEC2InstanceRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetEC2InstanceRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: Filters, name: "filters"))
    GetEC2InstanceRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    GetEC2InstanceRecommendationsRequest.add_member(:recommendation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPreferences, name: "recommendationPreferences"))
    GetEC2InstanceRecommendationsRequest.type = Types::GetEC2InstanceRecommendationsRequest
    GetEC2InstanceRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetEC2InstanceRecommendationsResponse.add_member(:instance_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRecommendations, name: "instanceRecommendations"))
    GetEC2InstanceRecommendationsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: GetRecommendationErrors, name: "errors"))
    GetEC2InstanceRecommendationsResponse.type = Types::GetEC2InstanceRecommendationsResponse
    GetEC2RecommendationProjectedMetricsRequest.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "instanceArn", traits: {"smithy.api#required" => {}}))
    GetEC2RecommendationProjectedMetricsRequest.add_member(:stat, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatistic, name: "stat", traits: {"smithy.api#required" => {}}))
    GetEC2RecommendationProjectedMetricsRequest.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "period", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GetEC2RecommendationProjectedMetricsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    GetEC2RecommendationProjectedMetricsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    GetEC2RecommendationProjectedMetricsRequest.add_member(:recommendation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPreferences, name: "recommendationPreferences"))
    GetEC2RecommendationProjectedMetricsRequest.type = Types::GetEC2RecommendationProjectedMetricsRequest
    GetEC2RecommendationProjectedMetricsResponse.add_member(:recommended_option_projected_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedOptionProjectedMetrics, name: "recommendedOptionProjectedMetrics"))
    GetEC2RecommendationProjectedMetricsResponse.type = Types::GetEC2RecommendationProjectedMetricsResponse
    GetECSServiceRecommendationProjectedMetricsRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    GetECSServiceRecommendationProjectedMetricsRequest.add_member(:stat, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatistic, name: "stat", traits: {"smithy.api#required" => {}}))
    GetECSServiceRecommendationProjectedMetricsRequest.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "period", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GetECSServiceRecommendationProjectedMetricsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    GetECSServiceRecommendationProjectedMetricsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    GetECSServiceRecommendationProjectedMetricsRequest.type = Types::GetECSServiceRecommendationProjectedMetricsRequest
    GetECSServiceRecommendationProjectedMetricsResponse.add_member(:recommended_option_projected_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceRecommendedOptionProjectedMetrics, name: "recommendedOptionProjectedMetrics"))
    GetECSServiceRecommendationProjectedMetricsResponse.type = Types::GetECSServiceRecommendationProjectedMetricsResponse
    GetECSServiceRecommendationsRequest.add_member(:service_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArns, name: "serviceArns"))
    GetECSServiceRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetECSServiceRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetECSServiceRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceRecommendationFilters, name: "filters"))
    GetECSServiceRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    GetECSServiceRecommendationsRequest.type = Types::GetECSServiceRecommendationsRequest
    GetECSServiceRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetECSServiceRecommendationsResponse.add_member(:ecs_service_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSServiceRecommendations, name: "ecsServiceRecommendations"))
    GetECSServiceRecommendationsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: GetRecommendationErrors, name: "errors"))
    GetECSServiceRecommendationsResponse.type = Types::GetECSServiceRecommendationsResponse
    GetEffectiveRecommendationPreferencesRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetEffectiveRecommendationPreferencesRequest.type = Types::GetEffectiveRecommendationPreferencesRequest
    GetEffectiveRecommendationPreferencesResponse.add_member(:enhanced_infrastructure_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedInfrastructureMetrics, name: "enhancedInfrastructureMetrics"))
    GetEffectiveRecommendationPreferencesResponse.add_member(:external_metrics_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalMetricsPreference, name: "externalMetricsPreference"))
    GetEffectiveRecommendationPreferencesResponse.add_member(:look_back_period, ::Smithy::Schema::Shapes::MemberShape.new(target: LookBackPeriodPreference, name: "lookBackPeriod"))
    GetEffectiveRecommendationPreferencesResponse.add_member(:utilization_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: UtilizationPreferences, name: "utilizationPreferences"))
    GetEffectiveRecommendationPreferencesResponse.add_member(:preferred_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePreferredResources, name: "preferredResources"))
    GetEffectiveRecommendationPreferencesResponse.type = Types::GetEffectiveRecommendationPreferencesResponse
    GetEnrollmentStatusRequest.type = Types::GetEnrollmentStatusRequest
    GetEnrollmentStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    GetEnrollmentStatusResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "statusReason"))
    GetEnrollmentStatusResponse.add_member(:member_accounts_enrolled, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberAccountsEnrolled, name: "memberAccountsEnrolled", traits: {"smithy.api#default" => false}))
    GetEnrollmentStatusResponse.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedTimestamp, name: "lastUpdatedTimestamp"))
    GetEnrollmentStatusResponse.add_member(:number_of_member_accounts_opted_in, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfMemberAccountsOptedIn, name: "numberOfMemberAccountsOptedIn"))
    GetEnrollmentStatusResponse.type = Types::GetEnrollmentStatusResponse
    GetEnrollmentStatusesForOrganizationRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: EnrollmentFilters, name: "filters"))
    GetEnrollmentStatusesForOrganizationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetEnrollmentStatusesForOrganizationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetEnrollmentStatusesForOrganizationRequest.type = Types::GetEnrollmentStatusesForOrganizationRequest
    GetEnrollmentStatusesForOrganizationResponse.add_member(:account_enrollment_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountEnrollmentStatuses, name: "accountEnrollmentStatuses"))
    GetEnrollmentStatusesForOrganizationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetEnrollmentStatusesForOrganizationResponse.type = Types::GetEnrollmentStatusesForOrganizationResponse
    GetIdleRecommendationsRequest.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, name: "resourceArns"))
    GetIdleRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetIdleRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleMaxResults, name: "maxResults"))
    GetIdleRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleRecommendationFilters, name: "filters"))
    GetIdleRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    GetIdleRecommendationsRequest.add_member(:order_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderBy, name: "orderBy"))
    GetIdleRecommendationsRequest.type = Types::GetIdleRecommendationsRequest
    GetIdleRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetIdleRecommendationsResponse.add_member(:idle_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleRecommendations, name: "idleRecommendations"))
    GetIdleRecommendationsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleRecommendationErrors, name: "errors"))
    GetIdleRecommendationsResponse.type = Types::GetIdleRecommendationsResponse
    GetLambdaFunctionRecommendationsRequest.add_member(:function_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArns, name: "functionArns"))
    GetLambdaFunctionRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    GetLambdaFunctionRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionRecommendationFilters, name: "filters"))
    GetLambdaFunctionRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetLambdaFunctionRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetLambdaFunctionRecommendationsRequest.type = Types::GetLambdaFunctionRecommendationsRequest
    GetLambdaFunctionRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetLambdaFunctionRecommendationsResponse.add_member(:lambda_function_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionRecommendations, name: "lambdaFunctionRecommendations"))
    GetLambdaFunctionRecommendationsResponse.type = Types::GetLambdaFunctionRecommendationsResponse
    GetLicenseRecommendationsRequest.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, name: "resourceArns"))
    GetLicenseRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetLicenseRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetLicenseRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseRecommendationFilters, name: "filters"))
    GetLicenseRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    GetLicenseRecommendationsRequest.type = Types::GetLicenseRecommendationsRequest
    GetLicenseRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetLicenseRecommendationsResponse.add_member(:license_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseRecommendations, name: "licenseRecommendations"))
    GetLicenseRecommendationsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: GetRecommendationErrors, name: "errors"))
    GetLicenseRecommendationsResponse.type = Types::GetLicenseRecommendationsResponse
    GetRDSDatabaseRecommendationProjectedMetricsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetRDSDatabaseRecommendationProjectedMetricsRequest.add_member(:stat, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatistic, name: "stat", traits: {"smithy.api#required" => {}}))
    GetRDSDatabaseRecommendationProjectedMetricsRequest.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "period", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GetRDSDatabaseRecommendationProjectedMetricsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    GetRDSDatabaseRecommendationProjectedMetricsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    GetRDSDatabaseRecommendationProjectedMetricsRequest.add_member(:recommendation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPreferences, name: "recommendationPreferences"))
    GetRDSDatabaseRecommendationProjectedMetricsRequest.type = Types::GetRDSDatabaseRecommendationProjectedMetricsRequest
    GetRDSDatabaseRecommendationProjectedMetricsResponse.add_member(:recommended_option_projected_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDatabaseRecommendedOptionProjectedMetrics, name: "recommendedOptionProjectedMetrics"))
    GetRDSDatabaseRecommendationProjectedMetricsResponse.type = Types::GetRDSDatabaseRecommendationProjectedMetricsResponse
    GetRDSDatabaseRecommendationsRequest.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArns, name: "resourceArns"))
    GetRDSDatabaseRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetRDSDatabaseRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetRDSDatabaseRecommendationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBRecommendationFilters, name: "filters"))
    GetRDSDatabaseRecommendationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    GetRDSDatabaseRecommendationsRequest.add_member(:recommendation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPreferences, name: "recommendationPreferences"))
    GetRDSDatabaseRecommendationsRequest.type = Types::GetRDSDatabaseRecommendationsRequest
    GetRDSDatabaseRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetRDSDatabaseRecommendationsResponse.add_member(:rds_db_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBRecommendations, name: "rdsDBRecommendations"))
    GetRDSDatabaseRecommendationsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: GetRecommendationErrors, name: "errors"))
    GetRDSDatabaseRecommendationsResponse.type = Types::GetRDSDatabaseRecommendationsResponse
    GetRecommendationError.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "identifier"))
    GetRecommendationError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "code"))
    GetRecommendationError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    GetRecommendationError.type = Types::GetRecommendationError
    GetRecommendationErrors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GetRecommendationError, name: "member")
    GetRecommendationPreferencesRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    GetRecommendationPreferencesRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "scope"))
    GetRecommendationPreferencesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetRecommendationPreferencesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetRecommendationPreferencesRequest.type = Types::GetRecommendationPreferencesRequest
    GetRecommendationPreferencesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetRecommendationPreferencesResponse.add_member(:recommendation_preferences_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPreferencesDetails, name: "recommendationPreferencesDetails"))
    GetRecommendationPreferencesResponse.type = Types::GetRecommendationPreferencesResponse
    GetRecommendationSummariesRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "accountIds"))
    GetRecommendationSummariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetRecommendationSummariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetRecommendationSummariesRequest.type = Types::GetRecommendationSummariesRequest
    GetRecommendationSummariesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetRecommendationSummariesResponse.add_member(:recommendation_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSummaries, name: "recommendationSummaries"))
    GetRecommendationSummariesResponse.type = Types::GetRecommendationSummariesResponse
    Gpu.add_member(:gpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: GpuCount, name: "gpuCount", traits: {"smithy.api#default" => 0}))
    Gpu.add_member(:gpu_memory_size_in_mi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: GpuMemorySizeInMiB, name: "gpuMemorySizeInMiB", traits: {"smithy.api#default" => 0}))
    Gpu.type = Types::Gpu
    GpuInfo.add_member(:gpus, ::Smithy::Schema::Shapes::MemberShape.new(target: Gpus, name: "gpus"))
    GpuInfo.type = Types::GpuInfo
    Gpus.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Gpu, name: "member")
    Idle.add_member(:true, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUE", traits: {"smithy.api#enumValue" => "True"}))
    Idle.add_member(:false, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FALSE", traits: {"smithy.api#enumValue" => "False"}))
    IdleEstimatedMonthlySavings.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, name: "currency"))
    IdleEstimatedMonthlySavings.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "value", traits: {"smithy.api#default" => 0}))
    IdleEstimatedMonthlySavings.type = Types::IdleEstimatedMonthlySavings
    IdleFinding.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDLE", traits: {"smithy.api#enumValue" => "Idle"}))
    IdleFinding.add_member(:unattached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNATTACHED", traits: {"smithy.api#enumValue" => "Unattached"}))
    IdleMetricName.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPU", traits: {"smithy.api#enumValue" => "CPU"}))
    IdleMetricName.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY", traits: {"smithy.api#enumValue" => "Memory"}))
    IdleMetricName.add_member(:network_out_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_OUT_BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "NetworkOutBytesPerSecond"}))
    IdleMetricName.add_member(:network_in_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_IN_BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "NetworkInBytesPerSecond"}))
    IdleMetricName.add_member(:database_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATABASE_CONNECTIONS", traits: {"smithy.api#enumValue" => "DatabaseConnections"}))
    IdleMetricName.add_member(:ebs_volume_read_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME_READ_IOPS", traits: {"smithy.api#enumValue" => "EBSVolumeReadIOPS"}))
    IdleMetricName.add_member(:ebs_volume_write_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME_WRITE_IOPS", traits: {"smithy.api#enumValue" => "EBSVolumeWriteIOPS"}))
    IdleMetricName.add_member(:volume_read_ops_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_READ_OPS_PER_SECOND", traits: {"smithy.api#enumValue" => "VolumeReadOpsPerSecond"}))
    IdleMetricName.add_member(:volume_write_ops_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_WRITE_OPS_PER_SECOND", traits: {"smithy.api#enumValue" => "VolumeWriteOpsPerSecond"}))
    IdleRecommendation.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn"))
    IdleRecommendation.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    IdleRecommendation.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleRecommendationResourceType, name: "resourceType"))
    IdleRecommendation.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    IdleRecommendation.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleFinding, name: "finding"))
    IdleRecommendation.add_member(:finding_description, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleFindingDescription, name: "findingDescription"))
    IdleRecommendation.add_member(:savings_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleSavingsOpportunity, name: "savingsOpportunity"))
    IdleRecommendation.add_member(:savings_opportunity_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleSavingsOpportunityAfterDiscounts, name: "savingsOpportunityAfterDiscounts"))
    IdleRecommendation.add_member(:utilization_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleUtilizationMetrics, name: "utilizationMetrics"))
    IdleRecommendation.add_member(:look_back_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: LookBackPeriodInDays, name: "lookBackPeriodInDays", traits: {"smithy.api#default" => 0}))
    IdleRecommendation.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: LastRefreshTimestamp, name: "lastRefreshTimestamp"))
    IdleRecommendation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    IdleRecommendation.type = Types::IdleRecommendation
    IdleRecommendationError.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "identifier"))
    IdleRecommendationError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "code"))
    IdleRecommendationError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    IdleRecommendationError.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleRecommendationResourceType, name: "resourceType"))
    IdleRecommendationError.type = Types::IdleRecommendationError
    IdleRecommendationErrors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IdleRecommendationError, name: "member")
    IdleRecommendationFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleRecommendationFilterName, name: "name"))
    IdleRecommendationFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values"))
    IdleRecommendationFilter.type = Types::IdleRecommendationFilter
    IdleRecommendationFilterName.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING", traits: {"smithy.api#enumValue" => "Finding"}))
    IdleRecommendationFilterName.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "ResourceType"}))
    IdleRecommendationFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IdleRecommendationFilter, name: "member")
    IdleRecommendationResourceType.add_member(:ec2_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_INSTANCE", traits: {"smithy.api#enumValue" => "EC2Instance"}))
    IdleRecommendationResourceType.add_member(:auto_scaling_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_SCALING_GROUP", traits: {"smithy.api#enumValue" => "AutoScalingGroup"}))
    IdleRecommendationResourceType.add_member(:ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME", traits: {"smithy.api#enumValue" => "EBSVolume"}))
    IdleRecommendationResourceType.add_member(:ecs_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_SERVICE", traits: {"smithy.api#enumValue" => "ECSService"}))
    IdleRecommendationResourceType.add_member(:rds_db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DB_INSTANCE", traits: {"smithy.api#enumValue" => "RDSDBInstance"}))
    IdleRecommendations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IdleRecommendation, name: "member")
    IdleSavingsOpportunity.add_member(:savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunityPercentage, name: "savingsOpportunityPercentage", traits: {"smithy.api#default" => 0}))
    IdleSavingsOpportunity.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleEstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    IdleSavingsOpportunity.type = Types::IdleSavingsOpportunity
    IdleSavingsOpportunityAfterDiscounts.add_member(:savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunityPercentage, name: "savingsOpportunityPercentage", traits: {"smithy.api#default" => 0}))
    IdleSavingsOpportunityAfterDiscounts.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleEstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    IdleSavingsOpportunityAfterDiscounts.type = Types::IdleSavingsOpportunityAfterDiscounts
    IdleSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IdleSummary, name: "member")
    IdleSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleFinding, name: "name"))
    IdleSummary.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryValue, name: "value", traits: {"smithy.api#default" => 0}))
    IdleSummary.type = Types::IdleSummary
    IdleUtilizationMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleMetricName, name: "name"))
    IdleUtilizationMetric.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatistic, name: "statistic"))
    IdleUtilizationMetric.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, name: "value", traits: {"smithy.api#default" => 0}))
    IdleUtilizationMetric.type = Types::IdleUtilizationMetric
    IdleUtilizationMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IdleUtilizationMetric, name: "member")
    InferredWorkloadSaving.add_member(:inferred_workload_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InferredWorkloadTypes, name: "inferredWorkloadTypes"))
    InferredWorkloadSaving.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    InferredWorkloadSaving.type = Types::InferredWorkloadSaving
    InferredWorkloadSavings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InferredWorkloadSaving, name: "member")
    InferredWorkloadType.add_member(:amazon_emr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_EMR", traits: {"smithy.api#enumValue" => "AmazonEmr"}))
    InferredWorkloadType.add_member(:apache_cassandra, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APACHE_CASSANDRA", traits: {"smithy.api#enumValue" => "ApacheCassandra"}))
    InferredWorkloadType.add_member(:apache_hadoop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APACHE_HADOOP", traits: {"smithy.api#enumValue" => "ApacheHadoop"}))
    InferredWorkloadType.add_member(:memcached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMCACHED", traits: {"smithy.api#enumValue" => "Memcached"}))
    InferredWorkloadType.add_member(:nginx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NGINX", traits: {"smithy.api#enumValue" => "Nginx"}))
    InferredWorkloadType.add_member(:postgre_sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POSTGRE_SQL", traits: {"smithy.api#enumValue" => "PostgreSql"}))
    InferredWorkloadType.add_member(:redis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDIS", traits: {"smithy.api#enumValue" => "Redis"}))
    InferredWorkloadType.add_member(:kafka, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KAFKA", traits: {"smithy.api#enumValue" => "Kafka"}))
    InferredWorkloadType.add_member(:sqlserver, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQLSERVER", traits: {"smithy.api#enumValue" => "SQLServer"}))
    InferredWorkloadTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InferredWorkloadType, name: "member")
    InferredWorkloadTypesPreference.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    InferredWorkloadTypesPreference.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "Inactive"}))
    InstanceArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "member")
    InstanceEstimatedMonthlySavings.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, name: "currency"))
    InstanceEstimatedMonthlySavings.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "value", traits: {"smithy.api#default" => 0}))
    InstanceEstimatedMonthlySavings.type = Types::InstanceEstimatedMonthlySavings
    InstanceIdle.add_member(:true, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUE", traits: {"smithy.api#enumValue" => "True"}))
    InstanceIdle.add_member(:false, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FALSE", traits: {"smithy.api#enumValue" => "False"}))
    InstanceRecommendation.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceArn, name: "instanceArn"))
    InstanceRecommendation.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    InstanceRecommendation.add_member(:instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceName, name: "instanceName"))
    InstanceRecommendation.add_member(:current_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentInstanceType, name: "currentInstanceType"))
    InstanceRecommendation.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: Finding, name: "finding"))
    InstanceRecommendation.add_member(:finding_reason_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRecommendationFindingReasonCodes, name: "findingReasonCodes"))
    InstanceRecommendation.add_member(:utilization_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: UtilizationMetrics, name: "utilizationMetrics"))
    InstanceRecommendation.add_member(:look_back_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: LookBackPeriodInDays, name: "lookBackPeriodInDays", traits: {"smithy.api#default" => 0}))
    InstanceRecommendation.add_member(:recommendation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationOptions, name: "recommendationOptions"))
    InstanceRecommendation.add_member(:recommendation_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSources, name: "recommendationSources"))
    InstanceRecommendation.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: LastRefreshTimestamp, name: "lastRefreshTimestamp"))
    InstanceRecommendation.add_member(:current_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentPerformanceRisk, name: "currentPerformanceRisk"))
    InstanceRecommendation.add_member(:effective_recommendation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectiveRecommendationPreferences, name: "effectiveRecommendationPreferences"))
    InstanceRecommendation.add_member(:inferred_workload_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InferredWorkloadTypes, name: "inferredWorkloadTypes"))
    InstanceRecommendation.add_member(:instance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceState, name: "instanceState"))
    InstanceRecommendation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    InstanceRecommendation.add_member(:external_metric_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalMetricStatus, name: "externalMetricStatus"))
    InstanceRecommendation.add_member(:current_instance_gpu_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GpuInfo, name: "currentInstanceGpuInfo"))
    InstanceRecommendation.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIdle, name: "idle"))
    InstanceRecommendation.type = Types::InstanceRecommendation
    InstanceRecommendationFindingReasonCode.add_member(:cpu_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPU_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "CPUOverprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:cpu_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPU_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "CPUUnderprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:memory_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "MemoryOverprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:memory_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "MemoryUnderprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:ebs_throughput_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_THROUGHPUT_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "EBSThroughputOverprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:ebs_throughput_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_THROUGHPUT_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "EBSThroughputUnderprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:ebs_iops_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_IOPS_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "EBSIOPSOverprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:ebs_iops_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_IOPS_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "EBSIOPSUnderprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:network_bandwidth_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_BANDWIDTH_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "NetworkBandwidthOverprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:network_bandwidth_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_BANDWIDTH_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "NetworkBandwidthUnderprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:network_pps_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_PPS_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "NetworkPPSOverprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:network_pps_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_PPS_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "NetworkPPSUnderprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:disk_iops_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISK_IOPS_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "DiskIOPSOverprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:disk_iops_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISK_IOPS_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "DiskIOPSUnderprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:disk_throughput_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISK_THROUGHPUT_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "DiskThroughputOverprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:disk_throughput_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISK_THROUGHPUT_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "DiskThroughputUnderprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:gpu_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GPU_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "GPUUnderprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:gpu_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GPU_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "GPUOverprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:gpu_memory_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GPU_MEMORY_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "GPUMemoryUnderprovisioned"}))
    InstanceRecommendationFindingReasonCode.add_member(:gpu_memory_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GPU_MEMORY_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "GPUMemoryOverprovisioned"}))
    InstanceRecommendationFindingReasonCodes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRecommendationFindingReasonCode, name: "member")
    InstanceRecommendationOption.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "instanceType"))
    InstanceRecommendationOption.add_member(:instance_gpu_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GpuInfo, name: "instanceGpuInfo"))
    InstanceRecommendationOption.add_member(:projected_utilization_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectedUtilizationMetrics, name: "projectedUtilizationMetrics"))
    InstanceRecommendationOption.add_member(:platform_differences, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformDifferences, name: "platformDifferences"))
    InstanceRecommendationOption.add_member(:performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceRisk, name: "performanceRisk", traits: {"smithy.api#default" => 0}))
    InstanceRecommendationOption.add_member(:rank, ::Smithy::Schema::Shapes::MemberShape.new(target: Rank, name: "rank", traits: {"smithy.api#default" => 0}))
    InstanceRecommendationOption.add_member(:savings_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunity, name: "savingsOpportunity"))
    InstanceRecommendationOption.add_member(:savings_opportunity_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSavingsOpportunityAfterDiscounts, name: "savingsOpportunityAfterDiscounts"))
    InstanceRecommendationOption.add_member(:migration_effort, ::Smithy::Schema::Shapes::MemberShape.new(target: MigrationEffort, name: "migrationEffort"))
    InstanceRecommendationOption.type = Types::InstanceRecommendationOption
    InstanceRecommendations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRecommendation, name: "member")
    InstanceSavingsEstimationMode.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSavingsEstimationModeSource, name: "source"))
    InstanceSavingsEstimationMode.type = Types::InstanceSavingsEstimationMode
    InstanceSavingsEstimationModeSource.add_member(:public_pricing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_PRICING", traits: {"smithy.api#enumValue" => "PublicPricing"}))
    InstanceSavingsEstimationModeSource.add_member(:cost_explorer_rightsizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COST_EXPLORER_RIGHTSIZING", traits: {"smithy.api#enumValue" => "CostExplorerRightsizing"}))
    InstanceSavingsEstimationModeSource.add_member(:cost_optimization_hub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COST_OPTIMIZATION_HUB", traits: {"smithy.api#enumValue" => "CostOptimizationHub"}))
    InstanceSavingsOpportunityAfterDiscounts.add_member(:savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunityPercentage, name: "savingsOpportunityPercentage", traits: {"smithy.api#default" => 0}))
    InstanceSavingsOpportunityAfterDiscounts.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceEstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    InstanceSavingsOpportunityAfterDiscounts.type = Types::InstanceSavingsOpportunityAfterDiscounts
    InstanceState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "pending"}))
    InstanceState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "running"}))
    InstanceState.add_member(:shutting_down, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHUTTING_DOWN", traits: {"smithy.api#enumValue" => "shutting-down"}))
    InstanceState.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "terminated"}))
    InstanceState.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "stopping"}))
    InstanceState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "stopped"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalServerException.type = Types::InternalServerException
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    JobFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobFilterName, name: "name"))
    JobFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values"))
    JobFilter.type = Types::JobFilter
    JobFilterName.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "ResourceType"}))
    JobFilterName.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JOB_STATUS", traits: {"smithy.api#enumValue" => "JobStatus"}))
    JobFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobFilter, name: "member")
    JobIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "member")
    JobStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "Queued"}))
    JobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    JobStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "Complete"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    LambdaEffectiveRecommendationPreferences.add_member(:savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaSavingsEstimationMode, name: "savingsEstimationMode"))
    LambdaEffectiveRecommendationPreferences.type = Types::LambdaEffectiveRecommendationPreferences
    LambdaEstimatedMonthlySavings.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, name: "currency"))
    LambdaEstimatedMonthlySavings.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "value", traits: {"smithy.api#default" => 0}))
    LambdaEstimatedMonthlySavings.type = Types::LambdaEstimatedMonthlySavings
    LambdaFunctionMemoryMetricName.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DURATION", traits: {"smithy.api#enumValue" => "Duration"}))
    LambdaFunctionMemoryMetricStatistic.add_member(:lower_bound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOWER_BOUND", traits: {"smithy.api#enumValue" => "LowerBound"}))
    LambdaFunctionMemoryMetricStatistic.add_member(:upper_bound, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPPER_BOUND", traits: {"smithy.api#enumValue" => "UpperBound"}))
    LambdaFunctionMemoryMetricStatistic.add_member(:expected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPECTED", traits: {"smithy.api#enumValue" => "Expected"}))
    LambdaFunctionMemoryProjectedMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionMemoryMetricName, name: "name"))
    LambdaFunctionMemoryProjectedMetric.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionMemoryMetricStatistic, name: "statistic"))
    LambdaFunctionMemoryProjectedMetric.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, name: "value", traits: {"smithy.api#default" => 0}))
    LambdaFunctionMemoryProjectedMetric.type = Types::LambdaFunctionMemoryProjectedMetric
    LambdaFunctionMemoryProjectedMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionMemoryProjectedMetric, name: "member")
    LambdaFunctionMemoryRecommendationOption.add_member(:rank, ::Smithy::Schema::Shapes::MemberShape.new(target: Rank, name: "rank", traits: {"smithy.api#default" => 0}))
    LambdaFunctionMemoryRecommendationOption.add_member(:memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "memorySize", traits: {"smithy.api#default" => 0}))
    LambdaFunctionMemoryRecommendationOption.add_member(:projected_utilization_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionMemoryProjectedMetrics, name: "projectedUtilizationMetrics"))
    LambdaFunctionMemoryRecommendationOption.add_member(:savings_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunity, name: "savingsOpportunity"))
    LambdaFunctionMemoryRecommendationOption.add_member(:savings_opportunity_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaSavingsOpportunityAfterDiscounts, name: "savingsOpportunityAfterDiscounts"))
    LambdaFunctionMemoryRecommendationOption.type = Types::LambdaFunctionMemoryRecommendationOption
    LambdaFunctionMemoryRecommendationOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionMemoryRecommendationOption, name: "member")
    LambdaFunctionMetricName.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DURATION", traits: {"smithy.api#enumValue" => "Duration"}))
    LambdaFunctionMetricName.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY", traits: {"smithy.api#enumValue" => "Memory"}))
    LambdaFunctionMetricStatistic.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAXIMUM", traits: {"smithy.api#enumValue" => "Maximum"}))
    LambdaFunctionMetricStatistic.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVERAGE", traits: {"smithy.api#enumValue" => "Average"}))
    LambdaFunctionRecommendation.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArn, name: "functionArn"))
    LambdaFunctionRecommendation.add_member(:function_version, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionVersion, name: "functionVersion"))
    LambdaFunctionRecommendation.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    LambdaFunctionRecommendation.add_member(:current_memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "currentMemorySize", traits: {"smithy.api#default" => 0}))
    LambdaFunctionRecommendation.add_member(:number_of_invocations, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfInvocations, name: "numberOfInvocations", traits: {"smithy.api#default" => 0}))
    LambdaFunctionRecommendation.add_member(:utilization_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionUtilizationMetrics, name: "utilizationMetrics"))
    LambdaFunctionRecommendation.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: LookBackPeriodInDays, name: "lookbackPeriodInDays", traits: {"smithy.api#default" => 0}))
    LambdaFunctionRecommendation.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: LastRefreshTimestamp, name: "lastRefreshTimestamp"))
    LambdaFunctionRecommendation.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionRecommendationFinding, name: "finding"))
    LambdaFunctionRecommendation.add_member(:finding_reason_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionRecommendationFindingReasonCodes, name: "findingReasonCodes"))
    LambdaFunctionRecommendation.add_member(:memory_size_recommendation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionMemoryRecommendationOptions, name: "memorySizeRecommendationOptions"))
    LambdaFunctionRecommendation.add_member(:current_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentPerformanceRisk, name: "currentPerformanceRisk"))
    LambdaFunctionRecommendation.add_member(:effective_recommendation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaEffectiveRecommendationPreferences, name: "effectiveRecommendationPreferences"))
    LambdaFunctionRecommendation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    LambdaFunctionRecommendation.type = Types::LambdaFunctionRecommendation
    LambdaFunctionRecommendationFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionRecommendationFilterName, name: "name"))
    LambdaFunctionRecommendationFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values"))
    LambdaFunctionRecommendationFilter.type = Types::LambdaFunctionRecommendationFilter
    LambdaFunctionRecommendationFilterName.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING", traits: {"smithy.api#enumValue" => "Finding"}))
    LambdaFunctionRecommendationFilterName.add_member(:finding_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING_REASON_CODE", traits: {"smithy.api#enumValue" => "FindingReasonCode"}))
    LambdaFunctionRecommendationFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionRecommendationFilter, name: "member")
    LambdaFunctionRecommendationFinding.add_member(:optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIMIZED", traits: {"smithy.api#enumValue" => "Optimized"}))
    LambdaFunctionRecommendationFinding.add_member(:not_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_OPTIMIZED", traits: {"smithy.api#enumValue" => "NotOptimized"}))
    LambdaFunctionRecommendationFinding.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "Unavailable"}))
    LambdaFunctionRecommendationFindingReasonCode.add_member(:memory_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "MemoryOverprovisioned"}))
    LambdaFunctionRecommendationFindingReasonCode.add_member(:memory_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "MemoryUnderprovisioned"}))
    LambdaFunctionRecommendationFindingReasonCode.add_member(:insufficient_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_DATA", traits: {"smithy.api#enumValue" => "InsufficientData"}))
    LambdaFunctionRecommendationFindingReasonCode.add_member(:inconclusive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCONCLUSIVE", traits: {"smithy.api#enumValue" => "Inconclusive"}))
    LambdaFunctionRecommendationFindingReasonCodes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionRecommendationFindingReasonCode, name: "member")
    LambdaFunctionRecommendations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionRecommendation, name: "member")
    LambdaFunctionUtilizationMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionMetricName, name: "name"))
    LambdaFunctionUtilizationMetric.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionMetricStatistic, name: "statistic"))
    LambdaFunctionUtilizationMetric.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, name: "value", traits: {"smithy.api#default" => 0}))
    LambdaFunctionUtilizationMetric.type = Types::LambdaFunctionUtilizationMetric
    LambdaFunctionUtilizationMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionUtilizationMetric, name: "member")
    LambdaSavingsEstimationMode.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaSavingsEstimationModeSource, name: "source"))
    LambdaSavingsEstimationMode.type = Types::LambdaSavingsEstimationMode
    LambdaSavingsEstimationModeSource.add_member(:public_pricing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_PRICING", traits: {"smithy.api#enumValue" => "PublicPricing"}))
    LambdaSavingsEstimationModeSource.add_member(:cost_explorer_rightsizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COST_EXPLORER_RIGHTSIZING", traits: {"smithy.api#enumValue" => "CostExplorerRightsizing"}))
    LambdaSavingsEstimationModeSource.add_member(:cost_optimization_hub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COST_OPTIMIZATION_HUB", traits: {"smithy.api#enumValue" => "CostOptimizationHub"}))
    LambdaSavingsOpportunityAfterDiscounts.add_member(:savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunityPercentage, name: "savingsOpportunityPercentage", traits: {"smithy.api#default" => 0}))
    LambdaSavingsOpportunityAfterDiscounts.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaEstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    LambdaSavingsOpportunityAfterDiscounts.type = Types::LambdaSavingsOpportunityAfterDiscounts
    LicenseConfiguration.add_member(:number_of_cores, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfCores, name: "numberOfCores", traits: {"smithy.api#default" => 0}))
    LicenseConfiguration.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "instanceType"))
    LicenseConfiguration.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, name: "operatingSystem"))
    LicenseConfiguration.add_member(:license_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseEdition, name: "licenseEdition"))
    LicenseConfiguration.add_member(:license_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseName, name: "licenseName"))
    LicenseConfiguration.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    LicenseConfiguration.add_member(:license_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseVersion, name: "licenseVersion"))
    LicenseConfiguration.add_member(:metrics_source, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsSource, name: "metricsSource"))
    LicenseConfiguration.type = Types::LicenseConfiguration
    LicenseEdition.add_member(:enterprise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTERPRISE", traits: {"smithy.api#enumValue" => "Enterprise"}))
    LicenseEdition.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "Standard"}))
    LicenseEdition.add_member(:free, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FREE", traits: {"smithy.api#enumValue" => "Free"}))
    LicenseEdition.add_member(:no_license_edition_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_LICENSE_EDITION_FOUND", traits: {"smithy.api#enumValue" => "NoLicenseEditionFound"}))
    LicenseFinding.add_member(:insufficient_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_METRICS", traits: {"smithy.api#enumValue" => "InsufficientMetrics"}))
    LicenseFinding.add_member(:optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIMIZED", traits: {"smithy.api#enumValue" => "Optimized"}))
    LicenseFinding.add_member(:not_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_OPTIMIZED", traits: {"smithy.api#enumValue" => "NotOptimized"}))
    LicenseFindingReasonCode.add_member(:cw_app_insights_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CW_APP_INSIGHTS_DISABLED", traits: {"smithy.api#enumValue" => "InvalidCloudWatchApplicationInsightsSetup"}))
    LicenseFindingReasonCode.add_member(:cw_app_insights_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CW_APP_INSIGHTS_ERROR", traits: {"smithy.api#enumValue" => "CloudWatchApplicationInsightsError"}))
    LicenseFindingReasonCode.add_member(:license_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "LicenseOverprovisioned"}))
    LicenseFindingReasonCode.add_member(:optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIMIZED", traits: {"smithy.api#enumValue" => "Optimized"}))
    LicenseFindingReasonCodes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseFindingReasonCode, name: "member")
    LicenseModel.add_member(:license_included, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE_INCLUDED", traits: {"smithy.api#enumValue" => "LicenseIncluded"}))
    LicenseModel.add_member(:bring_your_own_license, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BRING_YOUR_OWN_LICENSE", traits: {"smithy.api#enumValue" => "BringYourOwnLicense"}))
    LicenseName.add_member(:sqlserver, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQLSERVER", traits: {"smithy.api#enumValue" => "SQLServer"}))
    LicenseRecommendation.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn"))
    LicenseRecommendation.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    LicenseRecommendation.add_member(:current_license_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConfiguration, name: "currentLicenseConfiguration"))
    LicenseRecommendation.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: LookBackPeriodInDays, name: "lookbackPeriodInDays", traits: {"smithy.api#default" => 0}))
    LicenseRecommendation.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: LastRefreshTimestamp, name: "lastRefreshTimestamp"))
    LicenseRecommendation.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseFinding, name: "finding"))
    LicenseRecommendation.add_member(:finding_reason_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseFindingReasonCodes, name: "findingReasonCodes"))
    LicenseRecommendation.add_member(:license_recommendation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseRecommendationOptions, name: "licenseRecommendationOptions"))
    LicenseRecommendation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    LicenseRecommendation.type = Types::LicenseRecommendation
    LicenseRecommendationFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseRecommendationFilterName, name: "name"))
    LicenseRecommendationFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values"))
    LicenseRecommendationFilter.type = Types::LicenseRecommendationFilter
    LicenseRecommendationFilterName.add_member(:license_finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE_FINDING", traits: {"smithy.api#enumValue" => "Finding"}))
    LicenseRecommendationFilterName.add_member(:license_finding_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE_FINDING_REASON_CODE", traits: {"smithy.api#enumValue" => "FindingReasonCode"}))
    LicenseRecommendationFilterName.add_member(:license_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE_NAME", traits: {"smithy.api#enumValue" => "LicenseName"}))
    LicenseRecommendationFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseRecommendationFilter, name: "member")
    LicenseRecommendationOption.add_member(:rank, ::Smithy::Schema::Shapes::MemberShape.new(target: Rank, name: "rank", traits: {"smithy.api#default" => 0}))
    LicenseRecommendationOption.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, name: "operatingSystem"))
    LicenseRecommendationOption.add_member(:license_edition, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseEdition, name: "licenseEdition"))
    LicenseRecommendationOption.add_member(:license_model, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseModel, name: "licenseModel"))
    LicenseRecommendationOption.add_member(:savings_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunity, name: "savingsOpportunity"))
    LicenseRecommendationOption.type = Types::LicenseRecommendationOption
    LicenseRecommendationOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseRecommendationOption, name: "member")
    LicenseRecommendations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseRecommendation, name: "member")
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    LookBackPeriodPreference.add_member(:days_14, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS_14", traits: {"smithy.api#enumValue" => "DAYS_14"}))
    LookBackPeriodPreference.add_member(:days_32, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS_32", traits: {"smithy.api#enumValue" => "DAYS_32"}))
    LookBackPeriodPreference.add_member(:days_93, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS_93", traits: {"smithy.api#enumValue" => "DAYS_93"}))
    MemorySizeConfiguration.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableMemory, name: "memory"))
    MemorySizeConfiguration.add_member(:memory_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableMemoryReservation, name: "memoryReservation"))
    MemorySizeConfiguration.type = Types::MemorySizeConfiguration
    MetricName.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPU", traits: {"smithy.api#enumValue" => "Cpu"}))
    MetricName.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY", traits: {"smithy.api#enumValue" => "Memory"}))
    MetricName.add_member(:ebs_read_ops_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_READ_OPS_PER_SECOND", traits: {"smithy.api#enumValue" => "EBS_READ_OPS_PER_SECOND"}))
    MetricName.add_member(:ebs_write_ops_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_WRITE_OPS_PER_SECOND", traits: {"smithy.api#enumValue" => "EBS_WRITE_OPS_PER_SECOND"}))
    MetricName.add_member(:ebs_read_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_READ_BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "EBS_READ_BYTES_PER_SECOND"}))
    MetricName.add_member(:ebs_write_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_WRITE_BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "EBS_WRITE_BYTES_PER_SECOND"}))
    MetricName.add_member(:disk_read_ops_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISK_READ_OPS_PER_SECOND", traits: {"smithy.api#enumValue" => "DISK_READ_OPS_PER_SECOND"}))
    MetricName.add_member(:disk_write_ops_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISK_WRITE_OPS_PER_SECOND", traits: {"smithy.api#enumValue" => "DISK_WRITE_OPS_PER_SECOND"}))
    MetricName.add_member(:disk_read_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISK_READ_BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "DISK_READ_BYTES_PER_SECOND"}))
    MetricName.add_member(:disk_write_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISK_WRITE_BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "DISK_WRITE_BYTES_PER_SECOND"}))
    MetricName.add_member(:network_in_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_IN_BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "NETWORK_IN_BYTES_PER_SECOND"}))
    MetricName.add_member(:network_out_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_OUT_BYTES_PER_SECOND", traits: {"smithy.api#enumValue" => "NETWORK_OUT_BYTES_PER_SECOND"}))
    MetricName.add_member(:network_packets_in_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_PACKETS_IN_PER_SECOND", traits: {"smithy.api#enumValue" => "NETWORK_PACKETS_IN_PER_SECOND"}))
    MetricName.add_member(:network_packets_out_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_PACKETS_OUT_PER_SECOND", traits: {"smithy.api#enumValue" => "NETWORK_PACKETS_OUT_PER_SECOND"}))
    MetricName.add_member(:gpu_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GPU_PERCENTAGE", traits: {"smithy.api#enumValue" => "GPU_PERCENTAGE"}))
    MetricName.add_member(:gpu_memory_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GPU_MEMORY_PERCENTAGE", traits: {"smithy.api#enumValue" => "GPU_MEMORY_PERCENTAGE"}))
    MetricSource.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricSourceProvider, name: "provider"))
    MetricSource.add_member(:provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricProviderArn, name: "providerArn"))
    MetricSource.type = Types::MetricSource
    MetricSourceProvider.add_member(:cloud_watch_app_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloudWatchAppInsights", traits: {"smithy.api#enumValue" => "CloudWatchApplicationInsights"}))
    MetricStatistic.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAXIMUM", traits: {"smithy.api#enumValue" => "Maximum"}))
    MetricStatistic.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVERAGE", traits: {"smithy.api#enumValue" => "Average"}))
    MetricValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, name: "member")
    MetricsSource.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricSource, name: "member")
    MigrationEffort.add_member(:very_low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERY_LOW", traits: {"smithy.api#enumValue" => "VeryLow"}))
    MigrationEffort.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "Low"}))
    MigrationEffort.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "Medium"}))
    MigrationEffort.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "High"}))
    MissingAuthenticationToken.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MissingAuthenticationToken.type = Types::MissingAuthenticationToken
    MixedInstanceTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MixedInstanceType, name: "member")
    OptInRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    OptInRequiredException.type = Types::OptInRequiredException
    Order.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "Asc"}))
    Order.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "Desc"}))
    OrderBy.add_member(:dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: Dimension, name: "dimension"))
    OrderBy.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: Order, name: "order"))
    OrderBy.type = Types::OrderBy
    PlatformDifference.add_member(:hypervisor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HYPERVISOR", traits: {"smithy.api#enumValue" => "Hypervisor"}))
    PlatformDifference.add_member(:network_interface, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_INTERFACE", traits: {"smithy.api#enumValue" => "NetworkInterface"}))
    PlatformDifference.add_member(:storage_interface, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_INTERFACE", traits: {"smithy.api#enumValue" => "StorageInterface"}))
    PlatformDifference.add_member(:instance_store_availability, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_STORE_AVAILABILITY", traits: {"smithy.api#enumValue" => "InstanceStoreAvailability"}))
    PlatformDifference.add_member(:virtualization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIRTUALIZATION_TYPE", traits: {"smithy.api#enumValue" => "VirtualizationType"}))
    PlatformDifference.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHITECTURE", traits: {"smithy.api#enumValue" => "Architecture"}))
    PlatformDifferences.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformDifference, name: "member")
    PreferredResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredResourceName, name: "name"))
    PreferredResource.add_member(:include_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredResourceValues, name: "includeList"))
    PreferredResource.add_member(:exclude_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredResourceValues, name: "excludeList"))
    PreferredResource.type = Types::PreferredResource
    PreferredResourceName.add_member(:ec2_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_INSTANCE_TYPES", traits: {"smithy.api#enumValue" => "Ec2InstanceTypes"}))
    PreferredResourceValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredResourceValue, name: "member")
    PreferredResources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredResource, name: "member")
    ProjectedMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "name"))
    ProjectedMetric.add_member(:timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamps, name: "timestamps"))
    ProjectedMetric.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValues, name: "values"))
    ProjectedMetric.type = Types::ProjectedMetric
    ProjectedMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectedMetric, name: "member")
    ProjectedUtilizationMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UtilizationMetric, name: "member")
    PutRecommendationPreferencesRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    PutRecommendationPreferencesRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "scope"))
    PutRecommendationPreferencesRequest.add_member(:enhanced_infrastructure_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedInfrastructureMetrics, name: "enhancedInfrastructureMetrics"))
    PutRecommendationPreferencesRequest.add_member(:inferred_workload_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InferredWorkloadTypesPreference, name: "inferredWorkloadTypes"))
    PutRecommendationPreferencesRequest.add_member(:external_metrics_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalMetricsPreference, name: "externalMetricsPreference"))
    PutRecommendationPreferencesRequest.add_member(:look_back_period, ::Smithy::Schema::Shapes::MemberShape.new(target: LookBackPeriodPreference, name: "lookBackPeriod"))
    PutRecommendationPreferencesRequest.add_member(:utilization_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: UtilizationPreferences, name: "utilizationPreferences"))
    PutRecommendationPreferencesRequest.add_member(:preferred_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredResources, name: "preferredResources"))
    PutRecommendationPreferencesRequest.add_member(:savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsEstimationMode, name: "savingsEstimationMode"))
    PutRecommendationPreferencesRequest.type = Types::PutRecommendationPreferencesRequest
    PutRecommendationPreferencesResponse.type = Types::PutRecommendationPreferencesResponse
    RDSCurrentInstancePerformanceRisk.add_member(:very_low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERY_LOW", traits: {"smithy.api#enumValue" => "VeryLow"}))
    RDSCurrentInstancePerformanceRisk.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "Low"}))
    RDSCurrentInstancePerformanceRisk.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "Medium"}))
    RDSCurrentInstancePerformanceRisk.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "High"}))
    RDSDBInstanceRecommendationOption.add_member(:db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: DBInstanceClass, name: "dbInstanceClass"))
    RDSDBInstanceRecommendationOption.add_member(:projected_utilization_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBProjectedUtilizationMetrics, name: "projectedUtilizationMetrics"))
    RDSDBInstanceRecommendationOption.add_member(:performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceRisk, name: "performanceRisk", traits: {"smithy.api#default" => 0}))
    RDSDBInstanceRecommendationOption.add_member(:rank, ::Smithy::Schema::Shapes::MemberShape.new(target: Rank, name: "rank", traits: {"smithy.api#default" => 0}))
    RDSDBInstanceRecommendationOption.add_member(:savings_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunity, name: "savingsOpportunity"))
    RDSDBInstanceRecommendationOption.add_member(:savings_opportunity_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSInstanceSavingsOpportunityAfterDiscounts, name: "savingsOpportunityAfterDiscounts"))
    RDSDBInstanceRecommendationOption.type = Types::RDSDBInstanceRecommendationOption
    RDSDBInstanceRecommendationOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBInstanceRecommendationOption, name: "member")
    RDSDBMetricName.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPU", traits: {"smithy.api#enumValue" => "CPU"}))
    RDSDBMetricName.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY", traits: {"smithy.api#enumValue" => "Memory"}))
    RDSDBMetricName.add_member(:ebs_volume_storage_space_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME_STORAGE_SPACE_UTILIZATION", traits: {"smithy.api#enumValue" => "EBSVolumeStorageSpaceUtilization"}))
    RDSDBMetricName.add_member(:network_receive_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_RECEIVE_THROUGHPUT", traits: {"smithy.api#enumValue" => "NetworkReceiveThroughput"}))
    RDSDBMetricName.add_member(:network_transmit_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_TRANSMIT_THROUGHPUT", traits: {"smithy.api#enumValue" => "NetworkTransmitThroughput"}))
    RDSDBMetricName.add_member(:ebs_volume_read_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME_READ_IOPS", traits: {"smithy.api#enumValue" => "EBSVolumeReadIOPS"}))
    RDSDBMetricName.add_member(:ebs_volume_write_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME_WRITE_IOPS", traits: {"smithy.api#enumValue" => "EBSVolumeWriteIOPS"}))
    RDSDBMetricName.add_member(:ebs_volume_read_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME_READ_THROUGHPUT", traits: {"smithy.api#enumValue" => "EBSVolumeReadThroughput"}))
    RDSDBMetricName.add_member(:ebs_volume_write_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME_WRITE_THROUGHPUT", traits: {"smithy.api#enumValue" => "EBSVolumeWriteThroughput"}))
    RDSDBMetricName.add_member(:database_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATABASE_CONNECTIONS", traits: {"smithy.api#enumValue" => "DatabaseConnections"}))
    RDSDBMetricName.add_member(:storage_network_receive_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_NETWORK_RECEIVE_THROUGHPUT", traits: {"smithy.api#enumValue" => "StorageNetworkReceiveThroughput"}))
    RDSDBMetricName.add_member(:storage_network_transmit_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_NETWORK_TRANSMIT_THROUGHPUT", traits: {"smithy.api#enumValue" => "StorageNetworkTransmitThroughput"}))
    RDSDBMetricName.add_member(:aurora_memory_health_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AURORA_MEMORY_HEALTH_STATE", traits: {"smithy.api#enumValue" => "AuroraMemoryHealthState"}))
    RDSDBMetricName.add_member(:aurora_memory_num_declined_sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AURORA_MEMORY_NUM_DECLINED_SQL", traits: {"smithy.api#enumValue" => "AuroraMemoryNumDeclinedSql"}))
    RDSDBMetricName.add_member(:aurora_memory_num_kill_conn_total, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AURORA_MEMORY_NUM_KILL_CONN_TOTAL", traits: {"smithy.api#enumValue" => "AuroraMemoryNumKillConnTotal"}))
    RDSDBMetricName.add_member(:aurora_memory_num_kill_query_total, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AURORA_MEMORY_NUM_KILL_QUERY_TOTAL", traits: {"smithy.api#enumValue" => "AuroraMemoryNumKillQueryTotal"}))
    RDSDBMetricName.add_member(:read_iops_ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_IOPS_EPHEMERAL_STORAGE", traits: {"smithy.api#enumValue" => "ReadIOPSEphemeralStorage"}))
    RDSDBMetricName.add_member(:write_iops_ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRITE_IOPS_EPHEMERAL_STORAGE", traits: {"smithy.api#enumValue" => "WriteIOPSEphemeralStorage"}))
    RDSDBMetricName.add_member(:volume_read_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_READ_IOPS", traits: {"smithy.api#enumValue" => "VolumeReadIOPs"}))
    RDSDBMetricName.add_member(:volume_bytes_used, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_BYTES_USED", traits: {"smithy.api#enumValue" => "VolumeBytesUsed"}))
    RDSDBMetricName.add_member(:volume_write_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME_WRITE_IOPS", traits: {"smithy.api#enumValue" => "VolumeWriteIOPs"}))
    RDSDBMetricStatistic.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAXIMUM", traits: {"smithy.api#enumValue" => "Maximum"}))
    RDSDBMetricStatistic.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINIMUM", traits: {"smithy.api#enumValue" => "Minimum"}))
    RDSDBMetricStatistic.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVERAGE", traits: {"smithy.api#enumValue" => "Average"}))
    RDSDBProjectedUtilizationMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBUtilizationMetric, name: "member")
    RDSDBRecommendation.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn"))
    RDSDBRecommendation.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    RDSDBRecommendation.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: Engine, name: "engine"))
    RDSDBRecommendation.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersion, name: "engineVersion"))
    RDSDBRecommendation.add_member(:promotion_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: PromotionTier, name: "promotionTier"))
    RDSDBRecommendation.add_member(:current_db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentDBInstanceClass, name: "currentDBInstanceClass"))
    RDSDBRecommendation.add_member(:current_storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DBStorageConfiguration, name: "currentStorageConfiguration"))
    RDSDBRecommendation.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: DBClusterIdentifier, name: "dbClusterIdentifier"))
    RDSDBRecommendation.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: Idle, name: "idle"))
    RDSDBRecommendation.add_member(:instance_finding, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSInstanceFinding, name: "instanceFinding"))
    RDSDBRecommendation.add_member(:storage_finding, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSStorageFinding, name: "storageFinding"))
    RDSDBRecommendation.add_member(:instance_finding_reason_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSInstanceFindingReasonCodes, name: "instanceFindingReasonCodes"))
    RDSDBRecommendation.add_member(:current_instance_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSCurrentInstancePerformanceRisk, name: "currentInstancePerformanceRisk"))
    RDSDBRecommendation.add_member(:current_storage_estimated_monthly_volume_io_ps_cost_variation, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSEstimatedMonthlyVolumeIOPsCostVariation, name: "currentStorageEstimatedMonthlyVolumeIOPsCostVariation"))
    RDSDBRecommendation.add_member(:storage_finding_reason_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSStorageFindingReasonCodes, name: "storageFindingReasonCodes"))
    RDSDBRecommendation.add_member(:instance_recommendation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBInstanceRecommendationOptions, name: "instanceRecommendationOptions"))
    RDSDBRecommendation.add_member(:storage_recommendation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBStorageRecommendationOptions, name: "storageRecommendationOptions"))
    RDSDBRecommendation.add_member(:utilization_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBUtilizationMetrics, name: "utilizationMetrics"))
    RDSDBRecommendation.add_member(:effective_recommendation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSEffectiveRecommendationPreferences, name: "effectiveRecommendationPreferences"))
    RDSDBRecommendation.add_member(:lookback_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: LookBackPeriodInDays, name: "lookbackPeriodInDays", traits: {"smithy.api#default" => 0}))
    RDSDBRecommendation.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: LastRefreshTimestamp, name: "lastRefreshTimestamp"))
    RDSDBRecommendation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    RDSDBRecommendation.type = Types::RDSDBRecommendation
    RDSDBRecommendationFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBRecommendationFilterName, name: "name"))
    RDSDBRecommendationFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values"))
    RDSDBRecommendationFilter.type = Types::RDSDBRecommendationFilter
    RDSDBRecommendationFilterName.add_member(:instance_finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_FINDING", traits: {"smithy.api#enumValue" => "InstanceFinding"}))
    RDSDBRecommendationFilterName.add_member(:instance_finding_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_FINDING_REASON_CODE", traits: {"smithy.api#enumValue" => "InstanceFindingReasonCode"}))
    RDSDBRecommendationFilterName.add_member(:storage_finding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_FINDING", traits: {"smithy.api#enumValue" => "StorageFinding"}))
    RDSDBRecommendationFilterName.add_member(:storage_finding_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_FINDING_REASON_CODE", traits: {"smithy.api#enumValue" => "StorageFindingReasonCode"}))
    RDSDBRecommendationFilterName.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDLE", traits: {"smithy.api#enumValue" => "Idle"}))
    RDSDBRecommendationFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBRecommendationFilter, name: "member")
    RDSDBRecommendations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBRecommendation, name: "member")
    RDSDBStorageRecommendationOption.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DBStorageConfiguration, name: "storageConfiguration"))
    RDSDBStorageRecommendationOption.add_member(:rank, ::Smithy::Schema::Shapes::MemberShape.new(target: Rank, name: "rank", traits: {"smithy.api#default" => 0}))
    RDSDBStorageRecommendationOption.add_member(:savings_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunity, name: "savingsOpportunity"))
    RDSDBStorageRecommendationOption.add_member(:savings_opportunity_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSStorageSavingsOpportunityAfterDiscounts, name: "savingsOpportunityAfterDiscounts"))
    RDSDBStorageRecommendationOption.add_member(:estimated_monthly_volume_io_ps_cost_variation, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSEstimatedMonthlyVolumeIOPsCostVariation, name: "estimatedMonthlyVolumeIOPsCostVariation"))
    RDSDBStorageRecommendationOption.type = Types::RDSDBStorageRecommendationOption
    RDSDBStorageRecommendationOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBStorageRecommendationOption, name: "member")
    RDSDBUtilizationMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBMetricName, name: "name"))
    RDSDBUtilizationMetric.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBMetricStatistic, name: "statistic"))
    RDSDBUtilizationMetric.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, name: "value", traits: {"smithy.api#default" => 0}))
    RDSDBUtilizationMetric.type = Types::RDSDBUtilizationMetric
    RDSDBUtilizationMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBUtilizationMetric, name: "member")
    RDSDatabaseProjectedMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDBMetricName, name: "name"))
    RDSDatabaseProjectedMetric.add_member(:timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamps, name: "timestamps"))
    RDSDatabaseProjectedMetric.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValues, name: "values"))
    RDSDatabaseProjectedMetric.type = Types::RDSDatabaseProjectedMetric
    RDSDatabaseProjectedMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDatabaseProjectedMetric, name: "member")
    RDSDatabaseRecommendedOptionProjectedMetric.add_member(:recommended_db_instance_class, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedDBInstanceClass, name: "recommendedDBInstanceClass"))
    RDSDatabaseRecommendedOptionProjectedMetric.add_member(:rank, ::Smithy::Schema::Shapes::MemberShape.new(target: Rank, name: "rank", traits: {"smithy.api#default" => 0}))
    RDSDatabaseRecommendedOptionProjectedMetric.add_member(:projected_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDatabaseProjectedMetrics, name: "projectedMetrics"))
    RDSDatabaseRecommendedOptionProjectedMetric.type = Types::RDSDatabaseRecommendedOptionProjectedMetric
    RDSDatabaseRecommendedOptionProjectedMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RDSDatabaseRecommendedOptionProjectedMetric, name: "member")
    RDSEffectiveRecommendationPreferences.add_member(:cpu_vendor_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuVendorArchitectures, name: "cpuVendorArchitectures"))
    RDSEffectiveRecommendationPreferences.add_member(:enhanced_infrastructure_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedInfrastructureMetrics, name: "enhancedInfrastructureMetrics"))
    RDSEffectiveRecommendationPreferences.add_member(:look_back_period, ::Smithy::Schema::Shapes::MemberShape.new(target: LookBackPeriodPreference, name: "lookBackPeriod"))
    RDSEffectiveRecommendationPreferences.add_member(:savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSSavingsEstimationMode, name: "savingsEstimationMode"))
    RDSEffectiveRecommendationPreferences.type = Types::RDSEffectiveRecommendationPreferences
    RDSEstimatedMonthlyVolumeIOPsCostVariation.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "None"}))
    RDSEstimatedMonthlyVolumeIOPsCostVariation.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "Low"}))
    RDSEstimatedMonthlyVolumeIOPsCostVariation.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "Medium"}))
    RDSEstimatedMonthlyVolumeIOPsCostVariation.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "High"}))
    RDSInstanceEstimatedMonthlySavings.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, name: "currency"))
    RDSInstanceEstimatedMonthlySavings.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "value", traits: {"smithy.api#default" => 0}))
    RDSInstanceEstimatedMonthlySavings.type = Types::RDSInstanceEstimatedMonthlySavings
    RDSInstanceFinding.add_member(:optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIMIZED", traits: {"smithy.api#enumValue" => "Optimized"}))
    RDSInstanceFinding.add_member(:under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "Underprovisioned"}))
    RDSInstanceFinding.add_member(:over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "Overprovisioned"}))
    RDSInstanceFindingReasonCode.add_member(:cpu_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPU_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "CPUOverprovisioned"}))
    RDSInstanceFindingReasonCode.add_member(:network_bandwidth_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_BANDWIDTH_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "NetworkBandwidthOverprovisioned"}))
    RDSInstanceFindingReasonCode.add_member(:ebs_iops_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_IOPS_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "EBSIOPSOverprovisioned"}))
    RDSInstanceFindingReasonCode.add_member(:ebs_iops_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_IOPS_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "EBSIOPSUnderprovisioned"}))
    RDSInstanceFindingReasonCode.add_member(:ebs_throughput_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_THROUGHPUT_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "EBSThroughputOverprovisioned"}))
    RDSInstanceFindingReasonCode.add_member(:cpu_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPU_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "CPUUnderprovisioned"}))
    RDSInstanceFindingReasonCode.add_member(:network_bandwidth_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_BANDWIDTH_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "NetworkBandwidthUnderprovisioned"}))
    RDSInstanceFindingReasonCode.add_member(:ebs_throughput_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_THROUGHPUT_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "EBSThroughputUnderprovisioned"}))
    RDSInstanceFindingReasonCode.add_member(:new_generation_db_instance_class_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_GENERATION_DB_INSTANCE_CLASS_AVAILABLE", traits: {"smithy.api#enumValue" => "NewGenerationDBInstanceClassAvailable"}))
    RDSInstanceFindingReasonCode.add_member(:new_engine_version_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_ENGINE_VERSION_AVAILABLE", traits: {"smithy.api#enumValue" => "NewEngineVersionAvailable"}))
    RDSInstanceFindingReasonCode.add_member(:db_cluster_writer_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB_CLUSTER_WRITER_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "DBClusterWriterUnderprovisioned"}))
    RDSInstanceFindingReasonCode.add_member(:memory_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMORY_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "MemoryUnderprovisioned"}))
    RDSInstanceFindingReasonCode.add_member(:instance_storage_read_iops_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_STORAGE_READ_IOPS_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "InstanceStorageReadIOPSUnderprovisioned"}))
    RDSInstanceFindingReasonCode.add_member(:instance_storage_write_iops_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE_STORAGE_WRITE_IOPS_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "InstanceStorageWriteIOPSUnderprovisioned"}))
    RDSInstanceFindingReasonCodes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RDSInstanceFindingReasonCode, name: "member")
    RDSInstanceSavingsOpportunityAfterDiscounts.add_member(:savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunityPercentage, name: "savingsOpportunityPercentage", traits: {"smithy.api#default" => 0}))
    RDSInstanceSavingsOpportunityAfterDiscounts.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSInstanceEstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    RDSInstanceSavingsOpportunityAfterDiscounts.type = Types::RDSInstanceSavingsOpportunityAfterDiscounts
    RDSSavingsEstimationMode.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSSavingsEstimationModeSource, name: "source"))
    RDSSavingsEstimationMode.type = Types::RDSSavingsEstimationMode
    RDSSavingsEstimationModeSource.add_member(:public_pricing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_PRICING", traits: {"smithy.api#enumValue" => "PublicPricing"}))
    RDSSavingsEstimationModeSource.add_member(:cost_explorer_rightsizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COST_EXPLORER_RIGHTSIZING", traits: {"smithy.api#enumValue" => "CostExplorerRightsizing"}))
    RDSSavingsEstimationModeSource.add_member(:cost_optimization_hub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COST_OPTIMIZATION_HUB", traits: {"smithy.api#enumValue" => "CostOptimizationHub"}))
    RDSStorageEstimatedMonthlySavings.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, name: "currency"))
    RDSStorageEstimatedMonthlySavings.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "value", traits: {"smithy.api#default" => 0}))
    RDSStorageEstimatedMonthlySavings.type = Types::RDSStorageEstimatedMonthlySavings
    RDSStorageFinding.add_member(:optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIMIZED", traits: {"smithy.api#enumValue" => "Optimized"}))
    RDSStorageFinding.add_member(:under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "Underprovisioned"}))
    RDSStorageFinding.add_member(:over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "Overprovisioned"}))
    RDSStorageFinding.add_member(:not_optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_OPTIMIZED", traits: {"smithy.api#enumValue" => "NotOptimized"}))
    RDSStorageFindingReasonCode.add_member(:ebs_volume_allocated_storage_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME_ALLOCATED_STORAGE_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "EBSVolumeAllocatedStorageUnderprovisioned"}))
    RDSStorageFindingReasonCode.add_member(:ebs_volume_throughput_under_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME_THROUGHPUT_UNDER_PROVISIONED", traits: {"smithy.api#enumValue" => "EBSVolumeThroughputUnderprovisioned"}))
    RDSStorageFindingReasonCode.add_member(:ebs_volume_iops_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME_IOPS_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "EBSVolumeIOPSOverprovisioned"}))
    RDSStorageFindingReasonCode.add_member(:ebs_volume_throughput_over_provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME_THROUGHPUT_OVER_PROVISIONED", traits: {"smithy.api#enumValue" => "EBSVolumeThroughputOverprovisioned"}))
    RDSStorageFindingReasonCode.add_member(:new_generation_storage_type_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_GENERATION_STORAGE_TYPE_AVAILABLE", traits: {"smithy.api#enumValue" => "NewGenerationStorageTypeAvailable"}))
    RDSStorageFindingReasonCode.add_member(:db_cluster_storage_option_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB_CLUSTER_STORAGE_OPTION_AVAILABLE", traits: {"smithy.api#enumValue" => "DBClusterStorageOptionAvailable"}))
    RDSStorageFindingReasonCode.add_member(:db_cluster_storage_savings_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DB_CLUSTER_STORAGE_SAVINGS_AVAILABLE", traits: {"smithy.api#enumValue" => "DBClusterStorageSavingsAvailable"}))
    RDSStorageFindingReasonCodes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RDSStorageFindingReasonCode, name: "member")
    RDSStorageSavingsOpportunityAfterDiscounts.add_member(:savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunityPercentage, name: "savingsOpportunityPercentage", traits: {"smithy.api#default" => 0}))
    RDSStorageSavingsOpportunityAfterDiscounts.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: RDSStorageEstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    RDSStorageSavingsOpportunityAfterDiscounts.type = Types::RDSStorageSavingsOpportunityAfterDiscounts
    ReasonCodeSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonCodeSummary, name: "member")
    ReasonCodeSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingReasonCode, name: "name"))
    ReasonCodeSummary.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryValue, name: "value", traits: {"smithy.api#default" => 0}))
    ReasonCodeSummary.type = Types::ReasonCodeSummary
    RecommendationExportJob.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId"))
    RecommendationExportJob.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportDestination, name: "destination"))
    RecommendationExportJob.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    RecommendationExportJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status"))
    RecommendationExportJob.add_member(:creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "creationTimestamp"))
    RecommendationExportJob.add_member(:last_updated_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdatedTimestamp, name: "lastUpdatedTimestamp"))
    RecommendationExportJob.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "failureReason"))
    RecommendationExportJob.type = Types::RecommendationExportJob
    RecommendationExportJobs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationExportJob, name: "member")
    RecommendationOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRecommendationOption, name: "member")
    RecommendationPreferenceName.add_member(:enhanced_infrastructure_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENHANCED_INFRASTRUCTURE_METRICS", traits: {"smithy.api#enumValue" => "EnhancedInfrastructureMetrics"}))
    RecommendationPreferenceName.add_member(:inferred_workload_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFERRED_WORKLOAD_TYPES", traits: {"smithy.api#enumValue" => "InferredWorkloadTypes"}))
    RecommendationPreferenceName.add_member(:external_metrics_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL_METRICS_PREFERENCE", traits: {"smithy.api#enumValue" => "ExternalMetricsPreference"}))
    RecommendationPreferenceName.add_member(:lookback_period_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOOKBACK_PERIOD_PREFERENCE", traits: {"smithy.api#enumValue" => "LookBackPeriodPreference"}))
    RecommendationPreferenceName.add_member(:preferred_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREFERRED_RESOURCES", traits: {"smithy.api#enumValue" => "PreferredResources"}))
    RecommendationPreferenceName.add_member(:utilization_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UTILIZATION_PREFERENCES", traits: {"smithy.api#enumValue" => "UtilizationPreferences"}))
    RecommendationPreferenceNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPreferenceName, name: "member")
    RecommendationPreferences.add_member(:cpu_vendor_architectures, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuVendorArchitectures, name: "cpuVendorArchitectures"))
    RecommendationPreferences.type = Types::RecommendationPreferences
    RecommendationPreferencesDetail.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "scope"))
    RecommendationPreferencesDetail.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    RecommendationPreferencesDetail.add_member(:enhanced_infrastructure_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedInfrastructureMetrics, name: "enhancedInfrastructureMetrics"))
    RecommendationPreferencesDetail.add_member(:inferred_workload_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InferredWorkloadTypesPreference, name: "inferredWorkloadTypes"))
    RecommendationPreferencesDetail.add_member(:external_metrics_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalMetricsPreference, name: "externalMetricsPreference"))
    RecommendationPreferencesDetail.add_member(:look_back_period, ::Smithy::Schema::Shapes::MemberShape.new(target: LookBackPeriodPreference, name: "lookBackPeriod"))
    RecommendationPreferencesDetail.add_member(:utilization_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: UtilizationPreferences, name: "utilizationPreferences"))
    RecommendationPreferencesDetail.add_member(:preferred_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePreferredResources, name: "preferredResources"))
    RecommendationPreferencesDetail.add_member(:savings_estimation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsEstimationMode, name: "savingsEstimationMode"))
    RecommendationPreferencesDetail.type = Types::RecommendationPreferencesDetail
    RecommendationPreferencesDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPreferencesDetail, name: "member")
    RecommendationSource.add_member(:recommendation_source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSourceArn, name: "recommendationSourceArn"))
    RecommendationSource.add_member(:recommendation_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSourceType, name: "recommendationSourceType"))
    RecommendationSource.type = Types::RecommendationSource
    RecommendationSourceType.add_member(:ec2_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_INSTANCE", traits: {"smithy.api#enumValue" => "Ec2Instance"}))
    RecommendationSourceType.add_member(:auto_scaling_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_SCALING_GROUP", traits: {"smithy.api#enumValue" => "AutoScalingGroup"}))
    RecommendationSourceType.add_member(:ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME", traits: {"smithy.api#enumValue" => "EbsVolume"}))
    RecommendationSourceType.add_member(:lambda_function, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_FUNCTION", traits: {"smithy.api#enumValue" => "LambdaFunction"}))
    RecommendationSourceType.add_member(:ecs_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_SERVICE", traits: {"smithy.api#enumValue" => "EcsService"}))
    RecommendationSourceType.add_member(:license, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE", traits: {"smithy.api#enumValue" => "License"}))
    RecommendationSourceType.add_member(:rds_db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DB_INSTANCE", traits: {"smithy.api#enumValue" => "RdsDBInstance"}))
    RecommendationSourceType.add_member(:rds_db_instance_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DB_INSTANCE_STORAGE", traits: {"smithy.api#enumValue" => "RdsDBInstanceStorage"}))
    RecommendationSourceType.add_member(:aurora_db_cluster_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AURORA_DB_CLUSTER_STORAGE", traits: {"smithy.api#enumValue" => "AuroraDBClusterStorage"}))
    RecommendationSources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSource, name: "member")
    RecommendationSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSummary, name: "member")
    RecommendationSummary.add_member(:summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: Summaries, name: "summaries"))
    RecommendationSummary.add_member(:idle_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleSummaries, name: "idleSummaries"))
    RecommendationSummary.add_member(:recommendation_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSourceType, name: "recommendationResourceType"))
    RecommendationSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    RecommendationSummary.add_member(:savings_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunity, name: "savingsOpportunity"))
    RecommendationSummary.add_member(:idle_savings_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunity, name: "idleSavingsOpportunity"))
    RecommendationSummary.add_member(:aggregated_savings_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunity, name: "aggregatedSavingsOpportunity"))
    RecommendationSummary.add_member(:current_performance_risk_ratings, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentPerformanceRiskRatings, name: "currentPerformanceRiskRatings"))
    RecommendationSummary.add_member(:inferred_workload_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: InferredWorkloadSavings, name: "inferredWorkloadSavings"))
    RecommendationSummary.type = Types::RecommendationSummary
    RecommendedOptionProjectedMetric.add_member(:recommended_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedInstanceType, name: "recommendedInstanceType"))
    RecommendedOptionProjectedMetric.add_member(:rank, ::Smithy::Schema::Shapes::MemberShape.new(target: Rank, name: "rank", traits: {"smithy.api#default" => 0}))
    RecommendedOptionProjectedMetric.add_member(:projected_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectedMetrics, name: "projectedMetrics"))
    RecommendedOptionProjectedMetric.type = Types::RecommendedOptionProjectedMetric
    RecommendedOptionProjectedMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedOptionProjectedMetric, name: "member")
    ResourceArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "member")
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:ec2_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_INSTANCE", traits: {"smithy.api#enumValue" => "Ec2Instance"}))
    ResourceType.add_member(:auto_scaling_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_SCALING_GROUP", traits: {"smithy.api#enumValue" => "AutoScalingGroup"}))
    ResourceType.add_member(:ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EBS_VOLUME", traits: {"smithy.api#enumValue" => "EbsVolume"}))
    ResourceType.add_member(:lambda_function, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_FUNCTION", traits: {"smithy.api#enumValue" => "LambdaFunction"}))
    ResourceType.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NotApplicable"}))
    ResourceType.add_member(:ecs_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS_SERVICE", traits: {"smithy.api#enumValue" => "EcsService"}))
    ResourceType.add_member(:license, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE", traits: {"smithy.api#enumValue" => "License"}))
    ResourceType.add_member(:rds_db_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS_DB_INSTANCE", traits: {"smithy.api#enumValue" => "RdsDBInstance"}))
    ResourceType.add_member(:aurora_db_cluster_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AURORA_DB_CLUSTER_STORAGE", traits: {"smithy.api#enumValue" => "AuroraDBClusterStorage"}))
    ResourceType.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDLE", traits: {"smithy.api#enumValue" => "Idle"}))
    S3Destination.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationBucket, name: "bucket"))
    S3Destination.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationKey, name: "key"))
    S3Destination.add_member(:metadata_key, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataKey, name: "metadataKey"))
    S3Destination.type = Types::S3Destination
    S3DestinationConfig.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationBucket, name: "bucket"))
    S3DestinationConfig.add_member(:key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationKeyPrefix, name: "keyPrefix"))
    S3DestinationConfig.type = Types::S3DestinationConfig
    SavingsEstimationMode.add_member(:after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_DISCOUNTS", traits: {"smithy.api#enumValue" => "AfterDiscounts"}))
    SavingsEstimationMode.add_member(:before_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE_DISCOUNTS", traits: {"smithy.api#enumValue" => "BeforeDiscounts"}))
    SavingsOpportunity.add_member(:savings_opportunity_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunityPercentage, name: "savingsOpportunityPercentage", traits: {"smithy.api#default" => 0}))
    SavingsOpportunity.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedMonthlySavings, name: "estimatedMonthlySavings"))
    SavingsOpportunity.type = Types::SavingsOpportunity
    Scope.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeName, name: "name"))
    Scope.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeValue, name: "value"))
    Scope.type = Types::Scope
    ScopeName.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION", traits: {"smithy.api#enumValue" => "Organization"}))
    ScopeName.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT_ID", traits: {"smithy.api#enumValue" => "AccountId"}))
    ScopeName.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_ARN", traits: {"smithy.api#enumValue" => "ResourceArn"}))
    ServiceArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceArn, name: "member")
    ServiceConfiguration.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableMemory, name: "memory"))
    ServiceConfiguration.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableCpu, name: "cpu"))
    ServiceConfiguration.add_member(:container_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerConfigurations, name: "containerConfigurations"))
    ServiceConfiguration.add_member(:auto_scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingConfiguration, name: "autoScalingConfiguration"))
    ServiceConfiguration.add_member(:task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionArn, name: "taskDefinitionArn"))
    ServiceConfiguration.type = Types::ServiceConfiguration
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    Status.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    Status.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "Inactive"}))
    Status.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    Status.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    Summaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Summary, name: "member")
    Summary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Finding, name: "name"))
    Summary.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryValue, name: "value", traits: {"smithy.api#default" => 0}))
    Summary.add_member(:reason_code_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonCodeSummaries, name: "reasonCodeSummaries"))
    Summary.type = Types::Summary
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    Tag.type = Types::Tag
    Tags.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    Timestamps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "member")
    UpdateEnrollmentStatusRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateEnrollmentStatusRequest.add_member(:include_member_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeMemberAccounts, name: "includeMemberAccounts", traits: {"smithy.api#default" => false}))
    UpdateEnrollmentStatusRequest.type = Types::UpdateEnrollmentStatusRequest
    UpdateEnrollmentStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    UpdateEnrollmentStatusResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "statusReason"))
    UpdateEnrollmentStatusResponse.type = Types::UpdateEnrollmentStatusResponse
    UtilizationMetric.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "name"))
    UtilizationMetric.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatistic, name: "statistic"))
    UtilizationMetric.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricValue, name: "value", traits: {"smithy.api#default" => 0}))
    UtilizationMetric.type = Types::UtilizationMetric
    UtilizationMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UtilizationMetric, name: "member")
    UtilizationPreference.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomizableMetricName, name: "metricName"))
    UtilizationPreference.add_member(:metric_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomizableMetricParameters, name: "metricParameters"))
    UtilizationPreference.type = Types::UtilizationPreference
    UtilizationPreferences.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UtilizationPreference, name: "member")
    VolumeArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeArn, name: "member")
    VolumeConfiguration.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeType, name: "volumeType"))
    VolumeConfiguration.add_member(:volume_size, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeSize, name: "volumeSize", traits: {"smithy.api#default" => 0}))
    VolumeConfiguration.add_member(:volume_baseline_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeBaselineIOPS, name: "volumeBaselineIOPS", traits: {"smithy.api#default" => 0}))
    VolumeConfiguration.add_member(:volume_burst_iops, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeBurstIOPS, name: "volumeBurstIOPS", traits: {"smithy.api#default" => 0}))
    VolumeConfiguration.add_member(:volume_baseline_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeBaselineThroughput, name: "volumeBaselineThroughput", traits: {"smithy.api#default" => 0}))
    VolumeConfiguration.add_member(:volume_burst_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeBurstThroughput, name: "volumeBurstThroughput", traits: {"smithy.api#default" => 0}))
    VolumeConfiguration.add_member(:root_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: RootVolume, name: "rootVolume"))
    VolumeConfiguration.type = Types::VolumeConfiguration
    VolumeRecommendation.add_member(:volume_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeArn, name: "volumeArn"))
    VolumeRecommendation.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    VolumeRecommendation.add_member(:current_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeConfiguration, name: "currentConfiguration"))
    VolumeRecommendation.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSFinding, name: "finding"))
    VolumeRecommendation.add_member(:utilization_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSUtilizationMetrics, name: "utilizationMetrics"))
    VolumeRecommendation.add_member(:look_back_period_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: LookBackPeriodInDays, name: "lookBackPeriodInDays", traits: {"smithy.api#default" => 0}))
    VolumeRecommendation.add_member(:volume_recommendation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeRecommendationOptions, name: "volumeRecommendationOptions"))
    VolumeRecommendation.add_member(:last_refresh_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: LastRefreshTimestamp, name: "lastRefreshTimestamp"))
    VolumeRecommendation.add_member(:current_performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrentPerformanceRisk, name: "currentPerformanceRisk"))
    VolumeRecommendation.add_member(:effective_recommendation_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSEffectiveRecommendationPreferences, name: "effectiveRecommendationPreferences"))
    VolumeRecommendation.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    VolumeRecommendation.type = Types::VolumeRecommendation
    VolumeRecommendationOption.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeConfiguration, name: "configuration"))
    VolumeRecommendationOption.add_member(:performance_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceRisk, name: "performanceRisk", traits: {"smithy.api#default" => 0}))
    VolumeRecommendationOption.add_member(:rank, ::Smithy::Schema::Shapes::MemberShape.new(target: Rank, name: "rank", traits: {"smithy.api#default" => 0}))
    VolumeRecommendationOption.add_member(:savings_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: SavingsOpportunity, name: "savingsOpportunity"))
    VolumeRecommendationOption.add_member(:savings_opportunity_after_discounts, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSSavingsOpportunityAfterDiscounts, name: "savingsOpportunityAfterDiscounts"))
    VolumeRecommendationOption.type = Types::VolumeRecommendationOption
    VolumeRecommendationOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeRecommendationOption, name: "member")
    VolumeRecommendations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeRecommendation, name: "member")

    ComputeOptimizerService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.computeoptimizer#ComputeOptimizerService"
      service.name = "ComputeOptimizerService"
      service.version = "2019-11-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Compute Optimizer", "arnNamespace" => "compute-optimizer", "cloudFormationName" => "ComputeOptimizer", "cloudTrailEventSource" => "computeoptimizer.amazonaws.com", "endpointPrefix" => "compute-optimizer"}, "aws.auth#sigv4" => {"name" => "compute-optimizer"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Compute Optimizer"}
      service.add_operation(:delete_recommendation_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#DeleteRecommendationPreferences"
        operation.name = "DeleteRecommendationPreferences"
        operation.input = DeleteRecommendationPreferencesRequest
        operation.output = DeleteRecommendationPreferencesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:describe_recommendation_export_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#DescribeRecommendationExportJobs"
        operation.name = "DescribeRecommendationExportJobs"
        operation.input = DescribeRecommendationExportJobsRequest
        operation.output = DescribeRecommendationExportJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRecommendationExportJobs.new
      end)
      service.add_operation(:export_auto_scaling_group_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#ExportAutoScalingGroupRecommendations"
        operation.name = "ExportAutoScalingGroupRecommendations"
        operation.input = ExportAutoScalingGroupRecommendationsRequest
        operation.output = ExportAutoScalingGroupRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:export_ebs_volume_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#ExportEBSVolumeRecommendations"
        operation.name = "ExportEBSVolumeRecommendations"
        operation.input = ExportEBSVolumeRecommendationsRequest
        operation.output = ExportEBSVolumeRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:export_ec2_instance_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#ExportEC2InstanceRecommendations"
        operation.name = "ExportEC2InstanceRecommendations"
        operation.input = ExportEC2InstanceRecommendationsRequest
        operation.output = ExportEC2InstanceRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:export_ecs_service_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#ExportECSServiceRecommendations"
        operation.name = "ExportECSServiceRecommendations"
        operation.input = ExportECSServiceRecommendationsRequest
        operation.output = ExportECSServiceRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:export_idle_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#ExportIdleRecommendations"
        operation.name = "ExportIdleRecommendations"
        operation.input = ExportIdleRecommendationsRequest
        operation.output = ExportIdleRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:export_lambda_function_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#ExportLambdaFunctionRecommendations"
        operation.name = "ExportLambdaFunctionRecommendations"
        operation.input = ExportLambdaFunctionRecommendationsRequest
        operation.output = ExportLambdaFunctionRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:export_license_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#ExportLicenseRecommendations"
        operation.name = "ExportLicenseRecommendations"
        operation.input = ExportLicenseRecommendationsRequest
        operation.output = ExportLicenseRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:export_rds_database_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#ExportRDSDatabaseRecommendations"
        operation.name = "ExportRDSDatabaseRecommendations"
        operation.input = ExportRDSDatabaseRecommendationsRequest
        operation.output = ExportRDSDatabaseRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_auto_scaling_group_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetAutoScalingGroupRecommendations"
        operation.name = "GetAutoScalingGroupRecommendations"
        operation.input = GetAutoScalingGroupRecommendationsRequest
        operation.output = GetAutoScalingGroupRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_ebs_volume_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetEBSVolumeRecommendations"
        operation.name = "GetEBSVolumeRecommendations"
        operation.input = GetEBSVolumeRecommendationsRequest
        operation.output = GetEBSVolumeRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_ec2_instance_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetEC2InstanceRecommendations"
        operation.name = "GetEC2InstanceRecommendations"
        operation.input = GetEC2InstanceRecommendationsRequest
        operation.output = GetEC2InstanceRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_ec2_recommendation_projected_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetEC2RecommendationProjectedMetrics"
        operation.name = "GetEC2RecommendationProjectedMetrics"
        operation.input = GetEC2RecommendationProjectedMetricsRequest
        operation.output = GetEC2RecommendationProjectedMetricsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_ecs_service_recommendation_projected_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetECSServiceRecommendationProjectedMetrics"
        operation.name = "GetECSServiceRecommendationProjectedMetrics"
        operation.input = GetECSServiceRecommendationProjectedMetricsRequest
        operation.output = GetECSServiceRecommendationProjectedMetricsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_ecs_service_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetECSServiceRecommendations"
        operation.name = "GetECSServiceRecommendations"
        operation.input = GetECSServiceRecommendationsRequest
        operation.output = GetECSServiceRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_effective_recommendation_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetEffectiveRecommendationPreferences"
        operation.name = "GetEffectiveRecommendationPreferences"
        operation.input = GetEffectiveRecommendationPreferencesRequest
        operation.output = GetEffectiveRecommendationPreferencesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_enrollment_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetEnrollmentStatus"
        operation.name = "GetEnrollmentStatus"
        operation.input = GetEnrollmentStatusRequest
        operation.output = GetEnrollmentStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_enrollment_statuses_for_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetEnrollmentStatusesForOrganization"
        operation.name = "GetEnrollmentStatusesForOrganization"
        operation.input = GetEnrollmentStatusesForOrganizationRequest
        operation.output = GetEnrollmentStatusesForOrganizationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::GetEnrollmentStatusesForOrganization.new
      end)
      service.add_operation(:get_idle_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetIdleRecommendations"
        operation.name = "GetIdleRecommendations"
        operation.input = GetIdleRecommendationsRequest
        operation.output = GetIdleRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_lambda_function_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetLambdaFunctionRecommendations"
        operation.name = "GetLambdaFunctionRecommendations"
        operation.input = GetLambdaFunctionRecommendationsRequest
        operation.output = GetLambdaFunctionRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::GetLambdaFunctionRecommendations.new
      end)
      service.add_operation(:get_license_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetLicenseRecommendations"
        operation.name = "GetLicenseRecommendations"
        operation.input = GetLicenseRecommendationsRequest
        operation.output = GetLicenseRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_rds_database_recommendation_projected_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetRDSDatabaseRecommendationProjectedMetrics"
        operation.name = "GetRDSDatabaseRecommendationProjectedMetrics"
        operation.input = GetRDSDatabaseRecommendationProjectedMetricsRequest
        operation.output = GetRDSDatabaseRecommendationProjectedMetricsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_rds_database_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetRDSDatabaseRecommendations"
        operation.name = "GetRDSDatabaseRecommendations"
        operation.input = GetRDSDatabaseRecommendationsRequest
        operation.output = GetRDSDatabaseRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_recommendation_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetRecommendationPreferences"
        operation.name = "GetRecommendationPreferences"
        operation.input = GetRecommendationPreferencesRequest
        operation.output = GetRecommendationPreferencesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::GetRecommendationPreferences.new
      end)
      service.add_operation(:get_recommendation_summaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#GetRecommendationSummaries"
        operation.name = "GetRecommendationSummaries"
        operation.input = GetRecommendationSummariesRequest
        operation.output = GetRecommendationSummariesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::GetRecommendationSummaries.new
      end)
      service.add_operation(:put_recommendation_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#PutRecommendationPreferences"
        operation.name = "PutRecommendationPreferences"
        operation.input = PutRecommendationPreferencesRequest
        operation.output = PutRecommendationPreferencesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << OptInRequiredException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_enrollment_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.computeoptimizer#UpdateEnrollmentStatus"
        operation.name = "UpdateEnrollmentStatus"
        operation.input = UpdateEnrollmentStatusRequest
        operation.output = UpdateEnrollmentStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingAuthenticationToken
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
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
