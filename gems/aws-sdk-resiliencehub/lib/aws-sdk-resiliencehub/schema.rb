# frozen_string_literal: true

# This is generated code!

module Aws::Resiliencehub
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptGroupingRecommendationEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#AcceptGroupingRecommendationEntries", name: "AcceptGroupingRecommendationEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    AcceptGroupingRecommendationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AcceptGroupingRecommendationEntry", name: "AcceptGroupingRecommendationEntry")
    AcceptResourceGroupingRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AcceptResourceGroupingRecommendationsRequest", name: "AcceptResourceGroupingRecommendationsRequest")
    AcceptResourceGroupingRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AcceptResourceGroupingRecommendationsResponse", name: "AcceptResourceGroupingRecommendationsResponse")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AddDraftAppVersionResourceMappingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AddDraftAppVersionResourceMappingsInput", name: "AddDraftAppVersionResourceMappingsInput")
    AddDraftAppVersionResourceMappingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AddDraftAppVersionResourceMappingsOutput", name: "AddDraftAppVersionResourceMappingsOutput")
    AdditionalInfoMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resiliencehub#AdditionalInfoMap", name: "AdditionalInfoMap")
    AdditionalInfoValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#AdditionalInfoValueList", name: "AdditionalInfoValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Alarm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#Alarm", name: "Alarm")
    AlarmRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AlarmRecommendation", name: "AlarmRecommendation")
    AlarmRecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#AlarmRecommendationList", name: "AlarmRecommendationList")
    AlarmReferenceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#AlarmReferenceIdList", name: "AlarmReferenceIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    AlarmType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#AlarmType", name: "AlarmType")
    App = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#App", name: "App")
    AppAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AppAssessment", name: "AppAssessment")
    AppAssessmentScheduleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#AppAssessmentScheduleType", name: "AppAssessmentScheduleType")
    AppAssessmentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AppAssessmentSummary", name: "AppAssessmentSummary")
    AppAssessmentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#AppAssessmentSummaryList", name: "AppAssessmentSummaryList")
    AppComplianceStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#AppComplianceStatusType", name: "AppComplianceStatusType")
    AppComponent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AppComponent", name: "AppComponent")
    AppComponentCompliance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AppComponentCompliance", name: "AppComponentCompliance")
    AppComponentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#AppComponentList", name: "AppComponentList")
    AppComponentNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#AppComponentNameList", name: "AppComponentNameList")
    AppDriftStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#AppDriftStatusType", name: "AppDriftStatusType")
    AppInputSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AppInputSource", name: "AppInputSource")
    AppInputSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#AppInputSourceList", name: "AppInputSourceList")
    AppStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#AppStatusType", name: "AppStatusType")
    AppSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AppSummary", name: "AppSummary")
    AppSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#AppSummaryList", name: "AppSummaryList")
    AppTemplateBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#AppTemplateBody", name: "AppTemplateBody", traits: {"smithy.api#length" => {"min" => 0, "max" => 409600}, "smithy.api#pattern" => "^[\\w\\s:,-\\.'\\/{}\\[\\]:\"\\\\]+$"})
    AppVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#AppVersionList", name: "AppVersionList")
    AppVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AppVersionSummary", name: "AppVersionSummary")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#Arn", name: "Arn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:([a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]):[0-9]{12}:[A-Za-z0-9/][A-Za-z0-9:_/+.-]{0,1023}$"})
    ArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#ArnList", name: "ArnList")
    AssessmentCompliance = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resiliencehub#AssessmentCompliance", name: "AssessmentCompliance")
    AssessmentInvoker = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#AssessmentInvoker", name: "AssessmentInvoker")
    AssessmentRiskRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AssessmentRiskRecommendation", name: "AssessmentRiskRecommendation")
    AssessmentRiskRecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#AssessmentRiskRecommendationList", name: "AssessmentRiskRecommendationList")
    AssessmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#AssessmentStatus", name: "AssessmentStatus")
    AssessmentStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#AssessmentStatusList", name: "AssessmentStatusList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AssessmentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#AssessmentSummary", name: "AssessmentSummary")
    AwsRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#AwsRegion", name: "AwsRegion", traits: {"smithy.api#pattern" => "^[a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]$"})
    BatchUpdateRecommendationStatusFailedEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#BatchUpdateRecommendationStatusFailedEntries", name: "BatchUpdateRecommendationStatusFailedEntries")
    BatchUpdateRecommendationStatusFailedEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#BatchUpdateRecommendationStatusFailedEntry", name: "BatchUpdateRecommendationStatusFailedEntry")
    BatchUpdateRecommendationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#BatchUpdateRecommendationStatusRequest", name: "BatchUpdateRecommendationStatusRequest")
    BatchUpdateRecommendationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#BatchUpdateRecommendationStatusResponse", name: "BatchUpdateRecommendationStatusResponse")
    BatchUpdateRecommendationStatusSuccessfulEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#BatchUpdateRecommendationStatusSuccessfulEntries", name: "BatchUpdateRecommendationStatusSuccessfulEntries")
    BatchUpdateRecommendationStatusSuccessfulEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#BatchUpdateRecommendationStatusSuccessfulEntry", name: "BatchUpdateRecommendationStatusSuccessfulEntry")
    BooleanOptional = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.resiliencehub#BooleanOptional", name: "BooleanOptional")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[A-Za-z0-9_.-]{0,63}$"})
    ComplianceDrift = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ComplianceDrift", name: "ComplianceDrift")
    ComplianceDriftList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#ComplianceDriftList", name: "ComplianceDriftList")
    ComplianceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#ComplianceStatus", name: "ComplianceStatus")
    ComponentCompliancesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#ComponentCompliancesList", name: "ComponentCompliancesList")
    ComponentRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ComponentRecommendation", name: "ComponentRecommendation")
    ComponentRecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#ComponentRecommendationList", name: "ComponentRecommendationList")
    Condition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#Condition", name: "Condition")
    ConditionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#ConditionList", name: "ConditionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ConditionOperatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#ConditionOperatorType", name: "ConditionOperatorType")
    ConfigRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ConfigRecommendation", name: "ConfigRecommendation")
    ConfigRecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#ConfigRecommendationList", name: "ConfigRecommendationList")
    ConfigRecommendationOptimizationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#ConfigRecommendationOptimizationType", name: "ConfigRecommendationOptimizationType")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Cost = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#Cost", name: "Cost")
    CostFrequency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#CostFrequency", name: "CostFrequency")
    CreateAppInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#CreateAppInput", name: "CreateAppInput")
    CreateAppOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#CreateAppOutput", name: "CreateAppOutput")
    CreateAppVersionAppComponentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#CreateAppVersionAppComponentInput", name: "CreateAppVersionAppComponentInput")
    CreateAppVersionAppComponentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#CreateAppVersionAppComponentOutput", name: "CreateAppVersionAppComponentOutput")
    CreateAppVersionResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#CreateAppVersionResourceInput", name: "CreateAppVersionResourceInput")
    CreateAppVersionResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#CreateAppVersionResourceOutput", name: "CreateAppVersionResourceOutput")
    CreateRecommendationTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#CreateRecommendationTemplateInput", name: "CreateRecommendationTemplateInput")
    CreateRecommendationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#CreateRecommendationTemplateOutput", name: "CreateRecommendationTemplateOutput")
    CreateResiliencyPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#CreateResiliencyPolicyInput", name: "CreateResiliencyPolicyInput")
    CreateResiliencyPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#CreateResiliencyPolicyOutput", name: "CreateResiliencyPolicyOutput")
    CurrencyCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#CurrencyCode", name: "CurrencyCode", traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    CustomerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#CustomerId", name: "CustomerId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    DataLocationConstraint = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#DataLocationConstraint", name: "DataLocationConstraint")
    DeleteAppAssessmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DeleteAppAssessmentInput", name: "DeleteAppAssessmentInput")
    DeleteAppAssessmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DeleteAppAssessmentOutput", name: "DeleteAppAssessmentOutput")
    DeleteAppInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DeleteAppInput", name: "DeleteAppInput")
    DeleteAppInputSourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DeleteAppInputSourceInput", name: "DeleteAppInputSourceInput")
    DeleteAppInputSourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DeleteAppInputSourceOutput", name: "DeleteAppInputSourceOutput")
    DeleteAppOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DeleteAppOutput", name: "DeleteAppOutput")
    DeleteAppVersionAppComponentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DeleteAppVersionAppComponentInput", name: "DeleteAppVersionAppComponentInput")
    DeleteAppVersionAppComponentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DeleteAppVersionAppComponentOutput", name: "DeleteAppVersionAppComponentOutput")
    DeleteAppVersionResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DeleteAppVersionResourceInput", name: "DeleteAppVersionResourceInput")
    DeleteAppVersionResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DeleteAppVersionResourceOutput", name: "DeleteAppVersionResourceOutput")
    DeleteRecommendationTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DeleteRecommendationTemplateInput", name: "DeleteRecommendationTemplateInput")
    DeleteRecommendationTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DeleteRecommendationTemplateOutput", name: "DeleteRecommendationTemplateOutput")
    DeleteResiliencyPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DeleteResiliencyPolicyInput", name: "DeleteResiliencyPolicyInput")
    DeleteResiliencyPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DeleteResiliencyPolicyOutput", name: "DeleteResiliencyPolicyOutput")
    DescribeAppAssessmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeAppAssessmentInput", name: "DescribeAppAssessmentInput")
    DescribeAppAssessmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeAppAssessmentOutput", name: "DescribeAppAssessmentOutput")
    DescribeAppInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeAppInput", name: "DescribeAppInput")
    DescribeAppOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeAppOutput", name: "DescribeAppOutput")
    DescribeAppVersionAppComponentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeAppVersionAppComponentInput", name: "DescribeAppVersionAppComponentInput")
    DescribeAppVersionAppComponentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeAppVersionAppComponentOutput", name: "DescribeAppVersionAppComponentOutput")
    DescribeAppVersionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeAppVersionInput", name: "DescribeAppVersionInput")
    DescribeAppVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeAppVersionOutput", name: "DescribeAppVersionOutput")
    DescribeAppVersionResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeAppVersionResourceInput", name: "DescribeAppVersionResourceInput")
    DescribeAppVersionResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeAppVersionResourceOutput", name: "DescribeAppVersionResourceOutput")
    DescribeAppVersionResourcesResolutionStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeAppVersionResourcesResolutionStatusInput", name: "DescribeAppVersionResourcesResolutionStatusInput")
    DescribeAppVersionResourcesResolutionStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeAppVersionResourcesResolutionStatusOutput", name: "DescribeAppVersionResourcesResolutionStatusOutput")
    DescribeAppVersionTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeAppVersionTemplateInput", name: "DescribeAppVersionTemplateInput")
    DescribeAppVersionTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeAppVersionTemplateOutput", name: "DescribeAppVersionTemplateOutput")
    DescribeDraftAppVersionResourcesImportStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeDraftAppVersionResourcesImportStatusInput", name: "DescribeDraftAppVersionResourcesImportStatusInput")
    DescribeDraftAppVersionResourcesImportStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeDraftAppVersionResourcesImportStatusOutput", name: "DescribeDraftAppVersionResourcesImportStatusOutput")
    DescribeMetricsExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeMetricsExportRequest", name: "DescribeMetricsExportRequest")
    DescribeMetricsExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeMetricsExportResponse", name: "DescribeMetricsExportResponse")
    DescribeResiliencyPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeResiliencyPolicyInput", name: "DescribeResiliencyPolicyInput")
    DescribeResiliencyPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeResiliencyPolicyOutput", name: "DescribeResiliencyPolicyOutput")
    DescribeResourceGroupingRecommendationTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeResourceGroupingRecommendationTaskRequest", name: "DescribeResourceGroupingRecommendationTaskRequest")
    DescribeResourceGroupingRecommendationTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DescribeResourceGroupingRecommendationTaskResponse", name: "DescribeResourceGroupingRecommendationTaskResponse")
    DifferenceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#DifferenceType", name: "DifferenceType")
    DisruptionCompliance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#DisruptionCompliance", name: "DisruptionCompliance")
    DisruptionPolicy = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resiliencehub#DisruptionPolicy", name: "DisruptionPolicy")
    DisruptionResiliencyScore = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resiliencehub#DisruptionResiliencyScore", name: "DisruptionResiliencyScore")
    DisruptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#DisruptionType", name: "DisruptionType")
    DocumentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#DocumentName", name: "DocumentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.resiliencehub#Double", name: "Double", traits: {"smithy.api#default" => 0})
    DriftStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#DriftStatus", name: "DriftStatus")
    DriftType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#DriftType", name: "DriftType")
    EksNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#EksNamespace", name: "EksNamespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"})
    EksNamespaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#EksNamespaceList", name: "EksNamespaceList")
    EksSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#EksSource", name: "EksSource")
    EksSourceClusterNamespace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#EksSourceClusterNamespace", name: "EksSourceClusterNamespace")
    EksSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#EksSourceList", name: "EksSourceList")
    EntityDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#EntityDescription", name: "EntityDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    EntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#EntityId", name: "EntityId", traits: {"smithy.api#pattern" => "^\\S{1,255}$"})
    EntityName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#EntityName", name: "EntityName", traits: {"smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9_\\-]{1,59}$"})
    EntityName255 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#EntityName255", name: "EntityName255", traits: {"smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9_\\-]{0,254}$"})
    EntityNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#EntityNameList", name: "EntityNameList")
    EntityVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#EntityVersion", name: "EntityVersion", traits: {"smithy.api#pattern" => "^\\S{1,50}$"})
    ErrorDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ErrorDetail", name: "ErrorDetail")
    ErrorDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#ErrorDetailList", name: "ErrorDetailList")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    EstimatedCostTier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#EstimatedCostTier", name: "EstimatedCostTier")
    EventSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#EventSubscription", name: "EventSubscription")
    EventSubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#EventSubscriptionList", name: "EventSubscriptionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#EventType", name: "EventType")
    ExcludeRecommendationReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#ExcludeRecommendationReason", name: "ExcludeRecommendationReason")
    Experiment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#Experiment", name: "Experiment")
    FailedGroupingRecommendationEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#FailedGroupingRecommendationEntries", name: "FailedGroupingRecommendationEntries")
    FailedGroupingRecommendationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#FailedGroupingRecommendationEntry", name: "FailedGroupingRecommendationEntry")
    FailurePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#FailurePolicy", name: "FailurePolicy")
    Field = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#Field", name: "Field")
    FieldAggregationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#FieldAggregationType", name: "FieldAggregationType")
    FieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#FieldList", name: "FieldList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    GroupingAppComponent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#GroupingAppComponent", name: "GroupingAppComponent")
    GroupingRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#GroupingRecommendation", name: "GroupingRecommendation")
    GroupingRecommendationConfidenceLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#GroupingRecommendationConfidenceLevel", name: "GroupingRecommendationConfidenceLevel")
    GroupingRecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#GroupingRecommendationList", name: "GroupingRecommendationList")
    GroupingRecommendationRejectionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#GroupingRecommendationRejectionReason", name: "GroupingRecommendationRejectionReason")
    GroupingRecommendationStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#GroupingRecommendationStatusType", name: "GroupingRecommendationStatusType")
    GroupingResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#GroupingResource", name: "GroupingResource")
    GroupingResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#GroupingResourceList", name: "GroupingResourceList")
    HaArchitecture = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#HaArchitecture", name: "HaArchitecture")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):iam::[0-9]{12}:role/(([^/][!-~]+/){1,511})?[A-Za-z0-9_+=,.@-]{1,64}$"})
    IamRoleArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#IamRoleArnList", name: "IamRoleArnList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    IamRoleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#IamRoleName", name: "IamRoleName", traits: {"smithy.api#pattern" => "^([^/]([!-~]+/){1,511})?[A-Za-z0-9_+=,.@-]{1,64}$"})
    ImportResourcesToDraftAppVersionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ImportResourcesToDraftAppVersionInput", name: "ImportResourcesToDraftAppVersionInput")
    ImportResourcesToDraftAppVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ImportResourcesToDraftAppVersionOutput", name: "ImportResourcesToDraftAppVersionOutput")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.resiliencehub#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    IntegerOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.resiliencehub#IntegerOptional", name: "IntegerOptional")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListAlarmRecommendationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAlarmRecommendationsInput", name: "ListAlarmRecommendationsInput")
    ListAlarmRecommendationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAlarmRecommendationsOutput", name: "ListAlarmRecommendationsOutput")
    ListAppAssessmentComplianceDriftsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppAssessmentComplianceDriftsRequest", name: "ListAppAssessmentComplianceDriftsRequest")
    ListAppAssessmentComplianceDriftsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppAssessmentComplianceDriftsResponse", name: "ListAppAssessmentComplianceDriftsResponse")
    ListAppAssessmentResourceDriftsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppAssessmentResourceDriftsRequest", name: "ListAppAssessmentResourceDriftsRequest")
    ListAppAssessmentResourceDriftsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppAssessmentResourceDriftsResponse", name: "ListAppAssessmentResourceDriftsResponse")
    ListAppAssessmentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppAssessmentsInput", name: "ListAppAssessmentsInput")
    ListAppAssessmentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppAssessmentsOutput", name: "ListAppAssessmentsOutput")
    ListAppComponentCompliancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppComponentCompliancesInput", name: "ListAppComponentCompliancesInput")
    ListAppComponentCompliancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppComponentCompliancesOutput", name: "ListAppComponentCompliancesOutput")
    ListAppComponentRecommendationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppComponentRecommendationsInput", name: "ListAppComponentRecommendationsInput")
    ListAppComponentRecommendationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppComponentRecommendationsOutput", name: "ListAppComponentRecommendationsOutput")
    ListAppInputSourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppInputSourcesInput", name: "ListAppInputSourcesInput")
    ListAppInputSourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppInputSourcesOutput", name: "ListAppInputSourcesOutput")
    ListAppVersionAppComponentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppVersionAppComponentsInput", name: "ListAppVersionAppComponentsInput")
    ListAppVersionAppComponentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppVersionAppComponentsOutput", name: "ListAppVersionAppComponentsOutput")
    ListAppVersionResourceMappingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppVersionResourceMappingsInput", name: "ListAppVersionResourceMappingsInput")
    ListAppVersionResourceMappingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppVersionResourceMappingsOutput", name: "ListAppVersionResourceMappingsOutput")
    ListAppVersionResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppVersionResourcesInput", name: "ListAppVersionResourcesInput")
    ListAppVersionResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppVersionResourcesOutput", name: "ListAppVersionResourcesOutput")
    ListAppVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppVersionsInput", name: "ListAppVersionsInput")
    ListAppVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppVersionsOutput", name: "ListAppVersionsOutput")
    ListAppsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppsInput", name: "ListAppsInput")
    ListAppsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListAppsOutput", name: "ListAppsOutput")
    ListMetricsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListMetricsRequest", name: "ListMetricsRequest")
    ListMetricsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListMetricsResponse", name: "ListMetricsResponse")
    ListRecommendationTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListRecommendationTemplatesInput", name: "ListRecommendationTemplatesInput")
    ListRecommendationTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListRecommendationTemplatesOutput", name: "ListRecommendationTemplatesOutput")
    ListResiliencyPoliciesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListResiliencyPoliciesInput", name: "ListResiliencyPoliciesInput")
    ListResiliencyPoliciesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListResiliencyPoliciesOutput", name: "ListResiliencyPoliciesOutput")
    ListResourceGroupingRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListResourceGroupingRecommendationsRequest", name: "ListResourceGroupingRecommendationsRequest")
    ListResourceGroupingRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListResourceGroupingRecommendationsResponse", name: "ListResourceGroupingRecommendationsResponse")
    ListSopRecommendationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListSopRecommendationsInput", name: "ListSopRecommendationsInput")
    ListSopRecommendationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListSopRecommendationsOutput", name: "ListSopRecommendationsOutput")
    ListSuggestedResiliencyPoliciesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListSuggestedResiliencyPoliciesInput", name: "ListSuggestedResiliencyPoliciesInput")
    ListSuggestedResiliencyPoliciesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListSuggestedResiliencyPoliciesOutput", name: "ListSuggestedResiliencyPoliciesOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTestRecommendationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListTestRecommendationsInput", name: "ListTestRecommendationsInput")
    ListTestRecommendationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListTestRecommendationsOutput", name: "ListTestRecommendationsOutput")
    ListUnsupportedAppVersionResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListUnsupportedAppVersionResourcesInput", name: "ListUnsupportedAppVersionResourcesInput")
    ListUnsupportedAppVersionResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ListUnsupportedAppVersionResourcesOutput", name: "ListUnsupportedAppVersionResourcesOutput")
    LogicalResourceId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#LogicalResourceId", name: "LogicalResourceId")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.resiliencehub#Long", name: "Long", traits: {"smithy.api#default" => 0})
    LongOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.resiliencehub#LongOptional", name: "LongOptional")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.resiliencehub#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MetricsExportStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#MetricsExportStatusType", name: "MetricsExportStatusType")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#NextToken", name: "NextToken", traits: {"smithy.api#pattern" => "^\\S{1,2000}$"})
    PermissionModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#PermissionModel", name: "PermissionModel")
    PermissionModelType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#PermissionModelType", name: "PermissionModelType")
    PhysicalIdentifierType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#PhysicalIdentifierType", name: "PhysicalIdentifierType")
    PhysicalResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#PhysicalResource", name: "PhysicalResource")
    PhysicalResourceId = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#PhysicalResourceId", name: "PhysicalResourceId")
    PhysicalResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#PhysicalResourceList", name: "PhysicalResourceList")
    PublishAppVersionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#PublishAppVersionInput", name: "PublishAppVersionInput")
    PublishAppVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#PublishAppVersionOutput", name: "PublishAppVersionOutput")
    PutDraftAppVersionTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#PutDraftAppVersionTemplateInput", name: "PutDraftAppVersionTemplateInput")
    PutDraftAppVersionTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#PutDraftAppVersionTemplateOutput", name: "PutDraftAppVersionTemplateOutput")
    RecommendationCompliance = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resiliencehub#RecommendationCompliance", name: "RecommendationCompliance")
    RecommendationComplianceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#RecommendationComplianceStatus", name: "RecommendationComplianceStatus")
    RecommendationDisruptionCompliance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#RecommendationDisruptionCompliance", name: "RecommendationDisruptionCompliance")
    RecommendationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#RecommendationIdList", name: "RecommendationIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    RecommendationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#RecommendationItem", name: "RecommendationItem")
    RecommendationItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#RecommendationItemList", name: "RecommendationItemList")
    RecommendationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#RecommendationStatus", name: "RecommendationStatus")
    RecommendationTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#RecommendationTemplate", name: "RecommendationTemplate")
    RecommendationTemplateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#RecommendationTemplateList", name: "RecommendationTemplateList")
    RecommendationTemplateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#RecommendationTemplateStatus", name: "RecommendationTemplateStatus")
    RecommendationTemplateStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#RecommendationTemplateStatusList", name: "RecommendationTemplateStatusList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    RejectGroupingRecommendationEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#RejectGroupingRecommendationEntries", name: "RejectGroupingRecommendationEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    RejectGroupingRecommendationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#RejectGroupingRecommendationEntry", name: "RejectGroupingRecommendationEntry")
    RejectResourceGroupingRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#RejectResourceGroupingRecommendationsRequest", name: "RejectResourceGroupingRecommendationsRequest")
    RejectResourceGroupingRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#RejectResourceGroupingRecommendationsResponse", name: "RejectResourceGroupingRecommendationsResponse")
    RemoveDraftAppVersionResourceMappingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#RemoveDraftAppVersionResourceMappingsInput", name: "RemoveDraftAppVersionResourceMappingsInput")
    RemoveDraftAppVersionResourceMappingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#RemoveDraftAppVersionResourceMappingsOutput", name: "RemoveDraftAppVersionResourceMappingsOutput")
    RenderRecommendationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#RenderRecommendationType", name: "RenderRecommendationType")
    RenderRecommendationTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#RenderRecommendationTypeList", name: "RenderRecommendationTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    ResiliencyPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#ResiliencyPolicies", name: "ResiliencyPolicies")
    ResiliencyPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ResiliencyPolicy", name: "ResiliencyPolicy")
    ResiliencyPolicyTier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#ResiliencyPolicyTier", name: "ResiliencyPolicyTier")
    ResiliencyScore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ResiliencyScore", name: "ResiliencyScore")
    ResiliencyScoreType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#ResiliencyScoreType", name: "ResiliencyScoreType")
    ResolveAppVersionResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ResolveAppVersionResourcesInput", name: "ResolveAppVersionResourcesInput")
    ResolveAppVersionResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ResolveAppVersionResourcesOutput", name: "ResolveAppVersionResourcesOutput")
    ResourceDrift = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ResourceDrift", name: "ResourceDrift")
    ResourceDriftList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#ResourceDriftList", name: "ResourceDriftList")
    ResourceError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ResourceError", name: "ResourceError")
    ResourceErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#ResourceErrorList", name: "ResourceErrorList")
    ResourceErrorsDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ResourceErrorsDetails", name: "ResourceErrorsDetails")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#ResourceId", name: "ResourceId", traits: {"smithy.api#pattern" => ".*"})
    ResourceIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ResourceIdentifier", name: "ResourceIdentifier")
    ResourceImportStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#ResourceImportStatusType", name: "ResourceImportStatusType")
    ResourceImportStrategyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#ResourceImportStrategyType", name: "ResourceImportStrategyType")
    ResourceMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ResourceMapping", name: "ResourceMapping")
    ResourceMappingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#ResourceMappingList", name: "ResourceMappingList")
    ResourceMappingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#ResourceMappingType", name: "ResourceMappingType")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceResolutionStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#ResourceResolutionStatusType", name: "ResourceResolutionStatusType")
    ResourceSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#ResourceSourceType", name: "ResourceSourceType")
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#ResourceType", name: "ResourceType", traits: {"smithy.api#pattern" => ".*"})
    ResourcesGroupingRecGenStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#ResourcesGroupingRecGenStatusType", name: "ResourcesGroupingRecGenStatusType")
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.resiliencehub#RetryAfterSeconds", name: "RetryAfterSeconds")
    Row = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#Row", name: "Row")
    RowList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#RowList", name: "RowList")
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#S3Location", name: "S3Location")
    S3Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#S3Url", name: "S3Url", traits: {"smithy.api#length" => {"max" => 2000}, "smithy.api#pattern" => "^((https://([^/]+)\\.s3((-|\\.)[^/]+)?\\.amazonaws\\.com(.cn)?)|(s3://([^/]+)))/\\S{1,2000}$"})
    ScoringComponentResiliencyScore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ScoringComponentResiliencyScore", name: "ScoringComponentResiliencyScore")
    ScoringComponentResiliencyScores = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resiliencehub#ScoringComponentResiliencyScores", name: "ScoringComponentResiliencyScores")
    Seconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.resiliencehub#Seconds", name: "Seconds", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SopRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#SopRecommendation", name: "SopRecommendation")
    SopRecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#SopRecommendationList", name: "SopRecommendationList")
    SopServiceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#SopServiceType", name: "SopServiceType")
    Sort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#Sort", name: "Sort")
    SortList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#SortList", name: "SortList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    SpecReferenceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#SpecReferenceId", name: "SpecReferenceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    StartAppAssessmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#StartAppAssessmentInput", name: "StartAppAssessmentInput")
    StartAppAssessmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#StartAppAssessmentOutput", name: "StartAppAssessmentOutput")
    StartMetricsExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#StartMetricsExportRequest", name: "StartMetricsExportRequest")
    StartMetricsExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#StartMetricsExportResponse", name: "StartMetricsExportResponse")
    StartResourceGroupingRecommendationTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#StartResourceGroupingRecommendationTaskRequest", name: "StartResourceGroupingRecommendationTaskRequest")
    StartResourceGroupingRecommendationTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#StartResourceGroupingRecommendationTaskResponse", name: "StartResourceGroupingRecommendationTaskResponse")
    String1024 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#String1024", name: "String1024", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    String128WithoutWhitespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#String128WithoutWhitespace", name: "String128WithoutWhitespace", traits: {"smithy.api#pattern" => "^\\S{1,128}$"})
    String2048 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#String2048", name: "String2048", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    String255 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#String255", name: "String255", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    String255List = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#String255List", name: "String255List")
    String500 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#String500", name: "String500", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    SuggestedChangesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#SuggestedChangesList", name: "SuggestedChangesList")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[^\\x00-\\x1f\\x22]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resiliencehub#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#sensitive" => {}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[^\\x00-\\x1f\\x22]*$"})
    TemplateFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#TemplateFormat", name: "TemplateFormat")
    TerraformSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#TerraformSource", name: "TerraformSource")
    TerraformSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#TerraformSourceList", name: "TerraformSourceList")
    TestRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#TestRecommendation", name: "TestRecommendation")
    TestRecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#TestRecommendationList", name: "TestRecommendationList")
    TestRisk = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#TestRisk", name: "TestRisk")
    TestType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resiliencehub#TestType", name: "TestType")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.resiliencehub#TimeStamp", name: "TimeStamp")
    UnsupportedResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#UnsupportedResource", name: "UnsupportedResource")
    UnsupportedResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#UnsupportedResourceList", name: "UnsupportedResourceList")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateAppInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#UpdateAppInput", name: "UpdateAppInput")
    UpdateAppOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#UpdateAppOutput", name: "UpdateAppOutput")
    UpdateAppVersionAppComponentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#UpdateAppVersionAppComponentInput", name: "UpdateAppVersionAppComponentInput")
    UpdateAppVersionAppComponentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#UpdateAppVersionAppComponentOutput", name: "UpdateAppVersionAppComponentOutput")
    UpdateAppVersionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#UpdateAppVersionInput", name: "UpdateAppVersionInput")
    UpdateAppVersionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#UpdateAppVersionOutput", name: "UpdateAppVersionOutput")
    UpdateAppVersionResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#UpdateAppVersionResourceInput", name: "UpdateAppVersionResourceInput")
    UpdateAppVersionResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#UpdateAppVersionResourceOutput", name: "UpdateAppVersionResourceOutput")
    UpdateRecommendationStatusItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#UpdateRecommendationStatusItem", name: "UpdateRecommendationStatusItem")
    UpdateRecommendationStatusRequestEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resiliencehub#UpdateRecommendationStatusRequestEntries", name: "UpdateRecommendationStatusRequestEntries", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    UpdateRecommendationStatusRequestEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#UpdateRecommendationStatusRequestEntry", name: "UpdateRecommendationStatusRequestEntry")
    UpdateResiliencyPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#UpdateResiliencyPolicyInput", name: "UpdateResiliencyPolicyInput")
    UpdateResiliencyPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#UpdateResiliencyPolicyOutput", name: "UpdateResiliencyPolicyOutput")
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resiliencehub#Uuid", name: "Uuid", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-5][0-9a-f]{3}-[089ab][0-9a-f]{3}-[0-9a-f]{12}$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resiliencehub#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AcceptGroupingRecommendationEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptGroupingRecommendationEntry, name: "member")
    AcceptGroupingRecommendationEntry.add_member(:grouping_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "groupingRecommendationId", traits: {"smithy.api#required" => {}}))
    AcceptGroupingRecommendationEntry.type = Types::AcceptGroupingRecommendationEntry
    AcceptResourceGroupingRecommendationsRequest.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    AcceptResourceGroupingRecommendationsRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptGroupingRecommendationEntries, name: "entries", traits: {"smithy.api#required" => {}}))
    AcceptResourceGroupingRecommendationsRequest.type = Types::AcceptResourceGroupingRecommendationsRequest
    AcceptResourceGroupingRecommendationsResponse.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    AcceptResourceGroupingRecommendationsResponse.add_member(:failed_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedGroupingRecommendationEntries, name: "failedEntries", traits: {"smithy.api#required" => {}}))
    AcceptResourceGroupingRecommendationsResponse.type = Types::AcceptResourceGroupingRecommendationsResponse
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AddDraftAppVersionResourceMappingsInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    AddDraftAppVersionResourceMappingsInput.add_member(:resource_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMappingList, name: "resourceMappings", traits: {"smithy.api#required" => {}}))
    AddDraftAppVersionResourceMappingsInput.type = Types::AddDraftAppVersionResourceMappingsInput
    AddDraftAppVersionResourceMappingsOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    AddDraftAppVersionResourceMappingsOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    AddDraftAppVersionResourceMappingsOutput.add_member(:resource_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMappingList, name: "resourceMappings", traits: {"smithy.api#required" => {}}))
    AddDraftAppVersionResourceMappingsOutput.type = Types::AddDraftAppVersionResourceMappingsOutput
    AdditionalInfoMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String128WithoutWhitespace, name: "key")
    AdditionalInfoMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInfoValueList, name: "value")
    AdditionalInfoValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "member")
    Alarm.add_member(:alarm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "alarmArn"))
    Alarm.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "source"))
    Alarm.type = Types::Alarm
    AlarmRecommendation.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "recommendationId", traits: {"smithy.api#required" => {}}))
    AlarmRecommendation.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpecReferenceId, name: "referenceId", traits: {"smithy.api#required" => {}}))
    AlarmRecommendation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "name", traits: {"smithy.api#required" => {}}))
    AlarmRecommendation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    AlarmRecommendation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmType, name: "type", traits: {"smithy.api#required" => {}}))
    AlarmRecommendation.add_member(:app_component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "appComponentName", traits: {"smithy.api#deprecated" => {"message" => "An alarm recommendation can be attached to multiple Application Components, hence this property will be replaced by the new property 'appComponentNames'."}}))
    AlarmRecommendation.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationItemList, name: "items"))
    AlarmRecommendation.add_member(:prerequisite, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "prerequisite"))
    AlarmRecommendation.add_member(:app_component_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AppComponentNameList, name: "appComponentNames"))
    AlarmRecommendation.add_member(:recommendation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, name: "recommendationStatus"))
    AlarmRecommendation.type = Types::AlarmRecommendation
    AlarmRecommendationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmRecommendation, name: "member")
    AlarmReferenceIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "member")
    AlarmType.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METRIC", traits: {"smithy.api#enumValue" => "Metric"}))
    AlarmType.add_member(:composite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPOSITE", traits: {"smithy.api#enumValue" => "Composite"}))
    AlarmType.add_member(:canary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANARY", traits: {"smithy.api#enumValue" => "Canary"}))
    AlarmType.add_member(:logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGS", traits: {"smithy.api#enumValue" => "Logs"}))
    AlarmType.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENT", traits: {"smithy.api#enumValue" => "Event"}))
    App.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    App.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#required" => {}}))
    App.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    App.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    App.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    App.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AppStatusType, name: "status"))
    App.add_member(:compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AppComplianceStatusType, name: "complianceStatus"))
    App.add_member(:last_app_compliance_evaluation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "lastAppComplianceEvaluationTime"))
    App.add_member(:resiliency_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "resiliencyScore", traits: {"smithy.api#default" => 0}))
    App.add_member(:last_resiliency_score_evaluation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "lastResiliencyScoreEvaluationTime"))
    App.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    App.add_member(:assessment_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: AppAssessmentScheduleType, name: "assessmentSchedule"))
    App.add_member(:permission_model, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionModel, name: "permissionModel"))
    App.add_member(:event_subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscriptionList, name: "eventSubscriptions"))
    App.add_member(:drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AppDriftStatusType, name: "driftStatus"))
    App.add_member(:last_drift_evaluation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "lastDriftEvaluationTime"))
    App.add_member(:rto_in_secs, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "rtoInSecs"))
    App.add_member(:rpo_in_secs, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "rpoInSecs"))
    App.add_member(:aws_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "awsApplicationArn"))
    App.type = Types::App
    AppAssessment.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn"))
    AppAssessment.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion"))
    AppAssessment.add_member(:invoker, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentInvoker, name: "invoker", traits: {"smithy.api#required" => {}}))
    AppAssessment.add_member(:cost, ::Smithy::Schema::Shapes::MemberShape.new(target: Cost, name: "cost"))
    AppAssessment.add_member(:resiliency_score, ::Smithy::Schema::Shapes::MemberShape.new(target: ResiliencyScore, name: "resiliencyScore"))
    AppAssessment.add_member(:compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentCompliance, name: "compliance"))
    AppAssessment.add_member(:compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStatus, name: "complianceStatus"))
    AppAssessment.add_member(:assessment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatus, name: "assessmentStatus", traits: {"smithy.api#required" => {}}))
    AppAssessment.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "startTime"))
    AppAssessment.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "endTime"))
    AppAssessment.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "message"))
    AppAssessment.add_member(:assessment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "assessmentName"))
    AppAssessment.add_member(:assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assessmentArn", traits: {"smithy.api#required" => {}}))
    AppAssessment.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResiliencyPolicy, name: "policy"))
    AppAssessment.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    AppAssessment.add_member(:resource_errors_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceErrorsDetails, name: "resourceErrorsDetails"))
    AppAssessment.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "versionName"))
    AppAssessment.add_member(:drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DriftStatus, name: "driftStatus"))
    AppAssessment.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentSummary, name: "summary"))
    AppAssessment.type = Types::AppAssessment
    AppAssessmentScheduleType.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    AppAssessmentScheduleType.add_member(:daily, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY", traits: {"smithy.api#enumValue" => "Daily"}))
    AppAssessmentSummary.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn"))
    AppAssessmentSummary.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion"))
    AppAssessmentSummary.add_member(:assessment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatus, name: "assessmentStatus", traits: {"smithy.api#required" => {}}))
    AppAssessmentSummary.add_member(:invoker, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentInvoker, name: "invoker"))
    AppAssessmentSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "startTime"))
    AppAssessmentSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "endTime"))
    AppAssessmentSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "message"))
    AppAssessmentSummary.add_member(:assessment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "assessmentName"))
    AppAssessmentSummary.add_member(:assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assessmentArn", traits: {"smithy.api#required" => {}}))
    AppAssessmentSummary.add_member(:compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStatus, name: "complianceStatus"))
    AppAssessmentSummary.add_member(:cost, ::Smithy::Schema::Shapes::MemberShape.new(target: Cost, name: "cost"))
    AppAssessmentSummary.add_member(:resiliency_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "resiliencyScore", traits: {"smithy.api#default" => 0}))
    AppAssessmentSummary.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "versionName"))
    AppAssessmentSummary.add_member(:drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DriftStatus, name: "driftStatus"))
    AppAssessmentSummary.type = Types::AppAssessmentSummary
    AppAssessmentSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AppAssessmentSummary, name: "member")
    AppComplianceStatusType.add_member(:policy_breached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_BREACHED", traits: {"smithy.api#enumValue" => "PolicyBreached"}))
    AppComplianceStatusType.add_member(:policy_met, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_MET", traits: {"smithy.api#enumValue" => "PolicyMet"}))
    AppComplianceStatusType.add_member(:not_assessed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_ASSESSED", traits: {"smithy.api#enumValue" => "NotAssessed"}))
    AppComplianceStatusType.add_member(:changes_detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGES_DETECTED", traits: {"smithy.api#enumValue" => "ChangesDetected"}))
    AppComplianceStatusType.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NotApplicable"}))
    AppComplianceStatusType.add_member(:missing_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_POLICY", traits: {"smithy.api#enumValue" => "MissingPolicy"}))
    AppComponent.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName255, name: "name", traits: {"smithy.api#required" => {}}))
    AppComponent.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "type", traits: {"smithy.api#required" => {}}))
    AppComponent.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName255, name: "id"))
    AppComponent.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInfoMap, name: "additionalInfo"))
    AppComponent.type = Types::AppComponent
    AppComponentCompliance.add_member(:cost, ::Smithy::Schema::Shapes::MemberShape.new(target: Cost, name: "cost"))
    AppComponentCompliance.add_member(:app_component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "appComponentName"))
    AppComponentCompliance.add_member(:compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentCompliance, name: "compliance"))
    AppComponentCompliance.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "message"))
    AppComponentCompliance.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStatus, name: "status"))
    AppComponentCompliance.add_member(:resiliency_score, ::Smithy::Schema::Shapes::MemberShape.new(target: ResiliencyScore, name: "resiliencyScore"))
    AppComponentCompliance.type = Types::AppComponentCompliance
    AppComponentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AppComponent, name: "member")
    AppComponentNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "member")
    AppDriftStatusType.add_member(:not_checked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CHECKED", traits: {"smithy.api#enumValue" => "NotChecked"}))
    AppDriftStatusType.add_member(:not_detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_DETECTED", traits: {"smithy.api#enumValue" => "NotDetected"}))
    AppDriftStatusType.add_member(:detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETECTED", traits: {"smithy.api#enumValue" => "Detected"}))
    AppInputSource.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "sourceName"))
    AppInputSource.add_member(:import_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMappingType, name: "importType", traits: {"smithy.api#required" => {}}))
    AppInputSource.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "sourceArn"))
    AppInputSource.add_member(:terraform_source, ::Smithy::Schema::Shapes::MemberShape.new(target: TerraformSource, name: "terraformSource"))
    AppInputSource.add_member(:resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "resourceCount", traits: {"smithy.api#default" => 0}))
    AppInputSource.add_member(:eks_source_cluster_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: EksSourceClusterNamespace, name: "eksSourceClusterNamespace"))
    AppInputSource.type = Types::AppInputSource
    AppInputSourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AppInputSource, name: "member")
    AppStatusType.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    AppStatusType.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    AppSummary.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    AppSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#required" => {}}))
    AppSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    AppSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    AppSummary.add_member(:compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AppComplianceStatusType, name: "complianceStatus"))
    AppSummary.add_member(:resiliency_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "resiliencyScore", traits: {"smithy.api#default" => 0}))
    AppSummary.add_member(:assessment_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: AppAssessmentScheduleType, name: "assessmentSchedule"))
    AppSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AppStatusType, name: "status"))
    AppSummary.add_member(:drift_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AppDriftStatusType, name: "driftStatus"))
    AppSummary.add_member(:last_app_compliance_evaluation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "lastAppComplianceEvaluationTime"))
    AppSummary.add_member(:rto_in_secs, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "rtoInSecs"))
    AppSummary.add_member(:rpo_in_secs, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "rpoInSecs"))
    AppSummary.add_member(:aws_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "awsApplicationArn"))
    AppSummary.type = Types::AppSummary
    AppSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AppSummary, name: "member")
    AppVersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AppVersionSummary, name: "member")
    AppVersionSummary.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    AppVersionSummary.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "identifier"))
    AppVersionSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "creationTime"))
    AppVersionSummary.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "versionName"))
    AppVersionSummary.type = Types::AppVersionSummary
    ArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member")
    AssessmentCompliance.key = ::Smithy::Schema::Shapes::MemberShape.new(target: DisruptionType, name: "key")
    AssessmentCompliance.value = ::Smithy::Schema::Shapes::MemberShape.new(target: DisruptionCompliance, name: "value")
    AssessmentInvoker.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "User"}))
    AssessmentInvoker.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM", traits: {"smithy.api#enumValue" => "System"}))
    AssessmentRiskRecommendation.add_member(:risk, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "risk"))
    AssessmentRiskRecommendation.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "recommendation"))
    AssessmentRiskRecommendation.add_member(:app_components, ::Smithy::Schema::Shapes::MemberShape.new(target: AppComponentNameList, name: "appComponents"))
    AssessmentRiskRecommendation.type = Types::AssessmentRiskRecommendation
    AssessmentRiskRecommendationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentRiskRecommendation, name: "member")
    AssessmentStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    AssessmentStatus.add_member(:inprogress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    AssessmentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    AssessmentStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    AssessmentStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatus, name: "member")
    AssessmentSummary.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "summary"))
    AssessmentSummary.add_member(:risk_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentRiskRecommendationList, name: "riskRecommendations"))
    AssessmentSummary.type = Types::AssessmentSummary
    BatchUpdateRecommendationStatusFailedEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateRecommendationStatusFailedEntry, name: "member")
    BatchUpdateRecommendationStatusFailedEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "entryId", traits: {"smithy.api#required" => {}}))
    BatchUpdateRecommendationStatusFailedEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    BatchUpdateRecommendationStatusFailedEntry.type = Types::BatchUpdateRecommendationStatusFailedEntry
    BatchUpdateRecommendationStatusRequest.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    BatchUpdateRecommendationStatusRequest.add_member(:request_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRecommendationStatusRequestEntries, name: "requestEntries", traits: {"smithy.api#required" => {}}))
    BatchUpdateRecommendationStatusRequest.type = Types::BatchUpdateRecommendationStatusRequest
    BatchUpdateRecommendationStatusResponse.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    BatchUpdateRecommendationStatusResponse.add_member(:successful_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateRecommendationStatusSuccessfulEntries, name: "successfulEntries", traits: {"smithy.api#required" => {}}))
    BatchUpdateRecommendationStatusResponse.add_member(:failed_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateRecommendationStatusFailedEntries, name: "failedEntries", traits: {"smithy.api#required" => {}}))
    BatchUpdateRecommendationStatusResponse.type = Types::BatchUpdateRecommendationStatusResponse
    BatchUpdateRecommendationStatusSuccessfulEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchUpdateRecommendationStatusSuccessfulEntry, name: "member")
    BatchUpdateRecommendationStatusSuccessfulEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "entryId", traits: {"smithy.api#required" => {}}))
    BatchUpdateRecommendationStatusSuccessfulEntry.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpecReferenceId, name: "referenceId", traits: {"smithy.api#required" => {}}))
    BatchUpdateRecommendationStatusSuccessfulEntry.add_member(:item, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRecommendationStatusItem, name: "item"))
    BatchUpdateRecommendationStatusSuccessfulEntry.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "excluded", traits: {"smithy.api#required" => {}}))
    BatchUpdateRecommendationStatusSuccessfulEntry.add_member(:app_component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName255, name: "appComponentId"))
    BatchUpdateRecommendationStatusSuccessfulEntry.add_member(:exclude_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeRecommendationReason, name: "excludeReason"))
    BatchUpdateRecommendationStatusSuccessfulEntry.type = Types::BatchUpdateRecommendationStatusSuccessfulEntry
    ComplianceDrift.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "entityId"))
    ComplianceDrift.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "entityType"))
    ComplianceDrift.add_member(:drift_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DriftType, name: "driftType"))
    ComplianceDrift.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "appId"))
    ComplianceDrift.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "appVersion"))
    ComplianceDrift.add_member(:expected_reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "expectedReferenceId"))
    ComplianceDrift.add_member(:expected_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentCompliance, name: "expectedValue"))
    ComplianceDrift.add_member(:actual_reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "actualReferenceId"))
    ComplianceDrift.add_member(:actual_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentCompliance, name: "actualValue"))
    ComplianceDrift.add_member(:diff_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferenceType, name: "diffType"))
    ComplianceDrift.type = Types::ComplianceDrift
    ComplianceDriftList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceDrift, name: "member")
    ComplianceStatus.add_member(:policy_breached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_BREACHED", traits: {"smithy.api#enumValue" => "PolicyBreached"}))
    ComplianceStatus.add_member(:policy_met, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_MET", traits: {"smithy.api#enumValue" => "PolicyMet"}))
    ComplianceStatus.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NotApplicable"}))
    ComplianceStatus.add_member(:missing_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_POLICY", traits: {"smithy.api#enumValue" => "MissingPolicy"}))
    ComponentCompliancesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AppComponentCompliance, name: "member")
    ComponentRecommendation.add_member(:app_component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "appComponentName", traits: {"smithy.api#required" => {}}))
    ComponentRecommendation.add_member(:recommendation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationComplianceStatus, name: "recommendationStatus", traits: {"smithy.api#required" => {}}))
    ComponentRecommendation.add_member(:config_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRecommendationList, name: "configRecommendations", traits: {"smithy.api#required" => {}}))
    ComponentRecommendation.type = Types::ComponentRecommendation
    ComponentRecommendationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentRecommendation, name: "member")
    Condition.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "field", traits: {"smithy.api#required" => {}}))
    Condition.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionOperatorType, name: "operator", traits: {"smithy.api#required" => {}}))
    Condition.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "value"))
    Condition.type = Types::Condition
    ConditionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "member")
    ConditionOperatorType.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "Equals"}))
    ConditionOperatorType.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUALS", traits: {"smithy.api#enumValue" => "NotEquals"}))
    ConditionOperatorType.add_member(:greater_then, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THEN", traits: {"smithy.api#enumValue" => "GreaterThen"}))
    ConditionOperatorType.add_member(:greater_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_OR_EQUALS", traits: {"smithy.api#enumValue" => "GreaterOrEquals"}))
    ConditionOperatorType.add_member(:less_then, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THEN", traits: {"smithy.api#enumValue" => "LessThen"}))
    ConditionOperatorType.add_member(:less_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_OR_EQUALS", traits: {"smithy.api#enumValue" => "LessOrEquals"}))
    ConfigRecommendation.add_member(:cost, ::Smithy::Schema::Shapes::MemberShape.new(target: Cost, name: "cost"))
    ConfigRecommendation.add_member(:app_component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "appComponentName"))
    ConfigRecommendation.add_member(:compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentCompliance, name: "compliance"))
    ConfigRecommendation.add_member(:recommendation_compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationCompliance, name: "recommendationCompliance"))
    ConfigRecommendation.add_member(:optimization_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRecommendationOptimizationType, name: "optimizationType", traits: {"smithy.api#required" => {}}))
    ConfigRecommendation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#required" => {}}))
    ConfigRecommendation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    ConfigRecommendation.add_member(:suggested_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggestedChangesList, name: "suggestedChanges"))
    ConfigRecommendation.add_member(:ha_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: HaArchitecture, name: "haArchitecture"))
    ConfigRecommendation.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpecReferenceId, name: "referenceId", traits: {"smithy.api#required" => {}}))
    ConfigRecommendation.type = Types::ConfigRecommendation
    ConfigRecommendationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigRecommendation, name: "member")
    ConfigRecommendationOptimizationType.add_member(:least_cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEAST_COST", traits: {"smithy.api#enumValue" => "LeastCost"}))
    ConfigRecommendationOptimizationType.add_member(:least_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEAST_CHANGE", traits: {"smithy.api#enumValue" => "LeastChange"}))
    ConfigRecommendationOptimizationType.add_member(:best_az_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEST_AZ_RECOVERY", traits: {"smithy.api#enumValue" => "BestAZRecovery"}))
    ConfigRecommendationOptimizationType.add_member(:least_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEAST_ERRORS", traits: {"smithy.api#enumValue" => "LeastErrors"}))
    ConfigRecommendationOptimizationType.add_member(:best_attainable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEST_ATTAINABLE", traits: {"smithy.api#enumValue" => "BestAttainable"}))
    ConfigRecommendationOptimizationType.add_member(:best_region_recovery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEST_REGION_RECOVERY", traits: {"smithy.api#enumValue" => "BestRegionRecovery"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "message"))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ConflictException.type = Types::ConflictException
    Cost.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "amount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Cost.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "currency", traits: {"smithy.api#required" => {}}))
    Cost.add_member(:frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: CostFrequency, name: "frequency", traits: {"smithy.api#required" => {}}))
    Cost.type = Types::Cost
    CostFrequency.add_member(:hourly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURLY", traits: {"smithy.api#enumValue" => "Hourly"}))
    CostFrequency.add_member(:daily, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY", traits: {"smithy.api#enumValue" => "Daily"}))
    CostFrequency.add_member(:monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY", traits: {"smithy.api#enumValue" => "Monthly"}))
    CostFrequency.add_member(:yearly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YEARLY", traits: {"smithy.api#enumValue" => "Yearly"}))
    CreateAppInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAppInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    CreateAppInput.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    CreateAppInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateAppInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAppInput.add_member(:assessment_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: AppAssessmentScheduleType, name: "assessmentSchedule"))
    CreateAppInput.add_member(:permission_model, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionModel, name: "permissionModel"))
    CreateAppInput.add_member(:event_subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscriptionList, name: "eventSubscriptions"))
    CreateAppInput.add_member(:aws_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "awsApplicationArn"))
    CreateAppInput.type = Types::CreateAppInput
    CreateAppOutput.add_member(:app, ::Smithy::Schema::Shapes::MemberShape.new(target: App, name: "app", traits: {"smithy.api#required" => {}}))
    CreateAppOutput.type = Types::CreateAppOutput
    CreateAppVersionAppComponentInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    CreateAppVersionAppComponentInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "id"))
    CreateAppVersionAppComponentInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAppVersionAppComponentInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "type", traits: {"smithy.api#required" => {}}))
    CreateAppVersionAppComponentInput.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInfoMap, name: "additionalInfo"))
    CreateAppVersionAppComponentInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAppVersionAppComponentInput.type = Types::CreateAppVersionAppComponentInput
    CreateAppVersionAppComponentOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    CreateAppVersionAppComponentOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    CreateAppVersionAppComponentOutput.add_member(:app_component, ::Smithy::Schema::Shapes::MemberShape.new(target: AppComponent, name: "appComponent"))
    CreateAppVersionAppComponentOutput.type = Types::CreateAppVersionAppComponentOutput
    CreateAppVersionResourceInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    CreateAppVersionResourceInput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "resourceName"))
    CreateAppVersionResourceInput.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "logicalResourceId", traits: {"smithy.api#required" => {}}))
    CreateAppVersionResourceInput.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String2048, name: "physicalResourceId", traits: {"smithy.api#required" => {}}))
    CreateAppVersionResourceInput.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "awsRegion"))
    CreateAppVersionResourceInput.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "awsAccountId"))
    CreateAppVersionResourceInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "resourceType", traits: {"smithy.api#required" => {}}))
    CreateAppVersionResourceInput.add_member(:app_components, ::Smithy::Schema::Shapes::MemberShape.new(target: AppComponentNameList, name: "appComponents", traits: {"smithy.api#required" => {}}))
    CreateAppVersionResourceInput.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInfoMap, name: "additionalInfo"))
    CreateAppVersionResourceInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAppVersionResourceInput.type = Types::CreateAppVersionResourceInput
    CreateAppVersionResourceOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    CreateAppVersionResourceOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    CreateAppVersionResourceOutput.add_member(:physical_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResource, name: "physicalResource"))
    CreateAppVersionResourceOutput.type = Types::CreateAppVersionResourceOutput
    CreateRecommendationTemplateInput.add_member(:recommendation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationIdList, name: "recommendationIds"))
    CreateRecommendationTemplateInput.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateFormat, name: "format"))
    CreateRecommendationTemplateInput.add_member(:recommendation_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RenderRecommendationTypeList, name: "recommendationTypes"))
    CreateRecommendationTemplateInput.add_member(:assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assessmentArn", traits: {"smithy.api#required" => {}}))
    CreateRecommendationTemplateInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateRecommendationTemplateInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRecommendationTemplateInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateRecommendationTemplateInput.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "bucketName"))
    CreateRecommendationTemplateInput.type = Types::CreateRecommendationTemplateInput
    CreateRecommendationTemplateOutput.add_member(:recommendation_template, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTemplate, name: "recommendationTemplate"))
    CreateRecommendationTemplateOutput.type = Types::CreateRecommendationTemplateOutput
    CreateResiliencyPolicyInput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "policyName", traits: {"smithy.api#required" => {}}))
    CreateResiliencyPolicyInput.add_member(:policy_description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "policyDescription"))
    CreateResiliencyPolicyInput.add_member(:data_location_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLocationConstraint, name: "dataLocationConstraint"))
    CreateResiliencyPolicyInput.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResiliencyPolicyTier, name: "tier", traits: {"smithy.api#required" => {}}))
    CreateResiliencyPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DisruptionPolicy, name: "policy", traits: {"smithy.api#required" => {}}))
    CreateResiliencyPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateResiliencyPolicyInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateResiliencyPolicyInput.type = Types::CreateResiliencyPolicyInput
    CreateResiliencyPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResiliencyPolicy, name: "policy", traits: {"smithy.api#required" => {}}))
    CreateResiliencyPolicyOutput.type = Types::CreateResiliencyPolicyOutput
    DataLocationConstraint.add_member(:any_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY_LOCATION", traits: {"smithy.api#enumValue" => "AnyLocation"}))
    DataLocationConstraint.add_member(:same_continent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAME_CONTINENT", traits: {"smithy.api#enumValue" => "SameContinent"}))
    DataLocationConstraint.add_member(:same_country, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAME_COUNTRY", traits: {"smithy.api#enumValue" => "SameCountry"}))
    DeleteAppAssessmentInput.add_member(:assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assessmentArn", traits: {"smithy.api#required" => {}}))
    DeleteAppAssessmentInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteAppAssessmentInput.type = Types::DeleteAppAssessmentInput
    DeleteAppAssessmentOutput.add_member(:assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assessmentArn", traits: {"smithy.api#required" => {}}))
    DeleteAppAssessmentOutput.add_member(:assessment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatus, name: "assessmentStatus", traits: {"smithy.api#required" => {}}))
    DeleteAppAssessmentOutput.type = Types::DeleteAppAssessmentOutput
    DeleteAppInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DeleteAppInput.add_member(:force_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "forceDelete"))
    DeleteAppInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteAppInput.type = Types::DeleteAppInput
    DeleteAppInputSourceInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DeleteAppInputSourceInput.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "sourceArn"))
    DeleteAppInputSourceInput.add_member(:terraform_source, ::Smithy::Schema::Shapes::MemberShape.new(target: TerraformSource, name: "terraformSource"))
    DeleteAppInputSourceInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteAppInputSourceInput.add_member(:eks_source_cluster_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: EksSourceClusterNamespace, name: "eksSourceClusterNamespace"))
    DeleteAppInputSourceInput.type = Types::DeleteAppInputSourceInput
    DeleteAppInputSourceOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn"))
    DeleteAppInputSourceOutput.add_member(:app_input_source, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInputSource, name: "appInputSource"))
    DeleteAppInputSourceOutput.type = Types::DeleteAppInputSourceOutput
    DeleteAppOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DeleteAppOutput.type = Types::DeleteAppOutput
    DeleteAppVersionAppComponentInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DeleteAppVersionAppComponentInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteAppVersionAppComponentInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteAppVersionAppComponentInput.type = Types::DeleteAppVersionAppComponentInput
    DeleteAppVersionAppComponentOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DeleteAppVersionAppComponentOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    DeleteAppVersionAppComponentOutput.add_member(:app_component, ::Smithy::Schema::Shapes::MemberShape.new(target: AppComponent, name: "appComponent"))
    DeleteAppVersionAppComponentOutput.type = Types::DeleteAppVersionAppComponentOutput
    DeleteAppVersionResourceInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DeleteAppVersionResourceInput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "resourceName"))
    DeleteAppVersionResourceInput.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "logicalResourceId"))
    DeleteAppVersionResourceInput.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String2048, name: "physicalResourceId"))
    DeleteAppVersionResourceInput.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "awsRegion"))
    DeleteAppVersionResourceInput.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "awsAccountId"))
    DeleteAppVersionResourceInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteAppVersionResourceInput.type = Types::DeleteAppVersionResourceInput
    DeleteAppVersionResourceOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DeleteAppVersionResourceOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    DeleteAppVersionResourceOutput.add_member(:physical_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResource, name: "physicalResource"))
    DeleteAppVersionResourceOutput.type = Types::DeleteAppVersionResourceOutput
    DeleteRecommendationTemplateInput.add_member(:recommendation_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "recommendationTemplateArn", traits: {"smithy.api#required" => {}}))
    DeleteRecommendationTemplateInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteRecommendationTemplateInput.type = Types::DeleteRecommendationTemplateInput
    DeleteRecommendationTemplateOutput.add_member(:recommendation_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "recommendationTemplateArn", traits: {"smithy.api#required" => {}}))
    DeleteRecommendationTemplateOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTemplateStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteRecommendationTemplateOutput.type = Types::DeleteRecommendationTemplateOutput
    DeleteResiliencyPolicyInput.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn", traits: {"smithy.api#required" => {}}))
    DeleteResiliencyPolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteResiliencyPolicyInput.type = Types::DeleteResiliencyPolicyInput
    DeleteResiliencyPolicyOutput.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn", traits: {"smithy.api#required" => {}}))
    DeleteResiliencyPolicyOutput.type = Types::DeleteResiliencyPolicyOutput
    DescribeAppAssessmentInput.add_member(:assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assessmentArn", traits: {"smithy.api#required" => {}}))
    DescribeAppAssessmentInput.type = Types::DescribeAppAssessmentInput
    DescribeAppAssessmentOutput.add_member(:assessment, ::Smithy::Schema::Shapes::MemberShape.new(target: AppAssessment, name: "assessment", traits: {"smithy.api#required" => {}}))
    DescribeAppAssessmentOutput.type = Types::DescribeAppAssessmentOutput
    DescribeAppInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DescribeAppInput.type = Types::DescribeAppInput
    DescribeAppOutput.add_member(:app, ::Smithy::Schema::Shapes::MemberShape.new(target: App, name: "app", traits: {"smithy.api#required" => {}}))
    DescribeAppOutput.type = Types::DescribeAppOutput
    DescribeAppVersionAppComponentInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionAppComponentInput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionAppComponentInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "id", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionAppComponentInput.type = Types::DescribeAppVersionAppComponentInput
    DescribeAppVersionAppComponentOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionAppComponentOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionAppComponentOutput.add_member(:app_component, ::Smithy::Schema::Shapes::MemberShape.new(target: AppComponent, name: "appComponent"))
    DescribeAppVersionAppComponentOutput.type = Types::DescribeAppVersionAppComponentOutput
    DescribeAppVersionInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionInput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionInput.type = Types::DescribeAppVersionInput
    DescribeAppVersionOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionOutput.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInfoMap, name: "additionalInfo"))
    DescribeAppVersionOutput.type = Types::DescribeAppVersionOutput
    DescribeAppVersionResourceInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionResourceInput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionResourceInput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "resourceName"))
    DescribeAppVersionResourceInput.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "logicalResourceId"))
    DescribeAppVersionResourceInput.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String2048, name: "physicalResourceId"))
    DescribeAppVersionResourceInput.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "awsRegion"))
    DescribeAppVersionResourceInput.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "awsAccountId"))
    DescribeAppVersionResourceInput.type = Types::DescribeAppVersionResourceInput
    DescribeAppVersionResourceOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionResourceOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionResourceOutput.add_member(:physical_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResource, name: "physicalResource"))
    DescribeAppVersionResourceOutput.type = Types::DescribeAppVersionResourceOutput
    DescribeAppVersionResourcesResolutionStatusInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionResourcesResolutionStatusInput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionResourcesResolutionStatusInput.add_member(:resolution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "resolutionId"))
    DescribeAppVersionResourcesResolutionStatusInput.type = Types::DescribeAppVersionResourcesResolutionStatusInput
    DescribeAppVersionResourcesResolutionStatusOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionResourcesResolutionStatusOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionResourcesResolutionStatusOutput.add_member(:resolution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "resolutionId", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionResourcesResolutionStatusOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceResolutionStatusType, name: "status", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionResourcesResolutionStatusOutput.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "errorMessage"))
    DescribeAppVersionResourcesResolutionStatusOutput.type = Types::DescribeAppVersionResourcesResolutionStatusOutput
    DescribeAppVersionTemplateInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionTemplateInput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionTemplateInput.type = Types::DescribeAppVersionTemplateInput
    DescribeAppVersionTemplateOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionTemplateOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionTemplateOutput.add_member(:app_template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: AppTemplateBody, name: "appTemplateBody", traits: {"smithy.api#required" => {}}))
    DescribeAppVersionTemplateOutput.type = Types::DescribeAppVersionTemplateOutput
    DescribeDraftAppVersionResourcesImportStatusInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DescribeDraftAppVersionResourcesImportStatusInput.type = Types::DescribeDraftAppVersionResourcesImportStatusInput
    DescribeDraftAppVersionResourcesImportStatusOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DescribeDraftAppVersionResourcesImportStatusOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    DescribeDraftAppVersionResourcesImportStatusOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceImportStatusType, name: "status", traits: {"smithy.api#required" => {}}))
    DescribeDraftAppVersionResourcesImportStatusOutput.add_member(:status_change_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "statusChangeTime", traits: {"smithy.api#required" => {}}))
    DescribeDraftAppVersionResourcesImportStatusOutput.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "errorMessage"))
    DescribeDraftAppVersionResourcesImportStatusOutput.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetailList, name: "errorDetails"))
    DescribeDraftAppVersionResourcesImportStatusOutput.type = Types::DescribeDraftAppVersionResourcesImportStatusOutput
    DescribeMetricsExportRequest.add_member(:metrics_export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "metricsExportId", traits: {"smithy.api#required" => {}}))
    DescribeMetricsExportRequest.type = Types::DescribeMetricsExportRequest
    DescribeMetricsExportResponse.add_member(:metrics_export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "metricsExportId", traits: {"smithy.api#required" => {}}))
    DescribeMetricsExportResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsExportStatusType, name: "status", traits: {"smithy.api#required" => {}}))
    DescribeMetricsExportResponse.add_member(:export_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "exportLocation"))
    DescribeMetricsExportResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "errorMessage"))
    DescribeMetricsExportResponse.type = Types::DescribeMetricsExportResponse
    DescribeResiliencyPolicyInput.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn", traits: {"smithy.api#required" => {}}))
    DescribeResiliencyPolicyInput.type = Types::DescribeResiliencyPolicyInput
    DescribeResiliencyPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResiliencyPolicy, name: "policy", traits: {"smithy.api#required" => {}}))
    DescribeResiliencyPolicyOutput.type = Types::DescribeResiliencyPolicyOutput
    DescribeResourceGroupingRecommendationTaskRequest.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    DescribeResourceGroupingRecommendationTaskRequest.add_member(:grouping_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "groupingId"))
    DescribeResourceGroupingRecommendationTaskRequest.type = Types::DescribeResourceGroupingRecommendationTaskRequest
    DescribeResourceGroupingRecommendationTaskResponse.add_member(:grouping_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "groupingId", traits: {"smithy.api#required" => {}}))
    DescribeResourceGroupingRecommendationTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesGroupingRecGenStatusType, name: "status", traits: {"smithy.api#required" => {}}))
    DescribeResourceGroupingRecommendationTaskResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "errorMessage"))
    DescribeResourceGroupingRecommendationTaskResponse.type = Types::DescribeResourceGroupingRecommendationTaskResponse
    DifferenceType.add_member(:not_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUAL", traits: {"smithy.api#enumValue" => "NotEqual"}))
    DifferenceType.add_member(:added, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDED", traits: {"smithy.api#enumValue" => "Added"}))
    DifferenceType.add_member(:removed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVED", traits: {"smithy.api#enumValue" => "Removed"}))
    DisruptionCompliance.add_member(:achievable_rto_in_secs, ::Smithy::Schema::Shapes::MemberShape.new(target: Seconds, name: "achievableRtoInSecs", traits: {"smithy.api#default" => 0}))
    DisruptionCompliance.add_member(:current_rto_in_secs, ::Smithy::Schema::Shapes::MemberShape.new(target: Seconds, name: "currentRtoInSecs", traits: {"smithy.api#default" => 0}))
    DisruptionCompliance.add_member(:rto_reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "rtoReferenceId"))
    DisruptionCompliance.add_member(:rto_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "rtoDescription"))
    DisruptionCompliance.add_member(:current_rpo_in_secs, ::Smithy::Schema::Shapes::MemberShape.new(target: Seconds, name: "currentRpoInSecs", traits: {"smithy.api#default" => 0}))
    DisruptionCompliance.add_member(:rpo_reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "rpoReferenceId"))
    DisruptionCompliance.add_member(:rpo_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "rpoDescription"))
    DisruptionCompliance.add_member(:compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStatus, name: "complianceStatus", traits: {"smithy.api#required" => {}}))
    DisruptionCompliance.add_member(:achievable_rpo_in_secs, ::Smithy::Schema::Shapes::MemberShape.new(target: Seconds, name: "achievableRpoInSecs", traits: {"smithy.api#default" => 0}))
    DisruptionCompliance.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "message"))
    DisruptionCompliance.type = Types::DisruptionCompliance
    DisruptionPolicy.key = ::Smithy::Schema::Shapes::MemberShape.new(target: DisruptionType, name: "key")
    DisruptionPolicy.value = ::Smithy::Schema::Shapes::MemberShape.new(target: FailurePolicy, name: "value")
    DisruptionResiliencyScore.key = ::Smithy::Schema::Shapes::MemberShape.new(target: DisruptionType, name: "key")
    DisruptionResiliencyScore.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "value")
    DisruptionType.add_member(:software, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOFTWARE", traits: {"smithy.api#enumValue" => "Software"}))
    DisruptionType.add_member(:hardware, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HARDWARE", traits: {"smithy.api#enumValue" => "Hardware"}))
    DisruptionType.add_member(:az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ", traits: {"smithy.api#enumValue" => "AZ"}))
    DisruptionType.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGION", traits: {"smithy.api#enumValue" => "Region"}))
    DriftStatus.add_member(:not_checked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CHECKED", traits: {"smithy.api#enumValue" => "NotChecked"}))
    DriftStatus.add_member(:not_detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_DETECTED", traits: {"smithy.api#enumValue" => "NotDetected"}))
    DriftStatus.add_member(:detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETECTED", traits: {"smithy.api#enumValue" => "Detected"}))
    DriftType.add_member(:application_compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLICATION_COMPLIANCE", traits: {"smithy.api#enumValue" => "ApplicationCompliance"}))
    DriftType.add_member(:app_component_resiliency_compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APP_COMPONENT_RESILIENCY_COMPLIANCE_STATUS", traits: {"smithy.api#enumValue" => "AppComponentResiliencyComplianceStatus"}))
    EksNamespaceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EksNamespace, name: "member")
    EksSource.add_member(:eks_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "eksClusterArn", traits: {"smithy.api#required" => {}}))
    EksSource.add_member(:namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: EksNamespaceList, name: "namespaces", traits: {"smithy.api#required" => {}}))
    EksSource.type = Types::EksSource
    EksSourceClusterNamespace.add_member(:eks_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "eksClusterArn", traits: {"smithy.api#required" => {}}))
    EksSourceClusterNamespace.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: EksNamespace, name: "namespace", traits: {"smithy.api#required" => {}}))
    EksSourceClusterNamespace.type = Types::EksSourceClusterNamespace
    EksSourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EksSource, name: "member")
    EntityNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "member")
    ErrorDetail.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    ErrorDetail.type = Types::ErrorDetail
    ErrorDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetail, name: "member")
    EstimatedCostTier.add_member(:l1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "L1", traits: {"smithy.api#enumValue" => "L1"}))
    EstimatedCostTier.add_member(:l2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "L2", traits: {"smithy.api#enumValue" => "L2"}))
    EstimatedCostTier.add_member(:l3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "L3", traits: {"smithy.api#enumValue" => "L3"}))
    EstimatedCostTier.add_member(:l4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "L4", traits: {"smithy.api#enumValue" => "L4"}))
    EventSubscription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "name", traits: {"smithy.api#required" => {}}))
    EventSubscription.add_member(:event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "eventType", traits: {"smithy.api#required" => {}}))
    EventSubscription.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "snsTopicArn"))
    EventSubscription.type = Types::EventSubscription
    EventSubscriptionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "member")
    EventType.add_member(:scheduled_assessment_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED_ASSESSMENT_FAILURE", traits: {"smithy.api#enumValue" => "ScheduledAssessmentFailure"}))
    EventType.add_member(:drift_detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRIFT_DETECTED", traits: {"smithy.api#enumValue" => "DriftDetected"}))
    ExcludeRecommendationReason.add_member(:already_implemented, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALREADY_IMPLEMENTED", traits: {"smithy.api#enumValue" => "AlreadyImplemented"}))
    ExcludeRecommendationReason.add_member(:not_relevant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_RELEVANT", traits: {"smithy.api#enumValue" => "NotRelevant"}))
    ExcludeRecommendationReason.add_member(:complexity_of_implementation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLEXITY_OF_IMPLEMENTATION", traits: {"smithy.api#enumValue" => "ComplexityOfImplementation"}))
    Experiment.add_member(:experiment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "experimentArn"))
    Experiment.add_member(:experiment_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "experimentTemplateId"))
    Experiment.type = Types::Experiment
    FailedGroupingRecommendationEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedGroupingRecommendationEntry, name: "member")
    FailedGroupingRecommendationEntry.add_member(:grouping_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "groupingRecommendationId", traits: {"smithy.api#required" => {}}))
    FailedGroupingRecommendationEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage", traits: {"smithy.api#required" => {}}))
    FailedGroupingRecommendationEntry.type = Types::FailedGroupingRecommendationEntry
    FailurePolicy.add_member(:rto_in_secs, ::Smithy::Schema::Shapes::MemberShape.new(target: Seconds, name: "rtoInSecs", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    FailurePolicy.add_member(:rpo_in_secs, ::Smithy::Schema::Shapes::MemberShape.new(target: Seconds, name: "rpoInSecs", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    FailurePolicy.type = Types::FailurePolicy
    Field.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "name", traits: {"smithy.api#required" => {}}))
    Field.add_member(:aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldAggregationType, name: "aggregation"))
    Field.type = Types::Field
    FieldAggregationType.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIN", traits: {"smithy.api#enumValue" => "Min"}))
    FieldAggregationType.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX", traits: {"smithy.api#enumValue" => "Max"}))
    FieldAggregationType.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUM", traits: {"smithy.api#enumValue" => "Sum"}))
    FieldAggregationType.add_member(:avg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVG", traits: {"smithy.api#enumValue" => "Avg"}))
    FieldAggregationType.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "Count"}))
    FieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Field, name: "member")
    GroupingAppComponent.add_member(:app_component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName255, name: "appComponentId", traits: {"smithy.api#required" => {}}))
    GroupingAppComponent.add_member(:app_component_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "appComponentType", traits: {"smithy.api#required" => {}}))
    GroupingAppComponent.add_member(:app_component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName255, name: "appComponentName", traits: {"smithy.api#required" => {}}))
    GroupingAppComponent.type = Types::GroupingAppComponent
    GroupingRecommendation.add_member(:grouping_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "groupingRecommendationId", traits: {"smithy.api#required" => {}}))
    GroupingRecommendation.add_member(:grouping_app_component, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingAppComponent, name: "groupingAppComponent", traits: {"smithy.api#required" => {}}))
    GroupingRecommendation.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingResourceList, name: "resources", traits: {"smithy.api#required" => {}}))
    GroupingRecommendation.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "score", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GroupingRecommendation.add_member(:recommendation_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: String255List, name: "recommendationReasons", traits: {"smithy.api#required" => {}}))
    GroupingRecommendation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingRecommendationStatusType, name: "status", traits: {"smithy.api#required" => {}}))
    GroupingRecommendation.add_member(:confidence_level, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingRecommendationConfidenceLevel, name: "confidenceLevel", traits: {"smithy.api#required" => {}}))
    GroupingRecommendation.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    GroupingRecommendation.add_member(:rejection_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingRecommendationRejectionReason, name: "rejectionReason"))
    GroupingRecommendation.type = Types::GroupingRecommendation
    GroupingRecommendationConfidenceLevel.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "High"}))
    GroupingRecommendationConfidenceLevel.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "Medium"}))
    GroupingRecommendationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingRecommendation, name: "member")
    GroupingRecommendationRejectionReason.add_member(:distinct_business_purpose, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTINCT_BUSINESS_PURPOSE", traits: {"smithy.api#enumValue" => "DistinctBusinessPurpose"}))
    GroupingRecommendationRejectionReason.add_member(:separate_data_concern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEPARATE_DATA_CONCERN", traits: {"smithy.api#enumValue" => "SeparateDataConcern"}))
    GroupingRecommendationRejectionReason.add_member(:distinct_user_group_handling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTINCT_USER_GROUP_HANDLING", traits: {"smithy.api#enumValue" => "DistinctUserGroupHandling"}))
    GroupingRecommendationRejectionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "Other"}))
    GroupingRecommendationStatusType.add_member(:accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPTED", traits: {"smithy.api#enumValue" => "Accepted"}))
    GroupingRecommendationStatusType.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "Rejected"}))
    GroupingRecommendationStatusType.add_member(:pending_decision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DECISION", traits: {"smithy.api#enumValue" => "PendingDecision"}))
    GroupingResource.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "resourceName", traits: {"smithy.api#required" => {}}))
    GroupingResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "resourceType", traits: {"smithy.api#required" => {}}))
    GroupingResource.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceId, name: "physicalResourceId", traits: {"smithy.api#required" => {}}))
    GroupingResource.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "logicalResourceId", traits: {"smithy.api#required" => {}}))
    GroupingResource.add_member(:source_app_component_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: String255List, name: "sourceAppComponentIds", traits: {"smithy.api#required" => {}}))
    GroupingResource.type = Types::GroupingResource
    GroupingResourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingResource, name: "member")
    HaArchitecture.add_member(:multi_site, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI_SITE", traits: {"smithy.api#enumValue" => "MultiSite"}))
    HaArchitecture.add_member(:warm_standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARM_STANDBY", traits: {"smithy.api#enumValue" => "WarmStandby"}))
    HaArchitecture.add_member(:pilot_light, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PILOT_LIGHT", traits: {"smithy.api#enumValue" => "PilotLight"}))
    HaArchitecture.add_member(:backup_and_restore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKUP_AND_RESTORE", traits: {"smithy.api#enumValue" => "BackupAndRestore"}))
    HaArchitecture.add_member(:no_recovery_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_RECOVERY_PLAN", traits: {"smithy.api#enumValue" => "NoRecoveryPlan"}))
    IamRoleArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "member")
    ImportResourcesToDraftAppVersionInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    ImportResourcesToDraftAppVersionInput.add_member(:source_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "sourceArns"))
    ImportResourcesToDraftAppVersionInput.add_member(:terraform_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: TerraformSourceList, name: "terraformSources"))
    ImportResourcesToDraftAppVersionInput.add_member(:import_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceImportStrategyType, name: "importStrategy"))
    ImportResourcesToDraftAppVersionInput.add_member(:eks_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: EksSourceList, name: "eksSources"))
    ImportResourcesToDraftAppVersionInput.type = Types::ImportResourcesToDraftAppVersionInput
    ImportResourcesToDraftAppVersionOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    ImportResourcesToDraftAppVersionOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    ImportResourcesToDraftAppVersionOutput.add_member(:source_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "sourceArns"))
    ImportResourcesToDraftAppVersionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceImportStatusType, name: "status", traits: {"smithy.api#required" => {}}))
    ImportResourcesToDraftAppVersionOutput.add_member(:terraform_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: TerraformSourceList, name: "terraformSources"))
    ImportResourcesToDraftAppVersionOutput.add_member(:eks_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: EksSourceList, name: "eksSources"))
    ImportResourcesToDraftAppVersionOutput.type = Types::ImportResourcesToDraftAppVersionOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "message"))
    InternalServerException.type = Types::InternalServerException
    ListAlarmRecommendationsInput.add_member(:assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assessmentArn", traits: {"smithy.api#required" => {}}))
    ListAlarmRecommendationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAlarmRecommendationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAlarmRecommendationsInput.type = Types::ListAlarmRecommendationsInput
    ListAlarmRecommendationsOutput.add_member(:alarm_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmRecommendationList, name: "alarmRecommendations", traits: {"smithy.api#required" => {}}))
    ListAlarmRecommendationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAlarmRecommendationsOutput.type = Types::ListAlarmRecommendationsOutput
    ListAppAssessmentComplianceDriftsRequest.add_member(:assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assessmentArn", traits: {"smithy.api#required" => {}}))
    ListAppAssessmentComplianceDriftsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppAssessmentComplianceDriftsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAppAssessmentComplianceDriftsRequest.type = Types::ListAppAssessmentComplianceDriftsRequest
    ListAppAssessmentComplianceDriftsResponse.add_member(:compliance_drifts, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceDriftList, name: "complianceDrifts", traits: {"smithy.api#required" => {}}))
    ListAppAssessmentComplianceDriftsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppAssessmentComplianceDriftsResponse.type = Types::ListAppAssessmentComplianceDriftsResponse
    ListAppAssessmentResourceDriftsRequest.add_member(:assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assessmentArn", traits: {"smithy.api#required" => {}}))
    ListAppAssessmentResourceDriftsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppAssessmentResourceDriftsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAppAssessmentResourceDriftsRequest.type = Types::ListAppAssessmentResourceDriftsRequest
    ListAppAssessmentResourceDriftsResponse.add_member(:resource_drifts, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDriftList, name: "resourceDrifts", traits: {"smithy.api#required" => {}}))
    ListAppAssessmentResourceDriftsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppAssessmentResourceDriftsResponse.type = Types::ListAppAssessmentResourceDriftsResponse
    ListAppAssessmentsInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#httpQuery" => "appArn"}))
    ListAppAssessmentsInput.add_member(:assessment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "assessmentName", traits: {"smithy.api#httpQuery" => "assessmentName"}))
    ListAppAssessmentsInput.add_member(:assessment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatusList, name: "assessmentStatus", traits: {"smithy.api#httpQuery" => "assessmentStatus"}))
    ListAppAssessmentsInput.add_member(:compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStatus, name: "complianceStatus", traits: {"smithy.api#httpQuery" => "complianceStatus"}))
    ListAppAssessmentsInput.add_member(:invoker, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentInvoker, name: "invoker", traits: {"smithy.api#httpQuery" => "invoker"}))
    ListAppAssessmentsInput.add_member(:reverse_order, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "reverseOrder", traits: {"smithy.api#httpQuery" => "reverseOrder"}))
    ListAppAssessmentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAppAssessmentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAppAssessmentsInput.type = Types::ListAppAssessmentsInput
    ListAppAssessmentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppAssessmentsOutput.add_member(:assessment_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AppAssessmentSummaryList, name: "assessmentSummaries", traits: {"smithy.api#required" => {}}))
    ListAppAssessmentsOutput.type = Types::ListAppAssessmentsOutput
    ListAppComponentCompliancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppComponentCompliancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAppComponentCompliancesInput.add_member(:assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assessmentArn", traits: {"smithy.api#required" => {}}))
    ListAppComponentCompliancesInput.type = Types::ListAppComponentCompliancesInput
    ListAppComponentCompliancesOutput.add_member(:component_compliances, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentCompliancesList, name: "componentCompliances", traits: {"smithy.api#required" => {}}))
    ListAppComponentCompliancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppComponentCompliancesOutput.type = Types::ListAppComponentCompliancesOutput
    ListAppComponentRecommendationsInput.add_member(:assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assessmentArn", traits: {"smithy.api#required" => {}}))
    ListAppComponentRecommendationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppComponentRecommendationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAppComponentRecommendationsInput.type = Types::ListAppComponentRecommendationsInput
    ListAppComponentRecommendationsOutput.add_member(:component_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentRecommendationList, name: "componentRecommendations", traits: {"smithy.api#required" => {}}))
    ListAppComponentRecommendationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppComponentRecommendationsOutput.type = Types::ListAppComponentRecommendationsOutput
    ListAppInputSourcesInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    ListAppInputSourcesInput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    ListAppInputSourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppInputSourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAppInputSourcesInput.type = Types::ListAppInputSourcesInput
    ListAppInputSourcesOutput.add_member(:app_input_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: AppInputSourceList, name: "appInputSources", traits: {"smithy.api#required" => {}}))
    ListAppInputSourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppInputSourcesOutput.type = Types::ListAppInputSourcesOutput
    ListAppVersionAppComponentsInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    ListAppVersionAppComponentsInput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    ListAppVersionAppComponentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppVersionAppComponentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAppVersionAppComponentsInput.type = Types::ListAppVersionAppComponentsInput
    ListAppVersionAppComponentsOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    ListAppVersionAppComponentsOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    ListAppVersionAppComponentsOutput.add_member(:app_components, ::Smithy::Schema::Shapes::MemberShape.new(target: AppComponentList, name: "appComponents"))
    ListAppVersionAppComponentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppVersionAppComponentsOutput.type = Types::ListAppVersionAppComponentsOutput
    ListAppVersionResourceMappingsInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    ListAppVersionResourceMappingsInput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    ListAppVersionResourceMappingsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppVersionResourceMappingsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAppVersionResourceMappingsInput.type = Types::ListAppVersionResourceMappingsInput
    ListAppVersionResourceMappingsOutput.add_member(:resource_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMappingList, name: "resourceMappings", traits: {"smithy.api#required" => {}}))
    ListAppVersionResourceMappingsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppVersionResourceMappingsOutput.type = Types::ListAppVersionResourceMappingsOutput
    ListAppVersionResourcesInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    ListAppVersionResourcesInput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    ListAppVersionResourcesInput.add_member(:resolution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "resolutionId"))
    ListAppVersionResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppVersionResourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAppVersionResourcesInput.type = Types::ListAppVersionResourcesInput
    ListAppVersionResourcesOutput.add_member(:physical_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceList, name: "physicalResources", traits: {"smithy.api#required" => {}}))
    ListAppVersionResourcesOutput.add_member(:resolution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "resolutionId", traits: {"smithy.api#required" => {}}))
    ListAppVersionResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppVersionResourcesOutput.type = Types::ListAppVersionResourcesOutput
    ListAppVersionsInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    ListAppVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppVersionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAppVersionsInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "startTime"))
    ListAppVersionsInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "endTime"))
    ListAppVersionsInput.type = Types::ListAppVersionsInput
    ListAppVersionsOutput.add_member(:app_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: AppVersionList, name: "appVersions", traits: {"smithy.api#required" => {}}))
    ListAppVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppVersionsOutput.type = Types::ListAppVersionsOutput
    ListAppsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAppsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAppsInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#httpQuery" => "name"}))
    ListAppsInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#httpQuery" => "appArn"}))
    ListAppsInput.add_member(:from_last_assessment_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "fromLastAssessmentTime", traits: {"smithy.api#httpQuery" => "fromLastAssessmentTime"}))
    ListAppsInput.add_member(:to_last_assessment_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "toLastAssessmentTime", traits: {"smithy.api#httpQuery" => "toLastAssessmentTime"}))
    ListAppsInput.add_member(:reverse_order, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "reverseOrder", traits: {"smithy.api#httpQuery" => "reverseOrder"}))
    ListAppsInput.add_member(:aws_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "awsApplicationArn", traits: {"smithy.api#httpQuery" => "awsApplicationArn"}))
    ListAppsInput.type = Types::ListAppsInput
    ListAppsOutput.add_member(:app_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AppSummaryList, name: "appSummaries", traits: {"smithy.api#required" => {}}))
    ListAppsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAppsOutput.type = Types::ListAppsOutput
    ListMetricsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListMetricsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListMetricsRequest.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldList, name: "fields"))
    ListMetricsRequest.add_member(:data_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "dataSource"))
    ListMetricsRequest.add_member(:conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionList, name: "conditions"))
    ListMetricsRequest.add_member(:sorts, ::Smithy::Schema::Shapes::MemberShape.new(target: SortList, name: "sorts"))
    ListMetricsRequest.type = Types::ListMetricsRequest
    ListMetricsResponse.add_member(:rows, ::Smithy::Schema::Shapes::MemberShape.new(target: RowList, name: "rows", traits: {"smithy.api#required" => {}}))
    ListMetricsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListMetricsResponse.type = Types::ListMetricsResponse
    ListRecommendationTemplatesInput.add_member(:assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assessmentArn", traits: {"smithy.api#httpQuery" => "assessmentArn"}))
    ListRecommendationTemplatesInput.add_member(:reverse_order, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "reverseOrder", traits: {"smithy.api#httpQuery" => "reverseOrder"}))
    ListRecommendationTemplatesInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTemplateStatusList, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListRecommendationTemplatesInput.add_member(:recommendation_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "recommendationTemplateArn", traits: {"smithy.api#httpQuery" => "recommendationTemplateArn"}))
    ListRecommendationTemplatesInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#httpQuery" => "name"}))
    ListRecommendationTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRecommendationTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRecommendationTemplatesInput.type = Types::ListRecommendationTemplatesInput
    ListRecommendationTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRecommendationTemplatesOutput.add_member(:recommendation_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTemplateList, name: "recommendationTemplates"))
    ListRecommendationTemplatesOutput.type = Types::ListRecommendationTemplatesOutput
    ListResiliencyPoliciesInput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "policyName", traits: {"smithy.api#httpQuery" => "policyName"}))
    ListResiliencyPoliciesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResiliencyPoliciesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListResiliencyPoliciesInput.type = Types::ListResiliencyPoliciesInput
    ListResiliencyPoliciesOutput.add_member(:resiliency_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ResiliencyPolicies, name: "resiliencyPolicies", traits: {"smithy.api#required" => {}}))
    ListResiliencyPoliciesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListResiliencyPoliciesOutput.type = Types::ListResiliencyPoliciesOutput
    ListResourceGroupingRecommendationsRequest.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#httpQuery" => "appArn"}))
    ListResourceGroupingRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResourceGroupingRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListResourceGroupingRecommendationsRequest.type = Types::ListResourceGroupingRecommendationsRequest
    ListResourceGroupingRecommendationsResponse.add_member(:grouping_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingRecommendationList, name: "groupingRecommendations", traits: {"smithy.api#required" => {}}))
    ListResourceGroupingRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListResourceGroupingRecommendationsResponse.type = Types::ListResourceGroupingRecommendationsResponse
    ListSopRecommendationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSopRecommendationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListSopRecommendationsInput.add_member(:assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assessmentArn", traits: {"smithy.api#required" => {}}))
    ListSopRecommendationsInput.type = Types::ListSopRecommendationsInput
    ListSopRecommendationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSopRecommendationsOutput.add_member(:sop_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: SopRecommendationList, name: "sopRecommendations", traits: {"smithy.api#required" => {}}))
    ListSopRecommendationsOutput.type = Types::ListSopRecommendationsOutput
    ListSuggestedResiliencyPoliciesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSuggestedResiliencyPoliciesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSuggestedResiliencyPoliciesInput.type = Types::ListSuggestedResiliencyPoliciesInput
    ListSuggestedResiliencyPoliciesOutput.add_member(:resiliency_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ResiliencyPolicies, name: "resiliencyPolicies", traits: {"smithy.api#required" => {}}))
    ListSuggestedResiliencyPoliciesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSuggestedResiliencyPoliciesOutput.type = Types::ListSuggestedResiliencyPoliciesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTestRecommendationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestRecommendationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListTestRecommendationsInput.add_member(:assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assessmentArn", traits: {"smithy.api#required" => {}}))
    ListTestRecommendationsInput.type = Types::ListTestRecommendationsInput
    ListTestRecommendationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTestRecommendationsOutput.add_member(:test_recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRecommendationList, name: "testRecommendations", traits: {"smithy.api#required" => {}}))
    ListTestRecommendationsOutput.type = Types::ListTestRecommendationsOutput
    ListUnsupportedAppVersionResourcesInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    ListUnsupportedAppVersionResourcesInput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    ListUnsupportedAppVersionResourcesInput.add_member(:resolution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "resolutionId"))
    ListUnsupportedAppVersionResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListUnsupportedAppVersionResourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListUnsupportedAppVersionResourcesInput.type = Types::ListUnsupportedAppVersionResourcesInput
    ListUnsupportedAppVersionResourcesOutput.add_member(:unsupported_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: UnsupportedResourceList, name: "unsupportedResources", traits: {"smithy.api#required" => {}}))
    ListUnsupportedAppVersionResourcesOutput.add_member(:resolution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "resolutionId", traits: {"smithy.api#required" => {}}))
    ListUnsupportedAppVersionResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListUnsupportedAppVersionResourcesOutput.type = Types::ListUnsupportedAppVersionResourcesOutput
    LogicalResourceId.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "identifier", traits: {"smithy.api#required" => {}}))
    LogicalResourceId.add_member(:logical_stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "logicalStackName"))
    LogicalResourceId.add_member(:resource_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "resourceGroupName"))
    LogicalResourceId.add_member(:terraform_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "terraformSourceName"))
    LogicalResourceId.add_member(:eks_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "eksSourceName"))
    LogicalResourceId.type = Types::LogicalResourceId
    MetricsExportStatusType.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    MetricsExportStatusType.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    MetricsExportStatusType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    MetricsExportStatusType.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    PermissionModel.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionModelType, name: "type", traits: {"smithy.api#required" => {}}))
    PermissionModel.add_member(:invoker_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleName, name: "invokerRoleName"))
    PermissionModel.add_member(:cross_account_role_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArnList, name: "crossAccountRoleArns"))
    PermissionModel.type = Types::PermissionModel
    PermissionModelType.add_member(:legacy_iam_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEGACY_IAM_USER", traits: {"smithy.api#enumValue" => "LegacyIAMUser"}))
    PermissionModelType.add_member(:role_based, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLE_BASED", traits: {"smithy.api#enumValue" => "RoleBased"}))
    PhysicalIdentifierType.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARN", traits: {"smithy.api#enumValue" => "Arn"}))
    PhysicalIdentifierType.add_member(:native, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NATIVE", traits: {"smithy.api#enumValue" => "Native"}))
    PhysicalResource.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "resourceName"))
    PhysicalResource.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "logicalResourceId", traits: {"smithy.api#required" => {}}))
    PhysicalResource.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceId, name: "physicalResourceId", traits: {"smithy.api#required" => {}}))
    PhysicalResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "resourceType", traits: {"smithy.api#required" => {}}))
    PhysicalResource.add_member(:app_components, ::Smithy::Schema::Shapes::MemberShape.new(target: AppComponentList, name: "appComponents"))
    PhysicalResource.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInfoMap, name: "additionalInfo"))
    PhysicalResource.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "excluded"))
    PhysicalResource.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSourceType, name: "sourceType"))
    PhysicalResource.add_member(:parent_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "parentResourceName"))
    PhysicalResource.type = Types::PhysicalResource
    PhysicalResourceId.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "identifier", traits: {"smithy.api#required" => {}}))
    PhysicalResourceId.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalIdentifierType, name: "type", traits: {"smithy.api#required" => {}}))
    PhysicalResourceId.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "awsRegion"))
    PhysicalResourceId.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "awsAccountId"))
    PhysicalResourceId.type = Types::PhysicalResourceId
    PhysicalResourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResource, name: "member")
    PublishAppVersionInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    PublishAppVersionInput.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "versionName"))
    PublishAppVersionInput.type = Types::PublishAppVersionInput
    PublishAppVersionOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    PublishAppVersionOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion"))
    PublishAppVersionOutput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "identifier"))
    PublishAppVersionOutput.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "versionName"))
    PublishAppVersionOutput.type = Types::PublishAppVersionOutput
    PutDraftAppVersionTemplateInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    PutDraftAppVersionTemplateInput.add_member(:app_template_body, ::Smithy::Schema::Shapes::MemberShape.new(target: AppTemplateBody, name: "appTemplateBody", traits: {"smithy.api#required" => {}}))
    PutDraftAppVersionTemplateInput.type = Types::PutDraftAppVersionTemplateInput
    PutDraftAppVersionTemplateOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn"))
    PutDraftAppVersionTemplateOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion"))
    PutDraftAppVersionTemplateOutput.type = Types::PutDraftAppVersionTemplateOutput
    RecommendationCompliance.key = ::Smithy::Schema::Shapes::MemberShape.new(target: DisruptionType, name: "key")
    RecommendationCompliance.value = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationDisruptionCompliance, name: "value")
    RecommendationComplianceStatus.add_member(:breached_unattainable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BREACHED_UNATTAINABLE", traits: {"smithy.api#enumValue" => "BreachedUnattainable"}))
    RecommendationComplianceStatus.add_member(:breached_can_meet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BREACHED_CAN_MEET", traits: {"smithy.api#enumValue" => "BreachedCanMeet"}))
    RecommendationComplianceStatus.add_member(:met_can_improve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MET_CAN_IMPROVE", traits: {"smithy.api#enumValue" => "MetCanImprove"}))
    RecommendationComplianceStatus.add_member(:missing_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_POLICY", traits: {"smithy.api#enumValue" => "MissingPolicy"}))
    RecommendationDisruptionCompliance.add_member(:expected_compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStatus, name: "expectedComplianceStatus", traits: {"smithy.api#required" => {}}))
    RecommendationDisruptionCompliance.add_member(:expected_rto_in_secs, ::Smithy::Schema::Shapes::MemberShape.new(target: Seconds, name: "expectedRtoInSecs", traits: {"smithy.api#default" => 0}))
    RecommendationDisruptionCompliance.add_member(:expected_rto_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "expectedRtoDescription"))
    RecommendationDisruptionCompliance.add_member(:expected_rpo_in_secs, ::Smithy::Schema::Shapes::MemberShape.new(target: Seconds, name: "expectedRpoInSecs", traits: {"smithy.api#default" => 0}))
    RecommendationDisruptionCompliance.add_member(:expected_rpo_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "expectedRpoDescription"))
    RecommendationDisruptionCompliance.type = Types::RecommendationDisruptionCompliance
    RecommendationIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "member")
    RecommendationItem.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "resourceId"))
    RecommendationItem.add_member(:target_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "targetAccountId"))
    RecommendationItem.add_member(:target_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "targetRegion"))
    RecommendationItem.add_member(:already_implemented, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "alreadyImplemented"))
    RecommendationItem.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "excluded"))
    RecommendationItem.add_member(:exclude_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeRecommendationReason, name: "excludeReason"))
    RecommendationItem.add_member(:latest_discovered_experiment, ::Smithy::Schema::Shapes::MemberShape.new(target: Experiment, name: "latestDiscoveredExperiment"))
    RecommendationItem.add_member(:discovered_alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: Alarm, name: "discoveredAlarm"))
    RecommendationItem.type = Types::RecommendationItem
    RecommendationItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationItem, name: "member")
    RecommendationStatus.add_member(:implemented, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPLEMENTED", traits: {"smithy.api#enumValue" => "Implemented"}))
    RecommendationStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "Inactive"}))
    RecommendationStatus.add_member(:not_implemented, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_IMPLEMENTED", traits: {"smithy.api#enumValue" => "NotImplemented"}))
    RecommendationStatus.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUDED", traits: {"smithy.api#enumValue" => "Excluded"}))
    RecommendationTemplate.add_member(:templates_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "templatesLocation"))
    RecommendationTemplate.add_member(:assessment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "assessmentArn", traits: {"smithy.api#required" => {}}))
    RecommendationTemplate.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn"))
    RecommendationTemplate.add_member(:recommendation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationIdList, name: "recommendationIds"))
    RecommendationTemplate.add_member(:recommendation_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RenderRecommendationTypeList, name: "recommendationTypes", traits: {"smithy.api#required" => {}}))
    RecommendationTemplate.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateFormat, name: "format", traits: {"smithy.api#required" => {}}))
    RecommendationTemplate.add_member(:recommendation_template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "recommendationTemplateArn", traits: {"smithy.api#required" => {}}))
    RecommendationTemplate.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "message"))
    RecommendationTemplate.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTemplateStatus, name: "status", traits: {"smithy.api#required" => {}}))
    RecommendationTemplate.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "name", traits: {"smithy.api#required" => {}}))
    RecommendationTemplate.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "startTime"))
    RecommendationTemplate.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "endTime"))
    RecommendationTemplate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    RecommendationTemplate.add_member(:needs_replacements, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "needsReplacements"))
    RecommendationTemplate.type = Types::RecommendationTemplate
    RecommendationTemplateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTemplate, name: "member")
    RecommendationTemplateStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    RecommendationTemplateStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    RecommendationTemplateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    RecommendationTemplateStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    RecommendationTemplateStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTemplateStatus, name: "member")
    RejectGroupingRecommendationEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RejectGroupingRecommendationEntry, name: "member")
    RejectGroupingRecommendationEntry.add_member(:grouping_recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "groupingRecommendationId", traits: {"smithy.api#required" => {}}))
    RejectGroupingRecommendationEntry.add_member(:rejection_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingRecommendationRejectionReason, name: "rejectionReason"))
    RejectGroupingRecommendationEntry.type = Types::RejectGroupingRecommendationEntry
    RejectResourceGroupingRecommendationsRequest.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    RejectResourceGroupingRecommendationsRequest.add_member(:entries, ::Smithy::Schema::Shapes::MemberShape.new(target: RejectGroupingRecommendationEntries, name: "entries", traits: {"smithy.api#required" => {}}))
    RejectResourceGroupingRecommendationsRequest.type = Types::RejectResourceGroupingRecommendationsRequest
    RejectResourceGroupingRecommendationsResponse.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    RejectResourceGroupingRecommendationsResponse.add_member(:failed_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedGroupingRecommendationEntries, name: "failedEntries", traits: {"smithy.api#required" => {}}))
    RejectResourceGroupingRecommendationsResponse.type = Types::RejectResourceGroupingRecommendationsResponse
    RemoveDraftAppVersionResourceMappingsInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    RemoveDraftAppVersionResourceMappingsInput.add_member(:resource_names, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityNameList, name: "resourceNames"))
    RemoveDraftAppVersionResourceMappingsInput.add_member(:logical_stack_names, ::Smithy::Schema::Shapes::MemberShape.new(target: String255List, name: "logicalStackNames"))
    RemoveDraftAppVersionResourceMappingsInput.add_member(:app_registry_app_names, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityNameList, name: "appRegistryAppNames"))
    RemoveDraftAppVersionResourceMappingsInput.add_member(:resource_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityNameList, name: "resourceGroupNames"))
    RemoveDraftAppVersionResourceMappingsInput.add_member(:terraform_source_names, ::Smithy::Schema::Shapes::MemberShape.new(target: String255List, name: "terraformSourceNames"))
    RemoveDraftAppVersionResourceMappingsInput.add_member(:eks_source_names, ::Smithy::Schema::Shapes::MemberShape.new(target: String255List, name: "eksSourceNames"))
    RemoveDraftAppVersionResourceMappingsInput.type = Types::RemoveDraftAppVersionResourceMappingsInput
    RemoveDraftAppVersionResourceMappingsOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn"))
    RemoveDraftAppVersionResourceMappingsOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion"))
    RemoveDraftAppVersionResourceMappingsOutput.type = Types::RemoveDraftAppVersionResourceMappingsOutput
    RenderRecommendationType.add_member(:alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALARM", traits: {"smithy.api#enumValue" => "Alarm"}))
    RenderRecommendationType.add_member(:sop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOP", traits: {"smithy.api#enumValue" => "Sop"}))
    RenderRecommendationType.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST", traits: {"smithy.api#enumValue" => "Test"}))
    RenderRecommendationTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RenderRecommendationType, name: "member")
    ResiliencyPolicies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResiliencyPolicy, name: "member")
    ResiliencyPolicy.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    ResiliencyPolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "policyName"))
    ResiliencyPolicy.add_member(:policy_description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "policyDescription"))
    ResiliencyPolicy.add_member(:data_location_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLocationConstraint, name: "dataLocationConstraint"))
    ResiliencyPolicy.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResiliencyPolicyTier, name: "tier"))
    ResiliencyPolicy.add_member(:estimated_cost_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: EstimatedCostTier, name: "estimatedCostTier"))
    ResiliencyPolicy.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DisruptionPolicy, name: "policy"))
    ResiliencyPolicy.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "creationTime"))
    ResiliencyPolicy.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ResiliencyPolicy.type = Types::ResiliencyPolicy
    ResiliencyPolicyTier.add_member(:mission_critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSION_CRITICAL", traits: {"smithy.api#enumValue" => "MissionCritical"}))
    ResiliencyPolicyTier.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRITICAL", traits: {"smithy.api#enumValue" => "Critical"}))
    ResiliencyPolicyTier.add_member(:important, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORTANT", traits: {"smithy.api#enumValue" => "Important"}))
    ResiliencyPolicyTier.add_member(:core_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CORE_SERVICES", traits: {"smithy.api#enumValue" => "CoreServices"}))
    ResiliencyPolicyTier.add_member(:non_critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_CRITICAL", traits: {"smithy.api#enumValue" => "NonCritical"}))
    ResiliencyPolicyTier.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "NotApplicable"}))
    ResiliencyScore.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "score", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ResiliencyScore.add_member(:disruption_score, ::Smithy::Schema::Shapes::MemberShape.new(target: DisruptionResiliencyScore, name: "disruptionScore", traits: {"smithy.api#required" => {}}))
    ResiliencyScore.add_member(:component_score, ::Smithy::Schema::Shapes::MemberShape.new(target: ScoringComponentResiliencyScores, name: "componentScore"))
    ResiliencyScore.type = Types::ResiliencyScore
    ResiliencyScoreType.add_member(:compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLIANCE", traits: {"smithy.api#enumValue" => "Compliance"}))
    ResiliencyScoreType.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST", traits: {"smithy.api#enumValue" => "Test"}))
    ResiliencyScoreType.add_member(:alarm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALARM", traits: {"smithy.api#enumValue" => "Alarm"}))
    ResiliencyScoreType.add_member(:sop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOP", traits: {"smithy.api#enumValue" => "Sop"}))
    ResolveAppVersionResourcesInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    ResolveAppVersionResourcesInput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    ResolveAppVersionResourcesInput.type = Types::ResolveAppVersionResourcesInput
    ResolveAppVersionResourcesOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    ResolveAppVersionResourcesOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    ResolveAppVersionResourcesOutput.add_member(:resolution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "resolutionId", traits: {"smithy.api#required" => {}}))
    ResolveAppVersionResourcesOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceResolutionStatusType, name: "status", traits: {"smithy.api#required" => {}}))
    ResolveAppVersionResourcesOutput.type = Types::ResolveAppVersionResourcesOutput
    ResourceDrift.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn"))
    ResourceDrift.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion"))
    ResourceDrift.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "referenceId"))
    ResourceDrift.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "resourceIdentifier"))
    ResourceDrift.add_member(:diff_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferenceType, name: "diffType"))
    ResourceDrift.type = Types::ResourceDrift
    ResourceDriftList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDrift, name: "member")
    ResourceError.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "logicalResourceId"))
    ResourceError.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "physicalResourceId"))
    ResourceError.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "reason"))
    ResourceError.type = Types::ResourceError
    ResourceErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceError, name: "member")
    ResourceErrorsDetails.add_member(:resource_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceErrorList, name: "resourceErrors"))
    ResourceErrorsDetails.add_member(:has_more_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "hasMoreErrors"))
    ResourceErrorsDetails.type = Types::ResourceErrorsDetails
    ResourceIdentifier.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "logicalResourceId"))
    ResourceIdentifier.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "resourceType"))
    ResourceIdentifier.type = Types::ResourceIdentifier
    ResourceImportStatusType.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    ResourceImportStatusType.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    ResourceImportStatusType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    ResourceImportStatusType.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    ResourceImportStrategyType.add_member(:add_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADD_ONLY", traits: {"smithy.api#enumValue" => "AddOnly"}))
    ResourceImportStrategyType.add_member(:replace_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE_ALL", traits: {"smithy.api#enumValue" => "ReplaceAll"}))
    ResourceMapping.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "resourceName"))
    ResourceMapping.add_member(:logical_stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "logicalStackName"))
    ResourceMapping.add_member(:app_registry_app_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "appRegistryAppName"))
    ResourceMapping.add_member(:resource_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "resourceGroupName"))
    ResourceMapping.add_member(:mapping_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMappingType, name: "mappingType", traits: {"smithy.api#required" => {}}))
    ResourceMapping.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceId, name: "physicalResourceId", traits: {"smithy.api#required" => {}}))
    ResourceMapping.add_member(:terraform_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "terraformSourceName"))
    ResourceMapping.add_member(:eks_source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "eksSourceName"))
    ResourceMapping.type = Types::ResourceMapping
    ResourceMappingList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMapping, name: "member")
    ResourceMappingType.add_member(:cfn_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CFN_STACK", traits: {"smithy.api#enumValue" => "CfnStack"}))
    ResourceMappingType.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE", traits: {"smithy.api#enumValue" => "Resource"}))
    ResourceMappingType.add_member(:app_registry_app, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APP_REGISTRY_APP", traits: {"smithy.api#enumValue" => "AppRegistryApp"}))
    ResourceMappingType.add_member(:resource_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_GROUP", traits: {"smithy.api#enumValue" => "ResourceGroup"}))
    ResourceMappingType.add_member(:terraform, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERRAFORM", traits: {"smithy.api#enumValue" => "Terraform"}))
    ResourceMappingType.add_member(:eks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EKS", traits: {"smithy.api#enumValue" => "EKS"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "message"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceResolutionStatusType.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    ResourceResolutionStatusType.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    ResourceResolutionStatusType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    ResourceResolutionStatusType.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    ResourceSourceType.add_member(:app_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APP_TEMPLATE", traits: {"smithy.api#enumValue" => "AppTemplate"}))
    ResourceSourceType.add_member(:discovered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISCOVERED", traits: {"smithy.api#enumValue" => "Discovered"}))
    ResourcesGroupingRecGenStatusType.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    ResourcesGroupingRecGenStatusType.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    ResourcesGroupingRecGenStatusType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    ResourcesGroupingRecGenStatusType.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    Row.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "member")
    RowList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Row, name: "member")
    S3Location.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "bucket"))
    S3Location.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "prefix"))
    S3Location.type = Types::S3Location
    ScoringComponentResiliencyScore.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "score", traits: {"smithy.api#default" => 0}))
    ScoringComponentResiliencyScore.add_member(:possible_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "possibleScore", traits: {"smithy.api#default" => 0}))
    ScoringComponentResiliencyScore.add_member(:outstanding_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "outstandingCount", traits: {"smithy.api#default" => 0}))
    ScoringComponentResiliencyScore.add_member(:excluded_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "excludedCount", traits: {"smithy.api#default" => 0}))
    ScoringComponentResiliencyScore.type = Types::ScoringComponentResiliencyScore
    ScoringComponentResiliencyScores.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ResiliencyScoreType, name: "key")
    ScoringComponentResiliencyScores.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ScoringComponentResiliencyScore, name: "value")
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SopRecommendation.add_member(:service_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SopServiceType, name: "serviceType", traits: {"smithy.api#required" => {}}))
    SopRecommendation.add_member(:app_component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "appComponentName"))
    SopRecommendation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "description"))
    SopRecommendation.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "recommendationId", traits: {"smithy.api#required" => {}}))
    SopRecommendation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "name"))
    SopRecommendation.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationItemList, name: "items"))
    SopRecommendation.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpecReferenceId, name: "referenceId", traits: {"smithy.api#required" => {}}))
    SopRecommendation.add_member(:prerequisite, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "prerequisite"))
    SopRecommendation.add_member(:recommendation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, name: "recommendationStatus"))
    SopRecommendation.type = Types::SopRecommendation
    SopRecommendationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SopRecommendation, name: "member")
    SopServiceType.add_member(:ssm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSM", traits: {"smithy.api#enumValue" => "SSM"}))
    Sort.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "field", traits: {"smithy.api#required" => {}}))
    Sort.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ascending"))
    Sort.type = Types::Sort
    SortList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Sort, name: "member")
    StartAppAssessmentInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    StartAppAssessmentInput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    StartAppAssessmentInput.add_member(:assessment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "assessmentName", traits: {"smithy.api#required" => {}}))
    StartAppAssessmentInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartAppAssessmentInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    StartAppAssessmentInput.type = Types::StartAppAssessmentInput
    StartAppAssessmentOutput.add_member(:assessment, ::Smithy::Schema::Shapes::MemberShape.new(target: AppAssessment, name: "assessment", traits: {"smithy.api#required" => {}}))
    StartAppAssessmentOutput.type = Types::StartAppAssessmentOutput
    StartMetricsExportRequest.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "bucketName"))
    StartMetricsExportRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartMetricsExportRequest.type = Types::StartMetricsExportRequest
    StartMetricsExportResponse.add_member(:metrics_export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "metricsExportId", traits: {"smithy.api#required" => {}}))
    StartMetricsExportResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsExportStatusType, name: "status", traits: {"smithy.api#required" => {}}))
    StartMetricsExportResponse.type = Types::StartMetricsExportResponse
    StartResourceGroupingRecommendationTaskRequest.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    StartResourceGroupingRecommendationTaskRequest.type = Types::StartResourceGroupingRecommendationTaskRequest
    StartResourceGroupingRecommendationTaskResponse.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    StartResourceGroupingRecommendationTaskResponse.add_member(:grouping_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "groupingId", traits: {"smithy.api#required" => {}}))
    StartResourceGroupingRecommendationTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesGroupingRecGenStatusType, name: "status", traits: {"smithy.api#required" => {}}))
    StartResourceGroupingRecommendationTaskResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "errorMessage"))
    StartResourceGroupingRecommendationTaskResponse.type = Types::StartResourceGroupingRecommendationTaskResponse
    String255List.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "member")
    SuggestedChangesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "member")
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key")
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value")
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TemplateFormat.add_member(:cfn_yaml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CFN_YAML", traits: {"smithy.api#enumValue" => "CfnYaml"}))
    TemplateFormat.add_member(:cfn_json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CFN_JSON", traits: {"smithy.api#enumValue" => "CfnJson"}))
    TerraformSource.add_member(:s3_state_file_url, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Url, name: "s3StateFileUrl", traits: {"smithy.api#required" => {}}))
    TerraformSource.type = Types::TerraformSource
    TerraformSourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TerraformSource, name: "member")
    TestRecommendation.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "recommendationId"))
    TestRecommendation.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpecReferenceId, name: "referenceId", traits: {"smithy.api#required" => {}}))
    TestRecommendation.add_member(:app_component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName255, name: "appComponentId"))
    TestRecommendation.add_member(:app_component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "appComponentName"))
    TestRecommendation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentName, name: "name"))
    TestRecommendation.add_member(:intent, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "intent"))
    TestRecommendation.add_member(:risk, ::Smithy::Schema::Shapes::MemberShape.new(target: TestRisk, name: "risk"))
    TestRecommendation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TestType, name: "type"))
    TestRecommendation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "description"))
    TestRecommendation.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationItemList, name: "items"))
    TestRecommendation.add_member(:prerequisite, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "prerequisite"))
    TestRecommendation.add_member(:depends_on_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: AlarmReferenceIdList, name: "dependsOnAlarms"))
    TestRecommendation.add_member(:recommendation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, name: "recommendationStatus"))
    TestRecommendation.type = Types::TestRecommendation
    TestRecommendationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TestRecommendation, name: "member")
    TestRisk.add_member(:small, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SMALL", traits: {"smithy.api#enumValue" => "Small"}))
    TestRisk.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "Medium"}))
    TestRisk.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "High"}))
    TestType.add_member(:software, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOFTWARE", traits: {"smithy.api#enumValue" => "Software"}))
    TestType.add_member(:hardware, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HARDWARE", traits: {"smithy.api#enumValue" => "Hardware"}))
    TestType.add_member(:az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ", traits: {"smithy.api#enumValue" => "AZ"}))
    TestType.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGION", traits: {"smithy.api#enumValue" => "Region"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "retryAfterSeconds"))
    ThrottlingException.type = Types::ThrottlingException
    UnsupportedResource.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "logicalResourceId", traits: {"smithy.api#required" => {}}))
    UnsupportedResource.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceId, name: "physicalResourceId", traits: {"smithy.api#required" => {}}))
    UnsupportedResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "resourceType", traits: {"smithy.api#required" => {}}))
    UnsupportedResource.add_member(:unsupported_resource_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "unsupportedResourceStatus"))
    UnsupportedResource.type = Types::UnsupportedResource
    UnsupportedResourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UnsupportedResource, name: "member")
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAppInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    UpdateAppInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    UpdateAppInput.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn"))
    UpdateAppInput.add_member(:clear_resiliency_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "clearResiliencyPolicyArn"))
    UpdateAppInput.add_member(:assessment_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: AppAssessmentScheduleType, name: "assessmentSchedule"))
    UpdateAppInput.add_member(:permission_model, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionModel, name: "permissionModel"))
    UpdateAppInput.add_member(:event_subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscriptionList, name: "eventSubscriptions"))
    UpdateAppInput.type = Types::UpdateAppInput
    UpdateAppOutput.add_member(:app, ::Smithy::Schema::Shapes::MemberShape.new(target: App, name: "app", traits: {"smithy.api#required" => {}}))
    UpdateAppOutput.type = Types::UpdateAppOutput
    UpdateAppVersionAppComponentInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    UpdateAppVersionAppComponentInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "id", traits: {"smithy.api#required" => {}}))
    UpdateAppVersionAppComponentInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "name"))
    UpdateAppVersionAppComponentInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "type"))
    UpdateAppVersionAppComponentInput.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInfoMap, name: "additionalInfo"))
    UpdateAppVersionAppComponentInput.type = Types::UpdateAppVersionAppComponentInput
    UpdateAppVersionAppComponentOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    UpdateAppVersionAppComponentOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    UpdateAppVersionAppComponentOutput.add_member(:app_component, ::Smithy::Schema::Shapes::MemberShape.new(target: AppComponent, name: "appComponent"))
    UpdateAppVersionAppComponentOutput.type = Types::UpdateAppVersionAppComponentOutput
    UpdateAppVersionInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    UpdateAppVersionInput.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInfoMap, name: "additionalInfo"))
    UpdateAppVersionInput.type = Types::UpdateAppVersionInput
    UpdateAppVersionOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    UpdateAppVersionOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    UpdateAppVersionOutput.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInfoMap, name: "additionalInfo"))
    UpdateAppVersionOutput.type = Types::UpdateAppVersionOutput
    UpdateAppVersionResourceInput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    UpdateAppVersionResourceInput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "resourceName"))
    UpdateAppVersionResourceInput.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "logicalResourceId"))
    UpdateAppVersionResourceInput.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String2048, name: "physicalResourceId"))
    UpdateAppVersionResourceInput.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "awsRegion"))
    UpdateAppVersionResourceInput.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "awsAccountId"))
    UpdateAppVersionResourceInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "resourceType"))
    UpdateAppVersionResourceInput.add_member(:app_components, ::Smithy::Schema::Shapes::MemberShape.new(target: AppComponentNameList, name: "appComponents"))
    UpdateAppVersionResourceInput.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInfoMap, name: "additionalInfo"))
    UpdateAppVersionResourceInput.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "excluded"))
    UpdateAppVersionResourceInput.type = Types::UpdateAppVersionResourceInput
    UpdateAppVersionResourceOutput.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "appArn", traits: {"smithy.api#required" => {}}))
    UpdateAppVersionResourceOutput.add_member(:app_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityVersion, name: "appVersion", traits: {"smithy.api#required" => {}}))
    UpdateAppVersionResourceOutput.add_member(:physical_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResource, name: "physicalResource"))
    UpdateAppVersionResourceOutput.type = Types::UpdateAppVersionResourceOutput
    UpdateRecommendationStatusItem.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "resourceId"))
    UpdateRecommendationStatusItem.add_member(:target_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerId, name: "targetAccountId"))
    UpdateRecommendationStatusItem.add_member(:target_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsRegion, name: "targetRegion"))
    UpdateRecommendationStatusItem.type = Types::UpdateRecommendationStatusItem
    UpdateRecommendationStatusRequestEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRecommendationStatusRequestEntry, name: "member")
    UpdateRecommendationStatusRequestEntry.add_member(:entry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "entryId", traits: {"smithy.api#required" => {}}))
    UpdateRecommendationStatusRequestEntry.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SpecReferenceId, name: "referenceId", traits: {"smithy.api#required" => {}}))
    UpdateRecommendationStatusRequestEntry.add_member(:item, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRecommendationStatusItem, name: "item"))
    UpdateRecommendationStatusRequestEntry.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "excluded", traits: {"smithy.api#required" => {}}))
    UpdateRecommendationStatusRequestEntry.add_member(:app_component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName255, name: "appComponentId"))
    UpdateRecommendationStatusRequestEntry.add_member(:exclude_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeRecommendationReason, name: "excludeReason"))
    UpdateRecommendationStatusRequestEntry.type = Types::UpdateRecommendationStatusRequestEntry
    UpdateResiliencyPolicyInput.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "policyArn", traits: {"smithy.api#required" => {}}))
    UpdateResiliencyPolicyInput.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityName, name: "policyName"))
    UpdateResiliencyPolicyInput.add_member(:policy_description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "policyDescription"))
    UpdateResiliencyPolicyInput.add_member(:data_location_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: DataLocationConstraint, name: "dataLocationConstraint"))
    UpdateResiliencyPolicyInput.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResiliencyPolicyTier, name: "tier"))
    UpdateResiliencyPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DisruptionPolicy, name: "policy"))
    UpdateResiliencyPolicyInput.type = Types::UpdateResiliencyPolicyInput
    UpdateResiliencyPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResiliencyPolicy, name: "policy", traits: {"smithy.api#required" => {}}))
    UpdateResiliencyPolicyOutput.type = Types::UpdateResiliencyPolicyOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String500, name: "message"))
    ValidationException.type = Types::ValidationException

    AwsResilienceHub = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.resiliencehub#AwsResilienceHub"
      service.name = "AwsResilienceHub"
      service.version = "2020-04-30"
      service.traits = {"aws.api#service" => {"sdkId" => "resiliencehub", "arnNamespace" => "resiliencehub", "cloudFormationName" => "Resiliencehub", "endpointPrefix" => "resiliencehub"}, "aws.auth#sigv4" => {"name" => "resiliencehub"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*,authorization,date,x-amz-date,x-amz-security-token,x-amz-target,content-type,x-amz-content-sha256,x-amz-user-agent,x-amzn-platform-id,x-amzn-trace-id,amz-sdk-invocation-id,amz-sdk-request"]}, "smithy.api#title" => "AWS Resilience Hub"}
      service.add_operation(:accept_resource_grouping_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#AcceptResourceGroupingRecommendations"
        operation.name = "AcceptResourceGroupingRecommendations"
        operation.input = AcceptResourceGroupingRecommendationsRequest
        operation.output = AcceptResourceGroupingRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/accept-resource-grouping-recommendations", "code" => 200}}
      end)
      service.add_operation(:add_draft_app_version_resource_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#AddDraftAppVersionResourceMappings"
        operation.name = "AddDraftAppVersionResourceMappings"
        operation.input = AddDraftAppVersionResourceMappingsInput
        operation.output = AddDraftAppVersionResourceMappingsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/add-draft-app-version-resource-mappings", "code" => 200}}
      end)
      service.add_operation(:batch_update_recommendation_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#BatchUpdateRecommendationStatus"
        operation.name = "BatchUpdateRecommendationStatus"
        operation.input = BatchUpdateRecommendationStatusRequest
        operation.output = BatchUpdateRecommendationStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/batch-update-recommendation-status", "code" => 200}}
      end)
      service.add_operation(:create_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#CreateApp"
        operation.name = "CreateApp"
        operation.input = CreateAppInput
        operation.output = CreateAppOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/create-app", "code" => 200}}
      end)
      service.add_operation(:create_app_version_app_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#CreateAppVersionAppComponent"
        operation.name = "CreateAppVersionAppComponent"
        operation.input = CreateAppVersionAppComponentInput
        operation.output = CreateAppVersionAppComponentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/create-app-version-app-component", "code" => 200}}
      end)
      service.add_operation(:create_app_version_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#CreateAppVersionResource"
        operation.name = "CreateAppVersionResource"
        operation.input = CreateAppVersionResourceInput
        operation.output = CreateAppVersionResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/create-app-version-resource", "code" => 200}}
      end)
      service.add_operation(:create_recommendation_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#CreateRecommendationTemplate"
        operation.name = "CreateRecommendationTemplate"
        operation.input = CreateRecommendationTemplateInput
        operation.output = CreateRecommendationTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/create-recommendation-template", "code" => 200}}
      end)
      service.add_operation(:create_resiliency_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#CreateResiliencyPolicy"
        operation.name = "CreateResiliencyPolicy"
        operation.input = CreateResiliencyPolicyInput
        operation.output = CreateResiliencyPolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/create-resiliency-policy", "code" => 200}}
      end)
      service.add_operation(:delete_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DeleteApp"
        operation.name = "DeleteApp"
        operation.input = DeleteAppInput
        operation.output = DeleteAppOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-app", "code" => 200}}
      end)
      service.add_operation(:delete_app_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DeleteAppAssessment"
        operation.name = "DeleteAppAssessment"
        operation.input = DeleteAppAssessmentInput
        operation.output = DeleteAppAssessmentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-app-assessment", "code" => 200}}
      end)
      service.add_operation(:delete_app_input_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DeleteAppInputSource"
        operation.name = "DeleteAppInputSource"
        operation.input = DeleteAppInputSourceInput
        operation.output = DeleteAppInputSourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-app-input-source", "code" => 200}}
      end)
      service.add_operation(:delete_app_version_app_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DeleteAppVersionAppComponent"
        operation.name = "DeleteAppVersionAppComponent"
        operation.input = DeleteAppVersionAppComponentInput
        operation.output = DeleteAppVersionAppComponentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-app-version-app-component", "code" => 200}}
      end)
      service.add_operation(:delete_app_version_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DeleteAppVersionResource"
        operation.name = "DeleteAppVersionResource"
        operation.input = DeleteAppVersionResourceInput
        operation.output = DeleteAppVersionResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-app-version-resource", "code" => 200}}
      end)
      service.add_operation(:delete_recommendation_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DeleteRecommendationTemplate"
        operation.name = "DeleteRecommendationTemplate"
        operation.input = DeleteRecommendationTemplateInput
        operation.output = DeleteRecommendationTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-recommendation-template", "code" => 200}}
      end)
      service.add_operation(:delete_resiliency_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DeleteResiliencyPolicy"
        operation.name = "DeleteResiliencyPolicy"
        operation.input = DeleteResiliencyPolicyInput
        operation.output = DeleteResiliencyPolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-resiliency-policy", "code" => 200}}
      end)
      service.add_operation(:describe_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DescribeApp"
        operation.name = "DescribeApp"
        operation.input = DescribeAppInput
        operation.output = DescribeAppOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-app", "code" => 200}}
      end)
      service.add_operation(:describe_app_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DescribeAppAssessment"
        operation.name = "DescribeAppAssessment"
        operation.input = DescribeAppAssessmentInput
        operation.output = DescribeAppAssessmentOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-app-assessment", "code" => 200}}
      end)
      service.add_operation(:describe_app_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DescribeAppVersion"
        operation.name = "DescribeAppVersion"
        operation.input = DescribeAppVersionInput
        operation.output = DescribeAppVersionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-app-version", "code" => 200}}
      end)
      service.add_operation(:describe_app_version_app_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DescribeAppVersionAppComponent"
        operation.name = "DescribeAppVersionAppComponent"
        operation.input = DescribeAppVersionAppComponentInput
        operation.output = DescribeAppVersionAppComponentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-app-version-app-component", "code" => 200}}
      end)
      service.add_operation(:describe_app_version_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DescribeAppVersionResource"
        operation.name = "DescribeAppVersionResource"
        operation.input = DescribeAppVersionResourceInput
        operation.output = DescribeAppVersionResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-app-version-resource", "code" => 200}}
      end)
      service.add_operation(:describe_app_version_resources_resolution_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DescribeAppVersionResourcesResolutionStatus"
        operation.name = "DescribeAppVersionResourcesResolutionStatus"
        operation.input = DescribeAppVersionResourcesResolutionStatusInput
        operation.output = DescribeAppVersionResourcesResolutionStatusOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-app-version-resources-resolution-status", "code" => 200}}
      end)
      service.add_operation(:describe_app_version_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DescribeAppVersionTemplate"
        operation.name = "DescribeAppVersionTemplate"
        operation.input = DescribeAppVersionTemplateInput
        operation.output = DescribeAppVersionTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-app-version-template", "code" => 200}}
      end)
      service.add_operation(:describe_draft_app_version_resources_import_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DescribeDraftAppVersionResourcesImportStatus"
        operation.name = "DescribeDraftAppVersionResourcesImportStatus"
        operation.input = DescribeDraftAppVersionResourcesImportStatusInput
        operation.output = DescribeDraftAppVersionResourcesImportStatusOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-draft-app-version-resources-import-status", "code" => 200}}
      end)
      service.add_operation(:describe_metrics_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DescribeMetricsExport"
        operation.name = "DescribeMetricsExport"
        operation.input = DescribeMetricsExportRequest
        operation.output = DescribeMetricsExportResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-metrics-export", "code" => 200}}
      end)
      service.add_operation(:describe_resiliency_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DescribeResiliencyPolicy"
        operation.name = "DescribeResiliencyPolicy"
        operation.input = DescribeResiliencyPolicyInput
        operation.output = DescribeResiliencyPolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-resiliency-policy", "code" => 200}}
      end)
      service.add_operation(:describe_resource_grouping_recommendation_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#DescribeResourceGroupingRecommendationTask"
        operation.name = "DescribeResourceGroupingRecommendationTask"
        operation.input = DescribeResourceGroupingRecommendationTaskRequest
        operation.output = DescribeResourceGroupingRecommendationTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/describe-resource-grouping-recommendation-task", "code" => 200}}
      end)
      service.add_operation(:import_resources_to_draft_app_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ImportResourcesToDraftAppVersion"
        operation.name = "ImportResourcesToDraftAppVersion"
        operation.input = ImportResourcesToDraftAppVersionInput
        operation.output = ImportResourcesToDraftAppVersionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/import-resources-to-draft-app-version", "code" => 200}}
      end)
      service.add_operation(:list_alarm_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListAlarmRecommendations"
        operation.name = "ListAlarmRecommendations"
        operation.input = ListAlarmRecommendationsInput
        operation.output = ListAlarmRecommendationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-alarm-recommendations", "code" => 200}}
        operation[:paginator] = Paginators::ListAlarmRecommendations.new
      end)
      service.add_operation(:list_app_assessment_compliance_drifts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListAppAssessmentComplianceDrifts"
        operation.name = "ListAppAssessmentComplianceDrifts"
        operation.input = ListAppAssessmentComplianceDriftsRequest
        operation.output = ListAppAssessmentComplianceDriftsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-app-assessment-compliance-drifts", "code" => 200}}
        operation[:paginator] = Paginators::ListAppAssessmentComplianceDrifts.new
      end)
      service.add_operation(:list_app_assessment_resource_drifts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListAppAssessmentResourceDrifts"
        operation.name = "ListAppAssessmentResourceDrifts"
        operation.input = ListAppAssessmentResourceDriftsRequest
        operation.output = ListAppAssessmentResourceDriftsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-app-assessment-resource-drifts", "code" => 200}}
        operation[:paginator] = Paginators::ListAppAssessmentResourceDrifts.new
      end)
      service.add_operation(:list_app_assessments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListAppAssessments"
        operation.name = "ListAppAssessments"
        operation.input = ListAppAssessmentsInput
        operation.output = ListAppAssessmentsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/list-app-assessments", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAppAssessments.new
      end)
      service.add_operation(:list_app_component_compliances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListAppComponentCompliances"
        operation.name = "ListAppComponentCompliances"
        operation.input = ListAppComponentCompliancesInput
        operation.output = ListAppComponentCompliancesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-app-component-compliances", "code" => 200}}
        operation[:paginator] = Paginators::ListAppComponentCompliances.new
      end)
      service.add_operation(:list_app_component_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListAppComponentRecommendations"
        operation.name = "ListAppComponentRecommendations"
        operation.input = ListAppComponentRecommendationsInput
        operation.output = ListAppComponentRecommendationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-app-component-recommendations", "code" => 200}}
        operation[:paginator] = Paginators::ListAppComponentRecommendations.new
      end)
      service.add_operation(:list_app_input_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListAppInputSources"
        operation.name = "ListAppInputSources"
        operation.input = ListAppInputSourcesInput
        operation.output = ListAppInputSourcesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-app-input-sources", "code" => 200}}
        operation[:paginator] = Paginators::ListAppInputSources.new
      end)
      service.add_operation(:list_app_version_app_components, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListAppVersionAppComponents"
        operation.name = "ListAppVersionAppComponents"
        operation.input = ListAppVersionAppComponentsInput
        operation.output = ListAppVersionAppComponentsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-app-version-app-components", "code" => 200}}
        operation[:paginator] = Paginators::ListAppVersionAppComponents.new
      end)
      service.add_operation(:list_app_version_resource_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListAppVersionResourceMappings"
        operation.name = "ListAppVersionResourceMappings"
        operation.input = ListAppVersionResourceMappingsInput
        operation.output = ListAppVersionResourceMappingsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-app-version-resource-mappings", "code" => 200}}
        operation[:paginator] = Paginators::ListAppVersionResourceMappings.new
      end)
      service.add_operation(:list_app_version_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListAppVersionResources"
        operation.name = "ListAppVersionResources"
        operation.input = ListAppVersionResourcesInput
        operation.output = ListAppVersionResourcesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-app-version-resources", "code" => 200}}
        operation[:paginator] = Paginators::ListAppVersionResources.new
      end)
      service.add_operation(:list_app_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListAppVersions"
        operation.name = "ListAppVersions"
        operation.input = ListAppVersionsInput
        operation.output = ListAppVersionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-app-versions", "code" => 200}}
        operation[:paginator] = Paginators::ListAppVersions.new
      end)
      service.add_operation(:list_apps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListApps"
        operation.name = "ListApps"
        operation.input = ListAppsInput
        operation.output = ListAppsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/list-apps", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApps.new
      end)
      service.add_operation(:list_metrics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListMetrics"
        operation.name = "ListMetrics"
        operation.input = ListMetricsRequest
        operation.output = ListMetricsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-metrics", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMetrics.new
      end)
      service.add_operation(:list_recommendation_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListRecommendationTemplates"
        operation.name = "ListRecommendationTemplates"
        operation.input = ListRecommendationTemplatesInput
        operation.output = ListRecommendationTemplatesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/list-recommendation-templates", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecommendationTemplates.new
      end)
      service.add_operation(:list_resiliency_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListResiliencyPolicies"
        operation.name = "ListResiliencyPolicies"
        operation.input = ListResiliencyPoliciesInput
        operation.output = ListResiliencyPoliciesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/list-resiliency-policies", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResiliencyPolicies.new
      end)
      service.add_operation(:list_resource_grouping_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListResourceGroupingRecommendations"
        operation.name = "ListResourceGroupingRecommendations"
        operation.input = ListResourceGroupingRecommendationsRequest
        operation.output = ListResourceGroupingRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/list-resource-grouping-recommendations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourceGroupingRecommendations.new
      end)
      service.add_operation(:list_sop_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListSopRecommendations"
        operation.name = "ListSopRecommendations"
        operation.input = ListSopRecommendationsInput
        operation.output = ListSopRecommendationsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-sop-recommendations", "code" => 200}}
        operation[:paginator] = Paginators::ListSopRecommendations.new
      end)
      service.add_operation(:list_suggested_resiliency_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListSuggestedResiliencyPolicies"
        operation.name = "ListSuggestedResiliencyPolicies"
        operation.input = ListSuggestedResiliencyPoliciesInput
        operation.output = ListSuggestedResiliencyPoliciesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/list-suggested-resiliency-policies", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSuggestedResiliencyPolicies.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_test_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListTestRecommendations"
        operation.name = "ListTestRecommendations"
        operation.input = ListTestRecommendationsInput
        operation.output = ListTestRecommendationsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-test-recommendations", "code" => 200}}
        operation[:paginator] = Paginators::ListTestRecommendations.new
      end)
      service.add_operation(:list_unsupported_app_version_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ListUnsupportedAppVersionResources"
        operation.name = "ListUnsupportedAppVersionResources"
        operation.input = ListUnsupportedAppVersionResourcesInput
        operation.output = ListUnsupportedAppVersionResourcesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-unsupported-app-version-resources", "code" => 200}}
        operation[:paginator] = Paginators::ListUnsupportedAppVersionResources.new
      end)
      service.add_operation(:publish_app_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#PublishAppVersion"
        operation.name = "PublishAppVersion"
        operation.input = PublishAppVersionInput
        operation.output = PublishAppVersionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/publish-app-version", "code" => 200}}
      end)
      service.add_operation(:put_draft_app_version_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#PutDraftAppVersionTemplate"
        operation.name = "PutDraftAppVersionTemplate"
        operation.input = PutDraftAppVersionTemplateInput
        operation.output = PutDraftAppVersionTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/put-draft-app-version-template", "code" => 200}}
      end)
      service.add_operation(:reject_resource_grouping_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#RejectResourceGroupingRecommendations"
        operation.name = "RejectResourceGroupingRecommendations"
        operation.input = RejectResourceGroupingRecommendationsRequest
        operation.output = RejectResourceGroupingRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/reject-resource-grouping-recommendations", "code" => 200}}
      end)
      service.add_operation(:remove_draft_app_version_resource_mappings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#RemoveDraftAppVersionResourceMappings"
        operation.name = "RemoveDraftAppVersionResourceMappings"
        operation.input = RemoveDraftAppVersionResourceMappingsInput
        operation.output = RemoveDraftAppVersionResourceMappingsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/remove-draft-app-version-resource-mappings", "code" => 200}}
      end)
      service.add_operation(:resolve_app_version_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#ResolveAppVersionResources"
        operation.name = "ResolveAppVersionResources"
        operation.input = ResolveAppVersionResourcesInput
        operation.output = ResolveAppVersionResourcesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/resolve-app-version-resources", "code" => 200}}
      end)
      service.add_operation(:start_app_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#StartAppAssessment"
        operation.name = "StartAppAssessment"
        operation.input = StartAppAssessmentInput
        operation.output = StartAppAssessmentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/start-app-assessment", "code" => 200}}
      end)
      service.add_operation(:start_metrics_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#StartMetricsExport"
        operation.name = "StartMetricsExport"
        operation.input = StartMetricsExportRequest
        operation.output = StartMetricsExportResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/start-metrics-export", "code" => 200}}
      end)
      service.add_operation(:start_resource_grouping_recommendation_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#StartResourceGroupingRecommendationTask"
        operation.name = "StartResourceGroupingRecommendationTask"
        operation.input = StartResourceGroupingRecommendationTaskRequest
        operation.output = StartResourceGroupingRecommendationTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/start-resource-grouping-recommendation-task", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#UpdateApp"
        operation.name = "UpdateApp"
        operation.input = UpdateAppInput
        operation.output = UpdateAppOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-app", "code" => 200}}
      end)
      service.add_operation(:update_app_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#UpdateAppVersion"
        operation.name = "UpdateAppVersion"
        operation.input = UpdateAppVersionInput
        operation.output = UpdateAppVersionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-app-version", "code" => 200}}
      end)
      service.add_operation(:update_app_version_app_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#UpdateAppVersionAppComponent"
        operation.name = "UpdateAppVersionAppComponent"
        operation.input = UpdateAppVersionAppComponentInput
        operation.output = UpdateAppVersionAppComponentOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-app-version-app-component", "code" => 200}}
      end)
      service.add_operation(:update_app_version_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#UpdateAppVersionResource"
        operation.name = "UpdateAppVersionResource"
        operation.input = UpdateAppVersionResourceInput
        operation.output = UpdateAppVersionResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-app-version-resource", "code" => 200}}
      end)
      service.add_operation(:update_resiliency_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resiliencehub#UpdateResiliencyPolicy"
        operation.name = "UpdateResiliencyPolicy"
        operation.input = UpdateResiliencyPolicyInput
        operation.output = UpdateResiliencyPolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-resiliency-policy", "code" => 200}}
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
