# frozen_string_literal: true

# This is generated code!

module Aws::Bedrock
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptEula = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.bedrock#AcceptEula", name: "AcceptEula", traits: {"smithy.api#default" => false})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AcknowledgementFormDataBody = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.bedrock#AcknowledgementFormDataBody", name: "AcknowledgementFormDataBody", traits: {"smithy.api#length" => {"min" => 10, "max" => 16384}})
    AdditionalModelRequestFields = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrock#AdditionalModelRequestFields", name: "AdditionalModelRequestFields")
    AdditionalModelRequestFieldsKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AdditionalModelRequestFieldsKey", name: "AdditionalModelRequestFieldsKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AdditionalModelRequestFieldsValue = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.bedrock#AdditionalModelRequestFieldsValue", name: "AdditionalModelRequestFieldsValue")
    AgreementAvailability = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AgreementAvailability", name: "AgreementAvailability")
    AgreementStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#AgreementStatus", name: "AgreementStatus")
    ApplicationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#ApplicationType", name: "ApplicationType")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#Arn", name: "Arn", traits: {"smithy.api#length" => {"max" => 2048}})
    AttributeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#AttributeType", name: "AttributeType")
    AuthorizationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#AuthorizationStatus", name: "AuthorizationStatus")
    AutomatedEvaluationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedEvaluationConfig", name: "AutomatedEvaluationConfig")
    AutomatedEvaluationCustomMetricConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedEvaluationCustomMetricConfig", name: "AutomatedEvaluationCustomMetricConfig")
    AutomatedEvaluationCustomMetricSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#AutomatedEvaluationCustomMetricSource", name: "AutomatedEvaluationCustomMetricSource")
    AutomatedEvaluationCustomMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedEvaluationCustomMetrics", name: "AutomatedEvaluationCustomMetrics", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AutomatedReasoningCheckDifferenceScenarioList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckDifferenceScenarioList", name: "AutomatedReasoningCheckDifferenceScenarioList", traits: {"smithy.api#length" => {"max" => 2}})
    AutomatedReasoningCheckFinding = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckFinding", name: "AutomatedReasoningCheckFinding")
    AutomatedReasoningCheckFindingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckFindingList", name: "AutomatedReasoningCheckFindingList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    AutomatedReasoningCheckImpossibleFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckImpossibleFinding", name: "AutomatedReasoningCheckImpossibleFinding")
    AutomatedReasoningCheckInputTextReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckInputTextReference", name: "AutomatedReasoningCheckInputTextReference")
    AutomatedReasoningCheckInputTextReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckInputTextReferenceList", name: "AutomatedReasoningCheckInputTextReferenceList")
    AutomatedReasoningCheckInvalidFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckInvalidFinding", name: "AutomatedReasoningCheckInvalidFinding")
    AutomatedReasoningCheckLogicWarning = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckLogicWarning", name: "AutomatedReasoningCheckLogicWarning")
    AutomatedReasoningCheckLogicWarningType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckLogicWarningType", name: "AutomatedReasoningCheckLogicWarningType")
    AutomatedReasoningCheckNoTranslationsFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckNoTranslationsFinding", name: "AutomatedReasoningCheckNoTranslationsFinding")
    AutomatedReasoningCheckResult = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckResult", name: "AutomatedReasoningCheckResult")
    AutomatedReasoningCheckRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckRule", name: "AutomatedReasoningCheckRule")
    AutomatedReasoningCheckRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckRuleList", name: "AutomatedReasoningCheckRuleList")
    AutomatedReasoningCheckSatisfiableFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckSatisfiableFinding", name: "AutomatedReasoningCheckSatisfiableFinding")
    AutomatedReasoningCheckScenario = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckScenario", name: "AutomatedReasoningCheckScenario")
    AutomatedReasoningCheckTooComplexFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckTooComplexFinding", name: "AutomatedReasoningCheckTooComplexFinding")
    AutomatedReasoningCheckTranslation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckTranslation", name: "AutomatedReasoningCheckTranslation")
    AutomatedReasoningCheckTranslationAmbiguousFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckTranslationAmbiguousFinding", name: "AutomatedReasoningCheckTranslationAmbiguousFinding")
    AutomatedReasoningCheckTranslationConfidence = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckTranslationConfidence", name: "AutomatedReasoningCheckTranslationConfidence", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    AutomatedReasoningCheckTranslationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckTranslationList", name: "AutomatedReasoningCheckTranslationList")
    AutomatedReasoningCheckTranslationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckTranslationOption", name: "AutomatedReasoningCheckTranslationOption")
    AutomatedReasoningCheckTranslationOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckTranslationOptionList", name: "AutomatedReasoningCheckTranslationOptionList", traits: {"smithy.api#length" => {"max" => 2}})
    AutomatedReasoningCheckValidFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningCheckValidFinding", name: "AutomatedReasoningCheckValidFinding")
    AutomatedReasoningConfidenceFilterThreshold = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningConfidenceFilterThreshold", name: "AutomatedReasoningConfidenceFilterThreshold", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    AutomatedReasoningLogicStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningLogicStatement", name: "AutomatedReasoningLogicStatement")
    AutomatedReasoningLogicStatementContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningLogicStatementContent", name: "AutomatedReasoningLogicStatementContent", traits: {"smithy.api#length" => {"max" => 1000}, "smithy.api#sensitive" => {}})
    AutomatedReasoningLogicStatementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningLogicStatementList", name: "AutomatedReasoningLogicStatementList")
    AutomatedReasoningNaturalLanguageStatementContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningNaturalLanguageStatementContent", name: "AutomatedReasoningNaturalLanguageStatementContent", traits: {"smithy.api#length" => {"max" => 1000}, "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyAddRuleAnnotation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyAddRuleAnnotation", name: "AutomatedReasoningPolicyAddRuleAnnotation")
    AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation", name: "AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation")
    AutomatedReasoningPolicyAddRuleMutation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyAddRuleMutation", name: "AutomatedReasoningPolicyAddRuleMutation")
    AutomatedReasoningPolicyAddTypeAnnotation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyAddTypeAnnotation", name: "AutomatedReasoningPolicyAddTypeAnnotation")
    AutomatedReasoningPolicyAddTypeMutation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyAddTypeMutation", name: "AutomatedReasoningPolicyAddTypeMutation")
    AutomatedReasoningPolicyAddTypeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyAddTypeValue", name: "AutomatedReasoningPolicyAddTypeValue")
    AutomatedReasoningPolicyAddVariableAnnotation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyAddVariableAnnotation", name: "AutomatedReasoningPolicyAddVariableAnnotation")
    AutomatedReasoningPolicyAddVariableMutation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyAddVariableMutation", name: "AutomatedReasoningPolicyAddVariableMutation")
    AutomatedReasoningPolicyAnnotation = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyAnnotation", name: "AutomatedReasoningPolicyAnnotation")
    AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage", name: "AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]+$", "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyAnnotationIngestContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyAnnotationIngestContent", name: "AutomatedReasoningPolicyAnnotationIngestContent", traits: {"smithy.api#length" => {"max" => 4096}, "smithy.api#pattern" => "^[\\s\\S]+$", "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyAnnotationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyAnnotationList", name: "AutomatedReasoningPolicyAnnotationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AutomatedReasoningPolicyAnnotationRuleNaturalLanguage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyAnnotationRuleNaturalLanguage", name: "AutomatedReasoningPolicyAnnotationRuleNaturalLanguage", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]+$", "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyAnnotationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyAnnotationStatus", name: "AutomatedReasoningPolicyAnnotationStatus")
    AutomatedReasoningPolicyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyArn", name: "AutomatedReasoningPolicyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:automated-reasoning-policy/[a-z0-9]{12}(:([1-9][0-9]{0,11}))?$"})
    AutomatedReasoningPolicyArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyArnList", name: "AutomatedReasoningPolicyArnList")
    AutomatedReasoningPolicyBuildDocumentBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildDocumentBlob", name: "AutomatedReasoningPolicyBuildDocumentBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000000}, "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyBuildDocumentContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildDocumentContentType", name: "AutomatedReasoningPolicyBuildDocumentContentType")
    AutomatedReasoningPolicyBuildDocumentDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildDocumentDescription", name: "AutomatedReasoningPolicyBuildDocumentDescription", traits: {"smithy.api#length" => {"max" => 2000}, "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyBuildDocumentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildDocumentName", name: "AutomatedReasoningPolicyBuildDocumentName", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyBuildLog = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildLog", name: "AutomatedReasoningPolicyBuildLog")
    AutomatedReasoningPolicyBuildLogEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildLogEntry", name: "AutomatedReasoningPolicyBuildLogEntry")
    AutomatedReasoningPolicyBuildLogEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildLogEntryList", name: "AutomatedReasoningPolicyBuildLogEntryList")
    AutomatedReasoningPolicyBuildMessageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildMessageType", name: "AutomatedReasoningPolicyBuildMessageType")
    AutomatedReasoningPolicyBuildResultAssetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildResultAssetType", name: "AutomatedReasoningPolicyBuildResultAssetType")
    AutomatedReasoningPolicyBuildResultAssets = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildResultAssets", name: "AutomatedReasoningPolicyBuildResultAssets")
    AutomatedReasoningPolicyBuildStep = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildStep", name: "AutomatedReasoningPolicyBuildStep")
    AutomatedReasoningPolicyBuildStepContext = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildStepContext", name: "AutomatedReasoningPolicyBuildStepContext")
    AutomatedReasoningPolicyBuildStepList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildStepList", name: "AutomatedReasoningPolicyBuildStepList")
    AutomatedReasoningPolicyBuildStepMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildStepMessage", name: "AutomatedReasoningPolicyBuildStepMessage")
    AutomatedReasoningPolicyBuildStepMessageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildStepMessageList", name: "AutomatedReasoningPolicyBuildStepMessageList")
    AutomatedReasoningPolicyBuildWorkflowDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildWorkflowDocument", name: "AutomatedReasoningPolicyBuildWorkflowDocument")
    AutomatedReasoningPolicyBuildWorkflowDocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildWorkflowDocumentList", name: "AutomatedReasoningPolicyBuildWorkflowDocumentList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AutomatedReasoningPolicyBuildWorkflowId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildWorkflowId", name: "AutomatedReasoningPolicyBuildWorkflowId", traits: {"smithy.api#length" => {"max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-?[a-f0-9]{4}-?4[a-f0-9]{3}-?[89ab][a-f0-9]{3}-?[a-f0-9]{12}$"})
    AutomatedReasoningPolicyBuildWorkflowRepairContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildWorkflowRepairContent", name: "AutomatedReasoningPolicyBuildWorkflowRepairContent")
    AutomatedReasoningPolicyBuildWorkflowSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildWorkflowSource", name: "AutomatedReasoningPolicyBuildWorkflowSource")
    AutomatedReasoningPolicyBuildWorkflowStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildWorkflowStatus", name: "AutomatedReasoningPolicyBuildWorkflowStatus")
    AutomatedReasoningPolicyBuildWorkflowSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildWorkflowSummaries", name: "AutomatedReasoningPolicyBuildWorkflowSummaries", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    AutomatedReasoningPolicyBuildWorkflowSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildWorkflowSummary", name: "AutomatedReasoningPolicyBuildWorkflowSummary", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    AutomatedReasoningPolicyBuildWorkflowType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyBuildWorkflowType", name: "AutomatedReasoningPolicyBuildWorkflowType")
    AutomatedReasoningPolicyConflictedRuleIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyConflictedRuleIdList", name: "AutomatedReasoningPolicyConflictedRuleIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    AutomatedReasoningPolicyDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinition", name: "AutomatedReasoningPolicyDefinition")
    AutomatedReasoningPolicyDefinitionElement = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionElement", name: "AutomatedReasoningPolicyDefinitionElement")
    AutomatedReasoningPolicyDefinitionQualityReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionQualityReport", name: "AutomatedReasoningPolicyDefinitionQualityReport")
    AutomatedReasoningPolicyDefinitionRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionRule", name: "AutomatedReasoningPolicyDefinitionRule")
    AutomatedReasoningPolicyDefinitionRuleAlternateExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionRuleAlternateExpression", name: "AutomatedReasoningPolicyDefinitionRuleAlternateExpression", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]+$", "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyDefinitionRuleExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionRuleExpression", name: "AutomatedReasoningPolicyDefinitionRuleExpression", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]+$", "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyDefinitionRuleId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionRuleId", name: "AutomatedReasoningPolicyDefinitionRuleId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[A-Z][0-9A-Z]{11}$"})
    AutomatedReasoningPolicyDefinitionRuleIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionRuleIdList", name: "AutomatedReasoningPolicyDefinitionRuleIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AutomatedReasoningPolicyDefinitionRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionRuleList", name: "AutomatedReasoningPolicyDefinitionRuleList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1500}})
    AutomatedReasoningPolicyDefinitionType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionType", name: "AutomatedReasoningPolicyDefinitionType")
    AutomatedReasoningPolicyDefinitionTypeDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionTypeDescription", name: "AutomatedReasoningPolicyDefinitionTypeDescription", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]+$", "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyDefinitionTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionTypeList", name: "AutomatedReasoningPolicyDefinitionTypeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    AutomatedReasoningPolicyDefinitionTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionTypeName", name: "AutomatedReasoningPolicyDefinitionTypeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9_]*$", "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyDefinitionTypeNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionTypeNameList", name: "AutomatedReasoningPolicyDefinitionTypeNameList", traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    AutomatedReasoningPolicyDefinitionTypeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionTypeValue", name: "AutomatedReasoningPolicyDefinitionTypeValue")
    AutomatedReasoningPolicyDefinitionTypeValueDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionTypeValueDescription", name: "AutomatedReasoningPolicyDefinitionTypeValueDescription", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]+$", "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyDefinitionTypeValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionTypeValueList", name: "AutomatedReasoningPolicyDefinitionTypeValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    AutomatedReasoningPolicyDefinitionTypeValueName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionTypeValueName", name: "AutomatedReasoningPolicyDefinitionTypeValueName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9_]*$"})
    AutomatedReasoningPolicyDefinitionTypeValuePair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionTypeValuePair", name: "AutomatedReasoningPolicyDefinitionTypeValuePair")
    AutomatedReasoningPolicyDefinitionTypeValuePairList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionTypeValuePairList", name: "AutomatedReasoningPolicyDefinitionTypeValuePairList", traits: {"smithy.api#length" => {"min" => 1, "max" => 22500}})
    AutomatedReasoningPolicyDefinitionVariable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionVariable", name: "AutomatedReasoningPolicyDefinitionVariable")
    AutomatedReasoningPolicyDefinitionVariableDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionVariableDescription", name: "AutomatedReasoningPolicyDefinitionVariableDescription", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]+$", "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyDefinitionVariableList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionVariableList", name: "AutomatedReasoningPolicyDefinitionVariableList", traits: {"smithy.api#length" => {"min" => 0, "max" => 600}})
    AutomatedReasoningPolicyDefinitionVariableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionVariableName", name: "AutomatedReasoningPolicyDefinitionVariableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9_]*$", "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyDefinitionVariableNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDefinitionVariableNameList", name: "AutomatedReasoningPolicyDefinitionVariableNameList", traits: {"smithy.api#length" => {"min" => 0, "max" => 600}})
    AutomatedReasoningPolicyDeleteRuleAnnotation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDeleteRuleAnnotation", name: "AutomatedReasoningPolicyDeleteRuleAnnotation")
    AutomatedReasoningPolicyDeleteRuleMutation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDeleteRuleMutation", name: "AutomatedReasoningPolicyDeleteRuleMutation")
    AutomatedReasoningPolicyDeleteTypeAnnotation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDeleteTypeAnnotation", name: "AutomatedReasoningPolicyDeleteTypeAnnotation")
    AutomatedReasoningPolicyDeleteTypeMutation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDeleteTypeMutation", name: "AutomatedReasoningPolicyDeleteTypeMutation")
    AutomatedReasoningPolicyDeleteTypeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDeleteTypeValue", name: "AutomatedReasoningPolicyDeleteTypeValue")
    AutomatedReasoningPolicyDeleteVariableAnnotation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDeleteVariableAnnotation", name: "AutomatedReasoningPolicyDeleteVariableAnnotation")
    AutomatedReasoningPolicyDeleteVariableMutation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDeleteVariableMutation", name: "AutomatedReasoningPolicyDeleteVariableMutation")
    AutomatedReasoningPolicyDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDescription", name: "AutomatedReasoningPolicyDescription", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]+$", "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyDisjointRuleSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDisjointRuleSet", name: "AutomatedReasoningPolicyDisjointRuleSet")
    AutomatedReasoningPolicyDisjointRuleSetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDisjointRuleSetList", name: "AutomatedReasoningPolicyDisjointRuleSetList")
    AutomatedReasoningPolicyDisjointedRuleIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyDisjointedRuleIdList", name: "AutomatedReasoningPolicyDisjointedRuleIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    AutomatedReasoningPolicyFormatVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyFormatVersion", name: "AutomatedReasoningPolicyFormatVersion")
    AutomatedReasoningPolicyHash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyHash", name: "AutomatedReasoningPolicyHash", traits: {"smithy.api#length" => {"min" => 128, "max" => 128}, "smithy.api#pattern" => "^[0-9a-z]{128}$"})
    AutomatedReasoningPolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyId", name: "AutomatedReasoningPolicyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-z0-9]{12}$"})
    AutomatedReasoningPolicyIngestContentAnnotation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyIngestContentAnnotation", name: "AutomatedReasoningPolicyIngestContentAnnotation")
    AutomatedReasoningPolicyMutation = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyMutation", name: "AutomatedReasoningPolicyMutation")
    AutomatedReasoningPolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyName", name: "AutomatedReasoningPolicyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[0-9a-zA-Z-_ ]+$", "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyPlanning = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyPlanning", name: "AutomatedReasoningPolicyPlanning")
    AutomatedReasoningPolicyScenario = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyScenario", name: "AutomatedReasoningPolicyScenario")
    AutomatedReasoningPolicyScenarioAlternateExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyScenarioAlternateExpression", name: "AutomatedReasoningPolicyScenarioAlternateExpression", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyScenarioExpression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyScenarioExpression", name: "AutomatedReasoningPolicyScenarioExpression", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicySummaries", name: "AutomatedReasoningPolicySummaries", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    AutomatedReasoningPolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicySummary", name: "AutomatedReasoningPolicySummary")
    AutomatedReasoningPolicyTestCase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyTestCase", name: "AutomatedReasoningPolicyTestCase")
    AutomatedReasoningPolicyTestCaseId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyTestCaseId", name: "AutomatedReasoningPolicyTestCaseId", traits: {"smithy.api#length" => {"max" => 12}, "smithy.api#pattern" => "^[0-9A-Z]{12}$"})
    AutomatedReasoningPolicyTestCaseIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyTestCaseIdList", name: "AutomatedReasoningPolicyTestCaseIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AutomatedReasoningPolicyTestCaseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyTestCaseList", name: "AutomatedReasoningPolicyTestCaseList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    AutomatedReasoningPolicyTestGuardContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyTestGuardContent", name: "AutomatedReasoningPolicyTestGuardContent", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyTestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyTestList", name: "AutomatedReasoningPolicyTestList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5000}})
    AutomatedReasoningPolicyTestQueryContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyTestQueryContent", name: "AutomatedReasoningPolicyTestQueryContent", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#sensitive" => {}})
    AutomatedReasoningPolicyTestResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyTestResult", name: "AutomatedReasoningPolicyTestResult")
    AutomatedReasoningPolicyTestRunResult = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyTestRunResult", name: "AutomatedReasoningPolicyTestRunResult")
    AutomatedReasoningPolicyTestRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyTestRunStatus", name: "AutomatedReasoningPolicyTestRunStatus")
    AutomatedReasoningPolicyTypeValueAnnotation = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyTypeValueAnnotation", name: "AutomatedReasoningPolicyTypeValueAnnotation")
    AutomatedReasoningPolicyTypeValueAnnotationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyTypeValueAnnotationList", name: "AutomatedReasoningPolicyTypeValueAnnotationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation", name: "AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation")
    AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation", name: "AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation")
    AutomatedReasoningPolicyUpdateRuleAnnotation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyUpdateRuleAnnotation", name: "AutomatedReasoningPolicyUpdateRuleAnnotation")
    AutomatedReasoningPolicyUpdateRuleMutation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyUpdateRuleMutation", name: "AutomatedReasoningPolicyUpdateRuleMutation")
    AutomatedReasoningPolicyUpdateTypeAnnotation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyUpdateTypeAnnotation", name: "AutomatedReasoningPolicyUpdateTypeAnnotation")
    AutomatedReasoningPolicyUpdateTypeMutation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyUpdateTypeMutation", name: "AutomatedReasoningPolicyUpdateTypeMutation")
    AutomatedReasoningPolicyUpdateTypeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyUpdateTypeValue", name: "AutomatedReasoningPolicyUpdateTypeValue")
    AutomatedReasoningPolicyUpdateVariableAnnotation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyUpdateVariableAnnotation", name: "AutomatedReasoningPolicyUpdateVariableAnnotation")
    AutomatedReasoningPolicyUpdateVariableMutation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyUpdateVariableMutation", name: "AutomatedReasoningPolicyUpdateVariableMutation")
    AutomatedReasoningPolicyVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyVersion", name: "AutomatedReasoningPolicyVersion", traits: {"smithy.api#length" => {"max" => 12}, "smithy.api#pattern" => "^([1-9][0-9]{0,11})$"})
    AutomatedReasoningPolicyWorkflowTypeContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#AutomatedReasoningPolicyWorkflowTypeContent", name: "AutomatedReasoningPolicyWorkflowTypeContent")
    BaseModelIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#BaseModelIdentifier", name: "BaseModelIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:(([0-9]{12}:custom-model/([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.]?[a-z0-9-]{1,63})([:][a-z0-9-]{1,63}){0,2})/[a-z0-9]{12})|(:foundation-model/[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([:][a-z0-9-]{1,63}){0,2})))|([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.]?[a-z0-9-]{1,63})([:][a-z0-9-]{1,63}){0,2})|(([0-9a-zA-Z][_-]?)+)$"})
    BatchDeleteEvaluationJobError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#BatchDeleteEvaluationJobError", name: "BatchDeleteEvaluationJobError")
    BatchDeleteEvaluationJobErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#BatchDeleteEvaluationJobErrors", name: "BatchDeleteEvaluationJobErrors", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    BatchDeleteEvaluationJobItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#BatchDeleteEvaluationJobItem", name: "BatchDeleteEvaluationJobItem")
    BatchDeleteEvaluationJobItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#BatchDeleteEvaluationJobItems", name: "BatchDeleteEvaluationJobItems")
    BatchDeleteEvaluationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#BatchDeleteEvaluationJobRequest", name: "BatchDeleteEvaluationJobRequest")
    BatchDeleteEvaluationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#BatchDeleteEvaluationJobResponse", name: "BatchDeleteEvaluationJobResponse")
    BedrockEvaluatorModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#BedrockEvaluatorModel", name: "BedrockEvaluatorModel")
    BedrockEvaluatorModels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#BedrockEvaluatorModels", name: "BedrockEvaluatorModels", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    BedrockModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#BedrockModelArn", name: "BedrockModelArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:(bedrock|sagemaker):[a-z0-9-]{1,20}:([0-9]{12})?:([a-z-]+/)?)?([a-zA-Z0-9.-]{1,63}){0,2}(([:][a-z0-9-]{1,63}){0,2})?(/[a-z0-9]{1,12})?$"})
    BedrockModelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#BedrockModelId", name: "BedrockModelId", traits: {"smithy.api#length" => {"max" => 140}, "smithy.api#pattern" => "^[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([a-z0-9-]{1,63}[.]){0,2}[a-z0-9-]{1,63}([:][a-z0-9-]{1,63}){0,2}(/[a-z0-9]{12}|)$"})
    BedrockRerankingModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#BedrockRerankingModelArn", name: "BedrockRerankingModelArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}::foundation-model/(.*))?$"})
    BrandedName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#BrandedName", name: "BrandedName", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^.*$"})
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#BucketName", name: "BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}})
    ByteContentBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.bedrock#ByteContentBlob", name: "ByteContentBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 10485760}, "smithy.api#sensitive" => {}})
    ByteContentDoc = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ByteContentDoc", name: "ByteContentDoc")
    CancelAutomatedReasoningPolicyBuildWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CancelAutomatedReasoningPolicyBuildWorkflowRequest", name: "CancelAutomatedReasoningPolicyBuildWorkflowRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    CancelAutomatedReasoningPolicyBuildWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CancelAutomatedReasoningPolicyBuildWorkflowResponse", name: "CancelAutomatedReasoningPolicyBuildWorkflowResponse")
    CloudWatchConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CloudWatchConfig", name: "CloudWatchConfig")
    CommitmentDuration = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#CommitmentDuration", name: "CommitmentDuration")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ContentType", name: "ContentType", traits: {"smithy.api#pattern" => "[a-z]{1,20}/.{1,20}"})
    CreateAutomatedReasoningPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateAutomatedReasoningPolicyRequest", name: "CreateAutomatedReasoningPolicyRequest")
    CreateAutomatedReasoningPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateAutomatedReasoningPolicyResponse", name: "CreateAutomatedReasoningPolicyResponse")
    CreateAutomatedReasoningPolicyTestCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateAutomatedReasoningPolicyTestCaseRequest", name: "CreateAutomatedReasoningPolicyTestCaseRequest")
    CreateAutomatedReasoningPolicyTestCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateAutomatedReasoningPolicyTestCaseResponse", name: "CreateAutomatedReasoningPolicyTestCaseResponse")
    CreateAutomatedReasoningPolicyVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateAutomatedReasoningPolicyVersionRequest", name: "CreateAutomatedReasoningPolicyVersionRequest")
    CreateAutomatedReasoningPolicyVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateAutomatedReasoningPolicyVersionResponse", name: "CreateAutomatedReasoningPolicyVersionResponse")
    CreateCustomModelDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateCustomModelDeploymentRequest", name: "CreateCustomModelDeploymentRequest")
    CreateCustomModelDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateCustomModelDeploymentResponse", name: "CreateCustomModelDeploymentResponse")
    CreateCustomModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateCustomModelRequest", name: "CreateCustomModelRequest")
    CreateCustomModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateCustomModelResponse", name: "CreateCustomModelResponse")
    CreateEvaluationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateEvaluationJobRequest", name: "CreateEvaluationJobRequest")
    CreateEvaluationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateEvaluationJobResponse", name: "CreateEvaluationJobResponse")
    CreateFoundationModelAgreementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateFoundationModelAgreementRequest", name: "CreateFoundationModelAgreementRequest")
    CreateFoundationModelAgreementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateFoundationModelAgreementResponse", name: "CreateFoundationModelAgreementResponse")
    CreateGuardrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateGuardrailRequest", name: "CreateGuardrailRequest")
    CreateGuardrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateGuardrailResponse", name: "CreateGuardrailResponse")
    CreateGuardrailVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateGuardrailVersionRequest", name: "CreateGuardrailVersionRequest")
    CreateGuardrailVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateGuardrailVersionResponse", name: "CreateGuardrailVersionResponse")
    CreateInferenceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateInferenceProfileRequest", name: "CreateInferenceProfileRequest")
    CreateInferenceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateInferenceProfileResponse", name: "CreateInferenceProfileResponse")
    CreateMarketplaceModelEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateMarketplaceModelEndpointRequest", name: "CreateMarketplaceModelEndpointRequest")
    CreateMarketplaceModelEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateMarketplaceModelEndpointResponse", name: "CreateMarketplaceModelEndpointResponse")
    CreateModelCopyJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateModelCopyJobRequest", name: "CreateModelCopyJobRequest")
    CreateModelCopyJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateModelCopyJobResponse", name: "CreateModelCopyJobResponse")
    CreateModelCustomizationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateModelCustomizationJobRequest", name: "CreateModelCustomizationJobRequest")
    CreateModelCustomizationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateModelCustomizationJobResponse", name: "CreateModelCustomizationJobResponse")
    CreateModelImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateModelImportJobRequest", name: "CreateModelImportJobRequest")
    CreateModelImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateModelImportJobResponse", name: "CreateModelImportJobResponse")
    CreateModelInvocationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateModelInvocationJobRequest", name: "CreateModelInvocationJobRequest")
    CreateModelInvocationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateModelInvocationJobResponse", name: "CreateModelInvocationJobResponse")
    CreatePromptRouterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreatePromptRouterRequest", name: "CreatePromptRouterRequest")
    CreatePromptRouterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreatePromptRouterResponse", name: "CreatePromptRouterResponse")
    CreateProvisionedModelThroughputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateProvisionedModelThroughputRequest", name: "CreateProvisionedModelThroughputRequest")
    CreateProvisionedModelThroughputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CreateProvisionedModelThroughputResponse", name: "CreateProvisionedModelThroughputResponse")
    CustomMetricBedrockEvaluatorModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CustomMetricBedrockEvaluatorModel", name: "CustomMetricBedrockEvaluatorModel")
    CustomMetricBedrockEvaluatorModels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#CustomMetricBedrockEvaluatorModels", name: "CustomMetricBedrockEvaluatorModels", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CustomMetricDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CustomMetricDefinition", name: "CustomMetricDefinition", traits: {"smithy.api#sensitive" => {}})
    CustomMetricEvaluatorModelConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CustomMetricEvaluatorModelConfig", name: "CustomMetricEvaluatorModelConfig")
    CustomMetricInstructions = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#CustomMetricInstructions", name: "CustomMetricInstructions", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}})
    CustomModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#CustomModelArn", name: "CustomModelArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(|-us-gov|-cn|-iso|-iso-b):bedrock:[a-z0-9-]{1,20}:[0-9]{12}:custom-model/(imported|[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([a-z0-9-]{1,63}[.]){0,2}[a-z0-9-]{1,63}([:][a-z0-9-]{1,63}){0,2})/[a-z0-9]{12}$"})
    CustomModelDeploymentArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#CustomModelDeploymentArn", name: "CustomModelDeploymentArn", traits: {"smithy.api#length" => {"max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:custom-model-deployment/[a-z0-9]{12}$"})
    CustomModelDeploymentDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#CustomModelDeploymentDescription", name: "CustomModelDeploymentDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.*$"})
    CustomModelDeploymentIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#CustomModelDeploymentIdentifier", name: "CustomModelDeploymentIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 93}, "smithy.api#pattern" => "^(arn:aws(|-us-gov|-cn|-iso|-iso-b):bedrock:[a-z0-9-]{1,20}:[0-9]{12}:custom-model-deployment/[a-z0-9]{12})|^([0-9a-zA-Z][_-]?){1,63}$"})
    CustomModelDeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#CustomModelDeploymentStatus", name: "CustomModelDeploymentStatus")
    CustomModelDeploymentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CustomModelDeploymentSummary", name: "CustomModelDeploymentSummary")
    CustomModelDeploymentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#CustomModelDeploymentSummaryList", name: "CustomModelDeploymentSummaryList")
    CustomModelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#CustomModelName", name: "CustomModelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^([0-9a-zA-Z][_-]?){1,63}$"})
    CustomModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CustomModelSummary", name: "CustomModelSummary")
    CustomModelSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#CustomModelSummaryList", name: "CustomModelSummaryList")
    CustomModelUnits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#CustomModelUnits", name: "CustomModelUnits")
    CustomModelUnitsVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#CustomModelUnitsVersion", name: "CustomModelUnitsVersion", traits: {"smithy.api#pattern" => "^v\\d+.\\d+$"})
    CustomizationConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#CustomizationConfig", name: "CustomizationConfig")
    CustomizationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#CustomizationType", name: "CustomizationType")
    DataProcessingDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DataProcessingDetails", name: "DataProcessingDetails")
    DeleteAutomatedReasoningPolicyBuildWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteAutomatedReasoningPolicyBuildWorkflowRequest", name: "DeleteAutomatedReasoningPolicyBuildWorkflowRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    DeleteAutomatedReasoningPolicyBuildWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteAutomatedReasoningPolicyBuildWorkflowResponse", name: "DeleteAutomatedReasoningPolicyBuildWorkflowResponse")
    DeleteAutomatedReasoningPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteAutomatedReasoningPolicyRequest", name: "DeleteAutomatedReasoningPolicyRequest")
    DeleteAutomatedReasoningPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteAutomatedReasoningPolicyResponse", name: "DeleteAutomatedReasoningPolicyResponse")
    DeleteAutomatedReasoningPolicyTestCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteAutomatedReasoningPolicyTestCaseRequest", name: "DeleteAutomatedReasoningPolicyTestCaseRequest")
    DeleteAutomatedReasoningPolicyTestCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteAutomatedReasoningPolicyTestCaseResponse", name: "DeleteAutomatedReasoningPolicyTestCaseResponse")
    DeleteCustomModelDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteCustomModelDeploymentRequest", name: "DeleteCustomModelDeploymentRequest")
    DeleteCustomModelDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteCustomModelDeploymentResponse", name: "DeleteCustomModelDeploymentResponse")
    DeleteCustomModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteCustomModelRequest", name: "DeleteCustomModelRequest")
    DeleteCustomModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteCustomModelResponse", name: "DeleteCustomModelResponse")
    DeleteFoundationModelAgreementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteFoundationModelAgreementRequest", name: "DeleteFoundationModelAgreementRequest")
    DeleteFoundationModelAgreementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteFoundationModelAgreementResponse", name: "DeleteFoundationModelAgreementResponse")
    DeleteGuardrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteGuardrailRequest", name: "DeleteGuardrailRequest")
    DeleteGuardrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteGuardrailResponse", name: "DeleteGuardrailResponse")
    DeleteImportedModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteImportedModelRequest", name: "DeleteImportedModelRequest")
    DeleteImportedModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteImportedModelResponse", name: "DeleteImportedModelResponse")
    DeleteInferenceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteInferenceProfileRequest", name: "DeleteInferenceProfileRequest")
    DeleteInferenceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteInferenceProfileResponse", name: "DeleteInferenceProfileResponse")
    DeleteMarketplaceModelEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteMarketplaceModelEndpointRequest", name: "DeleteMarketplaceModelEndpointRequest")
    DeleteMarketplaceModelEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteMarketplaceModelEndpointResponse", name: "DeleteMarketplaceModelEndpointResponse")
    DeleteModelInvocationLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteModelInvocationLoggingConfigurationRequest", name: "DeleteModelInvocationLoggingConfigurationRequest")
    DeleteModelInvocationLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteModelInvocationLoggingConfigurationResponse", name: "DeleteModelInvocationLoggingConfigurationResponse")
    DeletePromptRouterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeletePromptRouterRequest", name: "DeletePromptRouterRequest")
    DeletePromptRouterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeletePromptRouterResponse", name: "DeletePromptRouterResponse")
    DeleteProvisionedModelThroughputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteProvisionedModelThroughputRequest", name: "DeleteProvisionedModelThroughputRequest")
    DeleteProvisionedModelThroughputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeleteProvisionedModelThroughputResponse", name: "DeleteProvisionedModelThroughputResponse")
    DeregisterMarketplaceModelEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeregisterMarketplaceModelEndpointRequest", name: "DeregisterMarketplaceModelEndpointRequest")
    DeregisterMarketplaceModelEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DeregisterMarketplaceModelEndpointResponse", name: "DeregisterMarketplaceModelEndpointResponse")
    DimensionalPriceRate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DimensionalPriceRate", name: "DimensionalPriceRate")
    DistillationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#DistillationConfig", name: "DistillationConfig")
    EndpointConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#EndpointConfig", name: "EndpointConfig")
    EndpointName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#EndpointName", name: "EndpointName", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    EntitlementAvailability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#EntitlementAvailability", name: "EntitlementAvailability")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"max" => 2048}})
    ErrorMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#ErrorMessages", name: "ErrorMessages", traits: {"smithy.api#length" => {"max" => 20}})
    EvaluationBedrockKnowledgeBaseIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#EvaluationBedrockKnowledgeBaseIdentifiers", name: "EvaluationBedrockKnowledgeBaseIdentifiers", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    EvaluationBedrockModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#EvaluationBedrockModel", name: "EvaluationBedrockModel")
    EvaluationBedrockModelIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#EvaluationBedrockModelIdentifier", name: "EvaluationBedrockModelIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:((:foundation-model/[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.:]?[a-z0-9-]{1,63}))|([0-9]{12}:provisioned-model/[a-z0-9]{12})|([0-9]{12}:imported-model/[a-z0-9]{12})|([0-9]{12}:application-inference-profile/[a-z0-9]{12})|([0-9]{12}:inference-profile/(([a-z-]{2,8}.)[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.:]?[a-z0-9-]{1,63})))|([0-9]{12}:(default-prompt-router|prompt-router)/[a-zA-Z0-9-:.]+)))|(([a-z]{2,4}[.]{1})([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.:]?[a-z0-9-]{1,63})))|([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.:]?[a-z0-9-]{1,63}))|arn:aws(-[^:]+)?:sagemaker:[a-z0-9-]{1,20}:[0-9]{12}:endpoint/[a-z0-9-]{1,63}$"})
    EvaluationBedrockModelIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#EvaluationBedrockModelIdentifiers", name: "EvaluationBedrockModelIdentifiers", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    EvaluationConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#EvaluationConfig", name: "EvaluationConfig")
    EvaluationDataset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#EvaluationDataset", name: "EvaluationDataset")
    EvaluationDatasetLocation = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#EvaluationDatasetLocation", name: "EvaluationDatasetLocation")
    EvaluationDatasetMetricConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#EvaluationDatasetMetricConfig", name: "EvaluationDatasetMetricConfig")
    EvaluationDatasetMetricConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#EvaluationDatasetMetricConfigs", name: "EvaluationDatasetMetricConfigs", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    EvaluationDatasetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#EvaluationDatasetName", name: "EvaluationDatasetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[0-9a-zA-Z-_.]+$", "smithy.api#sensitive" => {}})
    EvaluationInferenceConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#EvaluationInferenceConfig", name: "EvaluationInferenceConfig")
    EvaluationInferenceConfigSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#EvaluationInferenceConfigSummary", name: "EvaluationInferenceConfigSummary")
    EvaluationJobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#EvaluationJobArn", name: "EvaluationJobArn", traits: {"smithy.api#length" => {"max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:evaluation-job/[a-z0-9]{12}$"})
    EvaluationJobDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#EvaluationJobDescription", name: "EvaluationJobDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^.+$", "smithy.api#sensitive" => {}})
    EvaluationJobIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#EvaluationJobIdentifier", name: "EvaluationJobIdentifier", traits: {"smithy.api#length" => {"max" => 1011}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:evaluation-job/[a-z0-9]{12})$", "smithy.api#sensitive" => {}})
    EvaluationJobIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#EvaluationJobIdentifiers", name: "EvaluationJobIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    EvaluationJobName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#EvaluationJobName", name: "EvaluationJobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9](-*[a-z0-9]){0,62}$"})
    EvaluationJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#EvaluationJobStatus", name: "EvaluationJobStatus")
    EvaluationJobType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#EvaluationJobType", name: "EvaluationJobType")
    EvaluationMetricDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#EvaluationMetricDescription", name: "EvaluationMetricDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^.+$", "smithy.api#sensitive" => {}})
    EvaluationMetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#EvaluationMetricName", name: "EvaluationMetricName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[0-9a-zA-Z-_.]+$", "smithy.api#sensitive" => {}})
    EvaluationMetricNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#EvaluationMetricNames", name: "EvaluationMetricNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    EvaluationModelConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#EvaluationModelConfig", name: "EvaluationModelConfig")
    EvaluationModelConfigSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#EvaluationModelConfigSummary", name: "EvaluationModelConfigSummary")
    EvaluationModelConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#EvaluationModelConfigs", name: "EvaluationModelConfigs", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    EvaluationModelInferenceParams = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#EvaluationModelInferenceParams", name: "EvaluationModelInferenceParams", traits: {"smithy.api#length" => {"min" => 1, "max" => 1023}, "smithy.api#sensitive" => {}})
    EvaluationOutputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#EvaluationOutputDataConfig", name: "EvaluationOutputDataConfig")
    EvaluationPrecomputedInferenceSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#EvaluationPrecomputedInferenceSource", name: "EvaluationPrecomputedInferenceSource")
    EvaluationPrecomputedInferenceSourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#EvaluationPrecomputedInferenceSourceIdentifier", name: "EvaluationPrecomputedInferenceSourceIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9]([a-zA-Z0-9._-]){0,255}$"})
    EvaluationPrecomputedInferenceSourceIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#EvaluationPrecomputedInferenceSourceIdentifiers", name: "EvaluationPrecomputedInferenceSourceIdentifiers", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    EvaluationPrecomputedRagSourceConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#EvaluationPrecomputedRagSourceConfig", name: "EvaluationPrecomputedRagSourceConfig")
    EvaluationPrecomputedRagSourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#EvaluationPrecomputedRagSourceIdentifier", name: "EvaluationPrecomputedRagSourceIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9]([a-zA-Z0-9._-]){0,255}$"})
    EvaluationPrecomputedRagSourceIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#EvaluationPrecomputedRagSourceIdentifiers", name: "EvaluationPrecomputedRagSourceIdentifiers", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    EvaluationPrecomputedRetrieveAndGenerateSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#EvaluationPrecomputedRetrieveAndGenerateSourceConfig", name: "EvaluationPrecomputedRetrieveAndGenerateSourceConfig")
    EvaluationPrecomputedRetrieveSourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#EvaluationPrecomputedRetrieveSourceConfig", name: "EvaluationPrecomputedRetrieveSourceConfig")
    EvaluationRagConfigSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#EvaluationRagConfigSummary", name: "EvaluationRagConfigSummary")
    EvaluationRatingMethod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#EvaluationRatingMethod", name: "EvaluationRatingMethod", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z-_]+$"})
    EvaluationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#EvaluationSummaries", name: "EvaluationSummaries", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    EvaluationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#EvaluationSummary", name: "EvaluationSummary")
    EvaluationTaskType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#EvaluationTaskType", name: "EvaluationTaskType", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[A-Za-z0-9]+$"})
    EvaluationTaskTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#EvaluationTaskTypes", name: "EvaluationTaskTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    EvaluatorModelConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#EvaluatorModelConfig", name: "EvaluatorModelConfig")
    EvaluatorModelIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#EvaluatorModelIdentifier", name: "EvaluatorModelIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:((:foundation-model/[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.:]?[a-z0-9-]{1,63}))|([0-9]{12}:inference-profile/(([a-z-]{2,8}.)[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.:]?[a-z0-9-]{1,63})))))$|(^[a-z0-9-]+[.][a-z0-9-]+([.][a-z0-9-]+)*(:[a-z0-9-]+)?$)|^[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([a-z0-9-]{1,63}[.]){0,2}[a-z0-9-]{1,63}([:][a-z0-9-]{1,63}){0,2}(/[a-z0-9]{12}|)$"})
    EvaluatorModelIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#EvaluatorModelIdentifiers", name: "EvaluatorModelIdentifiers", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    ExportAutomatedReasoningPolicyVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ExportAutomatedReasoningPolicyVersionRequest", name: "ExportAutomatedReasoningPolicyVersionRequest")
    ExportAutomatedReasoningPolicyVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ExportAutomatedReasoningPolicyVersionResponse", name: "ExportAutomatedReasoningPolicyVersionResponse")
    ExternalSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ExternalSource", name: "ExternalSource")
    ExternalSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#ExternalSourceType", name: "ExternalSourceType")
    ExternalSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#ExternalSources", name: "ExternalSources", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ExternalSourcesGenerationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ExternalSourcesGenerationConfiguration", name: "ExternalSourcesGenerationConfiguration")
    ExternalSourcesRetrieveAndGenerateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ExternalSourcesRetrieveAndGenerateConfiguration", name: "ExternalSourcesRetrieveAndGenerateConfiguration")
    FieldForReranking = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#FieldForReranking", name: "FieldForReranking")
    FieldsForReranking = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#FieldsForReranking", name: "FieldsForReranking", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    FilterAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#FilterAttribute", name: "FilterAttribute")
    FilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#FilterKey", name: "FilterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    FilterValue = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.bedrock#FilterValue", name: "FilterValue")
    FineTuningJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#FineTuningJobStatus", name: "FineTuningJobStatus")
    FoundationModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#FoundationModelArn", name: "FoundationModelArn", traits: {"smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}::foundation-model/[a-z0-9-]{1,63}[.]{1}([a-z0-9-]{1,63}[.]){0,2}[a-z0-9-]{1,63}([:][a-z0-9-]{1,63}){0,2}$"})
    FoundationModelDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#FoundationModelDetails", name: "FoundationModelDetails")
    FoundationModelLifecycle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#FoundationModelLifecycle", name: "FoundationModelLifecycle")
    FoundationModelLifecycleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#FoundationModelLifecycleStatus", name: "FoundationModelLifecycleStatus")
    FoundationModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#FoundationModelSummary", name: "FoundationModelSummary")
    FoundationModelSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#FoundationModelSummaryList", name: "FoundationModelSummaryList")
    GenerationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GenerationConfiguration", name: "GenerationConfiguration")
    GetAutomatedReasoningPolicyAnnotationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetAutomatedReasoningPolicyAnnotationsRequest", name: "GetAutomatedReasoningPolicyAnnotationsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    GetAutomatedReasoningPolicyAnnotationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetAutomatedReasoningPolicyAnnotationsResponse", name: "GetAutomatedReasoningPolicyAnnotationsResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    GetAutomatedReasoningPolicyBuildWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetAutomatedReasoningPolicyBuildWorkflowRequest", name: "GetAutomatedReasoningPolicyBuildWorkflowRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    GetAutomatedReasoningPolicyBuildWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetAutomatedReasoningPolicyBuildWorkflowResponse", name: "GetAutomatedReasoningPolicyBuildWorkflowResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest", name: "GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse", name: "GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    GetAutomatedReasoningPolicyNextScenarioRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetAutomatedReasoningPolicyNextScenarioRequest", name: "GetAutomatedReasoningPolicyNextScenarioRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    GetAutomatedReasoningPolicyNextScenarioResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetAutomatedReasoningPolicyNextScenarioResponse", name: "GetAutomatedReasoningPolicyNextScenarioResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    GetAutomatedReasoningPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetAutomatedReasoningPolicyRequest", name: "GetAutomatedReasoningPolicyRequest")
    GetAutomatedReasoningPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetAutomatedReasoningPolicyResponse", name: "GetAutomatedReasoningPolicyResponse")
    GetAutomatedReasoningPolicyTestCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetAutomatedReasoningPolicyTestCaseRequest", name: "GetAutomatedReasoningPolicyTestCaseRequest")
    GetAutomatedReasoningPolicyTestCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetAutomatedReasoningPolicyTestCaseResponse", name: "GetAutomatedReasoningPolicyTestCaseResponse")
    GetAutomatedReasoningPolicyTestResultRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetAutomatedReasoningPolicyTestResultRequest", name: "GetAutomatedReasoningPolicyTestResultRequest")
    GetAutomatedReasoningPolicyTestResultResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetAutomatedReasoningPolicyTestResultResponse", name: "GetAutomatedReasoningPolicyTestResultResponse")
    GetCustomModelDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetCustomModelDeploymentRequest", name: "GetCustomModelDeploymentRequest")
    GetCustomModelDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetCustomModelDeploymentResponse", name: "GetCustomModelDeploymentResponse")
    GetCustomModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetCustomModelRequest", name: "GetCustomModelRequest")
    GetCustomModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetCustomModelResponse", name: "GetCustomModelResponse")
    GetEvaluationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetEvaluationJobRequest", name: "GetEvaluationJobRequest")
    GetEvaluationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetEvaluationJobResponse", name: "GetEvaluationJobResponse")
    GetFoundationModelAvailabilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetFoundationModelAvailabilityRequest", name: "GetFoundationModelAvailabilityRequest")
    GetFoundationModelAvailabilityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetFoundationModelAvailabilityResponse", name: "GetFoundationModelAvailabilityResponse")
    GetFoundationModelIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GetFoundationModelIdentifier", name: "GetFoundationModelIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}::foundation-model/[a-z0-9-]{1,63}[.]{1}([a-z0-9-]{1,63}[.]){0,2}[a-z0-9-]{1,63}([:][a-z0-9-]{1,63}){0,2})|([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.]?[a-z0-9-]{1,63})([:][a-z0-9-]{1,63}){0,2})$"})
    GetFoundationModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetFoundationModelRequest", name: "GetFoundationModelRequest")
    GetFoundationModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetFoundationModelResponse", name: "GetFoundationModelResponse")
    GetGuardrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetGuardrailRequest", name: "GetGuardrailRequest")
    GetGuardrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetGuardrailResponse", name: "GetGuardrailResponse")
    GetImportedModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetImportedModelRequest", name: "GetImportedModelRequest")
    GetImportedModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetImportedModelResponse", name: "GetImportedModelResponse")
    GetInferenceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetInferenceProfileRequest", name: "GetInferenceProfileRequest")
    GetInferenceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetInferenceProfileResponse", name: "GetInferenceProfileResponse")
    GetMarketplaceModelEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetMarketplaceModelEndpointRequest", name: "GetMarketplaceModelEndpointRequest")
    GetMarketplaceModelEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetMarketplaceModelEndpointResponse", name: "GetMarketplaceModelEndpointResponse")
    GetModelCopyJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetModelCopyJobRequest", name: "GetModelCopyJobRequest")
    GetModelCopyJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetModelCopyJobResponse", name: "GetModelCopyJobResponse")
    GetModelCustomizationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetModelCustomizationJobRequest", name: "GetModelCustomizationJobRequest")
    GetModelCustomizationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetModelCustomizationJobResponse", name: "GetModelCustomizationJobResponse")
    GetModelImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetModelImportJobRequest", name: "GetModelImportJobRequest")
    GetModelImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetModelImportJobResponse", name: "GetModelImportJobResponse")
    GetModelInvocationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetModelInvocationJobRequest", name: "GetModelInvocationJobRequest")
    GetModelInvocationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetModelInvocationJobResponse", name: "GetModelInvocationJobResponse")
    GetModelInvocationLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetModelInvocationLoggingConfigurationRequest", name: "GetModelInvocationLoggingConfigurationRequest")
    GetModelInvocationLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetModelInvocationLoggingConfigurationResponse", name: "GetModelInvocationLoggingConfigurationResponse")
    GetPromptRouterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetPromptRouterRequest", name: "GetPromptRouterRequest")
    GetPromptRouterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetPromptRouterResponse", name: "GetPromptRouterResponse")
    GetProvisionedModelThroughputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetProvisionedModelThroughputRequest", name: "GetProvisionedModelThroughputRequest")
    GetProvisionedModelThroughputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetProvisionedModelThroughputResponse", name: "GetProvisionedModelThroughputResponse")
    GetUseCaseForModelAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetUseCaseForModelAccessRequest", name: "GetUseCaseForModelAccessRequest")
    GetUseCaseForModelAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GetUseCaseForModelAccessResponse", name: "GetUseCaseForModelAccessResponse")
    GuardrailArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailArn", name: "GuardrailArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail/[a-z0-9]+$"})
    GuardrailAutomatedReasoningPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailAutomatedReasoningPolicy", name: "GuardrailAutomatedReasoningPolicy")
    GuardrailAutomatedReasoningPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailAutomatedReasoningPolicyConfig", name: "GuardrailAutomatedReasoningPolicyConfig")
    GuardrailBlockedMessaging = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailBlockedMessaging", name: "GuardrailBlockedMessaging", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#sensitive" => {}})
    GuardrailConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailConfiguration", name: "GuardrailConfiguration")
    GuardrailContentFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailContentFilter", name: "GuardrailContentFilter")
    GuardrailContentFilterAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#GuardrailContentFilterAction", name: "GuardrailContentFilterAction", traits: {"smithy.api#sensitive" => {}})
    GuardrailContentFilterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailContentFilterConfig", name: "GuardrailContentFilterConfig")
    GuardrailContentFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#GuardrailContentFilterType", name: "GuardrailContentFilterType")
    GuardrailContentFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailContentFilters", name: "GuardrailContentFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    GuardrailContentFiltersConfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailContentFiltersConfig", name: "GuardrailContentFiltersConfig", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    GuardrailContentFiltersTier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailContentFiltersTier", name: "GuardrailContentFiltersTier")
    GuardrailContentFiltersTierConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailContentFiltersTierConfig", name: "GuardrailContentFiltersTierConfig")
    GuardrailContentFiltersTierName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#GuardrailContentFiltersTierName", name: "GuardrailContentFiltersTierName", traits: {"smithy.api#sensitive" => {}})
    GuardrailContentPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailContentPolicy", name: "GuardrailContentPolicy")
    GuardrailContentPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailContentPolicyConfig", name: "GuardrailContentPolicyConfig")
    GuardrailContextualGroundingAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#GuardrailContextualGroundingAction", name: "GuardrailContextualGroundingAction", traits: {"smithy.api#sensitive" => {}})
    GuardrailContextualGroundingFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailContextualGroundingFilter", name: "GuardrailContextualGroundingFilter")
    GuardrailContextualGroundingFilterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailContextualGroundingFilterConfig", name: "GuardrailContextualGroundingFilterConfig")
    GuardrailContextualGroundingFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#GuardrailContextualGroundingFilterType", name: "GuardrailContextualGroundingFilterType")
    GuardrailContextualGroundingFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailContextualGroundingFilters", name: "GuardrailContextualGroundingFilters", traits: {"smithy.api#length" => {"min" => 1}})
    GuardrailContextualGroundingFiltersConfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailContextualGroundingFiltersConfig", name: "GuardrailContextualGroundingFiltersConfig", traits: {"smithy.api#length" => {"min" => 1}})
    GuardrailContextualGroundingPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailContextualGroundingPolicy", name: "GuardrailContextualGroundingPolicy")
    GuardrailContextualGroundingPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailContextualGroundingPolicyConfig", name: "GuardrailContextualGroundingPolicyConfig")
    GuardrailCrossRegionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailCrossRegionConfig", name: "GuardrailCrossRegionConfig")
    GuardrailCrossRegionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailCrossRegionDetails", name: "GuardrailCrossRegionDetails")
    GuardrailCrossRegionGuardrailProfileArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailCrossRegionGuardrailProfileArn", name: "GuardrailCrossRegionGuardrailProfileArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail-profile/[a-z0-9-]+[.]{1}guardrail[.]{1}v[0-9:]+$"})
    GuardrailCrossRegionGuardrailProfileId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailCrossRegionGuardrailProfileId", name: "GuardrailCrossRegionGuardrailProfileId", traits: {"smithy.api#length" => {"min" => 15, "max" => 30}, "smithy.api#pattern" => "^[a-z0-9-]+[.]{1}guardrail[.]{1}v[0-9:]+$"})
    GuardrailCrossRegionGuardrailProfileIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailCrossRegionGuardrailProfileIdentifier", name: "GuardrailCrossRegionGuardrailProfileIdentifier", traits: {"smithy.api#length" => {"min" => 15, "max" => 2048}, "smithy.api#pattern" => "^[a-z0-9-]+[.]{1}guardrail[.]{1}v[0-9:]+|arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail-profile/[a-z0-9-]+[.]{1}guardrail[.]{1}v[0-9:]+$"})
    GuardrailDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailDescription", name: "GuardrailDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    GuardrailDraftVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailDraftVersion", name: "GuardrailDraftVersion", traits: {"smithy.api#length" => {"min" => 5, "max" => 5}, "smithy.api#pattern" => "^DRAFT$"})
    GuardrailFailureRecommendation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailFailureRecommendation", name: "GuardrailFailureRecommendation", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    GuardrailFailureRecommendations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailFailureRecommendations", name: "GuardrailFailureRecommendations", traits: {"smithy.api#length" => {"max" => 100}})
    GuardrailFilterStrength = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#GuardrailFilterStrength", name: "GuardrailFilterStrength")
    GuardrailId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailId", name: "GuardrailId", traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^[a-z0-9]+$"})
    GuardrailIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailIdentifier", name: "GuardrailIdentifier", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^(([a-z0-9]+)|(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail/[a-z0-9]+))$"})
    GuardrailManagedWordLists = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailManagedWordLists", name: "GuardrailManagedWordLists")
    GuardrailManagedWordListsConfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailManagedWordListsConfig", name: "GuardrailManagedWordListsConfig")
    GuardrailManagedWords = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailManagedWords", name: "GuardrailManagedWords")
    GuardrailManagedWordsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailManagedWordsConfig", name: "GuardrailManagedWordsConfig")
    GuardrailManagedWordsType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#GuardrailManagedWordsType", name: "GuardrailManagedWordsType")
    GuardrailModalities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailModalities", name: "GuardrailModalities", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    GuardrailModality = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#GuardrailModality", name: "GuardrailModality", traits: {"smithy.api#sensitive" => {}})
    GuardrailName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailName", name: "GuardrailName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[0-9a-zA-Z-_]+$", "smithy.api#sensitive" => {}})
    GuardrailNumericalVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailNumericalVersion", name: "GuardrailNumericalVersion", traits: {"smithy.api#pattern" => "^[1-9][0-9]{0,7}$"})
    GuardrailPiiEntities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailPiiEntities", name: "GuardrailPiiEntities", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#uniqueItems" => {}})
    GuardrailPiiEntitiesConfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailPiiEntitiesConfig", name: "GuardrailPiiEntitiesConfig", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#uniqueItems" => {}})
    GuardrailPiiEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailPiiEntity", name: "GuardrailPiiEntity")
    GuardrailPiiEntityConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailPiiEntityConfig", name: "GuardrailPiiEntityConfig")
    GuardrailPiiEntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#GuardrailPiiEntityType", name: "GuardrailPiiEntityType")
    GuardrailRegex = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailRegex", name: "GuardrailRegex")
    GuardrailRegexConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailRegexConfig", name: "GuardrailRegexConfig")
    GuardrailRegexes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailRegexes", name: "GuardrailRegexes")
    GuardrailRegexesConfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailRegexesConfig", name: "GuardrailRegexesConfig", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    GuardrailSensitiveInformationAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#GuardrailSensitiveInformationAction", name: "GuardrailSensitiveInformationAction")
    GuardrailSensitiveInformationPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailSensitiveInformationPolicy", name: "GuardrailSensitiveInformationPolicy")
    GuardrailSensitiveInformationPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailSensitiveInformationPolicyConfig", name: "GuardrailSensitiveInformationPolicyConfig")
    GuardrailStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#GuardrailStatus", name: "GuardrailStatus")
    GuardrailStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailStatusReason", name: "GuardrailStatusReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    GuardrailStatusReasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailStatusReasons", name: "GuardrailStatusReasons", traits: {"smithy.api#length" => {"max" => 100}})
    GuardrailSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailSummaries", name: "GuardrailSummaries", traits: {"smithy.api#length" => {"max" => 1000}})
    GuardrailSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailSummary", name: "GuardrailSummary")
    GuardrailTopic = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailTopic", name: "GuardrailTopic")
    GuardrailTopicAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#GuardrailTopicAction", name: "GuardrailTopicAction", traits: {"smithy.api#sensitive" => {}})
    GuardrailTopicConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailTopicConfig", name: "GuardrailTopicConfig")
    GuardrailTopicDefinition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailTopicDefinition", name: "GuardrailTopicDefinition", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    GuardrailTopicExample = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailTopicExample", name: "GuardrailTopicExample", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    GuardrailTopicExamples = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailTopicExamples", name: "GuardrailTopicExamples", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    GuardrailTopicName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailTopicName", name: "GuardrailTopicName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z-_ !?.]+$", "smithy.api#sensitive" => {}})
    GuardrailTopicPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailTopicPolicy", name: "GuardrailTopicPolicy")
    GuardrailTopicPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailTopicPolicyConfig", name: "GuardrailTopicPolicyConfig")
    GuardrailTopicType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#GuardrailTopicType", name: "GuardrailTopicType")
    GuardrailTopics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailTopics", name: "GuardrailTopics", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    GuardrailTopicsConfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailTopicsConfig", name: "GuardrailTopicsConfig", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    GuardrailTopicsTier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailTopicsTier", name: "GuardrailTopicsTier")
    GuardrailTopicsTierConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailTopicsTierConfig", name: "GuardrailTopicsTierConfig")
    GuardrailTopicsTierName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#GuardrailTopicsTierName", name: "GuardrailTopicsTierName", traits: {"smithy.api#sensitive" => {}})
    GuardrailVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#GuardrailVersion", name: "GuardrailVersion", traits: {"smithy.api#pattern" => "^(([1-9][0-9]{0,7})|(DRAFT))$"})
    GuardrailWord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailWord", name: "GuardrailWord")
    GuardrailWordAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#GuardrailWordAction", name: "GuardrailWordAction", traits: {"smithy.api#sensitive" => {}})
    GuardrailWordConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailWordConfig", name: "GuardrailWordConfig")
    GuardrailWordPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailWordPolicy", name: "GuardrailWordPolicy")
    GuardrailWordPolicyConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#GuardrailWordPolicyConfig", name: "GuardrailWordPolicyConfig")
    GuardrailWords = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailWords", name: "GuardrailWords", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    GuardrailWordsConfig = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#GuardrailWordsConfig", name: "GuardrailWordsConfig", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    HumanEvaluationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#HumanEvaluationConfig", name: "HumanEvaluationConfig")
    HumanEvaluationCustomMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#HumanEvaluationCustomMetric", name: "HumanEvaluationCustomMetric")
    HumanEvaluationCustomMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#HumanEvaluationCustomMetrics", name: "HumanEvaluationCustomMetrics", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    HumanTaskInstructions = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#HumanTaskInstructions", name: "HumanTaskInstructions", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}, "smithy.api#pattern" => "^[\\S\\s]+$", "smithy.api#sensitive" => {}})
    HumanWorkflowConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#HumanWorkflowConfig", name: "HumanWorkflowConfig")
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9]([-a-zA-Z0-9]{0,254}[a-zA-Z0-9])?$"})
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#Identifier", name: "Identifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    ImplicitFilterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ImplicitFilterConfiguration", name: "ImplicitFilterConfiguration")
    ImportedModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ImportedModelArn", name: "ImportedModelArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:imported-model/[a-z0-9]{12}$"})
    ImportedModelIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ImportedModelIdentifier", name: "ImportedModelIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:imported-model/[a-z0-9]{12})|(([0-9a-zA-Z][_-]?)+)$"})
    ImportedModelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ImportedModelName", name: "ImportedModelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^([0-9a-zA-Z][_-]?)+$"})
    ImportedModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ImportedModelSummary", name: "ImportedModelSummary")
    ImportedModelSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#ImportedModelSummaryList", name: "ImportedModelSummaryList")
    InferenceProfileArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#InferenceProfileArn", name: "InferenceProfileArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(|-us-gov|-cn|-iso|-iso-b):bedrock:(|[0-9a-z-]{0,20}):(|[0-9]{12}):(inference-profile|application-inference-profile)/[a-zA-Z0-9-:.]+$"})
    InferenceProfileDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#InferenceProfileDescription", name: "InferenceProfileDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^([0-9a-zA-Z:.][ _-]?)+$", "smithy.api#sensitive" => {}})
    InferenceProfileId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#InferenceProfileId", name: "InferenceProfileId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-:.]+$"})
    InferenceProfileIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#InferenceProfileIdentifier", name: "InferenceProfileIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(|-us-gov|-cn|-iso|-iso-b):bedrock:(|[0-9a-z-]{0,20}):(|[0-9]{12}):(inference-profile|application-inference-profile)/)?[a-zA-Z0-9-:.]+$"})
    InferenceProfileModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#InferenceProfileModel", name: "InferenceProfileModel")
    InferenceProfileModelSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#InferenceProfileModelSource", name: "InferenceProfileModelSource")
    InferenceProfileModelSourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#InferenceProfileModelSourceArn", name: "InferenceProfileModelSourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(|-us-gov|-cn|-iso|-iso-b):bedrock:(|[0-9a-z-]{0,20}):(|[0-9]{12}):(inference-profile|foundation-model)/[a-zA-Z0-9-:.]+$"})
    InferenceProfileModels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#InferenceProfileModels", name: "InferenceProfileModels", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    InferenceProfileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#InferenceProfileName", name: "InferenceProfileName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^([0-9a-zA-Z][ _-]?)+$"})
    InferenceProfileStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#InferenceProfileStatus", name: "InferenceProfileStatus")
    InferenceProfileSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#InferenceProfileSummaries", name: "InferenceProfileSummaries")
    InferenceProfileSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#InferenceProfileSummary", name: "InferenceProfileSummary")
    InferenceProfileType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#InferenceProfileType", name: "InferenceProfileType")
    InferenceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#InferenceType", name: "InferenceType")
    InferenceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#InferenceTypeList", name: "InferenceTypeList")
    InstanceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrock#InstanceCount", name: "InstanceCount", traits: {"smithy.api#range" => {"min" => 1}})
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#InstanceType", name: "InstanceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    InstructSupported = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.bedrock#InstructSupported", name: "InstructSupported")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvocationLogSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#InvocationLogSource", name: "InvocationLogSource")
    InvocationLogsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#InvocationLogsConfig", name: "InvocationLogsConfig")
    JobName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#JobName", name: "JobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9\\+\\-\\.])*$"})
    JobStatusDetails = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#JobStatusDetails", name: "JobStatusDetails")
    KbInferenceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#KbInferenceConfig", name: "KbInferenceConfig")
    KeyPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#KeyPrefix", name: "KeyPrefix", traits: {"smithy.api#length" => {"max" => 1024}})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$"})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:kms:[a-zA-Z0-9-]*:[0-9]{12}:((key/[a-zA-Z0-9-]{36})|(alias/[a-zA-Z0-9-_/]+)))|([a-zA-Z0-9-]{36})|(alias/[a-zA-Z0-9-_/]+)$"})
    KnowledgeBaseConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#KnowledgeBaseConfig", name: "KnowledgeBaseConfig")
    KnowledgeBaseId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#KnowledgeBaseId", name: "KnowledgeBaseId", traits: {"smithy.api#length" => {"max" => 10}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$"})
    KnowledgeBaseRetrievalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#KnowledgeBaseRetrievalConfiguration", name: "KnowledgeBaseRetrievalConfiguration")
    KnowledgeBaseRetrieveAndGenerateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#KnowledgeBaseRetrieveAndGenerateConfiguration", name: "KnowledgeBaseRetrieveAndGenerateConfiguration")
    KnowledgeBaseVectorSearchConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#KnowledgeBaseVectorSearchConfiguration", name: "KnowledgeBaseVectorSearchConfiguration")
    LegalTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#LegalTerm", name: "LegalTerm")
    ListAutomatedReasoningPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListAutomatedReasoningPoliciesRequest", name: "ListAutomatedReasoningPoliciesRequest")
    ListAutomatedReasoningPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListAutomatedReasoningPoliciesResponse", name: "ListAutomatedReasoningPoliciesResponse")
    ListAutomatedReasoningPolicyBuildWorkflowsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListAutomatedReasoningPolicyBuildWorkflowsRequest", name: "ListAutomatedReasoningPolicyBuildWorkflowsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    ListAutomatedReasoningPolicyBuildWorkflowsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListAutomatedReasoningPolicyBuildWorkflowsResponse", name: "ListAutomatedReasoningPolicyBuildWorkflowsResponse")
    ListAutomatedReasoningPolicyTestCasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListAutomatedReasoningPolicyTestCasesRequest", name: "ListAutomatedReasoningPolicyTestCasesRequest")
    ListAutomatedReasoningPolicyTestCasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListAutomatedReasoningPolicyTestCasesResponse", name: "ListAutomatedReasoningPolicyTestCasesResponse")
    ListAutomatedReasoningPolicyTestResultsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListAutomatedReasoningPolicyTestResultsRequest", name: "ListAutomatedReasoningPolicyTestResultsRequest")
    ListAutomatedReasoningPolicyTestResultsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListAutomatedReasoningPolicyTestResultsResponse", name: "ListAutomatedReasoningPolicyTestResultsResponse")
    ListCustomModelDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListCustomModelDeploymentsRequest", name: "ListCustomModelDeploymentsRequest")
    ListCustomModelDeploymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListCustomModelDeploymentsResponse", name: "ListCustomModelDeploymentsResponse")
    ListCustomModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListCustomModelsRequest", name: "ListCustomModelsRequest")
    ListCustomModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListCustomModelsResponse", name: "ListCustomModelsResponse")
    ListEvaluationJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListEvaluationJobsRequest", name: "ListEvaluationJobsRequest")
    ListEvaluationJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListEvaluationJobsResponse", name: "ListEvaluationJobsResponse")
    ListFoundationModelAgreementOffersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListFoundationModelAgreementOffersRequest", name: "ListFoundationModelAgreementOffersRequest")
    ListFoundationModelAgreementOffersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListFoundationModelAgreementOffersResponse", name: "ListFoundationModelAgreementOffersResponse")
    ListFoundationModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListFoundationModelsRequest", name: "ListFoundationModelsRequest")
    ListFoundationModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListFoundationModelsResponse", name: "ListFoundationModelsResponse")
    ListGuardrailsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListGuardrailsRequest", name: "ListGuardrailsRequest")
    ListGuardrailsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListGuardrailsResponse", name: "ListGuardrailsResponse")
    ListImportedModelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListImportedModelsRequest", name: "ListImportedModelsRequest")
    ListImportedModelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListImportedModelsResponse", name: "ListImportedModelsResponse")
    ListInferenceProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListInferenceProfilesRequest", name: "ListInferenceProfilesRequest")
    ListInferenceProfilesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListInferenceProfilesResponse", name: "ListInferenceProfilesResponse")
    ListMarketplaceModelEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListMarketplaceModelEndpointsRequest", name: "ListMarketplaceModelEndpointsRequest")
    ListMarketplaceModelEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListMarketplaceModelEndpointsResponse", name: "ListMarketplaceModelEndpointsResponse")
    ListModelCopyJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListModelCopyJobsRequest", name: "ListModelCopyJobsRequest")
    ListModelCopyJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListModelCopyJobsResponse", name: "ListModelCopyJobsResponse")
    ListModelCustomizationJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListModelCustomizationJobsRequest", name: "ListModelCustomizationJobsRequest")
    ListModelCustomizationJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListModelCustomizationJobsResponse", name: "ListModelCustomizationJobsResponse")
    ListModelImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListModelImportJobsRequest", name: "ListModelImportJobsRequest")
    ListModelImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListModelImportJobsResponse", name: "ListModelImportJobsResponse")
    ListModelInvocationJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListModelInvocationJobsRequest", name: "ListModelInvocationJobsRequest")
    ListModelInvocationJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListModelInvocationJobsResponse", name: "ListModelInvocationJobsResponse")
    ListPromptRoutersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListPromptRoutersRequest", name: "ListPromptRoutersRequest")
    ListPromptRoutersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListPromptRoutersResponse", name: "ListPromptRoutersResponse")
    ListProvisionedModelThroughputsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListProvisionedModelThroughputsRequest", name: "ListProvisionedModelThroughputsRequest")
    ListProvisionedModelThroughputsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListProvisionedModelThroughputsResponse", name: "ListProvisionedModelThroughputsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#LogGroupName", name: "LogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    LoggingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#LoggingConfig", name: "LoggingConfig")
    MarketplaceModelEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#MarketplaceModelEndpoint", name: "MarketplaceModelEndpoint")
    MarketplaceModelEndpointSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#MarketplaceModelEndpointSummaries", name: "MarketplaceModelEndpointSummaries", traits: {"smithy.api#length" => {"max" => 1000}})
    MarketplaceModelEndpointSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#MarketplaceModelEndpointSummary", name: "MarketplaceModelEndpointSummary")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrock#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    MaxTokens = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrock#MaxTokens", name: "MaxTokens", traits: {"smithy.api#range" => {"min" => 0, "max" => 65536}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#Message", name: "Message", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#sensitive" => {}})
    MetadataAttributeSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#MetadataAttributeSchema", name: "MetadataAttributeSchema", traits: {"smithy.api#sensitive" => {}})
    MetadataAttributeSchemaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#MetadataAttributeSchemaList", name: "MetadataAttributeSchemaList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    MetadataConfigurationForReranking = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#MetadataConfigurationForReranking", name: "MetadataConfigurationForReranking")
    MetricFloat = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.bedrock#MetricFloat", name: "MetricFloat")
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#MetricName", name: "MetricName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[0-9a-zA-Z-_.]+$", "smithy.api#sensitive" => {}})
    ModelArchitecture = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelArchitecture", name: "ModelArchitecture")
    ModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelArn", name: "ModelArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:(([0-9]{12}:custom-model/((imported)|([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}))(([:][a-z0-9-]{1,63}){0,2})?/[a-z0-9]{12})|(:foundation-model/[a-z0-9-]{1,63}[.]{1}([a-z0-9-]{1,63}[.]){0,2}[a-z0-9-]{1,63}([:][a-z0-9-]{1,63}){0,2}))$"})
    ModelCopyJobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelCopyJobArn", name: "ModelCopyJobArn", traits: {"smithy.api#length" => {"max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:model-copy-job/[a-z0-9]{12}$"})
    ModelCopyJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#ModelCopyJobStatus", name: "ModelCopyJobStatus")
    ModelCopyJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#ModelCopyJobSummaries", name: "ModelCopyJobSummaries")
    ModelCopyJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ModelCopyJobSummary", name: "ModelCopyJobSummary")
    ModelCustomization = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#ModelCustomization", name: "ModelCustomization")
    ModelCustomizationHyperParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrock#ModelCustomizationHyperParameters", name: "ModelCustomizationHyperParameters")
    ModelCustomizationJobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelCustomizationJobArn", name: "ModelCustomizationJobArn", traits: {"smithy.api#length" => {"max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:model-customization-job/[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([a-z0-9-]{1,63}[.]){0,2}[a-z0-9-]{1,63}([:][a-z0-9-]{1,63}){0,2}/[a-z0-9]{12}$"})
    ModelCustomizationJobIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelCustomizationJobIdentifier", name: "ModelCustomizationJobIdentifier", traits: {"smithy.api#length" => {"max" => 1011}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:model-customization-job/[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([a-z0-9-]{1,63}[.]){0,2}[a-z0-9-]{1,63}([:][a-z0-9-]{1,63}){0,2}/[a-z0-9]{12})|([a-zA-Z0-9](-*[a-zA-Z0-9\\+\\-\\.])*)$"})
    ModelCustomizationJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#ModelCustomizationJobStatus", name: "ModelCustomizationJobStatus")
    ModelCustomizationJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#ModelCustomizationJobSummaries", name: "ModelCustomizationJobSummaries")
    ModelCustomizationJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ModelCustomizationJobSummary", name: "ModelCustomizationJobSummary")
    ModelCustomizationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#ModelCustomizationList", name: "ModelCustomizationList")
    ModelDataSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#ModelDataSource", name: "ModelDataSource")
    ModelDeploymentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelDeploymentName", name: "ModelDeploymentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^([0-9a-zA-Z][_-]?){1,63}$"})
    ModelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelId", name: "ModelId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:(([0-9]{12}:custom-model/[a-z0-9-]{1,63}[.]{1}[a-z0-9-:]{1,63}/[a-z0-9]{12}$)|(:foundation-model/([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.]?[a-z0-9-]{1,63})([:][a-z0-9-]{1,63}){0,2})|(([0-9a-zA-Z][_-]?)+)$)|([0-9]{12}:(inference-profile|application-inference-profile)/[a-zA-Z0-9-:.]+$)))|([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.]?[a-z0-9-]{1,63})([:][a-z0-9-]{1,63}){0,2})|(([0-9a-zA-Z][_-]?)+)$"})
    ModelIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelIdentifier", name: "ModelIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:(([0-9]{12}:custom-model/((imported)|([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}))(([:][a-z0-9-]{1,63}){0,2})?/[a-z0-9]{12})|(:foundation-model/([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.]?[a-z0-9-]{1,63})([:][a-z0-9-]{1,63}){0,2})))|(([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.]?[a-z0-9-]{1,63})([:][a-z0-9-]{1,63}){0,2}))|(([0-9a-zA-Z][_-]?)+)$"})
    ModelImportJobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelImportJobArn", name: "ModelImportJobArn", traits: {"smithy.api#length" => {"max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:model-import-job/[a-z0-9]{12}$"})
    ModelImportJobIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelImportJobIdentifier", name: "ModelImportJobIdentifier", traits: {"smithy.api#length" => {"max" => 1011}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:model-import-job/[a-z0-9]{12})|([a-zA-Z0-9](-*[a-zA-Z0-9\\+\\-\\.])*)$"})
    ModelImportJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#ModelImportJobStatus", name: "ModelImportJobStatus")
    ModelImportJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#ModelImportJobSummaries", name: "ModelImportJobSummaries")
    ModelImportJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ModelImportJobSummary", name: "ModelImportJobSummary")
    ModelInvocationIdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelInvocationIdempotencyToken", name: "ModelInvocationIdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9]{1,256}(-*[a-zA-Z0-9]){0,256}$"})
    ModelInvocationJobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelInvocationJobArn", name: "ModelInvocationJobArn", traits: {"smithy.api#length" => {"max" => 1011}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:model-invocation-job/[a-z0-9]{12})$"})
    ModelInvocationJobIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelInvocationJobIdentifier", name: "ModelInvocationJobIdentifier", traits: {"smithy.api#length" => {"max" => 1011}, "smithy.api#pattern" => "^((arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:model-invocation-job/)?[a-z0-9]{12})$"})
    ModelInvocationJobInputDataConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#ModelInvocationJobInputDataConfig", name: "ModelInvocationJobInputDataConfig")
    ModelInvocationJobName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelInvocationJobName", name: "ModelInvocationJobName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9]{1,63}(-*[a-zA-Z0-9\\+\\-\\.]){0,63}$"})
    ModelInvocationJobOutputDataConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#ModelInvocationJobOutputDataConfig", name: "ModelInvocationJobOutputDataConfig")
    ModelInvocationJobS3InputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ModelInvocationJobS3InputDataConfig", name: "ModelInvocationJobS3InputDataConfig")
    ModelInvocationJobS3OutputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ModelInvocationJobS3OutputDataConfig", name: "ModelInvocationJobS3OutputDataConfig")
    ModelInvocationJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#ModelInvocationJobStatus", name: "ModelInvocationJobStatus")
    ModelInvocationJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#ModelInvocationJobSummaries", name: "ModelInvocationJobSummaries")
    ModelInvocationJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ModelInvocationJobSummary", name: "ModelInvocationJobSummary")
    ModelInvocationJobTimeoutDurationInHours = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrock#ModelInvocationJobTimeoutDurationInHours", name: "ModelInvocationJobTimeoutDurationInHours", traits: {"smithy.api#range" => {"min" => 24, "max" => 168}})
    ModelModality = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#ModelModality", name: "ModelModality")
    ModelModalityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#ModelModalityList", name: "ModelModalityList")
    ModelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelName", name: "ModelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63})$"})
    ModelSourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ModelSourceIdentifier", name: "ModelSourceIdentifier", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "arn:aws:sagemaker:.*:hub-content/SageMakerPublicHub/Model/.*"})
    ModelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#ModelStatus", name: "ModelStatus")
    NonBlankString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#NonBlankString", name: "NonBlankString", traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    Offer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#Offer", name: "Offer")
    OfferId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#OfferId", name: "OfferId")
    OfferToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#OfferToken", name: "OfferToken")
    OfferType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#OfferType", name: "OfferType")
    Offers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#Offers", name: "Offers")
    OrchestrationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#OrchestrationConfiguration", name: "OrchestrationConfiguration")
    OutputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#OutputDataConfig", name: "OutputDataConfig")
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S*$"})
    PerformanceConfigLatency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#PerformanceConfigLatency", name: "PerformanceConfigLatency")
    PerformanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#PerformanceConfiguration", name: "PerformanceConfiguration")
    PositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrock#PositiveInteger", name: "PositiveInteger", traits: {"smithy.api#range" => {"min" => 1}})
    PricingTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#PricingTerm", name: "PricingTerm")
    PromptRouterArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#PromptRouterArn", name: "PromptRouterArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:default-prompt-router/[a-zA-Z0-9-:.]+$"})
    PromptRouterDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#PromptRouterDescription", name: "PromptRouterDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^([0-9a-zA-Z:.][ _-]?)+$", "smithy.api#sensitive" => {}})
    PromptRouterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#PromptRouterName", name: "PromptRouterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^([0-9a-zA-Z][ _-]?)+$"})
    PromptRouterStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#PromptRouterStatus", name: "PromptRouterStatus")
    PromptRouterSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#PromptRouterSummaries", name: "PromptRouterSummaries")
    PromptRouterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#PromptRouterSummary", name: "PromptRouterSummary")
    PromptRouterTargetModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#PromptRouterTargetModel", name: "PromptRouterTargetModel")
    PromptRouterTargetModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#PromptRouterTargetModelArn", name: "PromptRouterTargetModelArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "(^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}::foundation-model/[a-z0-9-]{1,63}[.]{1}([a-z0-9-]{1,63}[.]){0,2}[a-z0-9-]{1,63}([:][a-z0-9-]{1,63}){0,2})|(^arn:aws(|-us-gov|-cn|-iso|-iso-b):bedrock:(|[0-9a-z-]{0,20}):(|[0-9]{12}):(inference-profile|application-inference-profile)/[a-zA-Z0-9-:.]+)$"})
    PromptRouterTargetModels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#PromptRouterTargetModels", name: "PromptRouterTargetModels")
    PromptRouterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#PromptRouterType", name: "PromptRouterType")
    PromptTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#PromptTemplate", name: "PromptTemplate")
    Provider = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#Provider", name: "Provider", traits: {"smithy.api#pattern" => "^[A-Za-z0-9- ]{1,63}$"})
    ProvisionedModelArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ProvisionedModelArn", name: "ProvisionedModelArn", traits: {"smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:provisioned-model/[a-z0-9]{12}$"})
    ProvisionedModelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ProvisionedModelId", name: "ProvisionedModelId", traits: {"smithy.api#pattern" => "^((([0-9a-zA-Z][_-]?)+)|(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:provisioned-model/[a-z0-9]{12}))$"})
    ProvisionedModelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#ProvisionedModelName", name: "ProvisionedModelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^([0-9a-zA-Z][_-]?)+$"})
    ProvisionedModelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#ProvisionedModelStatus", name: "ProvisionedModelStatus")
    ProvisionedModelSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#ProvisionedModelSummaries", name: "ProvisionedModelSummaries")
    ProvisionedModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ProvisionedModelSummary", name: "ProvisionedModelSummary")
    PutModelInvocationLoggingConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#PutModelInvocationLoggingConfigurationRequest", name: "PutModelInvocationLoggingConfigurationRequest")
    PutModelInvocationLoggingConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#PutModelInvocationLoggingConfigurationResponse", name: "PutModelInvocationLoggingConfigurationResponse")
    PutUseCaseForModelAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#PutUseCaseForModelAccessRequest", name: "PutUseCaseForModelAccessRequest")
    PutUseCaseForModelAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#PutUseCaseForModelAccessResponse", name: "PutUseCaseForModelAccessResponse")
    QueryTransformationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#QueryTransformationConfiguration", name: "QueryTransformationConfiguration")
    QueryTransformationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#QueryTransformationType", name: "QueryTransformationType")
    RAGConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#RAGConfig", name: "RAGConfig")
    RAGStopSequences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#RAGStopSequences", name: "RAGStopSequences", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    RagConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#RagConfigs", name: "RagConfigs", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    RateCard = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#RateCard", name: "RateCard")
    RatingScale = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#RatingScale", name: "RatingScale", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    RatingScaleItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#RatingScaleItem", name: "RatingScaleItem")
    RatingScaleItemDefinition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#RatingScaleItemDefinition", name: "RatingScaleItemDefinition", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RatingScaleItemValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#RatingScaleItemValue", name: "RatingScaleItemValue")
    RegionAvailability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#RegionAvailability", name: "RegionAvailability")
    RegisterMarketplaceModelEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#RegisterMarketplaceModelEndpointRequest", name: "RegisterMarketplaceModelEndpointRequest")
    RegisterMarketplaceModelEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#RegisterMarketplaceModelEndpointResponse", name: "RegisterMarketplaceModelEndpointResponse")
    RequestMetadataBaseFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#RequestMetadataBaseFilters", name: "RequestMetadataBaseFilters")
    RequestMetadataFilters = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#RequestMetadataFilters", name: "RequestMetadataFilters")
    RequestMetadataFiltersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#RequestMetadataFiltersList", name: "RequestMetadataFiltersList", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    RequestMetadataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrock#RequestMetadataMap", name: "RequestMetadataMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#sensitive" => {}})
    RerankingMetadataSelectionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#RerankingMetadataSelectionMode", name: "RerankingMetadataSelectionMode")
    RerankingMetadataSelectiveModeConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#RerankingMetadataSelectiveModeConfiguration", name: "RerankingMetadataSelectiveModeConfiguration")
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RetrievalFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrock#RetrievalFilter", name: "RetrievalFilter", traits: {"smithy.api#sensitive" => {}})
    RetrievalFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#RetrievalFilterList", name: "RetrievalFilterList", traits: {"smithy.api#length" => {"min" => 2}})
    RetrieveAndGenerateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#RetrieveAndGenerateConfiguration", name: "RetrieveAndGenerateConfiguration")
    RetrieveAndGenerateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#RetrieveAndGenerateType", name: "RetrieveAndGenerateType")
    RetrieveConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#RetrieveConfig", name: "RetrieveConfig")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::([0-9]{12})?:role/.+$"})
    RoutingCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#RoutingCriteria", name: "RoutingCriteria")
    S3Config = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#S3Config", name: "S3Config")
    S3DataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#S3DataSource", name: "S3DataSource")
    S3InputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#S3InputFormat", name: "S3InputFormat")
    S3ObjectDoc = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#S3ObjectDoc", name: "S3ObjectDoc")
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#S3Uri", name: "S3Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][-.a-z0-9]{1,61}[a-z0-9](?:/[-!_*'().a-z0-9A-Z]+(?:/[-!_*'().a-z0-9A-Z]+)*)?/?$"})
    SageMakerEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#SageMakerEndpoint", name: "SageMakerEndpoint")
    SageMakerFlowDefinitionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#SageMakerFlowDefinitionArn", name: "SageMakerFlowDefinitionArn", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:sagemaker:[a-z0-9-]{1,20}:[0-9]{12}:flow-definition/.*$"})
    SearchType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#SearchType", name: "SearchType")
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"max" => 32}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SortByProvisionedModels = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#SortByProvisionedModels", name: "SortByProvisionedModels")
    SortJobsBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#SortJobsBy", name: "SortJobsBy")
    SortModelsBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#SortModelsBy", name: "SortModelsBy")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#SortOrder", name: "SortOrder")
    StartAutomatedReasoningPolicyBuildWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#StartAutomatedReasoningPolicyBuildWorkflowRequest", name: "StartAutomatedReasoningPolicyBuildWorkflowRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    StartAutomatedReasoningPolicyBuildWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#StartAutomatedReasoningPolicyBuildWorkflowResponse", name: "StartAutomatedReasoningPolicyBuildWorkflowResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    StartAutomatedReasoningPolicyTestWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#StartAutomatedReasoningPolicyTestWorkflowRequest", name: "StartAutomatedReasoningPolicyTestWorkflowRequest")
    StartAutomatedReasoningPolicyTestWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#StartAutomatedReasoningPolicyTestWorkflowResponse", name: "StartAutomatedReasoningPolicyTestWorkflowResponse")
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#Status", name: "Status")
    StatusDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#StatusDetails", name: "StatusDetails")
    StopEvaluationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#StopEvaluationJobRequest", name: "StopEvaluationJobRequest")
    StopEvaluationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#StopEvaluationJobResponse", name: "StopEvaluationJobResponse")
    StopModelCustomizationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#StopModelCustomizationJobRequest", name: "StopModelCustomizationJobRequest")
    StopModelCustomizationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#StopModelCustomizationJobResponse", name: "StopModelCustomizationJobResponse")
    StopModelInvocationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#StopModelInvocationJobRequest", name: "StopModelInvocationJobRequest")
    StopModelInvocationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#StopModelInvocationJobResponse", name: "StopModelInvocationJobResponse")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"max" => 32}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+$"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#SubnetIds", name: "SubnetIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    SupportTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#SupportTerm", name: "SupportTerm")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    TaggableResourcesArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#TaggableResourcesArn", name: "TaggableResourcesArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "(^[a-zA-Z0-9][a-zA-Z0-9\\-]*$)|(^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:custom-model/(imported)/[a-z0-9]{12}$)|(^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:([0-9]{12}|)((:(fine-tuning-job|model-customization-job|custom-model)/[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([a-z0-9-]{1,63}[.]){0,2}[a-z0-9-]{1,63}([:][a-z0-9-]{1,63}){0,2}(/[a-z0-9]{12})$)|(:guardrail/[a-z0-9]+$)|(:automated-reasoning-policy/[a-zA-Z0-9]+(:[a-zA-Z0-9]+)?$)|(:(inference-profile|application-inference-profile)/[a-zA-Z0-9-:.]+$)|(:(provisioned-model|model-invocation-job|model-evaluation-job|evaluation-job|model-import-job|imported-model|async-invoke|provisioned-model-v2|provisioned-model-reservation|prompt-router|custom-model-deployment)/[a-z0-9]{12}$)))"})
    TeacherModelConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#TeacherModelConfig", name: "TeacherModelConfig")
    TeacherModelIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#TeacherModelIdentifier", name: "TeacherModelIdentifier", traits: {"smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:((:foundation-model/([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.]?[a-z0-9-]{1,63})([:][a-z0-9-]{1,63}){0,2})|(([0-9a-zA-Z][_-]?)+)$)|([0-9]{12}:inference-profile/[a-zA-Z0-9-:.]+$)))|([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.]?[a-z0-9-]{1,63})([:][a-z0-9-]{1,63}){0,2})$"})
    Temperature = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.bedrock#Temperature", name: "Temperature", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    TermDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#TermDetails", name: "TermDetails")
    TextInferenceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#TextInferenceConfig", name: "TextInferenceConfig")
    TextPromptTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#TextPromptTemplate", name: "TextPromptTemplate", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}, "smithy.api#sensitive" => {}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.bedrock#Timestamp", name: "Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TopP = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.bedrock#TopP", name: "TopP", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    TrainingDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#TrainingDataConfig", name: "TrainingDataConfig")
    TrainingDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#TrainingDetails", name: "TrainingDetails")
    TrainingMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#TrainingMetrics", name: "TrainingMetrics")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAutomatedReasoningPolicyAnnotationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#UpdateAutomatedReasoningPolicyAnnotationsRequest", name: "UpdateAutomatedReasoningPolicyAnnotationsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    UpdateAutomatedReasoningPolicyAnnotationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#UpdateAutomatedReasoningPolicyAnnotationsResponse", name: "UpdateAutomatedReasoningPolicyAnnotationsResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrock#AutomatedReasoningPolicyResource"}]})
    UpdateAutomatedReasoningPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#UpdateAutomatedReasoningPolicyRequest", name: "UpdateAutomatedReasoningPolicyRequest")
    UpdateAutomatedReasoningPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#UpdateAutomatedReasoningPolicyResponse", name: "UpdateAutomatedReasoningPolicyResponse")
    UpdateAutomatedReasoningPolicyTestCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#UpdateAutomatedReasoningPolicyTestCaseRequest", name: "UpdateAutomatedReasoningPolicyTestCaseRequest")
    UpdateAutomatedReasoningPolicyTestCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#UpdateAutomatedReasoningPolicyTestCaseResponse", name: "UpdateAutomatedReasoningPolicyTestCaseResponse")
    UpdateGuardrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#UpdateGuardrailRequest", name: "UpdateGuardrailRequest")
    UpdateGuardrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#UpdateGuardrailResponse", name: "UpdateGuardrailResponse")
    UpdateMarketplaceModelEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#UpdateMarketplaceModelEndpointRequest", name: "UpdateMarketplaceModelEndpointRequest")
    UpdateMarketplaceModelEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#UpdateMarketplaceModelEndpointResponse", name: "UpdateMarketplaceModelEndpointResponse")
    UpdateProvisionedModelThroughputRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#UpdateProvisionedModelThroughputRequest", name: "UpdateProvisionedModelThroughputRequest")
    UpdateProvisionedModelThroughputResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#UpdateProvisionedModelThroughputResponse", name: "UpdateProvisionedModelThroughputResponse")
    UsePromptResponse = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.bedrock#UsePromptResponse", name: "UsePromptResponse", traits: {"smithy.api#default" => false})
    ValidationDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ValidationDataConfig", name: "ValidationDataConfig")
    ValidationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ValidationDetails", name: "ValidationDetails")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#ValidationMetrics", name: "ValidationMetrics")
    Validator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#Validator", name: "Validator")
    ValidatorMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ValidatorMetric", name: "ValidatorMetric")
    Validators = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrock#Validators", name: "Validators", traits: {"smithy.api#length" => {"max" => 10}})
    ValidityTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#ValidityTerm", name: "ValidityTerm")
    VectorSearchBedrockRerankingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#VectorSearchBedrockRerankingConfiguration", name: "VectorSearchBedrockRerankingConfiguration")
    VectorSearchBedrockRerankingModelConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#VectorSearchBedrockRerankingModelConfiguration", name: "VectorSearchBedrockRerankingModelConfiguration")
    VectorSearchRerankingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#VectorSearchRerankingConfiguration", name: "VectorSearchRerankingConfiguration")
    VectorSearchRerankingConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrock#VectorSearchRerankingConfigurationType", name: "VectorSearchRerankingConfigurationType")
    VpcConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrock#VpcConfig", name: "VpcConfig")
    KBS3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrock#kBS3Uri", name: "KBS3Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]/.{1,1024}$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AdditionalModelRequestFields.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalModelRequestFieldsKey)
    AdditionalModelRequestFields.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalModelRequestFieldsValue)
    AgreementAvailability.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    AgreementAvailability.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "errorMessage"))
    AgreementAvailability.type = Types::AgreementAvailability
    AgreementStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    AgreementStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    AgreementStatus.add_member(:not_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_AVAILABLE", traits: {"smithy.api#enumValue" => "NOT_AVAILABLE"}))
    AgreementStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    ApplicationType.add_member(:model_evaluation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MODEL_EVALUATION", traits: {"smithy.api#enumValue" => "ModelEvaluation"}))
    ApplicationType.add_member(:rag_evaluation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RAG_EVALUATION", traits: {"smithy.api#enumValue" => "RagEvaluation"}))
    AttributeType.add_member(:string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    AttributeType.add_member(:number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NUMBER", traits: {"smithy.api#enumValue" => "NUMBER"}))
    AttributeType.add_member(:boolean, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BOOLEAN", traits: {"smithy.api#enumValue" => "BOOLEAN"}))
    AttributeType.add_member(:string_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STRING_LIST", traits: {"smithy.api#enumValue" => "STRING_LIST"}))
    AuthorizationStatus.add_member(:authorized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTHORIZED", traits: {"smithy.api#enumValue" => "AUTHORIZED"}))
    AuthorizationStatus.add_member(:not_authorized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_AUTHORIZED", traits: {"smithy.api#enumValue" => "NOT_AUTHORIZED"}))
    AutomatedEvaluationConfig.add_member(:dataset_metric_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationDatasetMetricConfigs, location_name: "datasetMetricConfigs", traits: {"smithy.api#required" => {}}))
    AutomatedEvaluationConfig.add_member(:evaluator_model_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluatorModelConfig, location_name: "evaluatorModelConfig"))
    AutomatedEvaluationConfig.add_member(:custom_metric_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedEvaluationCustomMetricConfig, location_name: "customMetricConfig"))
    AutomatedEvaluationConfig.type = Types::AutomatedEvaluationConfig
    AutomatedEvaluationCustomMetricConfig.add_member(:custom_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedEvaluationCustomMetrics, location_name: "customMetrics", traits: {"smithy.api#required" => {}}))
    AutomatedEvaluationCustomMetricConfig.add_member(:evaluator_model_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMetricEvaluatorModelConfig, location_name: "evaluatorModelConfig", traits: {"smithy.api#required" => {}}))
    AutomatedEvaluationCustomMetricConfig.type = Types::AutomatedEvaluationCustomMetricConfig
    AutomatedEvaluationCustomMetricSource.add_member(:custom_metric_definition, Types::AutomatedEvaluationCustomMetricSource::CustomMetricDefinition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMetricDefinition, location_name: "customMetricDefinition"))
    AutomatedEvaluationCustomMetricSource.add_member(:unknown, Types::AutomatedEvaluationCustomMetricSource::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AutomatedEvaluationCustomMetricSource.type = Types::AutomatedEvaluationCustomMetricSource
    AutomatedEvaluationCustomMetrics.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedEvaluationCustomMetricSource)
    AutomatedReasoningCheckDifferenceScenarioList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckScenario)
    AutomatedReasoningCheckFinding.add_member(:valid, Types::AutomatedReasoningCheckFinding::Valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckValidFinding, location_name: "valid"))
    AutomatedReasoningCheckFinding.add_member(:invalid, Types::AutomatedReasoningCheckFinding::Invalid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckInvalidFinding, location_name: "invalid"))
    AutomatedReasoningCheckFinding.add_member(:satisfiable, Types::AutomatedReasoningCheckFinding::Satisfiable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckSatisfiableFinding, location_name: "satisfiable"))
    AutomatedReasoningCheckFinding.add_member(:impossible, Types::AutomatedReasoningCheckFinding::Impossible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckImpossibleFinding, location_name: "impossible"))
    AutomatedReasoningCheckFinding.add_member(:translation_ambiguous, Types::AutomatedReasoningCheckFinding::TranslationAmbiguous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationAmbiguousFinding, location_name: "translationAmbiguous"))
    AutomatedReasoningCheckFinding.add_member(:too_complex, Types::AutomatedReasoningCheckFinding::TooComplex, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTooComplexFinding, location_name: "tooComplex"))
    AutomatedReasoningCheckFinding.add_member(:no_translations, Types::AutomatedReasoningCheckFinding::NoTranslations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckNoTranslationsFinding, location_name: "noTranslations"))
    AutomatedReasoningCheckFinding.add_member(:unknown, Types::AutomatedReasoningCheckFinding::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AutomatedReasoningCheckFinding.type = Types::AutomatedReasoningCheckFinding
    AutomatedReasoningCheckFindingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckFinding)
    AutomatedReasoningCheckImpossibleFinding.add_member(:translation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslation, location_name: "translation"))
    AutomatedReasoningCheckImpossibleFinding.add_member(:contradicting_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckRuleList, location_name: "contradictingRules"))
    AutomatedReasoningCheckImpossibleFinding.add_member(:logic_warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckLogicWarning, location_name: "logicWarning"))
    AutomatedReasoningCheckImpossibleFinding.type = Types::AutomatedReasoningCheckImpossibleFinding
    AutomatedReasoningCheckInputTextReference.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningNaturalLanguageStatementContent, location_name: "text"))
    AutomatedReasoningCheckInputTextReference.type = Types::AutomatedReasoningCheckInputTextReference
    AutomatedReasoningCheckInputTextReferenceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckInputTextReference)
    AutomatedReasoningCheckInvalidFinding.add_member(:translation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslation, location_name: "translation"))
    AutomatedReasoningCheckInvalidFinding.add_member(:contradicting_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckRuleList, location_name: "contradictingRules"))
    AutomatedReasoningCheckInvalidFinding.add_member(:logic_warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckLogicWarning, location_name: "logicWarning"))
    AutomatedReasoningCheckInvalidFinding.type = Types::AutomatedReasoningCheckInvalidFinding
    AutomatedReasoningCheckLogicWarning.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckLogicWarningType, location_name: "type"))
    AutomatedReasoningCheckLogicWarning.add_member(:premises, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningLogicStatementList, location_name: "premises"))
    AutomatedReasoningCheckLogicWarning.add_member(:claims, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningLogicStatementList, location_name: "claims"))
    AutomatedReasoningCheckLogicWarning.type = Types::AutomatedReasoningCheckLogicWarning
    AutomatedReasoningCheckLogicWarningType.add_member(:always_true, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALWAYS_TRUE", traits: {"smithy.api#enumValue" => "ALWAYS_TRUE"}))
    AutomatedReasoningCheckLogicWarningType.add_member(:always_false, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALWAYS_FALSE", traits: {"smithy.api#enumValue" => "ALWAYS_FALSE"}))
    AutomatedReasoningCheckNoTranslationsFinding.type = Types::AutomatedReasoningCheckNoTranslationsFinding
    AutomatedReasoningCheckResult.add_member(:valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALID", traits: {"smithy.api#enumValue" => "VALID"}))
    AutomatedReasoningCheckResult.add_member(:invalid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID", traits: {"smithy.api#enumValue" => "INVALID"}))
    AutomatedReasoningCheckResult.add_member(:satisfiable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SATISFIABLE", traits: {"smithy.api#enumValue" => "SATISFIABLE"}))
    AutomatedReasoningCheckResult.add_member(:impossible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPOSSIBLE", traits: {"smithy.api#enumValue" => "IMPOSSIBLE"}))
    AutomatedReasoningCheckResult.add_member(:translation_ambiguous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSLATION_AMBIGUOUS", traits: {"smithy.api#enumValue" => "TRANSLATION_AMBIGUOUS"}))
    AutomatedReasoningCheckResult.add_member(:too_complex, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TOO_COMPLEX", traits: {"smithy.api#enumValue" => "TOO_COMPLEX"}))
    AutomatedReasoningCheckResult.add_member(:no_translation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_TRANSLATION", traits: {"smithy.api#enumValue" => "NO_TRANSLATION"}))
    AutomatedReasoningCheckRule.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId, location_name: "id"))
    AutomatedReasoningCheckRule.add_member(:policy_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyVersionArn"))
    AutomatedReasoningCheckRule.type = Types::AutomatedReasoningCheckRule
    AutomatedReasoningCheckRuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckRule)
    AutomatedReasoningCheckSatisfiableFinding.add_member(:translation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslation, location_name: "translation"))
    AutomatedReasoningCheckSatisfiableFinding.add_member(:claims_true_scenario, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckScenario, location_name: "claimsTrueScenario"))
    AutomatedReasoningCheckSatisfiableFinding.add_member(:claims_false_scenario, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckScenario, location_name: "claimsFalseScenario"))
    AutomatedReasoningCheckSatisfiableFinding.add_member(:logic_warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckLogicWarning, location_name: "logicWarning"))
    AutomatedReasoningCheckSatisfiableFinding.type = Types::AutomatedReasoningCheckSatisfiableFinding
    AutomatedReasoningCheckScenario.add_member(:statements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningLogicStatementList, location_name: "statements"))
    AutomatedReasoningCheckScenario.type = Types::AutomatedReasoningCheckScenario
    AutomatedReasoningCheckTooComplexFinding.type = Types::AutomatedReasoningCheckTooComplexFinding
    AutomatedReasoningCheckTranslation.add_member(:premises, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningLogicStatementList, location_name: "premises"))
    AutomatedReasoningCheckTranslation.add_member(:claims, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningLogicStatementList, location_name: "claims", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningCheckTranslation.add_member(:untranslated_premises, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckInputTextReferenceList, location_name: "untranslatedPremises"))
    AutomatedReasoningCheckTranslation.add_member(:untranslated_claims, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckInputTextReferenceList, location_name: "untranslatedClaims"))
    AutomatedReasoningCheckTranslation.add_member(:confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationConfidence, location_name: "confidence", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningCheckTranslation.type = Types::AutomatedReasoningCheckTranslation
    AutomatedReasoningCheckTranslationAmbiguousFinding.add_member(:options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationOptionList, location_name: "options"))
    AutomatedReasoningCheckTranslationAmbiguousFinding.add_member(:difference_scenarios, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckDifferenceScenarioList, location_name: "differenceScenarios"))
    AutomatedReasoningCheckTranslationAmbiguousFinding.type = Types::AutomatedReasoningCheckTranslationAmbiguousFinding
    AutomatedReasoningCheckTranslationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslation)
    AutomatedReasoningCheckTranslationOption.add_member(:translations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationList, location_name: "translations"))
    AutomatedReasoningCheckTranslationOption.type = Types::AutomatedReasoningCheckTranslationOption
    AutomatedReasoningCheckTranslationOptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationOption)
    AutomatedReasoningCheckValidFinding.add_member(:translation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslation, location_name: "translation"))
    AutomatedReasoningCheckValidFinding.add_member(:claims_true_scenario, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckScenario, location_name: "claimsTrueScenario"))
    AutomatedReasoningCheckValidFinding.add_member(:supporting_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckRuleList, location_name: "supportingRules"))
    AutomatedReasoningCheckValidFinding.add_member(:logic_warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckLogicWarning, location_name: "logicWarning"))
    AutomatedReasoningCheckValidFinding.type = Types::AutomatedReasoningCheckValidFinding
    AutomatedReasoningLogicStatement.add_member(:logic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningLogicStatementContent, location_name: "logic", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningLogicStatement.add_member(:natural_language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningNaturalLanguageStatementContent, location_name: "naturalLanguage"))
    AutomatedReasoningLogicStatement.type = Types::AutomatedReasoningLogicStatement
    AutomatedReasoningLogicStatementList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningLogicStatement)
    AutomatedReasoningPolicyAddRuleAnnotation.add_member(:expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleExpression, location_name: "expression", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyAddRuleAnnotation.type = Types::AutomatedReasoningPolicyAddRuleAnnotation
    AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation.add_member(:natural_language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationRuleNaturalLanguage, location_name: "naturalLanguage", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation.type = Types::AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation
    AutomatedReasoningPolicyAddRuleMutation.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRule, location_name: "rule", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyAddRuleMutation.type = Types::AutomatedReasoningPolicyAddRuleMutation
    AutomatedReasoningPolicyAddTypeAnnotation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, location_name: "name", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyAddTypeAnnotation.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeDescription, location_name: "description", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyAddTypeAnnotation.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueList, location_name: "values", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyAddTypeAnnotation.type = Types::AutomatedReasoningPolicyAddTypeAnnotation
    AutomatedReasoningPolicyAddTypeMutation.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionType, location_name: "type", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyAddTypeMutation.type = Types::AutomatedReasoningPolicyAddTypeMutation
    AutomatedReasoningPolicyAddTypeValue.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueName, location_name: "value", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyAddTypeValue.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueDescription, location_name: "description"))
    AutomatedReasoningPolicyAddTypeValue.type = Types::AutomatedReasoningPolicyAddTypeValue
    AutomatedReasoningPolicyAddVariableAnnotation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableName, location_name: "name", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyAddVariableAnnotation.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, location_name: "type", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyAddVariableAnnotation.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableDescription, location_name: "description", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyAddVariableAnnotation.type = Types::AutomatedReasoningPolicyAddVariableAnnotation
    AutomatedReasoningPolicyAddVariableMutation.add_member(:variable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariable, location_name: "variable", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyAddVariableMutation.type = Types::AutomatedReasoningPolicyAddVariableMutation
    AutomatedReasoningPolicyAnnotation.add_member(:add_type, Types::AutomatedReasoningPolicyAnnotation::AddType, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddTypeAnnotation, location_name: "addType"))
    AutomatedReasoningPolicyAnnotation.add_member(:update_type, Types::AutomatedReasoningPolicyAnnotation::UpdateType, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateTypeAnnotation, location_name: "updateType"))
    AutomatedReasoningPolicyAnnotation.add_member(:delete_type, Types::AutomatedReasoningPolicyAnnotation::DeleteType, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDeleteTypeAnnotation, location_name: "deleteType"))
    AutomatedReasoningPolicyAnnotation.add_member(:add_variable, Types::AutomatedReasoningPolicyAnnotation::AddVariable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddVariableAnnotation, location_name: "addVariable"))
    AutomatedReasoningPolicyAnnotation.add_member(:update_variable, Types::AutomatedReasoningPolicyAnnotation::UpdateVariable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateVariableAnnotation, location_name: "updateVariable"))
    AutomatedReasoningPolicyAnnotation.add_member(:delete_variable, Types::AutomatedReasoningPolicyAnnotation::DeleteVariable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDeleteVariableAnnotation, location_name: "deleteVariable"))
    AutomatedReasoningPolicyAnnotation.add_member(:add_rule, Types::AutomatedReasoningPolicyAnnotation::AddRule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddRuleAnnotation, location_name: "addRule"))
    AutomatedReasoningPolicyAnnotation.add_member(:update_rule, Types::AutomatedReasoningPolicyAnnotation::UpdateRule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateRuleAnnotation, location_name: "updateRule"))
    AutomatedReasoningPolicyAnnotation.add_member(:delete_rule, Types::AutomatedReasoningPolicyAnnotation::DeleteRule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDeleteRuleAnnotation, location_name: "deleteRule"))
    AutomatedReasoningPolicyAnnotation.add_member(:add_rule_from_natural_language, Types::AutomatedReasoningPolicyAnnotation::AddRuleFromNaturalLanguage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation, location_name: "addRuleFromNaturalLanguage"))
    AutomatedReasoningPolicyAnnotation.add_member(:update_from_rules_feedback, Types::AutomatedReasoningPolicyAnnotation::UpdateFromRulesFeedback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation, location_name: "updateFromRulesFeedback"))
    AutomatedReasoningPolicyAnnotation.add_member(:update_from_scenario_feedback, Types::AutomatedReasoningPolicyAnnotation::UpdateFromScenarioFeedback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation, location_name: "updateFromScenarioFeedback"))
    AutomatedReasoningPolicyAnnotation.add_member(:ingest_content, Types::AutomatedReasoningPolicyAnnotation::IngestContent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyIngestContentAnnotation, location_name: "ingestContent"))
    AutomatedReasoningPolicyAnnotation.add_member(:unknown, Types::AutomatedReasoningPolicyAnnotation::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AutomatedReasoningPolicyAnnotation.type = Types::AutomatedReasoningPolicyAnnotation
    AutomatedReasoningPolicyAnnotationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotation)
    AutomatedReasoningPolicyAnnotationStatus.add_member(:applied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPLIED", traits: {"smithy.api#enumValue" => "APPLIED"}))
    AutomatedReasoningPolicyAnnotationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AutomatedReasoningPolicyArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn)
    AutomatedReasoningPolicyBuildDocumentContentType.add_member(:pdf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PDF", traits: {"smithy.api#enumValue" => "pdf"}))
    AutomatedReasoningPolicyBuildDocumentContentType.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEXT", traits: {"smithy.api#enumValue" => "txt"}))
    AutomatedReasoningPolicyBuildLog.add_member(:entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildLogEntryList, location_name: "entries", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildLog.type = Types::AutomatedReasoningPolicyBuildLog
    AutomatedReasoningPolicyBuildLogEntry.add_member(:annotation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotation, location_name: "annotation", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildLogEntry.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildLogEntry.add_member(:build_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildStepList, location_name: "buildSteps", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildLogEntry.type = Types::AutomatedReasoningPolicyBuildLogEntry
    AutomatedReasoningPolicyBuildLogEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildLogEntry)
    AutomatedReasoningPolicyBuildMessageType.add_member(:info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    AutomatedReasoningPolicyBuildMessageType.add_member(:warning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WARNING", traits: {"smithy.api#enumValue" => "WARNING"}))
    AutomatedReasoningPolicyBuildMessageType.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    AutomatedReasoningPolicyBuildResultAssetType.add_member(:build_log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD_LOG", traits: {"smithy.api#enumValue" => "BUILD_LOG"}))
    AutomatedReasoningPolicyBuildResultAssetType.add_member(:quality_report, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUALITY_REPORT", traits: {"smithy.api#enumValue" => "QUALITY_REPORT"}))
    AutomatedReasoningPolicyBuildResultAssetType.add_member(:policy_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POLICY_DEFINITION", traits: {"smithy.api#enumValue" => "POLICY_DEFINITION"}))
    AutomatedReasoningPolicyBuildResultAssets.add_member(:policy_definition, Types::AutomatedReasoningPolicyBuildResultAssets::PolicyDefinition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinition, location_name: "policyDefinition"))
    AutomatedReasoningPolicyBuildResultAssets.add_member(:quality_report, Types::AutomatedReasoningPolicyBuildResultAssets::QualityReport, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionQualityReport, location_name: "qualityReport"))
    AutomatedReasoningPolicyBuildResultAssets.add_member(:build_log, Types::AutomatedReasoningPolicyBuildResultAssets::BuildLog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildLog, location_name: "buildLog"))
    AutomatedReasoningPolicyBuildResultAssets.add_member(:unknown, Types::AutomatedReasoningPolicyBuildResultAssets::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AutomatedReasoningPolicyBuildResultAssets.type = Types::AutomatedReasoningPolicyBuildResultAssets
    AutomatedReasoningPolicyBuildStep.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildStepContext, location_name: "context", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildStep.add_member(:prior_element, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionElement, location_name: "priorElement"))
    AutomatedReasoningPolicyBuildStep.add_member(:messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildStepMessageList, location_name: "messages", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildStep.type = Types::AutomatedReasoningPolicyBuildStep
    AutomatedReasoningPolicyBuildStepContext.add_member(:planning, Types::AutomatedReasoningPolicyBuildStepContext::Planning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyPlanning, location_name: "planning"))
    AutomatedReasoningPolicyBuildStepContext.add_member(:mutation, Types::AutomatedReasoningPolicyBuildStepContext::Mutation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyMutation, location_name: "mutation"))
    AutomatedReasoningPolicyBuildStepContext.add_member(:unknown, Types::AutomatedReasoningPolicyBuildStepContext::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AutomatedReasoningPolicyBuildStepContext.type = Types::AutomatedReasoningPolicyBuildStepContext
    AutomatedReasoningPolicyBuildStepList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildStep)
    AutomatedReasoningPolicyBuildStepMessage.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildStepMessage.add_member(:message_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildMessageType, location_name: "messageType", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildStepMessage.type = Types::AutomatedReasoningPolicyBuildStepMessage
    AutomatedReasoningPolicyBuildStepMessageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildStepMessage)
    AutomatedReasoningPolicyBuildWorkflowDocument.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildDocumentBlob, location_name: "document", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildWorkflowDocument.add_member(:document_content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildDocumentContentType, location_name: "documentContentType", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildWorkflowDocument.add_member(:document_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildDocumentName, location_name: "documentName", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildWorkflowDocument.add_member(:document_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildDocumentDescription, location_name: "documentDescription"))
    AutomatedReasoningPolicyBuildWorkflowDocument.type = Types::AutomatedReasoningPolicyBuildWorkflowDocument
    AutomatedReasoningPolicyBuildWorkflowDocumentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowDocument)
    AutomatedReasoningPolicyBuildWorkflowRepairContent.add_member(:annotations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationList, location_name: "annotations", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildWorkflowRepairContent.type = Types::AutomatedReasoningPolicyBuildWorkflowRepairContent
    AutomatedReasoningPolicyBuildWorkflowSource.add_member(:policy_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinition, location_name: "policyDefinition"))
    AutomatedReasoningPolicyBuildWorkflowSource.add_member(:workflow_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyWorkflowTypeContent, location_name: "workflowContent"))
    AutomatedReasoningPolicyBuildWorkflowSource.type = Types::AutomatedReasoningPolicyBuildWorkflowSource
    AutomatedReasoningPolicyBuildWorkflowStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    AutomatedReasoningPolicyBuildWorkflowStatus.add_member(:cancel_requested, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCEL_REQUESTED", traits: {"smithy.api#enumValue" => "CANCEL_REQUESTED"}))
    AutomatedReasoningPolicyBuildWorkflowStatus.add_member(:preprocessing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PREPROCESSING", traits: {"smithy.api#enumValue" => "PREPROCESSING"}))
    AutomatedReasoningPolicyBuildWorkflowStatus.add_member(:building, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILDING", traits: {"smithy.api#enumValue" => "BUILDING"}))
    AutomatedReasoningPolicyBuildWorkflowStatus.add_member(:testing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TESTING", traits: {"smithy.api#enumValue" => "TESTING"}))
    AutomatedReasoningPolicyBuildWorkflowStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    AutomatedReasoningPolicyBuildWorkflowStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AutomatedReasoningPolicyBuildWorkflowStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    AutomatedReasoningPolicyBuildWorkflowSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowSummary)
    AutomatedReasoningPolicyBuildWorkflowSummary.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildWorkflowSummary.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildWorkflowSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildWorkflowSummary.add_member(:build_workflow_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowType, location_name: "buildWorkflowType", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildWorkflowSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildWorkflowSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyBuildWorkflowSummary.type = Types::AutomatedReasoningPolicyBuildWorkflowSummary
    AutomatedReasoningPolicyBuildWorkflowType.add_member(:ingest_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INGEST_CONTENT", traits: {"smithy.api#enumValue" => "INGEST_CONTENT"}))
    AutomatedReasoningPolicyBuildWorkflowType.add_member(:refine_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REFINE_POLICY", traits: {"smithy.api#enumValue" => "REFINE_POLICY"}))
    AutomatedReasoningPolicyBuildWorkflowType.add_member(:import_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT_POLICY", traits: {"smithy.api#enumValue" => "IMPORT_POLICY"}))
    AutomatedReasoningPolicyConflictedRuleIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId)
    AutomatedReasoningPolicyDefinition.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyFormatVersion, location_name: "version", traits: {"smithy.api#default" => "1"}))
    AutomatedReasoningPolicyDefinition.add_member(:types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeList, location_name: "types"))
    AutomatedReasoningPolicyDefinition.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleList, location_name: "rules"))
    AutomatedReasoningPolicyDefinition.add_member(:variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableList, location_name: "variables"))
    AutomatedReasoningPolicyDefinition.type = Types::AutomatedReasoningPolicyDefinition
    AutomatedReasoningPolicyDefinitionElement.add_member(:policy_definition_variable, Types::AutomatedReasoningPolicyDefinitionElement::PolicyDefinitionVariable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariable, location_name: "policyDefinitionVariable"))
    AutomatedReasoningPolicyDefinitionElement.add_member(:policy_definition_type, Types::AutomatedReasoningPolicyDefinitionElement::PolicyDefinitionType, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionType, location_name: "policyDefinitionType"))
    AutomatedReasoningPolicyDefinitionElement.add_member(:policy_definition_rule, Types::AutomatedReasoningPolicyDefinitionElement::PolicyDefinitionRule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRule, location_name: "policyDefinitionRule"))
    AutomatedReasoningPolicyDefinitionElement.add_member(:unknown, Types::AutomatedReasoningPolicyDefinitionElement::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AutomatedReasoningPolicyDefinitionElement.type = Types::AutomatedReasoningPolicyDefinitionElement
    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:type_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "typeCount", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:variable_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "variableCount", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:rule_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "ruleCount", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:unused_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeNameList, location_name: "unusedTypes", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:unused_type_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValuePairList, location_name: "unusedTypeValues", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:unused_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableNameList, location_name: "unusedVariables", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:conflicting_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyConflictedRuleIdList, location_name: "conflictingRules", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:disjoint_rule_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDisjointRuleSetList, location_name: "disjointRuleSets", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionQualityReport.type = Types::AutomatedReasoningPolicyDefinitionQualityReport
    AutomatedReasoningPolicyDefinitionRule.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId, location_name: "id", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionRule.add_member(:expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleExpression, location_name: "expression", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionRule.add_member(:alternate_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleAlternateExpression, location_name: "alternateExpression"))
    AutomatedReasoningPolicyDefinitionRule.type = Types::AutomatedReasoningPolicyDefinitionRule
    AutomatedReasoningPolicyDefinitionRuleIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId)
    AutomatedReasoningPolicyDefinitionRuleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRule)
    AutomatedReasoningPolicyDefinitionType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, location_name: "name", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionType.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeDescription, location_name: "description"))
    AutomatedReasoningPolicyDefinitionType.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueList, location_name: "values", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionType.type = Types::AutomatedReasoningPolicyDefinitionType
    AutomatedReasoningPolicyDefinitionTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionType)
    AutomatedReasoningPolicyDefinitionTypeNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName)
    AutomatedReasoningPolicyDefinitionTypeValue.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueName, location_name: "value", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionTypeValue.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueDescription, location_name: "description"))
    AutomatedReasoningPolicyDefinitionTypeValue.type = Types::AutomatedReasoningPolicyDefinitionTypeValue
    AutomatedReasoningPolicyDefinitionTypeValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValue)
    AutomatedReasoningPolicyDefinitionTypeValuePair.add_member(:type_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, location_name: "typeName", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionTypeValuePair.add_member(:value_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueName, location_name: "valueName", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionTypeValuePair.type = Types::AutomatedReasoningPolicyDefinitionTypeValuePair
    AutomatedReasoningPolicyDefinitionTypeValuePairList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValuePair)
    AutomatedReasoningPolicyDefinitionVariable.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableName, location_name: "name", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionVariable.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, location_name: "type", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionVariable.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableDescription, location_name: "description", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDefinitionVariable.type = Types::AutomatedReasoningPolicyDefinitionVariable
    AutomatedReasoningPolicyDefinitionVariableList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariable)
    AutomatedReasoningPolicyDefinitionVariableNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableName)
    AutomatedReasoningPolicyDeleteRuleAnnotation.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId, location_name: "ruleId", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDeleteRuleAnnotation.type = Types::AutomatedReasoningPolicyDeleteRuleAnnotation
    AutomatedReasoningPolicyDeleteRuleMutation.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId, location_name: "id", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDeleteRuleMutation.type = Types::AutomatedReasoningPolicyDeleteRuleMutation
    AutomatedReasoningPolicyDeleteTypeAnnotation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, location_name: "name", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDeleteTypeAnnotation.type = Types::AutomatedReasoningPolicyDeleteTypeAnnotation
    AutomatedReasoningPolicyDeleteTypeMutation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, location_name: "name", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDeleteTypeMutation.type = Types::AutomatedReasoningPolicyDeleteTypeMutation
    AutomatedReasoningPolicyDeleteTypeValue.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueName, location_name: "value", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDeleteTypeValue.type = Types::AutomatedReasoningPolicyDeleteTypeValue
    AutomatedReasoningPolicyDeleteVariableAnnotation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableName, location_name: "name", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDeleteVariableAnnotation.type = Types::AutomatedReasoningPolicyDeleteVariableAnnotation
    AutomatedReasoningPolicyDeleteVariableMutation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableName, location_name: "name", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDeleteVariableMutation.type = Types::AutomatedReasoningPolicyDeleteVariableMutation
    AutomatedReasoningPolicyDisjointRuleSet.add_member(:variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableNameList, location_name: "variables", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDisjointRuleSet.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDisjointedRuleIdList, location_name: "rules", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyDisjointRuleSet.type = Types::AutomatedReasoningPolicyDisjointRuleSet
    AutomatedReasoningPolicyDisjointRuleSetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDisjointRuleSet)
    AutomatedReasoningPolicyDisjointedRuleIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId)
    AutomatedReasoningPolicyIngestContentAnnotation.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationIngestContent, location_name: "content", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyIngestContentAnnotation.type = Types::AutomatedReasoningPolicyIngestContentAnnotation
    AutomatedReasoningPolicyMutation.add_member(:add_type, Types::AutomatedReasoningPolicyMutation::AddType, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddTypeMutation, location_name: "addType"))
    AutomatedReasoningPolicyMutation.add_member(:update_type, Types::AutomatedReasoningPolicyMutation::UpdateType, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateTypeMutation, location_name: "updateType"))
    AutomatedReasoningPolicyMutation.add_member(:delete_type, Types::AutomatedReasoningPolicyMutation::DeleteType, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDeleteTypeMutation, location_name: "deleteType"))
    AutomatedReasoningPolicyMutation.add_member(:add_variable, Types::AutomatedReasoningPolicyMutation::AddVariable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddVariableMutation, location_name: "addVariable"))
    AutomatedReasoningPolicyMutation.add_member(:update_variable, Types::AutomatedReasoningPolicyMutation::UpdateVariable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateVariableMutation, location_name: "updateVariable"))
    AutomatedReasoningPolicyMutation.add_member(:delete_variable, Types::AutomatedReasoningPolicyMutation::DeleteVariable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDeleteVariableMutation, location_name: "deleteVariable"))
    AutomatedReasoningPolicyMutation.add_member(:add_rule, Types::AutomatedReasoningPolicyMutation::AddRule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddRuleMutation, location_name: "addRule"))
    AutomatedReasoningPolicyMutation.add_member(:update_rule, Types::AutomatedReasoningPolicyMutation::UpdateRule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateRuleMutation, location_name: "updateRule"))
    AutomatedReasoningPolicyMutation.add_member(:delete_rule, Types::AutomatedReasoningPolicyMutation::DeleteRule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDeleteRuleMutation, location_name: "deleteRule"))
    AutomatedReasoningPolicyMutation.add_member(:unknown, Types::AutomatedReasoningPolicyMutation::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AutomatedReasoningPolicyMutation.type = Types::AutomatedReasoningPolicyMutation
    AutomatedReasoningPolicyPlanning.type = Types::AutomatedReasoningPolicyPlanning
    AutomatedReasoningPolicyScenario.add_member(:expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyScenarioExpression, location_name: "expression", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyScenario.add_member(:alternate_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyScenarioAlternateExpression, location_name: "alternateExpression", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyScenario.add_member(:rule_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleIdList, location_name: "ruleIds", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyScenario.add_member(:expected_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckResult, location_name: "expectedResult", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyScenario.type = Types::AutomatedReasoningPolicyScenario
    AutomatedReasoningPolicySummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicySummary)
    AutomatedReasoningPolicySummary.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicySummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, location_name: "name", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicySummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDescription, location_name: "description"))
    AutomatedReasoningPolicySummary.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicySummary.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyId, location_name: "policyId", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicySummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicySummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicySummary.type = Types::AutomatedReasoningPolicySummary
    AutomatedReasoningPolicyTestCase.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId, location_name: "testCaseId", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyTestCase.add_member(:guard_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestGuardContent, location_name: "guardContent", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyTestCase.add_member(:query_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestQueryContent, location_name: "queryContent"))
    AutomatedReasoningPolicyTestCase.add_member(:expected_aggregated_findings_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckResult, location_name: "expectedAggregatedFindingsResult"))
    AutomatedReasoningPolicyTestCase.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyTestCase.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyTestCase.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationConfidence, location_name: "confidenceThreshold"))
    AutomatedReasoningPolicyTestCase.type = Types::AutomatedReasoningPolicyTestCase
    AutomatedReasoningPolicyTestCaseIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId)
    AutomatedReasoningPolicyTestCaseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCase)
    AutomatedReasoningPolicyTestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestResult)
    AutomatedReasoningPolicyTestResult.add_member(:test_case, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCase, location_name: "testCase", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyTestResult.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyTestResult.add_member(:test_run_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestRunStatus, location_name: "testRunStatus", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyTestResult.add_member(:test_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckFindingList, location_name: "testFindings"))
    AutomatedReasoningPolicyTestResult.add_member(:test_run_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestRunResult, location_name: "testRunResult"))
    AutomatedReasoningPolicyTestResult.add_member(:aggregated_test_findings_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckResult, location_name: "aggregatedTestFindingsResult"))
    AutomatedReasoningPolicyTestResult.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyTestResult.type = Types::AutomatedReasoningPolicyTestResult
    AutomatedReasoningPolicyTestRunResult.add_member(:passed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PASSED", traits: {"smithy.api#enumValue" => "PASSED"}))
    AutomatedReasoningPolicyTestRunResult.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AutomatedReasoningPolicyTestRunStatus.add_member(:not_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    AutomatedReasoningPolicyTestRunStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    AutomatedReasoningPolicyTestRunStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    AutomatedReasoningPolicyTestRunStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    AutomatedReasoningPolicyTestRunStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AutomatedReasoningPolicyTypeValueAnnotation.add_member(:add_type_value, Types::AutomatedReasoningPolicyTypeValueAnnotation::AddTypeValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddTypeValue, location_name: "addTypeValue"))
    AutomatedReasoningPolicyTypeValueAnnotation.add_member(:update_type_value, Types::AutomatedReasoningPolicyTypeValueAnnotation::UpdateTypeValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateTypeValue, location_name: "updateTypeValue"))
    AutomatedReasoningPolicyTypeValueAnnotation.add_member(:delete_type_value, Types::AutomatedReasoningPolicyTypeValueAnnotation::DeleteTypeValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDeleteTypeValue, location_name: "deleteTypeValue"))
    AutomatedReasoningPolicyTypeValueAnnotation.add_member(:unknown, Types::AutomatedReasoningPolicyTypeValueAnnotation::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AutomatedReasoningPolicyTypeValueAnnotation.type = Types::AutomatedReasoningPolicyTypeValueAnnotation
    AutomatedReasoningPolicyTypeValueAnnotationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTypeValueAnnotation)
    AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation.add_member(:rule_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleIdList, location_name: "ruleIds"))
    AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation.add_member(:feedback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage, location_name: "feedback", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation.type = Types::AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation
    AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation.add_member(:rule_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleIdList, location_name: "ruleIds"))
    AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation.add_member(:scenario_expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyScenarioExpression, location_name: "scenarioExpression", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation.add_member(:feedback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage, location_name: "feedback"))
    AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation.type = Types::AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation
    AutomatedReasoningPolicyUpdateRuleAnnotation.add_member(:rule_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId, location_name: "ruleId", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyUpdateRuleAnnotation.add_member(:expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleExpression, location_name: "expression", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyUpdateRuleAnnotation.type = Types::AutomatedReasoningPolicyUpdateRuleAnnotation
    AutomatedReasoningPolicyUpdateRuleMutation.add_member(:rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRule, location_name: "rule", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyUpdateRuleMutation.type = Types::AutomatedReasoningPolicyUpdateRuleMutation
    AutomatedReasoningPolicyUpdateTypeAnnotation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, location_name: "name", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyUpdateTypeAnnotation.add_member(:new_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, location_name: "newName"))
    AutomatedReasoningPolicyUpdateTypeAnnotation.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeDescription, location_name: "description"))
    AutomatedReasoningPolicyUpdateTypeAnnotation.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTypeValueAnnotationList, location_name: "values", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyUpdateTypeAnnotation.type = Types::AutomatedReasoningPolicyUpdateTypeAnnotation
    AutomatedReasoningPolicyUpdateTypeMutation.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionType, location_name: "type", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyUpdateTypeMutation.type = Types::AutomatedReasoningPolicyUpdateTypeMutation
    AutomatedReasoningPolicyUpdateTypeValue.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueName, location_name: "value", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyUpdateTypeValue.add_member(:new_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueName, location_name: "newValue"))
    AutomatedReasoningPolicyUpdateTypeValue.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueDescription, location_name: "description"))
    AutomatedReasoningPolicyUpdateTypeValue.type = Types::AutomatedReasoningPolicyUpdateTypeValue
    AutomatedReasoningPolicyUpdateVariableAnnotation.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableName, location_name: "name", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyUpdateVariableAnnotation.add_member(:new_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableName, location_name: "newName"))
    AutomatedReasoningPolicyUpdateVariableAnnotation.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableDescription, location_name: "description"))
    AutomatedReasoningPolicyUpdateVariableAnnotation.type = Types::AutomatedReasoningPolicyUpdateVariableAnnotation
    AutomatedReasoningPolicyUpdateVariableMutation.add_member(:variable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariable, location_name: "variable", traits: {"smithy.api#required" => {}}))
    AutomatedReasoningPolicyUpdateVariableMutation.type = Types::AutomatedReasoningPolicyUpdateVariableMutation
    AutomatedReasoningPolicyWorkflowTypeContent.add_member(:documents, Types::AutomatedReasoningPolicyWorkflowTypeContent::Documents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowDocumentList, location_name: "documents"))
    AutomatedReasoningPolicyWorkflowTypeContent.add_member(:policy_repair_assets, Types::AutomatedReasoningPolicyWorkflowTypeContent::PolicyRepairAssets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowRepairContent, location_name: "policyRepairAssets"))
    AutomatedReasoningPolicyWorkflowTypeContent.add_member(:unknown, Types::AutomatedReasoningPolicyWorkflowTypeContent::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AutomatedReasoningPolicyWorkflowTypeContent.type = Types::AutomatedReasoningPolicyWorkflowTypeContent
    BatchDeleteEvaluationJobError.add_member(:job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobIdentifier, location_name: "jobIdentifier", traits: {"smithy.api#required" => {}}))
    BatchDeleteEvaluationJobError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    BatchDeleteEvaluationJobError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    BatchDeleteEvaluationJobError.type = Types::BatchDeleteEvaluationJobError
    BatchDeleteEvaluationJobErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteEvaluationJobError)
    BatchDeleteEvaluationJobItem.add_member(:job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobIdentifier, location_name: "jobIdentifier", traits: {"smithy.api#required" => {}}))
    BatchDeleteEvaluationJobItem.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobStatus, location_name: "jobStatus", traits: {"smithy.api#required" => {}}))
    BatchDeleteEvaluationJobItem.type = Types::BatchDeleteEvaluationJobItem
    BatchDeleteEvaluationJobItems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteEvaluationJobItem)
    BatchDeleteEvaluationJobRequest.add_member(:job_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobIdentifiers, location_name: "jobIdentifiers", traits: {"smithy.api#required" => {}}))
    BatchDeleteEvaluationJobRequest.type = Types::BatchDeleteEvaluationJobRequest
    BatchDeleteEvaluationJobResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteEvaluationJobErrors, location_name: "errors", traits: {"smithy.api#required" => {}}))
    BatchDeleteEvaluationJobResponse.add_member(:evaluation_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteEvaluationJobItems, location_name: "evaluationJobs", traits: {"smithy.api#required" => {}}))
    BatchDeleteEvaluationJobResponse.type = Types::BatchDeleteEvaluationJobResponse
    BedrockEvaluatorModel.add_member(:model_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluatorModelIdentifier, location_name: "modelIdentifier", traits: {"smithy.api#required" => {}}))
    BedrockEvaluatorModel.type = Types::BedrockEvaluatorModel
    BedrockEvaluatorModels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockEvaluatorModel)
    ByteContentDoc.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "identifier", traits: {"smithy.api#required" => {}}))
    ByteContentDoc.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: "contentType", traits: {"smithy.api#required" => {}}))
    ByteContentDoc.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByteContentBlob, location_name: "data", traits: {"smithy.api#required" => {}}))
    ByteContentDoc.type = Types::ByteContentDoc
    CancelAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelAutomatedReasoningPolicyBuildWorkflowRequest.type = Types::CancelAutomatedReasoningPolicyBuildWorkflowRequest
    CancelAutomatedReasoningPolicyBuildWorkflowResponse.type = Types::CancelAutomatedReasoningPolicyBuildWorkflowResponse
    CloudWatchConfig.add_member(:log_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName", traits: {"smithy.api#required" => {}}))
    CloudWatchConfig.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    CloudWatchConfig.add_member(:large_data_delivery_s3_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Config, location_name: "largeDataDeliveryS3Config"))
    CloudWatchConfig.type = Types::CloudWatchConfig
    CommitmentDuration.add_member(:one_month, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONE_MONTH", traits: {"smithy.api#enumValue" => "OneMonth"}))
    CommitmentDuration.add_member(:six_months, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SIX_MONTHS", traits: {"smithy.api#enumValue" => "SixMonths"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.type = Types::ConflictException
    CreateAutomatedReasoningPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDescription, location_name: "description"))
    CreateAutomatedReasoningPolicyRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAutomatedReasoningPolicyRequest.add_member(:policy_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinition, location_name: "policyDefinition"))
    CreateAutomatedReasoningPolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateAutomatedReasoningPolicyRequest.type = Types::CreateAutomatedReasoningPolicyRequest
    CreateAutomatedReasoningPolicyResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDescription, location_name: "description"))
    CreateAutomatedReasoningPolicyResponse.add_member(:definition_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, location_name: "definitionHash"))
    CreateAutomatedReasoningPolicyResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyResponse.type = Types::CreateAutomatedReasoningPolicyResponse
    CreateAutomatedReasoningPolicyTestCaseRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyTestCaseRequest.add_member(:guard_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestGuardContent, location_name: "guardContent", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyTestCaseRequest.add_member(:query_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestQueryContent, location_name: "queryContent"))
    CreateAutomatedReasoningPolicyTestCaseRequest.add_member(:expected_aggregated_findings_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckResult, location_name: "expectedAggregatedFindingsResult", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyTestCaseRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAutomatedReasoningPolicyTestCaseRequest.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationConfidence, location_name: "confidenceThreshold"))
    CreateAutomatedReasoningPolicyTestCaseRequest.type = Types::CreateAutomatedReasoningPolicyTestCaseRequest
    CreateAutomatedReasoningPolicyTestCaseResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyTestCaseResponse.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId, location_name: "testCaseId", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyTestCaseResponse.type = Types::CreateAutomatedReasoningPolicyTestCaseResponse
    CreateAutomatedReasoningPolicyVersionRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyVersionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAutomatedReasoningPolicyVersionRequest.add_member(:last_updated_definition_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, location_name: "lastUpdatedDefinitionHash", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyVersionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateAutomatedReasoningPolicyVersionRequest.type = Types::CreateAutomatedReasoningPolicyVersionRequest
    CreateAutomatedReasoningPolicyVersionResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyVersionResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyVersionResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDescription, location_name: "description"))
    CreateAutomatedReasoningPolicyVersionResponse.add_member(:definition_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, location_name: "definitionHash", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyVersionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateAutomatedReasoningPolicyVersionResponse.type = Types::CreateAutomatedReasoningPolicyVersionResponse
    CreateCustomModelDeploymentRequest.add_member(:model_deployment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDeploymentName, location_name: "modelDeploymentName", traits: {"smithy.api#required" => {}}))
    CreateCustomModelDeploymentRequest.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelArn, location_name: "modelArn", traits: {"smithy.api#required" => {}}))
    CreateCustomModelDeploymentRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelDeploymentDescription, location_name: "description"))
    CreateCustomModelDeploymentRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateCustomModelDeploymentRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateCustomModelDeploymentRequest.type = Types::CreateCustomModelDeploymentRequest
    CreateCustomModelDeploymentResponse.add_member(:custom_model_deployment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelDeploymentArn, location_name: "customModelDeploymentArn", traits: {"smithy.api#required" => {}}))
    CreateCustomModelDeploymentResponse.type = Types::CreateCustomModelDeploymentResponse
    CreateCustomModelRequest.add_member(:model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelName, location_name: "modelName", traits: {"smithy.api#required" => {}}))
    CreateCustomModelRequest.add_member(:model_source_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDataSource, location_name: "modelSourceConfig", traits: {"smithy.api#required" => {}}))
    CreateCustomModelRequest.add_member(:model_kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "modelKmsKeyArn"))
    CreateCustomModelRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateCustomModelRequest.add_member(:model_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "modelTags"))
    CreateCustomModelRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateCustomModelRequest.type = Types::CreateCustomModelRequest
    CreateCustomModelResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "modelArn", traits: {"smithy.api#required" => {}}))
    CreateCustomModelResponse.type = Types::CreateCustomModelResponse
    CreateEvaluationJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobName, location_name: "jobName", traits: {"smithy.api#required" => {}}))
    CreateEvaluationJobRequest.add_member(:job_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobDescription, location_name: "jobDescription"))
    CreateEvaluationJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEvaluationJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateEvaluationJobRequest.add_member(:customer_encryption_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "customerEncryptionKeyId"))
    CreateEvaluationJobRequest.add_member(:job_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "jobTags"))
    CreateEvaluationJobRequest.add_member(:application_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationType, location_name: "applicationType"))
    CreateEvaluationJobRequest.add_member(:evaluation_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationConfig, location_name: "evaluationConfig", traits: {"smithy.api#required" => {}}))
    CreateEvaluationJobRequest.add_member(:inference_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationInferenceConfig, location_name: "inferenceConfig", traits: {"smithy.api#required" => {}}))
    CreateEvaluationJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationOutputDataConfig, location_name: "outputDataConfig", traits: {"smithy.api#required" => {}}))
    CreateEvaluationJobRequest.type = Types::CreateEvaluationJobRequest
    CreateEvaluationJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobArn, location_name: "jobArn", traits: {"smithy.api#required" => {}}))
    CreateEvaluationJobResponse.type = Types::CreateEvaluationJobResponse
    CreateFoundationModelAgreementRequest.add_member(:offer_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferToken, location_name: "offerToken", traits: {"smithy.api#required" => {}}))
    CreateFoundationModelAgreementRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelId, location_name: "modelId", traits: {"smithy.api#required" => {}}))
    CreateFoundationModelAgreementRequest.type = Types::CreateFoundationModelAgreementRequest
    CreateFoundationModelAgreementResponse.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelId, location_name: "modelId", traits: {"smithy.api#required" => {}}))
    CreateFoundationModelAgreementResponse.type = Types::CreateFoundationModelAgreementResponse
    CreateGuardrailRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateGuardrailRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailDescription, location_name: "description"))
    CreateGuardrailRequest.add_member(:topic_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicPolicyConfig, location_name: "topicPolicyConfig"))
    CreateGuardrailRequest.add_member(:content_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentPolicyConfig, location_name: "contentPolicyConfig"))
    CreateGuardrailRequest.add_member(:word_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordPolicyConfig, location_name: "wordPolicyConfig"))
    CreateGuardrailRequest.add_member(:sensitive_information_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicyConfig, location_name: "sensitiveInformationPolicyConfig"))
    CreateGuardrailRequest.add_member(:contextual_grounding_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingPolicyConfig, location_name: "contextualGroundingPolicyConfig"))
    CreateGuardrailRequest.add_member(:automated_reasoning_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningPolicyConfig, location_name: "automatedReasoningPolicyConfig"))
    CreateGuardrailRequest.add_member(:cross_region_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailCrossRegionConfig, location_name: "crossRegionConfig"))
    CreateGuardrailRequest.add_member(:blocked_input_messaging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, location_name: "blockedInputMessaging", traits: {"smithy.api#required" => {}}))
    CreateGuardrailRequest.add_member(:blocked_outputs_messaging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, location_name: "blockedOutputsMessaging", traits: {"smithy.api#required" => {}}))
    CreateGuardrailRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateGuardrailRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateGuardrailRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateGuardrailRequest.type = Types::CreateGuardrailRequest
    CreateGuardrailResponse.add_member(:guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailId, location_name: "guardrailId", traits: {"smithy.api#required" => {}}))
    CreateGuardrailResponse.add_member(:guardrail_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailArn, location_name: "guardrailArn", traits: {"smithy.api#required" => {}}))
    CreateGuardrailResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailDraftVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    CreateGuardrailResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateGuardrailResponse.type = Types::CreateGuardrailResponse
    CreateGuardrailVersionRequest.add_member(:guardrail_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailIdentifier, location_name: "guardrailIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateGuardrailVersionRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailDescription, location_name: "description"))
    CreateGuardrailVersionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateGuardrailVersionRequest.type = Types::CreateGuardrailVersionRequest
    CreateGuardrailVersionResponse.add_member(:guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailId, location_name: "guardrailId", traits: {"smithy.api#required" => {}}))
    CreateGuardrailVersionResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailNumericalVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    CreateGuardrailVersionResponse.type = Types::CreateGuardrailVersionResponse
    CreateInferenceProfileRequest.add_member(:inference_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileName, location_name: "inferenceProfileName", traits: {"smithy.api#required" => {}}))
    CreateInferenceProfileRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileDescription, location_name: "description"))
    CreateInferenceProfileRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateInferenceProfileRequest.add_member(:model_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileModelSource, location_name: "modelSource", traits: {"smithy.api#required" => {}}))
    CreateInferenceProfileRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateInferenceProfileRequest.type = Types::CreateInferenceProfileRequest
    CreateInferenceProfileResponse.add_member(:inference_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileArn, location_name: "inferenceProfileArn", traits: {"smithy.api#required" => {}}))
    CreateInferenceProfileResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileStatus, location_name: "status"))
    CreateInferenceProfileResponse.type = Types::CreateInferenceProfileResponse
    CreateMarketplaceModelEndpointRequest.add_member(:model_source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelSourceIdentifier, location_name: "modelSourceIdentifier", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceModelEndpointRequest.add_member(:endpoint_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfig, location_name: "endpointConfig", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceModelEndpointRequest.add_member(:accept_eula, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptEula, location_name: "acceptEula", traits: {"smithy.api#default" => false}))
    CreateMarketplaceModelEndpointRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: "endpointName", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceModelEndpointRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMarketplaceModelEndpointRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateMarketplaceModelEndpointRequest.type = Types::CreateMarketplaceModelEndpointRequest
    CreateMarketplaceModelEndpointResponse.add_member(:marketplace_model_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketplaceModelEndpoint, location_name: "marketplaceModelEndpoint", traits: {"smithy.api#required" => {}}))
    CreateMarketplaceModelEndpointResponse.type = Types::CreateMarketplaceModelEndpointResponse
    CreateModelCopyJobRequest.add_member(:source_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "sourceModelArn", traits: {"smithy.api#required" => {}}))
    CreateModelCopyJobRequest.add_member(:target_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelName, location_name: "targetModelName", traits: {"smithy.api#required" => {}}))
    CreateModelCopyJobRequest.add_member(:model_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "modelKmsKeyId"))
    CreateModelCopyJobRequest.add_member(:target_model_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "targetModelTags"))
    CreateModelCopyJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateModelCopyJobRequest.type = Types::CreateModelCopyJobRequest
    CreateModelCopyJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCopyJobArn, location_name: "jobArn", traits: {"smithy.api#required" => {}}))
    CreateModelCopyJobResponse.type = Types::CreateModelCopyJobResponse
    CreateModelCustomizationJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: "jobName", traits: {"smithy.api#required" => {}}))
    CreateModelCustomizationJobRequest.add_member(:custom_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelName, location_name: "customModelName", traits: {"smithy.api#required" => {}}))
    CreateModelCustomizationJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateModelCustomizationJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateModelCustomizationJobRequest.add_member(:base_model_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseModelIdentifier, location_name: "baseModelIdentifier", traits: {"smithy.api#required" => {}}))
    CreateModelCustomizationJobRequest.add_member(:customization_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    CreateModelCustomizationJobRequest.add_member(:custom_model_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "customModelKmsKeyId"))
    CreateModelCustomizationJobRequest.add_member(:job_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "jobTags"))
    CreateModelCustomizationJobRequest.add_member(:custom_model_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "customModelTags"))
    CreateModelCustomizationJobRequest.add_member(:training_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDataConfig, location_name: "trainingDataConfig", traits: {"smithy.api#required" => {}}))
    CreateModelCustomizationJobRequest.add_member(:validation_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationDataConfig, location_name: "validationDataConfig"))
    CreateModelCustomizationJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "outputDataConfig", traits: {"smithy.api#required" => {}}))
    CreateModelCustomizationJobRequest.add_member(:hyper_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomizationHyperParameters, location_name: "hyperParameters"))
    CreateModelCustomizationJobRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    CreateModelCustomizationJobRequest.add_member(:customization_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationConfig, location_name: "customizationConfig"))
    CreateModelCustomizationJobRequest.type = Types::CreateModelCustomizationJobRequest
    CreateModelCustomizationJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, location_name: "jobArn", traits: {"smithy.api#required" => {}}))
    CreateModelCustomizationJobResponse.type = Types::CreateModelCustomizationJobResponse
    CreateModelImportJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: "jobName", traits: {"smithy.api#required" => {}}))
    CreateModelImportJobRequest.add_member(:imported_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedModelName, location_name: "importedModelName", traits: {"smithy.api#required" => {}}))
    CreateModelImportJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateModelImportJobRequest.add_member(:model_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDataSource, location_name: "modelDataSource", traits: {"smithy.api#required" => {}}))
    CreateModelImportJobRequest.add_member(:job_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "jobTags"))
    CreateModelImportJobRequest.add_member(:imported_model_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "importedModelTags"))
    CreateModelImportJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken"))
    CreateModelImportJobRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    CreateModelImportJobRequest.add_member(:imported_model_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "importedModelKmsKeyId"))
    CreateModelImportJobRequest.type = Types::CreateModelImportJobRequest
    CreateModelImportJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelImportJobArn, location_name: "jobArn", traits: {"smithy.api#required" => {}}))
    CreateModelImportJobResponse.type = Types::CreateModelImportJobResponse
    CreateModelInvocationJobRequest.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobName, location_name: "jobName", traits: {"smithy.api#required" => {}}))
    CreateModelInvocationJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateModelInvocationJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationIdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateModelInvocationJobRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelId, location_name: "modelId", traits: {"smithy.api#required" => {}}))
    CreateModelInvocationJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobInputDataConfig, location_name: "inputDataConfig", traits: {"smithy.api#required" => {}}))
    CreateModelInvocationJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobOutputDataConfig, location_name: "outputDataConfig", traits: {"smithy.api#required" => {}}))
    CreateModelInvocationJobRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    CreateModelInvocationJobRequest.add_member(:timeout_duration_in_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobTimeoutDurationInHours, location_name: "timeoutDurationInHours"))
    CreateModelInvocationJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateModelInvocationJobRequest.type = Types::CreateModelInvocationJobRequest
    CreateModelInvocationJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobArn, location_name: "jobArn", traits: {"smithy.api#required" => {}}))
    CreateModelInvocationJobResponse.type = Types::CreateModelInvocationJobResponse
    CreatePromptRouterRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePromptRouterRequest.add_member(:prompt_router_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterName, location_name: "promptRouterName", traits: {"smithy.api#required" => {}}))
    CreatePromptRouterRequest.add_member(:models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterTargetModels, location_name: "models", traits: {"smithy.api#required" => {}}))
    CreatePromptRouterRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterDescription, location_name: "description"))
    CreatePromptRouterRequest.add_member(:routing_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingCriteria, location_name: "routingCriteria", traits: {"smithy.api#required" => {}}))
    CreatePromptRouterRequest.add_member(:fallback_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterTargetModel, location_name: "fallbackModel", traits: {"smithy.api#required" => {}}))
    CreatePromptRouterRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreatePromptRouterRequest.type = Types::CreatePromptRouterRequest
    CreatePromptRouterResponse.add_member(:prompt_router_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterArn, location_name: "promptRouterArn"))
    CreatePromptRouterResponse.type = Types::CreatePromptRouterResponse
    CreateProvisionedModelThroughputRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateProvisionedModelThroughputRequest.add_member(:model_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "modelUnits", traits: {"smithy.api#required" => {}}))
    CreateProvisionedModelThroughputRequest.add_member(:provisioned_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelName, location_name: "provisionedModelName", traits: {"smithy.api#required" => {}}))
    CreateProvisionedModelThroughputRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "modelId", traits: {"smithy.api#required" => {}}))
    CreateProvisionedModelThroughputRequest.add_member(:commitment_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitmentDuration, location_name: "commitmentDuration"))
    CreateProvisionedModelThroughputRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateProvisionedModelThroughputRequest.type = Types::CreateProvisionedModelThroughputRequest
    CreateProvisionedModelThroughputResponse.add_member(:provisioned_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelArn, location_name: "provisionedModelArn", traits: {"smithy.api#required" => {}}))
    CreateProvisionedModelThroughputResponse.type = Types::CreateProvisionedModelThroughputResponse
    CustomMetricBedrockEvaluatorModel.add_member(:model_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluatorModelIdentifier, location_name: "modelIdentifier", traits: {"smithy.api#required" => {}}))
    CustomMetricBedrockEvaluatorModel.type = Types::CustomMetricBedrockEvaluatorModel
    CustomMetricBedrockEvaluatorModels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMetricBedrockEvaluatorModel)
    CustomMetricDefinition.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CustomMetricDefinition.add_member(:instructions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMetricInstructions, location_name: "instructions", traits: {"smithy.api#required" => {}}))
    CustomMetricDefinition.add_member(:rating_scale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RatingScale, location_name: "ratingScale"))
    CustomMetricDefinition.type = Types::CustomMetricDefinition
    CustomMetricEvaluatorModelConfig.add_member(:bedrock_evaluator_models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMetricBedrockEvaluatorModels, location_name: "bedrockEvaluatorModels", traits: {"smithy.api#required" => {}}))
    CustomMetricEvaluatorModelConfig.type = Types::CustomMetricEvaluatorModelConfig
    CustomModelDeploymentStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "Creating"}))
    CustomModelDeploymentStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    CustomModelDeploymentStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    CustomModelDeploymentSummary.add_member(:custom_model_deployment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelDeploymentArn, location_name: "customModelDeploymentArn", traits: {"smithy.api#required" => {}}))
    CustomModelDeploymentSummary.add_member(:custom_model_deployment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDeploymentName, location_name: "customModelDeploymentName", traits: {"smithy.api#required" => {}}))
    CustomModelDeploymentSummary.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "modelArn", traits: {"smithy.api#required" => {}}))
    CustomModelDeploymentSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    CustomModelDeploymentSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelDeploymentStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    CustomModelDeploymentSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    CustomModelDeploymentSummary.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    CustomModelDeploymentSummary.type = Types::CustomModelDeploymentSummary
    CustomModelDeploymentSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelDeploymentSummary)
    CustomModelSummary.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelArn, location_name: "modelArn", traits: {"smithy.api#required" => {}}))
    CustomModelSummary.add_member(:model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelName, location_name: "modelName", traits: {"smithy.api#required" => {}}))
    CustomModelSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    CustomModelSummary.add_member(:base_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "baseModelArn", traits: {"smithy.api#required" => {}}))
    CustomModelSummary.add_member(:base_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelName, location_name: "baseModelName", traits: {"smithy.api#required" => {}}))
    CustomModelSummary.add_member(:customization_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    CustomModelSummary.add_member(:owner_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId"))
    CustomModelSummary.add_member(:model_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: "modelStatus"))
    CustomModelSummary.type = Types::CustomModelSummary
    CustomModelSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelSummary)
    CustomModelUnits.add_member(:custom_model_units_per_model_copy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "customModelUnitsPerModelCopy"))
    CustomModelUnits.add_member(:custom_model_units_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelUnitsVersion, location_name: "customModelUnitsVersion"))
    CustomModelUnits.type = Types::CustomModelUnits
    CustomizationConfig.add_member(:distillation_config, Types::CustomizationConfig::DistillationConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DistillationConfig, location_name: "distillationConfig"))
    CustomizationConfig.add_member(:unknown, Types::CustomizationConfig::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    CustomizationConfig.type = Types::CustomizationConfig
    CustomizationType.add_member(:fine_tuning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FINE_TUNING", traits: {"smithy.api#enumValue" => "FINE_TUNING"}))
    CustomizationType.add_member(:continued_pre_training, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTINUED_PRE_TRAINING", traits: {"smithy.api#enumValue" => "CONTINUED_PRE_TRAINING"}))
    CustomizationType.add_member(:distillation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISTILLATION", traits: {"smithy.api#enumValue" => "DISTILLATION"}))
    CustomizationType.add_member(:imported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORTED", traits: {"smithy.api#enumValue" => "IMPORTED"}))
    DataProcessingDetails.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusDetails, location_name: "status"))
    DataProcessingDetails.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DataProcessingDetails.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    DataProcessingDetails.type = Types::DataProcessingDetails
    DeleteAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#httpQuery" => "updatedAt", "smithy.api#required" => {}}))
    DeleteAutomatedReasoningPolicyBuildWorkflowRequest.type = Types::DeleteAutomatedReasoningPolicyBuildWorkflowRequest
    DeleteAutomatedReasoningPolicyBuildWorkflowResponse.type = Types::DeleteAutomatedReasoningPolicyBuildWorkflowResponse
    DeleteAutomatedReasoningPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAutomatedReasoningPolicyRequest.type = Types::DeleteAutomatedReasoningPolicyRequest
    DeleteAutomatedReasoningPolicyResponse.type = Types::DeleteAutomatedReasoningPolicyResponse
    DeleteAutomatedReasoningPolicyTestCaseRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAutomatedReasoningPolicyTestCaseRequest.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId, location_name: "testCaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAutomatedReasoningPolicyTestCaseRequest.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#httpQuery" => "updatedAt", "smithy.api#required" => {}}))
    DeleteAutomatedReasoningPolicyTestCaseRequest.type = Types::DeleteAutomatedReasoningPolicyTestCaseRequest
    DeleteAutomatedReasoningPolicyTestCaseResponse.type = Types::DeleteAutomatedReasoningPolicyTestCaseResponse
    DeleteCustomModelDeploymentRequest.add_member(:custom_model_deployment_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelDeploymentIdentifier, location_name: "customModelDeploymentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomModelDeploymentRequest.type = Types::DeleteCustomModelDeploymentRequest
    DeleteCustomModelDeploymentResponse.type = Types::DeleteCustomModelDeploymentResponse
    DeleteCustomModelRequest.add_member(:model_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "modelIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomModelRequest.type = Types::DeleteCustomModelRequest
    DeleteCustomModelResponse.type = Types::DeleteCustomModelResponse
    DeleteFoundationModelAgreementRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelId, location_name: "modelId", traits: {"smithy.api#required" => {}}))
    DeleteFoundationModelAgreementRequest.type = Types::DeleteFoundationModelAgreementRequest
    DeleteFoundationModelAgreementResponse.type = Types::DeleteFoundationModelAgreementResponse
    DeleteGuardrailRequest.add_member(:guardrail_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailIdentifier, location_name: "guardrailIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGuardrailRequest.add_member(:guardrail_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailNumericalVersion, location_name: "guardrailVersion", traits: {"smithy.api#httpQuery" => "guardrailVersion"}))
    DeleteGuardrailRequest.type = Types::DeleteGuardrailRequest
    DeleteGuardrailResponse.type = Types::DeleteGuardrailResponse
    DeleteImportedModelRequest.add_member(:model_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedModelIdentifier, location_name: "modelIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteImportedModelRequest.type = Types::DeleteImportedModelRequest
    DeleteImportedModelResponse.type = Types::DeleteImportedModelResponse
    DeleteInferenceProfileRequest.add_member(:inference_profile_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileIdentifier, location_name: "inferenceProfileIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInferenceProfileRequest.type = Types::DeleteInferenceProfileRequest
    DeleteInferenceProfileResponse.type = Types::DeleteInferenceProfileResponse
    DeleteMarketplaceModelEndpointRequest.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "endpointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMarketplaceModelEndpointRequest.type = Types::DeleteMarketplaceModelEndpointRequest
    DeleteMarketplaceModelEndpointResponse.type = Types::DeleteMarketplaceModelEndpointResponse
    DeleteModelInvocationLoggingConfigurationRequest.type = Types::DeleteModelInvocationLoggingConfigurationRequest
    DeleteModelInvocationLoggingConfigurationResponse.type = Types::DeleteModelInvocationLoggingConfigurationResponse
    DeletePromptRouterRequest.add_member(:prompt_router_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterArn, location_name: "promptRouterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeletePromptRouterRequest.type = Types::DeletePromptRouterRequest
    DeletePromptRouterResponse.type = Types::DeletePromptRouterResponse
    DeleteProvisionedModelThroughputRequest.add_member(:provisioned_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelId, location_name: "provisionedModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProvisionedModelThroughputRequest.type = Types::DeleteProvisionedModelThroughputRequest
    DeleteProvisionedModelThroughputResponse.type = Types::DeleteProvisionedModelThroughputResponse
    DeregisterMarketplaceModelEndpointRequest.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "endpointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeregisterMarketplaceModelEndpointRequest.type = Types::DeregisterMarketplaceModelEndpointRequest
    DeregisterMarketplaceModelEndpointResponse.type = Types::DeregisterMarketplaceModelEndpointResponse
    DimensionalPriceRate.add_member(:dimension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "dimension"))
    DimensionalPriceRate.add_member(:price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "price"))
    DimensionalPriceRate.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description"))
    DimensionalPriceRate.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "unit"))
    DimensionalPriceRate.type = Types::DimensionalPriceRate
    DistillationConfig.add_member(:teacher_model_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TeacherModelConfig, location_name: "teacherModelConfig", traits: {"smithy.api#required" => {}}))
    DistillationConfig.type = Types::DistillationConfig
    EndpointConfig.add_member(:sage_maker, Types::EndpointConfig::SageMaker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerEndpoint, location_name: "sageMaker"))
    EndpointConfig.add_member(:unknown, Types::EndpointConfig::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    EndpointConfig.type = Types::EndpointConfig
    EntitlementAvailability.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    EntitlementAvailability.add_member(:not_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_AVAILABLE", traits: {"smithy.api#enumValue" => "NOT_AVAILABLE"}))
    ErrorMessages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage)
    EvaluationBedrockKnowledgeBaseIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseId)
    EvaluationBedrockModel.add_member(:model_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationBedrockModelIdentifier, location_name: "modelIdentifier", traits: {"smithy.api#required" => {}}))
    EvaluationBedrockModel.add_member(:inference_params, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationModelInferenceParams, location_name: "inferenceParams", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "{}"}))
    EvaluationBedrockModel.add_member(:performance_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceConfiguration, location_name: "performanceConfig"))
    EvaluationBedrockModel.type = Types::EvaluationBedrockModel
    EvaluationBedrockModelIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationBedrockModelIdentifier)
    EvaluationConfig.add_member(:automated, Types::EvaluationConfig::Automated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedEvaluationConfig, location_name: "automated"))
    EvaluationConfig.add_member(:human, Types::EvaluationConfig::Human, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanEvaluationConfig, location_name: "human"))
    EvaluationConfig.add_member(:unknown, Types::EvaluationConfig::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    EvaluationConfig.type = Types::EvaluationConfig
    EvaluationDataset.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationDatasetName, location_name: "name", traits: {"smithy.api#required" => {}}))
    EvaluationDataset.add_member(:dataset_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationDatasetLocation, location_name: "datasetLocation"))
    EvaluationDataset.type = Types::EvaluationDataset
    EvaluationDatasetLocation.add_member(:s3_uri, Types::EvaluationDatasetLocation::S3Uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri"))
    EvaluationDatasetLocation.add_member(:unknown, Types::EvaluationDatasetLocation::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    EvaluationDatasetLocation.type = Types::EvaluationDatasetLocation
    EvaluationDatasetMetricConfig.add_member(:task_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationTaskType, location_name: "taskType", traits: {"smithy.api#required" => {}}))
    EvaluationDatasetMetricConfig.add_member(:dataset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationDataset, location_name: "dataset", traits: {"smithy.api#required" => {}}))
    EvaluationDatasetMetricConfig.add_member(:metric_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationMetricNames, location_name: "metricNames", traits: {"smithy.api#required" => {}}))
    EvaluationDatasetMetricConfig.type = Types::EvaluationDatasetMetricConfig
    EvaluationDatasetMetricConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationDatasetMetricConfig)
    EvaluationInferenceConfig.add_member(:models, Types::EvaluationInferenceConfig::Models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationModelConfigs, location_name: "models"))
    EvaluationInferenceConfig.add_member(:rag_configs, Types::EvaluationInferenceConfig::RagConfigs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RagConfigs, location_name: "ragConfigs"))
    EvaluationInferenceConfig.add_member(:unknown, Types::EvaluationInferenceConfig::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    EvaluationInferenceConfig.type = Types::EvaluationInferenceConfig
    EvaluationInferenceConfigSummary.add_member(:model_config_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationModelConfigSummary, location_name: "modelConfigSummary"))
    EvaluationInferenceConfigSummary.add_member(:rag_config_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationRagConfigSummary, location_name: "ragConfigSummary"))
    EvaluationInferenceConfigSummary.type = Types::EvaluationInferenceConfigSummary
    EvaluationJobIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobIdentifier)
    EvaluationJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    EvaluationJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    EvaluationJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    EvaluationJobStatus.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "Stopping"}))
    EvaluationJobStatus.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "Stopped"}))
    EvaluationJobStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    EvaluationJobType.add_member(:human, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HUMAN", traits: {"smithy.api#enumValue" => "Human"}))
    EvaluationJobType.add_member(:automated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTOMATED", traits: {"smithy.api#enumValue" => "Automated"}))
    EvaluationMetricNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationMetricName)
    EvaluationModelConfig.add_member(:bedrock_model, Types::EvaluationModelConfig::BedrockModel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationBedrockModel, location_name: "bedrockModel"))
    EvaluationModelConfig.add_member(:precomputed_inference_source, Types::EvaluationModelConfig::PrecomputedInferenceSource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationPrecomputedInferenceSource, location_name: "precomputedInferenceSource"))
    EvaluationModelConfig.add_member(:unknown, Types::EvaluationModelConfig::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    EvaluationModelConfig.type = Types::EvaluationModelConfig
    EvaluationModelConfigSummary.add_member(:bedrock_model_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationBedrockModelIdentifiers, location_name: "bedrockModelIdentifiers"))
    EvaluationModelConfigSummary.add_member(:precomputed_inference_source_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationPrecomputedInferenceSourceIdentifiers, location_name: "precomputedInferenceSourceIdentifiers"))
    EvaluationModelConfigSummary.type = Types::EvaluationModelConfigSummary
    EvaluationModelConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationModelConfig)
    EvaluationOutputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri", traits: {"smithy.api#required" => {}}))
    EvaluationOutputDataConfig.type = Types::EvaluationOutputDataConfig
    EvaluationPrecomputedInferenceSource.add_member(:inference_source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationPrecomputedInferenceSourceIdentifier, location_name: "inferenceSourceIdentifier", traits: {"smithy.api#required" => {}}))
    EvaluationPrecomputedInferenceSource.type = Types::EvaluationPrecomputedInferenceSource
    EvaluationPrecomputedInferenceSourceIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationPrecomputedInferenceSourceIdentifier)
    EvaluationPrecomputedRagSourceConfig.add_member(:retrieve_source_config, Types::EvaluationPrecomputedRagSourceConfig::RetrieveSourceConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationPrecomputedRetrieveSourceConfig, location_name: "retrieveSourceConfig"))
    EvaluationPrecomputedRagSourceConfig.add_member(:retrieve_and_generate_source_config, Types::EvaluationPrecomputedRagSourceConfig::RetrieveAndGenerateSourceConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationPrecomputedRetrieveAndGenerateSourceConfig, location_name: "retrieveAndGenerateSourceConfig"))
    EvaluationPrecomputedRagSourceConfig.add_member(:unknown, Types::EvaluationPrecomputedRagSourceConfig::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    EvaluationPrecomputedRagSourceConfig.type = Types::EvaluationPrecomputedRagSourceConfig
    EvaluationPrecomputedRagSourceIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationPrecomputedRagSourceIdentifier)
    EvaluationPrecomputedRetrieveAndGenerateSourceConfig.add_member(:rag_source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationPrecomputedRagSourceIdentifier, location_name: "ragSourceIdentifier", traits: {"smithy.api#required" => {}}))
    EvaluationPrecomputedRetrieveAndGenerateSourceConfig.type = Types::EvaluationPrecomputedRetrieveAndGenerateSourceConfig
    EvaluationPrecomputedRetrieveSourceConfig.add_member(:rag_source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationPrecomputedRagSourceIdentifier, location_name: "ragSourceIdentifier", traits: {"smithy.api#required" => {}}))
    EvaluationPrecomputedRetrieveSourceConfig.type = Types::EvaluationPrecomputedRetrieveSourceConfig
    EvaluationRagConfigSummary.add_member(:bedrock_knowledge_base_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationBedrockKnowledgeBaseIdentifiers, location_name: "bedrockKnowledgeBaseIdentifiers"))
    EvaluationRagConfigSummary.add_member(:precomputed_rag_source_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationPrecomputedRagSourceIdentifiers, location_name: "precomputedRagSourceIdentifiers"))
    EvaluationRagConfigSummary.type = Types::EvaluationRagConfigSummary
    EvaluationSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationSummary)
    EvaluationSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobArn, location_name: "jobArn", traits: {"smithy.api#required" => {}}))
    EvaluationSummary.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobName, location_name: "jobName", traits: {"smithy.api#required" => {}}))
    EvaluationSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    EvaluationSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    EvaluationSummary.add_member(:job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobType, location_name: "jobType", traits: {"smithy.api#required" => {}}))
    EvaluationSummary.add_member(:evaluation_task_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationTaskTypes, location_name: "evaluationTaskTypes", traits: {"smithy.api#required" => {}}))
    EvaluationSummary.add_member(:model_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationBedrockModelIdentifiers, location_name: "modelIdentifiers", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => [], "smithy.api#deprecated" => {"since" => "2025-03-07", "message" => "Inference identifiers should be retrieved from the inferenceConfigSummary"}}))
    EvaluationSummary.add_member(:rag_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationBedrockKnowledgeBaseIdentifiers, location_name: "ragIdentifiers", traits: {"smithy.api#deprecated" => {"since" => "2025-03-07", "message" => "Inference identifiers should be retrieved from the inferenceConfigSummary"}}))
    EvaluationSummary.add_member(:evaluator_model_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluatorModelIdentifiers, location_name: "evaluatorModelIdentifiers"))
    EvaluationSummary.add_member(:custom_metrics_evaluator_model_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluatorModelIdentifiers, location_name: "customMetricsEvaluatorModelIdentifiers"))
    EvaluationSummary.add_member(:inference_config_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationInferenceConfigSummary, location_name: "inferenceConfigSummary"))
    EvaluationSummary.add_member(:application_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationType, location_name: "applicationType"))
    EvaluationSummary.type = Types::EvaluationSummary
    EvaluationTaskType.add_member(:summarization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUMMARIZATION", traits: {"smithy.api#enumValue" => "Summarization"}))
    EvaluationTaskType.add_member(:classification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLASSIFICATION", traits: {"smithy.api#enumValue" => "Classification"}))
    EvaluationTaskType.add_member(:question_and_answer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUESTION_AND_ANSWER", traits: {"smithy.api#enumValue" => "QuestionAndAnswer"}))
    EvaluationTaskType.add_member(:generation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENERATION", traits: {"smithy.api#enumValue" => "Generation"}))
    EvaluationTaskType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM", traits: {"smithy.api#enumValue" => "Custom"}))
    EvaluationTaskTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationTaskType)
    EvaluatorModelConfig.add_member(:bedrock_evaluator_models, Types::EvaluatorModelConfig::BedrockEvaluatorModels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockEvaluatorModels, location_name: "bedrockEvaluatorModels"))
    EvaluatorModelConfig.add_member(:unknown, Types::EvaluatorModelConfig::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    EvaluatorModelConfig.type = Types::EvaluatorModelConfig
    EvaluatorModelIdentifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluatorModelIdentifier)
    ExportAutomatedReasoningPolicyVersionRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportAutomatedReasoningPolicyVersionRequest.type = Types::ExportAutomatedReasoningPolicyVersionRequest
    ExportAutomatedReasoningPolicyVersionResponse.add_member(:policy_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinition, location_name: "policyDefinition", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ExportAutomatedReasoningPolicyVersionResponse[:http_payload] = :policy_definition
    ExportAutomatedReasoningPolicyVersionResponse[:http_payload_member] = ExportAutomatedReasoningPolicyVersionResponse.member(:policy_definition)
    ExportAutomatedReasoningPolicyVersionResponse.type = Types::ExportAutomatedReasoningPolicyVersionResponse
    ExternalSource.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSourceType, location_name: "sourceType", traits: {"smithy.api#required" => {}}))
    ExternalSource.add_member(:s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectDoc, location_name: "s3Location"))
    ExternalSource.add_member(:byte_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ByteContentDoc, location_name: "byteContent"))
    ExternalSource.type = Types::ExternalSource
    ExternalSourceType.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    ExternalSourceType.add_member(:byte_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYTE_CONTENT", traits: {"smithy.api#enumValue" => "BYTE_CONTENT"}))
    ExternalSources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSource)
    ExternalSourcesGenerationConfiguration.add_member(:prompt_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptTemplate, location_name: "promptTemplate"))
    ExternalSourcesGenerationConfiguration.add_member(:guardrail_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfiguration"))
    ExternalSourcesGenerationConfiguration.add_member(:kb_inference_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KbInferenceConfig, location_name: "kbInferenceConfig"))
    ExternalSourcesGenerationConfiguration.add_member(:additional_model_request_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: "additionalModelRequestFields"))
    ExternalSourcesGenerationConfiguration.type = Types::ExternalSourcesGenerationConfiguration
    ExternalSourcesRetrieveAndGenerateConfiguration.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelArn, location_name: "modelArn", traits: {"smithy.api#required" => {}}))
    ExternalSourcesRetrieveAndGenerateConfiguration.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSources, location_name: "sources", traits: {"smithy.api#required" => {}}))
    ExternalSourcesRetrieveAndGenerateConfiguration.add_member(:generation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSourcesGenerationConfiguration, location_name: "generationConfiguration"))
    ExternalSourcesRetrieveAndGenerateConfiguration.type = Types::ExternalSourcesRetrieveAndGenerateConfiguration
    FieldForReranking.add_member(:field_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "fieldName", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#required" => {}}))
    FieldForReranking.type = Types::FieldForReranking
    FieldsForReranking.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldForReranking)
    FilterAttribute.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterKey, location_name: "key", traits: {"smithy.api#required" => {}}))
    FilterAttribute.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    FilterAttribute.type = Types::FilterAttribute
    FineTuningJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    FineTuningJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    FineTuningJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    FineTuningJobStatus.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "Stopping"}))
    FineTuningJobStatus.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "Stopped"}))
    FoundationModelDetails.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FoundationModelArn, location_name: "modelArn", traits: {"smithy.api#required" => {}}))
    FoundationModelDetails.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelId, location_name: "modelId", traits: {"smithy.api#required" => {}}))
    FoundationModelDetails.add_member(:model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrandedName, location_name: "modelName"))
    FoundationModelDetails.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrandedName, location_name: "providerName"))
    FoundationModelDetails.add_member(:input_modalities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "inputModalities"))
    FoundationModelDetails.add_member(:output_modalities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "outputModalities"))
    FoundationModelDetails.add_member(:response_streaming_supported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "responseStreamingSupported"))
    FoundationModelDetails.add_member(:customizations_supported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomizationList, location_name: "customizationsSupported"))
    FoundationModelDetails.add_member(:inference_types_supported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceTypeList, location_name: "inferenceTypesSupported"))
    FoundationModelDetails.add_member(:model_lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FoundationModelLifecycle, location_name: "modelLifecycle"))
    FoundationModelDetails.type = Types::FoundationModelDetails
    FoundationModelLifecycle.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FoundationModelLifecycleStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    FoundationModelLifecycle.type = Types::FoundationModelLifecycle
    FoundationModelLifecycleStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    FoundationModelLifecycleStatus.add_member(:legacy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LEGACY", traits: {"smithy.api#enumValue" => "LEGACY"}))
    FoundationModelSummary.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FoundationModelArn, location_name: "modelArn", traits: {"smithy.api#required" => {}}))
    FoundationModelSummary.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelId, location_name: "modelId", traits: {"smithy.api#required" => {}}))
    FoundationModelSummary.add_member(:model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrandedName, location_name: "modelName"))
    FoundationModelSummary.add_member(:provider_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrandedName, location_name: "providerName"))
    FoundationModelSummary.add_member(:input_modalities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "inputModalities"))
    FoundationModelSummary.add_member(:output_modalities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "outputModalities"))
    FoundationModelSummary.add_member(:response_streaming_supported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "responseStreamingSupported"))
    FoundationModelSummary.add_member(:customizations_supported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomizationList, location_name: "customizationsSupported"))
    FoundationModelSummary.add_member(:inference_types_supported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceTypeList, location_name: "inferenceTypesSupported"))
    FoundationModelSummary.add_member(:model_lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FoundationModelLifecycle, location_name: "modelLifecycle"))
    FoundationModelSummary.type = Types::FoundationModelSummary
    FoundationModelSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FoundationModelSummary)
    GenerationConfiguration.add_member(:prompt_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptTemplate, location_name: "promptTemplate"))
    GenerationConfiguration.add_member(:guardrail_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfiguration"))
    GenerationConfiguration.add_member(:kb_inference_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KbInferenceConfig, location_name: "kbInferenceConfig"))
    GenerationConfiguration.add_member(:additional_model_request_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: "additionalModelRequestFields"))
    GenerationConfiguration.type = Types::GenerationConfiguration
    GetAutomatedReasoningPolicyAnnotationsRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyAnnotationsRequest.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyAnnotationsRequest.type = Types::GetAutomatedReasoningPolicyAnnotationsRequest
    GetAutomatedReasoningPolicyAnnotationsResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyAnnotationsResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyAnnotationsResponse.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyAnnotationsResponse.add_member(:annotations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationList, location_name: "annotations", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyAnnotationsResponse.add_member(:annotation_set_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, location_name: "annotationSetHash", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyAnnotationsResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyAnnotationsResponse.type = Types::GetAutomatedReasoningPolicyAnnotationsResponse
    GetAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyBuildWorkflowRequest.type = Types::GetAutomatedReasoningPolicyBuildWorkflowRequest
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:build_workflow_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowType, location_name: "buildWorkflowType", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:document_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildDocumentName, location_name: "documentName"))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:document_content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildDocumentContentType, location_name: "documentContentType"))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:document_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildDocumentDescription, location_name: "documentDescription"))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.type = Types::GetAutomatedReasoningPolicyBuildWorkflowResponse
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest.add_member(:asset_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildResultAssetType, location_name: "assetType", traits: {"smithy.api#httpQuery" => "assetType", "smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest.type = Types::GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse.add_member(:build_workflow_assets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildResultAssets, location_name: "buildWorkflowAssets"))
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse.type = Types::GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse
    GetAutomatedReasoningPolicyNextScenarioRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyNextScenarioRequest.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyNextScenarioRequest.type = Types::GetAutomatedReasoningPolicyNextScenarioRequest
    GetAutomatedReasoningPolicyNextScenarioResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyNextScenarioResponse.add_member(:scenario, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyScenario, location_name: "scenario"))
    GetAutomatedReasoningPolicyNextScenarioResponse.type = Types::GetAutomatedReasoningPolicyNextScenarioResponse
    GetAutomatedReasoningPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyRequest.type = Types::GetAutomatedReasoningPolicyRequest
    GetAutomatedReasoningPolicyResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyResponse.add_member(:policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyId, location_name: "policyId", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDescription, location_name: "description"))
    GetAutomatedReasoningPolicyResponse.add_member(:definition_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, location_name: "definitionHash", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetAutomatedReasoningPolicyResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyResponse.type = Types::GetAutomatedReasoningPolicyResponse
    GetAutomatedReasoningPolicyTestCaseRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyTestCaseRequest.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId, location_name: "testCaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyTestCaseRequest.type = Types::GetAutomatedReasoningPolicyTestCaseRequest
    GetAutomatedReasoningPolicyTestCaseResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyTestCaseResponse.add_member(:test_case, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCase, location_name: "testCase", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyTestCaseResponse.type = Types::GetAutomatedReasoningPolicyTestCaseResponse
    GetAutomatedReasoningPolicyTestResultRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyTestResultRequest.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyTestResultRequest.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId, location_name: "testCaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyTestResultRequest.type = Types::GetAutomatedReasoningPolicyTestResultRequest
    GetAutomatedReasoningPolicyTestResultResponse.add_member(:test_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestResult, location_name: "testResult", traits: {"smithy.api#required" => {}}))
    GetAutomatedReasoningPolicyTestResultResponse.type = Types::GetAutomatedReasoningPolicyTestResultResponse
    GetCustomModelDeploymentRequest.add_member(:custom_model_deployment_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelDeploymentIdentifier, location_name: "customModelDeploymentIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCustomModelDeploymentRequest.type = Types::GetCustomModelDeploymentRequest
    GetCustomModelDeploymentResponse.add_member(:custom_model_deployment_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelDeploymentArn, location_name: "customModelDeploymentArn", traits: {"smithy.api#required" => {}}))
    GetCustomModelDeploymentResponse.add_member(:model_deployment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDeploymentName, location_name: "modelDeploymentName", traits: {"smithy.api#required" => {}}))
    GetCustomModelDeploymentResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelArn, location_name: "modelArn", traits: {"smithy.api#required" => {}}))
    GetCustomModelDeploymentResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetCustomModelDeploymentResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelDeploymentStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetCustomModelDeploymentResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelDeploymentDescription, location_name: "description"))
    GetCustomModelDeploymentResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetCustomModelDeploymentResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GetCustomModelDeploymentResponse.type = Types::GetCustomModelDeploymentResponse
    GetCustomModelRequest.add_member(:model_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "modelIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCustomModelRequest.type = Types::GetCustomModelRequest
    GetCustomModelResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "modelArn", traits: {"smithy.api#required" => {}}))
    GetCustomModelResponse.add_member(:model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelName, location_name: "modelName", traits: {"smithy.api#required" => {}}))
    GetCustomModelResponse.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: "jobName"))
    GetCustomModelResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, location_name: "jobArn"))
    GetCustomModelResponse.add_member(:base_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "baseModelArn"))
    GetCustomModelResponse.add_member(:customization_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    GetCustomModelResponse.add_member(:model_kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "modelKmsKeyArn"))
    GetCustomModelResponse.add_member(:hyper_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomizationHyperParameters, location_name: "hyperParameters"))
    GetCustomModelResponse.add_member(:training_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDataConfig, location_name: "trainingDataConfig"))
    GetCustomModelResponse.add_member(:validation_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationDataConfig, location_name: "validationDataConfig"))
    GetCustomModelResponse.add_member(:output_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "outputDataConfig"))
    GetCustomModelResponse.add_member(:training_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingMetrics, location_name: "trainingMetrics"))
    GetCustomModelResponse.add_member(:validation_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationMetrics, location_name: "validationMetrics"))
    GetCustomModelResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetCustomModelResponse.add_member(:customization_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationConfig, location_name: "customizationConfig"))
    GetCustomModelResponse.add_member(:model_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: "modelStatus"))
    GetCustomModelResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetCustomModelResponse.type = Types::GetCustomModelResponse
    GetEvaluationJobRequest.add_member(:job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobIdentifier, location_name: "jobIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEvaluationJobRequest.type = Types::GetEvaluationJobRequest
    GetEvaluationJobResponse.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobName, location_name: "jobName", traits: {"smithy.api#required" => {}}))
    GetEvaluationJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetEvaluationJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobArn, location_name: "jobArn", traits: {"smithy.api#required" => {}}))
    GetEvaluationJobResponse.add_member(:job_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobDescription, location_name: "jobDescription"))
    GetEvaluationJobResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    GetEvaluationJobResponse.add_member(:customer_encryption_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "customerEncryptionKeyId"))
    GetEvaluationJobResponse.add_member(:job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobType, location_name: "jobType", traits: {"smithy.api#required" => {}}))
    GetEvaluationJobResponse.add_member(:application_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationType, location_name: "applicationType"))
    GetEvaluationJobResponse.add_member(:evaluation_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationConfig, location_name: "evaluationConfig", traits: {"smithy.api#required" => {}}))
    GetEvaluationJobResponse.add_member(:inference_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationInferenceConfig, location_name: "inferenceConfig", traits: {"smithy.api#required" => {}}))
    GetEvaluationJobResponse.add_member(:output_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationOutputDataConfig, location_name: "outputDataConfig", traits: {"smithy.api#required" => {}}))
    GetEvaluationJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetEvaluationJobResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetEvaluationJobResponse.add_member(:failure_messages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessages, location_name: "failureMessages"))
    GetEvaluationJobResponse.type = Types::GetEvaluationJobResponse
    GetFoundationModelAvailabilityRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelId, location_name: "modelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFoundationModelAvailabilityRequest.type = Types::GetFoundationModelAvailabilityRequest
    GetFoundationModelAvailabilityResponse.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelId, location_name: "modelId", traits: {"smithy.api#required" => {}}))
    GetFoundationModelAvailabilityResponse.add_member(:agreement_availability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgreementAvailability, location_name: "agreementAvailability", traits: {"smithy.api#required" => {}}))
    GetFoundationModelAvailabilityResponse.add_member(:authorization_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationStatus, location_name: "authorizationStatus", traits: {"smithy.api#required" => {}}))
    GetFoundationModelAvailabilityResponse.add_member(:entitlement_availability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementAvailability, location_name: "entitlementAvailability", traits: {"smithy.api#required" => {}}))
    GetFoundationModelAvailabilityResponse.add_member(:region_availability, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionAvailability, location_name: "regionAvailability", traits: {"smithy.api#required" => {}}))
    GetFoundationModelAvailabilityResponse.type = Types::GetFoundationModelAvailabilityResponse
    GetFoundationModelRequest.add_member(:model_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFoundationModelIdentifier, location_name: "modelIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFoundationModelRequest.type = Types::GetFoundationModelRequest
    GetFoundationModelResponse.add_member(:model_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FoundationModelDetails, location_name: "modelDetails"))
    GetFoundationModelResponse.type = Types::GetFoundationModelResponse
    GetGuardrailRequest.add_member(:guardrail_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailIdentifier, location_name: "guardrailIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGuardrailRequest.add_member(:guardrail_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailVersion, location_name: "guardrailVersion", traits: {"smithy.api#httpQuery" => "guardrailVersion"}))
    GetGuardrailRequest.type = Types::GetGuardrailRequest
    GetGuardrailResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetGuardrailResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailDescription, location_name: "description"))
    GetGuardrailResponse.add_member(:guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailId, location_name: "guardrailId", traits: {"smithy.api#required" => {}}))
    GetGuardrailResponse.add_member(:guardrail_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailArn, location_name: "guardrailArn", traits: {"smithy.api#required" => {}}))
    GetGuardrailResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    GetGuardrailResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetGuardrailResponse.add_member(:topic_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicPolicy, location_name: "topicPolicy"))
    GetGuardrailResponse.add_member(:content_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentPolicy, location_name: "contentPolicy"))
    GetGuardrailResponse.add_member(:word_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordPolicy, location_name: "wordPolicy"))
    GetGuardrailResponse.add_member(:sensitive_information_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicy, location_name: "sensitiveInformationPolicy"))
    GetGuardrailResponse.add_member(:contextual_grounding_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingPolicy, location_name: "contextualGroundingPolicy"))
    GetGuardrailResponse.add_member(:automated_reasoning_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningPolicy, location_name: "automatedReasoningPolicy"))
    GetGuardrailResponse.add_member(:cross_region_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailCrossRegionDetails, location_name: "crossRegionDetails"))
    GetGuardrailResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetGuardrailResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetGuardrailResponse.add_member(:status_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailStatusReasons, location_name: "statusReasons"))
    GetGuardrailResponse.add_member(:failure_recommendations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailFailureRecommendations, location_name: "failureRecommendations"))
    GetGuardrailResponse.add_member(:blocked_input_messaging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, location_name: "blockedInputMessaging", traits: {"smithy.api#required" => {}}))
    GetGuardrailResponse.add_member(:blocked_outputs_messaging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, location_name: "blockedOutputsMessaging", traits: {"smithy.api#required" => {}}))
    GetGuardrailResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetGuardrailResponse.type = Types::GetGuardrailResponse
    GetImportedModelRequest.add_member(:model_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedModelIdentifier, location_name: "modelIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportedModelRequest.type = Types::GetImportedModelRequest
    GetImportedModelResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedModelArn, location_name: "modelArn"))
    GetImportedModelResponse.add_member(:model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedModelName, location_name: "modelName"))
    GetImportedModelResponse.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: "jobName"))
    GetImportedModelResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelImportJobArn, location_name: "jobArn"))
    GetImportedModelResponse.add_member(:model_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDataSource, location_name: "modelDataSource"))
    GetImportedModelResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    GetImportedModelResponse.add_member(:model_architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "modelArchitecture"))
    GetImportedModelResponse.add_member(:model_kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "modelKmsKeyArn"))
    GetImportedModelResponse.add_member(:instruct_supported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstructSupported, location_name: "instructSupported"))
    GetImportedModelResponse.add_member(:custom_model_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelUnits, location_name: "customModelUnits"))
    GetImportedModelResponse.type = Types::GetImportedModelResponse
    GetInferenceProfileRequest.add_member(:inference_profile_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileIdentifier, location_name: "inferenceProfileIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetInferenceProfileRequest.type = Types::GetInferenceProfileRequest
    GetInferenceProfileResponse.add_member(:inference_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileName, location_name: "inferenceProfileName", traits: {"smithy.api#required" => {}}))
    GetInferenceProfileResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileDescription, location_name: "description"))
    GetInferenceProfileResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetInferenceProfileResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetInferenceProfileResponse.add_member(:inference_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileArn, location_name: "inferenceProfileArn", traits: {"smithy.api#required" => {}}))
    GetInferenceProfileResponse.add_member(:models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileModels, location_name: "models", traits: {"smithy.api#required" => {}}))
    GetInferenceProfileResponse.add_member(:inference_profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileId, location_name: "inferenceProfileId", traits: {"smithy.api#required" => {}}))
    GetInferenceProfileResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetInferenceProfileResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileType, location_name: "type", traits: {"smithy.api#required" => {}}))
    GetInferenceProfileResponse.type = Types::GetInferenceProfileResponse
    GetMarketplaceModelEndpointRequest.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "endpointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMarketplaceModelEndpointRequest.type = Types::GetMarketplaceModelEndpointRequest
    GetMarketplaceModelEndpointResponse.add_member(:marketplace_model_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketplaceModelEndpoint, location_name: "marketplaceModelEndpoint"))
    GetMarketplaceModelEndpointResponse.type = Types::GetMarketplaceModelEndpointResponse
    GetModelCopyJobRequest.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCopyJobArn, location_name: "jobArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelCopyJobRequest.type = Types::GetModelCopyJobRequest
    GetModelCopyJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCopyJobArn, location_name: "jobArn", traits: {"smithy.api#required" => {}}))
    GetModelCopyJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCopyJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetModelCopyJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetModelCopyJobResponse.add_member(:target_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelArn, location_name: "targetModelArn", traits: {"smithy.api#required" => {}}))
    GetModelCopyJobResponse.add_member(:target_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelName, location_name: "targetModelName"))
    GetModelCopyJobResponse.add_member(:source_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "sourceAccountId", traits: {"smithy.api#required" => {}}))
    GetModelCopyJobResponse.add_member(:source_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "sourceModelArn", traits: {"smithy.api#required" => {}}))
    GetModelCopyJobResponse.add_member(:target_model_kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "targetModelKmsKeyArn"))
    GetModelCopyJobResponse.add_member(:target_model_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "targetModelTags"))
    GetModelCopyJobResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetModelCopyJobResponse.add_member(:source_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelName, location_name: "sourceModelName"))
    GetModelCopyJobResponse.type = Types::GetModelCopyJobResponse
    GetModelCustomizationJobRequest.add_member(:job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomizationJobIdentifier, location_name: "jobIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelCustomizationJobRequest.type = Types::GetModelCustomizationJobRequest
    GetModelCustomizationJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, location_name: "jobArn", traits: {"smithy.api#required" => {}}))
    GetModelCustomizationJobResponse.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: "jobName", traits: {"smithy.api#required" => {}}))
    GetModelCustomizationJobResponse.add_member(:output_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelName, location_name: "outputModelName", traits: {"smithy.api#required" => {}}))
    GetModelCustomizationJobResponse.add_member(:output_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelArn, location_name: "outputModelArn"))
    GetModelCustomizationJobResponse.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken"))
    GetModelCustomizationJobResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    GetModelCustomizationJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomizationJobStatus, location_name: "status"))
    GetModelCustomizationJobResponse.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    GetModelCustomizationJobResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetModelCustomizationJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetModelCustomizationJobResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetModelCustomizationJobResponse.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetModelCustomizationJobResponse.add_member(:base_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FoundationModelArn, location_name: "baseModelArn", traits: {"smithy.api#required" => {}}))
    GetModelCustomizationJobResponse.add_member(:hyper_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomizationHyperParameters, location_name: "hyperParameters"))
    GetModelCustomizationJobResponse.add_member(:training_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDataConfig, location_name: "trainingDataConfig", traits: {"smithy.api#required" => {}}))
    GetModelCustomizationJobResponse.add_member(:validation_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationDataConfig, location_name: "validationDataConfig", traits: {"smithy.api#required" => {}}))
    GetModelCustomizationJobResponse.add_member(:output_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "outputDataConfig", traits: {"smithy.api#required" => {}}))
    GetModelCustomizationJobResponse.add_member(:customization_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    GetModelCustomizationJobResponse.add_member(:output_model_kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "outputModelKmsKeyArn"))
    GetModelCustomizationJobResponse.add_member(:training_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingMetrics, location_name: "trainingMetrics"))
    GetModelCustomizationJobResponse.add_member(:validation_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationMetrics, location_name: "validationMetrics"))
    GetModelCustomizationJobResponse.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    GetModelCustomizationJobResponse.add_member(:customization_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationConfig, location_name: "customizationConfig"))
    GetModelCustomizationJobResponse.type = Types::GetModelCustomizationJobResponse
    GetModelImportJobRequest.add_member(:job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelImportJobIdentifier, location_name: "jobIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelImportJobRequest.type = Types::GetModelImportJobRequest
    GetModelImportJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelImportJobArn, location_name: "jobArn"))
    GetModelImportJobResponse.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: "jobName"))
    GetModelImportJobResponse.add_member(:imported_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedModelName, location_name: "importedModelName"))
    GetModelImportJobResponse.add_member(:imported_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedModelArn, location_name: "importedModelArn"))
    GetModelImportJobResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    GetModelImportJobResponse.add_member(:model_data_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDataSource, location_name: "modelDataSource"))
    GetModelImportJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelImportJobStatus, location_name: "status"))
    GetModelImportJobResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetModelImportJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    GetModelImportJobResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetModelImportJobResponse.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetModelImportJobResponse.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    GetModelImportJobResponse.add_member(:imported_model_kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "importedModelKmsKeyArn"))
    GetModelImportJobResponse.type = Types::GetModelImportJobResponse
    GetModelInvocationJobRequest.add_member(:job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobIdentifier, location_name: "jobIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetModelInvocationJobRequest.type = Types::GetModelInvocationJobRequest
    GetModelInvocationJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobArn, location_name: "jobArn", traits: {"smithy.api#required" => {}}))
    GetModelInvocationJobResponse.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobName, location_name: "jobName"))
    GetModelInvocationJobResponse.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelId, location_name: "modelId", traits: {"smithy.api#required" => {}}))
    GetModelInvocationJobResponse.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationIdempotencyToken, location_name: "clientRequestToken"))
    GetModelInvocationJobResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    GetModelInvocationJobResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobStatus, location_name: "status"))
    GetModelInvocationJobResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    GetModelInvocationJobResponse.add_member(:submit_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "submitTime", traits: {"smithy.api#required" => {}}))
    GetModelInvocationJobResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetModelInvocationJobResponse.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetModelInvocationJobResponse.add_member(:input_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobInputDataConfig, location_name: "inputDataConfig", traits: {"smithy.api#required" => {}}))
    GetModelInvocationJobResponse.add_member(:output_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobOutputDataConfig, location_name: "outputDataConfig", traits: {"smithy.api#required" => {}}))
    GetModelInvocationJobResponse.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    GetModelInvocationJobResponse.add_member(:timeout_duration_in_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobTimeoutDurationInHours, location_name: "timeoutDurationInHours"))
    GetModelInvocationJobResponse.add_member(:job_expiration_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "jobExpirationTime"))
    GetModelInvocationJobResponse.type = Types::GetModelInvocationJobResponse
    GetModelInvocationLoggingConfigurationRequest.type = Types::GetModelInvocationLoggingConfigurationRequest
    GetModelInvocationLoggingConfigurationResponse.add_member(:logging_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "loggingConfig"))
    GetModelInvocationLoggingConfigurationResponse.type = Types::GetModelInvocationLoggingConfigurationResponse
    GetPromptRouterRequest.add_member(:prompt_router_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterArn, location_name: "promptRouterArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPromptRouterRequest.type = Types::GetPromptRouterRequest
    GetPromptRouterResponse.add_member(:prompt_router_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterName, location_name: "promptRouterName", traits: {"smithy.api#required" => {}}))
    GetPromptRouterResponse.add_member(:routing_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingCriteria, location_name: "routingCriteria", traits: {"smithy.api#required" => {}}))
    GetPromptRouterResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterDescription, location_name: "description"))
    GetPromptRouterResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetPromptRouterResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetPromptRouterResponse.add_member(:prompt_router_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterArn, location_name: "promptRouterArn", traits: {"smithy.api#required" => {}}))
    GetPromptRouterResponse.add_member(:models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterTargetModels, location_name: "models", traits: {"smithy.api#required" => {}}))
    GetPromptRouterResponse.add_member(:fallback_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterTargetModel, location_name: "fallbackModel", traits: {"smithy.api#required" => {}}))
    GetPromptRouterResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetPromptRouterResponse.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterType, location_name: "type", traits: {"smithy.api#required" => {}}))
    GetPromptRouterResponse.type = Types::GetPromptRouterResponse
    GetProvisionedModelThroughputRequest.add_member(:provisioned_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelId, location_name: "provisionedModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProvisionedModelThroughputRequest.type = Types::GetProvisionedModelThroughputRequest
    GetProvisionedModelThroughputResponse.add_member(:model_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "modelUnits", traits: {"smithy.api#required" => {}}))
    GetProvisionedModelThroughputResponse.add_member(:desired_model_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "desiredModelUnits", traits: {"smithy.api#required" => {}}))
    GetProvisionedModelThroughputResponse.add_member(:provisioned_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelName, location_name: "provisionedModelName", traits: {"smithy.api#required" => {}}))
    GetProvisionedModelThroughputResponse.add_member(:provisioned_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelArn, location_name: "provisionedModelArn", traits: {"smithy.api#required" => {}}))
    GetProvisionedModelThroughputResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "modelArn", traits: {"smithy.api#required" => {}}))
    GetProvisionedModelThroughputResponse.add_member(:desired_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "desiredModelArn", traits: {"smithy.api#required" => {}}))
    GetProvisionedModelThroughputResponse.add_member(:foundation_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FoundationModelArn, location_name: "foundationModelArn", traits: {"smithy.api#required" => {}}))
    GetProvisionedModelThroughputResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetProvisionedModelThroughputResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetProvisionedModelThroughputResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime", traits: {"smithy.api#required" => {}}))
    GetProvisionedModelThroughputResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetProvisionedModelThroughputResponse.add_member(:commitment_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitmentDuration, location_name: "commitmentDuration"))
    GetProvisionedModelThroughputResponse.add_member(:commitment_expiration_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "commitmentExpirationTime"))
    GetProvisionedModelThroughputResponse.type = Types::GetProvisionedModelThroughputResponse
    GetUseCaseForModelAccessRequest.type = Types::GetUseCaseForModelAccessRequest
    GetUseCaseForModelAccessResponse.add_member(:form_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcknowledgementFormDataBody, location_name: "formData", traits: {"smithy.api#required" => {}}))
    GetUseCaseForModelAccessResponse.type = Types::GetUseCaseForModelAccessResponse
    GuardrailAutomatedReasoningPolicy.add_member(:policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArnList, location_name: "policies", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#required" => {}}))
    GuardrailAutomatedReasoningPolicy.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningConfidenceFilterThreshold, location_name: "confidenceThreshold"))
    GuardrailAutomatedReasoningPolicy.type = Types::GuardrailAutomatedReasoningPolicy
    GuardrailAutomatedReasoningPolicyConfig.add_member(:policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArnList, location_name: "policies", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#required" => {}}))
    GuardrailAutomatedReasoningPolicyConfig.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningConfidenceFilterThreshold, location_name: "confidenceThreshold"))
    GuardrailAutomatedReasoningPolicyConfig.type = Types::GuardrailAutomatedReasoningPolicyConfig
    GuardrailConfiguration.add_member(:guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "guardrailId", traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^[a-z0-9]+$", "smithy.api#required" => {}}))
    GuardrailConfiguration.add_member(:guardrail_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "guardrailVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#pattern" => "^(([1-9][0-9]{0,7})|(DRAFT))$", "smithy.api#required" => {}}))
    GuardrailConfiguration.type = Types::GuardrailConfiguration
    GuardrailContentFilter.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFilterType, location_name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailContentFilter.add_member(:input_strength, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailFilterStrength, location_name: "inputStrength", traits: {"smithy.api#required" => {}}))
    GuardrailContentFilter.add_member(:output_strength, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailFilterStrength, location_name: "outputStrength", traits: {"smithy.api#required" => {}}))
    GuardrailContentFilter.add_member(:input_modalities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailModalities, location_name: "inputModalities"))
    GuardrailContentFilter.add_member(:output_modalities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailModalities, location_name: "outputModalities"))
    GuardrailContentFilter.add_member(:input_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFilterAction, location_name: "inputAction"))
    GuardrailContentFilter.add_member(:output_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFilterAction, location_name: "outputAction"))
    GuardrailContentFilter.add_member(:input_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "inputEnabled"))
    GuardrailContentFilter.add_member(:output_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "outputEnabled"))
    GuardrailContentFilter.type = Types::GuardrailContentFilter
    GuardrailContentFilterAction.add_member(:block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    GuardrailContentFilterAction.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailContentFilterConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFilterType, location_name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailContentFilterConfig.add_member(:input_strength, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailFilterStrength, location_name: "inputStrength", traits: {"smithy.api#required" => {}}))
    GuardrailContentFilterConfig.add_member(:output_strength, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailFilterStrength, location_name: "outputStrength", traits: {"smithy.api#required" => {}}))
    GuardrailContentFilterConfig.add_member(:input_modalities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailModalities, location_name: "inputModalities"))
    GuardrailContentFilterConfig.add_member(:output_modalities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailModalities, location_name: "outputModalities"))
    GuardrailContentFilterConfig.add_member(:input_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFilterAction, location_name: "inputAction"))
    GuardrailContentFilterConfig.add_member(:output_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFilterAction, location_name: "outputAction"))
    GuardrailContentFilterConfig.add_member(:input_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "inputEnabled"))
    GuardrailContentFilterConfig.add_member(:output_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "outputEnabled"))
    GuardrailContentFilterConfig.type = Types::GuardrailContentFilterConfig
    GuardrailContentFilterType.add_member(:sexual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SEXUAL", traits: {"smithy.api#enumValue" => "SEXUAL"}))
    GuardrailContentFilterType.add_member(:violence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VIOLENCE", traits: {"smithy.api#enumValue" => "VIOLENCE"}))
    GuardrailContentFilterType.add_member(:hate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HATE", traits: {"smithy.api#enumValue" => "HATE"}))
    GuardrailContentFilterType.add_member(:insults, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSULTS", traits: {"smithy.api#enumValue" => "INSULTS"}))
    GuardrailContentFilterType.add_member(:misconduct, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MISCONDUCT", traits: {"smithy.api#enumValue" => "MISCONDUCT"}))
    GuardrailContentFilterType.add_member(:prompt_attack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROMPT_ATTACK", traits: {"smithy.api#enumValue" => "PROMPT_ATTACK"}))
    GuardrailContentFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFilter)
    GuardrailContentFiltersConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFilterConfig)
    GuardrailContentFiltersTier.add_member(:tier_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFiltersTierName, location_name: "tierName", traits: {"smithy.api#required" => {}}))
    GuardrailContentFiltersTier.type = Types::GuardrailContentFiltersTier
    GuardrailContentFiltersTierConfig.add_member(:tier_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFiltersTierName, location_name: "tierName", traits: {"smithy.api#required" => {}}))
    GuardrailContentFiltersTierConfig.type = Types::GuardrailContentFiltersTierConfig
    GuardrailContentFiltersTierName.add_member(:classic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLASSIC", traits: {"smithy.api#enumValue" => "CLASSIC"}))
    GuardrailContentFiltersTierName.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    GuardrailContentPolicy.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFilters, location_name: "filters"))
    GuardrailContentPolicy.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFiltersTier, location_name: "tier"))
    GuardrailContentPolicy.type = Types::GuardrailContentPolicy
    GuardrailContentPolicyConfig.add_member(:filters_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFiltersConfig, location_name: "filtersConfig", traits: {"smithy.api#required" => {}}))
    GuardrailContentPolicyConfig.add_member(:tier_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentFiltersTierConfig, location_name: "tierConfig"))
    GuardrailContentPolicyConfig.type = Types::GuardrailContentPolicyConfig
    GuardrailContextualGroundingAction.add_member(:block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    GuardrailContextualGroundingAction.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailContextualGroundingFilter.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterType, location_name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailContextualGroundingFilter.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "threshold", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    GuardrailContextualGroundingFilter.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingAction, location_name: "action"))
    GuardrailContextualGroundingFilter.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "enabled"))
    GuardrailContextualGroundingFilter.type = Types::GuardrailContextualGroundingFilter
    GuardrailContextualGroundingFilterConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterType, location_name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailContextualGroundingFilterConfig.add_member(:threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "threshold", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    GuardrailContextualGroundingFilterConfig.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingAction, location_name: "action"))
    GuardrailContextualGroundingFilterConfig.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "enabled"))
    GuardrailContextualGroundingFilterConfig.type = Types::GuardrailContextualGroundingFilterConfig
    GuardrailContextualGroundingFilterType.add_member(:grounding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GROUNDING", traits: {"smithy.api#enumValue" => "GROUNDING"}))
    GuardrailContextualGroundingFilterType.add_member(:relevance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RELEVANCE", traits: {"smithy.api#enumValue" => "RELEVANCE"}))
    GuardrailContextualGroundingFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilter)
    GuardrailContextualGroundingFiltersConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterConfig)
    GuardrailContextualGroundingPolicy.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilters, location_name: "filters", traits: {"smithy.api#required" => {}}))
    GuardrailContextualGroundingPolicy.type = Types::GuardrailContextualGroundingPolicy
    GuardrailContextualGroundingPolicyConfig.add_member(:filters_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFiltersConfig, location_name: "filtersConfig", traits: {"smithy.api#required" => {}}))
    GuardrailContextualGroundingPolicyConfig.type = Types::GuardrailContextualGroundingPolicyConfig
    GuardrailCrossRegionConfig.add_member(:guardrail_profile_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailCrossRegionGuardrailProfileIdentifier, location_name: "guardrailProfileIdentifier", traits: {"smithy.api#required" => {}}))
    GuardrailCrossRegionConfig.type = Types::GuardrailCrossRegionConfig
    GuardrailCrossRegionDetails.add_member(:guardrail_profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailCrossRegionGuardrailProfileId, location_name: "guardrailProfileId"))
    GuardrailCrossRegionDetails.add_member(:guardrail_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailCrossRegionGuardrailProfileArn, location_name: "guardrailProfileArn"))
    GuardrailCrossRegionDetails.type = Types::GuardrailCrossRegionDetails
    GuardrailFailureRecommendations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailFailureRecommendation)
    GuardrailFilterStrength.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailFilterStrength.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    GuardrailFilterStrength.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    GuardrailFilterStrength.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    GuardrailManagedWordLists.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailManagedWords)
    GuardrailManagedWordListsConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailManagedWordsConfig)
    GuardrailManagedWords.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailManagedWordsType, location_name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailManagedWords.add_member(:input_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "inputAction"))
    GuardrailManagedWords.add_member(:output_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "outputAction"))
    GuardrailManagedWords.add_member(:input_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "inputEnabled"))
    GuardrailManagedWords.add_member(:output_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "outputEnabled"))
    GuardrailManagedWords.type = Types::GuardrailManagedWords
    GuardrailManagedWordsConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailManagedWordsType, location_name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailManagedWordsConfig.add_member(:input_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "inputAction"))
    GuardrailManagedWordsConfig.add_member(:output_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "outputAction"))
    GuardrailManagedWordsConfig.add_member(:input_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "inputEnabled"))
    GuardrailManagedWordsConfig.add_member(:output_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "outputEnabled"))
    GuardrailManagedWordsConfig.type = Types::GuardrailManagedWordsConfig
    GuardrailManagedWordsType.add_member(:profanity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROFANITY", traits: {"smithy.api#enumValue" => "PROFANITY"}))
    GuardrailModalities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailModality)
    GuardrailModality.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    GuardrailModality.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMAGE", traits: {"smithy.api#enumValue" => "IMAGE"}))
    GuardrailPiiEntities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPiiEntity)
    GuardrailPiiEntitiesConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPiiEntityConfig)
    GuardrailPiiEntity.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPiiEntityType, location_name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailPiiEntity.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "action", traits: {"smithy.api#required" => {}}))
    GuardrailPiiEntity.add_member(:input_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "inputAction"))
    GuardrailPiiEntity.add_member(:output_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "outputAction"))
    GuardrailPiiEntity.add_member(:input_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "inputEnabled"))
    GuardrailPiiEntity.add_member(:output_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "outputEnabled"))
    GuardrailPiiEntity.type = Types::GuardrailPiiEntity
    GuardrailPiiEntityConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPiiEntityType, location_name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailPiiEntityConfig.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "action", traits: {"smithy.api#required" => {}}))
    GuardrailPiiEntityConfig.add_member(:input_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "inputAction"))
    GuardrailPiiEntityConfig.add_member(:output_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "outputAction"))
    GuardrailPiiEntityConfig.add_member(:input_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "inputEnabled"))
    GuardrailPiiEntityConfig.add_member(:output_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "outputEnabled"))
    GuardrailPiiEntityConfig.type = Types::GuardrailPiiEntityConfig
    GuardrailPiiEntityType.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDRESS", traits: {"smithy.api#enumValue" => "ADDRESS"}))
    GuardrailPiiEntityType.add_member(:age, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AGE", traits: {"smithy.api#enumValue" => "AGE"}))
    GuardrailPiiEntityType.add_member(:aws_access_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_ACCESS_KEY", traits: {"smithy.api#enumValue" => "AWS_ACCESS_KEY"}))
    GuardrailPiiEntityType.add_member(:aws_secret_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_SECRET_KEY", traits: {"smithy.api#enumValue" => "AWS_SECRET_KEY"}))
    GuardrailPiiEntityType.add_member(:ca_health_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CA_HEALTH_NUMBER", traits: {"smithy.api#enumValue" => "CA_HEALTH_NUMBER"}))
    GuardrailPiiEntityType.add_member(:ca_social_insurance_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CA_SOCIAL_INSURANCE_NUMBER", traits: {"smithy.api#enumValue" => "CA_SOCIAL_INSURANCE_NUMBER"}))
    GuardrailPiiEntityType.add_member(:credit_debit_card_cvv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREDIT_DEBIT_CARD_CVV", traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_CARD_CVV"}))
    GuardrailPiiEntityType.add_member(:credit_debit_card_expiry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREDIT_DEBIT_CARD_EXPIRY", traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_CARD_EXPIRY"}))
    GuardrailPiiEntityType.add_member(:credit_debit_card_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREDIT_DEBIT_CARD_NUMBER", traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_CARD_NUMBER"}))
    GuardrailPiiEntityType.add_member(:driver_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DRIVER_ID", traits: {"smithy.api#enumValue" => "DRIVER_ID"}))
    GuardrailPiiEntityType.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EMAIL", traits: {"smithy.api#enumValue" => "EMAIL"}))
    GuardrailPiiEntityType.add_member(:international_bank_account_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNATIONAL_BANK_ACCOUNT_NUMBER", traits: {"smithy.api#enumValue" => "INTERNATIONAL_BANK_ACCOUNT_NUMBER"}))
    GuardrailPiiEntityType.add_member(:ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IP_ADDRESS", traits: {"smithy.api#enumValue" => "IP_ADDRESS"}))
    GuardrailPiiEntityType.add_member(:license_plate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LICENSE_PLATE", traits: {"smithy.api#enumValue" => "LICENSE_PLATE"}))
    GuardrailPiiEntityType.add_member(:mac_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MAC_ADDRESS", traits: {"smithy.api#enumValue" => "MAC_ADDRESS"}))
    GuardrailPiiEntityType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    GuardrailPiiEntityType.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PASSWORD", traits: {"smithy.api#enumValue" => "PASSWORD"}))
    GuardrailPiiEntityType.add_member(:phone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PHONE", traits: {"smithy.api#enumValue" => "PHONE"}))
    GuardrailPiiEntityType.add_member(:pin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PIN", traits: {"smithy.api#enumValue" => "PIN"}))
    GuardrailPiiEntityType.add_member(:swift_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SWIFT_CODE", traits: {"smithy.api#enumValue" => "SWIFT_CODE"}))
    GuardrailPiiEntityType.add_member(:uk_national_health_service_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UK_NATIONAL_HEALTH_SERVICE_NUMBER", traits: {"smithy.api#enumValue" => "UK_NATIONAL_HEALTH_SERVICE_NUMBER"}))
    GuardrailPiiEntityType.add_member(:uk_national_insurance_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UK_NATIONAL_INSURANCE_NUMBER", traits: {"smithy.api#enumValue" => "UK_NATIONAL_INSURANCE_NUMBER"}))
    GuardrailPiiEntityType.add_member(:uk_unique_taxpayer_reference_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", traits: {"smithy.api#enumValue" => "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"}))
    GuardrailPiiEntityType.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "URL", traits: {"smithy.api#enumValue" => "URL"}))
    GuardrailPiiEntityType.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USERNAME", traits: {"smithy.api#enumValue" => "USERNAME"}))
    GuardrailPiiEntityType.add_member(:us_bank_account_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US_BANK_ACCOUNT_NUMBER", traits: {"smithy.api#enumValue" => "US_BANK_ACCOUNT_NUMBER"}))
    GuardrailPiiEntityType.add_member(:us_bank_routing_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US_BANK_ROUTING_NUMBER", traits: {"smithy.api#enumValue" => "US_BANK_ROUTING_NUMBER"}))
    GuardrailPiiEntityType.add_member(:us_individual_tax_identification_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", traits: {"smithy.api#enumValue" => "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER"}))
    GuardrailPiiEntityType.add_member(:us_passport_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US_PASSPORT_NUMBER", traits: {"smithy.api#enumValue" => "US_PASSPORT_NUMBER"}))
    GuardrailPiiEntityType.add_member(:us_social_security_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "US_SOCIAL_SECURITY_NUMBER", traits: {"smithy.api#enumValue" => "US_SOCIAL_SECURITY_NUMBER"}))
    GuardrailPiiEntityType.add_member(:vehicle_identification_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VEHICLE_IDENTIFICATION_NUMBER", traits: {"smithy.api#enumValue" => "VEHICLE_IDENTIFICATION_NUMBER"}))
    GuardrailRegex.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    GuardrailRegex.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}}))
    GuardrailRegex.add_member(:pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "pattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#required" => {}}))
    GuardrailRegex.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "action", traits: {"smithy.api#required" => {}}))
    GuardrailRegex.add_member(:input_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "inputAction"))
    GuardrailRegex.add_member(:output_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "outputAction"))
    GuardrailRegex.add_member(:input_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "inputEnabled"))
    GuardrailRegex.add_member(:output_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "outputEnabled"))
    GuardrailRegex.type = Types::GuardrailRegex
    GuardrailRegexConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    GuardrailRegexConfig.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}}))
    GuardrailRegexConfig.add_member(:pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "pattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#required" => {}}))
    GuardrailRegexConfig.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "action", traits: {"smithy.api#required" => {}}))
    GuardrailRegexConfig.add_member(:input_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "inputAction"))
    GuardrailRegexConfig.add_member(:output_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "outputAction"))
    GuardrailRegexConfig.add_member(:input_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "inputEnabled"))
    GuardrailRegexConfig.add_member(:output_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "outputEnabled"))
    GuardrailRegexConfig.type = Types::GuardrailRegexConfig
    GuardrailRegexes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailRegex)
    GuardrailRegexesConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailRegexConfig)
    GuardrailSensitiveInformationAction.add_member(:block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    GuardrailSensitiveInformationAction.add_member(:anonymize, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANONYMIZE", traits: {"smithy.api#enumValue" => "ANONYMIZE"}))
    GuardrailSensitiveInformationAction.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailSensitiveInformationPolicy.add_member(:pii_entities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPiiEntities, location_name: "piiEntities"))
    GuardrailSensitiveInformationPolicy.add_member(:regexes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailRegexes, location_name: "regexes"))
    GuardrailSensitiveInformationPolicy.type = Types::GuardrailSensitiveInformationPolicy
    GuardrailSensitiveInformationPolicyConfig.add_member(:pii_entities_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailPiiEntitiesConfig, location_name: "piiEntitiesConfig"))
    GuardrailSensitiveInformationPolicyConfig.add_member(:regexes_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailRegexesConfig, location_name: "regexesConfig"))
    GuardrailSensitiveInformationPolicyConfig.type = Types::GuardrailSensitiveInformationPolicyConfig
    GuardrailStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    GuardrailStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    GuardrailStatus.add_member(:versioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VERSIONING", traits: {"smithy.api#enumValue" => "VERSIONING"}))
    GuardrailStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    GuardrailStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    GuardrailStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    GuardrailStatusReasons.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailStatusReason)
    GuardrailSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSummary)
    GuardrailSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GuardrailSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GuardrailSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GuardrailSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GuardrailSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailDescription, location_name: "description"))
    GuardrailSummary.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    GuardrailSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    GuardrailSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GuardrailSummary.add_member(:cross_region_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailCrossRegionDetails, location_name: "crossRegionDetails"))
    GuardrailSummary.type = Types::GuardrailSummary
    GuardrailTopic.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GuardrailTopic.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicDefinition, location_name: "definition", traits: {"smithy.api#required" => {}}))
    GuardrailTopic.add_member(:examples, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicExamples, location_name: "examples"))
    GuardrailTopic.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicType, location_name: "type"))
    GuardrailTopic.add_member(:input_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicAction, location_name: "inputAction"))
    GuardrailTopic.add_member(:output_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicAction, location_name: "outputAction"))
    GuardrailTopic.add_member(:input_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "inputEnabled"))
    GuardrailTopic.add_member(:output_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "outputEnabled"))
    GuardrailTopic.type = Types::GuardrailTopic
    GuardrailTopicAction.add_member(:block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    GuardrailTopicAction.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailTopicConfig.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GuardrailTopicConfig.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicDefinition, location_name: "definition", traits: {"smithy.api#required" => {}}))
    GuardrailTopicConfig.add_member(:examples, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicExamples, location_name: "examples"))
    GuardrailTopicConfig.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicType, location_name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailTopicConfig.add_member(:input_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicAction, location_name: "inputAction"))
    GuardrailTopicConfig.add_member(:output_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicAction, location_name: "outputAction"))
    GuardrailTopicConfig.add_member(:input_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "inputEnabled"))
    GuardrailTopicConfig.add_member(:output_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "outputEnabled"))
    GuardrailTopicConfig.type = Types::GuardrailTopicConfig
    GuardrailTopicExamples.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicExample)
    GuardrailTopicPolicy.add_member(:topics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopics, location_name: "topics", traits: {"smithy.api#required" => {}}))
    GuardrailTopicPolicy.add_member(:tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicsTier, location_name: "tier"))
    GuardrailTopicPolicy.type = Types::GuardrailTopicPolicy
    GuardrailTopicPolicyConfig.add_member(:topics_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicsConfig, location_name: "topicsConfig", traits: {"smithy.api#required" => {}}))
    GuardrailTopicPolicyConfig.add_member(:tier_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicsTierConfig, location_name: "tierConfig"))
    GuardrailTopicPolicyConfig.type = Types::GuardrailTopicPolicyConfig
    GuardrailTopicType.add_member(:deny, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    GuardrailTopics.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopic)
    GuardrailTopicsConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicConfig)
    GuardrailTopicsTier.add_member(:tier_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicsTierName, location_name: "tierName", traits: {"smithy.api#required" => {}}))
    GuardrailTopicsTier.type = Types::GuardrailTopicsTier
    GuardrailTopicsTierConfig.add_member(:tier_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicsTierName, location_name: "tierName", traits: {"smithy.api#required" => {}}))
    GuardrailTopicsTierConfig.type = Types::GuardrailTopicsTierConfig
    GuardrailTopicsTierName.add_member(:classic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLASSIC", traits: {"smithy.api#enumValue" => "CLASSIC"}))
    GuardrailTopicsTierName.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    GuardrailWord.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "text", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    GuardrailWord.add_member(:input_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "inputAction"))
    GuardrailWord.add_member(:output_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "outputAction"))
    GuardrailWord.add_member(:input_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "inputEnabled"))
    GuardrailWord.add_member(:output_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "outputEnabled"))
    GuardrailWord.type = Types::GuardrailWord
    GuardrailWordAction.add_member(:block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    GuardrailWordAction.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailWordConfig.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "text", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    GuardrailWordConfig.add_member(:input_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "inputAction"))
    GuardrailWordConfig.add_member(:output_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "outputAction"))
    GuardrailWordConfig.add_member(:input_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "inputEnabled"))
    GuardrailWordConfig.add_member(:output_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "outputEnabled"))
    GuardrailWordConfig.type = Types::GuardrailWordConfig
    GuardrailWordPolicy.add_member(:words, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWords, location_name: "words"))
    GuardrailWordPolicy.add_member(:managed_word_lists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailManagedWordLists, location_name: "managedWordLists"))
    GuardrailWordPolicy.type = Types::GuardrailWordPolicy
    GuardrailWordPolicyConfig.add_member(:words_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordsConfig, location_name: "wordsConfig"))
    GuardrailWordPolicyConfig.add_member(:managed_word_lists_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailManagedWordListsConfig, location_name: "managedWordListsConfig"))
    GuardrailWordPolicyConfig.type = Types::GuardrailWordPolicyConfig
    GuardrailWords.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWord)
    GuardrailWordsConfig.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordConfig)
    HumanEvaluationConfig.add_member(:human_workflow_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanWorkflowConfig, location_name: "humanWorkflowConfig"))
    HumanEvaluationConfig.add_member(:custom_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanEvaluationCustomMetrics, location_name: "customMetrics"))
    HumanEvaluationConfig.add_member(:dataset_metric_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationDatasetMetricConfigs, location_name: "datasetMetricConfigs", traits: {"smithy.api#required" => {}}))
    HumanEvaluationConfig.type = Types::HumanEvaluationConfig
    HumanEvaluationCustomMetric.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationMetricName, location_name: "name", traits: {"smithy.api#required" => {}}))
    HumanEvaluationCustomMetric.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationMetricDescription, location_name: "description"))
    HumanEvaluationCustomMetric.add_member(:rating_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationRatingMethod, location_name: "ratingMethod", traits: {"smithy.api#required" => {}}))
    HumanEvaluationCustomMetric.type = Types::HumanEvaluationCustomMetric
    HumanEvaluationCustomMetrics.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanEvaluationCustomMetric)
    HumanWorkflowConfig.add_member(:flow_definition_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SageMakerFlowDefinitionArn, location_name: "flowDefinitionArn", traits: {"smithy.api#required" => {}}))
    HumanWorkflowConfig.add_member(:instructions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanTaskInstructions, location_name: "instructions"))
    HumanWorkflowConfig.type = Types::HumanWorkflowConfig
    ImplicitFilterConfiguration.add_member(:metadata_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataAttributeSchemaList, location_name: "metadataAttributes", traits: {"smithy.api#required" => {}}))
    ImplicitFilterConfiguration.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelArn, location_name: "modelArn", traits: {"smithy.api#required" => {}}))
    ImplicitFilterConfiguration.type = Types::ImplicitFilterConfiguration
    ImportedModelSummary.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedModelArn, location_name: "modelArn", traits: {"smithy.api#required" => {}}))
    ImportedModelSummary.add_member(:model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedModelName, location_name: "modelName", traits: {"smithy.api#required" => {}}))
    ImportedModelSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    ImportedModelSummary.add_member(:instruct_supported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstructSupported, location_name: "instructSupported"))
    ImportedModelSummary.add_member(:model_architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArchitecture, location_name: "modelArchitecture"))
    ImportedModelSummary.type = Types::ImportedModelSummary
    ImportedModelSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedModelSummary)
    InferenceProfileModel.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FoundationModelArn, location_name: "modelArn"))
    InferenceProfileModel.type = Types::InferenceProfileModel
    InferenceProfileModelSource.add_member(:copy_from, Types::InferenceProfileModelSource::CopyFrom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileModelSourceArn, location_name: "copyFrom"))
    InferenceProfileModelSource.add_member(:unknown, Types::InferenceProfileModelSource::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    InferenceProfileModelSource.type = Types::InferenceProfileModelSource
    InferenceProfileModels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileModel)
    InferenceProfileStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InferenceProfileSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileSummary)
    InferenceProfileSummary.add_member(:inference_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileName, location_name: "inferenceProfileName", traits: {"smithy.api#required" => {}}))
    InferenceProfileSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileDescription, location_name: "description"))
    InferenceProfileSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    InferenceProfileSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    InferenceProfileSummary.add_member(:inference_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileArn, location_name: "inferenceProfileArn", traits: {"smithy.api#required" => {}}))
    InferenceProfileSummary.add_member(:models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileModels, location_name: "models", traits: {"smithy.api#required" => {}}))
    InferenceProfileSummary.add_member(:inference_profile_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileId, location_name: "inferenceProfileId", traits: {"smithy.api#required" => {}}))
    InferenceProfileSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    InferenceProfileSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileType, location_name: "type", traits: {"smithy.api#required" => {}}))
    InferenceProfileSummary.type = Types::InferenceProfileSummary
    InferenceProfileType.add_member(:system_defined, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYSTEM_DEFINED", traits: {"smithy.api#enumValue" => "SYSTEM_DEFINED"}))
    InferenceProfileType.add_member(:application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPLICATION", traits: {"smithy.api#enumValue" => "APPLICATION"}))
    InferenceType.add_member(:on_demand, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    InferenceType.add_member(:provisioned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONED", traits: {"smithy.api#enumValue" => "PROVISIONED"}))
    InferenceTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceType)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.type = Types::InternalServerException
    InvocationLogSource.add_member(:s3_uri, Types::InvocationLogSource::S3Uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri"))
    InvocationLogSource.add_member(:unknown, Types::InvocationLogSource::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    InvocationLogSource.type = Types::InvocationLogSource
    InvocationLogsConfig.add_member(:use_prompt_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsePromptResponse, location_name: "usePromptResponse", traits: {"smithy.api#default" => false}))
    InvocationLogsConfig.add_member(:invocation_log_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvocationLogSource, location_name: "invocationLogSource", traits: {"smithy.api#required" => {}}))
    InvocationLogsConfig.add_member(:request_metadata_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestMetadataFilters, location_name: "requestMetadataFilters"))
    InvocationLogsConfig.type = Types::InvocationLogsConfig
    JobStatusDetails.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    JobStatusDetails.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    JobStatusDetails.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "Stopping"}))
    JobStatusDetails.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "Stopped"}))
    JobStatusDetails.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    JobStatusDetails.add_member(:not_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NotStarted"}))
    KbInferenceConfig.add_member(:text_inference_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextInferenceConfig, location_name: "textInferenceConfig"))
    KbInferenceConfig.type = Types::KbInferenceConfig
    KnowledgeBaseConfig.add_member(:retrieve_config, Types::KnowledgeBaseConfig::RetrieveConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieveConfig, location_name: "retrieveConfig"))
    KnowledgeBaseConfig.add_member(:retrieve_and_generate_config, Types::KnowledgeBaseConfig::RetrieveAndGenerateConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieveAndGenerateConfiguration, location_name: "retrieveAndGenerateConfig"))
    KnowledgeBaseConfig.add_member(:unknown, Types::KnowledgeBaseConfig::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    KnowledgeBaseConfig.type = Types::KnowledgeBaseConfig
    KnowledgeBaseRetrievalConfiguration.add_member(:vector_search_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseVectorSearchConfiguration, location_name: "vectorSearchConfiguration", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseRetrievalConfiguration.type = Types::KnowledgeBaseRetrievalConfiguration
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseId, location_name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelArn, location_name: "modelArn", traits: {"smithy.api#required" => {}}))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:retrieval_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseRetrievalConfiguration, location_name: "retrievalConfiguration"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:generation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerationConfiguration, location_name: "generationConfiguration"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:orchestration_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrchestrationConfiguration, location_name: "orchestrationConfiguration"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.type = Types::KnowledgeBaseRetrieveAndGenerateConfiguration
    KnowledgeBaseVectorSearchConfiguration.add_member(:number_of_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "numberOfResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    KnowledgeBaseVectorSearchConfiguration.add_member(:override_search_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchType, location_name: "overrideSearchType"))
    KnowledgeBaseVectorSearchConfiguration.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalFilter, location_name: "filter"))
    KnowledgeBaseVectorSearchConfiguration.add_member(:implicit_filter_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImplicitFilterConfiguration, location_name: "implicitFilterConfiguration"))
    KnowledgeBaseVectorSearchConfiguration.add_member(:reranking_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchRerankingConfiguration, location_name: "rerankingConfiguration"))
    KnowledgeBaseVectorSearchConfiguration.type = Types::KnowledgeBaseVectorSearchConfiguration
    LegalTerm.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "url"))
    LegalTerm.type = Types::LegalTerm
    ListAutomatedReasoningPoliciesRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpQuery" => "policyArn"}))
    ListAutomatedReasoningPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAutomatedReasoningPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 25, "smithy.api#httpQuery" => "maxResults"}))
    ListAutomatedReasoningPoliciesRequest.type = Types::ListAutomatedReasoningPoliciesRequest
    ListAutomatedReasoningPoliciesResponse.add_member(:automated_reasoning_policy_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicySummaries, location_name: "automatedReasoningPolicySummaries", traits: {"smithy.api#required" => {}}))
    ListAutomatedReasoningPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAutomatedReasoningPoliciesResponse.type = Types::ListAutomatedReasoningPoliciesResponse
    ListAutomatedReasoningPolicyBuildWorkflowsRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAutomatedReasoningPolicyBuildWorkflowsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAutomatedReasoningPolicyBuildWorkflowsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 25, "smithy.api#httpQuery" => "maxResults"}))
    ListAutomatedReasoningPolicyBuildWorkflowsRequest.type = Types::ListAutomatedReasoningPolicyBuildWorkflowsRequest
    ListAutomatedReasoningPolicyBuildWorkflowsResponse.add_member(:automated_reasoning_policy_build_workflow_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowSummaries, location_name: "automatedReasoningPolicyBuildWorkflowSummaries", traits: {"smithy.api#required" => {}}))
    ListAutomatedReasoningPolicyBuildWorkflowsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAutomatedReasoningPolicyBuildWorkflowsResponse.type = Types::ListAutomatedReasoningPolicyBuildWorkflowsResponse
    ListAutomatedReasoningPolicyTestCasesRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAutomatedReasoningPolicyTestCasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "nextToken"}))
    ListAutomatedReasoningPolicyTestCasesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 25, "smithy.api#httpQuery" => "maxResults"}))
    ListAutomatedReasoningPolicyTestCasesRequest.type = Types::ListAutomatedReasoningPolicyTestCasesRequest
    ListAutomatedReasoningPolicyTestCasesResponse.add_member(:test_cases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseList, location_name: "testCases", traits: {"smithy.api#required" => {}}))
    ListAutomatedReasoningPolicyTestCasesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAutomatedReasoningPolicyTestCasesResponse.type = Types::ListAutomatedReasoningPolicyTestCasesResponse
    ListAutomatedReasoningPolicyTestResultsRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAutomatedReasoningPolicyTestResultsRequest.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAutomatedReasoningPolicyTestResultsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "nextToken"}))
    ListAutomatedReasoningPolicyTestResultsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 25, "smithy.api#httpQuery" => "maxResults"}))
    ListAutomatedReasoningPolicyTestResultsRequest.type = Types::ListAutomatedReasoningPolicyTestResultsRequest
    ListAutomatedReasoningPolicyTestResultsResponse.add_member(:test_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestList, location_name: "testResults", traits: {"smithy.api#required" => {}}))
    ListAutomatedReasoningPolicyTestResultsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAutomatedReasoningPolicyTestResultsResponse.type = Types::ListAutomatedReasoningPolicyTestResultsResponse
    ListCustomModelDeploymentsRequest.add_member(:created_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdBefore", traits: {"smithy.api#httpQuery" => "createdBefore"}))
    ListCustomModelDeploymentsRequest.add_member(:created_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAfter", traits: {"smithy.api#httpQuery" => "createdAfter"}))
    ListCustomModelDeploymentsRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelDeploymentName, location_name: "nameContains", traits: {"smithy.api#httpQuery" => "nameContains"}))
    ListCustomModelDeploymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCustomModelDeploymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCustomModelDeploymentsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortModelsBy, location_name: "sortBy", traits: {"smithy.api#httpQuery" => "sortBy"}))
    ListCustomModelDeploymentsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder", traits: {"smithy.api#httpQuery" => "sortOrder"}))
    ListCustomModelDeploymentsRequest.add_member(:status_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelDeploymentStatus, location_name: "statusEquals", traits: {"smithy.api#httpQuery" => "statusEquals"}))
    ListCustomModelDeploymentsRequest.add_member(:model_arn_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelArn, location_name: "modelArnEquals", traits: {"smithy.api#httpQuery" => "modelArnEquals"}))
    ListCustomModelDeploymentsRequest.type = Types::ListCustomModelDeploymentsRequest
    ListCustomModelDeploymentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCustomModelDeploymentsResponse.add_member(:model_deployment_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelDeploymentSummaryList, location_name: "modelDeploymentSummaries"))
    ListCustomModelDeploymentsResponse.type = Types::ListCustomModelDeploymentsResponse
    ListCustomModelsRequest.add_member(:creation_time_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimeBefore", traits: {"smithy.api#httpQuery" => "creationTimeBefore"}))
    ListCustomModelsRequest.add_member(:creation_time_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimeAfter", traits: {"smithy.api#httpQuery" => "creationTimeAfter"}))
    ListCustomModelsRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelName, location_name: "nameContains", traits: {"smithy.api#httpQuery" => "nameContains"}))
    ListCustomModelsRequest.add_member(:base_model_arn_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "baseModelArnEquals", traits: {"smithy.api#httpQuery" => "baseModelArnEquals"}))
    ListCustomModelsRequest.add_member(:foundation_model_arn_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FoundationModelArn, location_name: "foundationModelArnEquals", traits: {"smithy.api#httpQuery" => "foundationModelArnEquals"}))
    ListCustomModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCustomModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCustomModelsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortModelsBy, location_name: "sortBy", traits: {"smithy.api#httpQuery" => "sortBy"}))
    ListCustomModelsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder", traits: {"smithy.api#httpQuery" => "sortOrder"}))
    ListCustomModelsRequest.add_member(:is_owned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isOwned", traits: {"smithy.api#httpQuery" => "isOwned"}))
    ListCustomModelsRequest.add_member(:model_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelStatus, location_name: "modelStatus", traits: {"smithy.api#httpQuery" => "modelStatus"}))
    ListCustomModelsRequest.type = Types::ListCustomModelsRequest
    ListCustomModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCustomModelsResponse.add_member(:model_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelSummaryList, location_name: "modelSummaries"))
    ListCustomModelsResponse.type = Types::ListCustomModelsResponse
    ListEvaluationJobsRequest.add_member(:creation_time_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimeAfter", traits: {"smithy.api#httpQuery" => "creationTimeAfter"}))
    ListEvaluationJobsRequest.add_member(:creation_time_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimeBefore", traits: {"smithy.api#httpQuery" => "creationTimeBefore"}))
    ListEvaluationJobsRequest.add_member(:status_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobStatus, location_name: "statusEquals", traits: {"smithy.api#httpQuery" => "statusEquals"}))
    ListEvaluationJobsRequest.add_member(:application_type_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationType, location_name: "applicationTypeEquals", traits: {"smithy.api#httpQuery" => "applicationTypeEquals"}))
    ListEvaluationJobsRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobName, location_name: "nameContains", traits: {"smithy.api#httpQuery" => "nameContains"}))
    ListEvaluationJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListEvaluationJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEvaluationJobsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortJobsBy, location_name: "sortBy", traits: {"smithy.api#httpQuery" => "sortBy"}))
    ListEvaluationJobsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder", traits: {"smithy.api#httpQuery" => "sortOrder"}))
    ListEvaluationJobsRequest.type = Types::ListEvaluationJobsRequest
    ListEvaluationJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEvaluationJobsResponse.add_member(:job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationSummaries, location_name: "jobSummaries"))
    ListEvaluationJobsResponse.type = Types::ListEvaluationJobsResponse
    ListFoundationModelAgreementOffersRequest.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelId, location_name: "modelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFoundationModelAgreementOffersRequest.add_member(:offer_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferType, location_name: "offerType", traits: {"smithy.api#httpQuery" => "offerType"}))
    ListFoundationModelAgreementOffersRequest.type = Types::ListFoundationModelAgreementOffersRequest
    ListFoundationModelAgreementOffersResponse.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockModelId, location_name: "modelId", traits: {"smithy.api#required" => {}}))
    ListFoundationModelAgreementOffersResponse.add_member(:offers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Offers, location_name: "offers", traits: {"smithy.api#required" => {}}))
    ListFoundationModelAgreementOffersResponse.type = Types::ListFoundationModelAgreementOffersResponse
    ListFoundationModelsRequest.add_member(:by_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Provider, location_name: "byProvider", traits: {"smithy.api#httpQuery" => "byProvider"}))
    ListFoundationModelsRequest.add_member(:by_customization_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomization, location_name: "byCustomizationType", traits: {"smithy.api#httpQuery" => "byCustomizationType"}))
    ListFoundationModelsRequest.add_member(:by_output_modality, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelModality, location_name: "byOutputModality", traits: {"smithy.api#httpQuery" => "byOutputModality"}))
    ListFoundationModelsRequest.add_member(:by_inference_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceType, location_name: "byInferenceType", traits: {"smithy.api#httpQuery" => "byInferenceType"}))
    ListFoundationModelsRequest.type = Types::ListFoundationModelsRequest
    ListFoundationModelsResponse.add_member(:model_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FoundationModelSummaryList, location_name: "modelSummaries"))
    ListFoundationModelsResponse.type = Types::ListFoundationModelsResponse
    ListGuardrailsRequest.add_member(:guardrail_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailIdentifier, location_name: "guardrailIdentifier", traits: {"smithy.api#httpQuery" => "guardrailIdentifier"}))
    ListGuardrailsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListGuardrailsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGuardrailsRequest.type = Types::ListGuardrailsRequest
    ListGuardrailsResponse.add_member(:guardrails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSummaries, location_name: "guardrails", traits: {"smithy.api#required" => {}}))
    ListGuardrailsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListGuardrailsResponse.type = Types::ListGuardrailsResponse
    ListImportedModelsRequest.add_member(:creation_time_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimeBefore", traits: {"smithy.api#httpQuery" => "creationTimeBefore"}))
    ListImportedModelsRequest.add_member(:creation_time_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimeAfter", traits: {"smithy.api#httpQuery" => "creationTimeAfter"}))
    ListImportedModelsRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedModelName, location_name: "nameContains", traits: {"smithy.api#httpQuery" => "nameContains"}))
    ListImportedModelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListImportedModelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListImportedModelsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortModelsBy, location_name: "sortBy", traits: {"smithy.api#httpQuery" => "sortBy"}))
    ListImportedModelsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder", traits: {"smithy.api#httpQuery" => "sortOrder"}))
    ListImportedModelsRequest.type = Types::ListImportedModelsRequest
    ListImportedModelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImportedModelsResponse.add_member(:model_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedModelSummaryList, location_name: "modelSummaries"))
    ListImportedModelsResponse.type = Types::ListImportedModelsResponse
    ListInferenceProfilesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListInferenceProfilesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListInferenceProfilesRequest.add_member(:type_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileType, location_name: "typeEquals", traits: {"smithy.api#httpQuery" => "type"}))
    ListInferenceProfilesRequest.type = Types::ListInferenceProfilesRequest
    ListInferenceProfilesResponse.add_member(:inference_profile_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InferenceProfileSummaries, location_name: "inferenceProfileSummaries"))
    ListInferenceProfilesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListInferenceProfilesResponse.type = Types::ListInferenceProfilesResponse
    ListMarketplaceModelEndpointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMarketplaceModelEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMarketplaceModelEndpointsRequest.add_member(:model_source_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelSourceIdentifier, location_name: "modelSourceEquals", traits: {"smithy.api#httpQuery" => "modelSourceIdentifier"}))
    ListMarketplaceModelEndpointsRequest.type = Types::ListMarketplaceModelEndpointsRequest
    ListMarketplaceModelEndpointsResponse.add_member(:marketplace_model_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketplaceModelEndpointSummaries, location_name: "marketplaceModelEndpoints"))
    ListMarketplaceModelEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListMarketplaceModelEndpointsResponse.type = Types::ListMarketplaceModelEndpointsResponse
    ListModelCopyJobsRequest.add_member(:creation_time_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimeAfter", traits: {"smithy.api#httpQuery" => "creationTimeAfter"}))
    ListModelCopyJobsRequest.add_member(:creation_time_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimeBefore", traits: {"smithy.api#httpQuery" => "creationTimeBefore"}))
    ListModelCopyJobsRequest.add_member(:status_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCopyJobStatus, location_name: "statusEquals", traits: {"smithy.api#httpQuery" => "statusEquals"}))
    ListModelCopyJobsRequest.add_member(:source_account_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "sourceAccountEquals", traits: {"smithy.api#httpQuery" => "sourceAccountEquals"}))
    ListModelCopyJobsRequest.add_member(:source_model_arn_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "sourceModelArnEquals", traits: {"smithy.api#httpQuery" => "sourceModelArnEquals"}))
    ListModelCopyJobsRequest.add_member(:target_model_name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelName, location_name: "targetModelNameContains", traits: {"smithy.api#httpQuery" => "outputModelNameContains"}))
    ListModelCopyJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListModelCopyJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListModelCopyJobsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortJobsBy, location_name: "sortBy", traits: {"smithy.api#httpQuery" => "sortBy"}))
    ListModelCopyJobsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder", traits: {"smithy.api#httpQuery" => "sortOrder"}))
    ListModelCopyJobsRequest.type = Types::ListModelCopyJobsRequest
    ListModelCopyJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListModelCopyJobsResponse.add_member(:model_copy_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCopyJobSummaries, location_name: "modelCopyJobSummaries"))
    ListModelCopyJobsResponse.type = Types::ListModelCopyJobsResponse
    ListModelCustomizationJobsRequest.add_member(:creation_time_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimeAfter", traits: {"smithy.api#httpQuery" => "creationTimeAfter"}))
    ListModelCustomizationJobsRequest.add_member(:creation_time_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimeBefore", traits: {"smithy.api#httpQuery" => "creationTimeBefore"}))
    ListModelCustomizationJobsRequest.add_member(:status_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FineTuningJobStatus, location_name: "statusEquals", traits: {"smithy.api#httpQuery" => "statusEquals"}))
    ListModelCustomizationJobsRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: "nameContains", traits: {"smithy.api#httpQuery" => "nameContains"}))
    ListModelCustomizationJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListModelCustomizationJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListModelCustomizationJobsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortJobsBy, location_name: "sortBy", traits: {"smithy.api#httpQuery" => "sortBy"}))
    ListModelCustomizationJobsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder", traits: {"smithy.api#httpQuery" => "sortOrder"}))
    ListModelCustomizationJobsRequest.type = Types::ListModelCustomizationJobsRequest
    ListModelCustomizationJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListModelCustomizationJobsResponse.add_member(:model_customization_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomizationJobSummaries, location_name: "modelCustomizationJobSummaries"))
    ListModelCustomizationJobsResponse.type = Types::ListModelCustomizationJobsResponse
    ListModelImportJobsRequest.add_member(:creation_time_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimeAfter", traits: {"smithy.api#httpQuery" => "creationTimeAfter"}))
    ListModelImportJobsRequest.add_member(:creation_time_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimeBefore", traits: {"smithy.api#httpQuery" => "creationTimeBefore"}))
    ListModelImportJobsRequest.add_member(:status_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelImportJobStatus, location_name: "statusEquals", traits: {"smithy.api#httpQuery" => "statusEquals"}))
    ListModelImportJobsRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: "nameContains", traits: {"smithy.api#httpQuery" => "nameContains"}))
    ListModelImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListModelImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListModelImportJobsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortJobsBy, location_name: "sortBy", traits: {"smithy.api#httpQuery" => "sortBy"}))
    ListModelImportJobsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder", traits: {"smithy.api#httpQuery" => "sortOrder"}))
    ListModelImportJobsRequest.type = Types::ListModelImportJobsRequest
    ListModelImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListModelImportJobsResponse.add_member(:model_import_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelImportJobSummaries, location_name: "modelImportJobSummaries"))
    ListModelImportJobsResponse.type = Types::ListModelImportJobsResponse
    ListModelInvocationJobsRequest.add_member(:submit_time_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "submitTimeAfter", traits: {"smithy.api#httpQuery" => "submitTimeAfter"}))
    ListModelInvocationJobsRequest.add_member(:submit_time_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "submitTimeBefore", traits: {"smithy.api#httpQuery" => "submitTimeBefore"}))
    ListModelInvocationJobsRequest.add_member(:status_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobStatus, location_name: "statusEquals", traits: {"smithy.api#httpQuery" => "statusEquals"}))
    ListModelInvocationJobsRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobName, location_name: "nameContains", traits: {"smithy.api#httpQuery" => "nameContains"}))
    ListModelInvocationJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListModelInvocationJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListModelInvocationJobsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortJobsBy, location_name: "sortBy", traits: {"smithy.api#httpQuery" => "sortBy"}))
    ListModelInvocationJobsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder", traits: {"smithy.api#httpQuery" => "sortOrder"}))
    ListModelInvocationJobsRequest.type = Types::ListModelInvocationJobsRequest
    ListModelInvocationJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListModelInvocationJobsResponse.add_member(:invocation_job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobSummaries, location_name: "invocationJobSummaries"))
    ListModelInvocationJobsResponse.type = Types::ListModelInvocationJobsResponse
    ListPromptRoutersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListPromptRoutersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPromptRoutersRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterType, location_name: "type", traits: {"smithy.api#default" => "default", "smithy.api#httpQuery" => "type"}))
    ListPromptRoutersRequest.type = Types::ListPromptRoutersRequest
    ListPromptRoutersResponse.add_member(:prompt_router_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterSummaries, location_name: "promptRouterSummaries"))
    ListPromptRoutersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPromptRoutersResponse.type = Types::ListPromptRoutersResponse
    ListProvisionedModelThroughputsRequest.add_member(:creation_time_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimeAfter", traits: {"smithy.api#httpQuery" => "creationTimeAfter"}))
    ListProvisionedModelThroughputsRequest.add_member(:creation_time_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTimeBefore", traits: {"smithy.api#httpQuery" => "creationTimeBefore"}))
    ListProvisionedModelThroughputsRequest.add_member(:status_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelStatus, location_name: "statusEquals", traits: {"smithy.api#httpQuery" => "statusEquals"}))
    ListProvisionedModelThroughputsRequest.add_member(:model_arn_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "modelArnEquals", traits: {"smithy.api#httpQuery" => "modelArnEquals"}))
    ListProvisionedModelThroughputsRequest.add_member(:name_contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelName, location_name: "nameContains", traits: {"smithy.api#httpQuery" => "nameContains"}))
    ListProvisionedModelThroughputsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProvisionedModelThroughputsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProvisionedModelThroughputsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortByProvisionedModels, location_name: "sortBy", traits: {"smithy.api#httpQuery" => "sortBy"}))
    ListProvisionedModelThroughputsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "sortOrder", traits: {"smithy.api#httpQuery" => "sortOrder"}))
    ListProvisionedModelThroughputsRequest.type = Types::ListProvisionedModelThroughputsRequest
    ListProvisionedModelThroughputsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListProvisionedModelThroughputsResponse.add_member(:provisioned_model_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelSummaries, location_name: "provisionedModelSummaries"))
    ListProvisionedModelThroughputsResponse.type = Types::ListProvisionedModelThroughputsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourcesArn, location_name: "resourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LoggingConfig.add_member(:cloud_watch_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchConfig, location_name: "cloudWatchConfig"))
    LoggingConfig.add_member(:s3_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Config, location_name: "s3Config"))
    LoggingConfig.add_member(:text_data_delivery_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "textDataDeliveryEnabled"))
    LoggingConfig.add_member(:image_data_delivery_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "imageDataDeliveryEnabled"))
    LoggingConfig.add_member(:embedding_data_delivery_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "embeddingDataDeliveryEnabled"))
    LoggingConfig.add_member(:video_data_delivery_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "videoDataDeliveryEnabled"))
    LoggingConfig.type = Types::LoggingConfig
    MarketplaceModelEndpoint.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "endpointArn", traits: {"smithy.api#required" => {}}))
    MarketplaceModelEndpoint.add_member(:model_source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelSourceIdentifier, location_name: "modelSourceIdentifier", traits: {"smithy.api#required" => {}}))
    MarketplaceModelEndpoint.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    MarketplaceModelEndpoint.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    MarketplaceModelEndpoint.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    MarketplaceModelEndpoint.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    MarketplaceModelEndpoint.add_member(:endpoint_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfig, location_name: "endpointConfig", traits: {"smithy.api#required" => {}}))
    MarketplaceModelEndpoint.add_member(:endpoint_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "endpointStatus", traits: {"smithy.api#required" => {}}))
    MarketplaceModelEndpoint.add_member(:endpoint_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "endpointStatusMessage"))
    MarketplaceModelEndpoint.type = Types::MarketplaceModelEndpoint
    MarketplaceModelEndpointSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketplaceModelEndpointSummary)
    MarketplaceModelEndpointSummary.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "endpointArn", traits: {"smithy.api#required" => {}}))
    MarketplaceModelEndpointSummary.add_member(:model_source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelSourceIdentifier, location_name: "modelSourceIdentifier", traits: {"smithy.api#required" => {}}))
    MarketplaceModelEndpointSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    MarketplaceModelEndpointSummary.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusMessage"))
    MarketplaceModelEndpointSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    MarketplaceModelEndpointSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    MarketplaceModelEndpointSummary.type = Types::MarketplaceModelEndpointSummary
    MetadataAttributeSchema.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]+$", "smithy.api#required" => {}}))
    MetadataAttributeSchema.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeType, location_name: "type", traits: {"smithy.api#required" => {}}))
    MetadataAttributeSchema.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]+$", "smithy.api#required" => {}}))
    MetadataAttributeSchema.type = Types::MetadataAttributeSchema
    MetadataAttributeSchemaList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataAttributeSchema)
    MetadataConfigurationForReranking.add_member(:selection_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RerankingMetadataSelectionMode, location_name: "selectionMode", traits: {"smithy.api#required" => {}}))
    MetadataConfigurationForReranking.add_member(:selective_mode_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RerankingMetadataSelectiveModeConfiguration, location_name: "selectiveModeConfiguration"))
    MetadataConfigurationForReranking.type = Types::MetadataConfigurationForReranking
    ModelCopyJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    ModelCopyJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    ModelCopyJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    ModelCopyJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCopyJobSummary)
    ModelCopyJobSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCopyJobArn, location_name: "jobArn", traits: {"smithy.api#required" => {}}))
    ModelCopyJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCopyJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ModelCopyJobSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    ModelCopyJobSummary.add_member(:target_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelArn, location_name: "targetModelArn", traits: {"smithy.api#required" => {}}))
    ModelCopyJobSummary.add_member(:target_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelName, location_name: "targetModelName"))
    ModelCopyJobSummary.add_member(:source_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "sourceAccountId", traits: {"smithy.api#required" => {}}))
    ModelCopyJobSummary.add_member(:source_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "sourceModelArn", traits: {"smithy.api#required" => {}}))
    ModelCopyJobSummary.add_member(:target_model_kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "targetModelKmsKeyArn"))
    ModelCopyJobSummary.add_member(:target_model_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "targetModelTags"))
    ModelCopyJobSummary.add_member(:failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    ModelCopyJobSummary.add_member(:source_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelName, location_name: "sourceModelName"))
    ModelCopyJobSummary.type = Types::ModelCopyJobSummary
    ModelCustomization.add_member(:fine_tuning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FINE_TUNING", traits: {"smithy.api#enumValue" => "FINE_TUNING"}))
    ModelCustomization.add_member(:continued_pre_training, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTINUED_PRE_TRAINING", traits: {"smithy.api#enumValue" => "CONTINUED_PRE_TRAINING"}))
    ModelCustomization.add_member(:distillation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISTILLATION", traits: {"smithy.api#enumValue" => "DISTILLATION"}))
    ModelCustomizationHyperParameters.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ModelCustomizationHyperParameters.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ModelCustomizationJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    ModelCustomizationJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    ModelCustomizationJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    ModelCustomizationJobStatus.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "Stopping"}))
    ModelCustomizationJobStatus.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "Stopped"}))
    ModelCustomizationJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomizationJobSummary)
    ModelCustomizationJobSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, location_name: "jobArn", traits: {"smithy.api#required" => {}}))
    ModelCustomizationJobSummary.add_member(:base_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "baseModelArn", traits: {"smithy.api#required" => {}}))
    ModelCustomizationJobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: "jobName", traits: {"smithy.api#required" => {}}))
    ModelCustomizationJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomizationJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ModelCustomizationJobSummary.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    ModelCustomizationJobSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    ModelCustomizationJobSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    ModelCustomizationJobSummary.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    ModelCustomizationJobSummary.add_member(:custom_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelArn, location_name: "customModelArn"))
    ModelCustomizationJobSummary.add_member(:custom_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomModelName, location_name: "customModelName"))
    ModelCustomizationJobSummary.add_member(:customization_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    ModelCustomizationJobSummary.type = Types::ModelCustomizationJobSummary
    ModelCustomizationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomization)
    ModelDataSource.add_member(:s3_data_source, Types::ModelDataSource::S3DataSource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3DataSource, location_name: "s3DataSource"))
    ModelDataSource.add_member(:unknown, Types::ModelDataSource::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ModelDataSource.type = Types::ModelDataSource
    ModelImportJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    ModelImportJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    ModelImportJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    ModelImportJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelImportJobSummary)
    ModelImportJobSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelImportJobArn, location_name: "jobArn", traits: {"smithy.api#required" => {}}))
    ModelImportJobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: "jobName", traits: {"smithy.api#required" => {}}))
    ModelImportJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelImportJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ModelImportJobSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    ModelImportJobSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    ModelImportJobSummary.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    ModelImportJobSummary.add_member(:imported_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedModelArn, location_name: "importedModelArn"))
    ModelImportJobSummary.add_member(:imported_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportedModelName, location_name: "importedModelName"))
    ModelImportJobSummary.type = Types::ModelImportJobSummary
    ModelInvocationJobInputDataConfig.add_member(:s3_input_data_config, Types::ModelInvocationJobInputDataConfig::S3InputDataConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobS3InputDataConfig, location_name: "s3InputDataConfig"))
    ModelInvocationJobInputDataConfig.add_member(:unknown, Types::ModelInvocationJobInputDataConfig::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ModelInvocationJobInputDataConfig.type = Types::ModelInvocationJobInputDataConfig
    ModelInvocationJobOutputDataConfig.add_member(:s3_output_data_config, Types::ModelInvocationJobOutputDataConfig::S3OutputDataConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobS3OutputDataConfig, location_name: "s3OutputDataConfig"))
    ModelInvocationJobOutputDataConfig.add_member(:unknown, Types::ModelInvocationJobOutputDataConfig::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ModelInvocationJobOutputDataConfig.type = Types::ModelInvocationJobOutputDataConfig
    ModelInvocationJobS3InputDataConfig.add_member(:s3_input_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3InputFormat, location_name: "s3InputFormat"))
    ModelInvocationJobS3InputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri", traits: {"smithy.api#required" => {}}))
    ModelInvocationJobS3InputDataConfig.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "s3BucketOwner"))
    ModelInvocationJobS3InputDataConfig.type = Types::ModelInvocationJobS3InputDataConfig
    ModelInvocationJobS3OutputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri", traits: {"smithy.api#required" => {}}))
    ModelInvocationJobS3OutputDataConfig.add_member(:s3_encryption_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "s3EncryptionKeyId"))
    ModelInvocationJobS3OutputDataConfig.add_member(:s3_bucket_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "s3BucketOwner"))
    ModelInvocationJobS3OutputDataConfig.type = Types::ModelInvocationJobS3OutputDataConfig
    ModelInvocationJobStatus.add_member(:submitted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBMITTED", traits: {"smithy.api#enumValue" => "Submitted"}))
    ModelInvocationJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    ModelInvocationJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    ModelInvocationJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    ModelInvocationJobStatus.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "Stopping"}))
    ModelInvocationJobStatus.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "Stopped"}))
    ModelInvocationJobStatus.add_member(:partially_completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARTIALLY_COMPLETED", traits: {"smithy.api#enumValue" => "PartiallyCompleted"}))
    ModelInvocationJobStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPIRED", traits: {"smithy.api#enumValue" => "Expired"}))
    ModelInvocationJobStatus.add_member(:validating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATING", traits: {"smithy.api#enumValue" => "Validating"}))
    ModelInvocationJobStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCHEDULED", traits: {"smithy.api#enumValue" => "Scheduled"}))
    ModelInvocationJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobSummary)
    ModelInvocationJobSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobArn, location_name: "jobArn", traits: {"smithy.api#required" => {}}))
    ModelInvocationJobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobName, location_name: "jobName", traits: {"smithy.api#required" => {}}))
    ModelInvocationJobSummary.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelId, location_name: "modelId", traits: {"smithy.api#required" => {}}))
    ModelInvocationJobSummary.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationIdempotencyToken, location_name: "clientRequestToken"))
    ModelInvocationJobSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    ModelInvocationJobSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobStatus, location_name: "status"))
    ModelInvocationJobSummary.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    ModelInvocationJobSummary.add_member(:submit_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "submitTime", traits: {"smithy.api#required" => {}}))
    ModelInvocationJobSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    ModelInvocationJobSummary.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    ModelInvocationJobSummary.add_member(:input_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobInputDataConfig, location_name: "inputDataConfig", traits: {"smithy.api#required" => {}}))
    ModelInvocationJobSummary.add_member(:output_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobOutputDataConfig, location_name: "outputDataConfig", traits: {"smithy.api#required" => {}}))
    ModelInvocationJobSummary.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    ModelInvocationJobSummary.add_member(:timeout_duration_in_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobTimeoutDurationInHours, location_name: "timeoutDurationInHours"))
    ModelInvocationJobSummary.add_member(:job_expiration_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "jobExpirationTime"))
    ModelInvocationJobSummary.type = Types::ModelInvocationJobSummary
    ModelModality.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    ModelModality.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMAGE", traits: {"smithy.api#enumValue" => "IMAGE"}))
    ModelModality.add_member(:embedding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EMBEDDING", traits: {"smithy.api#enumValue" => "EMBEDDING"}))
    ModelModalityList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelModality)
    ModelStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    ModelStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "Creating"}))
    ModelStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    Offer.add_member(:offer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferId, location_name: "offerId"))
    Offer.add_member(:offer_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OfferToken, location_name: "offerToken", traits: {"smithy.api#required" => {}}))
    Offer.add_member(:term_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TermDetails, location_name: "termDetails", traits: {"smithy.api#required" => {}}))
    Offer.type = Types::Offer
    OfferType.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    OfferType.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    Offers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Offer)
    OrchestrationConfiguration.add_member(:query_transformation_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTransformationConfiguration, location_name: "queryTransformationConfiguration", traits: {"smithy.api#required" => {}}))
    OrchestrationConfiguration.type = Types::OrchestrationConfiguration
    OutputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri", traits: {"smithy.api#required" => {}}))
    OutputDataConfig.type = Types::OutputDataConfig
    PerformanceConfigLatency.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "standard"}))
    PerformanceConfigLatency.add_member(:optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPTIMIZED", traits: {"smithy.api#enumValue" => "optimized"}))
    PerformanceConfiguration.add_member(:latency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PerformanceConfigLatency, location_name: "latency"))
    PerformanceConfiguration.type = Types::PerformanceConfiguration
    PricingTerm.add_member(:rate_card, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateCard, location_name: "rateCard", traits: {"smithy.api#required" => {}}))
    PricingTerm.type = Types::PricingTerm
    PromptRouterStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    PromptRouterSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterSummary)
    PromptRouterSummary.add_member(:prompt_router_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterName, location_name: "promptRouterName", traits: {"smithy.api#required" => {}}))
    PromptRouterSummary.add_member(:routing_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoutingCriteria, location_name: "routingCriteria", traits: {"smithy.api#required" => {}}))
    PromptRouterSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterDescription, location_name: "description"))
    PromptRouterSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    PromptRouterSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    PromptRouterSummary.add_member(:prompt_router_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterArn, location_name: "promptRouterArn", traits: {"smithy.api#required" => {}}))
    PromptRouterSummary.add_member(:models, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterTargetModels, location_name: "models", traits: {"smithy.api#required" => {}}))
    PromptRouterSummary.add_member(:fallback_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterTargetModel, location_name: "fallbackModel", traits: {"smithy.api#required" => {}}))
    PromptRouterSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    PromptRouterSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterType, location_name: "type", traits: {"smithy.api#required" => {}}))
    PromptRouterSummary.type = Types::PromptRouterSummary
    PromptRouterTargetModel.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterTargetModelArn, location_name: "modelArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PromptRouterTargetModel.type = Types::PromptRouterTargetModel
    PromptRouterTargetModels.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromptRouterTargetModel)
    PromptRouterType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM", traits: {"smithy.api#enumValue" => "custom"}))
    PromptRouterType.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    PromptTemplate.add_member(:text_prompt_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TextPromptTemplate, location_name: "textPromptTemplate"))
    PromptTemplate.type = Types::PromptTemplate
    ProvisionedModelStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "Creating"}))
    ProvisionedModelStatus.add_member(:in_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_SERVICE", traits: {"smithy.api#enumValue" => "InService"}))
    ProvisionedModelStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "Updating"}))
    ProvisionedModelStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    ProvisionedModelSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelSummary)
    ProvisionedModelSummary.add_member(:provisioned_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelName, location_name: "provisionedModelName", traits: {"smithy.api#required" => {}}))
    ProvisionedModelSummary.add_member(:provisioned_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelArn, location_name: "provisionedModelArn", traits: {"smithy.api#required" => {}}))
    ProvisionedModelSummary.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "modelArn", traits: {"smithy.api#required" => {}}))
    ProvisionedModelSummary.add_member(:desired_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelArn, location_name: "desiredModelArn", traits: {"smithy.api#required" => {}}))
    ProvisionedModelSummary.add_member(:foundation_model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FoundationModelArn, location_name: "foundationModelArn", traits: {"smithy.api#required" => {}}))
    ProvisionedModelSummary.add_member(:model_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "modelUnits", traits: {"smithy.api#required" => {}}))
    ProvisionedModelSummary.add_member(:desired_model_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "desiredModelUnits", traits: {"smithy.api#required" => {}}))
    ProvisionedModelSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ProvisionedModelSummary.add_member(:commitment_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitmentDuration, location_name: "commitmentDuration"))
    ProvisionedModelSummary.add_member(:commitment_expiration_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "commitmentExpirationTime"))
    ProvisionedModelSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    ProvisionedModelSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime", traits: {"smithy.api#required" => {}}))
    ProvisionedModelSummary.type = Types::ProvisionedModelSummary
    PutModelInvocationLoggingConfigurationRequest.add_member(:logging_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "loggingConfig", traits: {"smithy.api#required" => {}}))
    PutModelInvocationLoggingConfigurationRequest.type = Types::PutModelInvocationLoggingConfigurationRequest
    PutModelInvocationLoggingConfigurationResponse.type = Types::PutModelInvocationLoggingConfigurationResponse
    PutUseCaseForModelAccessRequest.add_member(:form_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcknowledgementFormDataBody, location_name: "formData", traits: {"smithy.api#required" => {}}))
    PutUseCaseForModelAccessRequest.type = Types::PutUseCaseForModelAccessRequest
    PutUseCaseForModelAccessResponse.type = Types::PutUseCaseForModelAccessResponse
    QueryTransformationConfiguration.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueryTransformationType, location_name: "type", traits: {"smithy.api#required" => {}}))
    QueryTransformationConfiguration.type = Types::QueryTransformationConfiguration
    QueryTransformationType.add_member(:query_decomposition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUERY_DECOMPOSITION", traits: {"smithy.api#enumValue" => "QUERY_DECOMPOSITION"}))
    RAGConfig.add_member(:knowledge_base_config, Types::RAGConfig::KnowledgeBaseConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseConfig, location_name: "knowledgeBaseConfig"))
    RAGConfig.add_member(:precomputed_rag_source_config, Types::RAGConfig::PrecomputedRagSourceConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationPrecomputedRagSourceConfig, location_name: "precomputedRagSourceConfig"))
    RAGConfig.add_member(:unknown, Types::RAGConfig::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    RAGConfig.type = Types::RAGConfig
    RAGStopSequences.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    RagConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RAGConfig)
    RateCard.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionalPriceRate)
    RatingScale.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RatingScaleItem)
    RatingScaleItem.add_member(:definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RatingScaleItemDefinition, location_name: "definition", traits: {"smithy.api#required" => {}}))
    RatingScaleItem.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RatingScaleItemValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    RatingScaleItem.type = Types::RatingScaleItem
    RatingScaleItemValue.add_member(:string_value, Types::RatingScaleItemValue::StringValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "stringValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}}))
    RatingScaleItemValue.add_member(:float_value, Types::RatingScaleItemValue::FloatValue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Float, location_name: "floatValue"))
    RatingScaleItemValue.add_member(:unknown, Types::RatingScaleItemValue::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    RatingScaleItemValue.type = Types::RatingScaleItemValue
    RegionAvailability.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    RegionAvailability.add_member(:not_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_AVAILABLE", traits: {"smithy.api#enumValue" => "NOT_AVAILABLE"}))
    RegisterMarketplaceModelEndpointRequest.add_member(:endpoint_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "endpointIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RegisterMarketplaceModelEndpointRequest.add_member(:model_source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelSourceIdentifier, location_name: "modelSourceIdentifier", traits: {"smithy.api#required" => {}}))
    RegisterMarketplaceModelEndpointRequest.type = Types::RegisterMarketplaceModelEndpointRequest
    RegisterMarketplaceModelEndpointResponse.add_member(:marketplace_model_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketplaceModelEndpoint, location_name: "marketplaceModelEndpoint", traits: {"smithy.api#required" => {}}))
    RegisterMarketplaceModelEndpointResponse.type = Types::RegisterMarketplaceModelEndpointResponse
    RequestMetadataBaseFilters.add_member(:equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestMetadataMap, location_name: "equals"))
    RequestMetadataBaseFilters.add_member(:not_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestMetadataMap, location_name: "notEquals"))
    RequestMetadataBaseFilters.type = Types::RequestMetadataBaseFilters
    RequestMetadataFilters.add_member(:equals, Types::RequestMetadataFilters::Equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestMetadataMap, location_name: "equals"))
    RequestMetadataFilters.add_member(:not_equals, Types::RequestMetadataFilters::NotEquals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestMetadataMap, location_name: "notEquals"))
    RequestMetadataFilters.add_member(:and_all, Types::RequestMetadataFilters::AndAll, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestMetadataFiltersList, location_name: "andAll"))
    RequestMetadataFilters.add_member(:or_all, Types::RequestMetadataFilters::OrAll, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestMetadataFiltersList, location_name: "orAll"))
    RequestMetadataFilters.add_member(:unknown, Types::RequestMetadataFilters::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    RequestMetadataFilters.type = Types::RequestMetadataFilters
    RequestMetadataFiltersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestMetadataBaseFilters)
    RequestMetadataMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+$@-]{1,256}$"})
    RequestMetadataMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+$@-]{0,256}$"})
    RerankingMetadataSelectionMode.add_member(:selective, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SELECTIVE", traits: {"smithy.api#enumValue" => "SELECTIVE"}))
    RerankingMetadataSelectionMode.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    RerankingMetadataSelectiveModeConfiguration.add_member(:fields_to_include, Types::RerankingMetadataSelectiveModeConfiguration::FieldsToInclude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldsForReranking, location_name: "fieldsToInclude"))
    RerankingMetadataSelectiveModeConfiguration.add_member(:fields_to_exclude, Types::RerankingMetadataSelectiveModeConfiguration::FieldsToExclude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FieldsForReranking, location_name: "fieldsToExclude"))
    RerankingMetadataSelectiveModeConfiguration.add_member(:unknown, Types::RerankingMetadataSelectiveModeConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    RerankingMetadataSelectiveModeConfiguration.type = Types::RerankingMetadataSelectiveModeConfiguration
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetrievalFilter.add_member(:equals, Types::RetrievalFilter::Equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "equals"))
    RetrievalFilter.add_member(:not_equals, Types::RetrievalFilter::NotEquals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "notEquals"))
    RetrievalFilter.add_member(:greater_than, Types::RetrievalFilter::GreaterThan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "greaterThan"))
    RetrievalFilter.add_member(:greater_than_or_equals, Types::RetrievalFilter::GreaterThanOrEquals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "greaterThanOrEquals"))
    RetrievalFilter.add_member(:less_than, Types::RetrievalFilter::LessThan, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "lessThan"))
    RetrievalFilter.add_member(:less_than_or_equals, Types::RetrievalFilter::LessThanOrEquals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "lessThanOrEquals"))
    RetrievalFilter.add_member(:in, Types::RetrievalFilter::In, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "in"))
    RetrievalFilter.add_member(:not_in, Types::RetrievalFilter::NotIn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "notIn"))
    RetrievalFilter.add_member(:starts_with, Types::RetrievalFilter::StartsWith, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "startsWith"))
    RetrievalFilter.add_member(:list_contains, Types::RetrievalFilter::ListContains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "listContains"))
    RetrievalFilter.add_member(:string_contains, Types::RetrievalFilter::StringContains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "stringContains"))
    RetrievalFilter.add_member(:and_all, Types::RetrievalFilter::AndAll, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalFilterList, location_name: "andAll"))
    RetrievalFilter.add_member(:or_all, Types::RetrievalFilter::OrAll, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalFilterList, location_name: "orAll"))
    RetrievalFilter.add_member(:unknown, Types::RetrievalFilter::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    RetrievalFilter.type = Types::RetrievalFilter
    RetrievalFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalFilter)
    RetrieveAndGenerateConfiguration.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrieveAndGenerateType, location_name: "type", traits: {"smithy.api#required" => {}}))
    RetrieveAndGenerateConfiguration.add_member(:knowledge_base_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseRetrieveAndGenerateConfiguration, location_name: "knowledgeBaseConfiguration"))
    RetrieveAndGenerateConfiguration.add_member(:external_sources_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalSourcesRetrieveAndGenerateConfiguration, location_name: "externalSourcesConfiguration"))
    RetrieveAndGenerateConfiguration.type = Types::RetrieveAndGenerateConfiguration
    RetrieveAndGenerateType.add_member(:knowledge_base, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KNOWLEDGE_BASE", traits: {"smithy.api#enumValue" => "KNOWLEDGE_BASE"}))
    RetrieveAndGenerateType.add_member(:external_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXTERNAL_SOURCES", traits: {"smithy.api#enumValue" => "EXTERNAL_SOURCES"}))
    RetrieveConfig.add_member(:knowledge_base_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseId, location_name: "knowledgeBaseId", traits: {"smithy.api#required" => {}}))
    RetrieveConfig.add_member(:knowledge_base_retrieval_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnowledgeBaseRetrievalConfiguration, location_name: "knowledgeBaseRetrievalConfiguration", traits: {"smithy.api#required" => {}}))
    RetrieveConfig.type = Types::RetrieveConfig
    RoutingCriteria.add_member(:response_quality_difference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "responseQualityDifference", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}, "smithy.api#required" => {}}))
    RoutingCriteria.type = Types::RoutingCriteria
    S3Config.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "bucketName", traits: {"smithy.api#required" => {}}))
    S3Config.add_member(:key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPrefix, location_name: "keyPrefix"))
    S3Config.type = Types::S3Config
    S3DataSource.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri", traits: {"smithy.api#required" => {}}))
    S3DataSource.type = Types::S3DataSource
    S3InputFormat.add_member(:jsonl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JSONL", traits: {"smithy.api#enumValue" => "JSONL"}))
    S3ObjectDoc.add_member(:uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KBS3Uri, location_name: "uri", traits: {"smithy.api#required" => {}}))
    S3ObjectDoc.type = Types::S3ObjectDoc
    SageMakerEndpoint.add_member(:initial_instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: "initialInstanceCount", traits: {"smithy.api#required" => {}}))
    SageMakerEndpoint.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: "instanceType", traits: {"smithy.api#required" => {}}))
    SageMakerEndpoint.add_member(:execution_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: "executionRole", traits: {"smithy.api#required" => {}}))
    SageMakerEndpoint.add_member(:kms_encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsEncryptionKey"))
    SageMakerEndpoint.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpc"))
    SageMakerEndpoint.type = Types::SageMakerEndpoint
    SearchType.add_member(:hybrid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HYBRID", traits: {"smithy.api#enumValue" => "HYBRID"}))
    SearchType.add_member(:semantic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SEMANTIC", traits: {"smithy.api#enumValue" => "SEMANTIC"}))
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SortByProvisionedModels.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATION_TIME", traits: {"smithy.api#enumValue" => "CreationTime"}))
    SortJobsBy.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATION_TIME", traits: {"smithy.api#enumValue" => "CreationTime"}))
    SortModelsBy.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATION_TIME", traits: {"smithy.api#enumValue" => "CreationTime"}))
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASCENDING", traits: {"smithy.api#enumValue" => "Ascending"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DESCENDING", traits: {"smithy.api#enumValue" => "Descending"}))
    StartAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:build_workflow_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowType, location_name: "buildWorkflowType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#httpHeader" => "x-amz-client-token", "smithy.api#idempotencyToken" => {}}))
    StartAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:source_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowSource, location_name: "sourceContent", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    StartAutomatedReasoningPolicyBuildWorkflowRequest[:http_payload] = :source_content
    StartAutomatedReasoningPolicyBuildWorkflowRequest[:http_payload_member] = StartAutomatedReasoningPolicyBuildWorkflowRequest.member(:source_content)
    StartAutomatedReasoningPolicyBuildWorkflowRequest.type = Types::StartAutomatedReasoningPolicyBuildWorkflowRequest
    StartAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    StartAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#required" => {}}))
    StartAutomatedReasoningPolicyBuildWorkflowResponse.type = Types::StartAutomatedReasoningPolicyBuildWorkflowResponse
    StartAutomatedReasoningPolicyTestWorkflowRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartAutomatedReasoningPolicyTestWorkflowRequest.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartAutomatedReasoningPolicyTestWorkflowRequest.add_member(:test_case_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseIdList, location_name: "testCaseIds"))
    StartAutomatedReasoningPolicyTestWorkflowRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartAutomatedReasoningPolicyTestWorkflowRequest.type = Types::StartAutomatedReasoningPolicyTestWorkflowRequest
    StartAutomatedReasoningPolicyTestWorkflowResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    StartAutomatedReasoningPolicyTestWorkflowResponse.type = Types::StartAutomatedReasoningPolicyTestWorkflowResponse
    Status.add_member(:registered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGISTERED", traits: {"smithy.api#enumValue" => "REGISTERED"}))
    Status.add_member(:incompatible_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCOMPATIBLE_ENDPOINT", traits: {"smithy.api#enumValue" => "INCOMPATIBLE_ENDPOINT"}))
    StatusDetails.add_member(:validation_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationDetails, location_name: "validationDetails"))
    StatusDetails.add_member(:data_processing_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataProcessingDetails, location_name: "dataProcessingDetails"))
    StatusDetails.add_member(:training_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrainingDetails, location_name: "trainingDetails"))
    StatusDetails.type = Types::StatusDetails
    StopEvaluationJobRequest.add_member(:job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationJobIdentifier, location_name: "jobIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopEvaluationJobRequest.type = Types::StopEvaluationJobRequest
    StopEvaluationJobResponse.type = Types::StopEvaluationJobResponse
    StopModelCustomizationJobRequest.add_member(:job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelCustomizationJobIdentifier, location_name: "jobIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopModelCustomizationJobRequest.type = Types::StopModelCustomizationJobRequest
    StopModelCustomizationJobResponse.type = Types::StopModelCustomizationJobResponse
    StopModelInvocationJobRequest.add_member(:job_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelInvocationJobIdentifier, location_name: "jobIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopModelInvocationJobRequest.type = Types::StopModelInvocationJobRequest
    StopModelInvocationJobResponse.type = Types::StopModelInvocationJobResponse
    SubnetIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    SupportTerm.add_member(:refund_policy_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "refundPolicyDescription"))
    SupportTerm.type = Types::SupportTerm
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourcesArn, location_name: "resourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TeacherModelConfig.add_member(:teacher_model_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TeacherModelIdentifier, location_name: "teacherModelIdentifier", traits: {"smithy.api#required" => {}}))
    TeacherModelConfig.add_member(:max_response_length_for_inference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResponseLengthForInference"))
    TeacherModelConfig.type = Types::TeacherModelConfig
    TermDetails.add_member(:usage_based_pricing_term, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PricingTerm, location_name: "usageBasedPricingTerm", traits: {"smithy.api#required" => {}}))
    TermDetails.add_member(:legal_term, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LegalTerm, location_name: "legalTerm", traits: {"smithy.api#required" => {}}))
    TermDetails.add_member(:support_term, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportTerm, location_name: "supportTerm", traits: {"smithy.api#required" => {}}))
    TermDetails.add_member(:validity_term, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidityTerm, location_name: "validityTerm"))
    TermDetails.type = Types::TermDetails
    TextInferenceConfig.add_member(:temperature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    TextInferenceConfig.add_member(:top_p, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    TextInferenceConfig.add_member(:max_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxTokens, location_name: "maxTokens"))
    TextInferenceConfig.add_member(:stop_sequences, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RAGStopSequences, location_name: "stopSequences"))
    TextInferenceConfig.type = Types::TextInferenceConfig
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourcesArn, location_name: "resourceName"))
    TooManyTagsException.type = Types::TooManyTagsException
    TrainingDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri"))
    TrainingDataConfig.add_member(:invocation_logs_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvocationLogsConfig, location_name: "invocationLogsConfig"))
    TrainingDataConfig.type = Types::TrainingDataConfig
    TrainingDetails.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusDetails, location_name: "status"))
    TrainingDetails.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    TrainingDetails.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    TrainingDetails.type = Types::TrainingDetails
    TrainingMetrics.add_member(:training_loss, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricFloat, location_name: "trainingLoss"))
    TrainingMetrics.type = Types::TrainingMetrics
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggableResourcesArn, location_name: "resourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAutomatedReasoningPolicyAnnotationsRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyAnnotationsRequest.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyAnnotationsRequest.add_member(:annotations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationList, location_name: "annotations", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyAnnotationsRequest.add_member(:last_updated_annotation_set_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, location_name: "lastUpdatedAnnotationSetHash", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyAnnotationsRequest.type = Types::UpdateAutomatedReasoningPolicyAnnotationsRequest
    UpdateAutomatedReasoningPolicyAnnotationsResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyAnnotationsResponse.add_member(:build_workflow_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, location_name: "buildWorkflowId", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyAnnotationsResponse.add_member(:annotation_set_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, location_name: "annotationSetHash", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyAnnotationsResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyAnnotationsResponse.type = Types::UpdateAutomatedReasoningPolicyAnnotationsResponse
    UpdateAutomatedReasoningPolicyRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyRequest.add_member(:policy_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinition, location_name: "policyDefinition", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, location_name: "name"))
    UpdateAutomatedReasoningPolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDescription, location_name: "description"))
    UpdateAutomatedReasoningPolicyRequest.type = Types::UpdateAutomatedReasoningPolicyRequest
    UpdateAutomatedReasoningPolicyResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, location_name: "name", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyResponse.add_member(:definition_hash, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, location_name: "definitionHash", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyResponse.type = Types::UpdateAutomatedReasoningPolicyResponse
    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId, location_name: "testCaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:guard_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestGuardContent, location_name: "guardContent", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:query_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestQueryContent, location_name: "queryContent"))
    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:expected_aggregated_findings_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckResult, location_name: "expectedAggregatedFindingsResult", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:confidence_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationConfidence, location_name: "confidenceThreshold"))
    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAutomatedReasoningPolicyTestCaseRequest.type = Types::UpdateAutomatedReasoningPolicyTestCaseRequest
    UpdateAutomatedReasoningPolicyTestCaseResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyArn", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyTestCaseResponse.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId, location_name: "testCaseId", traits: {"smithy.api#required" => {}}))
    UpdateAutomatedReasoningPolicyTestCaseResponse.type = Types::UpdateAutomatedReasoningPolicyTestCaseResponse
    UpdateGuardrailRequest.add_member(:guardrail_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailIdentifier, location_name: "guardrailIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGuardrailRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailName, location_name: "name", traits: {"smithy.api#required" => {}}))
    UpdateGuardrailRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailDescription, location_name: "description"))
    UpdateGuardrailRequest.add_member(:topic_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailTopicPolicyConfig, location_name: "topicPolicyConfig"))
    UpdateGuardrailRequest.add_member(:content_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContentPolicyConfig, location_name: "contentPolicyConfig"))
    UpdateGuardrailRequest.add_member(:word_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailWordPolicyConfig, location_name: "wordPolicyConfig"))
    UpdateGuardrailRequest.add_member(:sensitive_information_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicyConfig, location_name: "sensitiveInformationPolicyConfig"))
    UpdateGuardrailRequest.add_member(:contextual_grounding_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailContextualGroundingPolicyConfig, location_name: "contextualGroundingPolicyConfig"))
    UpdateGuardrailRequest.add_member(:automated_reasoning_policy_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningPolicyConfig, location_name: "automatedReasoningPolicyConfig"))
    UpdateGuardrailRequest.add_member(:cross_region_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailCrossRegionConfig, location_name: "crossRegionConfig"))
    UpdateGuardrailRequest.add_member(:blocked_input_messaging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, location_name: "blockedInputMessaging", traits: {"smithy.api#required" => {}}))
    UpdateGuardrailRequest.add_member(:blocked_outputs_messaging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, location_name: "blockedOutputsMessaging", traits: {"smithy.api#required" => {}}))
    UpdateGuardrailRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    UpdateGuardrailRequest.type = Types::UpdateGuardrailRequest
    UpdateGuardrailResponse.add_member(:guardrail_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailId, location_name: "guardrailId", traits: {"smithy.api#required" => {}}))
    UpdateGuardrailResponse.add_member(:guardrail_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailArn, location_name: "guardrailArn", traits: {"smithy.api#required" => {}}))
    UpdateGuardrailResponse.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuardrailDraftVersion, location_name: "version", traits: {"smithy.api#required" => {}}))
    UpdateGuardrailResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateGuardrailResponse.type = Types::UpdateGuardrailResponse
    UpdateMarketplaceModelEndpointRequest.add_member(:endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "endpointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMarketplaceModelEndpointRequest.add_member(:endpoint_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointConfig, location_name: "endpointConfig", traits: {"smithy.api#required" => {}}))
    UpdateMarketplaceModelEndpointRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateMarketplaceModelEndpointRequest.type = Types::UpdateMarketplaceModelEndpointRequest
    UpdateMarketplaceModelEndpointResponse.add_member(:marketplace_model_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MarketplaceModelEndpoint, location_name: "marketplaceModelEndpoint", traits: {"smithy.api#required" => {}}))
    UpdateMarketplaceModelEndpointResponse.type = Types::UpdateMarketplaceModelEndpointResponse
    UpdateProvisionedModelThroughputRequest.add_member(:provisioned_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelId, location_name: "provisionedModelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProvisionedModelThroughputRequest.add_member(:desired_provisioned_model_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedModelName, location_name: "desiredProvisionedModelName"))
    UpdateProvisionedModelThroughputRequest.add_member(:desired_model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "desiredModelId"))
    UpdateProvisionedModelThroughputRequest.type = Types::UpdateProvisionedModelThroughputRequest
    UpdateProvisionedModelThroughputResponse.type = Types::UpdateProvisionedModelThroughputResponse
    ValidationDataConfig.add_member(:validators, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Validators, location_name: "validators", traits: {"smithy.api#required" => {}}))
    ValidationDataConfig.type = Types::ValidationDataConfig
    ValidationDetails.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusDetails, location_name: "status"))
    ValidationDetails.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    ValidationDetails.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    ValidationDetails.type = Types::ValidationDetails
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ValidationException.type = Types::ValidationException
    ValidationMetrics.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatorMetric)
    Validator.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri", traits: {"smithy.api#required" => {}}))
    Validator.type = Types::Validator
    ValidatorMetric.add_member(:validation_loss, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricFloat, location_name: "validationLoss"))
    ValidatorMetric.type = Types::ValidatorMetric
    Validators.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Validator)
    ValidityTerm.add_member(:agreement_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "agreementDuration"))
    ValidityTerm.type = Types::ValidityTerm
    VectorSearchBedrockRerankingConfiguration.add_member(:model_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchBedrockRerankingModelConfiguration, location_name: "modelConfiguration", traits: {"smithy.api#required" => {}}))
    VectorSearchBedrockRerankingConfiguration.add_member(:number_of_reranked_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "numberOfRerankedResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    VectorSearchBedrockRerankingConfiguration.add_member(:metadata_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetadataConfigurationForReranking, location_name: "metadataConfiguration"))
    VectorSearchBedrockRerankingConfiguration.type = Types::VectorSearchBedrockRerankingConfiguration
    VectorSearchBedrockRerankingModelConfiguration.add_member(:model_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BedrockRerankingModelArn, location_name: "modelArn", traits: {"smithy.api#required" => {}}))
    VectorSearchBedrockRerankingModelConfiguration.add_member(:additional_model_request_fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: "additionalModelRequestFields"))
    VectorSearchBedrockRerankingModelConfiguration.type = Types::VectorSearchBedrockRerankingModelConfiguration
    VectorSearchRerankingConfiguration.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchRerankingConfigurationType, location_name: "type", traits: {"smithy.api#required" => {}}))
    VectorSearchRerankingConfiguration.add_member(:bedrock_reranking_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VectorSearchBedrockRerankingConfiguration, location_name: "bedrockRerankingConfiguration"))
    VectorSearchRerankingConfiguration.type = Types::VectorSearchRerankingConfiguration
    VectorSearchRerankingConfigurationType.add_member(:bedrock_reranking_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BEDROCK_RERANKING_MODEL", traits: {"smithy.api#enumValue" => "BEDROCK_RERANKING_MODEL"}))
    VpcConfig.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: "subnetIds", traits: {"smithy.api#required" => {}}))
    VpcConfig.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds", traits: {"smithy.api#required" => {}}))
    VpcConfig.type = Types::VpcConfig

    AmazonBedrockControlPlaneService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.bedrock#AmazonBedrockControlPlaneService"
      service.name = "AmazonBedrockControlPlaneService"
      service.version = "2023-04-20"
      service.traits = {"aws.api#service" => {"sdkId" => "Bedrock", "endpointPrefix" => "bedrock"}, "aws.auth#sigv4" => {"name" => "bedrock"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4", "smithy.api#httpBearerAuth"], "smithy.api#httpBearerAuth" => {}, "smithy.api#title" => "Amazon Bedrock"}
      service.add_operation(:batch_delete_evaluation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#BatchDeleteEvaluationJob"
        operation.name = "BatchDeleteEvaluationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteEvaluationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteEvaluationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/evaluation-jobs/batch-delete"}}
      end)
      service.add_operation(:cancel_automated_reasoning_policy_build_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CancelAutomatedReasoningPolicyBuildWorkflow"
        operation.name = "CancelAutomatedReasoningPolicyBuildWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelAutomatedReasoningPolicyBuildWorkflowRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelAutomatedReasoningPolicyBuildWorkflowResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/cancel"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_automated_reasoning_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateAutomatedReasoningPolicy"
        operation.name = "CreateAutomatedReasoningPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAutomatedReasoningPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAutomatedReasoningPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/automated-reasoning-policies"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_automated_reasoning_policy_test_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateAutomatedReasoningPolicyTestCase"
        operation.name = "CreateAutomatedReasoningPolicyTestCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAutomatedReasoningPolicyTestCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAutomatedReasoningPolicyTestCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/automated-reasoning-policies/{policyArn}/test-cases"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_automated_reasoning_policy_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateAutomatedReasoningPolicyVersion"
        operation.name = "CreateAutomatedReasoningPolicyVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAutomatedReasoningPolicyVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAutomatedReasoningPolicyVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/automated-reasoning-policies/{policyArn}/versions"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_custom_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateCustomModel"
        operation.name = "CreateCustomModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/custom-models/create-custom-model"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_custom_model_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateCustomModelDeployment"
        operation.name = "CreateCustomModelDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomModelDeploymentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomModelDeploymentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/model-customization/custom-model-deployments"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_evaluation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateEvaluationJob"
        operation.name = "CreateEvaluationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEvaluationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEvaluationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/evaluation-jobs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_foundation_model_agreement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateFoundationModelAgreement"
        operation.name = "CreateFoundationModelAgreement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFoundationModelAgreementRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFoundationModelAgreementResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/create-foundation-model-agreement"}}
      end)
      service.add_operation(:create_guardrail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateGuardrail"
        operation.name = "CreateGuardrail"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGuardrailRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGuardrailResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/guardrails"}}
      end)
      service.add_operation(:create_guardrail_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateGuardrailVersion"
        operation.name = "CreateGuardrailVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGuardrailVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGuardrailVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/guardrails/{guardrailIdentifier}"}}
      end)
      service.add_operation(:create_inference_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateInferenceProfile"
        operation.name = "CreateInferenceProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInferenceProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInferenceProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/inference-profiles"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_marketplace_model_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateMarketplaceModelEndpoint"
        operation.name = "CreateMarketplaceModelEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMarketplaceModelEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMarketplaceModelEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/marketplace-model/endpoints"}}
      end)
      service.add_operation(:create_model_copy_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateModelCopyJob"
        operation.name = "CreateModelCopyJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelCopyJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelCopyJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/model-copy-jobs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_model_customization_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateModelCustomizationJob"
        operation.name = "CreateModelCustomizationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelCustomizationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelCustomizationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/model-customization-jobs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_model_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateModelImportJob"
        operation.name = "CreateModelImportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelImportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelImportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/model-import-jobs"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_model_invocation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateModelInvocationJob"
        operation.name = "CreateModelInvocationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelInvocationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateModelInvocationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/model-invocation-job"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_prompt_router, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreatePromptRouter"
        operation.name = "CreatePromptRouter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePromptRouterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePromptRouterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/prompt-routers"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_provisioned_model_throughput, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#CreateProvisionedModelThroughput"
        operation.name = "CreateProvisionedModelThroughput"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProvisionedModelThroughputRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProvisionedModelThroughputResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/provisioned-model-throughput"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_automated_reasoning_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#DeleteAutomatedReasoningPolicy"
        operation.name = "DeleteAutomatedReasoningPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAutomatedReasoningPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAutomatedReasoningPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/automated-reasoning-policies/{policyArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_automated_reasoning_policy_build_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#DeleteAutomatedReasoningPolicyBuildWorkflow"
        operation.name = "DeleteAutomatedReasoningPolicyBuildWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAutomatedReasoningPolicyBuildWorkflowRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAutomatedReasoningPolicyBuildWorkflowResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_automated_reasoning_policy_test_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#DeleteAutomatedReasoningPolicyTestCase"
        operation.name = "DeleteAutomatedReasoningPolicyTestCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAutomatedReasoningPolicyTestCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAutomatedReasoningPolicyTestCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/automated-reasoning-policies/{policyArn}/test-cases/{testCaseId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_custom_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#DeleteCustomModel"
        operation.name = "DeleteCustomModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/custom-models/{modelIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_custom_model_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#DeleteCustomModelDeployment"
        operation.name = "DeleteCustomModelDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomModelDeploymentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomModelDeploymentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/model-customization/custom-model-deployments/{customModelDeploymentIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_foundation_model_agreement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#DeleteFoundationModelAgreement"
        operation.name = "DeleteFoundationModelAgreement"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFoundationModelAgreementRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFoundationModelAgreementResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/delete-foundation-model-agreement"}}
      end)
      service.add_operation(:delete_guardrail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#DeleteGuardrail"
        operation.name = "DeleteGuardrail"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGuardrailRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGuardrailResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/guardrails/{guardrailIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_imported_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#DeleteImportedModel"
        operation.name = "DeleteImportedModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImportedModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImportedModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/imported-models/{modelIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_inference_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#DeleteInferenceProfile"
        operation.name = "DeleteInferenceProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInferenceProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInferenceProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/inference-profiles/{inferenceProfileIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_marketplace_model_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#DeleteMarketplaceModelEndpoint"
        operation.name = "DeleteMarketplaceModelEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMarketplaceModelEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMarketplaceModelEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/marketplace-model/endpoints/{endpointArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_model_invocation_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#DeleteModelInvocationLoggingConfiguration"
        operation.name = "DeleteModelInvocationLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteModelInvocationLoggingConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteModelInvocationLoggingConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/logging/modelinvocations"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_prompt_router, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#DeletePromptRouter"
        operation.name = "DeletePromptRouter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePromptRouterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePromptRouterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/prompt-routers/{promptRouterArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_provisioned_model_throughput, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#DeleteProvisionedModelThroughput"
        operation.name = "DeleteProvisionedModelThroughput"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProvisionedModelThroughputRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProvisionedModelThroughputResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/provisioned-model-throughput/{provisionedModelId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_marketplace_model_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#DeregisterMarketplaceModelEndpoint"
        operation.name = "DeregisterMarketplaceModelEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterMarketplaceModelEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterMarketplaceModelEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/marketplace-model/endpoints/{endpointArn}/registration"}}
      end)
      service.add_operation(:export_automated_reasoning_policy_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ExportAutomatedReasoningPolicyVersion"
        operation.name = "ExportAutomatedReasoningPolicyVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportAutomatedReasoningPolicyVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportAutomatedReasoningPolicyVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/automated-reasoning-policies/{policyArn}/export"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_automated_reasoning_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetAutomatedReasoningPolicy"
        operation.name = "GetAutomatedReasoningPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/automated-reasoning-policies/{policyArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_automated_reasoning_policy_annotations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetAutomatedReasoningPolicyAnnotations"
        operation.name = "GetAutomatedReasoningPolicyAnnotations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyAnnotationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyAnnotationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/annotations"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_automated_reasoning_policy_build_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetAutomatedReasoningPolicyBuildWorkflow"
        operation.name = "GetAutomatedReasoningPolicyBuildWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyBuildWorkflowRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyBuildWorkflowResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_automated_reasoning_policy_build_workflow_result_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetAutomatedReasoningPolicyBuildWorkflowResultAssets"
        operation.name = "GetAutomatedReasoningPolicyBuildWorkflowResultAssets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/result-assets"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_automated_reasoning_policy_next_scenario, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetAutomatedReasoningPolicyNextScenario"
        operation.name = "GetAutomatedReasoningPolicyNextScenario"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyNextScenarioRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyNextScenarioResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/scenarios"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_automated_reasoning_policy_test_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetAutomatedReasoningPolicyTestCase"
        operation.name = "GetAutomatedReasoningPolicyTestCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyTestCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyTestCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/automated-reasoning-policies/{policyArn}/test-cases/{testCaseId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_automated_reasoning_policy_test_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetAutomatedReasoningPolicyTestResult"
        operation.name = "GetAutomatedReasoningPolicyTestResult"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyTestResultRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyTestResultResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/test-cases/{testCaseId}/test-results"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_custom_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetCustomModel"
        operation.name = "GetCustomModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/custom-models/{modelIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_custom_model_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetCustomModelDeployment"
        operation.name = "GetCustomModelDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomModelDeploymentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomModelDeploymentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/model-customization/custom-model-deployments/{customModelDeploymentIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_evaluation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetEvaluationJob"
        operation.name = "GetEvaluationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvaluationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEvaluationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/evaluation-jobs/{jobIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_foundation_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetFoundationModel"
        operation.name = "GetFoundationModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFoundationModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFoundationModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/foundation-models/{modelIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_foundation_model_availability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetFoundationModelAvailability"
        operation.name = "GetFoundationModelAvailability"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFoundationModelAvailabilityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFoundationModelAvailabilityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/foundation-model-availability/{modelId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_guardrail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetGuardrail"
        operation.name = "GetGuardrail"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGuardrailRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGuardrailResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/guardrails/{guardrailIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_imported_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetImportedModel"
        operation.name = "GetImportedModel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportedModelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportedModelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/imported-models/{modelIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_inference_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetInferenceProfile"
        operation.name = "GetInferenceProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInferenceProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInferenceProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/inference-profiles/{inferenceProfileIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_marketplace_model_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetMarketplaceModelEndpoint"
        operation.name = "GetMarketplaceModelEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMarketplaceModelEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMarketplaceModelEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/marketplace-model/endpoints/{endpointArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_model_copy_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetModelCopyJob"
        operation.name = "GetModelCopyJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelCopyJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelCopyJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/model-copy-jobs/{jobArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_model_customization_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetModelCustomizationJob"
        operation.name = "GetModelCustomizationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelCustomizationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelCustomizationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/model-customization-jobs/{jobIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_model_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetModelImportJob"
        operation.name = "GetModelImportJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelImportJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelImportJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/model-import-jobs/{jobIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_model_invocation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetModelInvocationJob"
        operation.name = "GetModelInvocationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelInvocationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelInvocationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/model-invocation-job/{jobIdentifier}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_model_invocation_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetModelInvocationLoggingConfiguration"
        operation.name = "GetModelInvocationLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelInvocationLoggingConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetModelInvocationLoggingConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/logging/modelinvocations"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_prompt_router, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetPromptRouter"
        operation.name = "GetPromptRouter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPromptRouterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPromptRouterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/prompt-routers/{promptRouterArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_provisioned_model_throughput, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetProvisionedModelThroughput"
        operation.name = "GetProvisionedModelThroughput"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProvisionedModelThroughputRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetProvisionedModelThroughputResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/provisioned-model-throughput/{provisionedModelId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_use_case_for_model_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#GetUseCaseForModelAccess"
        operation.name = "GetUseCaseForModelAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUseCaseForModelAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUseCaseForModelAccessResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/use-case-for-model-access"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_automated_reasoning_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListAutomatedReasoningPolicies"
        operation.name = "ListAutomatedReasoningPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutomatedReasoningPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutomatedReasoningPoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/automated-reasoning-policies"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAutomatedReasoningPolicies.new
      end)
      service.add_operation(:list_automated_reasoning_policy_build_workflows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListAutomatedReasoningPolicyBuildWorkflows"
        operation.name = "ListAutomatedReasoningPolicyBuildWorkflows"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutomatedReasoningPolicyBuildWorkflowsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutomatedReasoningPolicyBuildWorkflowsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/automated-reasoning-policies/{policyArn}/build-workflows"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAutomatedReasoningPolicyBuildWorkflows.new
      end)
      service.add_operation(:list_automated_reasoning_policy_test_cases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListAutomatedReasoningPolicyTestCases"
        operation.name = "ListAutomatedReasoningPolicyTestCases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutomatedReasoningPolicyTestCasesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutomatedReasoningPolicyTestCasesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/automated-reasoning-policies/{policyArn}/test-cases"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAutomatedReasoningPolicyTestCases.new
      end)
      service.add_operation(:list_automated_reasoning_policy_test_results, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListAutomatedReasoningPolicyTestResults"
        operation.name = "ListAutomatedReasoningPolicyTestResults"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutomatedReasoningPolicyTestResultsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutomatedReasoningPolicyTestResultsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/test-results"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAutomatedReasoningPolicyTestResults.new
      end)
      service.add_operation(:list_custom_model_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListCustomModelDeployments"
        operation.name = "ListCustomModelDeployments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomModelDeploymentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomModelDeploymentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/model-customization/custom-model-deployments"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomModelDeployments.new
      end)
      service.add_operation(:list_custom_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListCustomModels"
        operation.name = "ListCustomModels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomModelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomModelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/custom-models"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCustomModels.new
      end)
      service.add_operation(:list_evaluation_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListEvaluationJobs"
        operation.name = "ListEvaluationJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEvaluationJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEvaluationJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/evaluation-jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEvaluationJobs.new
      end)
      service.add_operation(:list_foundation_model_agreement_offers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListFoundationModelAgreementOffers"
        operation.name = "ListFoundationModelAgreementOffers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFoundationModelAgreementOffersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFoundationModelAgreementOffersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/list-foundation-model-agreement-offers/{modelId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_foundation_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListFoundationModels"
        operation.name = "ListFoundationModels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFoundationModelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFoundationModelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/foundation-models"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_guardrails, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListGuardrails"
        operation.name = "ListGuardrails"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGuardrailsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGuardrailsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/guardrails"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGuardrails.new
      end)
      service.add_operation(:list_imported_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListImportedModels"
        operation.name = "ListImportedModels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportedModelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportedModelsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/imported-models"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListImportedModels.new
      end)
      service.add_operation(:list_inference_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListInferenceProfiles"
        operation.name = "ListInferenceProfiles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInferenceProfilesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInferenceProfilesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/inference-profiles"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListInferenceProfiles.new
      end)
      service.add_operation(:list_marketplace_model_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListMarketplaceModelEndpoints"
        operation.name = "ListMarketplaceModelEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMarketplaceModelEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMarketplaceModelEndpointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/marketplace-model/endpoints"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMarketplaceModelEndpoints.new
      end)
      service.add_operation(:list_model_copy_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListModelCopyJobs"
        operation.name = "ListModelCopyJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelCopyJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelCopyJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/model-copy-jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListModelCopyJobs.new
      end)
      service.add_operation(:list_model_customization_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListModelCustomizationJobs"
        operation.name = "ListModelCustomizationJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelCustomizationJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelCustomizationJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/model-customization-jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListModelCustomizationJobs.new
      end)
      service.add_operation(:list_model_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListModelImportJobs"
        operation.name = "ListModelImportJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelImportJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelImportJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/model-import-jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListModelImportJobs.new
      end)
      service.add_operation(:list_model_invocation_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListModelInvocationJobs"
        operation.name = "ListModelInvocationJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelInvocationJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListModelInvocationJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/model-invocation-jobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListModelInvocationJobs.new
      end)
      service.add_operation(:list_prompt_routers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListPromptRouters"
        operation.name = "ListPromptRouters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPromptRoutersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPromptRoutersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/prompt-routers"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPromptRouters.new
      end)
      service.add_operation(:list_provisioned_model_throughputs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListProvisionedModelThroughputs"
        operation.name = "ListProvisionedModelThroughputs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProvisionedModelThroughputsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProvisionedModelThroughputsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/provisioned-model-throughputs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProvisionedModelThroughputs.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/listTagsForResource"}}
      end)
      service.add_operation(:put_model_invocation_logging_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#PutModelInvocationLoggingConfiguration"
        operation.name = "PutModelInvocationLoggingConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutModelInvocationLoggingConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutModelInvocationLoggingConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/logging/modelinvocations"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_use_case_for_model_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#PutUseCaseForModelAccess"
        operation.name = "PutUseCaseForModelAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutUseCaseForModelAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutUseCaseForModelAccessResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/use-case-for-model-access"}}
      end)
      service.add_operation(:register_marketplace_model_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#RegisterMarketplaceModelEndpoint"
        operation.name = "RegisterMarketplaceModelEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterMarketplaceModelEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterMarketplaceModelEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/marketplace-model/endpoints/{endpointIdentifier}/registration"}}
      end)
      service.add_operation(:start_automated_reasoning_policy_build_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#StartAutomatedReasoningPolicyBuildWorkflow"
        operation.name = "StartAutomatedReasoningPolicyBuildWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAutomatedReasoningPolicyBuildWorkflowRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAutomatedReasoningPolicyBuildWorkflowResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowType}/start"}}
      end)
      service.add_operation(:start_automated_reasoning_policy_test_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#StartAutomatedReasoningPolicyTestWorkflow"
        operation.name = "StartAutomatedReasoningPolicyTestWorkflow"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAutomatedReasoningPolicyTestWorkflowRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAutomatedReasoningPolicyTestWorkflowResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/test-workflows"}}
      end)
      service.add_operation(:stop_evaluation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#StopEvaluationJob"
        operation.name = "StopEvaluationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopEvaluationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopEvaluationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/evaluation-job/{jobIdentifier}/stop"}}
      end)
      service.add_operation(:stop_model_customization_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#StopModelCustomizationJob"
        operation.name = "StopModelCustomizationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopModelCustomizationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopModelCustomizationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/model-customization-jobs/{jobIdentifier}/stop"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_model_invocation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#StopModelInvocationJob"
        operation.name = "StopModelInvocationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopModelInvocationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopModelInvocationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/model-invocation-job/{jobIdentifier}/stop"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/tagResource"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/untagResource"}}
      end)
      service.add_operation(:update_automated_reasoning_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#UpdateAutomatedReasoningPolicy"
        operation.name = "UpdateAutomatedReasoningPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAutomatedReasoningPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAutomatedReasoningPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/automated-reasoning-policies/{policyArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_automated_reasoning_policy_annotations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#UpdateAutomatedReasoningPolicyAnnotations"
        operation.name = "UpdateAutomatedReasoningPolicyAnnotations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAutomatedReasoningPolicyAnnotationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAutomatedReasoningPolicyAnnotationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/annotations"}}
      end)
      service.add_operation(:update_automated_reasoning_policy_test_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#UpdateAutomatedReasoningPolicyTestCase"
        operation.name = "UpdateAutomatedReasoningPolicyTestCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAutomatedReasoningPolicyTestCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAutomatedReasoningPolicyTestCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/automated-reasoning-policies/{policyArn}/test-cases/{testCaseId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_guardrail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#UpdateGuardrail"
        operation.name = "UpdateGuardrail"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGuardrailRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGuardrailResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/guardrails/{guardrailIdentifier}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_marketplace_model_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#UpdateMarketplaceModelEndpoint"
        operation.name = "UpdateMarketplaceModelEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMarketplaceModelEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMarketplaceModelEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/marketplace-model/endpoints/{endpointArn}"}}
      end)
      service.add_operation(:update_provisioned_model_throughput, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrock#UpdateProvisionedModelThroughput"
        operation.name = "UpdateProvisionedModelThroughput"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProvisionedModelThroughputRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProvisionedModelThroughputResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/provisioned-model-throughput/{provisionedModelId}"}, "smithy.api#idempotent" => {}}
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
