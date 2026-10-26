# frozen_string_literal: true

# This is generated code!

module Aws::Resiliencehubv2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AccountTargeting = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#AccountTargeting", name: "AccountTargeting")
    Achievability = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#Achievability", name: "Achievability")
    AchievabilityStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#AchievabilityStatus", name: "AchievabilityStatus")
    ActorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#ActorType", name: "ActorType")
    AlarmState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#AlarmState", name: "AlarmState")
    AlarmStateChangeDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#AlarmStateChangeDetail", name: "AlarmStateChangeDetail")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 31}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:([a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]):[0-9]{12}:[A-Za-z0-9/][A-Za-z0-9:_/+.-]{0,1023}$"})
    ArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ArnList", name: "ArnList")
    Assertion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#Assertion", name: "Assertion", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    AssertionCreatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#AssertionCreatedMetadata", name: "AssertionCreatedMetadata")
    AssertionDeletedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#AssertionDeletedMetadata", name: "AssertionDeletedMetadata")
    AssertionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#AssertionList", name: "AssertionList")
    AssertionSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#AssertionSource", name: "AssertionSource")
    AssertionText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#AssertionText", name: "AssertionText", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    AssertionUpdatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#AssertionUpdatedMetadata", name: "AssertionUpdatedMetadata")
    AssessmentCost = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#AssessmentCost", name: "AssessmentCost")
    AssessmentErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#AssessmentErrorCode", name: "AssessmentErrorCode")
    AssessmentSortField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#AssessmentSortField", name: "AssessmentSortField")
    AssessmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#AssessmentStatus", name: "AssessmentStatus")
    AssessmentStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#AssessmentStatusList", name: "AssessmentStatusList", traits: {"smithy.api#length" => {"max" => 5}})
    AssessmentStep = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#AssessmentStep", name: "AssessmentStep")
    AssessmentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#AssessmentSummary", name: "AssessmentSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    AssessmentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#AssessmentSummaryList", name: "AssessmentSummaryList")
    AssociatedSystem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#AssociatedSystem", name: "AssociatedSystem", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}]})
    AssociatedSystemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#AssociatedSystemList", name: "AssociatedSystemList", traits: {"smithy.api#length" => {"max" => 20}})
    AvailabilitySlo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#AvailabilitySlo", name: "AvailabilitySlo")
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    AwsRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#AwsRegion", name: "AwsRegion", traits: {"smithy.api#length" => {"min" => 6}, "smithy.api#pattern" => "^[a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[A-Za-z0-9_.-]{0,63}$"})
    CloudWatchAlarmArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#CloudWatchAlarmArn", name: "CloudWatchAlarmArn", traits: {"smithy.api#length" => {"min" => 31, "max" => 1024}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:cloudwatch:[a-z]{2}(-[a-z]+)+-\\d{1}:\\d{12}:alarm:.+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CostCurrency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#CostCurrency", name: "CostCurrency")
    CreateAssertionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateAssertionRequest", name: "CreateAssertionRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    CreateAssertionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateAssertionResponse", name: "CreateAssertionResponse")
    CreateInputSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateInputSourceRequest", name: "CreateInputSourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    CreateInputSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateInputSourceResponse", name: "CreateInputSourceResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    CreatePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreatePolicyRequest", name: "CreatePolicyRequest")
    CreatePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreatePolicyResponse", name: "CreatePolicyResponse")
    CreateReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateReportRequest", name: "CreateReportRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    CreateReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateReportResponse", name: "CreateReportResponse")
    CreateServiceFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateServiceFunctionRequest", name: "CreateServiceFunctionRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    CreateServiceFunctionResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateServiceFunctionResourcesRequest", name: "CreateServiceFunctionResourcesRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    CreateServiceFunctionResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateServiceFunctionResourcesResponse", name: "CreateServiceFunctionResourcesResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    CreateServiceFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateServiceFunctionResponse", name: "CreateServiceFunctionResponse")
    CreateServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateServiceRequest", name: "CreateServiceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    CreateServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateServiceResponse", name: "CreateServiceResponse")
    CreateSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateSystemRequest", name: "CreateSystemRequest")
    CreateSystemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateSystemResponse", name: "CreateSystemResponse")
    CreateTestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateTestRequest", name: "CreateTestRequest")
    CreateTestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateTestResponse", name: "CreateTestResponse")
    CreateUserJourneyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateUserJourneyRequest", name: "CreateUserJourneyRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}, {"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    CreateUserJourneyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CreateUserJourneyResponse", name: "CreateUserJourneyResponse")
    CrossAccountRole = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#CrossAccountRole", name: "CrossAccountRole")
    CrossAccountRoleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#CrossAccountRoleList", name: "CrossAccountRoleList", traits: {"smithy.api#length" => {"max" => 5}})
    DataRecoveryTargets = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DataRecoveryTargets", name: "DataRecoveryTargets")
    DeleteAssertionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteAssertionRequest", name: "DeleteAssertionRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    DeleteAssertionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteAssertionResponse", name: "DeleteAssertionResponse")
    DeleteInputSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteInputSourceRequest", name: "DeleteInputSourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    DeleteInputSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteInputSourceResponse", name: "DeleteInputSourceResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    DeletePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeletePolicyRequest", name: "DeletePolicyRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    DeletePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeletePolicyResponse", name: "DeletePolicyResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    DeleteServiceFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteServiceFunctionRequest", name: "DeleteServiceFunctionRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    DeleteServiceFunctionResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteServiceFunctionResourcesRequest", name: "DeleteServiceFunctionResourcesRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    DeleteServiceFunctionResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteServiceFunctionResourcesResponse", name: "DeleteServiceFunctionResourcesResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    DeleteServiceFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteServiceFunctionResponse", name: "DeleteServiceFunctionResponse")
    DeleteServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteServiceRequest", name: "DeleteServiceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    DeleteServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteServiceResponse", name: "DeleteServiceResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    DeleteSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteSystemRequest", name: "DeleteSystemRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}]})
    DeleteSystemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteSystemResponse", name: "DeleteSystemResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}]})
    DeleteTestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteTestRequest", name: "DeleteTestRequest")
    DeleteTestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteTestResponse", name: "DeleteTestResponse")
    DeleteTestSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteTestSourcesRequest", name: "DeleteTestSourcesRequest")
    DeleteTestSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteTestSourcesResponse", name: "DeleteTestSourcesResponse")
    DeleteUserJourneyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteUserJourneyRequest", name: "DeleteUserJourneyRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}]})
    DeleteUserJourneyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DeleteUserJourneyResponse", name: "DeleteUserJourneyResponse")
    DependencyCriticality = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#DependencyCriticality", name: "DependencyCriticality")
    DependencyDiscoveryConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DependencyDiscoveryConfig", name: "DependencyDiscoveryConfig")
    DependencyDiscoveryInput = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#DependencyDiscoveryInput", name: "DependencyDiscoveryInput")
    DependencyDiscoveryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#DependencyDiscoveryStatus", name: "DependencyDiscoveryStatus")
    DependencyInsight = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DependencyInsight", name: "DependencyInsight")
    DependencyInsightsErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#DependencyInsightsErrorCode", name: "DependencyInsightsErrorCode")
    DependencyInsightsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#DependencyInsightsList", name: "DependencyInsightsList", traits: {"smithy.api#length" => {"max" => 5}})
    DependencyInsightsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#DependencyInsightsStatus", name: "DependencyInsightsStatus")
    DependencySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DependencySummary", name: "DependencySummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    DependencySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#DependencySummaryList", name: "DependencySummaryList")
    DevOpsAgentConfidence = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#DevOpsAgentConfidence", name: "DevOpsAgentConfidence")
    DevOpsAgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DevOpsAgentConfiguration", name: "DevOpsAgentConfiguration")
    DevOpsAgentConfigurationView = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DevOpsAgentConfigurationView", name: "DevOpsAgentConfigurationView")
    DevOpsAgentConnectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#DevOpsAgentConnectionStatus", name: "DevOpsAgentConnectionStatus")
    DevOpsAgentInvestigation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DevOpsAgentInvestigation", name: "DevOpsAgentInvestigation")
    DevOpsAgentInvestigationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#DevOpsAgentInvestigationStatus", name: "DevOpsAgentInvestigationStatus")
    DevOpsAgentRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#DevOpsAgentRegion", name: "DevOpsAgentRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    DevOpsAgentSpaceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#DevOpsAgentSpaceArn", name: "DevOpsAgentSpaceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:aidevops:[a-z0-9-]+:[0-9]{12}:agentspace/[a-zA-Z0-9-]{1,64}$"})
    DevOpsAgentSpaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#DevOpsAgentSpaceId", name: "DevOpsAgentSpaceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]{1,64}$"})
    DevOpsAgentVerdict = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#DevOpsAgentVerdict", name: "DevOpsAgentVerdict")
    DisasterRecoverySource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#DisasterRecoverySource", name: "DisasterRecoverySource")
    EdgePropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#EdgePropertyList", name: "EdgePropertyList", traits: {"smithy.api#length" => {"max" => 3}})
    EdgePropertySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#EdgePropertySummary", name: "EdgePropertySummary")
    EffectivePolicyValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#EffectivePolicyValues", name: "EffectivePolicyValues")
    EksLabelKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#EksLabelKey", name: "EksLabelKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 317}, "smithy.api#pattern" => "^([a-z0-9]([-a-z0-9.]*[a-z0-9])?/)?[A-Za-z0-9]([-A-Za-z0-9_.]*[A-Za-z0-9])?$"})
    EksLabelMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resiliencehubv2#EksLabelMap", name: "EksLabelMap", traits: {"smithy.api#length" => {"max" => 20}, "smithy.api#sensitive" => {}})
    EksLabelSelector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#EksLabelSelector", name: "EksLabelSelector")
    EksLabelSelectorOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#EksLabelSelectorOperator", name: "EksLabelSelectorOperator")
    EksLabelSelectorRequirement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#EksLabelSelectorRequirement", name: "EksLabelSelectorRequirement")
    EksLabelSelectorRequirementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#EksLabelSelectorRequirementList", name: "EksLabelSelectorRequirementList", traits: {"smithy.api#length" => {"max" => 20}, "smithy.api#sensitive" => {}})
    EksLabelValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#EksLabelValue", name: "EksLabelValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^([A-Za-z0-9]([-A-Za-z0-9_.]*[A-Za-z0-9])?)?$"})
    EksLabelValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#EksLabelValueList", name: "EksLabelValueList", traits: {"smithy.api#length" => {"max" => 20}})
    EksNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#EksNamespace", name: "EksNamespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"})
    EksNamespaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#EksNamespaceList", name: "EksNamespaceList")
    EksSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#EksSource", name: "EksSource")
    EntityDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#EntityDescription", name: "EntityDescription", traits: {"smithy.api#length" => {"max" => 500}})
    EntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#EntityId", name: "EntityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\S{1,255}$"})
    EntityLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#EntityLabel", name: "EntityLabel", traits: {"smithy.api#length" => {"min" => 2, "max" => 60}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9 _\\-]{1,59}$"})
    EntityName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#EntityName", name: "EntityName", traits: {"smithy.api#length" => {"min" => 2, "max" => 60}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9_\\-]{1,59}$"})
    EventActor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#EventActor", name: "EventActor")
    ExperimentArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ExperimentArnList", name: "ExperimentArnList")
    ExperimentDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ExperimentDetails", name: "ExperimentDetails")
    ExperimentDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ExperimentDetailsList", name: "ExperimentDetailsList")
    FailedReportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#FailedReportOutput", name: "FailedReportOutput")
    FailureCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#FailureCategory", name: "FailureCategory")
    Finding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#Finding", name: "Finding")
    FindingSeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#FindingSeverity", name: "FindingSeverity")
    FindingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#FindingStatus", name: "FindingStatus")
    FindingSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#FindingSummary", name: "FindingSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    FindingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#FindingsList", name: "FindingsList")
    FunctionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#FunctionsList", name: "FunctionsList", traits: {"smithy.api#length" => {"max" => 20}})
    GetDependencyInsightsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetDependencyInsightsRequest", name: "GetDependencyInsightsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    GetDependencyInsightsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetDependencyInsightsResponse", name: "GetDependencyInsightsResponse")
    GetFailureModeFindingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetFailureModeFindingRequest", name: "GetFailureModeFindingRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    GetFailureModeFindingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetFailureModeFindingResponse", name: "GetFailureModeFindingResponse")
    GetPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetPolicyRequest", name: "GetPolicyRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    GetPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetPolicyResponse", name: "GetPolicyResponse")
    GetServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetServiceRequest", name: "GetServiceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    GetServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetServiceResponse", name: "GetServiceResponse")
    GetSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetSystemRequest", name: "GetSystemRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}]})
    GetSystemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetSystemResponse", name: "GetSystemResponse")
    GetTestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetTestRequest", name: "GetTestRequest")
    GetTestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetTestResponse", name: "GetTestResponse")
    GetTestRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetTestRunRequest", name: "GetTestRunRequest")
    GetTestRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetTestRunResponse", name: "GetTestRunResponse")
    GetTestTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetTestTemplateRequest", name: "GetTestTemplateRequest")
    GetTestTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetTestTemplateResponse", name: "GetTestTemplateResponse")
    GetUserJourneyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetUserJourneyRequest", name: "GetUserJourneyRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}]})
    GetUserJourneyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#GetUserJourneyResponse", name: "GetUserJourneyResponse")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 32}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):iam::[0-9]{12}:role/(([^/][!-~]+/){1,511})?[A-Za-z0-9_+=,.@-]{1,64}$"})
    IamRoleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#IamRoleName", name: "IamRoleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 576}, "smithy.api#pattern" => "^([A-Za-z0-9_+=,.@\\-]+/)*[A-Za-z0-9_+=,.@\\-]+$"})
    ImportAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ImportAppRequest", name: "ImportAppRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    ImportAppResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ImportAppResponse", name: "ImportAppResponse")
    ImportPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ImportPolicyRequest", name: "ImportPolicyRequest")
    ImportPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ImportPolicyResponse", name: "ImportPolicyResponse")
    InfrastructureAndCodeRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#InfrastructureAndCodeRecommendation", name: "InfrastructureAndCodeRecommendation")
    InfrastructureAndCodeRecommendationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#InfrastructureAndCodeRecommendationsList", name: "InfrastructureAndCodeRecommendationsList", traits: {"smithy.api#length" => {"max" => 5}})
    InputSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#InputSource", name: "InputSource")
    InputSourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#InputSourceId", name: "InputSourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\S{1,255}$"})
    InputSourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#InputSourceSummary", name: "InputSourceSummary")
    InputSourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#InputSourceSummaryList", name: "InputSourceSummaryList")
    InputSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#InputSourceType", name: "InputSourceType")
    InsightsCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#InsightsCategory", name: "InsightsCategory")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ListAssertionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListAssertionsRequest", name: "ListAssertionsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    ListAssertionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListAssertionsResponse", name: "ListAssertionsResponse")
    ListDependenciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListDependenciesRequest", name: "ListDependenciesRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    ListDependenciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListDependenciesResponse", name: "ListDependenciesResponse")
    ListFailureModeAssessmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListFailureModeAssessmentsRequest", name: "ListFailureModeAssessmentsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    ListFailureModeAssessmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListFailureModeAssessmentsResponse", name: "ListFailureModeAssessmentsResponse")
    ListFailureModeFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListFailureModeFindingsRequest", name: "ListFailureModeFindingsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    ListFailureModeFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListFailureModeFindingsResponse", name: "ListFailureModeFindingsResponse")
    ListInputSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListInputSourcesRequest", name: "ListInputSourcesRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    ListInputSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListInputSourcesResponse", name: "ListInputSourcesResponse")
    ListPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListPoliciesRequest", name: "ListPoliciesRequest")
    ListPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListPoliciesResponse", name: "ListPoliciesResponse")
    ListPolicyEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListPolicyEventsRequest", name: "ListPolicyEventsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    ListPolicyEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListPolicyEventsResponse", name: "ListPolicyEventsResponse")
    ListReportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListReportsRequest", name: "ListReportsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    ListReportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListReportsResponse", name: "ListReportsResponse")
    ListResolvedTestRunTargetResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListResolvedTestRunTargetResourcesRequest", name: "ListResolvedTestRunTargetResourcesRequest")
    ListResolvedTestRunTargetResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListResolvedTestRunTargetResourcesResponse", name: "ListResolvedTestRunTargetResourcesResponse")
    ListResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListResourcesRequest", name: "ListResourcesRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    ListResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListResourcesResponse", name: "ListResourcesResponse")
    ListServiceEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListServiceEventsRequest", name: "ListServiceEventsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    ListServiceEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListServiceEventsResponse", name: "ListServiceEventsResponse")
    ListServiceFunctionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListServiceFunctionsRequest", name: "ListServiceFunctionsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    ListServiceFunctionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListServiceFunctionsResponse", name: "ListServiceFunctionsResponse")
    ListServiceTopologyEdgesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListServiceTopologyEdgesRequest", name: "ListServiceTopologyEdgesRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    ListServiceTopologyEdgesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListServiceTopologyEdgesResponse", name: "ListServiceTopologyEdgesResponse")
    ListServicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListServicesRequest", name: "ListServicesRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}, {"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    ListServicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListServicesResponse", name: "ListServicesResponse")
    ListSystemEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListSystemEventsRequest", name: "ListSystemEventsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}]})
    ListSystemEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListSystemEventsResponse", name: "ListSystemEventsResponse")
    ListSystemsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListSystemsRequest", name: "ListSystemsRequest")
    ListSystemsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListSystemsResponse", name: "ListSystemsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTestRunDependenciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestRunDependenciesRequest", name: "ListTestRunDependenciesRequest")
    ListTestRunDependenciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestRunDependenciesResponse", name: "ListTestRunDependenciesResponse")
    ListTestRunEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestRunEventsRequest", name: "ListTestRunEventsRequest")
    ListTestRunEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestRunEventsResponse", name: "ListTestRunEventsResponse")
    ListTestRunSourceEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestRunSourceEventsRequest", name: "ListTestRunSourceEventsRequest")
    ListTestRunSourceEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestRunSourceEventsResponse", name: "ListTestRunSourceEventsResponse")
    ListTestRunSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestRunSourcesRequest", name: "ListTestRunSourcesRequest")
    ListTestRunSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestRunSourcesResponse", name: "ListTestRunSourcesResponse")
    ListTestRunsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestRunsRequest", name: "ListTestRunsRequest")
    ListTestRunsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestRunsResponse", name: "ListTestRunsResponse")
    ListTestSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestSourcesRequest", name: "ListTestSourcesRequest")
    ListTestSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestSourcesResponse", name: "ListTestSourcesResponse")
    ListTestTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestTemplatesRequest", name: "ListTestTemplatesRequest")
    ListTestTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestTemplatesResponse", name: "ListTestTemplatesResponse")
    ListTestsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestsRequest", name: "ListTestsRequest")
    ListTestsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListTestsResponse", name: "ListTestsResponse")
    ListUserJourneysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListUserJourneysRequest", name: "ListUserJourneysRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}]})
    ListUserJourneysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ListUserJourneysResponse", name: "ListUserJourneysResponse")
    LoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#LoggingConfiguration", name: "LoggingConfiguration")
    LongDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#LongDescription", name: "LongDescription", traits: {"smithy.api#length" => {"max" => 615}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.resiliencehubv2#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 100}})
    MultiAzDisasterRecoveryApproach = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#MultiAzDisasterRecoveryApproach", name: "MultiAzDisasterRecoveryApproach")
    MultiAzTargets = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#MultiAzTargets", name: "MultiAzTargets")
    MultiRegionDisasterRecoveryApproach = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#MultiRegionDisasterRecoveryApproach", name: "MultiRegionDisasterRecoveryApproach")
    MultiRegionTargets = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#MultiRegionTargets", name: "MultiRegionTargets")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^\\S{1,2000}$"})
    ObservabilityAlarmInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ObservabilityAlarmInput", name: "ObservabilityAlarmInput")
    ObservabilityAlarmSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ObservabilityAlarmSummary", name: "ObservabilityAlarmSummary")
    ObservabilityRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ObservabilityRecommendation", name: "ObservabilityRecommendation")
    ObservabilityRecommendationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ObservabilityRecommendationsList", name: "ObservabilityRecommendationsList", traits: {"smithy.api#length" => {"max" => 5}})
    OrganizationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#OrganizationId", name: "OrganizationId", traits: {"smithy.api#length" => {"min" => 12, "max" => 34}, "smithy.api#pattern" => "^o-[a-z0-9]{10,32}$"})
    OuId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#OuId", name: "OuId", traits: {"smithy.api#length" => {"min" => 16, "max" => 68}, "smithy.api#pattern" => "^ou-[a-z0-9]{4,32}-[a-z0-9]{8,32}$"})
    ParameterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#ParameterKey", name: "ParameterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w.-]+$"})
    ParameterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#ParameterType", name: "ParameterType")
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#ParameterValue", name: "ParameterValue", traits: {"smithy.api#length" => {"max" => 1024}})
    PermissionModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#PermissionModel", name: "PermissionModel")
    Policy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#Policy", name: "Policy", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    PolicyAttachedToServiceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#PolicyAttachedToServiceMetadata", name: "PolicyAttachedToServiceMetadata", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    PolicyComponent = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#PolicyComponent", name: "PolicyComponent")
    PolicyDeletedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#PolicyDeletedMetadata", name: "PolicyDeletedMetadata")
    PolicyDetachedFromServiceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#PolicyDetachedFromServiceMetadata", name: "PolicyDetachedFromServiceMetadata", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    PolicyDisassociationReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#PolicyDisassociationReason", name: "PolicyDisassociationReason")
    PolicyEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#PolicyEvent", name: "PolicyEvent", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    PolicyEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#PolicyEventDetails", name: "PolicyEventDetails")
    PolicyEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#PolicyEventList", name: "PolicyEventList")
    PolicyEventMetadata = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.resiliencehubv2#PolicyEventMetadata", name: "PolicyEventMetadata")
    PolicyEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#PolicyEventType", name: "PolicyEventType")
    PolicyEventTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#PolicyEventTypeList", name: "PolicyEventTypeList", traits: {"smithy.api#length" => {"max" => 4}})
    PolicySharingRevokedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#PolicySharingRevokedMetadata", name: "PolicySharingRevokedMetadata")
    PolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#PolicySummary", name: "PolicySummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    PolicySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#PolicySummaryList", name: "PolicySummaryList")
    PolicyValueSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#PolicyValueSource", name: "PolicyValueSource")
    PutTestSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#PutTestSourcesRequest", name: "PutTestSourcesRequest")
    PutTestSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#PutTestSourcesResponse", name: "PutTestSourcesResponse")
    QueryDataPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#QueryDataPoint", name: "QueryDataPoint")
    QueryDataPointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#QueryDataPointList", name: "QueryDataPointList", traits: {"smithy.api#length" => {"min" => 7, "max" => 24}})
    QueryGranularity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#QueryGranularity", name: "QueryGranularity")
    QueryRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#QueryRange", name: "QueryRange")
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#RegionList", name: "RegionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    RegionSwitchExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#RegionSwitchExecutionId", name: "RegionSwitchExecutionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z]{2}(-[a-z]+)+-[0-9]+/[0-9a-fA-F]{16}$"})
    ReportGenerationErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#ReportGenerationErrorCode", name: "ReportGenerationErrorCode")
    ReportGenerationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ReportGenerationResult", name: "ReportGenerationResult", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    ReportGenerationResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ReportGenerationResultList", name: "ReportGenerationResultList")
    ReportGenerationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#ReportGenerationStatus", name: "ReportGenerationStatus")
    ReportOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.resiliencehubv2#ReportOutput", name: "ReportOutput")
    ReportOutputConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.resiliencehubv2#ReportOutputConfiguration", name: "ReportOutputConfiguration")
    ReportOutputConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ReportOutputConfigurationList", name: "ReportOutputConfigurationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ReportType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#ReportType", name: "ReportType")
    ResolvedTargetInformation = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resiliencehubv2#ResolvedTargetInformation", name: "ResolvedTargetInformation", traits: {"smithy.api#length" => {"max" => 50}})
    ResolvedTargetInformationKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#ResolvedTargetInformationKey", name: "ResolvedTargetInformationKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ResolvedTargetInformationValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#ResolvedTargetInformationValue", name: "ResolvedTargetInformationValue", traits: {"smithy.api#length" => {"max" => 2048}})
    ResolvedTargetResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ResolvedTargetResource", name: "ResolvedTargetResource")
    ResolvedTargetResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ResolvedTargetResourceList", name: "ResolvedTargetResourceList", traits: {"smithy.api#length" => {"max" => 100}})
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#Resource", name: "Resource")
    ResourceConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.resiliencehubv2#ResourceConfiguration", name: "ResourceConfiguration")
    ResourceDiscoveryErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#ResourceDiscoveryErrorCode", name: "ResourceDiscoveryErrorCode")
    ResourceDiscoveryRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#ResourceDiscoveryRunStatus", name: "ResourceDiscoveryRunStatus")
    ResourceDiscoveryStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ResourceDiscoveryStatus", name: "ResourceDiscoveryStatus")
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ResourceList", name: "ResourceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ResourceTag", name: "ResourceTag")
    ResourceTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ResourceTagList", name: "ResourceTagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceTypeFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#ResourceTypeFilter", name: "ResourceTypeFilter", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ResourceTypeFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ResourceTypeFilterList", name: "ResourceTypeFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ResourceTypeList", name: "ResourceTypeList")
    S3BucketPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#S3BucketPath", name: "S3BucketPath", traits: {"smithy.api#length" => {"min" => 3, "max" => 512}, "smithy.api#pattern" => "^(s3://)?[a-z0-9][a-z0-9.-]{1,61}[a-z0-9](/.*)?$"})
    S3ReportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#S3ReportOutput", name: "S3ReportOutput")
    S3ReportOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#S3ReportOutputConfiguration", name: "S3ReportOutputConfiguration")
    S3Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#S3Url", name: "S3Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^((https://([^/]+)\\.s3[^/]*\\.[^/]+)|(s3://([^/]+)))/\\S{1,2000}$"})
    Service = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#Service", name: "Service", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}, {"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    ServiceAchievabilityUpdatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceAchievabilityUpdatedMetadata", name: "ServiceAchievabilityUpdatedMetadata")
    ServiceCreatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceCreatedMetadata", name: "ServiceCreatedMetadata")
    ServiceDeletedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceDeletedMetadata", name: "ServiceDeletedMetadata")
    ServiceEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceEvent", name: "ServiceEvent", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    ServiceEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceEventDetails", name: "ServiceEventDetails")
    ServiceEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ServiceEventList", name: "ServiceEventList")
    ServiceEventMetadata = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.resiliencehubv2#ServiceEventMetadata", name: "ServiceEventMetadata")
    ServiceEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#ServiceEventType", name: "ServiceEventType")
    ServiceEventTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ServiceEventTypeList", name: "ServiceEventTypeList")
    ServiceFunction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceFunction", name: "ServiceFunction", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    ServiceFunctionCreatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceFunctionCreatedMetadata", name: "ServiceFunctionCreatedMetadata")
    ServiceFunctionCriticality = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#ServiceFunctionCriticality", name: "ServiceFunctionCriticality")
    ServiceFunctionDeletedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceFunctionDeletedMetadata", name: "ServiceFunctionDeletedMetadata")
    ServiceFunctionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ServiceFunctionList", name: "ServiceFunctionList")
    ServiceFunctionResourcesAddedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceFunctionResourcesAddedMetadata", name: "ServiceFunctionResourcesAddedMetadata")
    ServiceFunctionResourcesRemovedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceFunctionResourcesRemovedMetadata", name: "ServiceFunctionResourcesRemovedMetadata")
    ServiceFunctionSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#ServiceFunctionSource", name: "ServiceFunctionSource")
    ServiceFunctionUpdatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceFunctionUpdatedMetadata", name: "ServiceFunctionUpdatedMetadata")
    ServiceInputSourcesUpdatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceInputSourcesUpdatedMetadata", name: "ServiceInputSourcesUpdatedMetadata")
    ServiceOwnedArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#ServiceOwnedArn", name: "ServiceOwnedArn", traits: {"smithy.api#length" => {"min" => 31}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:([a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]):([0-9]{12}|aws):[A-Za-z0-9/][A-Za-z0-9:_/+.-]{0,1023}$"})
    ServicePolicyAssociatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServicePolicyAssociatedMetadata", name: "ServicePolicyAssociatedMetadata", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    ServicePolicyDisassociatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServicePolicyDisassociatedMetadata", name: "ServicePolicyDisassociatedMetadata", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceReference", name: "ServiceReference")
    ServiceReferenceChanges = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceReferenceChanges", name: "ServiceReferenceChanges")
    ServiceReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ServiceReferenceList", name: "ServiceReferenceList")
    ServiceReportConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceReportConfiguration", name: "ServiceReportConfiguration")
    ServiceResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceResource", name: "ServiceResource")
    ServiceResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ServiceResourceList", name: "ServiceResourceList")
    ServiceResourcesAssociatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceResourcesAssociatedMetadata", name: "ServiceResourcesAssociatedMetadata")
    ServiceResourcesDisassociatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceResourcesDisassociatedMetadata", name: "ServiceResourcesDisassociatedMetadata")
    ServiceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceSummary", name: "ServiceSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}, {"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    ServiceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ServiceSummaryList", name: "ServiceSummaryList")
    ServiceSystemAssociatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceSystemAssociatedMetadata", name: "ServiceSystemAssociatedMetadata", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}]})
    ServiceSystemDisassociatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceSystemDisassociatedMetadata", name: "ServiceSystemDisassociatedMetadata", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}]})
    ServiceTopologyEdgeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceTopologyEdgeSummary", name: "ServiceTopologyEdgeSummary")
    ServiceTopologyEdgeSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ServiceTopologyEdgeSummaryList", name: "ServiceTopologyEdgeSummaryList")
    ServiceWorkflowUpdatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ServiceWorkflowUpdatedMetadata", name: "ServiceWorkflowUpdatedMetadata")
    SloSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#SloSource", name: "SloSource")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#SortOrder", name: "SortOrder")
    StartDependencyInsightsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#StartDependencyInsightsRequest", name: "StartDependencyInsightsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    StartDependencyInsightsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#StartDependencyInsightsResponse", name: "StartDependencyInsightsResponse")
    StartFailureModeAssessmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#StartFailureModeAssessmentRequest", name: "StartFailureModeAssessmentRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    StartFailureModeAssessmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#StartFailureModeAssessmentResponse", name: "StartFailureModeAssessmentResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    StartTestRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#StartTestRunRequest", name: "StartTestRunRequest")
    StartTestRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#StartTestRunResponse", name: "StartTestRunResponse")
    StopCondition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#StopCondition", name: "StopCondition")
    StopConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#StopConditionList", name: "StopConditionList")
    StopConditionSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#StopConditionSource", name: "StopConditionSource")
    StopTestRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#StopTestRunRequest", name: "StopTestRunRequest")
    StopTestRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#StopTestRunResponse", name: "StopTestRunResponse")
    StringChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#StringChange", name: "StringChange")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#StringList", name: "StringList", traits: {"smithy.api#length" => {"max" => 10}})
    SuccessCriteriaAlarmInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#SuccessCriteriaAlarmInput", name: "SuccessCriteriaAlarmInput")
    SuccessCriteriaAlarmSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#SuccessCriteriaAlarmSummary", name: "SuccessCriteriaAlarmSummary")
    SuggestedChangesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#SuggestedChangesList", name: "SuggestedChangesList", traits: {"smithy.api#length" => {"max" => 10}})
    System = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#System", name: "System", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}]})
    SystemCreatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#SystemCreatedMetadata", name: "SystemCreatedMetadata")
    SystemDeletedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#SystemDeletedMetadata", name: "SystemDeletedMetadata")
    SystemEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#SystemEvent", name: "SystemEvent", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}]})
    SystemEventDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#SystemEventDetails", name: "SystemEventDetails")
    SystemEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#SystemEventList", name: "SystemEventList")
    SystemEventMetadata = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.resiliencehubv2#SystemEventMetadata", name: "SystemEventMetadata")
    SystemEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#SystemEventType", name: "SystemEventType")
    SystemEventTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#SystemEventTypeList", name: "SystemEventTypeList")
    SystemId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#SystemId", name: "SystemId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\S{1,255}$"})
    SystemPolicyAssociatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#SystemPolicyAssociatedMetadata", name: "SystemPolicyAssociatedMetadata", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    SystemPolicyDisassociatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#SystemPolicyDisassociatedMetadata", name: "SystemPolicyDisassociatedMetadata", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    SystemServiceAssociatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#SystemServiceAssociatedMetadata", name: "SystemServiceAssociatedMetadata", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    SystemServiceDisassociatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#SystemServiceDisassociatedMetadata", name: "SystemServiceDisassociatedMetadata", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    SystemSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#SystemSummary", name: "SystemSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}]})
    SystemSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#SystemSummaryList", name: "SystemSummaryList")
    SystemUserJourneyCreatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#SystemUserJourneyCreatedMetadata", name: "SystemUserJourneyCreatedMetadata")
    SystemUserJourneyDeletedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#SystemUserJourneyDeletedMetadata", name: "SystemUserJourneyDeletedMetadata")
    SystemUserJourneyUpdatedMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#SystemUserJourneyUpdatedMetadata", name: "SystemUserJourneyUpdatedMetadata")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[^\\x00-\\x1f\\x22]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resiliencehubv2#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[^\\x00-\\x1f\\x22]*$"})
    TagValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#TagValueList", name: "TagValueList")
    TargetSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TargetSource", name: "TargetSource")
    Test = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#Test", name: "Test")
    TestAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestAction", name: "TestAction")
    TestActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#TestActionList", name: "TestActionList")
    TestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#TestId", name: "TestId", traits: {"smithy.api#length" => {"min" => 1}})
    TestParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resiliencehubv2#TestParameters", name: "TestParameters", traits: {"smithy.api#length" => {"max" => 20}})
    TestRun = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestRun", name: "TestRun")
    TestRunDependencySource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#TestRunDependencySource", name: "TestRunDependencySource")
    TestRunDependencySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestRunDependencySummary", name: "TestRunDependencySummary")
    TestRunDependencySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#TestRunDependencySummaryList", name: "TestRunDependencySummaryList", traits: {"smithy.api#length" => {"max" => 100}})
    TestRunEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestRunEvent", name: "TestRunEvent")
    TestRunEventAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#TestRunEventAttributeKey", name: "TestRunEventAttributeKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TestRunEventAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#TestRunEventAttributeValue", name: "TestRunEventAttributeValue", traits: {"smithy.api#length" => {"max" => 1024}})
    TestRunEventAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resiliencehubv2#TestRunEventAttributes", name: "TestRunEventAttributes", traits: {"smithy.api#length" => {"max" => 50}})
    TestRunEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#TestRunEventList", name: "TestRunEventList", traits: {"smithy.api#length" => {"max" => 100}})
    TestRunId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#TestRunId", name: "TestRunId", traits: {"smithy.api#length" => {"min" => 1}})
    TestRunObservabilityAlarmSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestRunObservabilityAlarmSummary", name: "TestRunObservabilityAlarmSummary")
    TestRunPolicySnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestRunPolicySnapshot", name: "TestRunPolicySnapshot")
    TestRunReportConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestRunReportConfiguration", name: "TestRunReportConfiguration")
    TestRunSourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#TestRunSourceArn", name: "TestRunSourceArn", traits: {"smithy.api#length" => {"min" => 31, "max" => 1024}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:[a-z][a-z0-9-]*:[a-z]{2}(-[a-z]+)+-\\d{1}:\\d{12}:.+$"})
    TestRunSourceEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestRunSourceEvent", name: "TestRunSourceEvent")
    TestRunSourceEventDetail = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.resiliencehubv2#TestRunSourceEventDetail", name: "TestRunSourceEventDetail")
    TestRunSourceEventError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestRunSourceEventError", name: "TestRunSourceEventError")
    TestRunSourceEventErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#TestRunSourceEventErrorCode", name: "TestRunSourceEventErrorCode")
    TestRunSourceEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#TestRunSourceEventList", name: "TestRunSourceEventList", traits: {"smithy.api#length" => {"max" => 100}})
    TestRunSourceEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#TestRunSourceEventType", name: "TestRunSourceEventType")
    TestRunSourceSummary = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.resiliencehubv2#TestRunSourceSummary", name: "TestRunSourceSummary")
    TestRunSourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#TestRunSourceSummaryList", name: "TestRunSourceSummaryList", traits: {"smithy.api#length" => {"max" => 25}})
    TestRunSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#TestRunSourceType", name: "TestRunSourceType")
    TestRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#TestRunStatus", name: "TestRunStatus")
    TestRunSuccessCriteriaAlarmSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestRunSuccessCriteriaAlarmSummary", name: "TestRunSuccessCriteriaAlarmSummary")
    TestRunSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestRunSummary", name: "TestRunSummary")
    TestRunSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#TestRunSummaryList", name: "TestRunSummaryList")
    TestSourceInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.resiliencehubv2#TestSourceInput", name: "TestSourceInput")
    TestSourceInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#TestSourceInputList", name: "TestSourceInputList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TestSourceOutcome = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#TestSourceOutcome", name: "TestSourceOutcome")
    TestSourceSummary = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.resiliencehubv2#TestSourceSummary", name: "TestSourceSummary")
    TestSourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#TestSourceSummaryList", name: "TestSourceSummaryList", traits: {"smithy.api#length" => {"max" => 25}})
    TestSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#TestSourceType", name: "TestSourceType")
    TestSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestSummary", name: "TestSummary")
    TestSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#TestSummaryList", name: "TestSummaryList")
    TestTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestTemplate", name: "TestTemplate")
    TestTemplateParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestTemplateParameter", name: "TestTemplateParameter")
    TestTemplateParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#TestTemplateParameterList", name: "TestTemplateParameterList")
    TestTemplateSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestTemplateSummary", name: "TestTemplateSummary")
    TestTemplateSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#TestTemplateSummaryList", name: "TestTemplateSummaryList")
    TestingRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#TestingRecommendation", name: "TestingRecommendation")
    TestingRecommendationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#TestingRecommendationsList", name: "TestingRecommendationsList", traits: {"smithy.api#length" => {"max" => 5}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TopologyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#TopologyType", name: "TopologyType")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAssertionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateAssertionRequest", name: "UpdateAssertionRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    UpdateAssertionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateAssertionResponse", name: "UpdateAssertionResponse")
    UpdateDependencyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateDependencyRequest", name: "UpdateDependencyRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    UpdateDependencyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateDependencyResponse", name: "UpdateDependencyResponse")
    UpdateFailureModeFindingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateFailureModeFindingRequest", name: "UpdateFailureModeFindingRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    UpdateFailureModeFindingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateFailureModeFindingResponse", name: "UpdateFailureModeFindingResponse")
    UpdatePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdatePolicyRequest", name: "UpdatePolicyRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    UpdatePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdatePolicyResponse", name: "UpdatePolicyResponse")
    UpdateServiceFunctionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateServiceFunctionRequest", name: "UpdateServiceFunctionRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}]})
    UpdateServiceFunctionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateServiceFunctionResponse", name: "UpdateServiceFunctionResponse")
    UpdateServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateServiceRequest", name: "UpdateServiceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamServiceResource"}, {"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    UpdateServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateServiceResponse", name: "UpdateServiceResponse")
    UpdateSystemRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateSystemRequest", name: "UpdateSystemRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}]})
    UpdateSystemResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateSystemResponse", name: "UpdateSystemResponse")
    UpdateTestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateTestRequest", name: "UpdateTestRequest")
    UpdateTestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateTestResponse", name: "UpdateTestResponse")
    UpdateUserJourneyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateUserJourneyRequest", name: "UpdateUserJourneyRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamSystemResource"}, {"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    UpdateUserJourneyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UpdateUserJourneyResponse", name: "UpdateUserJourneyResponse")
    UserJourney = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UserJourney", name: "UserJourney", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.resiliencehubv2#IamPolicyResource"}]})
    UserJourneyChanges = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UserJourneyChanges", name: "UserJourneyChanges")
    UserJourneyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#UserJourneyId", name: "UserJourneyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\S{1,255}$"})
    UserJourneyIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#UserJourneyIdList", name: "UserJourneyIdList", traits: {"smithy.api#length" => {"max" => 20}})
    UserJourneyNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#UserJourneyNameList", name: "UserJourneyNameList")
    UserJourneySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#UserJourneySummary", name: "UserJourneySummary")
    UserJourneySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#UserJourneySummaryList", name: "UserJourneySummaryList")
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehubv2#Uuid", name: "Uuid", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-5][0-9a-f]{3}-[089ab][0-9a-f]{3}-[0-9a-f]{12}$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehubv2#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehubv2#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehubv2#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountTargeting.add_member(:single_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_ACCOUNT", traits: {"smithy.api#enumValue" => "SINGLE_ACCOUNT"}))
    AccountTargeting.add_member(:multi_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_ACCOUNT", traits: {"smithy.api#enumValue" => "MULTI_ACCOUNT"}))
    Achievability.add_member(:availability_slo, ::Smithy::Schema::Shapes::MemberShape.new(target: AchievabilityStatus, name: "availabilitySlo"))
    Achievability.add_member(:multi_az_rto_rpo, ::Smithy::Schema::Shapes::MemberShape.new(target: AchievabilityStatus, name: "multiAzRtoRpo"))
    Achievability.add_member(:multi_region_rto_rpo, ::Smithy::Schema::Shapes::MemberShape.new(target: AchievabilityStatus, name: "multiRegionRtoRpo"))
    Achievability.add_member(:data_recovery_time_between_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: AchievabilityStatus, name: "dataRecoveryTimeBetweenBackups"))
    Achievability.type = Types::Achievability
    AchievabilityStatus.add_member(:achievable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACHIEVABLE", traits: {"smithy.api#enumValue" => "ACHIEVABLE"}))
    AchievabilityStatus.add_member(:not_achievable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_ACHIEVABLE", traits: {"smithy.api#enumValue" => "NOT_ACHIEVABLE"}))
    ActorType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    ActorType.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM", traits: {"smithy.api#enumValue" => "SYSTEM"}))
    AlarmState.add_member(:ok, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OK", traits: {"smithy.api#enumValue" => "OK"}))
    AlarmState.add_member(:alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALARM", traits: {"smithy.api#enumValue" => "ALARM"}))
    AlarmState.add_member(:insufficient_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_DATA", traits: {"smithy.api#enumValue" => "INSUFFICIENT_DATA"}))
    AlarmStateChangeDetail.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmState, name: "state", traits: {"smithy.api#required" => {}}))
    AlarmStateChangeDetail.add_member(:previous_state, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmState, name: "previousState"))
    AlarmStateChangeDetail.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reason", traits: {"smithy.api#length" => {"max" => 1023}}))
    AlarmStateChangeDetail.type = Types::AlarmStateChangeDetail
    ArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member"))
    Assertion.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    Assertion.add_member(:assertion_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assertionId", traits: {"smithy.api#required" => {}}))
    Assertion.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionText, name: "text", traits: {"smithy.api#required" => {}}))
    Assertion.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionSource, name: "source", traits: {"smithy.api#required" => {}}))
    Assertion.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    Assertion.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    Assertion.type = Types::Assertion
    AssertionCreatedMetadata.add_member(:assertion_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "assertionId"))
    AssertionCreatedMetadata.add_member(:assertion_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "assertionName"))
    AssertionCreatedMetadata.type = Types::AssertionCreatedMetadata
    AssertionDeletedMetadata.add_member(:assertion_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "assertionId"))
    AssertionDeletedMetadata.add_member(:assertion_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "assertionName"))
    AssertionDeletedMetadata.type = Types::AssertionDeletedMetadata
    AssertionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Assertion, name: "member"))
    AssertionSource.add_member(:ai_generated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AI_GENERATED", traits: {"smithy.api#enumValue" => "AI_GENERATED"}))
    AssertionSource.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    AssertionUpdatedMetadata.add_member(:assertion_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "assertionId"))
    AssertionUpdatedMetadata.add_member(:assertion_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "assertionName"))
    AssertionUpdatedMetadata.type = Types::AssertionUpdatedMetadata
    AssessmentCost.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "amount"))
    AssessmentCost.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: CostCurrency, name: "currency"))
    AssessmentCost.type = Types::AssessmentCost
    AssessmentErrorCode.add_member(:invalid_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PERMISSIONS", traits: {"smithy.api#enumValue" => "INVALID_PERMISSIONS"}))
    AssessmentErrorCode.add_member(:cmk_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CMK_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "CMK_ACCESS_DENIED"}))
    AssessmentErrorCode.add_member(:agent_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT_ERROR", traits: {"smithy.api#enumValue" => "AGENT_ERROR"}))
    AssessmentErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    AssessmentErrorCode.add_member(:design_file_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESIGN_FILE_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "DESIGN_FILE_ACCESS_DENIED"}))
    AssessmentSortField.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTED_AT", traits: {"smithy.api#enumValue" => "STARTED_AT"}))
    AssessmentStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    AssessmentStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    AssessmentStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    AssessmentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AssessmentStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    AssessmentStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatus, name: "member"))
    AssessmentStep.add_member(:topology_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOPOLOGY_GENERATION", traits: {"smithy.api#enumValue" => "TOPOLOGY_GENERATION"}))
    AssessmentStep.add_member(:input_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPUT_VALIDATION", traits: {"smithy.api#enumValue" => "INPUT_VALIDATION"}))
    AssessmentStep.add_member(:design_analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESIGN_ANALYSIS", traits: {"smithy.api#enumValue" => "DESIGN_ANALYSIS"}))
    AssessmentStep.add_member(:topology_enhancement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOPOLOGY_ENHANCEMENT", traits: {"smithy.api#enumValue" => "TOPOLOGY_ENHANCEMENT"}))
    AssessmentStep.add_member(:service_function_generation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_FUNCTION_GENERATION", traits: {"smithy.api#enumValue" => "SERVICE_FUNCTION_GENERATION"}))
    AssessmentStep.add_member(:policy_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_VALIDATION", traits: {"smithy.api#enumValue" => "POLICY_VALIDATION"}))
    AssessmentStep.add_member(:resilience_assessment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESILIENCE_ASSESSMENT", traits: {"smithy.api#enumValue" => "RESILIENCE_ASSESSMENT"}))
    AssessmentStep.add_member(:failure_mode_findings_consolidation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILURE_MODE_FINDINGS_CONSOLIDATION", traits: {"smithy.api#enumValue" => "FAILURE_MODE_FINDINGS_CONSOLIDATION"}))
    AssessmentStep.add_member(:failure_mode_findings_enrichment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILURE_MODE_FINDINGS_ENRICHMENT", traits: {"smithy.api#enumValue" => "FAILURE_MODE_FINDINGS_ENRICHMENT"}))
    AssessmentSummary.add_member(:assessment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assessmentId", traits: {"smithy.api#required" => {}}))
    AssessmentSummary.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    AssessmentSummary.add_member(:assessment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatus, name: "assessmentStatus"))
    AssessmentSummary.add_member(:assessment_step, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStep, name: "assessmentStep"))
    AssessmentSummary.add_member(:total_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalFindings"))
    AssessmentSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startedAt"))
    AssessmentSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endedAt"))
    AssessmentSummary.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    AssessmentSummary.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentErrorCode, name: "errorCode"))
    AssessmentSummary.add_member(:assessment_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentCost, name: "assessmentCost"))
    AssessmentSummary.add_member(:billable_assessment_unit_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "billableAssessmentUnitCount"))
    AssessmentSummary.add_member(:achievability, ::Smithy::Schema::Shapes::MemberShape.new(target: Achievability, name: "achievability"))
    AssessmentSummary.type = Types::AssessmentSummary
    AssessmentSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentSummary, name: "member"))
    AssociatedSystem.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn", traits: {"smithy.api#required" => {}}))
    AssociatedSystem.add_member(:system_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "systemName"))
    AssociatedSystem.add_member(:user_journey_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourneyIdList, name: "userJourneyIds"))
    AssociatedSystem.type = Types::AssociatedSystem
    AssociatedSystemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedSystem, name: "member"))
    AvailabilitySlo.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "target", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}}))
    AvailabilitySlo.type = Types::AvailabilitySlo
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CostCurrency.add_member(:usd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USD", traits: {"smithy.api#enumValue" => "USD"}))
    CreateAssertionRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    CreateAssertionRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionText, name: "text", traits: {"smithy.api#required" => {}}))
    CreateAssertionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAssertionRequest.type = Types::CreateAssertionRequest
    CreateAssertionResponse.add_member(:assertion, ::Smithy::Schema::Shapes::MemberShape.new(target: Assertion, name: "assertion", traits: {"smithy.api#required" => {}}))
    CreateAssertionResponse.type = Types::CreateAssertionResponse
    CreateInputSourceRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    CreateInputSourceRequest.add_member(:resource_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfiguration, name: "resourceConfiguration", traits: {"smithy.api#required" => {}}))
    CreateInputSourceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateInputSourceRequest.type = Types::CreateInputSourceRequest
    CreateInputSourceResponse.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    CreateInputSourceResponse.add_member(:input_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSourceId, name: "inputSourceId", traits: {"smithy.api#required" => {}}))
    CreateInputSourceResponse.type = Types::CreateInputSourceResponse
    CreatePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#required" => {}}))
    CreatePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LongDescription, name: "description"))
    CreatePolicyRequest.add_member(:availability_slo, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilitySlo, name: "availabilitySlo"))
    CreatePolicyRequest.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiAzTargets, name: "multiAz"))
    CreatePolicyRequest.add_member(:multi_region, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionTargets, name: "multiRegion"))
    CreatePolicyRequest.add_member(:data_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRecoveryTargets, name: "dataRecovery"))
    CreatePolicyRequest.add_member(:sharing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "sharingEnabled"))
    CreatePolicyRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreatePolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreatePolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePolicyRequest.type = Types::CreatePolicyRequest
    CreatePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "policy", traits: {"smithy.api#required" => {}}))
    CreatePolicyResponse.type = Types::CreatePolicyResponse
    CreateReportRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    CreateReportRequest.add_member(:report_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportType, name: "reportType", traits: {"smithy.api#required" => {}}))
    CreateReportRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateReportRequest.type = Types::CreateReportRequest
    CreateReportResponse.add_member(:report_generation_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGenerationResult, name: "reportGenerationResult", traits: {"smithy.api#required" => {}}))
    CreateReportResponse.type = Types::CreateReportResponse
    CreateServiceFunctionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityLabel, name: "name", traits: {"smithy.api#required" => {}}))
    CreateServiceFunctionRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    CreateServiceFunctionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    CreateServiceFunctionRequest.add_member(:criticality, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFunctionCriticality, name: "criticality", traits: {"smithy.api#required" => {}}))
    CreateServiceFunctionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateServiceFunctionRequest.type = Types::CreateServiceFunctionRequest
    CreateServiceFunctionResourcesRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    CreateServiceFunctionResourcesRequest.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "serviceFunctionId", traits: {"smithy.api#required" => {}}))
    CreateServiceFunctionResourcesRequest.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "resources", traits: {"smithy.api#required" => {}}))
    CreateServiceFunctionResourcesRequest.type = Types::CreateServiceFunctionResourcesRequest
    CreateServiceFunctionResourcesResponse.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn"))
    CreateServiceFunctionResourcesResponse.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "serviceFunctionId"))
    CreateServiceFunctionResourcesResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "resources"))
    CreateServiceFunctionResourcesResponse.type = Types::CreateServiceFunctionResourcesResponse
    CreateServiceFunctionResponse.add_member(:service_function, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFunction, name: "serviceFunction", traits: {"smithy.api#required" => {}}))
    CreateServiceFunctionResponse.type = Types::CreateServiceFunctionResponse
    CreateServiceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateServiceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LongDescription, name: "description"))
    CreateServiceRequest.add_member(:associated_systems, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedSystemList, name: "associatedSystems"))
    CreateServiceRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    CreateServiceRequest.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions", traits: {"smithy.api#required" => {}}))
    CreateServiceRequest.add_member(:permission_model, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionModel, name: "permissionModel", traits: {"smithy.api#required" => {}}))
    CreateServiceRequest.add_member(:dependency_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyDiscoveryInput, name: "dependencyDiscovery"))
    CreateServiceRequest.add_member(:report_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceReportConfiguration, name: "reportConfiguration"))
    CreateServiceRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreateServiceRequest.add_member(:dev_ops_agent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DevOpsAgentConfiguration, name: "devOpsAgentConfiguration"))
    CreateServiceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateServiceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateServiceRequest.type = Types::CreateServiceRequest
    CreateServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service", traits: {"smithy.api#required" => {}}))
    CreateServiceResponse.type = Types::CreateServiceResponse
    CreateSystemRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateSystemRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    CreateSystemRequest.add_member(:sharing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "sharingEnabled"))
    CreateSystemRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreateSystemRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateSystemRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSystemRequest.type = Types::CreateSystemRequest
    CreateSystemResponse.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: System, name: "system", traits: {"smithy.api#required" => {}}))
    CreateSystemResponse.type = Types::CreateSystemResponse
    CreateTestRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    CreateTestRequest.add_member(:test_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceOwnedArn, name: "testTemplateArn", traits: {"smithy.api#required" => {}}))
    CreateTestRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "loggingConfiguration"))
    CreateTestRequest.add_member(:stop_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: StopConditionList, name: "stopConditions"))
    CreateTestRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleName, name: "roleName"))
    CreateTestRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TestParameters, name: "parameters"))
    CreateTestRequest.type = Types::CreateTestRequest
    CreateTestResponse.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: Test, name: "test", traits: {"smithy.api#required" => {}}))
    CreateTestResponse.type = Types::CreateTestResponse
    CreateUserJourneyRequest.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn", traits: {"smithy.api#required" => {}}))
    CreateUserJourneyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityLabel, name: "name", traits: {"smithy.api#required" => {}}))
    CreateUserJourneyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    CreateUserJourneyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    CreateUserJourneyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateUserJourneyRequest.type = Types::CreateUserJourneyRequest
    CreateUserJourneyResponse.add_member(:user_journey, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourney, name: "userJourney", traits: {"smithy.api#required" => {}}))
    CreateUserJourneyResponse.type = Types::CreateUserJourneyResponse
    CrossAccountRole.add_member(:cross_account_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "crossAccountRoleArn", traits: {"smithy.api#required" => {}}))
    CrossAccountRole.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "externalId", traits: {"smithy.api#length" => {"min" => 2, "max" => 1224}}))
    CrossAccountRole.type = Types::CrossAccountRole
    CrossAccountRoleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossAccountRole, name: "member"))
    DataRecoveryTargets.add_member(:time_between_backups_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "timeBetweenBackupsInMinutes", traits: {"smithy.api#range" => {"min" => 0}}))
    DataRecoveryTargets.type = Types::DataRecoveryTargets
    DeleteAssertionRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    DeleteAssertionRequest.add_member(:assertion_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assertionId", traits: {"smithy.api#required" => {}}))
    DeleteAssertionRequest.type = Types::DeleteAssertionRequest
    DeleteAssertionResponse.add_member(:assertion_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assertionId"))
    DeleteAssertionResponse.type = Types::DeleteAssertionResponse
    DeleteInputSourceRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    DeleteInputSourceRequest.add_member(:input_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSourceId, name: "inputSourceId", traits: {"smithy.api#required" => {}}))
    DeleteInputSourceRequest.type = Types::DeleteInputSourceRequest
    DeleteInputSourceResponse.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    DeleteInputSourceResponse.add_member(:input_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSourceId, name: "inputSourceId", traits: {"smithy.api#required" => {}}))
    DeleteInputSourceResponse.type = Types::DeleteInputSourceResponse
    DeletePolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn", traits: {"smithy.api#required" => {}}))
    DeletePolicyRequest.type = Types::DeletePolicyRequest
    DeletePolicyResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn", traits: {"smithy.api#required" => {}}))
    DeletePolicyResponse.type = Types::DeletePolicyResponse
    DeleteServiceFunctionRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    DeleteServiceFunctionRequest.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "serviceFunctionId", traits: {"smithy.api#required" => {}}))
    DeleteServiceFunctionRequest.type = Types::DeleteServiceFunctionRequest
    DeleteServiceFunctionResourcesRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    DeleteServiceFunctionResourcesRequest.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "serviceFunctionId", traits: {"smithy.api#required" => {}}))
    DeleteServiceFunctionResourcesRequest.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "resources", traits: {"smithy.api#required" => {}}))
    DeleteServiceFunctionResourcesRequest.type = Types::DeleteServiceFunctionResourcesRequest
    DeleteServiceFunctionResourcesResponse.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn"))
    DeleteServiceFunctionResourcesResponse.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "serviceFunctionId"))
    DeleteServiceFunctionResourcesResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceList, name: "resources"))
    DeleteServiceFunctionResourcesResponse.type = Types::DeleteServiceFunctionResourcesResponse
    DeleteServiceFunctionResponse.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "serviceFunctionId"))
    DeleteServiceFunctionResponse.type = Types::DeleteServiceFunctionResponse
    DeleteServiceRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    DeleteServiceRequest.type = Types::DeleteServiceRequest
    DeleteServiceResponse.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    DeleteServiceResponse.type = Types::DeleteServiceResponse
    DeleteSystemRequest.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn", traits: {"smithy.api#required" => {}}))
    DeleteSystemRequest.type = Types::DeleteSystemRequest
    DeleteSystemResponse.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn", traits: {"smithy.api#required" => {}}))
    DeleteSystemResponse.type = Types::DeleteSystemResponse
    DeleteTestRequest.add_member(:test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestId, name: "testId", traits: {"smithy.api#required" => {}}))
    DeleteTestRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    DeleteTestRequest.type = Types::DeleteTestRequest
    DeleteTestResponse.add_member(:test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestId, name: "testId", traits: {"smithy.api#required" => {}}))
    DeleteTestResponse.type = Types::DeleteTestResponse
    DeleteTestSourcesRequest.add_member(:test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestId, name: "testId", traits: {"smithy.api#required" => {}}))
    DeleteTestSourcesRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    DeleteTestSourcesRequest.add_member(:test_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSourceInputList, name: "testSources", traits: {"smithy.api#required" => {}}))
    DeleteTestSourcesRequest.type = Types::DeleteTestSourcesRequest
    DeleteTestSourcesResponse.type = Types::DeleteTestSourcesResponse
    DeleteUserJourneyRequest.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn", traits: {"smithy.api#required" => {}}))
    DeleteUserJourneyRequest.add_member(:user_journey_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourneyId, name: "userJourneyId", traits: {"smithy.api#required" => {}}))
    DeleteUserJourneyRequest.type = Types::DeleteUserJourneyRequest
    DeleteUserJourneyResponse.add_member(:user_journey_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourneyId, name: "userJourneyId", traits: {"smithy.api#required" => {}}))
    DeleteUserJourneyResponse.type = Types::DeleteUserJourneyResponse
    DependencyCriticality.add_member(:hard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HARD", traits: {"smithy.api#enumValue" => "HARD"}))
    DependencyCriticality.add_member(:soft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOFT", traits: {"smithy.api#enumValue" => "SOFT"}))
    DependencyCriticality.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    DependencyDiscoveryConfig.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyDiscoveryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DependencyDiscoveryConfig.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    DependencyDiscoveryConfig.add_member(:eligible_resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "eligibleResourceCount", traits: {"smithy.api#range" => {"min" => 0}}))
    DependencyDiscoveryConfig.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}}))
    DependencyDiscoveryConfig.type = Types::DependencyDiscoveryConfig
    DependencyDiscoveryInput.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DependencyDiscoveryInput.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DependencyDiscoveryStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DependencyDiscoveryStatus.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIALIZING", traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    DependencyDiscoveryStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DependencyInsight.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsCategory, name: "category", traits: {"smithy.api#required" => {}}))
    DependencyInsight.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#required" => {}}))
    DependencyInsight.type = Types::DependencyInsight
    DependencyInsightsErrorCode.add_member(:insufficient_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_DATA", traits: {"smithy.api#enumValue" => "INSUFFICIENT_DATA"}))
    DependencyInsightsErrorCode.add_member(:llm_generation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LLM_GENERATION_FAILED", traits: {"smithy.api#enumValue" => "LLM_GENERATION_FAILED"}))
    DependencyInsightsErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    DependencyInsightsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyInsight, name: "member"))
    DependencyInsightsStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DependencyInsightsStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DependencyInsightsStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DependencySummary.add_member(:dependency_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "dependencyId", traits: {"smithy.api#required" => {}}))
    DependencySummary.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    DependencySummary.add_member(:dependency_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dependencyName", traits: {"smithy.api#required" => {}}))
    DependencySummary.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dnsName", traits: {"smithy.api#required" => {}}))
    DependencySummary.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "location", traits: {"smithy.api#required" => {}}))
    DependencySummary.add_member(:last_detected_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastDetectedTime", traits: {"smithy.api#required" => {}}))
    DependencySummary.add_member(:source_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "sourceRegions", traits: {"smithy.api#required" => {}}))
    DependencySummary.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "provider"))
    DependencySummary.add_member(:query_range, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryRange, name: "queryRange", traits: {"smithy.api#required" => {}}))
    DependencySummary.add_member(:criticality, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyCriticality, name: "criticality", traits: {"smithy.api#required" => {}}))
    DependencySummary.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "comment"))
    DependencySummary.type = Types::DependencySummary
    DependencySummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencySummary, name: "member"))
    DevOpsAgentConfidence.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    DevOpsAgentConfidence.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    DevOpsAgentConfidence.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    DevOpsAgentConfiguration.add_member(:agent_space_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DevOpsAgentSpaceArn, name: "agentSpaceArn"))
    DevOpsAgentConfiguration.type = Types::DevOpsAgentConfiguration
    DevOpsAgentConfigurationView.add_member(:agent_space_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DevOpsAgentSpaceArn, name: "agentSpaceArn"))
    DevOpsAgentConfigurationView.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DevOpsAgentSpaceId, name: "agentSpaceId"))
    DevOpsAgentConfigurationView.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: DevOpsAgentRegion, name: "region"))
    DevOpsAgentConfigurationView.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DevOpsAgentConnectionStatus, name: "status"))
    DevOpsAgentConfigurationView.add_member(:operator_app_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operatorAppUrl"))
    DevOpsAgentConfigurationView.add_member(:connected_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "connectedAt"))
    DevOpsAgentConfigurationView.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    DevOpsAgentConfigurationView.type = Types::DevOpsAgentConfigurationView
    DevOpsAgentConnectionStatus.add_member(:connecting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTING", traits: {"smithy.api#enumValue" => "CONNECTING"}))
    DevOpsAgentConnectionStatus.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTED", traits: {"smithy.api#enumValue" => "CONNECTED"}))
    DevOpsAgentConnectionStatus.add_member(:disconnected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISCONNECTED", traits: {"smithy.api#enumValue" => "DISCONNECTED"}))
    DevOpsAgentConnectionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DevOpsAgentInvestigation.add_member(:verdict, ::Smithy::Schema::Shapes::MemberShape.new(target: DevOpsAgentVerdict, name: "verdict"))
    DevOpsAgentInvestigation.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: DevOpsAgentConfidence, name: "confidence"))
    DevOpsAgentInvestigation.add_member(:deep_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "deepLink"))
    DevOpsAgentInvestigation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DevOpsAgentInvestigationStatus, name: "status"))
    DevOpsAgentInvestigation.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "summary"))
    DevOpsAgentInvestigation.type = Types::DevOpsAgentInvestigation
    DevOpsAgentInvestigationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DevOpsAgentInvestigationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DevOpsAgentInvestigationStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DevOpsAgentInvestigationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DevOpsAgentInvestigationStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    DevOpsAgentInvestigationStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    DevOpsAgentVerdict.add_member(:pass, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASS", traits: {"smithy.api#enumValue" => "PASS"}))
    DevOpsAgentVerdict.add_member(:fail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAIL", traits: {"smithy.api#enumValue" => "FAIL"}))
    DisasterRecoverySource.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    DisasterRecoverySource.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "policyName"))
    DisasterRecoverySource.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyValueSource, name: "source"))
    DisasterRecoverySource.type = Types::DisasterRecoverySource
    EdgePropertyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgePropertySummary, name: "member"))
    EdgePropertySummary.add_member(:topology_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TopologyType, name: "topologyType"))
    EdgePropertySummary.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "label"))
    EdgePropertySummary.type = Types::EdgePropertySummary
    EffectivePolicyValues.add_member(:availability_slo, ::Smithy::Schema::Shapes::MemberShape.new(target: SloSource, name: "availabilitySlo"))
    EffectivePolicyValues.add_member(:multi_az_rto, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetSource, name: "multiAzRto"))
    EffectivePolicyValues.add_member(:multi_az_rpo, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetSource, name: "multiAzRpo"))
    EffectivePolicyValues.add_member(:multi_az_dr_approach, ::Smithy::Schema::Shapes::MemberShape.new(target: DisasterRecoverySource, name: "multiAzDrApproach"))
    EffectivePolicyValues.add_member(:multi_region_rto, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetSource, name: "multiRegionRto"))
    EffectivePolicyValues.add_member(:multi_region_rpo, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetSource, name: "multiRegionRpo"))
    EffectivePolicyValues.add_member(:multi_region_dr_approach, ::Smithy::Schema::Shapes::MemberShape.new(target: DisasterRecoverySource, name: "multiRegionDrApproach"))
    EffectivePolicyValues.add_member(:data_recovery_time_between_backups, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetSource, name: "dataRecoveryTimeBetweenBackups"))
    EffectivePolicyValues.type = Types::EffectivePolicyValues
    EksLabelMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EksLabelKey, name: "key"))
    EksLabelMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EksLabelValue, name: "value"))
    EksLabelSelector.add_member(:match_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: EksLabelMap, name: "matchLabels", traits: {"smithy.api#length" => {"max" => 20}}))
    EksLabelSelector.add_member(:match_expressions, ::Smithy::Schema::Shapes::MemberShape.new(target: EksLabelSelectorRequirementList, name: "matchExpressions", traits: {"smithy.api#length" => {"max" => 20}}))
    EksLabelSelector.type = Types::EksLabelSelector
    EksLabelSelectorOperator.add_member(:in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN", traits: {"smithy.api#enumValue" => "IN"}))
    EksLabelSelectorOperator.add_member(:not_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_IN", traits: {"smithy.api#enumValue" => "NOT_IN"}))
    EksLabelSelectorOperator.add_member(:exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXISTS", traits: {"smithy.api#enumValue" => "EXISTS"}))
    EksLabelSelectorOperator.add_member(:does_not_exist, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOES_NOT_EXIST", traits: {"smithy.api#enumValue" => "DOES_NOT_EXIST"}))
    EksLabelSelectorRequirement.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EksLabelKey, name: "key", traits: {"smithy.api#required" => {}}))
    EksLabelSelectorRequirement.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: EksLabelSelectorOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    EksLabelSelectorRequirement.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: EksLabelValueList, name: "values", traits: {"smithy.api#length" => {"max" => 20}}))
    EksLabelSelectorRequirement.type = Types::EksLabelSelectorRequirement
    EksLabelSelectorRequirementList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EksLabelSelectorRequirement, name: "member"))
    EksLabelValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EksLabelValue, name: "member"))
    EksNamespaceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EksNamespace, name: "member"))
    EksSource.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "clusterArn", traits: {"smithy.api#required" => {}}))
    EksSource.add_member(:namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: EksNamespaceList, name: "namespaces", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#required" => {}}))
    EksSource.add_member(:label_selector, ::Smithy::Schema::Shapes::MemberShape.new(target: EksLabelSelector, name: "labelSelector"))
    EksSource.type = Types::EksSource
    EventActor.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorType, name: "type", traits: {"smithy.api#required" => {}}))
    EventActor.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "principalId", traits: {"smithy.api#required" => {}}))
    EventActor.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId"))
    EventActor.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "userName"))
    EventActor.type = Types::EventActor
    ExperimentArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member"))
    ExperimentDetails.add_member(:experiment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "experimentArn", traits: {"smithy.api#required" => {}}))
    ExperimentDetails.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "details"))
    ExperimentDetails.type = Types::ExperimentDetails
    ExperimentDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentDetails, name: "member"))
    FailedReportOutput.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGenerationErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    FailedReportOutput.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    FailedReportOutput.type = Types::FailedReportOutput
    FailureCategory.add_member(:shared_fate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED_FATE", traits: {"smithy.api#enumValue" => "SHARED_FATE"}))
    FailureCategory.add_member(:excessive_load, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCESSIVE_LOAD", traits: {"smithy.api#enumValue" => "EXCESSIVE_LOAD"}))
    FailureCategory.add_member(:excessive_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCESSIVE_LATENCY", traits: {"smithy.api#enumValue" => "EXCESSIVE_LATENCY"}))
    FailureCategory.add_member(:misconfiguration_and_bugs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISCONFIGURATION_AND_BUGS", traits: {"smithy.api#enumValue" => "MISCONFIGURATION_AND_BUGS"}))
    FailureCategory.add_member(:single_point_of_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGLE_POINT_OF_FAILURE", traits: {"smithy.api#enumValue" => "SINGLE_POINT_OF_FAILURE"}))
    Finding.add_member(:finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "findingId"))
    Finding.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    Finding.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    Finding.add_member(:failure_category, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCategory, name: "failureCategory"))
    Finding.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "status"))
    Finding.add_member(:reasoning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reasoning"))
    Finding.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "comment", traits: {"smithy.api#length" => {"max" => 2048}}))
    Finding.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSeverity, name: "severity"))
    Finding.add_member(:service_functions, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionsList, name: "serviceFunctions"))
    Finding.add_member(:policy_component, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyComponent, name: "policyComponent"))
    Finding.add_member(:infrastructure_and_code_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureAndCodeRecommendationsList, name: "infrastructureAndCodeRecommendations"))
    Finding.add_member(:observability_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: ObservabilityRecommendationsList, name: "observabilityRecommendations"))
    Finding.add_member(:testing_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: TestingRecommendationsList, name: "testingRecommendations"))
    Finding.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    Finding.add_member(:investigation_deep_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "investigationDeepLink"))
    Finding.type = Types::Finding
    FindingSeverity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    FindingSeverity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    FindingSeverity.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    FindingStatus.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    FindingStatus.add_member(:resolved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOLVED", traits: {"smithy.api#enumValue" => "RESOLVED"}))
    FindingStatus.add_member(:irrelevant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IRRELEVANT", traits: {"smithy.api#enumValue" => "IRRELEVANT"}))
    FindingSummary.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn"))
    FindingSummary.add_member(:finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "findingId"))
    FindingSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    FindingSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    FindingSummary.add_member(:failure_category, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCategory, name: "failureCategory"))
    FindingSummary.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSeverity, name: "severity"))
    FindingSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "status"))
    FindingSummary.add_member(:policy_component, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyComponent, name: "policyComponent"))
    FindingSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    FindingSummary.add_member(:investigation_deep_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "investigationDeepLink"))
    FindingSummary.type = Types::FindingSummary
    FindingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSummary, name: "member"))
    FunctionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "member"))
    GetDependencyInsightsRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    GetDependencyInsightsRequest.type = Types::GetDependencyInsightsRequest
    GetDependencyInsightsResponse.add_member(:overview, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "overview", traits: {"smithy.api#length" => {"max" => 4096}}))
    GetDependencyInsightsResponse.add_member(:insights, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyInsightsList, name: "insights"))
    GetDependencyInsightsResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyInsightsStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetDependencyInsightsResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    GetDependencyInsightsResponse.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyInsightsErrorCode, name: "errorCode"))
    GetDependencyInsightsResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage", traits: {"smithy.api#length" => {"max" => 1024}}))
    GetDependencyInsightsResponse.type = Types::GetDependencyInsightsResponse
    GetFailureModeFindingRequest.add_member(:finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "findingId", traits: {"smithy.api#httpQuery" => "findingId", "smithy.api#required" => {}}))
    GetFailureModeFindingRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    GetFailureModeFindingRequest.type = Types::GetFailureModeFindingRequest
    GetFailureModeFindingResponse.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: Finding, name: "finding"))
    GetFailureModeFindingResponse.type = Types::GetFailureModeFindingResponse
    GetPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn", traits: {"smithy.api#httpQuery" => "policyArn", "smithy.api#required" => {}}))
    GetPolicyRequest.type = Types::GetPolicyRequest
    GetPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "policy", traits: {"smithy.api#required" => {}}))
    GetPolicyResponse.type = Types::GetPolicyResponse
    GetServiceRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    GetServiceRequest.type = Types::GetServiceRequest
    GetServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service", traits: {"smithy.api#required" => {}}))
    GetServiceResponse.type = Types::GetServiceResponse
    GetSystemRequest.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn", traits: {"smithy.api#httpQuery" => "systemArn", "smithy.api#required" => {}}))
    GetSystemRequest.type = Types::GetSystemRequest
    GetSystemResponse.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: System, name: "system", traits: {"smithy.api#required" => {}}))
    GetSystemResponse.type = Types::GetSystemResponse
    GetTestRequest.add_member(:test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestId, name: "testId", traits: {"smithy.api#httpQuery" => "testId", "smithy.api#required" => {}}))
    GetTestRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    GetTestRequest.type = Types::GetTestRequest
    GetTestResponse.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: Test, name: "test", traits: {"smithy.api#required" => {}}))
    GetTestResponse.type = Types::GetTestResponse
    GetTestRunRequest.add_member(:test_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunId, name: "testRunId", traits: {"smithy.api#httpQuery" => "testRunId", "smithy.api#required" => {}}))
    GetTestRunRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    GetTestRunRequest.type = Types::GetTestRunRequest
    GetTestRunResponse.add_member(:test_run, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRun, name: "testRun", traits: {"smithy.api#required" => {}}))
    GetTestRunResponse.type = Types::GetTestRunResponse
    GetTestTemplateRequest.add_member(:test_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceOwnedArn, name: "testTemplateArn", traits: {"smithy.api#httpQuery" => "testTemplateArn", "smithy.api#required" => {}}))
    GetTestTemplateRequest.type = Types::GetTestTemplateRequest
    GetTestTemplateResponse.add_member(:test_template, ::Smithy::Schema::Shapes::MemberShape.new(target: TestTemplate, name: "testTemplate", traits: {"smithy.api#required" => {}}))
    GetTestTemplateResponse.type = Types::GetTestTemplateResponse
    GetUserJourneyRequest.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn", traits: {"smithy.api#httpQuery" => "systemArn", "smithy.api#required" => {}}))
    GetUserJourneyRequest.add_member(:user_journey_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourneyId, name: "userJourneyId", traits: {"smithy.api#httpQuery" => "userJourneyId", "smithy.api#required" => {}}))
    GetUserJourneyRequest.type = Types::GetUserJourneyRequest
    GetUserJourneyResponse.add_member(:user_journey, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourney, name: "userJourney", traits: {"smithy.api#required" => {}}))
    GetUserJourneyResponse.type = Types::GetUserJourneyResponse
    ImportAppRequest.add_member(:v1_app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "v1AppArn", traits: {"smithy.api#required" => {}}))
    ImportAppRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    ImportAppRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    ImportAppRequest.add_member(:skip_manually_added_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "skipManuallyAddedResources"))
    ImportAppRequest.add_member(:associated_systems, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedSystemList, name: "associatedSystems"))
    ImportAppRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ImportAppRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ImportAppRequest.type = Types::ImportAppRequest
    ImportAppResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service", traits: {"smithy.api#required" => {}}))
    ImportAppResponse.type = Types::ImportAppResponse
    ImportPolicyRequest.add_member(:v1_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "v1PolicyArn", traits: {"smithy.api#required" => {}}))
    ImportPolicyRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    ImportPolicyRequest.add_member(:availability_slo, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilitySlo, name: "availabilitySlo"))
    ImportPolicyRequest.add_member(:multi_az_disaster_recovery_approach, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiAzDisasterRecoveryApproach, name: "multiAzDisasterRecoveryApproach"))
    ImportPolicyRequest.add_member(:multi_region_disaster_recovery_approach, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionDisasterRecoveryApproach, name: "multiRegionDisasterRecoveryApproach"))
    ImportPolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ImportPolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ImportPolicyRequest.type = Types::ImportPolicyRequest
    ImportPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "policy", traits: {"smithy.api#required" => {}}))
    ImportPolicyResponse.type = Types::ImportPolicyResponse
    InfrastructureAndCodeRecommendation.add_member(:suggested_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestedChangesList, name: "suggestedChanges"))
    InfrastructureAndCodeRecommendation.type = Types::InfrastructureAndCodeRecommendation
    InfrastructureAndCodeRecommendationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureAndCodeRecommendation, name: "member"))
    InputSource.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "identifier", traits: {"smithy.api#required" => {}}))
    InputSource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSourceType, name: "type", traits: {"smithy.api#required" => {}}))
    InputSource.type = Types::InputSource
    InputSourceSummary.add_member(:input_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSourceId, name: "inputSourceId", traits: {"smithy.api#required" => {}}))
    InputSourceSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSourceType, name: "type"))
    InputSourceSummary.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "resourceTags"))
    InputSourceSummary.add_member(:cfn_stack_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "cfnStackArn"))
    InputSourceSummary.add_member(:tf_state_file_url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "tfStateFileUrl"))
    InputSourceSummary.add_member(:eks, ::Smithy::Schema::Shapes::MemberShape.new(target: EksSource, name: "eks"))
    InputSourceSummary.add_member(:design_file_s3_url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "designFileS3Url"))
    InputSourceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    InputSourceSummary.type = Types::InputSourceSummary
    InputSourceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSourceSummary, name: "member"))
    InputSourceType.add_member(:cfn_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CFN_STACK", traits: {"smithy.api#enumValue" => "CFN_STACK"}))
    InputSourceType.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    InputSourceType.add_member(:eks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS", traits: {"smithy.api#enumValue" => "EKS"}))
    InputSourceType.add_member(:terraform, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERRAFORM", traits: {"smithy.api#enumValue" => "TERRAFORM"}))
    InputSourceType.add_member(:design_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESIGN_FILE", traits: {"smithy.api#enumValue" => "DESIGN_FILE"}))
    InputSourceType.add_member(:monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONITORING", traits: {"smithy.api#enumValue" => "MONITORING"}))
    InsightsCategory.add_member(:cross_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CROSS_REGION", traits: {"smithy.api#enumValue" => "CROSS_REGION"}))
    InsightsCategory.add_member(:new_dependency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_DEPENDENCY", traits: {"smithy.api#enumValue" => "NEW_DEPENDENCY"}))
    InsightsCategory.add_member(:third_party, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THIRD_PARTY", traits: {"smithy.api#enumValue" => "THIRD_PARTY"}))
    InsightsCategory.add_member(:uneven_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNEVEN_USAGE", traits: {"smithy.api#enumValue" => "UNEVEN_USAGE"}))
    InsightsCategory.add_member(:aws_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SERVICE", traits: {"smithy.api#enumValue" => "AWS_SERVICE"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListAssertionsRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListAssertionsRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionSource, name: "source", traits: {"smithy.api#httpQuery" => "source"}))
    ListAssertionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListAssertionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAssertionsRequest.type = Types::ListAssertionsRequest
    ListAssertionsResponse.add_member(:assertions, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionList, name: "assertions", traits: {"smithy.api#required" => {}}))
    ListAssertionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssertionsResponse.type = Types::ListAssertionsResponse
    ListDependenciesRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn"}))
    ListDependenciesRequest.add_member(:query_range_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "queryRangeStartTime", traits: {"smithy.api#httpQuery" => "queryRangeStartTime"}))
    ListDependenciesRequest.add_member(:query_range_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "queryRangeEndTime", traits: {"smithy.api#httpQuery" => "queryRangeEndTime"}))
    ListDependenciesRequest.add_member(:query_range_granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryGranularity, name: "queryRangeGranularity", traits: {"smithy.api#httpQuery" => "queryRangeGranularity"}))
    ListDependenciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListDependenciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDependenciesRequest.type = Types::ListDependenciesRequest
    ListDependenciesResponse.add_member(:dependency_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencySummaryList, name: "dependencySummaries", traits: {"smithy.api#required" => {}}))
    ListDependenciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDependenciesResponse.type = Types::ListDependenciesResponse
    ListFailureModeAssessmentsRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListFailureModeAssessmentsRequest.add_member(:assessment_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatusList, name: "assessmentStatuses", traits: {"smithy.api#httpQuery" => "assessmentStatuses"}))
    ListFailureModeAssessmentsRequest.add_member(:started_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startedAfter", traits: {"smithy.api#httpQuery" => "startedAfter"}))
    ListFailureModeAssessmentsRequest.add_member(:ended_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endedBefore", traits: {"smithy.api#httpQuery" => "endedBefore"}))
    ListFailureModeAssessmentsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentSortField, name: "sortBy", traits: {"smithy.api#httpQuery" => "sortBy"}))
    ListFailureModeAssessmentsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder", traits: {"smithy.api#httpQuery" => "sortOrder"}))
    ListFailureModeAssessmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListFailureModeAssessmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFailureModeAssessmentsRequest.type = Types::ListFailureModeAssessmentsRequest
    ListFailureModeAssessmentsResponse.add_member(:assessment_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentSummaryList, name: "assessmentSummaries", traits: {"smithy.api#required" => {}}))
    ListFailureModeAssessmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFailureModeAssessmentsResponse.type = Types::ListFailureModeAssessmentsResponse
    ListFailureModeFindingsRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListFailureModeFindingsRequest.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSeverity, name: "severity", traits: {"smithy.api#httpQuery" => "severity"}))
    ListFailureModeFindingsRequest.add_member(:failure_category, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCategory, name: "failureCategory", traits: {"smithy.api#httpQuery" => "failureCategory"}))
    ListFailureModeFindingsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListFailureModeFindingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListFailureModeFindingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFailureModeFindingsRequest.type = Types::ListFailureModeFindingsRequest
    ListFailureModeFindingsResponse.add_member(:findings_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingsList, name: "findingsSummary", traits: {"smithy.api#required" => {}}))
    ListFailureModeFindingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFailureModeFindingsResponse.type = Types::ListFailureModeFindingsResponse
    ListInputSourcesRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListInputSourcesRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSourceType, name: "type", traits: {"smithy.api#httpQuery" => "type"}))
    ListInputSourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListInputSourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListInputSourcesRequest.type = Types::ListInputSourcesRequest
    ListInputSourcesResponse.add_member(:input_source_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSourceSummaryList, name: "inputSourceSummaries", traits: {"smithy.api#required" => {}}))
    ListInputSourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListInputSourcesResponse.type = Types::ListInputSourcesResponse
    ListPoliciesRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#httpQuery" => "accountId"}))
    ListPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPoliciesRequest.type = Types::ListPoliciesRequest
    ListPoliciesResponse.add_member(:policy_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicySummaryList, name: "policySummaries", traits: {"smithy.api#required" => {}}))
    ListPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPoliciesResponse.type = Types::ListPoliciesResponse
    ListPolicyEventsRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn", traits: {"smithy.api#httpQuery" => "policyArn", "smithy.api#required" => {}}))
    ListPolicyEventsRequest.add_member(:event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyEventTypeList, name: "eventTypes", traits: {"smithy.api#httpQuery" => "eventTypes"}))
    ListPolicyEventsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#httpQuery" => "startTime"}))
    ListPolicyEventsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#httpQuery" => "endTime"}))
    ListPolicyEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListPolicyEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPolicyEventsRequest.type = Types::ListPolicyEventsRequest
    ListPolicyEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyEventList, name: "events", traits: {"smithy.api#required" => {}}))
    ListPolicyEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPolicyEventsResponse.type = Types::ListPolicyEventsResponse
    ListReportsRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn"}))
    ListReportsRequest.add_member(:report_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportType, name: "reportType", traits: {"smithy.api#httpQuery" => "reportType"}))
    ListReportsRequest.add_member(:test_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunId, name: "testRunId", traits: {"smithy.api#httpQuery" => "testRunId"}))
    ListReportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListReportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReportsRequest.type = Types::ListReportsRequest
    ListReportsResponse.add_member(:report_generation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGenerationResultList, name: "reportGenerationResults", traits: {"smithy.api#required" => {}}))
    ListReportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListReportsResponse.type = Types::ListReportsResponse
    ListResolvedTestRunTargetResourcesRequest.add_member(:test_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunId, name: "testRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResolvedTestRunTargetResourcesRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListResolvedTestRunTargetResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListResolvedTestRunTargetResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResolvedTestRunTargetResourcesRequest.type = Types::ListResolvedTestRunTargetResourcesRequest
    ListResolvedTestRunTargetResourcesResponse.add_member(:resolved_target_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedTargetResourceList, name: "resolvedTargetResources", traits: {"smithy.api#required" => {}}))
    ListResolvedTestRunTargetResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListResolvedTestRunTargetResourcesResponse.type = Types::ListResolvedTestRunTargetResourcesResponse
    ListResourcesRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListResourcesRequest.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "serviceFunctionId", traits: {"smithy.api#httpQuery" => "serviceFunctionId"}))
    ListResourcesRequest.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "awsRegion", traits: {"smithy.api#httpQuery" => "awsRegion"}))
    ListResourcesRequest.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeFilterList, name: "resourceTypes", traits: {"smithy.api#httpQuery" => "resourceTypes"}))
    ListResourcesRequest.add_member(:billable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "billable", traits: {"smithy.api#default" => true, "smithy.api#httpQuery" => "billable"}))
    ListResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResourcesRequest.type = Types::ListResourcesRequest
    ListResourcesResponse.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "serviceFunctionId"))
    ListResourcesResponse.add_member(:service_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceResourceList, name: "serviceResources"))
    ListResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListResourcesResponse.type = Types::ListResourcesResponse
    ListServiceEventsRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListServiceEventsRequest.add_member(:event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEventTypeList, name: "eventTypes", traits: {"smithy.api#httpQuery" => "eventTypes"}))
    ListServiceEventsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#httpQuery" => "startTime"}))
    ListServiceEventsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#httpQuery" => "endTime"}))
    ListServiceEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListServiceEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListServiceEventsRequest.type = Types::ListServiceEventsRequest
    ListServiceEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEventList, name: "events", traits: {"smithy.api#required" => {}}))
    ListServiceEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListServiceEventsResponse.type = Types::ListServiceEventsResponse
    ListServiceFunctionsRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListServiceFunctionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListServiceFunctionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListServiceFunctionsRequest.type = Types::ListServiceFunctionsRequest
    ListServiceFunctionsResponse.add_member(:service_functions, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFunctionList, name: "serviceFunctions", traits: {"smithy.api#required" => {}}))
    ListServiceFunctionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListServiceFunctionsResponse.type = Types::ListServiceFunctionsResponse
    ListServiceTopologyEdgesRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListServiceTopologyEdgesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListServiceTopologyEdgesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListServiceTopologyEdgesRequest.type = Types::ListServiceTopologyEdgesRequest
    ListServiceTopologyEdgesResponse.add_member(:service_topology_edge_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceTopologyEdgeSummaryList, name: "serviceTopologyEdgeSummaries"))
    ListServiceTopologyEdgesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListServiceTopologyEdgesResponse.type = Types::ListServiceTopologyEdgesResponse
    ListServicesRequest.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn", traits: {"smithy.api#httpQuery" => "systemArn"}))
    ListServicesRequest.add_member(:user_journey_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourneyId, name: "userJourneyId", traits: {"smithy.api#httpQuery" => "userJourneyId"}))
    ListServicesRequest.add_member(:ou_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OuId, name: "ouId", traits: {"smithy.api#httpQuery" => "ouId"}))
    ListServicesRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId", traits: {"smithy.api#httpQuery" => "accountId"}))
    ListServicesRequest.add_member(:assessment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatus, name: "assessmentStatus", traits: {"smithy.api#httpQuery" => "assessmentStatus"}))
    ListServicesRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn", traits: {"smithy.api#httpQuery" => "policyArn"}))
    ListServicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListServicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListServicesRequest.type = Types::ListServicesRequest
    ListServicesResponse.add_member(:service_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSummaryList, name: "serviceSummaries", traits: {"smithy.api#required" => {}}))
    ListServicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListServicesResponse.type = Types::ListServicesResponse
    ListSystemEventsRequest.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn", traits: {"smithy.api#httpQuery" => "systemArn", "smithy.api#required" => {}}))
    ListSystemEventsRequest.add_member(:event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemEventTypeList, name: "eventTypes", traits: {"smithy.api#httpQuery" => "eventTypes"}))
    ListSystemEventsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#httpQuery" => "startTime"}))
    ListSystemEventsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#httpQuery" => "endTime"}))
    ListSystemEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListSystemEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSystemEventsRequest.type = Types::ListSystemEventsRequest
    ListSystemEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemEventList, name: "events", traits: {"smithy.api#required" => {}}))
    ListSystemEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSystemEventsResponse.type = Types::ListSystemEventsResponse
    ListSystemsRequest.add_member(:ou_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OuId, name: "ouId", traits: {"smithy.api#httpQuery" => "ouId"}))
    ListSystemsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListSystemsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSystemsRequest.type = Types::ListSystemsRequest
    ListSystemsResponse.add_member(:system_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemSummaryList, name: "systemSummaries", traits: {"smithy.api#required" => {}}))
    ListSystemsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSystemsResponse.type = Types::ListSystemsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTestRunDependenciesRequest.add_member(:test_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunId, name: "testRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTestRunDependenciesRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListTestRunDependenciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListTestRunDependenciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTestRunDependenciesRequest.type = Types::ListTestRunDependenciesRequest
    ListTestRunDependenciesResponse.add_member(:dependencies, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunDependencySummaryList, name: "dependencies", traits: {"smithy.api#required" => {}}))
    ListTestRunDependenciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestRunDependenciesResponse.type = Types::ListTestRunDependenciesResponse
    ListTestRunEventsRequest.add_member(:test_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunId, name: "testRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTestRunEventsRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListTestRunEventsRequest.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startedAt", traits: {"smithy.api#httpQuery" => "startedAt"}))
    ListTestRunEventsRequest.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endedAt", traits: {"smithy.api#httpQuery" => "endedAt"}))
    ListTestRunEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListTestRunEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTestRunEventsRequest.type = Types::ListTestRunEventsRequest
    ListTestRunEventsResponse.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunEventList, name: "events", traits: {"smithy.api#required" => {}}))
    ListTestRunEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestRunEventsResponse.type = Types::ListTestRunEventsResponse
    ListTestRunSourceEventsRequest.add_member(:test_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunId, name: "testRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTestRunSourceEventsRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListTestRunSourceEventsRequest.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunSourceArn, name: "sourceArn", traits: {"smithy.api#httpQuery" => "sourceArn", "smithy.api#required" => {}}))
    ListTestRunSourceEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListTestRunSourceEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTestRunSourceEventsRequest.type = Types::ListTestRunSourceEventsRequest
    ListTestRunSourceEventsResponse.add_member(:test_run_source_events, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunSourceEventList, name: "testRunSourceEvents", traits: {"smithy.api#required" => {}}))
    ListTestRunSourceEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestRunSourceEventsResponse.type = Types::ListTestRunSourceEventsResponse
    ListTestRunSourcesRequest.add_member(:test_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunId, name: "testRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTestRunSourcesRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListTestRunSourcesRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunSourceType, name: "type", traits: {"smithy.api#httpQuery" => "type"}))
    ListTestRunSourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListTestRunSourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTestRunSourcesRequest.type = Types::ListTestRunSourcesRequest
    ListTestRunSourcesResponse.add_member(:test_run_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunSourceSummaryList, name: "testRunSources", traits: {"smithy.api#required" => {}}))
    ListTestRunSourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestRunSourcesResponse.type = Types::ListTestRunSourcesResponse
    ListTestRunsRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListTestRunsRequest.add_member(:test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestId, name: "testId", traits: {"smithy.api#httpQuery" => "testId"}))
    ListTestRunsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListTestRunsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTestRunsRequest.type = Types::ListTestRunsRequest
    ListTestRunsResponse.add_member(:test_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunSummaryList, name: "testRuns", traits: {"smithy.api#required" => {}}))
    ListTestRunsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestRunsResponse.type = Types::ListTestRunsResponse
    ListTestSourcesRequest.add_member(:test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestId, name: "testId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTestSourcesRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListTestSourcesRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSourceType, name: "type", traits: {"smithy.api#httpQuery" => "type"}))
    ListTestSourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListTestSourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTestSourcesRequest.type = Types::ListTestSourcesRequest
    ListTestSourcesResponse.add_member(:test_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSourceSummaryList, name: "testSources", traits: {"smithy.api#required" => {}}))
    ListTestSourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestSourcesResponse.type = Types::ListTestSourcesResponse
    ListTestTemplatesRequest.type = Types::ListTestTemplatesRequest
    ListTestTemplatesResponse.add_member(:test_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: TestTemplateSummaryList, name: "testTemplates", traits: {"smithy.api#required" => {}}))
    ListTestTemplatesResponse.type = Types::ListTestTemplatesResponse
    ListTestsRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#httpQuery" => "serviceArn", "smithy.api#required" => {}}))
    ListTestsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListTestsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTestsRequest.type = Types::ListTestsRequest
    ListTestsResponse.add_member(:tests, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSummaryList, name: "tests", traits: {"smithy.api#required" => {}}))
    ListTestsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestsResponse.type = Types::ListTestsResponse
    ListUserJourneysRequest.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn", traits: {"smithy.api#httpQuery" => "systemArn", "smithy.api#required" => {}}))
    ListUserJourneysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListUserJourneysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListUserJourneysRequest.type = Types::ListUserJourneysRequest
    ListUserJourneysResponse.add_member(:user_journey_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourneySummaryList, name: "userJourneySummaries", traits: {"smithy.api#required" => {}}))
    ListUserJourneysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListUserJourneysResponse.type = Types::ListUserJourneysResponse
    LoggingConfiguration.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "s3BucketName"))
    LoggingConfiguration.add_member(:cloud_watch_log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "cloudWatchLogGroupArn"))
    LoggingConfiguration.add_member(:log_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "logSchemaVersion"))
    LoggingConfiguration.type = Types::LoggingConfiguration
    MultiAzDisasterRecoveryApproach.add_member(:active_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE_ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE_ACTIVE"}))
    MultiAzDisasterRecoveryApproach.add_member(:hot_standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOT_STANDBY", traits: {"smithy.api#enumValue" => "HOT_STANDBY"}))
    MultiAzDisasterRecoveryApproach.add_member(:warm_standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARM_STANDBY", traits: {"smithy.api#enumValue" => "WARM_STANDBY"}))
    MultiAzDisasterRecoveryApproach.add_member(:pilot_light, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PILOT_LIGHT", traits: {"smithy.api#enumValue" => "PILOT_LIGHT"}))
    MultiAzDisasterRecoveryApproach.add_member(:backup_and_restore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_AND_RESTORE", traits: {"smithy.api#enumValue" => "BACKUP_AND_RESTORE"}))
    MultiAzTargets.add_member(:rto_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "rtoInMinutes", traits: {"smithy.api#range" => {"min" => 0}}))
    MultiAzTargets.add_member(:rpo_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "rpoInMinutes", traits: {"smithy.api#range" => {"min" => 0}}))
    MultiAzTargets.add_member(:disaster_recovery_approach, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiAzDisasterRecoveryApproach, name: "disasterRecoveryApproach"))
    MultiAzTargets.type = Types::MultiAzTargets
    MultiRegionDisasterRecoveryApproach.add_member(:active_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE_ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE_ACTIVE"}))
    MultiRegionDisasterRecoveryApproach.add_member(:hot_standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOT_STANDBY", traits: {"smithy.api#enumValue" => "HOT_STANDBY"}))
    MultiRegionDisasterRecoveryApproach.add_member(:warm_standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARM_STANDBY", traits: {"smithy.api#enumValue" => "WARM_STANDBY"}))
    MultiRegionDisasterRecoveryApproach.add_member(:pilot_light, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PILOT_LIGHT", traits: {"smithy.api#enumValue" => "PILOT_LIGHT"}))
    MultiRegionDisasterRecoveryApproach.add_member(:backup_and_restore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_AND_RESTORE", traits: {"smithy.api#enumValue" => "BACKUP_AND_RESTORE"}))
    MultiRegionTargets.add_member(:rto_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "rtoInMinutes", traits: {"smithy.api#range" => {"min" => 0}}))
    MultiRegionTargets.add_member(:rpo_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "rpoInMinutes", traits: {"smithy.api#range" => {"min" => 0}}))
    MultiRegionTargets.add_member(:disaster_recovery_approach, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionDisasterRecoveryApproach, name: "disasterRecoveryApproach"))
    MultiRegionTargets.type = Types::MultiRegionTargets
    ObservabilityAlarmInput.add_member(:alarm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchAlarmArn, name: "alarmArn", traits: {"smithy.api#required" => {}}))
    ObservabilityAlarmInput.type = Types::ObservabilityAlarmInput
    ObservabilityAlarmSummary.add_member(:alarm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchAlarmArn, name: "alarmArn", traits: {"smithy.api#required" => {}}))
    ObservabilityAlarmSummary.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "alarmName", traits: {"smithy.api#required" => {}}))
    ObservabilityAlarmSummary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region", traits: {"smithy.api#required" => {}}))
    ObservabilityAlarmSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId", traits: {"smithy.api#required" => {}}))
    ObservabilityAlarmSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    ObservabilityAlarmSummary.type = Types::ObservabilityAlarmSummary
    ObservabilityRecommendation.add_member(:suggested_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestedChangesList, name: "suggestedChanges"))
    ObservabilityRecommendation.type = Types::ObservabilityRecommendation
    ObservabilityRecommendationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ObservabilityRecommendation, name: "member"))
    ParameterType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    ParameterType.add_member(:string_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_LIST", traits: {"smithy.api#enumValue" => "STRING_LIST"}))
    ParameterType.add_member(:integer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEGER", traits: {"smithy.api#enumValue" => "INTEGER"}))
    PermissionModel.add_member(:invoker_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleName, name: "invokerRoleName", traits: {"smithy.api#required" => {}}))
    PermissionModel.add_member(:cross_account_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossAccountRoleList, name: "crossAccountRoles"))
    PermissionModel.type = Types::PermissionModel
    Policy.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn", traits: {"smithy.api#required" => {}}))
    Policy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#required" => {}}))
    Policy.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LongDescription, name: "description"))
    Policy.add_member(:availability_slo, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilitySlo, name: "availabilitySlo"))
    Policy.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiAzTargets, name: "multiAz"))
    Policy.add_member(:multi_region, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionTargets, name: "multiRegion"))
    Policy.add_member(:data_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRecoveryTargets, name: "dataRecovery"))
    Policy.add_member(:sharing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "sharingEnabled"))
    Policy.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationId, name: "organizationId"))
    Policy.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    Policy.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Policy.add_member(:associated_service_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "associatedServiceCount"))
    Policy.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    Policy.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    Policy.type = Types::Policy
    PolicyAttachedToServiceMetadata.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn"))
    PolicyAttachedToServiceMetadata.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    PolicyAttachedToServiceMetadata.type = Types::PolicyAttachedToServiceMetadata
    PolicyComponent.add_member(:availability_slo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABILITY_SLO", traits: {"smithy.api#enumValue" => "AVAILABILITY_SLO"}))
    PolicyComponent.add_member(:multi_az_disaster_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_AZ_DISASTER_RECOVERY", traits: {"smithy.api#enumValue" => "MULTI_AZ_DISASTER_RECOVERY"}))
    PolicyComponent.add_member(:multi_region_disaster_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_REGION_DISASTER_RECOVERY", traits: {"smithy.api#enumValue" => "MULTI_REGION_DISASTER_RECOVERY"}))
    PolicyComponent.add_member(:data_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_RECOVERY", traits: {"smithy.api#enumValue" => "DATA_RECOVERY"}))
    PolicyDeletedMetadata.add_member(:affected_service_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "affectedServiceCount"))
    PolicyDeletedMetadata.type = Types::PolicyDeletedMetadata
    PolicyDetachedFromServiceMetadata.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn"))
    PolicyDetachedFromServiceMetadata.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    PolicyDetachedFromServiceMetadata.type = Types::PolicyDetachedFromServiceMetadata
    PolicyDisassociationReason.add_member(:replaced_by_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACED_BY_UPDATE", traits: {"smithy.api#enumValue" => "REPLACED_BY_UPDATE"}))
    PolicyDisassociationReason.add_member(:sharing_revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARING_REVOKED", traits: {"smithy.api#enumValue" => "SHARING_REVOKED"}))
    PolicyDisassociationReason.add_member(:policy_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_DELETED", traits: {"smithy.api#enumValue" => "POLICY_DELETED"}))
    PolicyEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "eventId", traits: {"smithy.api#required" => {}}))
    PolicyEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    PolicyEvent.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyEventType, name: "eventType", traits: {"smithy.api#required" => {}}))
    PolicyEvent.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn", traits: {"smithy.api#required" => {}}))
    PolicyEvent.add_member(:actor, ::Smithy::Schema::Shapes::MemberShape.new(target: EventActor, name: "actor", traits: {"smithy.api#required" => {}}))
    PolicyEvent.add_member(:event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyEventDetails, name: "eventDetails", traits: {"smithy.api#required" => {}}))
    PolicyEvent.type = Types::PolicyEvent
    PolicyEventDetails.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#required" => {}}))
    PolicyEventDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    PolicyEventDetails.add_member(:event_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyEventMetadata, name: "eventMetadata"))
    PolicyEventDetails.type = Types::PolicyEventDetails
    PolicyEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyEvent, name: "member"))
    PolicyEventMetadata.add_member(:policy_attached_to_service, Types::PolicyEventMetadata::PolicyAttachedToService, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyAttachedToServiceMetadata, name: "policyAttachedToService"))
    PolicyEventMetadata.add_member(:policy_detached_from_service, Types::PolicyEventMetadata::PolicyDetachedFromService, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDetachedFromServiceMetadata, name: "policyDetachedFromService"))
    PolicyEventMetadata.add_member(:policy_sharing_revoked, Types::PolicyEventMetadata::PolicySharingRevoked, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicySharingRevokedMetadata, name: "policySharingRevoked"))
    PolicyEventMetadata.add_member(:policy_deleted, Types::PolicyEventMetadata::PolicyDeleted, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDeletedMetadata, name: "policyDeleted"))
    PolicyEventMetadata.add_member(:unknown, Types::PolicyEventMetadata::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PolicyEventMetadata.type = Types::PolicyEventMetadata
    PolicyEventType.add_member(:policy_attached_to_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_ATTACHED_TO_SERVICE", traits: {"smithy.api#enumValue" => "POLICY_ATTACHED_TO_SERVICE"}))
    PolicyEventType.add_member(:policy_detached_from_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_DETACHED_FROM_SERVICE", traits: {"smithy.api#enumValue" => "POLICY_DETACHED_FROM_SERVICE"}))
    PolicyEventType.add_member(:policy_sharing_revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_SHARING_REVOKED", traits: {"smithy.api#enumValue" => "POLICY_SHARING_REVOKED"}))
    PolicyEventType.add_member(:policy_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_DELETED", traits: {"smithy.api#enumValue" => "POLICY_DELETED"}))
    PolicyEventTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyEventType, name: "member"))
    PolicySharingRevokedMetadata.add_member(:affected_service_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "affectedServiceCount"))
    PolicySharingRevokedMetadata.type = Types::PolicySharingRevokedMetadata
    PolicySummary.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn", traits: {"smithy.api#required" => {}}))
    PolicySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#required" => {}}))
    PolicySummary.add_member(:availability_slo, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilitySlo, name: "availabilitySlo"))
    PolicySummary.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiAzTargets, name: "multiAz"))
    PolicySummary.add_member(:multi_region, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionTargets, name: "multiRegion"))
    PolicySummary.add_member(:data_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRecoveryTargets, name: "dataRecovery"))
    PolicySummary.add_member(:sharing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "sharingEnabled"))
    PolicySummary.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationId, name: "organizationId"))
    PolicySummary.add_member(:associated_service_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "associatedServiceCount"))
    PolicySummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    PolicySummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    PolicySummary.type = Types::PolicySummary
    PolicySummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicySummary, name: "member"))
    PolicyValueSource.add_member(:self, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELF", traits: {"smithy.api#enumValue" => "SELF"}))
    PolicyValueSource.add_member(:cross_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CROSS_ACCOUNT", traits: {"smithy.api#enumValue" => "CROSS_ACCOUNT"}))
    PutTestSourcesRequest.add_member(:test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestId, name: "testId", traits: {"smithy.api#required" => {}}))
    PutTestSourcesRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    PutTestSourcesRequest.add_member(:test_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSourceInputList, name: "testSources", traits: {"smithy.api#required" => {}}))
    PutTestSourcesRequest.type = Types::PutTestSourcesRequest
    PutTestSourcesResponse.type = Types::PutTestSourcesResponse
    QueryDataPoint.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    QueryDataPoint.add_member(:query_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "queryCount", traits: {"smithy.api#required" => {}}))
    QueryDataPoint.type = Types::QueryDataPoint
    QueryDataPointList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryDataPoint, name: "member"))
    QueryGranularity.add_member(:hourly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURLY", traits: {"smithy.api#enumValue" => "HOURLY"}))
    QueryGranularity.add_member(:daily, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY", traits: {"smithy.api#enumValue" => "DAILY"}))
    QueryRange.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    QueryRange.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    QueryRange.add_member(:granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryGranularity, name: "granularity", traits: {"smithy.api#required" => {}}))
    QueryRange.add_member(:data_points, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryDataPointList, name: "dataPoints", traits: {"smithy.api#required" => {}}))
    QueryRange.type = Types::QueryRange
    RegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "member"))
    ReportGenerationErrorCode.add_member(:insufficient_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_PERMISSIONS", traits: {"smithy.api#enumValue" => "INSUFFICIENT_PERMISSIONS"}))
    ReportGenerationErrorCode.add_member(:configuration_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION_ERROR", traits: {"smithy.api#enumValue" => "CONFIGURATION_ERROR"}))
    ReportGenerationErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    ReportGenerationResult.add_member(:report_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportType, name: "reportType", traits: {"smithy.api#required" => {}}))
    ReportGenerationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGenerationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ReportGenerationResult.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn"))
    ReportGenerationResult.add_member(:assessment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assessmentId"))
    ReportGenerationResult.add_member(:test_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunId, name: "testRunId"))
    ReportGenerationResult.add_member(:test_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceOwnedArn, name: "testTemplateArn"))
    ReportGenerationResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    ReportGenerationResult.add_member(:report_output, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportOutput, name: "reportOutput"))
    ReportGenerationResult.type = Types::ReportGenerationResult
    ReportGenerationResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGenerationResult, name: "member"))
    ReportGenerationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ReportGenerationStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ReportGenerationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ReportOutput.add_member(:s3_report_output, Types::ReportOutput::S3ReportOutput, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ReportOutput, name: "s3ReportOutput"))
    ReportOutput.add_member(:failed_report_output, Types::ReportOutput::FailedReportOutput, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedReportOutput, name: "failedReportOutput"))
    ReportOutput.add_member(:unknown, Types::ReportOutput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ReportOutput.type = Types::ReportOutput
    ReportOutputConfiguration.add_member(:s3, Types::ReportOutputConfiguration::S3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ReportOutputConfiguration, name: "s3"))
    ReportOutputConfiguration.add_member(:unknown, Types::ReportOutputConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ReportOutputConfiguration.type = Types::ReportOutputConfiguration
    ReportOutputConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportOutputConfiguration, name: "member"))
    ReportType.add_member(:failure_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILURE_MODE", traits: {"smithy.api#enumValue" => "FAILURE_MODE"}))
    ReportType.add_member(:testing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TESTING", traits: {"smithy.api#enumValue" => "TESTING"}))
    ResolvedTargetInformation.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedTargetInformationKey, name: "key"))
    ResolvedTargetInformation.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedTargetInformationValue, name: "value"))
    ResolvedTargetResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    ResolvedTargetResource.add_member(:target_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "targetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    ResolvedTargetResource.add_member(:target_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedTargetInformation, name: "targetInformation", traits: {"smithy.api#required" => {}}))
    ResolvedTargetResource.type = Types::ResolvedTargetResource
    ResolvedTargetResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedTargetResource, name: "member"))
    Resource.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "identifier", traits: {"smithy.api#required" => {}}))
    Resource.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "awsRegion"))
    Resource.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "awsAccountId"))
    Resource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    Resource.add_member(:availability_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZoneId"))
    Resource.add_member(:availability_zone_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilityZoneName"))
    Resource.add_member(:containment_parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "containmentParentId"))
    Resource.add_member(:logical_resource_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "logicalResourceGroupId"))
    Resource.type = Types::Resource
    ResourceConfiguration.add_member(:resource_tags, Types::ResourceConfiguration::ResourceTags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagList, name: "resourceTags"))
    ResourceConfiguration.add_member(:cfn_stack_arn, Types::ResourceConfiguration::CfnStackArn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "cfnStackArn"))
    ResourceConfiguration.add_member(:tf_state_file_url, Types::ResourceConfiguration::TfStateFileUrl, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "tfStateFileUrl"))
    ResourceConfiguration.add_member(:eks, Types::ResourceConfiguration::Eks, ::Smithy::Schema::Shapes::MemberShape.new(target: EksSource, name: "eks"))
    ResourceConfiguration.add_member(:design_file_s3_url, Types::ResourceConfiguration::DesignFileS3Url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "designFileS3Url"))
    ResourceConfiguration.add_member(:unknown, Types::ResourceConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResourceConfiguration.type = Types::ResourceConfiguration
    ResourceDiscoveryErrorCode.add_member(:invalid_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_PERMISSIONS", traits: {"smithy.api#enumValue" => "INVALID_PERMISSIONS"}))
    ResourceDiscoveryErrorCode.add_member(:stack_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STACK_NOT_FOUND", traits: {"smithy.api#enumValue" => "STACK_NOT_FOUND"}))
    ResourceDiscoveryErrorCode.add_member(:cluster_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_NOT_FOUND", traits: {"smithy.api#enumValue" => "CLUSTER_NOT_FOUND"}))
    ResourceDiscoveryErrorCode.add_member(:state_file_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATE_FILE_NOT_FOUND", traits: {"smithy.api#enumValue" => "STATE_FILE_NOT_FOUND"}))
    ResourceDiscoveryErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    ResourceDiscoveryErrorCode.add_member(:unsupported_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNSUPPORTED_CLUSTER", traits: {"smithy.api#enumValue" => "UNSUPPORTED_CLUSTER"}))
    ResourceDiscoveryErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    ResourceDiscoveryRunStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ResourceDiscoveryRunStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ResourceDiscoveryRunStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResourceDiscoveryRunStatus.add_member(:completed_with_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_FAILURES", traits: {"smithy.api#enumValue" => "COMPLETED_WITH_FAILURES"}))
    ResourceDiscoveryRunStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    ResourceDiscoveryStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDiscoveryRunStatus, name: "status"))
    ResourceDiscoveryStatus.add_member(:last_run_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastRunAt"))
    ResourceDiscoveryStatus.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDiscoveryErrorCode, name: "errorCode"))
    ResourceDiscoveryStatus.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    ResourceDiscoveryStatus.type = Types::ResourceDiscoveryStatus
    ResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    ResourceTag.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "values", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}, "smithy.api#required" => {}}))
    ResourceTag.type = Types::ResourceTag
    ResourceTagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTag, name: "member"))
    ResourceTypeFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeFilter, name: "member"))
    ResourceTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    S3ReportOutput.add_member(:s3_object_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "s3ObjectKey", traits: {"smithy.api#required" => {}}))
    S3ReportOutput.type = Types::S3ReportOutput
    S3ReportOutputConfiguration.add_member(:bucket_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketPath, name: "bucketPath", traits: {"smithy.api#required" => {}}))
    S3ReportOutputConfiguration.add_member(:bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "bucketOwner", traits: {"smithy.api#required" => {}}))
    S3ReportOutputConfiguration.type = Types::S3ReportOutputConfiguration
    Service.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    Service.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#required" => {}}))
    Service.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LongDescription, name: "description"))
    Service.add_member(:associated_systems, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedSystemList, name: "associatedSystems"))
    Service.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    Service.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions"))
    Service.add_member(:permission_model, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionModel, name: "permissionModel"))
    Service.add_member(:dependency_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyDiscoveryConfig, name: "dependencyDiscovery"))
    Service.add_member(:effective_policy_values, ::Smithy::Schema::Shapes::MemberShape.new(target: EffectivePolicyValues, name: "effectivePolicyValues"))
    Service.add_member(:achievability, ::Smithy::Schema::Shapes::MemberShape.new(target: Achievability, name: "achievability"))
    Service.add_member(:report_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceReportConfiguration, name: "reportConfiguration"))
    Service.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    Service.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Service.add_member(:estimated_assessment_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentCost, name: "estimatedAssessmentCost"))
    Service.add_member(:resource_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDiscoveryStatus, name: "resourceDiscovery"))
    Service.add_member(:assessment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatus, name: "assessmentStatus"))
    Service.add_member(:rerun_assessment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "rerunAssessment"))
    Service.add_member(:open_findings_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "openFindingsCount"))
    Service.add_member(:resolved_findings_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "resolvedFindingsCount"))
    Service.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationId, name: "organizationId"))
    Service.add_member(:ou_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OuId, name: "ouId"))
    Service.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    Service.add_member(:dev_ops_agent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DevOpsAgentConfigurationView, name: "devOpsAgentConfiguration"))
    Service.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    Service.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    Service.type = Types::Service
    ServiceAchievabilityUpdatedMetadata.add_member(:assessment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "assessmentId"))
    ServiceAchievabilityUpdatedMetadata.add_member(:availability_slo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "availabilitySlo"))
    ServiceAchievabilityUpdatedMetadata.add_member(:multi_az_rto_rpo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "multiAzRtoRpo"))
    ServiceAchievabilityUpdatedMetadata.add_member(:multi_region_rto_rpo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "multiRegionRtoRpo"))
    ServiceAchievabilityUpdatedMetadata.type = Types::ServiceAchievabilityUpdatedMetadata
    ServiceCreatedMetadata.type = Types::ServiceCreatedMetadata
    ServiceDeletedMetadata.type = Types::ServiceDeletedMetadata
    ServiceEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "eventId", traits: {"smithy.api#required" => {}}))
    ServiceEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    ServiceEvent.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEventType, name: "eventType", traits: {"smithy.api#required" => {}}))
    ServiceEvent.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    ServiceEvent.add_member(:actor, ::Smithy::Schema::Shapes::MemberShape.new(target: EventActor, name: "actor", traits: {"smithy.api#required" => {}}))
    ServiceEvent.add_member(:event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEventDetails, name: "eventDetails", traits: {"smithy.api#required" => {}}))
    ServiceEvent.type = Types::ServiceEvent
    ServiceEventDetails.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#required" => {}}))
    ServiceEventDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    ServiceEventDetails.add_member(:event_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEventMetadata, name: "eventMetadata"))
    ServiceEventDetails.type = Types::ServiceEventDetails
    ServiceEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEvent, name: "member"))
    ServiceEventMetadata.add_member(:service_created, Types::ServiceEventMetadata::ServiceCreated, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCreatedMetadata, name: "serviceCreated"))
    ServiceEventMetadata.add_member(:service_deleted, Types::ServiceEventMetadata::ServiceDeleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeletedMetadata, name: "serviceDeleted"))
    ServiceEventMetadata.add_member(:service_system_associated, Types::ServiceEventMetadata::ServiceSystemAssociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSystemAssociatedMetadata, name: "serviceSystemAssociated"))
    ServiceEventMetadata.add_member(:service_system_disassociated, Types::ServiceEventMetadata::ServiceSystemDisassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSystemDisassociatedMetadata, name: "serviceSystemDisassociated"))
    ServiceEventMetadata.add_member(:service_resources_associated, Types::ServiceEventMetadata::ServiceResourcesAssociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceResourcesAssociatedMetadata, name: "serviceResourcesAssociated"))
    ServiceEventMetadata.add_member(:service_resources_disassociated, Types::ServiceEventMetadata::ServiceResourcesDisassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceResourcesDisassociatedMetadata, name: "serviceResourcesDisassociated"))
    ServiceEventMetadata.add_member(:service_workflow_updated, Types::ServiceEventMetadata::ServiceWorkflowUpdated, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceWorkflowUpdatedMetadata, name: "serviceWorkflowUpdated"))
    ServiceEventMetadata.add_member(:service_input_sources_updated, Types::ServiceEventMetadata::ServiceInputSourcesUpdated, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceInputSourcesUpdatedMetadata, name: "serviceInputSourcesUpdated"))
    ServiceEventMetadata.add_member(:service_policy_associated, Types::ServiceEventMetadata::ServicePolicyAssociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePolicyAssociatedMetadata, name: "servicePolicyAssociated"))
    ServiceEventMetadata.add_member(:service_policy_disassociated, Types::ServiceEventMetadata::ServicePolicyDisassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ServicePolicyDisassociatedMetadata, name: "servicePolicyDisassociated"))
    ServiceEventMetadata.add_member(:service_function_created, Types::ServiceEventMetadata::ServiceFunctionCreated, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFunctionCreatedMetadata, name: "serviceFunctionCreated"))
    ServiceEventMetadata.add_member(:service_function_updated, Types::ServiceEventMetadata::ServiceFunctionUpdated, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFunctionUpdatedMetadata, name: "serviceFunctionUpdated"))
    ServiceEventMetadata.add_member(:service_function_deleted, Types::ServiceEventMetadata::ServiceFunctionDeleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFunctionDeletedMetadata, name: "serviceFunctionDeleted"))
    ServiceEventMetadata.add_member(:service_function_resources_added, Types::ServiceEventMetadata::ServiceFunctionResourcesAdded, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFunctionResourcesAddedMetadata, name: "serviceFunctionResourcesAdded"))
    ServiceEventMetadata.add_member(:service_function_resources_removed, Types::ServiceEventMetadata::ServiceFunctionResourcesRemoved, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFunctionResourcesRemovedMetadata, name: "serviceFunctionResourcesRemoved"))
    ServiceEventMetadata.add_member(:service_achievability_updated, Types::ServiceEventMetadata::ServiceAchievabilityUpdated, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAchievabilityUpdatedMetadata, name: "serviceAchievabilityUpdated"))
    ServiceEventMetadata.add_member(:assertion_created, Types::ServiceEventMetadata::AssertionCreated, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionCreatedMetadata, name: "assertionCreated"))
    ServiceEventMetadata.add_member(:assertion_updated, Types::ServiceEventMetadata::AssertionUpdated, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionUpdatedMetadata, name: "assertionUpdated"))
    ServiceEventMetadata.add_member(:assertion_deleted, Types::ServiceEventMetadata::AssertionDeleted, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionDeletedMetadata, name: "assertionDeleted"))
    ServiceEventMetadata.add_member(:unknown, Types::ServiceEventMetadata::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ServiceEventMetadata.type = Types::ServiceEventMetadata
    ServiceEventType.add_member(:service_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_CREATED", traits: {"smithy.api#enumValue" => "SERVICE_CREATED"}))
    ServiceEventType.add_member(:service_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_DELETED", traits: {"smithy.api#enumValue" => "SERVICE_DELETED"}))
    ServiceEventType.add_member(:service_system_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_SYSTEM_ASSOCIATED", traits: {"smithy.api#enumValue" => "SERVICE_SYSTEM_ASSOCIATED"}))
    ServiceEventType.add_member(:service_system_disassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_SYSTEM_DISASSOCIATED", traits: {"smithy.api#enumValue" => "SERVICE_SYSTEM_DISASSOCIATED"}))
    ServiceEventType.add_member(:service_resources_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_RESOURCES_ASSOCIATED", traits: {"smithy.api#enumValue" => "SERVICE_RESOURCES_ASSOCIATED"}))
    ServiceEventType.add_member(:service_resources_disassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_RESOURCES_DISASSOCIATED", traits: {"smithy.api#enumValue" => "SERVICE_RESOURCES_DISASSOCIATED"}))
    ServiceEventType.add_member(:service_workflow_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_WORKFLOW_UPDATED", traits: {"smithy.api#enumValue" => "SERVICE_WORKFLOW_UPDATED"}))
    ServiceEventType.add_member(:service_input_sources_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_INPUT_SOURCES_UPDATED", traits: {"smithy.api#enumValue" => "SERVICE_INPUT_SOURCES_UPDATED"}))
    ServiceEventType.add_member(:service_policy_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_POLICY_ASSOCIATED", traits: {"smithy.api#enumValue" => "SERVICE_POLICY_ASSOCIATED"}))
    ServiceEventType.add_member(:service_policy_disassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_POLICY_DISASSOCIATED", traits: {"smithy.api#enumValue" => "SERVICE_POLICY_DISASSOCIATED"}))
    ServiceEventType.add_member(:service_function_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_FUNCTION_CREATED", traits: {"smithy.api#enumValue" => "SERVICE_FUNCTION_CREATED"}))
    ServiceEventType.add_member(:service_function_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_FUNCTION_UPDATED", traits: {"smithy.api#enumValue" => "SERVICE_FUNCTION_UPDATED"}))
    ServiceEventType.add_member(:service_function_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_FUNCTION_DELETED", traits: {"smithy.api#enumValue" => "SERVICE_FUNCTION_DELETED"}))
    ServiceEventType.add_member(:service_function_resources_added, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_FUNCTION_RESOURCES_ADDED", traits: {"smithy.api#enumValue" => "SERVICE_FUNCTION_RESOURCES_ADDED"}))
    ServiceEventType.add_member(:service_function_resources_removed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_FUNCTION_RESOURCES_REMOVED", traits: {"smithy.api#enumValue" => "SERVICE_FUNCTION_RESOURCES_REMOVED"}))
    ServiceEventType.add_member(:service_achievability_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_ACHIEVABILITY_UPDATED", traits: {"smithy.api#enumValue" => "SERVICE_ACHIEVABILITY_UPDATED"}))
    ServiceEventType.add_member(:assertion_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSERTION_CREATED", traits: {"smithy.api#enumValue" => "ASSERTION_CREATED"}))
    ServiceEventType.add_member(:assertion_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSERTION_UPDATED", traits: {"smithy.api#enumValue" => "ASSERTION_UPDATED"}))
    ServiceEventType.add_member(:assertion_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSERTION_DELETED", traits: {"smithy.api#enumValue" => "ASSERTION_DELETED"}))
    ServiceEventTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEventType, name: "member"))
    ServiceFunction.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    ServiceFunction.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "serviceFunctionId", traits: {"smithy.api#required" => {}}))
    ServiceFunction.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityLabel, name: "name", traits: {"smithy.api#required" => {}}))
    ServiceFunction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    ServiceFunction.add_member(:criticality, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFunctionCriticality, name: "criticality", traits: {"smithy.api#required" => {}}))
    ServiceFunction.add_member(:resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "resourceCount"))
    ServiceFunction.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFunctionSource, name: "source"))
    ServiceFunction.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    ServiceFunction.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    ServiceFunction.type = Types::ServiceFunction
    ServiceFunctionCreatedMetadata.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceFunctionId"))
    ServiceFunctionCreatedMetadata.add_member(:service_function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceFunctionName"))
    ServiceFunctionCreatedMetadata.type = Types::ServiceFunctionCreatedMetadata
    ServiceFunctionCriticality.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIMARY", traits: {"smithy.api#enumValue" => "PRIMARY"}))
    ServiceFunctionCriticality.add_member(:supplemental, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPPLEMENTAL", traits: {"smithy.api#enumValue" => "SUPPLEMENTAL"}))
    ServiceFunctionDeletedMetadata.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceFunctionId"))
    ServiceFunctionDeletedMetadata.add_member(:service_function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceFunctionName"))
    ServiceFunctionDeletedMetadata.type = Types::ServiceFunctionDeletedMetadata
    ServiceFunctionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFunction, name: "member"))
    ServiceFunctionResourcesAddedMetadata.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceFunctionId"))
    ServiceFunctionResourcesAddedMetadata.add_member(:service_function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceFunctionName"))
    ServiceFunctionResourcesAddedMetadata.add_member(:resources_added, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "resourcesAdded"))
    ServiceFunctionResourcesAddedMetadata.type = Types::ServiceFunctionResourcesAddedMetadata
    ServiceFunctionResourcesRemovedMetadata.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceFunctionId"))
    ServiceFunctionResourcesRemovedMetadata.add_member(:service_function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceFunctionName"))
    ServiceFunctionResourcesRemovedMetadata.add_member(:resources_removed, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "resourcesRemoved"))
    ServiceFunctionResourcesRemovedMetadata.type = Types::ServiceFunctionResourcesRemovedMetadata
    ServiceFunctionSource.add_member(:ai_generated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AI_GENERATED", traits: {"smithy.api#enumValue" => "AI_GENERATED"}))
    ServiceFunctionSource.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    ServiceFunctionUpdatedMetadata.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceFunctionId"))
    ServiceFunctionUpdatedMetadata.add_member(:service_function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceFunctionName"))
    ServiceFunctionUpdatedMetadata.add_member(:resources_added, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "resourcesAdded"))
    ServiceFunctionUpdatedMetadata.add_member(:resources_removed, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "resourcesRemoved"))
    ServiceFunctionUpdatedMetadata.type = Types::ServiceFunctionUpdatedMetadata
    ServiceInputSourcesUpdatedMetadata.type = Types::ServiceInputSourcesUpdatedMetadata
    ServicePolicyAssociatedMetadata.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policyName"))
    ServicePolicyAssociatedMetadata.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    ServicePolicyAssociatedMetadata.add_member(:policy_owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policyOwnerAccountId"))
    ServicePolicyAssociatedMetadata.add_member(:policy_source, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyValueSource, name: "policySource"))
    ServicePolicyAssociatedMetadata.type = Types::ServicePolicyAssociatedMetadata
    ServicePolicyDisassociatedMetadata.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policyName"))
    ServicePolicyDisassociatedMetadata.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    ServicePolicyDisassociatedMetadata.add_member(:policy_owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policyOwnerAccountId"))
    ServicePolicyDisassociatedMetadata.add_member(:policy_source, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyValueSource, name: "policySource"))
    ServicePolicyDisassociatedMetadata.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDisassociationReason, name: "reason"))
    ServicePolicyDisassociatedMetadata.type = Types::ServicePolicyDisassociatedMetadata
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceReference.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceId"))
    ServiceReference.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceName"))
    ServiceReference.type = Types::ServiceReference
    ServiceReferenceChanges.add_member(:added, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceReferenceList, name: "added"))
    ServiceReferenceChanges.add_member(:removed, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceReferenceList, name: "removed"))
    ServiceReferenceChanges.type = Types::ServiceReferenceChanges
    ServiceReferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceReference, name: "member"))
    ServiceReportConfiguration.add_member(:report_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportOutputConfigurationList, name: "reportOutputs", traits: {"smithy.api#required" => {}}))
    ServiceReportConfiguration.type = Types::ServiceReportConfiguration
    ServiceResource.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceIdentifier", traits: {"smithy.api#required" => {}}))
    ServiceResource.add_member(:input_source, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSource, name: "inputSource"))
    ServiceResource.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "resource", traits: {"smithy.api#required" => {}}))
    ServiceResource.type = Types::ServiceResource
    ServiceResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceResource, name: "member"))
    ServiceResourcesAssociatedMetadata.add_member(:resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "resourceCount"))
    ServiceResourcesAssociatedMetadata.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeList, name: "resourceTypes"))
    ServiceResourcesAssociatedMetadata.type = Types::ServiceResourcesAssociatedMetadata
    ServiceResourcesDisassociatedMetadata.add_member(:resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "resourceCount"))
    ServiceResourcesDisassociatedMetadata.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeList, name: "resourceTypes"))
    ServiceResourcesDisassociatedMetadata.type = Types::ServiceResourcesDisassociatedMetadata
    ServiceSummary.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    ServiceSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#required" => {}}))
    ServiceSummary.add_member(:associated_systems, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedSystemList, name: "associatedSystems"))
    ServiceSummary.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions"))
    ServiceSummary.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    ServiceSummary.add_member(:assessment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatus, name: "assessmentStatus"))
    ServiceSummary.add_member(:dev_ops_agent_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DevOpsAgentConnectionStatus, name: "devOpsAgentStatus"))
    ServiceSummary.add_member(:dev_ops_agent_space_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DevOpsAgentSpaceArn, name: "devOpsAgentSpaceArn"))
    ServiceSummary.add_member(:open_findings_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "openFindingsCount"))
    ServiceSummary.add_member(:resolved_findings_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "resolvedFindingsCount"))
    ServiceSummary.add_member(:dependency_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyDiscoveryConfig, name: "dependencyDiscovery"))
    ServiceSummary.add_member(:achievability, ::Smithy::Schema::Shapes::MemberShape.new(target: Achievability, name: "achievability"))
    ServiceSummary.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationId, name: "organizationId"))
    ServiceSummary.add_member(:ou_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OuId, name: "ouId"))
    ServiceSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    ServiceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    ServiceSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    ServiceSummary.type = Types::ServiceSummary
    ServiceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSummary, name: "member"))
    ServiceSystemAssociatedMetadata.add_member(:system_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "systemName"))
    ServiceSystemAssociatedMetadata.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn"))
    ServiceSystemAssociatedMetadata.type = Types::ServiceSystemAssociatedMetadata
    ServiceSystemDisassociatedMetadata.add_member(:system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "systemId"))
    ServiceSystemDisassociatedMetadata.add_member(:system_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "systemName"))
    ServiceSystemDisassociatedMetadata.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn"))
    ServiceSystemDisassociatedMetadata.type = Types::ServiceSystemDisassociatedMetadata
    ServiceTopologyEdgeSummary.add_member(:source_resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceResourceIdentifier", traits: {"smithy.api#required" => {}}))
    ServiceTopologyEdgeSummary.add_member(:destination_resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "destinationResourceIdentifier", traits: {"smithy.api#required" => {}}))
    ServiceTopologyEdgeSummary.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "sourceRegion"))
    ServiceTopologyEdgeSummary.add_member(:destination_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "destinationRegion"))
    ServiceTopologyEdgeSummary.add_member(:source_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "sourceAccount"))
    ServiceTopologyEdgeSummary.add_member(:destination_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "destinationAccount"))
    ServiceTopologyEdgeSummary.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: EdgePropertyList, name: "properties"))
    ServiceTopologyEdgeSummary.type = Types::ServiceTopologyEdgeSummary
    ServiceTopologyEdgeSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceTopologyEdgeSummary, name: "member"))
    ServiceWorkflowUpdatedMetadata.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceFunctionId"))
    ServiceWorkflowUpdatedMetadata.add_member(:service_function_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceFunctionName"))
    ServiceWorkflowUpdatedMetadata.type = Types::ServiceWorkflowUpdatedMetadata
    SloSource.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "value"))
    SloSource.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "policyName"))
    SloSource.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyValueSource, name: "source"))
    SloSource.type = Types::SloSource
    SortOrder.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    SortOrder.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    StartDependencyInsightsRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    StartDependencyInsightsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartDependencyInsightsRequest.type = Types::StartDependencyInsightsRequest
    StartDependencyInsightsResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyInsightsStatus, name: "status", traits: {"smithy.api#required" => {}}))
    StartDependencyInsightsResponse.type = Types::StartDependencyInsightsResponse
    StartFailureModeAssessmentRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    StartFailureModeAssessmentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartFailureModeAssessmentRequest.type = Types::StartFailureModeAssessmentRequest
    StartFailureModeAssessmentResponse.add_member(:assessment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assessmentId"))
    StartFailureModeAssessmentResponse.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn"))
    StartFailureModeAssessmentResponse.add_member(:assessment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatus, name: "assessmentStatus"))
    StartFailureModeAssessmentResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startedAt"))
    StartFailureModeAssessmentResponse.type = Types::StartFailureModeAssessmentResponse
    StartTestRunRequest.add_member(:test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestId, name: "testId", traits: {"smithy.api#required" => {}}))
    StartTestRunRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    StartTestRunRequest.type = Types::StartTestRunRequest
    StartTestRunResponse.add_member(:test_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunId, name: "testRunId", traits: {"smithy.api#required" => {}}))
    StartTestRunResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunStatus, name: "status", traits: {"smithy.api#required" => {}}))
    StartTestRunResponse.add_member(:experiment_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentArnList, name: "experimentArns", traits: {"smithy.api#required" => {}}))
    StartTestRunResponse.type = Types::StartTestRunResponse
    StopCondition.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: StopConditionSource, name: "source", traits: {"smithy.api#required" => {}}))
    StopCondition.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#required" => {}}))
    StopCondition.type = Types::StopCondition
    StopConditionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StopCondition, name: "member"))
    StopConditionSource.add_member(:aws_cloudwatch_alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_CLOUDWATCH_ALARM", traits: {"smithy.api#enumValue" => "aws:cloudwatch:alarm"}))
    StopConditionSource.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    StopTestRunRequest.add_member(:test_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunId, name: "testRunId", traits: {"smithy.api#required" => {}}))
    StopTestRunRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    StopTestRunRequest.type = Types::StopTestRunRequest
    StopTestRunResponse.add_member(:test_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunId, name: "testRunId", traits: {"smithy.api#required" => {}}))
    StopTestRunResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunStatus, name: "status", traits: {"smithy.api#required" => {}}))
    StopTestRunResponse.type = Types::StopTestRunResponse
    StringChange.add_member(:old_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "oldValue"))
    StringChange.add_member(:new_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "newValue"))
    StringChange.type = Types::StringChange
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "member"))
    SuccessCriteriaAlarmInput.add_member(:alarm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchAlarmArn, name: "alarmArn", traits: {"smithy.api#required" => {}}))
    SuccessCriteriaAlarmInput.type = Types::SuccessCriteriaAlarmInput
    SuccessCriteriaAlarmSummary.add_member(:alarm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchAlarmArn, name: "alarmArn", traits: {"smithy.api#required" => {}}))
    SuccessCriteriaAlarmSummary.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "alarmName", traits: {"smithy.api#required" => {}}))
    SuccessCriteriaAlarmSummary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region", traits: {"smithy.api#required" => {}}))
    SuccessCriteriaAlarmSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId", traits: {"smithy.api#required" => {}}))
    SuccessCriteriaAlarmSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    SuccessCriteriaAlarmSummary.type = Types::SuccessCriteriaAlarmSummary
    SuggestedChangesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "member"))
    System.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn", traits: {"smithy.api#required" => {}}))
    System.add_member(:system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemId, name: "systemId", traits: {"smithy.api#required" => {}}))
    System.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#required" => {}}))
    System.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    System.add_member(:sharing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "sharingEnabled"))
    System.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    System.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    System.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationId, name: "organizationId"))
    System.add_member(:ou_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OuId, name: "ouId"))
    System.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    System.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    System.type = Types::System
    SystemCreatedMetadata.type = Types::SystemCreatedMetadata
    SystemDeletedMetadata.type = Types::SystemDeletedMetadata
    SystemEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "eventId", traits: {"smithy.api#required" => {}}))
    SystemEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    SystemEvent.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemEventType, name: "eventType", traits: {"smithy.api#required" => {}}))
    SystemEvent.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn", traits: {"smithy.api#required" => {}}))
    SystemEvent.add_member(:actor, ::Smithy::Schema::Shapes::MemberShape.new(target: EventActor, name: "actor", traits: {"smithy.api#required" => {}}))
    SystemEvent.add_member(:event_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemEventDetails, name: "eventDetails", traits: {"smithy.api#required" => {}}))
    SystemEvent.type = Types::SystemEvent
    SystemEventDetails.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#required" => {}}))
    SystemEventDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    SystemEventDetails.add_member(:event_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemEventMetadata, name: "eventMetadata"))
    SystemEventDetails.type = Types::SystemEventDetails
    SystemEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemEvent, name: "member"))
    SystemEventMetadata.add_member(:system_created, Types::SystemEventMetadata::SystemCreated, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemCreatedMetadata, name: "systemCreated"))
    SystemEventMetadata.add_member(:system_deleted, Types::SystemEventMetadata::SystemDeleted, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemDeletedMetadata, name: "systemDeleted"))
    SystemEventMetadata.add_member(:system_user_journey_created, Types::SystemEventMetadata::SystemUserJourneyCreated, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemUserJourneyCreatedMetadata, name: "systemUserJourneyCreated"))
    SystemEventMetadata.add_member(:system_user_journey_updated, Types::SystemEventMetadata::SystemUserJourneyUpdated, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemUserJourneyUpdatedMetadata, name: "systemUserJourneyUpdated"))
    SystemEventMetadata.add_member(:system_user_journey_deleted, Types::SystemEventMetadata::SystemUserJourneyDeleted, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemUserJourneyDeletedMetadata, name: "systemUserJourneyDeleted"))
    SystemEventMetadata.add_member(:system_service_associated, Types::SystemEventMetadata::SystemServiceAssociated, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemServiceAssociatedMetadata, name: "systemServiceAssociated"))
    SystemEventMetadata.add_member(:system_service_disassociated, Types::SystemEventMetadata::SystemServiceDisassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemServiceDisassociatedMetadata, name: "systemServiceDisassociated"))
    SystemEventMetadata.add_member(:system_policy_associated, Types::SystemEventMetadata::SystemPolicyAssociated, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemPolicyAssociatedMetadata, name: "systemPolicyAssociated"))
    SystemEventMetadata.add_member(:system_policy_disassociated, Types::SystemEventMetadata::SystemPolicyDisassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemPolicyDisassociatedMetadata, name: "systemPolicyDisassociated"))
    SystemEventMetadata.add_member(:unknown, Types::SystemEventMetadata::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SystemEventMetadata.type = Types::SystemEventMetadata
    SystemEventType.add_member(:system_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM_CREATED", traits: {"smithy.api#enumValue" => "SYSTEM_CREATED"}))
    SystemEventType.add_member(:system_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM_DELETED", traits: {"smithy.api#enumValue" => "SYSTEM_DELETED"}))
    SystemEventType.add_member(:system_user_journey_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM_USER_JOURNEY_CREATED", traits: {"smithy.api#enumValue" => "SYSTEM_USER_JOURNEY_CREATED"}))
    SystemEventType.add_member(:system_user_journey_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM_USER_JOURNEY_UPDATED", traits: {"smithy.api#enumValue" => "SYSTEM_USER_JOURNEY_UPDATED"}))
    SystemEventType.add_member(:system_user_journey_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM_USER_JOURNEY_DELETED", traits: {"smithy.api#enumValue" => "SYSTEM_USER_JOURNEY_DELETED"}))
    SystemEventType.add_member(:system_service_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM_SERVICE_ASSOCIATED", traits: {"smithy.api#enumValue" => "SYSTEM_SERVICE_ASSOCIATED"}))
    SystemEventType.add_member(:system_service_disassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM_SERVICE_DISASSOCIATED", traits: {"smithy.api#enumValue" => "SYSTEM_SERVICE_DISASSOCIATED"}))
    SystemEventType.add_member(:system_policy_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM_POLICY_ASSOCIATED", traits: {"smithy.api#enumValue" => "SYSTEM_POLICY_ASSOCIATED"}))
    SystemEventType.add_member(:system_policy_disassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM_POLICY_DISASSOCIATED", traits: {"smithy.api#enumValue" => "SYSTEM_POLICY_DISASSOCIATED"}))
    SystemEventTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemEventType, name: "member"))
    SystemPolicyAssociatedMetadata.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policyName"))
    SystemPolicyAssociatedMetadata.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    SystemPolicyAssociatedMetadata.type = Types::SystemPolicyAssociatedMetadata
    SystemPolicyDisassociatedMetadata.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policyName"))
    SystemPolicyDisassociatedMetadata.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    SystemPolicyDisassociatedMetadata.type = Types::SystemPolicyDisassociatedMetadata
    SystemServiceAssociatedMetadata.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceName"))
    SystemServiceAssociatedMetadata.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn"))
    SystemServiceAssociatedMetadata.add_member(:user_journeys, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourneyNameList, name: "userJourneys"))
    SystemServiceAssociatedMetadata.type = Types::SystemServiceAssociatedMetadata
    SystemServiceDisassociatedMetadata.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceName"))
    SystemServiceDisassociatedMetadata.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn"))
    SystemServiceDisassociatedMetadata.add_member(:user_journeys_affected, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourneyNameList, name: "userJourneysAffected"))
    SystemServiceDisassociatedMetadata.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "comment"))
    SystemServiceDisassociatedMetadata.type = Types::SystemServiceDisassociatedMetadata
    SystemSummary.add_member(:system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemId, name: "systemId", traits: {"smithy.api#required" => {}}))
    SystemSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#required" => {}}))
    SystemSummary.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn"))
    SystemSummary.add_member(:user_journeys_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "userJourneysCount"))
    SystemSummary.add_member(:services_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "servicesCount"))
    SystemSummary.add_member(:organization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationId, name: "organizationId"))
    SystemSummary.add_member(:ou_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OuId, name: "ouId"))
    SystemSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    SystemSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    SystemSummary.type = Types::SystemSummary
    SystemSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemSummary, name: "member"))
    SystemUserJourneyCreatedMetadata.add_member(:user_journey_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "userJourneyName"))
    SystemUserJourneyCreatedMetadata.add_member(:associated_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceReferenceList, name: "associatedServices"))
    SystemUserJourneyCreatedMetadata.type = Types::SystemUserJourneyCreatedMetadata
    SystemUserJourneyDeletedMetadata.add_member(:user_journey_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "userJourneyName"))
    SystemUserJourneyDeletedMetadata.add_member(:associated_services_at_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceReferenceList, name: "associatedServicesAtDeletion"))
    SystemUserJourneyDeletedMetadata.type = Types::SystemUserJourneyDeletedMetadata
    SystemUserJourneyUpdatedMetadata.add_member(:user_journey_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "userJourneyName"))
    SystemUserJourneyUpdatedMetadata.add_member(:changes, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourneyChanges, name: "changes"))
    SystemUserJourneyUpdatedMetadata.type = Types::SystemUserJourneyUpdatedMetadata
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "member"))
    TargetSource.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "value"))
    TargetSource.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "policyName"))
    TargetSource.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyValueSource, name: "source"))
    TargetSource.type = Types::TargetSource
    Test.add_member(:test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestId, name: "testId", traits: {"smithy.api#required" => {}}))
    Test.add_member(:test_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceOwnedArn, name: "testTemplateArn", traits: {"smithy.api#required" => {}}))
    Test.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    Test.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    Test.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: TestActionList, name: "actions"))
    Test.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "loggingConfiguration"))
    Test.add_member(:stop_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: StopConditionList, name: "stopConditions"))
    Test.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleName, name: "roleName"))
    Test.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TestParameters, name: "parameters"))
    Test.add_member(:total_test_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalTestRuns", traits: {"smithy.api#required" => {}}))
    Test.add_member(:successful_test_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "successfulTestRuns", traits: {"smithy.api#required" => {}}))
    Test.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    Test.type = Types::Test
    TestAction.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "actionId", traits: {"smithy.api#required" => {}}))
    TestAction.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    TestAction.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    TestAction.type = Types::TestAction
    TestActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TestAction, name: "member"))
    TestParameters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterKey, name: "key"))
    TestParameters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "value"))
    TestRun.add_member(:test_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunId, name: "testRunId", traits: {"smithy.api#required" => {}}))
    TestRun.add_member(:test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestId, name: "testId", traits: {"smithy.api#required" => {}}))
    TestRun.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunStatus, name: "status", traits: {"smithy.api#required" => {}}))
    TestRun.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn"))
    TestRun.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startedAt", traits: {"smithy.api#required" => {}}))
    TestRun.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endedAt"))
    TestRun.add_member(:experiments, ::Smithy::Schema::Shapes::MemberShape.new(target: ExperimentDetailsList, name: "experiments"))
    TestRun.add_member(:event_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "eventCount"))
    TestRun.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TestParameters, name: "parameters"))
    TestRun.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    TestRun.add_member(:stop_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: StopConditionList, name: "stopConditions"))
    TestRun.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "loggingConfiguration"))
    TestRun.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleName, name: "roleName"))
    TestRun.add_member(:test_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceOwnedArn, name: "testTemplateArn", traits: {"smithy.api#required" => {}}))
    TestRun.add_member(:report_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunReportConfiguration, name: "reportConfiguration"))
    TestRun.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunPolicySnapshot, name: "policy"))
    TestRun.add_member(:report_output, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGenerationResult, name: "reportOutput"))
    TestRun.add_member(:region_switch_plan_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "regionSwitchPlanArn"))
    TestRun.add_member(:region_switch_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionSwitchExecutionId, name: "regionSwitchExecutionId"))
    TestRun.add_member(:permission_model, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionModel, name: "permissionModel"))
    TestRun.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions"))
    TestRun.add_member(:account_targeting, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountTargeting, name: "accountTargeting"))
    TestRun.add_member(:dev_ops_agent_investigation, ::Smithy::Schema::Shapes::MemberShape.new(target: DevOpsAgentInvestigation, name: "devOpsAgentInvestigation"))
    TestRun.type = Types::TestRun
    TestRunDependencySource.add_member(:discovered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISCOVERED", traits: {"smithy.api#enumValue" => "DISCOVERED"}))
    TestRunDependencySource.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANUAL", traits: {"smithy.api#enumValue" => "MANUAL"}))
    TestRunDependencySummary.add_member(:dependency_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "dependencyId"))
    TestRunDependencySummary.add_member(:dependency_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dependencyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    TestRunDependencySummary.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dnsName", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#required" => {}}))
    TestRunDependencySummary.add_member(:criticality, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyCriticality, name: "criticality", traits: {"smithy.api#required" => {}}))
    TestRunDependencySummary.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunDependencySource, name: "source", traits: {"smithy.api#required" => {}}))
    TestRunDependencySummary.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "location", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}}))
    TestRunDependencySummary.add_member(:source_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "sourceRegions"))
    TestRunDependencySummary.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "provider", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}}))
    TestRunDependencySummary.type = Types::TestRunDependencySummary
    TestRunDependencySummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunDependencySummary, name: "member"))
    TestRunEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eventId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#required" => {}}))
    TestRunEvent.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eventType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    TestRunEvent.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    TestRunEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    TestRunEvent.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunEventAttributes, name: "attributes"))
    TestRunEvent.type = Types::TestRunEvent
    TestRunEventAttributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunEventAttributeKey, name: "key"))
    TestRunEventAttributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunEventAttributeValue, name: "value"))
    TestRunEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunEvent, name: "member"))
    TestRunObservabilityAlarmSummary.add_member(:alarm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchAlarmArn, name: "alarmArn", traits: {"smithy.api#required" => {}}))
    TestRunObservabilityAlarmSummary.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "alarmName", traits: {"smithy.api#required" => {}}))
    TestRunObservabilityAlarmSummary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region", traits: {"smithy.api#required" => {}}))
    TestRunObservabilityAlarmSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId", traits: {"smithy.api#required" => {}}))
    TestRunObservabilityAlarmSummary.type = Types::TestRunObservabilityAlarmSummary
    TestRunPolicySnapshot.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    TestRunPolicySnapshot.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name"))
    TestRunPolicySnapshot.add_member(:availability_slo, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilitySlo, name: "availabilitySlo"))
    TestRunPolicySnapshot.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiAzTargets, name: "multiAz"))
    TestRunPolicySnapshot.add_member(:multi_region, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionTargets, name: "multiRegion"))
    TestRunPolicySnapshot.add_member(:data_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRecoveryTargets, name: "dataRecovery"))
    TestRunPolicySnapshot.type = Types::TestRunPolicySnapshot
    TestRunReportConfiguration.add_member(:report_output, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportOutputConfigurationList, name: "reportOutput", traits: {"smithy.api#required" => {}}))
    TestRunReportConfiguration.type = Types::TestRunReportConfiguration
    TestRunSourceEvent.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    TestRunSourceEvent.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunSourceArn, name: "sourceArn", traits: {"smithy.api#required" => {}}))
    TestRunSourceEvent.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunSourceEventType, name: "eventType", traits: {"smithy.api#required" => {}}))
    TestRunSourceEvent.add_member(:detail, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunSourceEventDetail, name: "detail", traits: {"smithy.api#required" => {}}))
    TestRunSourceEvent.type = Types::TestRunSourceEvent
    TestRunSourceEventDetail.add_member(:alarm_state_change, Types::TestRunSourceEventDetail::AlarmStateChange, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmStateChangeDetail, name: "alarmStateChange"))
    TestRunSourceEventDetail.add_member(:error, Types::TestRunSourceEventDetail::Error, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunSourceEventError, name: "error"))
    TestRunSourceEventDetail.add_member(:unknown, Types::TestRunSourceEventDetail::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TestRunSourceEventDetail.type = Types::TestRunSourceEventDetail
    TestRunSourceEventError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunSourceEventErrorCode, name: "errorCode", traits: {"smithy.api#required" => {}}))
    TestRunSourceEventError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#required" => {}}))
    TestRunSourceEventError.type = Types::TestRunSourceEventError
    TestRunSourceEventErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    TestRunSourceEventErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    TestRunSourceEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunSourceEvent, name: "member"))
    TestRunSourceEventType.add_member(:alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALARM", traits: {"smithy.api#enumValue" => "ALARM"}))
    TestRunSourceSummary.add_member(:success_criteria_alarm, Types::TestRunSourceSummary::SuccessCriteriaAlarm, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunSuccessCriteriaAlarmSummary, name: "successCriteriaAlarm"))
    TestRunSourceSummary.add_member(:observability_alarm, Types::TestRunSourceSummary::ObservabilityAlarm, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunObservabilityAlarmSummary, name: "observabilityAlarm"))
    TestRunSourceSummary.add_member(:unknown, Types::TestRunSourceSummary::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TestRunSourceSummary.type = Types::TestRunSourceSummary
    TestRunSourceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunSourceSummary, name: "member"))
    TestRunSourceType.add_member(:success_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS_CRITERIA", traits: {"smithy.api#enumValue" => "SUCCESS_CRITERIA"}))
    TestRunSourceType.add_member(:observability, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OBSERVABILITY", traits: {"smithy.api#enumValue" => "OBSERVABILITY"}))
    TestRunStatus.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIALIZING", traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    TestRunStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    TestRunStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    TestRunStatus.add_member(:passed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSED", traits: {"smithy.api#enumValue" => "PASSED"}))
    TestRunStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TestRunStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    TestRunStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    TestRunSuccessCriteriaAlarmSummary.add_member(:alarm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchAlarmArn, name: "alarmArn", traits: {"smithy.api#required" => {}}))
    TestRunSuccessCriteriaAlarmSummary.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "alarmName", traits: {"smithy.api#required" => {}}))
    TestRunSuccessCriteriaAlarmSummary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "region", traits: {"smithy.api#required" => {}}))
    TestRunSuccessCriteriaAlarmSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId", traits: {"smithy.api#required" => {}}))
    TestRunSuccessCriteriaAlarmSummary.add_member(:outcome, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSourceOutcome, name: "outcome"))
    TestRunSuccessCriteriaAlarmSummary.add_member(:outcome_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "outcomeReason"))
    TestRunSuccessCriteriaAlarmSummary.type = Types::TestRunSuccessCriteriaAlarmSummary
    TestRunSummary.add_member(:test_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunId, name: "testRunId", traits: {"smithy.api#required" => {}}))
    TestRunSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunStatus, name: "status", traits: {"smithy.api#required" => {}}))
    TestRunSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startedAt", traits: {"smithy.api#required" => {}}))
    TestRunSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endedAt"))
    TestRunSummary.add_member(:test_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceOwnedArn, name: "testTemplateArn", traits: {"smithy.api#required" => {}}))
    TestRunSummary.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn"))
    TestRunSummary.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    TestRunSummary.add_member(:account_targeting, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountTargeting, name: "accountTargeting"))
    TestRunSummary.type = Types::TestRunSummary
    TestRunSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRunSummary, name: "member"))
    TestSourceInput.add_member(:success_criteria_alarm, Types::TestSourceInput::SuccessCriteriaAlarm, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessCriteriaAlarmInput, name: "successCriteriaAlarm"))
    TestSourceInput.add_member(:observability_alarm, Types::TestSourceInput::ObservabilityAlarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ObservabilityAlarmInput, name: "observabilityAlarm"))
    TestSourceInput.add_member(:unknown, Types::TestSourceInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TestSourceInput.type = Types::TestSourceInput
    TestSourceInputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSourceInput, name: "member"))
    TestSourceOutcome.add_member(:passed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSED", traits: {"smithy.api#enumValue" => "PASSED"}))
    TestSourceOutcome.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TestSourceOutcome.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    TestSourceSummary.add_member(:success_criteria_alarm, Types::TestSourceSummary::SuccessCriteriaAlarm, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessCriteriaAlarmSummary, name: "successCriteriaAlarm"))
    TestSourceSummary.add_member(:observability_alarm, Types::TestSourceSummary::ObservabilityAlarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ObservabilityAlarmSummary, name: "observabilityAlarm"))
    TestSourceSummary.add_member(:unknown, Types::TestSourceSummary::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TestSourceSummary.type = Types::TestSourceSummary
    TestSourceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSourceSummary, name: "member"))
    TestSourceType.add_member(:success_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS_CRITERIA", traits: {"smithy.api#enumValue" => "SUCCESS_CRITERIA"}))
    TestSourceType.add_member(:observability, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OBSERVABILITY", traits: {"smithy.api#enumValue" => "OBSERVABILITY"}))
    TestSummary.add_member(:test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestId, name: "testId", traits: {"smithy.api#required" => {}}))
    TestSummary.add_member(:test_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceOwnedArn, name: "testTemplateArn", traits: {"smithy.api#required" => {}}))
    TestSummary.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    TestSummary.add_member(:total_test_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalTestRuns", traits: {"smithy.api#required" => {}}))
    TestSummary.add_member(:successful_test_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "successfulTestRuns", traits: {"smithy.api#required" => {}}))
    TestSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    TestSummary.type = Types::TestSummary
    TestSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TestSummary, name: "member"))
    TestTemplate.add_member(:test_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceOwnedArn, name: "testTemplateArn", traits: {"smithy.api#required" => {}}))
    TestTemplate.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    TestTemplate.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    TestTemplate.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TestTemplateParameterList, name: "parameters"))
    TestTemplate.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: TestActionList, name: "actions"))
    TestTemplate.type = Types::TestTemplate
    TestTemplateParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    TestTemplateParameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    TestTemplateParameter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterType, name: "type", traits: {"smithy.api#required" => {}}))
    TestTemplateParameter.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "required", traits: {"smithy.api#required" => {}}))
    TestTemplateParameter.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "defaultValue"))
    TestTemplateParameter.add_member(:max_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxValues"))
    TestTemplateParameter.type = Types::TestTemplateParameter
    TestTemplateParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TestTemplateParameter, name: "member"))
    TestTemplateSummary.add_member(:test_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceOwnedArn, name: "testTemplateArn", traits: {"smithy.api#required" => {}}))
    TestTemplateSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    TestTemplateSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    TestTemplateSummary.type = Types::TestTemplateSummary
    TestTemplateSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TestTemplateSummary, name: "member"))
    TestingRecommendation.add_member(:suggested_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestedChangesList, name: "suggestedChanges"))
    TestingRecommendation.type = Types::TestingRecommendation
    TestingRecommendationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TestingRecommendation, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds"))
    ThrottlingException.type = Types::ThrottlingException
    TopologyType.add_member(:containment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINMENT", traits: {"smithy.api#enumValue" => "CONTAINMENT"}))
    TopologyType.add_member(:data_flow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_FLOW", traits: {"smithy.api#enumValue" => "DATA_FLOW"}))
    TopologyType.add_member(:observability, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OBSERVABILITY", traits: {"smithy.api#enumValue" => "OBSERVABILITY"}))
    TopologyType.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERMISSIONS", traits: {"smithy.api#enumValue" => "PERMISSIONS"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAssertionRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    UpdateAssertionRequest.add_member(:assertion_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "assertionId", traits: {"smithy.api#required" => {}}))
    UpdateAssertionRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionText, name: "text"))
    UpdateAssertionRequest.type = Types::UpdateAssertionRequest
    UpdateAssertionResponse.add_member(:assertion, ::Smithy::Schema::Shapes::MemberShape.new(target: Assertion, name: "assertion", traits: {"smithy.api#required" => {}}))
    UpdateAssertionResponse.type = Types::UpdateAssertionResponse
    UpdateDependencyRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    UpdateDependencyRequest.add_member(:dependency_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "dependencyId", traits: {"smithy.api#required" => {}}))
    UpdateDependencyRequest.add_member(:criticality, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyCriticality, name: "criticality"))
    UpdateDependencyRequest.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "comment"))
    UpdateDependencyRequest.type = Types::UpdateDependencyRequest
    UpdateDependencyResponse.add_member(:dependency_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "dependencyId", traits: {"smithy.api#required" => {}}))
    UpdateDependencyResponse.add_member(:dependency_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dependencyName", traits: {"smithy.api#required" => {}}))
    UpdateDependencyResponse.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "location", traits: {"smithy.api#required" => {}}))
    UpdateDependencyResponse.add_member(:criticality, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyCriticality, name: "criticality", traits: {"smithy.api#required" => {}}))
    UpdateDependencyResponse.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "comment"))
    UpdateDependencyResponse.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "provider"))
    UpdateDependencyResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateDependencyResponse.type = Types::UpdateDependencyResponse
    UpdateFailureModeFindingRequest.add_member(:finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "findingId", traits: {"smithy.api#required" => {}}))
    UpdateFailureModeFindingRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateFailureModeFindingRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    UpdateFailureModeFindingRequest.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "comment", traits: {"smithy.api#length" => {"max" => 2048}}))
    UpdateFailureModeFindingRequest.type = Types::UpdateFailureModeFindingRequest
    UpdateFailureModeFindingResponse.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: Finding, name: "finding"))
    UpdateFailureModeFindingResponse.type = Types::UpdateFailureModeFindingResponse
    UpdatePolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn", traits: {"smithy.api#required" => {}}))
    UpdatePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LongDescription, name: "description"))
    UpdatePolicyRequest.add_member(:availability_slo, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilitySlo, name: "availabilitySlo"))
    UpdatePolicyRequest.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiAzTargets, name: "multiAz"))
    UpdatePolicyRequest.add_member(:multi_region, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionTargets, name: "multiRegion"))
    UpdatePolicyRequest.add_member(:data_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRecoveryTargets, name: "dataRecovery"))
    UpdatePolicyRequest.add_member(:sharing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "sharingEnabled"))
    UpdatePolicyRequest.type = Types::UpdatePolicyRequest
    UpdatePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "policy", traits: {"smithy.api#required" => {}}))
    UpdatePolicyResponse.type = Types::UpdatePolicyResponse
    UpdateServiceFunctionRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    UpdateServiceFunctionRequest.add_member(:service_function_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "serviceFunctionId", traits: {"smithy.api#required" => {}}))
    UpdateServiceFunctionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityLabel, name: "name"))
    UpdateServiceFunctionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    UpdateServiceFunctionRequest.add_member(:criticality, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFunctionCriticality, name: "criticality"))
    UpdateServiceFunctionRequest.type = Types::UpdateServiceFunctionRequest
    UpdateServiceFunctionResponse.add_member(:service_function, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFunction, name: "serviceFunction", traits: {"smithy.api#required" => {}}))
    UpdateServiceFunctionResponse.type = Types::UpdateServiceFunctionResponse
    UpdateServiceRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    UpdateServiceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: LongDescription, name: "description"))
    UpdateServiceRequest.add_member(:associated_systems, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedSystemList, name: "associatedSystems"))
    UpdateServiceRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    UpdateServiceRequest.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions"))
    UpdateServiceRequest.add_member(:permission_model, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionModel, name: "permissionModel"))
    UpdateServiceRequest.add_member(:dependency_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyDiscoveryInput, name: "dependencyDiscovery"))
    UpdateServiceRequest.add_member(:report_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceReportConfiguration, name: "reportConfiguration"))
    UpdateServiceRequest.add_member(:dev_ops_agent_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DevOpsAgentConfiguration, name: "devOpsAgentConfiguration"))
    UpdateServiceRequest.type = Types::UpdateServiceRequest
    UpdateServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service", traits: {"smithy.api#required" => {}}))
    UpdateServiceResponse.type = Types::UpdateServiceResponse
    UpdateSystemRequest.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn", traits: {"smithy.api#required" => {}}))
    UpdateSystemRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    UpdateSystemRequest.add_member(:sharing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "sharingEnabled"))
    UpdateSystemRequest.type = Types::UpdateSystemRequest
    UpdateSystemResponse.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: System, name: "system", traits: {"smithy.api#required" => {}}))
    UpdateSystemResponse.type = Types::UpdateSystemResponse
    UpdateTestRequest.add_member(:test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestId, name: "testId", traits: {"smithy.api#required" => {}}))
    UpdateTestRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    UpdateTestRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingConfiguration, name: "loggingConfiguration"))
    UpdateTestRequest.add_member(:stop_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: StopConditionList, name: "stopConditions"))
    UpdateTestRequest.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleName, name: "roleName"))
    UpdateTestRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: TestParameters, name: "parameters"))
    UpdateTestRequest.type = Types::UpdateTestRequest
    UpdateTestResponse.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: Test, name: "test", traits: {"smithy.api#required" => {}}))
    UpdateTestResponse.type = Types::UpdateTestResponse
    UpdateUserJourneyRequest.add_member(:system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "systemArn", traits: {"smithy.api#required" => {}}))
    UpdateUserJourneyRequest.add_member(:user_journey_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourneyId, name: "userJourneyId", traits: {"smithy.api#required" => {}}))
    UpdateUserJourneyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityLabel, name: "name"))
    UpdateUserJourneyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    UpdateUserJourneyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    UpdateUserJourneyRequest.type = Types::UpdateUserJourneyRequest
    UpdateUserJourneyResponse.add_member(:user_journey, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourney, name: "userJourney", traits: {"smithy.api#required" => {}}))
    UpdateUserJourneyResponse.type = Types::UpdateUserJourneyResponse
    UserJourney.add_member(:user_journey_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourneyId, name: "userJourneyId", traits: {"smithy.api#required" => {}}))
    UserJourney.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityLabel, name: "name", traits: {"smithy.api#required" => {}}))
    UserJourney.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    UserJourney.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    UserJourney.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    UserJourney.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    UserJourney.type = Types::UserJourney
    UserJourneyChanges.add_member(:journey_description, ::Smithy::Schema::Shapes::MemberShape.new(target: StringChange, name: "journeyDescription"))
    UserJourneyChanges.add_member(:associated_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceReferenceChanges, name: "associatedServices"))
    UserJourneyChanges.type = Types::UserJourneyChanges
    UserJourneyIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourneyId, name: "member"))
    UserJourneyNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    UserJourneySummary.add_member(:user_journey_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourneyId, name: "userJourneyId", traits: {"smithy.api#required" => {}}))
    UserJourneySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityLabel, name: "name", traits: {"smithy.api#required" => {}}))
    UserJourneySummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt"))
    UserJourneySummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt"))
    UserJourneySummary.type = Types::UserJourneySummary
    UserJourneySummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserJourneySummary, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason"))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:invalid_field_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_FIELD_VALUE", traits: {"smithy.api#enumValue" => "INVALID_FIELD_VALUE"}))
    ValidationExceptionReason.add_member(:duplicate_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_VALUE", traits: {"smithy.api#enumValue" => "DUPLICATE_VALUE"}))
    ValidationExceptionReason.add_member(:missing_required_field, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_REQUIRED_FIELD", traits: {"smithy.api#enumValue" => "MISSING_REQUIRED_FIELD"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))

    NGRHServiceCore = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.resiliencehubv2#NGRHServiceCore"
      service.name = "NGRHServiceCore"
      service.version = "2026-02-17"
      service.traits = {"aws.api#service" => {"sdkId" => "resiliencehubv2", "arnNamespace" => "resiliencehub", "cloudFormationName" => "Resiliencehub", "endpointPrefix" => "resiliencehub", "cloudTrailEventSource" => "resiliencehub.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "resiliencehub"}, "aws.iam#defineConditionKeys" => {"aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags that are passed in the request", "externalDocumentation" => "https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags associated with the resource", "externalDocumentation" => "https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access based on the tag keys that are passed in the request", "externalDocumentation" => "https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*,authorization,date,x-amz-date,x-amz-security-token,x-amz-target,content-type,x-amz-content-sha256,x-amz-user-agent,x-amzn-platform-id,x-amzn-trace-id,amz-sdk-invocation-id,amz-sdk-request"]}, "smithy.api#title" => "AWS Resilience Hub V2", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://resiliencehub-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://resiliencehub-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://resiliencehub.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://resiliencehub.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_assertion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#CreateAssertion"
        operation.name = "CreateAssertion"
        operation.input = CreateAssertionRequest
        operation.output = CreateAssertionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create an assertion for a service", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/create-assertion"}}
      end)
      service.add_operation(:create_input_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#CreateInputSource"
        operation.name = "CreateInputSource"
        operation.input = CreateInputSourceRequest
        operation.output = CreateInputSourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create an input source for a service", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/create-input-source"}}
      end)
      service.add_operation(:create_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#CreatePolicy"
        operation.name = "CreatePolicy"
        operation.input = CreatePolicyRequest
        operation.output = CreatePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a resilience policy that defines availability and disaster recovery requirements", "resources" => {"required" => {"policy" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"]}}}, "createsResources" => ["policy"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/create-policy"}}
      end)
      service.add_operation(:create_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#CreateReport"
        operation.name = "CreateReport"
        operation.input = CreateReportRequest
        operation.output = CreateReportResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a report for a service", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/create-report"}}
      end)
      service.add_operation(:create_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#CreateService"
        operation.name = "CreateService"
        operation.input = CreateServiceRequest
        operation.output = CreateServiceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a service", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"]}}, "optional" => {"policy" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}, "system" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}, "createsResources" => ["service"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/create-service"}}
      end)
      service.add_operation(:create_service_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#CreateServiceFunction"
        operation.name = "CreateServiceFunction"
        operation.input = CreateServiceFunctionRequest
        operation.output = CreateServiceFunctionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a service function", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/create-service-function"}}
      end)
      service.add_operation(:create_service_function_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#CreateServiceFunctionResources"
        operation.name = "CreateServiceFunctionResources"
        operation.input = CreateServiceFunctionResourcesRequest
        operation.output = CreateServiceFunctionResourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create service function resources", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/create-service-function-resources"}}
      end)
      service.add_operation(:create_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#CreateSystem"
        operation.name = "CreateSystem"
        operation.input = CreateSystemRequest
        operation.output = CreateSystemResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a system that represents a logical grouping of services", "resources" => {"required" => {"system" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"]}}}, "createsResources" => ["system"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/create-system"}}
      end)
      service.add_operation(:create_test, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#CreateTest"
        operation.name = "CreateTest"
        operation.input = CreateTestRequest
        operation.output = CreateTestResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a test instance", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}, "test-template" => {}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/create-test"}}
      end)
      service.add_operation(:create_user_journey, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#CreateUserJourney"
        operation.name = "CreateUserJourney"
        operation.input = CreateUserJourneyRequest
        operation.output = CreateUserJourneyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a user journey within a system", "resources" => {"required" => {"system" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}, "optional" => {"policy" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/create-user-journey"}}
      end)
      service.add_operation(:delete_assertion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#DeleteAssertion"
        operation.name = "DeleteAssertion"
        operation.input = DeleteAssertionRequest
        operation.output = DeleteAssertionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an assertion", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/delete-assertion"}}
      end)
      service.add_operation(:delete_input_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#DeleteInputSource"
        operation.name = "DeleteInputSource"
        operation.input = DeleteInputSourceRequest
        operation.output = DeleteInputSourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an input source", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/delete-input-source"}}
      end)
      service.add_operation(:delete_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#DeletePolicy"
        operation.name = "DeletePolicy"
        operation.input = DeletePolicyRequest
        operation.output = DeletePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a resilience policy", "resources" => {"required" => {"policy" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/delete-policy"}}
      end)
      service.add_operation(:delete_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#DeleteService"
        operation.name = "DeleteService"
        operation.input = DeleteServiceRequest
        operation.output = DeleteServiceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a service", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/delete-service"}}
      end)
      service.add_operation(:delete_service_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#DeleteServiceFunction"
        operation.name = "DeleteServiceFunction"
        operation.input = DeleteServiceFunctionRequest
        operation.output = DeleteServiceFunctionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a service function", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/delete-function"}}
      end)
      service.add_operation(:delete_service_function_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#DeleteServiceFunctionResources"
        operation.name = "DeleteServiceFunctionResources"
        operation.input = DeleteServiceFunctionResourcesRequest
        operation.output = DeleteServiceFunctionResourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete service function resources", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/delete-service-function-resources"}}
      end)
      service.add_operation(:delete_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#DeleteSystem"
        operation.name = "DeleteSystem"
        operation.input = DeleteSystemRequest
        operation.output = DeleteSystemResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a system", "resources" => {"required" => {"system" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/delete-system"}}
      end)
      service.add_operation(:delete_test, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#DeleteTest"
        operation.name = "DeleteTest"
        operation.input = DeleteTestRequest
        operation.output = DeleteTestResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a test", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/delete-test"}}
      end)
      service.add_operation(:delete_test_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#DeleteTestSources"
        operation.name = "DeleteTestSources"
        operation.input = DeleteTestSourcesRequest
        operation.output = DeleteTestSourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete test sources from a test", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/delete-test-sources"}}
      end)
      service.add_operation(:delete_user_journey, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#DeleteUserJourney"
        operation.name = "DeleteUserJourney"
        operation.input = DeleteUserJourneyRequest
        operation.output = DeleteUserJourneyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a user journey", "resources" => {"required" => {"system" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/delete-user-journey"}}
      end)
      service.add_operation(:get_dependency_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#GetDependencyInsights"
        operation.name = "GetDependencyInsights"
        operation.input = GetDependencyInsightsRequest
        operation.output = GetDependencyInsightsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get dependency insights for a service", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/get-dependency-insights"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_failure_mode_finding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#GetFailureModeFinding"
        operation.name = "GetFailureModeFinding"
        operation.input = GetFailureModeFindingRequest
        operation.output = GetFailureModeFindingResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a failure mode finding", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/get-failure-mode-finding"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#GetPolicy"
        operation.name = "GetPolicy"
        operation.input = GetPolicyRequest
        operation.output = GetPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a resilience policy", "resources" => {"required" => {"policy" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/get-policy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#GetService"
        operation.name = "GetService"
        operation.input = GetServiceRequest
        operation.output = GetServiceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a service", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/get-service"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#GetSystem"
        operation.name = "GetSystem"
        operation.input = GetSystemRequest
        operation.output = GetSystemResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a system", "resources" => {"required" => {"system" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/get-system"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_test, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#GetTest"
        operation.name = "GetTest"
        operation.input = GetTestRequest
        operation.output = GetTestResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a test", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/get-test"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_test_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#GetTestRun"
        operation.name = "GetTestRun"
        operation.input = GetTestRunRequest
        operation.output = GetTestRunResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a test run", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/get-test-run"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_test_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#GetTestTemplate"
        operation.name = "GetTestTemplate"
        operation.input = GetTestTemplateRequest
        operation.output = GetTestTemplateResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a test template"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/get-test-template"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_user_journey, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#GetUserJourney"
        operation.name = "GetUserJourney"
        operation.input = GetUserJourneyRequest
        operation.output = GetUserJourneyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a user journey", "resources" => {"required" => {"system" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/get-user-journey"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ImportApp"
        operation.name = "ImportApp"
        operation.input = ImportAppRequest
        operation.output = ImportAppResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to import a V1 app into the V2 resource model", "resources" => {"required" => {"application" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}, "service" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"]}}}, "createsResources" => ["service"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/import-app"}}
      end)
      service.add_operation(:import_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ImportPolicy"
        operation.name = "ImportPolicy"
        operation.input = ImportPolicyRequest
        operation.output = ImportPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to import a V1 policy into V2", "resources" => {"required" => {"resiliency-policy" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}, "policy" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"]}}}, "createsResources" => ["policy"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/import-policy"}}
      end)
      service.add_operation(:list_assertions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListAssertions"
        operation.name = "ListAssertions"
        operation.input = ListAssertionsRequest
        operation.output = ListAssertionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list assertions for a service", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-assertions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAssertions.new
      end)
      service.add_operation(:list_dependencies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListDependencies"
        operation.name = "ListDependencies"
        operation.input = ListDependenciesRequest
        operation.output = ListDependenciesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list dependencies discovered for services"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-dependencies"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDependencies.new
      end)
      service.add_operation(:list_failure_mode_assessments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListFailureModeAssessments"
        operation.name = "ListFailureModeAssessments"
        operation.input = ListFailureModeAssessmentsRequest
        operation.output = ListFailureModeAssessmentsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list failure mode assessments", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-failure-mode-assessments"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFailureModeAssessments.new
      end)
      service.add_operation(:list_failure_mode_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListFailureModeFindings"
        operation.name = "ListFailureModeFindings"
        operation.input = ListFailureModeFindingsRequest
        operation.output = ListFailureModeFindingsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list failure mode findings", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-failure-mode-findings"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFailureModeFindings.new
      end)
      service.add_operation(:list_input_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListInputSources"
        operation.name = "ListInputSources"
        operation.input = ListInputSourcesRequest
        operation.output = ListInputSourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list input sources for a service", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-input-sources"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListInputSources.new
      end)
      service.add_operation(:list_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListPolicies"
        operation.name = "ListPolicies"
        operation.input = ListPoliciesRequest
        operation.output = ListPoliciesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list resilience policies"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-policies"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListPoliciesSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
        operation[:paginator] = Paginators::ListPolicies.new
      end)
      service.add_operation(:list_policy_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListPolicyEvents"
        operation.name = "ListPolicyEvents"
        operation.input = ListPolicyEventsRequest
        operation.output = ListPolicyEventsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list events for a resilience policy", "resources" => {"required" => {"policy" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-policy-events"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPolicyEvents.new
      end)
      service.add_operation(:list_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListReports"
        operation.name = "ListReports"
        operation.input = ListReportsRequest
        operation.output = ListReportsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list reports", "resources" => {"optional" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-reports"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReports.new
      end)
      service.add_operation(:list_resolved_test_run_target_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListResolvedTestRunTargetResources"
        operation.name = "ListResolvedTestRunTargetResources"
        operation.input = ListResolvedTestRunTargetResourcesRequest
        operation.output = ListResolvedTestRunTargetResourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list resolved target resources for a test run", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/test-runs/{testRunId}/resolved-target-resources"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResolvedTestRunTargetResources.new
      end)
      service.add_operation(:list_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListResources"
        operation.name = "ListResources"
        operation.input = ListResourcesRequest
        operation.output = ListResourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list resources for a service", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-resources"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResources.new
      end)
      service.add_operation(:list_service_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListServiceEvents"
        operation.name = "ListServiceEvents"
        operation.input = ListServiceEventsRequest
        operation.output = ListServiceEventsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list events for a service", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-service-events"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceEvents.new
      end)
      service.add_operation(:list_service_functions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListServiceFunctions"
        operation.name = "ListServiceFunctions"
        operation.input = ListServiceFunctionsRequest
        operation.output = ListServiceFunctionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list service functions", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-functions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceFunctions.new
      end)
      service.add_operation(:list_service_topology_edges, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListServiceTopologyEdges"
        operation.name = "ListServiceTopologyEdges"
        operation.input = ListServiceTopologyEdgesRequest
        operation.output = ListServiceTopologyEdgesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list service topology edges", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-service-topology-edges"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServiceTopologyEdges.new
      end)
      service.add_operation(:list_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListServices"
        operation.name = "ListServices"
        operation.input = ListServicesRequest
        operation.output = ListServicesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list services"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-services"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_system_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListSystemEvents"
        operation.name = "ListSystemEvents"
        operation.input = ListSystemEventsRequest
        operation.output = ListSystemEventsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list events for a system", "resources" => {"required" => {"system" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-system-events"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSystemEvents.new
      end)
      service.add_operation(:list_systems, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListSystems"
        operation.name = "ListSystems"
        operation.input = ListSystemsRequest
        operation.output = ListSystemsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list systems"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-systems"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSystems.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list tags for a resource", "resources" => {"optional" => {"system" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}, "service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}, "policy" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_test_run_dependencies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListTestRunDependencies"
        operation.name = "ListTestRunDependencies"
        operation.input = ListTestRunDependenciesRequest
        operation.output = ListTestRunDependenciesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list snapshotted dependencies for a test run", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/test-runs/{testRunId}/dependencies"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTestRunDependencies.new
      end)
      service.add_operation(:list_test_run_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListTestRunEvents"
        operation.name = "ListTestRunEvents"
        operation.input = ListTestRunEventsRequest
        operation.output = ListTestRunEventsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list events for a test run", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/test-runs/{testRunId}/events"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTestRunEvents.new
      end)
      service.add_operation(:list_test_run_source_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListTestRunSourceEvents"
        operation.name = "ListTestRunSourceEvents"
        operation.input = ListTestRunSourceEventsRequest
        operation.output = ListTestRunSourceEventsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list source state-change events for a test run", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/test-runs/{testRunId}/source-events"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTestRunSourceEvents.new
      end)
      service.add_operation(:list_test_run_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListTestRunSources"
        operation.name = "ListTestRunSources"
        operation.input = ListTestRunSourcesRequest
        operation.output = ListTestRunSourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list test run source snapshots", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/test-runs/{testRunId}/sources"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTestRunSources.new
      end)
      service.add_operation(:list_test_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListTestRuns"
        operation.name = "ListTestRuns"
        operation.input = ListTestRunsRequest
        operation.output = ListTestRunsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list test runs for a target", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-test-runs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTestRuns.new
      end)
      service.add_operation(:list_test_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListTestSources"
        operation.name = "ListTestSources"
        operation.input = ListTestSourcesRequest
        operation.output = ListTestSourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list test sources on a test", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/tests/{testId}/sources"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTestSources.new
      end)
      service.add_operation(:list_test_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListTestTemplates"
        operation.name = "ListTestTemplates"
        operation.input = ListTestTemplatesRequest
        operation.output = ListTestTemplatesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list available test templates"}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-test-templates"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_tests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListTests"
        operation.name = "ListTests"
        operation.input = ListTestsRequest
        operation.output = ListTestsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list tests for a target", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-tests"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTests.new
      end)
      service.add_operation(:list_user_journeys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#ListUserJourneys"
        operation.name = "ListUserJourneys"
        operation.input = ListUserJourneysRequest
        operation.output = ListUserJourneysResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list user journeys for a system", "resources" => {"required" => {"system" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "GET", "uri" => "/v2/list-user-journeys"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListUserJourneys.new
      end)
      service.add_operation(:put_test_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#PutTestSources"
        operation.name = "PutTestSources"
        operation.input = PutTestSourcesRequest
        operation.output = PutTestSourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to put test sources on a test", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/put-test-sources"}}
      end)
      service.add_operation(:start_dependency_insights, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#StartDependencyInsights"
        operation.name = "StartDependencyInsights"
        operation.input = StartDependencyInsightsRequest
        operation.output = StartDependencyInsightsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to start dependency insights generation for a service", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/start-dependency-insights", "code" => 202}}
      end)
      service.add_operation(:start_failure_mode_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#StartFailureModeAssessment"
        operation.name = "StartFailureModeAssessment"
        operation.input = StartFailureModeAssessmentRequest
        operation.output = StartFailureModeAssessmentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to start a failure mode assessment", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/start-failure-mode-assessment"}}
      end)
      service.add_operation(:start_test_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#StartTestRun"
        operation.name = "StartTestRun"
        operation.input = StartTestRunRequest
        operation.output = StartTestRunResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to start a test run", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/start-test-run"}}
      end)
      service.add_operation(:stop_test_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#StopTestRun"
        operation.name = "StopTestRun"
        operation.input = StopTestRunRequest
        operation.output = StopTestRunResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to stop a test run", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/stop-test-run"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to tag a resource", "resources" => {"optional" => {"system" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "aws:ResourceTag/${TagKey}"]}, "service" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "aws:ResourceTag/${TagKey}"]}, "policy" => {"conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from a resource", "resources" => {"optional" => {"system" => {"conditionKeys" => ["aws:TagKeys", "aws:ResourceTag/${TagKey}"]}, "service" => {"conditionKeys" => ["aws:TagKeys", "aws:ResourceTag/${TagKey}"]}, "policy" => {"conditionKeys" => ["aws:TagKeys", "aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/v2/tags/{resourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_assertion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#UpdateAssertion"
        operation.name = "UpdateAssertion"
        operation.input = UpdateAssertionRequest
        operation.output = UpdateAssertionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update an assertion", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/update-assertion"}}
      end)
      service.add_operation(:update_dependency, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#UpdateDependency"
        operation.name = "UpdateDependency"
        operation.input = UpdateDependencyRequest
        operation.output = UpdateDependencyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a dependency classification", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/update-dependency"}}
      end)
      service.add_operation(:update_failure_mode_finding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#UpdateFailureModeFinding"
        operation.name = "UpdateFailureModeFinding"
        operation.input = UpdateFailureModeFindingRequest
        operation.output = UpdateFailureModeFindingResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a failure mode finding", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/update-failure-mode-finding"}}
      end)
      service.add_operation(:update_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#UpdatePolicy"
        operation.name = "UpdatePolicy"
        operation.input = UpdatePolicyRequest
        operation.output = UpdatePolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a resilience policy", "resources" => {"required" => {"policy" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/update-policy"}}
      end)
      service.add_operation(:update_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#UpdateService"
        operation.name = "UpdateService"
        operation.input = UpdateServiceRequest
        operation.output = UpdateServiceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a service", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}, "optional" => {"policy" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}, "system" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/update-service"}}
      end)
      service.add_operation(:update_service_function, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#UpdateServiceFunction"
        operation.name = "UpdateServiceFunction"
        operation.input = UpdateServiceFunctionRequest
        operation.output = UpdateServiceFunctionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a service function", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/update-function"}}
      end)
      service.add_operation(:update_system, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#UpdateSystem"
        operation.name = "UpdateSystem"
        operation.input = UpdateSystemRequest
        operation.output = UpdateSystemResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a system", "resources" => {"required" => {"system" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/update-system"}}
      end)
      service.add_operation(:update_test, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#UpdateTest"
        operation.name = "UpdateTest"
        operation.input = UpdateTestRequest
        operation.output = UpdateTestResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a test", "resources" => {"required" => {"service" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/update-test"}}
      end)
      service.add_operation(:update_user_journey, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehubv2#UpdateUserJourney"
        operation.name = "UpdateUserJourney"
        operation.input = UpdateUserJourneyRequest
        operation.output = UpdateUserJourneyResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update a user journey", "resources" => {"required" => {"system" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}, "optional" => {"policy" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/v2/update-user-journey"}}
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
