# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Bedrock
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptEula = Shapes::BooleanShape.new(name: 'AcceptEula')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AcknowledgementFormDataBody = Shapes::BlobShape.new(name: 'AcknowledgementFormDataBody')
    AdditionalModelRequestFields = Shapes::MapShape.new(name: 'AdditionalModelRequestFields')
    AdditionalModelRequestFieldsKey = Shapes::StringShape.new(name: 'AdditionalModelRequestFieldsKey')
    AdditionalModelRequestFieldsValue = Shapes::DocumentShape.new(name: 'AdditionalModelRequestFieldsValue', document: true)
    AgreementAvailability = Shapes::StructureShape.new(name: 'AgreementAvailability')
    AgreementStatus = Shapes::StringShape.new(name: 'AgreementStatus')
    ApplicationType = Shapes::StringShape.new(name: 'ApplicationType')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AttributeType = Shapes::StringShape.new(name: 'AttributeType')
    AuthorizationStatus = Shapes::StringShape.new(name: 'AuthorizationStatus')
    AutomatedEvaluationConfig = Shapes::StructureShape.new(name: 'AutomatedEvaluationConfig')
    AutomatedEvaluationCustomMetricConfig = Shapes::StructureShape.new(name: 'AutomatedEvaluationCustomMetricConfig')
    AutomatedEvaluationCustomMetricSource = Shapes::UnionShape.new(name: 'AutomatedEvaluationCustomMetricSource')
    AutomatedEvaluationCustomMetrics = Shapes::ListShape.new(name: 'AutomatedEvaluationCustomMetrics')
    AutomatedReasoningCheckDifferenceScenarioList = Shapes::ListShape.new(name: 'AutomatedReasoningCheckDifferenceScenarioList')
    AutomatedReasoningCheckFinding = Shapes::UnionShape.new(name: 'AutomatedReasoningCheckFinding')
    AutomatedReasoningCheckFindingList = Shapes::ListShape.new(name: 'AutomatedReasoningCheckFindingList')
    AutomatedReasoningCheckImpossibleFinding = Shapes::StructureShape.new(name: 'AutomatedReasoningCheckImpossibleFinding')
    AutomatedReasoningCheckInputTextReference = Shapes::StructureShape.new(name: 'AutomatedReasoningCheckInputTextReference')
    AutomatedReasoningCheckInputTextReferenceList = Shapes::ListShape.new(name: 'AutomatedReasoningCheckInputTextReferenceList')
    AutomatedReasoningCheckInvalidFinding = Shapes::StructureShape.new(name: 'AutomatedReasoningCheckInvalidFinding')
    AutomatedReasoningCheckLogicWarning = Shapes::StructureShape.new(name: 'AutomatedReasoningCheckLogicWarning')
    AutomatedReasoningCheckLogicWarningType = Shapes::StringShape.new(name: 'AutomatedReasoningCheckLogicWarningType')
    AutomatedReasoningCheckNoTranslationsFinding = Shapes::StructureShape.new(name: 'AutomatedReasoningCheckNoTranslationsFinding')
    AutomatedReasoningCheckResult = Shapes::StringShape.new(name: 'AutomatedReasoningCheckResult')
    AutomatedReasoningCheckRule = Shapes::StructureShape.new(name: 'AutomatedReasoningCheckRule')
    AutomatedReasoningCheckRuleList = Shapes::ListShape.new(name: 'AutomatedReasoningCheckRuleList')
    AutomatedReasoningCheckSatisfiableFinding = Shapes::StructureShape.new(name: 'AutomatedReasoningCheckSatisfiableFinding')
    AutomatedReasoningCheckScenario = Shapes::StructureShape.new(name: 'AutomatedReasoningCheckScenario')
    AutomatedReasoningCheckTooComplexFinding = Shapes::StructureShape.new(name: 'AutomatedReasoningCheckTooComplexFinding')
    AutomatedReasoningCheckTranslation = Shapes::StructureShape.new(name: 'AutomatedReasoningCheckTranslation')
    AutomatedReasoningCheckTranslationAmbiguousFinding = Shapes::StructureShape.new(name: 'AutomatedReasoningCheckTranslationAmbiguousFinding')
    AutomatedReasoningCheckTranslationConfidence = Shapes::FloatShape.new(name: 'AutomatedReasoningCheckTranslationConfidence')
    AutomatedReasoningCheckTranslationList = Shapes::ListShape.new(name: 'AutomatedReasoningCheckTranslationList')
    AutomatedReasoningCheckTranslationOption = Shapes::StructureShape.new(name: 'AutomatedReasoningCheckTranslationOption')
    AutomatedReasoningCheckTranslationOptionList = Shapes::ListShape.new(name: 'AutomatedReasoningCheckTranslationOptionList')
    AutomatedReasoningCheckValidFinding = Shapes::StructureShape.new(name: 'AutomatedReasoningCheckValidFinding')
    AutomatedReasoningConfidenceFilterThreshold = Shapes::FloatShape.new(name: 'AutomatedReasoningConfidenceFilterThreshold')
    AutomatedReasoningLogicStatement = Shapes::StructureShape.new(name: 'AutomatedReasoningLogicStatement')
    AutomatedReasoningLogicStatementContent = Shapes::StringShape.new(name: 'AutomatedReasoningLogicStatementContent')
    AutomatedReasoningLogicStatementList = Shapes::ListShape.new(name: 'AutomatedReasoningLogicStatementList')
    AutomatedReasoningNaturalLanguageStatementContent = Shapes::StringShape.new(name: 'AutomatedReasoningNaturalLanguageStatementContent')
    AutomatedReasoningPolicyAddRuleAnnotation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyAddRuleAnnotation')
    AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation')
    AutomatedReasoningPolicyAddRuleMutation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyAddRuleMutation')
    AutomatedReasoningPolicyAddTypeAnnotation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyAddTypeAnnotation')
    AutomatedReasoningPolicyAddTypeMutation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyAddTypeMutation')
    AutomatedReasoningPolicyAddTypeValue = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyAddTypeValue')
    AutomatedReasoningPolicyAddVariableAnnotation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyAddVariableAnnotation')
    AutomatedReasoningPolicyAddVariableMutation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyAddVariableMutation')
    AutomatedReasoningPolicyAnnotation = Shapes::UnionShape.new(name: 'AutomatedReasoningPolicyAnnotation')
    AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage')
    AutomatedReasoningPolicyAnnotationIngestContent = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyAnnotationIngestContent')
    AutomatedReasoningPolicyAnnotationList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyAnnotationList')
    AutomatedReasoningPolicyAnnotationRuleNaturalLanguage = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyAnnotationRuleNaturalLanguage')
    AutomatedReasoningPolicyAnnotationStatus = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyAnnotationStatus')
    AutomatedReasoningPolicyArn = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyArn')
    AutomatedReasoningPolicyBuildDocumentBlob = Shapes::BlobShape.new(name: 'AutomatedReasoningPolicyBuildDocumentBlob')
    AutomatedReasoningPolicyBuildDocumentContentType = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyBuildDocumentContentType')
    AutomatedReasoningPolicyBuildDocumentDescription = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyBuildDocumentDescription')
    AutomatedReasoningPolicyBuildDocumentName = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyBuildDocumentName')
    AutomatedReasoningPolicyBuildLog = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyBuildLog')
    AutomatedReasoningPolicyBuildLogEntry = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyBuildLogEntry')
    AutomatedReasoningPolicyBuildLogEntryList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyBuildLogEntryList')
    AutomatedReasoningPolicyBuildMessageType = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyBuildMessageType')
    AutomatedReasoningPolicyBuildResultAssetType = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyBuildResultAssetType')
    AutomatedReasoningPolicyBuildResultAssets = Shapes::UnionShape.new(name: 'AutomatedReasoningPolicyBuildResultAssets')
    AutomatedReasoningPolicyBuildStep = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyBuildStep')
    AutomatedReasoningPolicyBuildStepContext = Shapes::UnionShape.new(name: 'AutomatedReasoningPolicyBuildStepContext')
    AutomatedReasoningPolicyBuildStepList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyBuildStepList')
    AutomatedReasoningPolicyBuildStepMessage = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyBuildStepMessage')
    AutomatedReasoningPolicyBuildStepMessageList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyBuildStepMessageList')
    AutomatedReasoningPolicyBuildWorkflowDocument = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyBuildWorkflowDocument')
    AutomatedReasoningPolicyBuildWorkflowDocumentList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyBuildWorkflowDocumentList')
    AutomatedReasoningPolicyBuildWorkflowId = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyBuildWorkflowId')
    AutomatedReasoningPolicyBuildWorkflowRepairContent = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyBuildWorkflowRepairContent')
    AutomatedReasoningPolicyBuildWorkflowSource = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyBuildWorkflowSource')
    AutomatedReasoningPolicyBuildWorkflowStatus = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyBuildWorkflowStatus')
    AutomatedReasoningPolicyBuildWorkflowSummaries = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyBuildWorkflowSummaries')
    AutomatedReasoningPolicyBuildWorkflowSummary = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyBuildWorkflowSummary')
    AutomatedReasoningPolicyBuildWorkflowType = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyBuildWorkflowType')
    AutomatedReasoningPolicyConflictedRuleIdList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyConflictedRuleIdList')
    AutomatedReasoningPolicyDefinition = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyDefinition')
    AutomatedReasoningPolicyDefinitionElement = Shapes::UnionShape.new(name: 'AutomatedReasoningPolicyDefinitionElement')
    AutomatedReasoningPolicyDefinitionQualityReport = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyDefinitionQualityReport')
    AutomatedReasoningPolicyDefinitionRule = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyDefinitionRule')
    AutomatedReasoningPolicyDefinitionRuleAlternateExpression = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyDefinitionRuleAlternateExpression')
    AutomatedReasoningPolicyDefinitionRuleExpression = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyDefinitionRuleExpression')
    AutomatedReasoningPolicyDefinitionRuleId = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyDefinitionRuleId')
    AutomatedReasoningPolicyDefinitionRuleIdList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyDefinitionRuleIdList')
    AutomatedReasoningPolicyDefinitionRuleList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyDefinitionRuleList')
    AutomatedReasoningPolicyDefinitionType = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyDefinitionType')
    AutomatedReasoningPolicyDefinitionTypeDescription = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyDefinitionTypeDescription')
    AutomatedReasoningPolicyDefinitionTypeList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyDefinitionTypeList')
    AutomatedReasoningPolicyDefinitionTypeName = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyDefinitionTypeName')
    AutomatedReasoningPolicyDefinitionTypeNameList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyDefinitionTypeNameList')
    AutomatedReasoningPolicyDefinitionTypeValue = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyDefinitionTypeValue')
    AutomatedReasoningPolicyDefinitionTypeValueDescription = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyDefinitionTypeValueDescription')
    AutomatedReasoningPolicyDefinitionTypeValueList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyDefinitionTypeValueList')
    AutomatedReasoningPolicyDefinitionTypeValueName = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyDefinitionTypeValueName')
    AutomatedReasoningPolicyDefinitionTypeValuePair = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyDefinitionTypeValuePair')
    AutomatedReasoningPolicyDefinitionTypeValuePairList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyDefinitionTypeValuePairList')
    AutomatedReasoningPolicyDefinitionVariable = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyDefinitionVariable')
    AutomatedReasoningPolicyDefinitionVariableDescription = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyDefinitionVariableDescription')
    AutomatedReasoningPolicyDefinitionVariableList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyDefinitionVariableList')
    AutomatedReasoningPolicyDefinitionVariableName = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyDefinitionVariableName')
    AutomatedReasoningPolicyDefinitionVariableNameList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyDefinitionVariableNameList')
    AutomatedReasoningPolicyDeleteRuleAnnotation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyDeleteRuleAnnotation')
    AutomatedReasoningPolicyDeleteRuleMutation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyDeleteRuleMutation')
    AutomatedReasoningPolicyDeleteTypeAnnotation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyDeleteTypeAnnotation')
    AutomatedReasoningPolicyDeleteTypeMutation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyDeleteTypeMutation')
    AutomatedReasoningPolicyDeleteTypeValue = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyDeleteTypeValue')
    AutomatedReasoningPolicyDeleteVariableAnnotation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyDeleteVariableAnnotation')
    AutomatedReasoningPolicyDeleteVariableMutation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyDeleteVariableMutation')
    AutomatedReasoningPolicyDescription = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyDescription')
    AutomatedReasoningPolicyDisjointRuleSet = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyDisjointRuleSet')
    AutomatedReasoningPolicyDisjointRuleSetList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyDisjointRuleSetList')
    AutomatedReasoningPolicyDisjointedRuleIdList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyDisjointedRuleIdList')
    AutomatedReasoningPolicyFormatVersion = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyFormatVersion')
    AutomatedReasoningPolicyHash = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyHash')
    AutomatedReasoningPolicyId = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyId')
    AutomatedReasoningPolicyIngestContentAnnotation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyIngestContentAnnotation')
    AutomatedReasoningPolicyMutation = Shapes::UnionShape.new(name: 'AutomatedReasoningPolicyMutation')
    AutomatedReasoningPolicyName = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyName')
    AutomatedReasoningPolicyPlanning = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyPlanning')
    AutomatedReasoningPolicyScenario = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyScenario')
    AutomatedReasoningPolicyScenarioAlternateExpression = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyScenarioAlternateExpression')
    AutomatedReasoningPolicyScenarioExpression = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyScenarioExpression')
    AutomatedReasoningPolicySummaries = Shapes::ListShape.new(name: 'AutomatedReasoningPolicySummaries')
    AutomatedReasoningPolicySummary = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicySummary')
    AutomatedReasoningPolicyTestCase = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyTestCase')
    AutomatedReasoningPolicyTestCaseId = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyTestCaseId')
    AutomatedReasoningPolicyTestCaseIdList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyTestCaseIdList')
    AutomatedReasoningPolicyTestCaseList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyTestCaseList')
    AutomatedReasoningPolicyTestGuardContent = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyTestGuardContent')
    AutomatedReasoningPolicyTestList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyTestList')
    AutomatedReasoningPolicyTestQueryContent = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyTestQueryContent')
    AutomatedReasoningPolicyTestResult = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyTestResult')
    AutomatedReasoningPolicyTestRunResult = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyTestRunResult')
    AutomatedReasoningPolicyTestRunStatus = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyTestRunStatus')
    AutomatedReasoningPolicyTypeValueAnnotation = Shapes::UnionShape.new(name: 'AutomatedReasoningPolicyTypeValueAnnotation')
    AutomatedReasoningPolicyTypeValueAnnotationList = Shapes::ListShape.new(name: 'AutomatedReasoningPolicyTypeValueAnnotationList')
    AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation')
    AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation')
    AutomatedReasoningPolicyUpdateRuleAnnotation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyUpdateRuleAnnotation')
    AutomatedReasoningPolicyUpdateRuleMutation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyUpdateRuleMutation')
    AutomatedReasoningPolicyUpdateTypeAnnotation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyUpdateTypeAnnotation')
    AutomatedReasoningPolicyUpdateTypeMutation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyUpdateTypeMutation')
    AutomatedReasoningPolicyUpdateTypeValue = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyUpdateTypeValue')
    AutomatedReasoningPolicyUpdateVariableAnnotation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyUpdateVariableAnnotation')
    AutomatedReasoningPolicyUpdateVariableMutation = Shapes::StructureShape.new(name: 'AutomatedReasoningPolicyUpdateVariableMutation')
    AutomatedReasoningPolicyVersion = Shapes::StringShape.new(name: 'AutomatedReasoningPolicyVersion')
    AutomatedReasoningPolicyWorkflowTypeContent = Shapes::UnionShape.new(name: 'AutomatedReasoningPolicyWorkflowTypeContent')
    BaseModelIdentifier = Shapes::StringShape.new(name: 'BaseModelIdentifier')
    BatchDeleteEvaluationJobError = Shapes::StructureShape.new(name: 'BatchDeleteEvaluationJobError')
    BatchDeleteEvaluationJobErrors = Shapes::ListShape.new(name: 'BatchDeleteEvaluationJobErrors')
    BatchDeleteEvaluationJobItem = Shapes::StructureShape.new(name: 'BatchDeleteEvaluationJobItem')
    BatchDeleteEvaluationJobItems = Shapes::ListShape.new(name: 'BatchDeleteEvaluationJobItems')
    BatchDeleteEvaluationJobRequest = Shapes::StructureShape.new(name: 'BatchDeleteEvaluationJobRequest')
    BatchDeleteEvaluationJobResponse = Shapes::StructureShape.new(name: 'BatchDeleteEvaluationJobResponse')
    BedrockEvaluatorModel = Shapes::StructureShape.new(name: 'BedrockEvaluatorModel')
    BedrockEvaluatorModels = Shapes::ListShape.new(name: 'BedrockEvaluatorModels')
    BedrockModelArn = Shapes::StringShape.new(name: 'BedrockModelArn')
    BedrockModelId = Shapes::StringShape.new(name: 'BedrockModelId')
    BedrockRerankingModelArn = Shapes::StringShape.new(name: 'BedrockRerankingModelArn')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BrandedName = Shapes::StringShape.new(name: 'BrandedName')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    ByteContentBlob = Shapes::BlobShape.new(name: 'ByteContentBlob')
    ByteContentDoc = Shapes::StructureShape.new(name: 'ByteContentDoc')
    CancelAutomatedReasoningPolicyBuildWorkflowRequest = Shapes::StructureShape.new(name: 'CancelAutomatedReasoningPolicyBuildWorkflowRequest')
    CancelAutomatedReasoningPolicyBuildWorkflowResponse = Shapes::StructureShape.new(name: 'CancelAutomatedReasoningPolicyBuildWorkflowResponse')
    CloudWatchConfig = Shapes::StructureShape.new(name: 'CloudWatchConfig')
    CommitmentDuration = Shapes::StringShape.new(name: 'CommitmentDuration')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    CreateAutomatedReasoningPolicyRequest = Shapes::StructureShape.new(name: 'CreateAutomatedReasoningPolicyRequest')
    CreateAutomatedReasoningPolicyResponse = Shapes::StructureShape.new(name: 'CreateAutomatedReasoningPolicyResponse')
    CreateAutomatedReasoningPolicyTestCaseRequest = Shapes::StructureShape.new(name: 'CreateAutomatedReasoningPolicyTestCaseRequest')
    CreateAutomatedReasoningPolicyTestCaseResponse = Shapes::StructureShape.new(name: 'CreateAutomatedReasoningPolicyTestCaseResponse')
    CreateAutomatedReasoningPolicyVersionRequest = Shapes::StructureShape.new(name: 'CreateAutomatedReasoningPolicyVersionRequest')
    CreateAutomatedReasoningPolicyVersionResponse = Shapes::StructureShape.new(name: 'CreateAutomatedReasoningPolicyVersionResponse')
    CreateCustomModelDeploymentRequest = Shapes::StructureShape.new(name: 'CreateCustomModelDeploymentRequest')
    CreateCustomModelDeploymentResponse = Shapes::StructureShape.new(name: 'CreateCustomModelDeploymentResponse')
    CreateCustomModelRequest = Shapes::StructureShape.new(name: 'CreateCustomModelRequest')
    CreateCustomModelResponse = Shapes::StructureShape.new(name: 'CreateCustomModelResponse')
    CreateEvaluationJobRequest = Shapes::StructureShape.new(name: 'CreateEvaluationJobRequest')
    CreateEvaluationJobResponse = Shapes::StructureShape.new(name: 'CreateEvaluationJobResponse')
    CreateFoundationModelAgreementRequest = Shapes::StructureShape.new(name: 'CreateFoundationModelAgreementRequest')
    CreateFoundationModelAgreementResponse = Shapes::StructureShape.new(name: 'CreateFoundationModelAgreementResponse')
    CreateGuardrailRequest = Shapes::StructureShape.new(name: 'CreateGuardrailRequest')
    CreateGuardrailResponse = Shapes::StructureShape.new(name: 'CreateGuardrailResponse')
    CreateGuardrailVersionRequest = Shapes::StructureShape.new(name: 'CreateGuardrailVersionRequest')
    CreateGuardrailVersionResponse = Shapes::StructureShape.new(name: 'CreateGuardrailVersionResponse')
    CreateInferenceProfileRequest = Shapes::StructureShape.new(name: 'CreateInferenceProfileRequest')
    CreateInferenceProfileResponse = Shapes::StructureShape.new(name: 'CreateInferenceProfileResponse')
    CreateMarketplaceModelEndpointRequest = Shapes::StructureShape.new(name: 'CreateMarketplaceModelEndpointRequest')
    CreateMarketplaceModelEndpointResponse = Shapes::StructureShape.new(name: 'CreateMarketplaceModelEndpointResponse')
    CreateModelCopyJobRequest = Shapes::StructureShape.new(name: 'CreateModelCopyJobRequest')
    CreateModelCopyJobResponse = Shapes::StructureShape.new(name: 'CreateModelCopyJobResponse')
    CreateModelCustomizationJobRequest = Shapes::StructureShape.new(name: 'CreateModelCustomizationJobRequest')
    CreateModelCustomizationJobResponse = Shapes::StructureShape.new(name: 'CreateModelCustomizationJobResponse')
    CreateModelImportJobRequest = Shapes::StructureShape.new(name: 'CreateModelImportJobRequest')
    CreateModelImportJobResponse = Shapes::StructureShape.new(name: 'CreateModelImportJobResponse')
    CreateModelInvocationJobRequest = Shapes::StructureShape.new(name: 'CreateModelInvocationJobRequest')
    CreateModelInvocationJobResponse = Shapes::StructureShape.new(name: 'CreateModelInvocationJobResponse')
    CreatePromptRouterRequest = Shapes::StructureShape.new(name: 'CreatePromptRouterRequest')
    CreatePromptRouterResponse = Shapes::StructureShape.new(name: 'CreatePromptRouterResponse')
    CreateProvisionedModelThroughputRequest = Shapes::StructureShape.new(name: 'CreateProvisionedModelThroughputRequest')
    CreateProvisionedModelThroughputResponse = Shapes::StructureShape.new(name: 'CreateProvisionedModelThroughputResponse')
    CustomMetricBedrockEvaluatorModel = Shapes::StructureShape.new(name: 'CustomMetricBedrockEvaluatorModel')
    CustomMetricBedrockEvaluatorModels = Shapes::ListShape.new(name: 'CustomMetricBedrockEvaluatorModels')
    CustomMetricDefinition = Shapes::StructureShape.new(name: 'CustomMetricDefinition')
    CustomMetricEvaluatorModelConfig = Shapes::StructureShape.new(name: 'CustomMetricEvaluatorModelConfig')
    CustomMetricInstructions = Shapes::StringShape.new(name: 'CustomMetricInstructions')
    CustomModelArn = Shapes::StringShape.new(name: 'CustomModelArn')
    CustomModelDeploymentArn = Shapes::StringShape.new(name: 'CustomModelDeploymentArn')
    CustomModelDeploymentDescription = Shapes::StringShape.new(name: 'CustomModelDeploymentDescription')
    CustomModelDeploymentIdentifier = Shapes::StringShape.new(name: 'CustomModelDeploymentIdentifier')
    CustomModelDeploymentStatus = Shapes::StringShape.new(name: 'CustomModelDeploymentStatus')
    CustomModelDeploymentSummary = Shapes::StructureShape.new(name: 'CustomModelDeploymentSummary')
    CustomModelDeploymentSummaryList = Shapes::ListShape.new(name: 'CustomModelDeploymentSummaryList')
    CustomModelName = Shapes::StringShape.new(name: 'CustomModelName')
    CustomModelSummary = Shapes::StructureShape.new(name: 'CustomModelSummary')
    CustomModelSummaryList = Shapes::ListShape.new(name: 'CustomModelSummaryList')
    CustomModelUnits = Shapes::StructureShape.new(name: 'CustomModelUnits')
    CustomModelUnitsVersion = Shapes::StringShape.new(name: 'CustomModelUnitsVersion')
    CustomizationConfig = Shapes::UnionShape.new(name: 'CustomizationConfig')
    CustomizationType = Shapes::StringShape.new(name: 'CustomizationType')
    DataProcessingDetails = Shapes::StructureShape.new(name: 'DataProcessingDetails')
    DeleteAutomatedReasoningPolicyBuildWorkflowRequest = Shapes::StructureShape.new(name: 'DeleteAutomatedReasoningPolicyBuildWorkflowRequest')
    DeleteAutomatedReasoningPolicyBuildWorkflowResponse = Shapes::StructureShape.new(name: 'DeleteAutomatedReasoningPolicyBuildWorkflowResponse')
    DeleteAutomatedReasoningPolicyRequest = Shapes::StructureShape.new(name: 'DeleteAutomatedReasoningPolicyRequest')
    DeleteAutomatedReasoningPolicyResponse = Shapes::StructureShape.new(name: 'DeleteAutomatedReasoningPolicyResponse')
    DeleteAutomatedReasoningPolicyTestCaseRequest = Shapes::StructureShape.new(name: 'DeleteAutomatedReasoningPolicyTestCaseRequest')
    DeleteAutomatedReasoningPolicyTestCaseResponse = Shapes::StructureShape.new(name: 'DeleteAutomatedReasoningPolicyTestCaseResponse')
    DeleteCustomModelDeploymentRequest = Shapes::StructureShape.new(name: 'DeleteCustomModelDeploymentRequest')
    DeleteCustomModelDeploymentResponse = Shapes::StructureShape.new(name: 'DeleteCustomModelDeploymentResponse')
    DeleteCustomModelRequest = Shapes::StructureShape.new(name: 'DeleteCustomModelRequest')
    DeleteCustomModelResponse = Shapes::StructureShape.new(name: 'DeleteCustomModelResponse')
    DeleteFoundationModelAgreementRequest = Shapes::StructureShape.new(name: 'DeleteFoundationModelAgreementRequest')
    DeleteFoundationModelAgreementResponse = Shapes::StructureShape.new(name: 'DeleteFoundationModelAgreementResponse')
    DeleteGuardrailRequest = Shapes::StructureShape.new(name: 'DeleteGuardrailRequest')
    DeleteGuardrailResponse = Shapes::StructureShape.new(name: 'DeleteGuardrailResponse')
    DeleteImportedModelRequest = Shapes::StructureShape.new(name: 'DeleteImportedModelRequest')
    DeleteImportedModelResponse = Shapes::StructureShape.new(name: 'DeleteImportedModelResponse')
    DeleteInferenceProfileRequest = Shapes::StructureShape.new(name: 'DeleteInferenceProfileRequest')
    DeleteInferenceProfileResponse = Shapes::StructureShape.new(name: 'DeleteInferenceProfileResponse')
    DeleteMarketplaceModelEndpointRequest = Shapes::StructureShape.new(name: 'DeleteMarketplaceModelEndpointRequest')
    DeleteMarketplaceModelEndpointResponse = Shapes::StructureShape.new(name: 'DeleteMarketplaceModelEndpointResponse')
    DeleteModelInvocationLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteModelInvocationLoggingConfigurationRequest')
    DeleteModelInvocationLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteModelInvocationLoggingConfigurationResponse')
    DeletePromptRouterRequest = Shapes::StructureShape.new(name: 'DeletePromptRouterRequest')
    DeletePromptRouterResponse = Shapes::StructureShape.new(name: 'DeletePromptRouterResponse')
    DeleteProvisionedModelThroughputRequest = Shapes::StructureShape.new(name: 'DeleteProvisionedModelThroughputRequest')
    DeleteProvisionedModelThroughputResponse = Shapes::StructureShape.new(name: 'DeleteProvisionedModelThroughputResponse')
    DeregisterMarketplaceModelEndpointRequest = Shapes::StructureShape.new(name: 'DeregisterMarketplaceModelEndpointRequest')
    DeregisterMarketplaceModelEndpointResponse = Shapes::StructureShape.new(name: 'DeregisterMarketplaceModelEndpointResponse')
    DimensionalPriceRate = Shapes::StructureShape.new(name: 'DimensionalPriceRate')
    DistillationConfig = Shapes::StructureShape.new(name: 'DistillationConfig')
    EndpointConfig = Shapes::UnionShape.new(name: 'EndpointConfig')
    EndpointName = Shapes::StringShape.new(name: 'EndpointName')
    EntitlementAvailability = Shapes::StringShape.new(name: 'EntitlementAvailability')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorMessages = Shapes::ListShape.new(name: 'ErrorMessages')
    EvaluationBedrockKnowledgeBaseIdentifiers = Shapes::ListShape.new(name: 'EvaluationBedrockKnowledgeBaseIdentifiers')
    EvaluationBedrockModel = Shapes::StructureShape.new(name: 'EvaluationBedrockModel')
    EvaluationBedrockModelIdentifier = Shapes::StringShape.new(name: 'EvaluationBedrockModelIdentifier')
    EvaluationBedrockModelIdentifiers = Shapes::ListShape.new(name: 'EvaluationBedrockModelIdentifiers')
    EvaluationConfig = Shapes::UnionShape.new(name: 'EvaluationConfig')
    EvaluationDataset = Shapes::StructureShape.new(name: 'EvaluationDataset')
    EvaluationDatasetLocation = Shapes::UnionShape.new(name: 'EvaluationDatasetLocation')
    EvaluationDatasetMetricConfig = Shapes::StructureShape.new(name: 'EvaluationDatasetMetricConfig')
    EvaluationDatasetMetricConfigs = Shapes::ListShape.new(name: 'EvaluationDatasetMetricConfigs')
    EvaluationDatasetName = Shapes::StringShape.new(name: 'EvaluationDatasetName')
    EvaluationInferenceConfig = Shapes::UnionShape.new(name: 'EvaluationInferenceConfig')
    EvaluationInferenceConfigSummary = Shapes::StructureShape.new(name: 'EvaluationInferenceConfigSummary')
    EvaluationJobArn = Shapes::StringShape.new(name: 'EvaluationJobArn')
    EvaluationJobDescription = Shapes::StringShape.new(name: 'EvaluationJobDescription')
    EvaluationJobIdentifier = Shapes::StringShape.new(name: 'EvaluationJobIdentifier')
    EvaluationJobIdentifiers = Shapes::ListShape.new(name: 'EvaluationJobIdentifiers')
    EvaluationJobName = Shapes::StringShape.new(name: 'EvaluationJobName')
    EvaluationJobStatus = Shapes::StringShape.new(name: 'EvaluationJobStatus')
    EvaluationJobType = Shapes::StringShape.new(name: 'EvaluationJobType')
    EvaluationMetricDescription = Shapes::StringShape.new(name: 'EvaluationMetricDescription')
    EvaluationMetricName = Shapes::StringShape.new(name: 'EvaluationMetricName')
    EvaluationMetricNames = Shapes::ListShape.new(name: 'EvaluationMetricNames')
    EvaluationModelConfig = Shapes::UnionShape.new(name: 'EvaluationModelConfig')
    EvaluationModelConfigSummary = Shapes::StructureShape.new(name: 'EvaluationModelConfigSummary')
    EvaluationModelConfigs = Shapes::ListShape.new(name: 'EvaluationModelConfigs')
    EvaluationModelInferenceParams = Shapes::StringShape.new(name: 'EvaluationModelInferenceParams')
    EvaluationOutputDataConfig = Shapes::StructureShape.new(name: 'EvaluationOutputDataConfig')
    EvaluationPrecomputedInferenceSource = Shapes::StructureShape.new(name: 'EvaluationPrecomputedInferenceSource')
    EvaluationPrecomputedInferenceSourceIdentifier = Shapes::StringShape.new(name: 'EvaluationPrecomputedInferenceSourceIdentifier')
    EvaluationPrecomputedInferenceSourceIdentifiers = Shapes::ListShape.new(name: 'EvaluationPrecomputedInferenceSourceIdentifiers')
    EvaluationPrecomputedRagSourceConfig = Shapes::UnionShape.new(name: 'EvaluationPrecomputedRagSourceConfig')
    EvaluationPrecomputedRagSourceIdentifier = Shapes::StringShape.new(name: 'EvaluationPrecomputedRagSourceIdentifier')
    EvaluationPrecomputedRagSourceIdentifiers = Shapes::ListShape.new(name: 'EvaluationPrecomputedRagSourceIdentifiers')
    EvaluationPrecomputedRetrieveAndGenerateSourceConfig = Shapes::StructureShape.new(name: 'EvaluationPrecomputedRetrieveAndGenerateSourceConfig')
    EvaluationPrecomputedRetrieveSourceConfig = Shapes::StructureShape.new(name: 'EvaluationPrecomputedRetrieveSourceConfig')
    EvaluationRagConfigSummary = Shapes::StructureShape.new(name: 'EvaluationRagConfigSummary')
    EvaluationRatingMethod = Shapes::StringShape.new(name: 'EvaluationRatingMethod')
    EvaluationSummaries = Shapes::ListShape.new(name: 'EvaluationSummaries')
    EvaluationSummary = Shapes::StructureShape.new(name: 'EvaluationSummary')
    EvaluationTaskType = Shapes::StringShape.new(name: 'EvaluationTaskType')
    EvaluationTaskTypes = Shapes::ListShape.new(name: 'EvaluationTaskTypes')
    EvaluatorModelConfig = Shapes::UnionShape.new(name: 'EvaluatorModelConfig')
    EvaluatorModelIdentifier = Shapes::StringShape.new(name: 'EvaluatorModelIdentifier')
    EvaluatorModelIdentifiers = Shapes::ListShape.new(name: 'EvaluatorModelIdentifiers')
    ExportAutomatedReasoningPolicyVersionRequest = Shapes::StructureShape.new(name: 'ExportAutomatedReasoningPolicyVersionRequest')
    ExportAutomatedReasoningPolicyVersionResponse = Shapes::StructureShape.new(name: 'ExportAutomatedReasoningPolicyVersionResponse')
    ExternalSource = Shapes::StructureShape.new(name: 'ExternalSource')
    ExternalSourceType = Shapes::StringShape.new(name: 'ExternalSourceType')
    ExternalSources = Shapes::ListShape.new(name: 'ExternalSources')
    ExternalSourcesGenerationConfiguration = Shapes::StructureShape.new(name: 'ExternalSourcesGenerationConfiguration')
    ExternalSourcesRetrieveAndGenerateConfiguration = Shapes::StructureShape.new(name: 'ExternalSourcesRetrieveAndGenerateConfiguration')
    FieldForReranking = Shapes::StructureShape.new(name: 'FieldForReranking')
    FieldForRerankingFieldNameString = Shapes::StringShape.new(name: 'FieldForRerankingFieldNameString')
    FieldsForReranking = Shapes::ListShape.new(name: 'FieldsForReranking')
    FilterAttribute = Shapes::StructureShape.new(name: 'FilterAttribute')
    FilterKey = Shapes::StringShape.new(name: 'FilterKey')
    FilterValue = Shapes::DocumentShape.new(name: 'FilterValue', document: true)
    FineTuningJobStatus = Shapes::StringShape.new(name: 'FineTuningJobStatus')
    Float = Shapes::FloatShape.new(name: 'Float')
    FoundationModelArn = Shapes::StringShape.new(name: 'FoundationModelArn')
    FoundationModelDetails = Shapes::StructureShape.new(name: 'FoundationModelDetails')
    FoundationModelLifecycle = Shapes::StructureShape.new(name: 'FoundationModelLifecycle')
    FoundationModelLifecycleStatus = Shapes::StringShape.new(name: 'FoundationModelLifecycleStatus')
    FoundationModelSummary = Shapes::StructureShape.new(name: 'FoundationModelSummary')
    FoundationModelSummaryList = Shapes::ListShape.new(name: 'FoundationModelSummaryList')
    GenerationConfiguration = Shapes::StructureShape.new(name: 'GenerationConfiguration')
    GetAutomatedReasoningPolicyAnnotationsRequest = Shapes::StructureShape.new(name: 'GetAutomatedReasoningPolicyAnnotationsRequest')
    GetAutomatedReasoningPolicyAnnotationsResponse = Shapes::StructureShape.new(name: 'GetAutomatedReasoningPolicyAnnotationsResponse')
    GetAutomatedReasoningPolicyBuildWorkflowRequest = Shapes::StructureShape.new(name: 'GetAutomatedReasoningPolicyBuildWorkflowRequest')
    GetAutomatedReasoningPolicyBuildWorkflowResponse = Shapes::StructureShape.new(name: 'GetAutomatedReasoningPolicyBuildWorkflowResponse')
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest = Shapes::StructureShape.new(name: 'GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest')
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse = Shapes::StructureShape.new(name: 'GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse')
    GetAutomatedReasoningPolicyNextScenarioRequest = Shapes::StructureShape.new(name: 'GetAutomatedReasoningPolicyNextScenarioRequest')
    GetAutomatedReasoningPolicyNextScenarioResponse = Shapes::StructureShape.new(name: 'GetAutomatedReasoningPolicyNextScenarioResponse')
    GetAutomatedReasoningPolicyRequest = Shapes::StructureShape.new(name: 'GetAutomatedReasoningPolicyRequest')
    GetAutomatedReasoningPolicyResponse = Shapes::StructureShape.new(name: 'GetAutomatedReasoningPolicyResponse')
    GetAutomatedReasoningPolicyTestCaseRequest = Shapes::StructureShape.new(name: 'GetAutomatedReasoningPolicyTestCaseRequest')
    GetAutomatedReasoningPolicyTestCaseResponse = Shapes::StructureShape.new(name: 'GetAutomatedReasoningPolicyTestCaseResponse')
    GetAutomatedReasoningPolicyTestResultRequest = Shapes::StructureShape.new(name: 'GetAutomatedReasoningPolicyTestResultRequest')
    GetAutomatedReasoningPolicyTestResultResponse = Shapes::StructureShape.new(name: 'GetAutomatedReasoningPolicyTestResultResponse')
    GetCustomModelDeploymentRequest = Shapes::StructureShape.new(name: 'GetCustomModelDeploymentRequest')
    GetCustomModelDeploymentResponse = Shapes::StructureShape.new(name: 'GetCustomModelDeploymentResponse')
    GetCustomModelRequest = Shapes::StructureShape.new(name: 'GetCustomModelRequest')
    GetCustomModelResponse = Shapes::StructureShape.new(name: 'GetCustomModelResponse')
    GetEvaluationJobRequest = Shapes::StructureShape.new(name: 'GetEvaluationJobRequest')
    GetEvaluationJobResponse = Shapes::StructureShape.new(name: 'GetEvaluationJobResponse')
    GetFoundationModelAvailabilityRequest = Shapes::StructureShape.new(name: 'GetFoundationModelAvailabilityRequest')
    GetFoundationModelAvailabilityResponse = Shapes::StructureShape.new(name: 'GetFoundationModelAvailabilityResponse')
    GetFoundationModelIdentifier = Shapes::StringShape.new(name: 'GetFoundationModelIdentifier')
    GetFoundationModelRequest = Shapes::StructureShape.new(name: 'GetFoundationModelRequest')
    GetFoundationModelResponse = Shapes::StructureShape.new(name: 'GetFoundationModelResponse')
    GetGuardrailRequest = Shapes::StructureShape.new(name: 'GetGuardrailRequest')
    GetGuardrailResponse = Shapes::StructureShape.new(name: 'GetGuardrailResponse')
    GetImportedModelRequest = Shapes::StructureShape.new(name: 'GetImportedModelRequest')
    GetImportedModelResponse = Shapes::StructureShape.new(name: 'GetImportedModelResponse')
    GetInferenceProfileRequest = Shapes::StructureShape.new(name: 'GetInferenceProfileRequest')
    GetInferenceProfileResponse = Shapes::StructureShape.new(name: 'GetInferenceProfileResponse')
    GetMarketplaceModelEndpointRequest = Shapes::StructureShape.new(name: 'GetMarketplaceModelEndpointRequest')
    GetMarketplaceModelEndpointResponse = Shapes::StructureShape.new(name: 'GetMarketplaceModelEndpointResponse')
    GetModelCopyJobRequest = Shapes::StructureShape.new(name: 'GetModelCopyJobRequest')
    GetModelCopyJobResponse = Shapes::StructureShape.new(name: 'GetModelCopyJobResponse')
    GetModelCustomizationJobRequest = Shapes::StructureShape.new(name: 'GetModelCustomizationJobRequest')
    GetModelCustomizationJobResponse = Shapes::StructureShape.new(name: 'GetModelCustomizationJobResponse')
    GetModelImportJobRequest = Shapes::StructureShape.new(name: 'GetModelImportJobRequest')
    GetModelImportJobResponse = Shapes::StructureShape.new(name: 'GetModelImportJobResponse')
    GetModelInvocationJobRequest = Shapes::StructureShape.new(name: 'GetModelInvocationJobRequest')
    GetModelInvocationJobResponse = Shapes::StructureShape.new(name: 'GetModelInvocationJobResponse')
    GetModelInvocationLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'GetModelInvocationLoggingConfigurationRequest')
    GetModelInvocationLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'GetModelInvocationLoggingConfigurationResponse')
    GetPromptRouterRequest = Shapes::StructureShape.new(name: 'GetPromptRouterRequest')
    GetPromptRouterResponse = Shapes::StructureShape.new(name: 'GetPromptRouterResponse')
    GetProvisionedModelThroughputRequest = Shapes::StructureShape.new(name: 'GetProvisionedModelThroughputRequest')
    GetProvisionedModelThroughputResponse = Shapes::StructureShape.new(name: 'GetProvisionedModelThroughputResponse')
    GetUseCaseForModelAccessRequest = Shapes::StructureShape.new(name: 'GetUseCaseForModelAccessRequest')
    GetUseCaseForModelAccessResponse = Shapes::StructureShape.new(name: 'GetUseCaseForModelAccessResponse')
    GuardrailArn = Shapes::StringShape.new(name: 'GuardrailArn')
    GuardrailAutomatedReasoningPolicy = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningPolicy')
    GuardrailAutomatedReasoningPolicyConfig = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningPolicyConfig')
    GuardrailAutomatedReasoningPolicyConfigPoliciesList = Shapes::ListShape.new(name: 'GuardrailAutomatedReasoningPolicyConfigPoliciesList')
    GuardrailAutomatedReasoningPolicyPoliciesList = Shapes::ListShape.new(name: 'GuardrailAutomatedReasoningPolicyPoliciesList')
    GuardrailBlockedMessaging = Shapes::StringShape.new(name: 'GuardrailBlockedMessaging')
    GuardrailConfiguration = Shapes::StructureShape.new(name: 'GuardrailConfiguration')
    GuardrailConfigurationGuardrailIdString = Shapes::StringShape.new(name: 'GuardrailConfigurationGuardrailIdString')
    GuardrailConfigurationGuardrailVersionString = Shapes::StringShape.new(name: 'GuardrailConfigurationGuardrailVersionString')
    GuardrailContentFilter = Shapes::StructureShape.new(name: 'GuardrailContentFilter')
    GuardrailContentFilterAction = Shapes::StringShape.new(name: 'GuardrailContentFilterAction')
    GuardrailContentFilterConfig = Shapes::StructureShape.new(name: 'GuardrailContentFilterConfig')
    GuardrailContentFilterType = Shapes::StringShape.new(name: 'GuardrailContentFilterType')
    GuardrailContentFilters = Shapes::ListShape.new(name: 'GuardrailContentFilters')
    GuardrailContentFiltersConfig = Shapes::ListShape.new(name: 'GuardrailContentFiltersConfig')
    GuardrailContentFiltersTier = Shapes::StructureShape.new(name: 'GuardrailContentFiltersTier')
    GuardrailContentFiltersTierConfig = Shapes::StructureShape.new(name: 'GuardrailContentFiltersTierConfig')
    GuardrailContentFiltersTierName = Shapes::StringShape.new(name: 'GuardrailContentFiltersTierName')
    GuardrailContentPolicy = Shapes::StructureShape.new(name: 'GuardrailContentPolicy')
    GuardrailContentPolicyConfig = Shapes::StructureShape.new(name: 'GuardrailContentPolicyConfig')
    GuardrailContextualGroundingAction = Shapes::StringShape.new(name: 'GuardrailContextualGroundingAction')
    GuardrailContextualGroundingFilter = Shapes::StructureShape.new(name: 'GuardrailContextualGroundingFilter')
    GuardrailContextualGroundingFilterConfig = Shapes::StructureShape.new(name: 'GuardrailContextualGroundingFilterConfig')
    GuardrailContextualGroundingFilterConfigThresholdDouble = Shapes::FloatShape.new(name: 'GuardrailContextualGroundingFilterConfigThresholdDouble')
    GuardrailContextualGroundingFilterThresholdDouble = Shapes::FloatShape.new(name: 'GuardrailContextualGroundingFilterThresholdDouble')
    GuardrailContextualGroundingFilterType = Shapes::StringShape.new(name: 'GuardrailContextualGroundingFilterType')
    GuardrailContextualGroundingFilters = Shapes::ListShape.new(name: 'GuardrailContextualGroundingFilters')
    GuardrailContextualGroundingFiltersConfig = Shapes::ListShape.new(name: 'GuardrailContextualGroundingFiltersConfig')
    GuardrailContextualGroundingPolicy = Shapes::StructureShape.new(name: 'GuardrailContextualGroundingPolicy')
    GuardrailContextualGroundingPolicyConfig = Shapes::StructureShape.new(name: 'GuardrailContextualGroundingPolicyConfig')
    GuardrailCrossRegionConfig = Shapes::StructureShape.new(name: 'GuardrailCrossRegionConfig')
    GuardrailCrossRegionDetails = Shapes::StructureShape.new(name: 'GuardrailCrossRegionDetails')
    GuardrailCrossRegionGuardrailProfileArn = Shapes::StringShape.new(name: 'GuardrailCrossRegionGuardrailProfileArn')
    GuardrailCrossRegionGuardrailProfileId = Shapes::StringShape.new(name: 'GuardrailCrossRegionGuardrailProfileId')
    GuardrailCrossRegionGuardrailProfileIdentifier = Shapes::StringShape.new(name: 'GuardrailCrossRegionGuardrailProfileIdentifier')
    GuardrailDescription = Shapes::StringShape.new(name: 'GuardrailDescription')
    GuardrailDraftVersion = Shapes::StringShape.new(name: 'GuardrailDraftVersion')
    GuardrailFailureRecommendation = Shapes::StringShape.new(name: 'GuardrailFailureRecommendation')
    GuardrailFailureRecommendations = Shapes::ListShape.new(name: 'GuardrailFailureRecommendations')
    GuardrailFilterStrength = Shapes::StringShape.new(name: 'GuardrailFilterStrength')
    GuardrailId = Shapes::StringShape.new(name: 'GuardrailId')
    GuardrailIdentifier = Shapes::StringShape.new(name: 'GuardrailIdentifier')
    GuardrailManagedWordLists = Shapes::ListShape.new(name: 'GuardrailManagedWordLists')
    GuardrailManagedWordListsConfig = Shapes::ListShape.new(name: 'GuardrailManagedWordListsConfig')
    GuardrailManagedWords = Shapes::StructureShape.new(name: 'GuardrailManagedWords')
    GuardrailManagedWordsConfig = Shapes::StructureShape.new(name: 'GuardrailManagedWordsConfig')
    GuardrailManagedWordsType = Shapes::StringShape.new(name: 'GuardrailManagedWordsType')
    GuardrailModalities = Shapes::ListShape.new(name: 'GuardrailModalities')
    GuardrailModality = Shapes::StringShape.new(name: 'GuardrailModality')
    GuardrailName = Shapes::StringShape.new(name: 'GuardrailName')
    GuardrailNumericalVersion = Shapes::StringShape.new(name: 'GuardrailNumericalVersion')
    GuardrailPiiEntities = Shapes::ListShape.new(name: 'GuardrailPiiEntities')
    GuardrailPiiEntitiesConfig = Shapes::ListShape.new(name: 'GuardrailPiiEntitiesConfig')
    GuardrailPiiEntity = Shapes::StructureShape.new(name: 'GuardrailPiiEntity')
    GuardrailPiiEntityConfig = Shapes::StructureShape.new(name: 'GuardrailPiiEntityConfig')
    GuardrailPiiEntityType = Shapes::StringShape.new(name: 'GuardrailPiiEntityType')
    GuardrailRegex = Shapes::StructureShape.new(name: 'GuardrailRegex')
    GuardrailRegexConfig = Shapes::StructureShape.new(name: 'GuardrailRegexConfig')
    GuardrailRegexConfigDescriptionString = Shapes::StringShape.new(name: 'GuardrailRegexConfigDescriptionString')
    GuardrailRegexConfigNameString = Shapes::StringShape.new(name: 'GuardrailRegexConfigNameString')
    GuardrailRegexConfigPatternString = Shapes::StringShape.new(name: 'GuardrailRegexConfigPatternString')
    GuardrailRegexDescriptionString = Shapes::StringShape.new(name: 'GuardrailRegexDescriptionString')
    GuardrailRegexNameString = Shapes::StringShape.new(name: 'GuardrailRegexNameString')
    GuardrailRegexPatternString = Shapes::StringShape.new(name: 'GuardrailRegexPatternString')
    GuardrailRegexes = Shapes::ListShape.new(name: 'GuardrailRegexes')
    GuardrailRegexesConfig = Shapes::ListShape.new(name: 'GuardrailRegexesConfig')
    GuardrailSensitiveInformationAction = Shapes::StringShape.new(name: 'GuardrailSensitiveInformationAction')
    GuardrailSensitiveInformationPolicy = Shapes::StructureShape.new(name: 'GuardrailSensitiveInformationPolicy')
    GuardrailSensitiveInformationPolicyConfig = Shapes::StructureShape.new(name: 'GuardrailSensitiveInformationPolicyConfig')
    GuardrailStatus = Shapes::StringShape.new(name: 'GuardrailStatus')
    GuardrailStatusReason = Shapes::StringShape.new(name: 'GuardrailStatusReason')
    GuardrailStatusReasons = Shapes::ListShape.new(name: 'GuardrailStatusReasons')
    GuardrailSummaries = Shapes::ListShape.new(name: 'GuardrailSummaries')
    GuardrailSummary = Shapes::StructureShape.new(name: 'GuardrailSummary')
    GuardrailTopic = Shapes::StructureShape.new(name: 'GuardrailTopic')
    GuardrailTopicAction = Shapes::StringShape.new(name: 'GuardrailTopicAction')
    GuardrailTopicConfig = Shapes::StructureShape.new(name: 'GuardrailTopicConfig')
    GuardrailTopicDefinition = Shapes::StringShape.new(name: 'GuardrailTopicDefinition')
    GuardrailTopicExample = Shapes::StringShape.new(name: 'GuardrailTopicExample')
    GuardrailTopicExamples = Shapes::ListShape.new(name: 'GuardrailTopicExamples')
    GuardrailTopicName = Shapes::StringShape.new(name: 'GuardrailTopicName')
    GuardrailTopicPolicy = Shapes::StructureShape.new(name: 'GuardrailTopicPolicy')
    GuardrailTopicPolicyConfig = Shapes::StructureShape.new(name: 'GuardrailTopicPolicyConfig')
    GuardrailTopicType = Shapes::StringShape.new(name: 'GuardrailTopicType')
    GuardrailTopics = Shapes::ListShape.new(name: 'GuardrailTopics')
    GuardrailTopicsConfig = Shapes::ListShape.new(name: 'GuardrailTopicsConfig')
    GuardrailTopicsTier = Shapes::StructureShape.new(name: 'GuardrailTopicsTier')
    GuardrailTopicsTierConfig = Shapes::StructureShape.new(name: 'GuardrailTopicsTierConfig')
    GuardrailTopicsTierName = Shapes::StringShape.new(name: 'GuardrailTopicsTierName')
    GuardrailVersion = Shapes::StringShape.new(name: 'GuardrailVersion')
    GuardrailWord = Shapes::StructureShape.new(name: 'GuardrailWord')
    GuardrailWordAction = Shapes::StringShape.new(name: 'GuardrailWordAction')
    GuardrailWordConfig = Shapes::StructureShape.new(name: 'GuardrailWordConfig')
    GuardrailWordConfigTextString = Shapes::StringShape.new(name: 'GuardrailWordConfigTextString')
    GuardrailWordPolicy = Shapes::StructureShape.new(name: 'GuardrailWordPolicy')
    GuardrailWordPolicyConfig = Shapes::StructureShape.new(name: 'GuardrailWordPolicyConfig')
    GuardrailWordTextString = Shapes::StringShape.new(name: 'GuardrailWordTextString')
    GuardrailWords = Shapes::ListShape.new(name: 'GuardrailWords')
    GuardrailWordsConfig = Shapes::ListShape.new(name: 'GuardrailWordsConfig')
    HumanEvaluationConfig = Shapes::StructureShape.new(name: 'HumanEvaluationConfig')
    HumanEvaluationCustomMetric = Shapes::StructureShape.new(name: 'HumanEvaluationCustomMetric')
    HumanEvaluationCustomMetrics = Shapes::ListShape.new(name: 'HumanEvaluationCustomMetrics')
    HumanTaskInstructions = Shapes::StringShape.new(name: 'HumanTaskInstructions')
    HumanWorkflowConfig = Shapes::StructureShape.new(name: 'HumanWorkflowConfig')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    ImplicitFilterConfiguration = Shapes::StructureShape.new(name: 'ImplicitFilterConfiguration')
    ImportedModelArn = Shapes::StringShape.new(name: 'ImportedModelArn')
    ImportedModelIdentifier = Shapes::StringShape.new(name: 'ImportedModelIdentifier')
    ImportedModelName = Shapes::StringShape.new(name: 'ImportedModelName')
    ImportedModelSummary = Shapes::StructureShape.new(name: 'ImportedModelSummary')
    ImportedModelSummaryList = Shapes::ListShape.new(name: 'ImportedModelSummaryList')
    InferenceProfileArn = Shapes::StringShape.new(name: 'InferenceProfileArn')
    InferenceProfileDescription = Shapes::StringShape.new(name: 'InferenceProfileDescription')
    InferenceProfileId = Shapes::StringShape.new(name: 'InferenceProfileId')
    InferenceProfileIdentifier = Shapes::StringShape.new(name: 'InferenceProfileIdentifier')
    InferenceProfileModel = Shapes::StructureShape.new(name: 'InferenceProfileModel')
    InferenceProfileModelSource = Shapes::UnionShape.new(name: 'InferenceProfileModelSource')
    InferenceProfileModelSourceArn = Shapes::StringShape.new(name: 'InferenceProfileModelSourceArn')
    InferenceProfileModels = Shapes::ListShape.new(name: 'InferenceProfileModels')
    InferenceProfileName = Shapes::StringShape.new(name: 'InferenceProfileName')
    InferenceProfileStatus = Shapes::StringShape.new(name: 'InferenceProfileStatus')
    InferenceProfileSummaries = Shapes::ListShape.new(name: 'InferenceProfileSummaries')
    InferenceProfileSummary = Shapes::StructureShape.new(name: 'InferenceProfileSummary')
    InferenceProfileType = Shapes::StringShape.new(name: 'InferenceProfileType')
    InferenceType = Shapes::StringShape.new(name: 'InferenceType')
    InferenceTypeList = Shapes::ListShape.new(name: 'InferenceTypeList')
    InstanceCount = Shapes::IntegerShape.new(name: 'InstanceCount')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InstructSupported = Shapes::BooleanShape.new(name: 'InstructSupported')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvocationLogSource = Shapes::UnionShape.new(name: 'InvocationLogSource')
    InvocationLogsConfig = Shapes::StructureShape.new(name: 'InvocationLogsConfig')
    JobName = Shapes::StringShape.new(name: 'JobName')
    JobStatusDetails = Shapes::StringShape.new(name: 'JobStatusDetails')
    KbInferenceConfig = Shapes::StructureShape.new(name: 'KbInferenceConfig')
    KeyPrefix = Shapes::StringShape.new(name: 'KeyPrefix')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    KnowledgeBaseConfig = Shapes::UnionShape.new(name: 'KnowledgeBaseConfig')
    KnowledgeBaseId = Shapes::StringShape.new(name: 'KnowledgeBaseId')
    KnowledgeBaseRetrievalConfiguration = Shapes::StructureShape.new(name: 'KnowledgeBaseRetrievalConfiguration')
    KnowledgeBaseRetrieveAndGenerateConfiguration = Shapes::StructureShape.new(name: 'KnowledgeBaseRetrieveAndGenerateConfiguration')
    KnowledgeBaseVectorSearchConfiguration = Shapes::StructureShape.new(name: 'KnowledgeBaseVectorSearchConfiguration')
    KnowledgeBaseVectorSearchConfigurationNumberOfResultsInteger = Shapes::IntegerShape.new(name: 'KnowledgeBaseVectorSearchConfigurationNumberOfResultsInteger')
    LegalTerm = Shapes::StructureShape.new(name: 'LegalTerm')
    ListAutomatedReasoningPoliciesRequest = Shapes::StructureShape.new(name: 'ListAutomatedReasoningPoliciesRequest')
    ListAutomatedReasoningPoliciesResponse = Shapes::StructureShape.new(name: 'ListAutomatedReasoningPoliciesResponse')
    ListAutomatedReasoningPolicyBuildWorkflowsRequest = Shapes::StructureShape.new(name: 'ListAutomatedReasoningPolicyBuildWorkflowsRequest')
    ListAutomatedReasoningPolicyBuildWorkflowsResponse = Shapes::StructureShape.new(name: 'ListAutomatedReasoningPolicyBuildWorkflowsResponse')
    ListAutomatedReasoningPolicyTestCasesRequest = Shapes::StructureShape.new(name: 'ListAutomatedReasoningPolicyTestCasesRequest')
    ListAutomatedReasoningPolicyTestCasesResponse = Shapes::StructureShape.new(name: 'ListAutomatedReasoningPolicyTestCasesResponse')
    ListAutomatedReasoningPolicyTestResultsRequest = Shapes::StructureShape.new(name: 'ListAutomatedReasoningPolicyTestResultsRequest')
    ListAutomatedReasoningPolicyTestResultsResponse = Shapes::StructureShape.new(name: 'ListAutomatedReasoningPolicyTestResultsResponse')
    ListCustomModelDeploymentsRequest = Shapes::StructureShape.new(name: 'ListCustomModelDeploymentsRequest')
    ListCustomModelDeploymentsResponse = Shapes::StructureShape.new(name: 'ListCustomModelDeploymentsResponse')
    ListCustomModelsRequest = Shapes::StructureShape.new(name: 'ListCustomModelsRequest')
    ListCustomModelsResponse = Shapes::StructureShape.new(name: 'ListCustomModelsResponse')
    ListEvaluationJobsRequest = Shapes::StructureShape.new(name: 'ListEvaluationJobsRequest')
    ListEvaluationJobsResponse = Shapes::StructureShape.new(name: 'ListEvaluationJobsResponse')
    ListFoundationModelAgreementOffersRequest = Shapes::StructureShape.new(name: 'ListFoundationModelAgreementOffersRequest')
    ListFoundationModelAgreementOffersResponse = Shapes::StructureShape.new(name: 'ListFoundationModelAgreementOffersResponse')
    ListFoundationModelsRequest = Shapes::StructureShape.new(name: 'ListFoundationModelsRequest')
    ListFoundationModelsResponse = Shapes::StructureShape.new(name: 'ListFoundationModelsResponse')
    ListGuardrailsRequest = Shapes::StructureShape.new(name: 'ListGuardrailsRequest')
    ListGuardrailsResponse = Shapes::StructureShape.new(name: 'ListGuardrailsResponse')
    ListImportedModelsRequest = Shapes::StructureShape.new(name: 'ListImportedModelsRequest')
    ListImportedModelsResponse = Shapes::StructureShape.new(name: 'ListImportedModelsResponse')
    ListInferenceProfilesRequest = Shapes::StructureShape.new(name: 'ListInferenceProfilesRequest')
    ListInferenceProfilesResponse = Shapes::StructureShape.new(name: 'ListInferenceProfilesResponse')
    ListMarketplaceModelEndpointsRequest = Shapes::StructureShape.new(name: 'ListMarketplaceModelEndpointsRequest')
    ListMarketplaceModelEndpointsResponse = Shapes::StructureShape.new(name: 'ListMarketplaceModelEndpointsResponse')
    ListModelCopyJobsRequest = Shapes::StructureShape.new(name: 'ListModelCopyJobsRequest')
    ListModelCopyJobsResponse = Shapes::StructureShape.new(name: 'ListModelCopyJobsResponse')
    ListModelCustomizationJobsRequest = Shapes::StructureShape.new(name: 'ListModelCustomizationJobsRequest')
    ListModelCustomizationJobsResponse = Shapes::StructureShape.new(name: 'ListModelCustomizationJobsResponse')
    ListModelImportJobsRequest = Shapes::StructureShape.new(name: 'ListModelImportJobsRequest')
    ListModelImportJobsResponse = Shapes::StructureShape.new(name: 'ListModelImportJobsResponse')
    ListModelInvocationJobsRequest = Shapes::StructureShape.new(name: 'ListModelInvocationJobsRequest')
    ListModelInvocationJobsResponse = Shapes::StructureShape.new(name: 'ListModelInvocationJobsResponse')
    ListPromptRoutersRequest = Shapes::StructureShape.new(name: 'ListPromptRoutersRequest')
    ListPromptRoutersResponse = Shapes::StructureShape.new(name: 'ListPromptRoutersResponse')
    ListProvisionedModelThroughputsRequest = Shapes::StructureShape.new(name: 'ListProvisionedModelThroughputsRequest')
    ListProvisionedModelThroughputsResponse = Shapes::StructureShape.new(name: 'ListProvisionedModelThroughputsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    LoggingConfig = Shapes::StructureShape.new(name: 'LoggingConfig')
    MarketplaceModelEndpoint = Shapes::StructureShape.new(name: 'MarketplaceModelEndpoint')
    MarketplaceModelEndpointSummaries = Shapes::ListShape.new(name: 'MarketplaceModelEndpointSummaries')
    MarketplaceModelEndpointSummary = Shapes::StructureShape.new(name: 'MarketplaceModelEndpointSummary')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxTokens = Shapes::IntegerShape.new(name: 'MaxTokens')
    Message = Shapes::StringShape.new(name: 'Message')
    MetadataAttributeSchema = Shapes::StructureShape.new(name: 'MetadataAttributeSchema')
    MetadataAttributeSchemaDescriptionString = Shapes::StringShape.new(name: 'MetadataAttributeSchemaDescriptionString')
    MetadataAttributeSchemaKeyString = Shapes::StringShape.new(name: 'MetadataAttributeSchemaKeyString')
    MetadataAttributeSchemaList = Shapes::ListShape.new(name: 'MetadataAttributeSchemaList')
    MetadataConfigurationForReranking = Shapes::StructureShape.new(name: 'MetadataConfigurationForReranking')
    MetricFloat = Shapes::FloatShape.new(name: 'MetricFloat')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    ModelArchitecture = Shapes::StringShape.new(name: 'ModelArchitecture')
    ModelArn = Shapes::StringShape.new(name: 'ModelArn')
    ModelCopyJobArn = Shapes::StringShape.new(name: 'ModelCopyJobArn')
    ModelCopyJobStatus = Shapes::StringShape.new(name: 'ModelCopyJobStatus')
    ModelCopyJobSummaries = Shapes::ListShape.new(name: 'ModelCopyJobSummaries')
    ModelCopyJobSummary = Shapes::StructureShape.new(name: 'ModelCopyJobSummary')
    ModelCustomization = Shapes::StringShape.new(name: 'ModelCustomization')
    ModelCustomizationHyperParameters = Shapes::MapShape.new(name: 'ModelCustomizationHyperParameters')
    ModelCustomizationJobArn = Shapes::StringShape.new(name: 'ModelCustomizationJobArn')
    ModelCustomizationJobIdentifier = Shapes::StringShape.new(name: 'ModelCustomizationJobIdentifier')
    ModelCustomizationJobStatus = Shapes::StringShape.new(name: 'ModelCustomizationJobStatus')
    ModelCustomizationJobSummaries = Shapes::ListShape.new(name: 'ModelCustomizationJobSummaries')
    ModelCustomizationJobSummary = Shapes::StructureShape.new(name: 'ModelCustomizationJobSummary')
    ModelCustomizationList = Shapes::ListShape.new(name: 'ModelCustomizationList')
    ModelDataSource = Shapes::UnionShape.new(name: 'ModelDataSource')
    ModelDeploymentName = Shapes::StringShape.new(name: 'ModelDeploymentName')
    ModelId = Shapes::StringShape.new(name: 'ModelId')
    ModelIdentifier = Shapes::StringShape.new(name: 'ModelIdentifier')
    ModelImportJobArn = Shapes::StringShape.new(name: 'ModelImportJobArn')
    ModelImportJobIdentifier = Shapes::StringShape.new(name: 'ModelImportJobIdentifier')
    ModelImportJobStatus = Shapes::StringShape.new(name: 'ModelImportJobStatus')
    ModelImportJobSummaries = Shapes::ListShape.new(name: 'ModelImportJobSummaries')
    ModelImportJobSummary = Shapes::StructureShape.new(name: 'ModelImportJobSummary')
    ModelInvocationIdempotencyToken = Shapes::StringShape.new(name: 'ModelInvocationIdempotencyToken')
    ModelInvocationJobArn = Shapes::StringShape.new(name: 'ModelInvocationJobArn')
    ModelInvocationJobIdentifier = Shapes::StringShape.new(name: 'ModelInvocationJobIdentifier')
    ModelInvocationJobInputDataConfig = Shapes::UnionShape.new(name: 'ModelInvocationJobInputDataConfig')
    ModelInvocationJobName = Shapes::StringShape.new(name: 'ModelInvocationJobName')
    ModelInvocationJobOutputDataConfig = Shapes::UnionShape.new(name: 'ModelInvocationJobOutputDataConfig')
    ModelInvocationJobS3InputDataConfig = Shapes::StructureShape.new(name: 'ModelInvocationJobS3InputDataConfig')
    ModelInvocationJobS3OutputDataConfig = Shapes::StructureShape.new(name: 'ModelInvocationJobS3OutputDataConfig')
    ModelInvocationJobStatus = Shapes::StringShape.new(name: 'ModelInvocationJobStatus')
    ModelInvocationJobSummaries = Shapes::ListShape.new(name: 'ModelInvocationJobSummaries')
    ModelInvocationJobSummary = Shapes::StructureShape.new(name: 'ModelInvocationJobSummary')
    ModelInvocationJobTimeoutDurationInHours = Shapes::IntegerShape.new(name: 'ModelInvocationJobTimeoutDurationInHours')
    ModelModality = Shapes::StringShape.new(name: 'ModelModality')
    ModelModalityList = Shapes::ListShape.new(name: 'ModelModalityList')
    ModelName = Shapes::StringShape.new(name: 'ModelName')
    ModelSourceIdentifier = Shapes::StringShape.new(name: 'ModelSourceIdentifier')
    ModelStatus = Shapes::StringShape.new(name: 'ModelStatus')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    Offer = Shapes::StructureShape.new(name: 'Offer')
    OfferId = Shapes::StringShape.new(name: 'OfferId')
    OfferToken = Shapes::StringShape.new(name: 'OfferToken')
    OfferType = Shapes::StringShape.new(name: 'OfferType')
    Offers = Shapes::ListShape.new(name: 'Offers')
    OrchestrationConfiguration = Shapes::StructureShape.new(name: 'OrchestrationConfiguration')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PerformanceConfigLatency = Shapes::StringShape.new(name: 'PerformanceConfigLatency')
    PerformanceConfiguration = Shapes::StructureShape.new(name: 'PerformanceConfiguration')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    PricingTerm = Shapes::StructureShape.new(name: 'PricingTerm')
    PromptRouterArn = Shapes::StringShape.new(name: 'PromptRouterArn')
    PromptRouterDescription = Shapes::StringShape.new(name: 'PromptRouterDescription')
    PromptRouterName = Shapes::StringShape.new(name: 'PromptRouterName')
    PromptRouterStatus = Shapes::StringShape.new(name: 'PromptRouterStatus')
    PromptRouterSummaries = Shapes::ListShape.new(name: 'PromptRouterSummaries')
    PromptRouterSummary = Shapes::StructureShape.new(name: 'PromptRouterSummary')
    PromptRouterTargetModel = Shapes::StructureShape.new(name: 'PromptRouterTargetModel')
    PromptRouterTargetModelArn = Shapes::StringShape.new(name: 'PromptRouterTargetModelArn')
    PromptRouterTargetModels = Shapes::ListShape.new(name: 'PromptRouterTargetModels')
    PromptRouterType = Shapes::StringShape.new(name: 'PromptRouterType')
    PromptTemplate = Shapes::StructureShape.new(name: 'PromptTemplate')
    Provider = Shapes::StringShape.new(name: 'Provider')
    ProvisionedModelArn = Shapes::StringShape.new(name: 'ProvisionedModelArn')
    ProvisionedModelId = Shapes::StringShape.new(name: 'ProvisionedModelId')
    ProvisionedModelName = Shapes::StringShape.new(name: 'ProvisionedModelName')
    ProvisionedModelStatus = Shapes::StringShape.new(name: 'ProvisionedModelStatus')
    ProvisionedModelSummaries = Shapes::ListShape.new(name: 'ProvisionedModelSummaries')
    ProvisionedModelSummary = Shapes::StructureShape.new(name: 'ProvisionedModelSummary')
    PutModelInvocationLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'PutModelInvocationLoggingConfigurationRequest')
    PutModelInvocationLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'PutModelInvocationLoggingConfigurationResponse')
    PutUseCaseForModelAccessRequest = Shapes::StructureShape.new(name: 'PutUseCaseForModelAccessRequest')
    PutUseCaseForModelAccessResponse = Shapes::StructureShape.new(name: 'PutUseCaseForModelAccessResponse')
    QueryTransformationConfiguration = Shapes::StructureShape.new(name: 'QueryTransformationConfiguration')
    QueryTransformationType = Shapes::StringShape.new(name: 'QueryTransformationType')
    RAGConfig = Shapes::UnionShape.new(name: 'RAGConfig')
    RAGStopSequences = Shapes::ListShape.new(name: 'RAGStopSequences')
    RAGStopSequencesMemberString = Shapes::StringShape.new(name: 'RAGStopSequencesMemberString')
    RagConfigs = Shapes::ListShape.new(name: 'RagConfigs')
    RateCard = Shapes::ListShape.new(name: 'RateCard')
    RatingScale = Shapes::ListShape.new(name: 'RatingScale')
    RatingScaleItem = Shapes::StructureShape.new(name: 'RatingScaleItem')
    RatingScaleItemDefinition = Shapes::StringShape.new(name: 'RatingScaleItemDefinition')
    RatingScaleItemValue = Shapes::UnionShape.new(name: 'RatingScaleItemValue')
    RatingScaleItemValueStringValueString = Shapes::StringShape.new(name: 'RatingScaleItemValueStringValueString')
    RegionAvailability = Shapes::StringShape.new(name: 'RegionAvailability')
    RegisterMarketplaceModelEndpointRequest = Shapes::StructureShape.new(name: 'RegisterMarketplaceModelEndpointRequest')
    RegisterMarketplaceModelEndpointResponse = Shapes::StructureShape.new(name: 'RegisterMarketplaceModelEndpointResponse')
    RequestMetadataBaseFilters = Shapes::StructureShape.new(name: 'RequestMetadataBaseFilters')
    RequestMetadataFilters = Shapes::UnionShape.new(name: 'RequestMetadataFilters')
    RequestMetadataFiltersList = Shapes::ListShape.new(name: 'RequestMetadataFiltersList')
    RequestMetadataMap = Shapes::MapShape.new(name: 'RequestMetadataMap')
    RequestMetadataMapKeyString = Shapes::StringShape.new(name: 'RequestMetadataMapKeyString')
    RequestMetadataMapValueString = Shapes::StringShape.new(name: 'RequestMetadataMapValueString')
    RerankingMetadataSelectionMode = Shapes::StringShape.new(name: 'RerankingMetadataSelectionMode')
    RerankingMetadataSelectiveModeConfiguration = Shapes::UnionShape.new(name: 'RerankingMetadataSelectiveModeConfiguration')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetrievalFilter = Shapes::UnionShape.new(name: 'RetrievalFilter')
    RetrievalFilterList = Shapes::ListShape.new(name: 'RetrievalFilterList')
    RetrieveAndGenerateConfiguration = Shapes::StructureShape.new(name: 'RetrieveAndGenerateConfiguration')
    RetrieveAndGenerateType = Shapes::StringShape.new(name: 'RetrieveAndGenerateType')
    RetrieveConfig = Shapes::StructureShape.new(name: 'RetrieveConfig')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RoutingCriteria = Shapes::StructureShape.new(name: 'RoutingCriteria')
    RoutingCriteriaResponseQualityDifferenceDouble = Shapes::FloatShape.new(name: 'RoutingCriteriaResponseQualityDifferenceDouble')
    S3Config = Shapes::StructureShape.new(name: 'S3Config')
    S3DataSource = Shapes::StructureShape.new(name: 'S3DataSource')
    S3InputFormat = Shapes::StringShape.new(name: 'S3InputFormat')
    S3ObjectDoc = Shapes::StructureShape.new(name: 'S3ObjectDoc')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SageMakerEndpoint = Shapes::StructureShape.new(name: 'SageMakerEndpoint')
    SageMakerFlowDefinitionArn = Shapes::StringShape.new(name: 'SageMakerFlowDefinitionArn')
    SearchType = Shapes::StringShape.new(name: 'SearchType')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SortByProvisionedModels = Shapes::StringShape.new(name: 'SortByProvisionedModels')
    SortJobsBy = Shapes::StringShape.new(name: 'SortJobsBy')
    SortModelsBy = Shapes::StringShape.new(name: 'SortModelsBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartAutomatedReasoningPolicyBuildWorkflowRequest = Shapes::StructureShape.new(name: 'StartAutomatedReasoningPolicyBuildWorkflowRequest')
    StartAutomatedReasoningPolicyBuildWorkflowResponse = Shapes::StructureShape.new(name: 'StartAutomatedReasoningPolicyBuildWorkflowResponse')
    StartAutomatedReasoningPolicyTestWorkflowRequest = Shapes::StructureShape.new(name: 'StartAutomatedReasoningPolicyTestWorkflowRequest')
    StartAutomatedReasoningPolicyTestWorkflowResponse = Shapes::StructureShape.new(name: 'StartAutomatedReasoningPolicyTestWorkflowResponse')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusDetails = Shapes::StructureShape.new(name: 'StatusDetails')
    StopEvaluationJobRequest = Shapes::StructureShape.new(name: 'StopEvaluationJobRequest')
    StopEvaluationJobResponse = Shapes::StructureShape.new(name: 'StopEvaluationJobResponse')
    StopModelCustomizationJobRequest = Shapes::StructureShape.new(name: 'StopModelCustomizationJobRequest')
    StopModelCustomizationJobResponse = Shapes::StructureShape.new(name: 'StopModelCustomizationJobResponse')
    StopModelInvocationJobRequest = Shapes::StructureShape.new(name: 'StopModelInvocationJobRequest')
    StopModelInvocationJobResponse = Shapes::StructureShape.new(name: 'StopModelInvocationJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    SupportTerm = Shapes::StructureShape.new(name: 'SupportTerm')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourcesArn = Shapes::StringShape.new(name: 'TaggableResourcesArn')
    TeacherModelConfig = Shapes::StructureShape.new(name: 'TeacherModelConfig')
    TeacherModelIdentifier = Shapes::StringShape.new(name: 'TeacherModelIdentifier')
    Temperature = Shapes::FloatShape.new(name: 'Temperature')
    TermDetails = Shapes::StructureShape.new(name: 'TermDetails')
    TextInferenceConfig = Shapes::StructureShape.new(name: 'TextInferenceConfig')
    TextPromptTemplate = Shapes::StringShape.new(name: 'TextPromptTemplate')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TopP = Shapes::FloatShape.new(name: 'TopP')
    TrainingDataConfig = Shapes::StructureShape.new(name: 'TrainingDataConfig')
    TrainingDetails = Shapes::StructureShape.new(name: 'TrainingDetails')
    TrainingMetrics = Shapes::StructureShape.new(name: 'TrainingMetrics')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAutomatedReasoningPolicyAnnotationsRequest = Shapes::StructureShape.new(name: 'UpdateAutomatedReasoningPolicyAnnotationsRequest')
    UpdateAutomatedReasoningPolicyAnnotationsResponse = Shapes::StructureShape.new(name: 'UpdateAutomatedReasoningPolicyAnnotationsResponse')
    UpdateAutomatedReasoningPolicyRequest = Shapes::StructureShape.new(name: 'UpdateAutomatedReasoningPolicyRequest')
    UpdateAutomatedReasoningPolicyResponse = Shapes::StructureShape.new(name: 'UpdateAutomatedReasoningPolicyResponse')
    UpdateAutomatedReasoningPolicyTestCaseRequest = Shapes::StructureShape.new(name: 'UpdateAutomatedReasoningPolicyTestCaseRequest')
    UpdateAutomatedReasoningPolicyTestCaseResponse = Shapes::StructureShape.new(name: 'UpdateAutomatedReasoningPolicyTestCaseResponse')
    UpdateGuardrailRequest = Shapes::StructureShape.new(name: 'UpdateGuardrailRequest')
    UpdateGuardrailResponse = Shapes::StructureShape.new(name: 'UpdateGuardrailResponse')
    UpdateMarketplaceModelEndpointRequest = Shapes::StructureShape.new(name: 'UpdateMarketplaceModelEndpointRequest')
    UpdateMarketplaceModelEndpointResponse = Shapes::StructureShape.new(name: 'UpdateMarketplaceModelEndpointResponse')
    UpdateProvisionedModelThroughputRequest = Shapes::StructureShape.new(name: 'UpdateProvisionedModelThroughputRequest')
    UpdateProvisionedModelThroughputResponse = Shapes::StructureShape.new(name: 'UpdateProvisionedModelThroughputResponse')
    UsePromptResponse = Shapes::BooleanShape.new(name: 'UsePromptResponse')
    ValidationDataConfig = Shapes::StructureShape.new(name: 'ValidationDataConfig')
    ValidationDetails = Shapes::StructureShape.new(name: 'ValidationDetails')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationMetrics = Shapes::ListShape.new(name: 'ValidationMetrics')
    Validator = Shapes::StructureShape.new(name: 'Validator')
    ValidatorMetric = Shapes::StructureShape.new(name: 'ValidatorMetric')
    Validators = Shapes::ListShape.new(name: 'Validators')
    ValidityTerm = Shapes::StructureShape.new(name: 'ValidityTerm')
    VectorSearchBedrockRerankingConfiguration = Shapes::StructureShape.new(name: 'VectorSearchBedrockRerankingConfiguration')
    VectorSearchBedrockRerankingConfigurationNumberOfRerankedResultsInteger = Shapes::IntegerShape.new(name: 'VectorSearchBedrockRerankingConfigurationNumberOfRerankedResultsInteger')
    VectorSearchBedrockRerankingModelConfiguration = Shapes::StructureShape.new(name: 'VectorSearchBedrockRerankingModelConfiguration')
    VectorSearchRerankingConfiguration = Shapes::StructureShape.new(name: 'VectorSearchRerankingConfiguration')
    VectorSearchRerankingConfigurationType = Shapes::StringShape.new(name: 'VectorSearchRerankingConfigurationType')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')
    kBS3Uri = Shapes::StringShape.new(name: 'kBS3Uri')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AdditionalModelRequestFields.key = Shapes::ShapeRef.new(shape: AdditionalModelRequestFieldsKey)
    AdditionalModelRequestFields.value = Shapes::ShapeRef.new(shape: AdditionalModelRequestFieldsValue)

    AgreementAvailability.add_member(:status, Shapes::ShapeRef.new(shape: AgreementStatus, required: true, location_name: "status"))
    AgreementAvailability.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    AgreementAvailability.struct_class = Types::AgreementAvailability

    AutomatedEvaluationConfig.add_member(:dataset_metric_configs, Shapes::ShapeRef.new(shape: EvaluationDatasetMetricConfigs, required: true, location_name: "datasetMetricConfigs"))
    AutomatedEvaluationConfig.add_member(:evaluator_model_config, Shapes::ShapeRef.new(shape: EvaluatorModelConfig, location_name: "evaluatorModelConfig"))
    AutomatedEvaluationConfig.add_member(:custom_metric_config, Shapes::ShapeRef.new(shape: AutomatedEvaluationCustomMetricConfig, location_name: "customMetricConfig"))
    AutomatedEvaluationConfig.struct_class = Types::AutomatedEvaluationConfig

    AutomatedEvaluationCustomMetricConfig.add_member(:custom_metrics, Shapes::ShapeRef.new(shape: AutomatedEvaluationCustomMetrics, required: true, location_name: "customMetrics"))
    AutomatedEvaluationCustomMetricConfig.add_member(:evaluator_model_config, Shapes::ShapeRef.new(shape: CustomMetricEvaluatorModelConfig, required: true, location_name: "evaluatorModelConfig"))
    AutomatedEvaluationCustomMetricConfig.struct_class = Types::AutomatedEvaluationCustomMetricConfig

    AutomatedEvaluationCustomMetricSource.add_member(:custom_metric_definition, Shapes::ShapeRef.new(shape: CustomMetricDefinition, location_name: "customMetricDefinition"))
    AutomatedEvaluationCustomMetricSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AutomatedEvaluationCustomMetricSource.add_member_subclass(:custom_metric_definition, Types::AutomatedEvaluationCustomMetricSource::CustomMetricDefinition)
    AutomatedEvaluationCustomMetricSource.add_member_subclass(:unknown, Types::AutomatedEvaluationCustomMetricSource::Unknown)
    AutomatedEvaluationCustomMetricSource.struct_class = Types::AutomatedEvaluationCustomMetricSource

    AutomatedEvaluationCustomMetrics.member = Shapes::ShapeRef.new(shape: AutomatedEvaluationCustomMetricSource)

    AutomatedReasoningCheckDifferenceScenarioList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningCheckScenario)

    AutomatedReasoningCheckFinding.add_member(:valid, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckValidFinding, location_name: "valid"))
    AutomatedReasoningCheckFinding.add_member(:invalid, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckInvalidFinding, location_name: "invalid"))
    AutomatedReasoningCheckFinding.add_member(:satisfiable, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckSatisfiableFinding, location_name: "satisfiable"))
    AutomatedReasoningCheckFinding.add_member(:impossible, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckImpossibleFinding, location_name: "impossible"))
    AutomatedReasoningCheckFinding.add_member(:translation_ambiguous, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationAmbiguousFinding, location_name: "translationAmbiguous"))
    AutomatedReasoningCheckFinding.add_member(:too_complex, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTooComplexFinding, location_name: "tooComplex"))
    AutomatedReasoningCheckFinding.add_member(:no_translations, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckNoTranslationsFinding, location_name: "noTranslations"))
    AutomatedReasoningCheckFinding.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AutomatedReasoningCheckFinding.add_member_subclass(:valid, Types::AutomatedReasoningCheckFinding::Valid)
    AutomatedReasoningCheckFinding.add_member_subclass(:invalid, Types::AutomatedReasoningCheckFinding::Invalid)
    AutomatedReasoningCheckFinding.add_member_subclass(:satisfiable, Types::AutomatedReasoningCheckFinding::Satisfiable)
    AutomatedReasoningCheckFinding.add_member_subclass(:impossible, Types::AutomatedReasoningCheckFinding::Impossible)
    AutomatedReasoningCheckFinding.add_member_subclass(:translation_ambiguous, Types::AutomatedReasoningCheckFinding::TranslationAmbiguous)
    AutomatedReasoningCheckFinding.add_member_subclass(:too_complex, Types::AutomatedReasoningCheckFinding::TooComplex)
    AutomatedReasoningCheckFinding.add_member_subclass(:no_translations, Types::AutomatedReasoningCheckFinding::NoTranslations)
    AutomatedReasoningCheckFinding.add_member_subclass(:unknown, Types::AutomatedReasoningCheckFinding::Unknown)
    AutomatedReasoningCheckFinding.struct_class = Types::AutomatedReasoningCheckFinding

    AutomatedReasoningCheckFindingList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningCheckFinding)

    AutomatedReasoningCheckImpossibleFinding.add_member(:translation, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslation, location_name: "translation"))
    AutomatedReasoningCheckImpossibleFinding.add_member(:contradicting_rules, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckRuleList, location_name: "contradictingRules"))
    AutomatedReasoningCheckImpossibleFinding.add_member(:logic_warning, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckLogicWarning, location_name: "logicWarning"))
    AutomatedReasoningCheckImpossibleFinding.struct_class = Types::AutomatedReasoningCheckImpossibleFinding

    AutomatedReasoningCheckInputTextReference.add_member(:text, Shapes::ShapeRef.new(shape: AutomatedReasoningNaturalLanguageStatementContent, location_name: "text"))
    AutomatedReasoningCheckInputTextReference.struct_class = Types::AutomatedReasoningCheckInputTextReference

    AutomatedReasoningCheckInputTextReferenceList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningCheckInputTextReference)

    AutomatedReasoningCheckInvalidFinding.add_member(:translation, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslation, location_name: "translation"))
    AutomatedReasoningCheckInvalidFinding.add_member(:contradicting_rules, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckRuleList, location_name: "contradictingRules"))
    AutomatedReasoningCheckInvalidFinding.add_member(:logic_warning, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckLogicWarning, location_name: "logicWarning"))
    AutomatedReasoningCheckInvalidFinding.struct_class = Types::AutomatedReasoningCheckInvalidFinding

    AutomatedReasoningCheckLogicWarning.add_member(:type, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckLogicWarningType, location_name: "type"))
    AutomatedReasoningCheckLogicWarning.add_member(:premises, Shapes::ShapeRef.new(shape: AutomatedReasoningLogicStatementList, location_name: "premises"))
    AutomatedReasoningCheckLogicWarning.add_member(:claims, Shapes::ShapeRef.new(shape: AutomatedReasoningLogicStatementList, location_name: "claims"))
    AutomatedReasoningCheckLogicWarning.struct_class = Types::AutomatedReasoningCheckLogicWarning

    AutomatedReasoningCheckNoTranslationsFinding.struct_class = Types::AutomatedReasoningCheckNoTranslationsFinding

    AutomatedReasoningCheckRule.add_member(:id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId, location_name: "id"))
    AutomatedReasoningCheckRule.add_member(:policy_version_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location_name: "policyVersionArn"))
    AutomatedReasoningCheckRule.struct_class = Types::AutomatedReasoningCheckRule

    AutomatedReasoningCheckRuleList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningCheckRule)

    AutomatedReasoningCheckSatisfiableFinding.add_member(:translation, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslation, location_name: "translation"))
    AutomatedReasoningCheckSatisfiableFinding.add_member(:claims_true_scenario, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckScenario, location_name: "claimsTrueScenario"))
    AutomatedReasoningCheckSatisfiableFinding.add_member(:claims_false_scenario, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckScenario, location_name: "claimsFalseScenario"))
    AutomatedReasoningCheckSatisfiableFinding.add_member(:logic_warning, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckLogicWarning, location_name: "logicWarning"))
    AutomatedReasoningCheckSatisfiableFinding.struct_class = Types::AutomatedReasoningCheckSatisfiableFinding

    AutomatedReasoningCheckScenario.add_member(:statements, Shapes::ShapeRef.new(shape: AutomatedReasoningLogicStatementList, location_name: "statements"))
    AutomatedReasoningCheckScenario.struct_class = Types::AutomatedReasoningCheckScenario

    AutomatedReasoningCheckTooComplexFinding.struct_class = Types::AutomatedReasoningCheckTooComplexFinding

    AutomatedReasoningCheckTranslation.add_member(:premises, Shapes::ShapeRef.new(shape: AutomatedReasoningLogicStatementList, location_name: "premises"))
    AutomatedReasoningCheckTranslation.add_member(:claims, Shapes::ShapeRef.new(shape: AutomatedReasoningLogicStatementList, required: true, location_name: "claims"))
    AutomatedReasoningCheckTranslation.add_member(:untranslated_premises, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckInputTextReferenceList, location_name: "untranslatedPremises"))
    AutomatedReasoningCheckTranslation.add_member(:untranslated_claims, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckInputTextReferenceList, location_name: "untranslatedClaims"))
    AutomatedReasoningCheckTranslation.add_member(:confidence, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationConfidence, required: true, location_name: "confidence"))
    AutomatedReasoningCheckTranslation.struct_class = Types::AutomatedReasoningCheckTranslation

    AutomatedReasoningCheckTranslationAmbiguousFinding.add_member(:options, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationOptionList, location_name: "options"))
    AutomatedReasoningCheckTranslationAmbiguousFinding.add_member(:difference_scenarios, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckDifferenceScenarioList, location_name: "differenceScenarios"))
    AutomatedReasoningCheckTranslationAmbiguousFinding.struct_class = Types::AutomatedReasoningCheckTranslationAmbiguousFinding

    AutomatedReasoningCheckTranslationList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslation)

    AutomatedReasoningCheckTranslationOption.add_member(:translations, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationList, location_name: "translations"))
    AutomatedReasoningCheckTranslationOption.struct_class = Types::AutomatedReasoningCheckTranslationOption

    AutomatedReasoningCheckTranslationOptionList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationOption)

    AutomatedReasoningCheckValidFinding.add_member(:translation, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslation, location_name: "translation"))
    AutomatedReasoningCheckValidFinding.add_member(:claims_true_scenario, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckScenario, location_name: "claimsTrueScenario"))
    AutomatedReasoningCheckValidFinding.add_member(:supporting_rules, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckRuleList, location_name: "supportingRules"))
    AutomatedReasoningCheckValidFinding.add_member(:logic_warning, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckLogicWarning, location_name: "logicWarning"))
    AutomatedReasoningCheckValidFinding.struct_class = Types::AutomatedReasoningCheckValidFinding

    AutomatedReasoningLogicStatement.add_member(:logic, Shapes::ShapeRef.new(shape: AutomatedReasoningLogicStatementContent, required: true, location_name: "logic"))
    AutomatedReasoningLogicStatement.add_member(:natural_language, Shapes::ShapeRef.new(shape: AutomatedReasoningNaturalLanguageStatementContent, location_name: "naturalLanguage"))
    AutomatedReasoningLogicStatement.struct_class = Types::AutomatedReasoningLogicStatement

    AutomatedReasoningLogicStatementList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningLogicStatement)

    AutomatedReasoningPolicyAddRuleAnnotation.add_member(:expression, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleExpression, required: true, location_name: "expression"))
    AutomatedReasoningPolicyAddRuleAnnotation.struct_class = Types::AutomatedReasoningPolicyAddRuleAnnotation

    AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation.add_member(:natural_language, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationRuleNaturalLanguage, required: true, location_name: "naturalLanguage"))
    AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation.struct_class = Types::AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation

    AutomatedReasoningPolicyAddRuleMutation.add_member(:rule, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRule, required: true, location_name: "rule"))
    AutomatedReasoningPolicyAddRuleMutation.struct_class = Types::AutomatedReasoningPolicyAddRuleMutation

    AutomatedReasoningPolicyAddTypeAnnotation.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, required: true, location_name: "name"))
    AutomatedReasoningPolicyAddTypeAnnotation.add_member(:description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeDescription, required: true, location_name: "description"))
    AutomatedReasoningPolicyAddTypeAnnotation.add_member(:values, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueList, required: true, location_name: "values"))
    AutomatedReasoningPolicyAddTypeAnnotation.struct_class = Types::AutomatedReasoningPolicyAddTypeAnnotation

    AutomatedReasoningPolicyAddTypeMutation.add_member(:type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionType, required: true, location_name: "type"))
    AutomatedReasoningPolicyAddTypeMutation.struct_class = Types::AutomatedReasoningPolicyAddTypeMutation

    AutomatedReasoningPolicyAddTypeValue.add_member(:value, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueName, required: true, location_name: "value"))
    AutomatedReasoningPolicyAddTypeValue.add_member(:description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueDescription, location_name: "description"))
    AutomatedReasoningPolicyAddTypeValue.struct_class = Types::AutomatedReasoningPolicyAddTypeValue

    AutomatedReasoningPolicyAddVariableAnnotation.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableName, required: true, location_name: "name"))
    AutomatedReasoningPolicyAddVariableAnnotation.add_member(:type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, required: true, location_name: "type"))
    AutomatedReasoningPolicyAddVariableAnnotation.add_member(:description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableDescription, required: true, location_name: "description"))
    AutomatedReasoningPolicyAddVariableAnnotation.struct_class = Types::AutomatedReasoningPolicyAddVariableAnnotation

    AutomatedReasoningPolicyAddVariableMutation.add_member(:variable, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariable, required: true, location_name: "variable"))
    AutomatedReasoningPolicyAddVariableMutation.struct_class = Types::AutomatedReasoningPolicyAddVariableMutation

    AutomatedReasoningPolicyAnnotation.add_member(:add_type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddTypeAnnotation, location_name: "addType"))
    AutomatedReasoningPolicyAnnotation.add_member(:update_type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateTypeAnnotation, location_name: "updateType"))
    AutomatedReasoningPolicyAnnotation.add_member(:delete_type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDeleteTypeAnnotation, location_name: "deleteType"))
    AutomatedReasoningPolicyAnnotation.add_member(:add_variable, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddVariableAnnotation, location_name: "addVariable"))
    AutomatedReasoningPolicyAnnotation.add_member(:update_variable, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateVariableAnnotation, location_name: "updateVariable"))
    AutomatedReasoningPolicyAnnotation.add_member(:delete_variable, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDeleteVariableAnnotation, location_name: "deleteVariable"))
    AutomatedReasoningPolicyAnnotation.add_member(:add_rule, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddRuleAnnotation, location_name: "addRule"))
    AutomatedReasoningPolicyAnnotation.add_member(:update_rule, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateRuleAnnotation, location_name: "updateRule"))
    AutomatedReasoningPolicyAnnotation.add_member(:delete_rule, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDeleteRuleAnnotation, location_name: "deleteRule"))
    AutomatedReasoningPolicyAnnotation.add_member(:add_rule_from_natural_language, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddRuleFromNaturalLanguageAnnotation, location_name: "addRuleFromNaturalLanguage"))
    AutomatedReasoningPolicyAnnotation.add_member(:update_from_rules_feedback, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation, location_name: "updateFromRulesFeedback"))
    AutomatedReasoningPolicyAnnotation.add_member(:update_from_scenario_feedback, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation, location_name: "updateFromScenarioFeedback"))
    AutomatedReasoningPolicyAnnotation.add_member(:ingest_content, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyIngestContentAnnotation, location_name: "ingestContent"))
    AutomatedReasoningPolicyAnnotation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AutomatedReasoningPolicyAnnotation.add_member_subclass(:add_type, Types::AutomatedReasoningPolicyAnnotation::AddType)
    AutomatedReasoningPolicyAnnotation.add_member_subclass(:update_type, Types::AutomatedReasoningPolicyAnnotation::UpdateType)
    AutomatedReasoningPolicyAnnotation.add_member_subclass(:delete_type, Types::AutomatedReasoningPolicyAnnotation::DeleteType)
    AutomatedReasoningPolicyAnnotation.add_member_subclass(:add_variable, Types::AutomatedReasoningPolicyAnnotation::AddVariable)
    AutomatedReasoningPolicyAnnotation.add_member_subclass(:update_variable, Types::AutomatedReasoningPolicyAnnotation::UpdateVariable)
    AutomatedReasoningPolicyAnnotation.add_member_subclass(:delete_variable, Types::AutomatedReasoningPolicyAnnotation::DeleteVariable)
    AutomatedReasoningPolicyAnnotation.add_member_subclass(:add_rule, Types::AutomatedReasoningPolicyAnnotation::AddRule)
    AutomatedReasoningPolicyAnnotation.add_member_subclass(:update_rule, Types::AutomatedReasoningPolicyAnnotation::UpdateRule)
    AutomatedReasoningPolicyAnnotation.add_member_subclass(:delete_rule, Types::AutomatedReasoningPolicyAnnotation::DeleteRule)
    AutomatedReasoningPolicyAnnotation.add_member_subclass(:add_rule_from_natural_language, Types::AutomatedReasoningPolicyAnnotation::AddRuleFromNaturalLanguage)
    AutomatedReasoningPolicyAnnotation.add_member_subclass(:update_from_rules_feedback, Types::AutomatedReasoningPolicyAnnotation::UpdateFromRulesFeedback)
    AutomatedReasoningPolicyAnnotation.add_member_subclass(:update_from_scenario_feedback, Types::AutomatedReasoningPolicyAnnotation::UpdateFromScenarioFeedback)
    AutomatedReasoningPolicyAnnotation.add_member_subclass(:ingest_content, Types::AutomatedReasoningPolicyAnnotation::IngestContent)
    AutomatedReasoningPolicyAnnotation.add_member_subclass(:unknown, Types::AutomatedReasoningPolicyAnnotation::Unknown)
    AutomatedReasoningPolicyAnnotation.struct_class = Types::AutomatedReasoningPolicyAnnotation

    AutomatedReasoningPolicyAnnotationList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotation)

    AutomatedReasoningPolicyBuildLog.add_member(:entries, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildLogEntryList, required: true, location_name: "entries"))
    AutomatedReasoningPolicyBuildLog.struct_class = Types::AutomatedReasoningPolicyBuildLog

    AutomatedReasoningPolicyBuildLogEntry.add_member(:annotation, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotation, required: true, location_name: "annotation"))
    AutomatedReasoningPolicyBuildLogEntry.add_member(:status, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationStatus, required: true, location_name: "status"))
    AutomatedReasoningPolicyBuildLogEntry.add_member(:build_steps, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildStepList, required: true, location_name: "buildSteps"))
    AutomatedReasoningPolicyBuildLogEntry.struct_class = Types::AutomatedReasoningPolicyBuildLogEntry

    AutomatedReasoningPolicyBuildLogEntryList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildLogEntry)

    AutomatedReasoningPolicyBuildResultAssets.add_member(:policy_definition, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinition, location_name: "policyDefinition"))
    AutomatedReasoningPolicyBuildResultAssets.add_member(:quality_report, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionQualityReport, location_name: "qualityReport"))
    AutomatedReasoningPolicyBuildResultAssets.add_member(:build_log, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildLog, location_name: "buildLog"))
    AutomatedReasoningPolicyBuildResultAssets.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AutomatedReasoningPolicyBuildResultAssets.add_member_subclass(:policy_definition, Types::AutomatedReasoningPolicyBuildResultAssets::PolicyDefinition)
    AutomatedReasoningPolicyBuildResultAssets.add_member_subclass(:quality_report, Types::AutomatedReasoningPolicyBuildResultAssets::QualityReport)
    AutomatedReasoningPolicyBuildResultAssets.add_member_subclass(:build_log, Types::AutomatedReasoningPolicyBuildResultAssets::BuildLog)
    AutomatedReasoningPolicyBuildResultAssets.add_member_subclass(:unknown, Types::AutomatedReasoningPolicyBuildResultAssets::Unknown)
    AutomatedReasoningPolicyBuildResultAssets.struct_class = Types::AutomatedReasoningPolicyBuildResultAssets

    AutomatedReasoningPolicyBuildStep.add_member(:context, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildStepContext, required: true, location_name: "context"))
    AutomatedReasoningPolicyBuildStep.add_member(:prior_element, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionElement, location_name: "priorElement"))
    AutomatedReasoningPolicyBuildStep.add_member(:messages, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildStepMessageList, required: true, location_name: "messages"))
    AutomatedReasoningPolicyBuildStep.struct_class = Types::AutomatedReasoningPolicyBuildStep

    AutomatedReasoningPolicyBuildStepContext.add_member(:planning, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyPlanning, location_name: "planning"))
    AutomatedReasoningPolicyBuildStepContext.add_member(:mutation, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyMutation, location_name: "mutation"))
    AutomatedReasoningPolicyBuildStepContext.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AutomatedReasoningPolicyBuildStepContext.add_member_subclass(:planning, Types::AutomatedReasoningPolicyBuildStepContext::Planning)
    AutomatedReasoningPolicyBuildStepContext.add_member_subclass(:mutation, Types::AutomatedReasoningPolicyBuildStepContext::Mutation)
    AutomatedReasoningPolicyBuildStepContext.add_member_subclass(:unknown, Types::AutomatedReasoningPolicyBuildStepContext::Unknown)
    AutomatedReasoningPolicyBuildStepContext.struct_class = Types::AutomatedReasoningPolicyBuildStepContext

    AutomatedReasoningPolicyBuildStepList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildStep)

    AutomatedReasoningPolicyBuildStepMessage.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AutomatedReasoningPolicyBuildStepMessage.add_member(:message_type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildMessageType, required: true, location_name: "messageType"))
    AutomatedReasoningPolicyBuildStepMessage.struct_class = Types::AutomatedReasoningPolicyBuildStepMessage

    AutomatedReasoningPolicyBuildStepMessageList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildStepMessage)

    AutomatedReasoningPolicyBuildWorkflowDocument.add_member(:document, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildDocumentBlob, required: true, location_name: "document"))
    AutomatedReasoningPolicyBuildWorkflowDocument.add_member(:document_content_type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildDocumentContentType, required: true, location_name: "documentContentType"))
    AutomatedReasoningPolicyBuildWorkflowDocument.add_member(:document_name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildDocumentName, required: true, location_name: "documentName"))
    AutomatedReasoningPolicyBuildWorkflowDocument.add_member(:document_description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildDocumentDescription, location_name: "documentDescription"))
    AutomatedReasoningPolicyBuildWorkflowDocument.struct_class = Types::AutomatedReasoningPolicyBuildWorkflowDocument

    AutomatedReasoningPolicyBuildWorkflowDocumentList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowDocument)

    AutomatedReasoningPolicyBuildWorkflowRepairContent.add_member(:annotations, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationList, required: true, location_name: "annotations"))
    AutomatedReasoningPolicyBuildWorkflowRepairContent.struct_class = Types::AutomatedReasoningPolicyBuildWorkflowRepairContent

    AutomatedReasoningPolicyBuildWorkflowSource.add_member(:policy_definition, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinition, location_name: "policyDefinition"))
    AutomatedReasoningPolicyBuildWorkflowSource.add_member(:workflow_content, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyWorkflowTypeContent, location_name: "workflowContent"))
    AutomatedReasoningPolicyBuildWorkflowSource.struct_class = Types::AutomatedReasoningPolicyBuildWorkflowSource

    AutomatedReasoningPolicyBuildWorkflowSummaries.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowSummary)

    AutomatedReasoningPolicyBuildWorkflowSummary.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    AutomatedReasoningPolicyBuildWorkflowSummary.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location_name: "buildWorkflowId"))
    AutomatedReasoningPolicyBuildWorkflowSummary.add_member(:status, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowStatus, required: true, location_name: "status"))
    AutomatedReasoningPolicyBuildWorkflowSummary.add_member(:build_workflow_type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowType, required: true, location_name: "buildWorkflowType"))
    AutomatedReasoningPolicyBuildWorkflowSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AutomatedReasoningPolicyBuildWorkflowSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    AutomatedReasoningPolicyBuildWorkflowSummary.struct_class = Types::AutomatedReasoningPolicyBuildWorkflowSummary

    AutomatedReasoningPolicyConflictedRuleIdList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId)

    AutomatedReasoningPolicyDefinition.add_member(:version, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyFormatVersion, location_name: "version"))
    AutomatedReasoningPolicyDefinition.add_member(:types, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeList, location_name: "types"))
    AutomatedReasoningPolicyDefinition.add_member(:rules, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleList, location_name: "rules"))
    AutomatedReasoningPolicyDefinition.add_member(:variables, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableList, location_name: "variables"))
    AutomatedReasoningPolicyDefinition.struct_class = Types::AutomatedReasoningPolicyDefinition

    AutomatedReasoningPolicyDefinitionElement.add_member(:policy_definition_variable, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariable, location_name: "policyDefinitionVariable"))
    AutomatedReasoningPolicyDefinitionElement.add_member(:policy_definition_type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionType, location_name: "policyDefinitionType"))
    AutomatedReasoningPolicyDefinitionElement.add_member(:policy_definition_rule, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRule, location_name: "policyDefinitionRule"))
    AutomatedReasoningPolicyDefinitionElement.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AutomatedReasoningPolicyDefinitionElement.add_member_subclass(:policy_definition_variable, Types::AutomatedReasoningPolicyDefinitionElement::PolicyDefinitionVariable)
    AutomatedReasoningPolicyDefinitionElement.add_member_subclass(:policy_definition_type, Types::AutomatedReasoningPolicyDefinitionElement::PolicyDefinitionType)
    AutomatedReasoningPolicyDefinitionElement.add_member_subclass(:policy_definition_rule, Types::AutomatedReasoningPolicyDefinitionElement::PolicyDefinitionRule)
    AutomatedReasoningPolicyDefinitionElement.add_member_subclass(:unknown, Types::AutomatedReasoningPolicyDefinitionElement::Unknown)
    AutomatedReasoningPolicyDefinitionElement.struct_class = Types::AutomatedReasoningPolicyDefinitionElement

    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:type_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "typeCount"))
    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:variable_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "variableCount"))
    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:rule_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ruleCount"))
    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:unused_types, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeNameList, required: true, location_name: "unusedTypes"))
    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:unused_type_values, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValuePairList, required: true, location_name: "unusedTypeValues"))
    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:unused_variables, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableNameList, required: true, location_name: "unusedVariables"))
    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:conflicting_rules, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyConflictedRuleIdList, required: true, location_name: "conflictingRules"))
    AutomatedReasoningPolicyDefinitionQualityReport.add_member(:disjoint_rule_sets, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDisjointRuleSetList, required: true, location_name: "disjointRuleSets"))
    AutomatedReasoningPolicyDefinitionQualityReport.struct_class = Types::AutomatedReasoningPolicyDefinitionQualityReport

    AutomatedReasoningPolicyDefinitionRule.add_member(:id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId, required: true, location_name: "id"))
    AutomatedReasoningPolicyDefinitionRule.add_member(:expression, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleExpression, required: true, location_name: "expression"))
    AutomatedReasoningPolicyDefinitionRule.add_member(:alternate_expression, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleAlternateExpression, location_name: "alternateExpression"))
    AutomatedReasoningPolicyDefinitionRule.struct_class = Types::AutomatedReasoningPolicyDefinitionRule

    AutomatedReasoningPolicyDefinitionRuleIdList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId)

    AutomatedReasoningPolicyDefinitionRuleList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRule)

    AutomatedReasoningPolicyDefinitionType.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, required: true, location_name: "name"))
    AutomatedReasoningPolicyDefinitionType.add_member(:description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeDescription, location_name: "description"))
    AutomatedReasoningPolicyDefinitionType.add_member(:values, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueList, required: true, location_name: "values"))
    AutomatedReasoningPolicyDefinitionType.struct_class = Types::AutomatedReasoningPolicyDefinitionType

    AutomatedReasoningPolicyDefinitionTypeList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionType)

    AutomatedReasoningPolicyDefinitionTypeNameList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName)

    AutomatedReasoningPolicyDefinitionTypeValue.add_member(:value, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueName, required: true, location_name: "value"))
    AutomatedReasoningPolicyDefinitionTypeValue.add_member(:description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueDescription, location_name: "description"))
    AutomatedReasoningPolicyDefinitionTypeValue.struct_class = Types::AutomatedReasoningPolicyDefinitionTypeValue

    AutomatedReasoningPolicyDefinitionTypeValueList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValue)

    AutomatedReasoningPolicyDefinitionTypeValuePair.add_member(:type_name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, required: true, location_name: "typeName"))
    AutomatedReasoningPolicyDefinitionTypeValuePair.add_member(:value_name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueName, required: true, location_name: "valueName"))
    AutomatedReasoningPolicyDefinitionTypeValuePair.struct_class = Types::AutomatedReasoningPolicyDefinitionTypeValuePair

    AutomatedReasoningPolicyDefinitionTypeValuePairList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValuePair)

    AutomatedReasoningPolicyDefinitionVariable.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableName, required: true, location_name: "name"))
    AutomatedReasoningPolicyDefinitionVariable.add_member(:type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, required: true, location_name: "type"))
    AutomatedReasoningPolicyDefinitionVariable.add_member(:description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableDescription, required: true, location_name: "description"))
    AutomatedReasoningPolicyDefinitionVariable.struct_class = Types::AutomatedReasoningPolicyDefinitionVariable

    AutomatedReasoningPolicyDefinitionVariableList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariable)

    AutomatedReasoningPolicyDefinitionVariableNameList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableName)

    AutomatedReasoningPolicyDeleteRuleAnnotation.add_member(:rule_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId, required: true, location_name: "ruleId"))
    AutomatedReasoningPolicyDeleteRuleAnnotation.struct_class = Types::AutomatedReasoningPolicyDeleteRuleAnnotation

    AutomatedReasoningPolicyDeleteRuleMutation.add_member(:id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId, required: true, location_name: "id"))
    AutomatedReasoningPolicyDeleteRuleMutation.struct_class = Types::AutomatedReasoningPolicyDeleteRuleMutation

    AutomatedReasoningPolicyDeleteTypeAnnotation.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, required: true, location_name: "name"))
    AutomatedReasoningPolicyDeleteTypeAnnotation.struct_class = Types::AutomatedReasoningPolicyDeleteTypeAnnotation

    AutomatedReasoningPolicyDeleteTypeMutation.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, required: true, location_name: "name"))
    AutomatedReasoningPolicyDeleteTypeMutation.struct_class = Types::AutomatedReasoningPolicyDeleteTypeMutation

    AutomatedReasoningPolicyDeleteTypeValue.add_member(:value, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueName, required: true, location_name: "value"))
    AutomatedReasoningPolicyDeleteTypeValue.struct_class = Types::AutomatedReasoningPolicyDeleteTypeValue

    AutomatedReasoningPolicyDeleteVariableAnnotation.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableName, required: true, location_name: "name"))
    AutomatedReasoningPolicyDeleteVariableAnnotation.struct_class = Types::AutomatedReasoningPolicyDeleteVariableAnnotation

    AutomatedReasoningPolicyDeleteVariableMutation.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableName, required: true, location_name: "name"))
    AutomatedReasoningPolicyDeleteVariableMutation.struct_class = Types::AutomatedReasoningPolicyDeleteVariableMutation

    AutomatedReasoningPolicyDisjointRuleSet.add_member(:variables, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableNameList, required: true, location_name: "variables"))
    AutomatedReasoningPolicyDisjointRuleSet.add_member(:rules, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDisjointedRuleIdList, required: true, location_name: "rules"))
    AutomatedReasoningPolicyDisjointRuleSet.struct_class = Types::AutomatedReasoningPolicyDisjointRuleSet

    AutomatedReasoningPolicyDisjointRuleSetList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDisjointRuleSet)

    AutomatedReasoningPolicyDisjointedRuleIdList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId)

    AutomatedReasoningPolicyIngestContentAnnotation.add_member(:content, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationIngestContent, required: true, location_name: "content"))
    AutomatedReasoningPolicyIngestContentAnnotation.struct_class = Types::AutomatedReasoningPolicyIngestContentAnnotation

    AutomatedReasoningPolicyMutation.add_member(:add_type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddTypeMutation, location_name: "addType"))
    AutomatedReasoningPolicyMutation.add_member(:update_type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateTypeMutation, location_name: "updateType"))
    AutomatedReasoningPolicyMutation.add_member(:delete_type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDeleteTypeMutation, location_name: "deleteType"))
    AutomatedReasoningPolicyMutation.add_member(:add_variable, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddVariableMutation, location_name: "addVariable"))
    AutomatedReasoningPolicyMutation.add_member(:update_variable, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateVariableMutation, location_name: "updateVariable"))
    AutomatedReasoningPolicyMutation.add_member(:delete_variable, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDeleteVariableMutation, location_name: "deleteVariable"))
    AutomatedReasoningPolicyMutation.add_member(:add_rule, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddRuleMutation, location_name: "addRule"))
    AutomatedReasoningPolicyMutation.add_member(:update_rule, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateRuleMutation, location_name: "updateRule"))
    AutomatedReasoningPolicyMutation.add_member(:delete_rule, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDeleteRuleMutation, location_name: "deleteRule"))
    AutomatedReasoningPolicyMutation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AutomatedReasoningPolicyMutation.add_member_subclass(:add_type, Types::AutomatedReasoningPolicyMutation::AddType)
    AutomatedReasoningPolicyMutation.add_member_subclass(:update_type, Types::AutomatedReasoningPolicyMutation::UpdateType)
    AutomatedReasoningPolicyMutation.add_member_subclass(:delete_type, Types::AutomatedReasoningPolicyMutation::DeleteType)
    AutomatedReasoningPolicyMutation.add_member_subclass(:add_variable, Types::AutomatedReasoningPolicyMutation::AddVariable)
    AutomatedReasoningPolicyMutation.add_member_subclass(:update_variable, Types::AutomatedReasoningPolicyMutation::UpdateVariable)
    AutomatedReasoningPolicyMutation.add_member_subclass(:delete_variable, Types::AutomatedReasoningPolicyMutation::DeleteVariable)
    AutomatedReasoningPolicyMutation.add_member_subclass(:add_rule, Types::AutomatedReasoningPolicyMutation::AddRule)
    AutomatedReasoningPolicyMutation.add_member_subclass(:update_rule, Types::AutomatedReasoningPolicyMutation::UpdateRule)
    AutomatedReasoningPolicyMutation.add_member_subclass(:delete_rule, Types::AutomatedReasoningPolicyMutation::DeleteRule)
    AutomatedReasoningPolicyMutation.add_member_subclass(:unknown, Types::AutomatedReasoningPolicyMutation::Unknown)
    AutomatedReasoningPolicyMutation.struct_class = Types::AutomatedReasoningPolicyMutation

    AutomatedReasoningPolicyPlanning.struct_class = Types::AutomatedReasoningPolicyPlanning

    AutomatedReasoningPolicyScenario.add_member(:expression, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyScenarioExpression, required: true, location_name: "expression"))
    AutomatedReasoningPolicyScenario.add_member(:alternate_expression, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyScenarioAlternateExpression, required: true, location_name: "alternateExpression"))
    AutomatedReasoningPolicyScenario.add_member(:rule_ids, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleIdList, required: true, location_name: "ruleIds"))
    AutomatedReasoningPolicyScenario.add_member(:expected_result, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckResult, required: true, location_name: "expectedResult"))
    AutomatedReasoningPolicyScenario.struct_class = Types::AutomatedReasoningPolicyScenario

    AutomatedReasoningPolicySummaries.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicySummary)

    AutomatedReasoningPolicySummary.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    AutomatedReasoningPolicySummary.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, required: true, location_name: "name"))
    AutomatedReasoningPolicySummary.add_member(:description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDescription, location_name: "description"))
    AutomatedReasoningPolicySummary.add_member(:version, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyVersion, required: true, location_name: "version"))
    AutomatedReasoningPolicySummary.add_member(:policy_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyId, required: true, location_name: "policyId"))
    AutomatedReasoningPolicySummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AutomatedReasoningPolicySummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    AutomatedReasoningPolicySummary.struct_class = Types::AutomatedReasoningPolicySummary

    AutomatedReasoningPolicyTestCase.add_member(:test_case_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId, required: true, location_name: "testCaseId"))
    AutomatedReasoningPolicyTestCase.add_member(:guard_content, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestGuardContent, required: true, location_name: "guardContent"))
    AutomatedReasoningPolicyTestCase.add_member(:query_content, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestQueryContent, location_name: "queryContent"))
    AutomatedReasoningPolicyTestCase.add_member(:expected_aggregated_findings_result, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckResult, location_name: "expectedAggregatedFindingsResult"))
    AutomatedReasoningPolicyTestCase.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AutomatedReasoningPolicyTestCase.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    AutomatedReasoningPolicyTestCase.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationConfidence, location_name: "confidenceThreshold"))
    AutomatedReasoningPolicyTestCase.struct_class = Types::AutomatedReasoningPolicyTestCase

    AutomatedReasoningPolicyTestCaseIdList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId)

    AutomatedReasoningPolicyTestCaseList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCase)

    AutomatedReasoningPolicyTestList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestResult)

    AutomatedReasoningPolicyTestResult.add_member(:test_case, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCase, required: true, location_name: "testCase"))
    AutomatedReasoningPolicyTestResult.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    AutomatedReasoningPolicyTestResult.add_member(:test_run_status, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestRunStatus, required: true, location_name: "testRunStatus"))
    AutomatedReasoningPolicyTestResult.add_member(:test_findings, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckFindingList, location_name: "testFindings"))
    AutomatedReasoningPolicyTestResult.add_member(:test_run_result, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestRunResult, location_name: "testRunResult"))
    AutomatedReasoningPolicyTestResult.add_member(:aggregated_test_findings_result, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckResult, location_name: "aggregatedTestFindingsResult"))
    AutomatedReasoningPolicyTestResult.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    AutomatedReasoningPolicyTestResult.struct_class = Types::AutomatedReasoningPolicyTestResult

    AutomatedReasoningPolicyTypeValueAnnotation.add_member(:add_type_value, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAddTypeValue, location_name: "addTypeValue"))
    AutomatedReasoningPolicyTypeValueAnnotation.add_member(:update_type_value, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyUpdateTypeValue, location_name: "updateTypeValue"))
    AutomatedReasoningPolicyTypeValueAnnotation.add_member(:delete_type_value, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDeleteTypeValue, location_name: "deleteTypeValue"))
    AutomatedReasoningPolicyTypeValueAnnotation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AutomatedReasoningPolicyTypeValueAnnotation.add_member_subclass(:add_type_value, Types::AutomatedReasoningPolicyTypeValueAnnotation::AddTypeValue)
    AutomatedReasoningPolicyTypeValueAnnotation.add_member_subclass(:update_type_value, Types::AutomatedReasoningPolicyTypeValueAnnotation::UpdateTypeValue)
    AutomatedReasoningPolicyTypeValueAnnotation.add_member_subclass(:delete_type_value, Types::AutomatedReasoningPolicyTypeValueAnnotation::DeleteTypeValue)
    AutomatedReasoningPolicyTypeValueAnnotation.add_member_subclass(:unknown, Types::AutomatedReasoningPolicyTypeValueAnnotation::Unknown)
    AutomatedReasoningPolicyTypeValueAnnotation.struct_class = Types::AutomatedReasoningPolicyTypeValueAnnotation

    AutomatedReasoningPolicyTypeValueAnnotationList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTypeValueAnnotation)

    AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation.add_member(:rule_ids, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleIdList, location_name: "ruleIds"))
    AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation.add_member(:feedback, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage, required: true, location_name: "feedback"))
    AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation.struct_class = Types::AutomatedReasoningPolicyUpdateFromRuleFeedbackAnnotation

    AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation.add_member(:rule_ids, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleIdList, location_name: "ruleIds"))
    AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation.add_member(:scenario_expression, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyScenarioExpression, required: true, location_name: "scenarioExpression"))
    AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation.add_member(:feedback, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationFeedbackNaturalLanguage, location_name: "feedback"))
    AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation.struct_class = Types::AutomatedReasoningPolicyUpdateFromScenarioFeedbackAnnotation

    AutomatedReasoningPolicyUpdateRuleAnnotation.add_member(:rule_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleId, required: true, location_name: "ruleId"))
    AutomatedReasoningPolicyUpdateRuleAnnotation.add_member(:expression, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRuleExpression, required: true, location_name: "expression"))
    AutomatedReasoningPolicyUpdateRuleAnnotation.struct_class = Types::AutomatedReasoningPolicyUpdateRuleAnnotation

    AutomatedReasoningPolicyUpdateRuleMutation.add_member(:rule, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionRule, required: true, location_name: "rule"))
    AutomatedReasoningPolicyUpdateRuleMutation.struct_class = Types::AutomatedReasoningPolicyUpdateRuleMutation

    AutomatedReasoningPolicyUpdateTypeAnnotation.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, required: true, location_name: "name"))
    AutomatedReasoningPolicyUpdateTypeAnnotation.add_member(:new_name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeName, location_name: "newName"))
    AutomatedReasoningPolicyUpdateTypeAnnotation.add_member(:description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeDescription, location_name: "description"))
    AutomatedReasoningPolicyUpdateTypeAnnotation.add_member(:values, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTypeValueAnnotationList, required: true, location_name: "values"))
    AutomatedReasoningPolicyUpdateTypeAnnotation.struct_class = Types::AutomatedReasoningPolicyUpdateTypeAnnotation

    AutomatedReasoningPolicyUpdateTypeMutation.add_member(:type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionType, required: true, location_name: "type"))
    AutomatedReasoningPolicyUpdateTypeMutation.struct_class = Types::AutomatedReasoningPolicyUpdateTypeMutation

    AutomatedReasoningPolicyUpdateTypeValue.add_member(:value, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueName, required: true, location_name: "value"))
    AutomatedReasoningPolicyUpdateTypeValue.add_member(:new_value, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueName, location_name: "newValue"))
    AutomatedReasoningPolicyUpdateTypeValue.add_member(:description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionTypeValueDescription, location_name: "description"))
    AutomatedReasoningPolicyUpdateTypeValue.struct_class = Types::AutomatedReasoningPolicyUpdateTypeValue

    AutomatedReasoningPolicyUpdateVariableAnnotation.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableName, required: true, location_name: "name"))
    AutomatedReasoningPolicyUpdateVariableAnnotation.add_member(:new_name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableName, location_name: "newName"))
    AutomatedReasoningPolicyUpdateVariableAnnotation.add_member(:description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariableDescription, location_name: "description"))
    AutomatedReasoningPolicyUpdateVariableAnnotation.struct_class = Types::AutomatedReasoningPolicyUpdateVariableAnnotation

    AutomatedReasoningPolicyUpdateVariableMutation.add_member(:variable, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinitionVariable, required: true, location_name: "variable"))
    AutomatedReasoningPolicyUpdateVariableMutation.struct_class = Types::AutomatedReasoningPolicyUpdateVariableMutation

    AutomatedReasoningPolicyWorkflowTypeContent.add_member(:documents, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowDocumentList, location_name: "documents"))
    AutomatedReasoningPolicyWorkflowTypeContent.add_member(:policy_repair_assets, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowRepairContent, location_name: "policyRepairAssets"))
    AutomatedReasoningPolicyWorkflowTypeContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AutomatedReasoningPolicyWorkflowTypeContent.add_member_subclass(:documents, Types::AutomatedReasoningPolicyWorkflowTypeContent::Documents)
    AutomatedReasoningPolicyWorkflowTypeContent.add_member_subclass(:policy_repair_assets, Types::AutomatedReasoningPolicyWorkflowTypeContent::PolicyRepairAssets)
    AutomatedReasoningPolicyWorkflowTypeContent.add_member_subclass(:unknown, Types::AutomatedReasoningPolicyWorkflowTypeContent::Unknown)
    AutomatedReasoningPolicyWorkflowTypeContent.struct_class = Types::AutomatedReasoningPolicyWorkflowTypeContent

    BatchDeleteEvaluationJobError.add_member(:job_identifier, Shapes::ShapeRef.new(shape: EvaluationJobIdentifier, required: true, location_name: "jobIdentifier"))
    BatchDeleteEvaluationJobError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    BatchDeleteEvaluationJobError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BatchDeleteEvaluationJobError.struct_class = Types::BatchDeleteEvaluationJobError

    BatchDeleteEvaluationJobErrors.member = Shapes::ShapeRef.new(shape: BatchDeleteEvaluationJobError)

    BatchDeleteEvaluationJobItem.add_member(:job_identifier, Shapes::ShapeRef.new(shape: EvaluationJobIdentifier, required: true, location_name: "jobIdentifier"))
    BatchDeleteEvaluationJobItem.add_member(:job_status, Shapes::ShapeRef.new(shape: EvaluationJobStatus, required: true, location_name: "jobStatus"))
    BatchDeleteEvaluationJobItem.struct_class = Types::BatchDeleteEvaluationJobItem

    BatchDeleteEvaluationJobItems.member = Shapes::ShapeRef.new(shape: BatchDeleteEvaluationJobItem)

    BatchDeleteEvaluationJobRequest.add_member(:job_identifiers, Shapes::ShapeRef.new(shape: EvaluationJobIdentifiers, required: true, location_name: "jobIdentifiers"))
    BatchDeleteEvaluationJobRequest.struct_class = Types::BatchDeleteEvaluationJobRequest

    BatchDeleteEvaluationJobResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchDeleteEvaluationJobErrors, required: true, location_name: "errors"))
    BatchDeleteEvaluationJobResponse.add_member(:evaluation_jobs, Shapes::ShapeRef.new(shape: BatchDeleteEvaluationJobItems, required: true, location_name: "evaluationJobs"))
    BatchDeleteEvaluationJobResponse.struct_class = Types::BatchDeleteEvaluationJobResponse

    BedrockEvaluatorModel.add_member(:model_identifier, Shapes::ShapeRef.new(shape: EvaluatorModelIdentifier, required: true, location_name: "modelIdentifier"))
    BedrockEvaluatorModel.struct_class = Types::BedrockEvaluatorModel

    BedrockEvaluatorModels.member = Shapes::ShapeRef.new(shape: BedrockEvaluatorModel)

    ByteContentDoc.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "identifier"))
    ByteContentDoc.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, required: true, location_name: "contentType"))
    ByteContentDoc.add_member(:data, Shapes::ShapeRef.new(shape: ByteContentBlob, required: true, location_name: "data"))
    ByteContentDoc.struct_class = Types::ByteContentDoc

    CancelAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    CancelAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location: "uri", location_name: "buildWorkflowId"))
    CancelAutomatedReasoningPolicyBuildWorkflowRequest.struct_class = Types::CancelAutomatedReasoningPolicyBuildWorkflowRequest

    CancelAutomatedReasoningPolicyBuildWorkflowResponse.struct_class = Types::CancelAutomatedReasoningPolicyBuildWorkflowResponse

    CloudWatchConfig.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, required: true, location_name: "logGroupName"))
    CloudWatchConfig.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CloudWatchConfig.add_member(:large_data_delivery_s3_config, Shapes::ShapeRef.new(shape: S3Config, location_name: "largeDataDeliveryS3Config"))
    CloudWatchConfig.struct_class = Types::CloudWatchConfig

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAutomatedReasoningPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, required: true, location_name: "name"))
    CreateAutomatedReasoningPolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDescription, location_name: "description"))
    CreateAutomatedReasoningPolicyRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateAutomatedReasoningPolicyRequest.add_member(:policy_definition, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinition, location_name: "policyDefinition"))
    CreateAutomatedReasoningPolicyRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateAutomatedReasoningPolicyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateAutomatedReasoningPolicyRequest.struct_class = Types::CreateAutomatedReasoningPolicyRequest

    CreateAutomatedReasoningPolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    CreateAutomatedReasoningPolicyResponse.add_member(:version, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyVersion, required: true, location_name: "version"))
    CreateAutomatedReasoningPolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, required: true, location_name: "name"))
    CreateAutomatedReasoningPolicyResponse.add_member(:description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDescription, location_name: "description"))
    CreateAutomatedReasoningPolicyResponse.add_member(:definition_hash, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, location_name: "definitionHash"))
    CreateAutomatedReasoningPolicyResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateAutomatedReasoningPolicyResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    CreateAutomatedReasoningPolicyResponse.struct_class = Types::CreateAutomatedReasoningPolicyResponse

    CreateAutomatedReasoningPolicyTestCaseRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    CreateAutomatedReasoningPolicyTestCaseRequest.add_member(:guard_content, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestGuardContent, required: true, location_name: "guardContent"))
    CreateAutomatedReasoningPolicyTestCaseRequest.add_member(:query_content, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestQueryContent, location_name: "queryContent"))
    CreateAutomatedReasoningPolicyTestCaseRequest.add_member(:expected_aggregated_findings_result, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckResult, required: true, location_name: "expectedAggregatedFindingsResult"))
    CreateAutomatedReasoningPolicyTestCaseRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateAutomatedReasoningPolicyTestCaseRequest.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationConfidence, location_name: "confidenceThreshold"))
    CreateAutomatedReasoningPolicyTestCaseRequest.struct_class = Types::CreateAutomatedReasoningPolicyTestCaseRequest

    CreateAutomatedReasoningPolicyTestCaseResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    CreateAutomatedReasoningPolicyTestCaseResponse.add_member(:test_case_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId, required: true, location_name: "testCaseId"))
    CreateAutomatedReasoningPolicyTestCaseResponse.struct_class = Types::CreateAutomatedReasoningPolicyTestCaseResponse

    CreateAutomatedReasoningPolicyVersionRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    CreateAutomatedReasoningPolicyVersionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateAutomatedReasoningPolicyVersionRequest.add_member(:last_updated_definition_hash, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, required: true, location_name: "lastUpdatedDefinitionHash"))
    CreateAutomatedReasoningPolicyVersionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateAutomatedReasoningPolicyVersionRequest.struct_class = Types::CreateAutomatedReasoningPolicyVersionRequest

    CreateAutomatedReasoningPolicyVersionResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    CreateAutomatedReasoningPolicyVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyVersion, required: true, location_name: "version"))
    CreateAutomatedReasoningPolicyVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, required: true, location_name: "name"))
    CreateAutomatedReasoningPolicyVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDescription, location_name: "description"))
    CreateAutomatedReasoningPolicyVersionResponse.add_member(:definition_hash, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, required: true, location_name: "definitionHash"))
    CreateAutomatedReasoningPolicyVersionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateAutomatedReasoningPolicyVersionResponse.struct_class = Types::CreateAutomatedReasoningPolicyVersionResponse

    CreateCustomModelDeploymentRequest.add_member(:model_deployment_name, Shapes::ShapeRef.new(shape: ModelDeploymentName, required: true, location_name: "modelDeploymentName"))
    CreateCustomModelDeploymentRequest.add_member(:model_arn, Shapes::ShapeRef.new(shape: CustomModelArn, required: true, location_name: "modelArn"))
    CreateCustomModelDeploymentRequest.add_member(:description, Shapes::ShapeRef.new(shape: CustomModelDeploymentDescription, location_name: "description"))
    CreateCustomModelDeploymentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateCustomModelDeploymentRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateCustomModelDeploymentRequest.struct_class = Types::CreateCustomModelDeploymentRequest

    CreateCustomModelDeploymentResponse.add_member(:custom_model_deployment_arn, Shapes::ShapeRef.new(shape: CustomModelDeploymentArn, required: true, location_name: "customModelDeploymentArn"))
    CreateCustomModelDeploymentResponse.struct_class = Types::CreateCustomModelDeploymentResponse

    CreateCustomModelRequest.add_member(:model_name, Shapes::ShapeRef.new(shape: CustomModelName, required: true, location_name: "modelName"))
    CreateCustomModelRequest.add_member(:model_source_config, Shapes::ShapeRef.new(shape: ModelDataSource, required: true, location_name: "modelSourceConfig"))
    CreateCustomModelRequest.add_member(:model_kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "modelKmsKeyArn"))
    CreateCustomModelRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateCustomModelRequest.add_member(:model_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "modelTags"))
    CreateCustomModelRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateCustomModelRequest.struct_class = Types::CreateCustomModelRequest

    CreateCustomModelResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "modelArn"))
    CreateCustomModelResponse.struct_class = Types::CreateCustomModelResponse

    CreateEvaluationJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: EvaluationJobName, required: true, location_name: "jobName"))
    CreateEvaluationJobRequest.add_member(:job_description, Shapes::ShapeRef.new(shape: EvaluationJobDescription, location_name: "jobDescription"))
    CreateEvaluationJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateEvaluationJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateEvaluationJobRequest.add_member(:customer_encryption_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "customerEncryptionKeyId"))
    CreateEvaluationJobRequest.add_member(:job_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "jobTags"))
    CreateEvaluationJobRequest.add_member(:application_type, Shapes::ShapeRef.new(shape: ApplicationType, location_name: "applicationType"))
    CreateEvaluationJobRequest.add_member(:evaluation_config, Shapes::ShapeRef.new(shape: EvaluationConfig, required: true, location_name: "evaluationConfig"))
    CreateEvaluationJobRequest.add_member(:inference_config, Shapes::ShapeRef.new(shape: EvaluationInferenceConfig, required: true, location_name: "inferenceConfig"))
    CreateEvaluationJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: EvaluationOutputDataConfig, required: true, location_name: "outputDataConfig"))
    CreateEvaluationJobRequest.struct_class = Types::CreateEvaluationJobRequest

    CreateEvaluationJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: EvaluationJobArn, required: true, location_name: "jobArn"))
    CreateEvaluationJobResponse.struct_class = Types::CreateEvaluationJobResponse

    CreateFoundationModelAgreementRequest.add_member(:offer_token, Shapes::ShapeRef.new(shape: OfferToken, required: true, location_name: "offerToken"))
    CreateFoundationModelAgreementRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: BedrockModelId, required: true, location_name: "modelId"))
    CreateFoundationModelAgreementRequest.struct_class = Types::CreateFoundationModelAgreementRequest

    CreateFoundationModelAgreementResponse.add_member(:model_id, Shapes::ShapeRef.new(shape: BedrockModelId, required: true, location_name: "modelId"))
    CreateFoundationModelAgreementResponse.struct_class = Types::CreateFoundationModelAgreementResponse

    CreateGuardrailRequest.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailName, required: true, location_name: "name"))
    CreateGuardrailRequest.add_member(:description, Shapes::ShapeRef.new(shape: GuardrailDescription, location_name: "description"))
    CreateGuardrailRequest.add_member(:topic_policy_config, Shapes::ShapeRef.new(shape: GuardrailTopicPolicyConfig, location_name: "topicPolicyConfig"))
    CreateGuardrailRequest.add_member(:content_policy_config, Shapes::ShapeRef.new(shape: GuardrailContentPolicyConfig, location_name: "contentPolicyConfig"))
    CreateGuardrailRequest.add_member(:word_policy_config, Shapes::ShapeRef.new(shape: GuardrailWordPolicyConfig, location_name: "wordPolicyConfig"))
    CreateGuardrailRequest.add_member(:sensitive_information_policy_config, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicyConfig, location_name: "sensitiveInformationPolicyConfig"))
    CreateGuardrailRequest.add_member(:contextual_grounding_policy_config, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingPolicyConfig, location_name: "contextualGroundingPolicyConfig"))
    CreateGuardrailRequest.add_member(:automated_reasoning_policy_config, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningPolicyConfig, location_name: "automatedReasoningPolicyConfig"))
    CreateGuardrailRequest.add_member(:cross_region_config, Shapes::ShapeRef.new(shape: GuardrailCrossRegionConfig, location_name: "crossRegionConfig"))
    CreateGuardrailRequest.add_member(:blocked_input_messaging, Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, required: true, location_name: "blockedInputMessaging"))
    CreateGuardrailRequest.add_member(:blocked_outputs_messaging, Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, required: true, location_name: "blockedOutputsMessaging"))
    CreateGuardrailRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateGuardrailRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateGuardrailRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateGuardrailRequest.struct_class = Types::CreateGuardrailRequest

    CreateGuardrailResponse.add_member(:guardrail_id, Shapes::ShapeRef.new(shape: GuardrailId, required: true, location_name: "guardrailId"))
    CreateGuardrailResponse.add_member(:guardrail_arn, Shapes::ShapeRef.new(shape: GuardrailArn, required: true, location_name: "guardrailArn"))
    CreateGuardrailResponse.add_member(:version, Shapes::ShapeRef.new(shape: GuardrailDraftVersion, required: true, location_name: "version"))
    CreateGuardrailResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateGuardrailResponse.struct_class = Types::CreateGuardrailResponse

    CreateGuardrailVersionRequest.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, required: true, location: "uri", location_name: "guardrailIdentifier"))
    CreateGuardrailVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: GuardrailDescription, location_name: "description"))
    CreateGuardrailVersionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateGuardrailVersionRequest.struct_class = Types::CreateGuardrailVersionRequest

    CreateGuardrailVersionResponse.add_member(:guardrail_id, Shapes::ShapeRef.new(shape: GuardrailId, required: true, location_name: "guardrailId"))
    CreateGuardrailVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: GuardrailNumericalVersion, required: true, location_name: "version"))
    CreateGuardrailVersionResponse.struct_class = Types::CreateGuardrailVersionResponse

    CreateInferenceProfileRequest.add_member(:inference_profile_name, Shapes::ShapeRef.new(shape: InferenceProfileName, required: true, location_name: "inferenceProfileName"))
    CreateInferenceProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: InferenceProfileDescription, location_name: "description"))
    CreateInferenceProfileRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateInferenceProfileRequest.add_member(:model_source, Shapes::ShapeRef.new(shape: InferenceProfileModelSource, required: true, location_name: "modelSource"))
    CreateInferenceProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateInferenceProfileRequest.struct_class = Types::CreateInferenceProfileRequest

    CreateInferenceProfileResponse.add_member(:inference_profile_arn, Shapes::ShapeRef.new(shape: InferenceProfileArn, required: true, location_name: "inferenceProfileArn"))
    CreateInferenceProfileResponse.add_member(:status, Shapes::ShapeRef.new(shape: InferenceProfileStatus, location_name: "status"))
    CreateInferenceProfileResponse.struct_class = Types::CreateInferenceProfileResponse

    CreateMarketplaceModelEndpointRequest.add_member(:model_source_identifier, Shapes::ShapeRef.new(shape: ModelSourceIdentifier, required: true, location_name: "modelSourceIdentifier"))
    CreateMarketplaceModelEndpointRequest.add_member(:endpoint_config, Shapes::ShapeRef.new(shape: EndpointConfig, required: true, location_name: "endpointConfig"))
    CreateMarketplaceModelEndpointRequest.add_member(:accept_eula, Shapes::ShapeRef.new(shape: AcceptEula, location_name: "acceptEula"))
    CreateMarketplaceModelEndpointRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: EndpointName, required: true, location_name: "endpointName"))
    CreateMarketplaceModelEndpointRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateMarketplaceModelEndpointRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateMarketplaceModelEndpointRequest.struct_class = Types::CreateMarketplaceModelEndpointRequest

    CreateMarketplaceModelEndpointResponse.add_member(:marketplace_model_endpoint, Shapes::ShapeRef.new(shape: MarketplaceModelEndpoint, required: true, location_name: "marketplaceModelEndpoint"))
    CreateMarketplaceModelEndpointResponse.struct_class = Types::CreateMarketplaceModelEndpointResponse

    CreateModelCopyJobRequest.add_member(:source_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "sourceModelArn"))
    CreateModelCopyJobRequest.add_member(:target_model_name, Shapes::ShapeRef.new(shape: CustomModelName, required: true, location_name: "targetModelName"))
    CreateModelCopyJobRequest.add_member(:model_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "modelKmsKeyId"))
    CreateModelCopyJobRequest.add_member(:target_model_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "targetModelTags"))
    CreateModelCopyJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateModelCopyJobRequest.struct_class = Types::CreateModelCopyJobRequest

    CreateModelCopyJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCopyJobArn, required: true, location_name: "jobArn"))
    CreateModelCopyJobResponse.struct_class = Types::CreateModelCopyJobResponse

    CreateModelCustomizationJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "jobName"))
    CreateModelCustomizationJobRequest.add_member(:custom_model_name, Shapes::ShapeRef.new(shape: CustomModelName, required: true, location_name: "customModelName"))
    CreateModelCustomizationJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateModelCustomizationJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateModelCustomizationJobRequest.add_member(:base_model_identifier, Shapes::ShapeRef.new(shape: BaseModelIdentifier, required: true, location_name: "baseModelIdentifier"))
    CreateModelCustomizationJobRequest.add_member(:customization_type, Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    CreateModelCustomizationJobRequest.add_member(:custom_model_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "customModelKmsKeyId"))
    CreateModelCustomizationJobRequest.add_member(:job_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "jobTags"))
    CreateModelCustomizationJobRequest.add_member(:custom_model_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "customModelTags"))
    CreateModelCustomizationJobRequest.add_member(:training_data_config, Shapes::ShapeRef.new(shape: TrainingDataConfig, required: true, location_name: "trainingDataConfig"))
    CreateModelCustomizationJobRequest.add_member(:validation_data_config, Shapes::ShapeRef.new(shape: ValidationDataConfig, location_name: "validationDataConfig"))
    CreateModelCustomizationJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "outputDataConfig"))
    CreateModelCustomizationJobRequest.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: ModelCustomizationHyperParameters, location_name: "hyperParameters"))
    CreateModelCustomizationJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    CreateModelCustomizationJobRequest.add_member(:customization_config, Shapes::ShapeRef.new(shape: CustomizationConfig, location_name: "customizationConfig"))
    CreateModelCustomizationJobRequest.struct_class = Types::CreateModelCustomizationJobRequest

    CreateModelCustomizationJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, required: true, location_name: "jobArn"))
    CreateModelCustomizationJobResponse.struct_class = Types::CreateModelCustomizationJobResponse

    CreateModelImportJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "jobName"))
    CreateModelImportJobRequest.add_member(:imported_model_name, Shapes::ShapeRef.new(shape: ImportedModelName, required: true, location_name: "importedModelName"))
    CreateModelImportJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateModelImportJobRequest.add_member(:model_data_source, Shapes::ShapeRef.new(shape: ModelDataSource, required: true, location_name: "modelDataSource"))
    CreateModelImportJobRequest.add_member(:job_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "jobTags"))
    CreateModelImportJobRequest.add_member(:imported_model_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "importedModelTags"))
    CreateModelImportJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken"))
    CreateModelImportJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    CreateModelImportJobRequest.add_member(:imported_model_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "importedModelKmsKeyId"))
    CreateModelImportJobRequest.struct_class = Types::CreateModelImportJobRequest

    CreateModelImportJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelImportJobArn, required: true, location_name: "jobArn"))
    CreateModelImportJobResponse.struct_class = Types::CreateModelImportJobResponse

    CreateModelInvocationJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: ModelInvocationJobName, required: true, location_name: "jobName"))
    CreateModelInvocationJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateModelInvocationJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ModelInvocationIdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateModelInvocationJobRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    CreateModelInvocationJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: ModelInvocationJobInputDataConfig, required: true, location_name: "inputDataConfig"))
    CreateModelInvocationJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: ModelInvocationJobOutputDataConfig, required: true, location_name: "outputDataConfig"))
    CreateModelInvocationJobRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    CreateModelInvocationJobRequest.add_member(:timeout_duration_in_hours, Shapes::ShapeRef.new(shape: ModelInvocationJobTimeoutDurationInHours, location_name: "timeoutDurationInHours"))
    CreateModelInvocationJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateModelInvocationJobRequest.struct_class = Types::CreateModelInvocationJobRequest

    CreateModelInvocationJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelInvocationJobArn, required: true, location_name: "jobArn"))
    CreateModelInvocationJobResponse.struct_class = Types::CreateModelInvocationJobResponse

    CreatePromptRouterRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreatePromptRouterRequest.add_member(:prompt_router_name, Shapes::ShapeRef.new(shape: PromptRouterName, required: true, location_name: "promptRouterName"))
    CreatePromptRouterRequest.add_member(:models, Shapes::ShapeRef.new(shape: PromptRouterTargetModels, required: true, location_name: "models"))
    CreatePromptRouterRequest.add_member(:description, Shapes::ShapeRef.new(shape: PromptRouterDescription, location_name: "description"))
    CreatePromptRouterRequest.add_member(:routing_criteria, Shapes::ShapeRef.new(shape: RoutingCriteria, required: true, location_name: "routingCriteria"))
    CreatePromptRouterRequest.add_member(:fallback_model, Shapes::ShapeRef.new(shape: PromptRouterTargetModel, required: true, location_name: "fallbackModel"))
    CreatePromptRouterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreatePromptRouterRequest.struct_class = Types::CreatePromptRouterRequest

    CreatePromptRouterResponse.add_member(:prompt_router_arn, Shapes::ShapeRef.new(shape: PromptRouterArn, location_name: "promptRouterArn"))
    CreatePromptRouterResponse.struct_class = Types::CreatePromptRouterResponse

    CreateProvisionedModelThroughputRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateProvisionedModelThroughputRequest.add_member(:model_units, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "modelUnits"))
    CreateProvisionedModelThroughputRequest.add_member(:provisioned_model_name, Shapes::ShapeRef.new(shape: ProvisionedModelName, required: true, location_name: "provisionedModelName"))
    CreateProvisionedModelThroughputRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelIdentifier, required: true, location_name: "modelId"))
    CreateProvisionedModelThroughputRequest.add_member(:commitment_duration, Shapes::ShapeRef.new(shape: CommitmentDuration, location_name: "commitmentDuration"))
    CreateProvisionedModelThroughputRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateProvisionedModelThroughputRequest.struct_class = Types::CreateProvisionedModelThroughputRequest

    CreateProvisionedModelThroughputResponse.add_member(:provisioned_model_arn, Shapes::ShapeRef.new(shape: ProvisionedModelArn, required: true, location_name: "provisionedModelArn"))
    CreateProvisionedModelThroughputResponse.struct_class = Types::CreateProvisionedModelThroughputResponse

    CustomMetricBedrockEvaluatorModel.add_member(:model_identifier, Shapes::ShapeRef.new(shape: EvaluatorModelIdentifier, required: true, location_name: "modelIdentifier"))
    CustomMetricBedrockEvaluatorModel.struct_class = Types::CustomMetricBedrockEvaluatorModel

    CustomMetricBedrockEvaluatorModels.member = Shapes::ShapeRef.new(shape: CustomMetricBedrockEvaluatorModel)

    CustomMetricDefinition.add_member(:name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "name"))
    CustomMetricDefinition.add_member(:instructions, Shapes::ShapeRef.new(shape: CustomMetricInstructions, required: true, location_name: "instructions"))
    CustomMetricDefinition.add_member(:rating_scale, Shapes::ShapeRef.new(shape: RatingScale, location_name: "ratingScale"))
    CustomMetricDefinition.struct_class = Types::CustomMetricDefinition

    CustomMetricEvaluatorModelConfig.add_member(:bedrock_evaluator_models, Shapes::ShapeRef.new(shape: CustomMetricBedrockEvaluatorModels, required: true, location_name: "bedrockEvaluatorModels"))
    CustomMetricEvaluatorModelConfig.struct_class = Types::CustomMetricEvaluatorModelConfig

    CustomModelDeploymentSummary.add_member(:custom_model_deployment_arn, Shapes::ShapeRef.new(shape: CustomModelDeploymentArn, required: true, location_name: "customModelDeploymentArn"))
    CustomModelDeploymentSummary.add_member(:custom_model_deployment_name, Shapes::ShapeRef.new(shape: ModelDeploymentName, required: true, location_name: "customModelDeploymentName"))
    CustomModelDeploymentSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "modelArn"))
    CustomModelDeploymentSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CustomModelDeploymentSummary.add_member(:status, Shapes::ShapeRef.new(shape: CustomModelDeploymentStatus, required: true, location_name: "status"))
    CustomModelDeploymentSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    CustomModelDeploymentSummary.add_member(:failure_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    CustomModelDeploymentSummary.struct_class = Types::CustomModelDeploymentSummary

    CustomModelDeploymentSummaryList.member = Shapes::ShapeRef.new(shape: CustomModelDeploymentSummary)

    CustomModelSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: CustomModelArn, required: true, location_name: "modelArn"))
    CustomModelSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: CustomModelName, required: true, location_name: "modelName"))
    CustomModelSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    CustomModelSummary.add_member(:base_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "baseModelArn"))
    CustomModelSummary.add_member(:base_model_name, Shapes::ShapeRef.new(shape: ModelName, required: true, location_name: "baseModelName"))
    CustomModelSummary.add_member(:customization_type, Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    CustomModelSummary.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "ownerAccountId"))
    CustomModelSummary.add_member(:model_status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "modelStatus"))
    CustomModelSummary.struct_class = Types::CustomModelSummary

    CustomModelSummaryList.member = Shapes::ShapeRef.new(shape: CustomModelSummary)

    CustomModelUnits.add_member(:custom_model_units_per_model_copy, Shapes::ShapeRef.new(shape: Integer, location_name: "customModelUnitsPerModelCopy"))
    CustomModelUnits.add_member(:custom_model_units_version, Shapes::ShapeRef.new(shape: CustomModelUnitsVersion, location_name: "customModelUnitsVersion"))
    CustomModelUnits.struct_class = Types::CustomModelUnits

    CustomizationConfig.add_member(:distillation_config, Shapes::ShapeRef.new(shape: DistillationConfig, location_name: "distillationConfig"))
    CustomizationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CustomizationConfig.add_member_subclass(:distillation_config, Types::CustomizationConfig::DistillationConfig)
    CustomizationConfig.add_member_subclass(:unknown, Types::CustomizationConfig::Unknown)
    CustomizationConfig.struct_class = Types::CustomizationConfig

    DataProcessingDetails.add_member(:status, Shapes::ShapeRef.new(shape: JobStatusDetails, location_name: "status"))
    DataProcessingDetails.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DataProcessingDetails.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    DataProcessingDetails.struct_class = Types::DataProcessingDetails

    DeleteAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    DeleteAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location: "uri", location_name: "buildWorkflowId"))
    DeleteAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "updatedAt"))
    DeleteAutomatedReasoningPolicyBuildWorkflowRequest.struct_class = Types::DeleteAutomatedReasoningPolicyBuildWorkflowRequest

    DeleteAutomatedReasoningPolicyBuildWorkflowResponse.struct_class = Types::DeleteAutomatedReasoningPolicyBuildWorkflowResponse

    DeleteAutomatedReasoningPolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    DeleteAutomatedReasoningPolicyRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "force"))
    DeleteAutomatedReasoningPolicyRequest.struct_class = Types::DeleteAutomatedReasoningPolicyRequest

    DeleteAutomatedReasoningPolicyResponse.struct_class = Types::DeleteAutomatedReasoningPolicyResponse

    DeleteAutomatedReasoningPolicyTestCaseRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    DeleteAutomatedReasoningPolicyTestCaseRequest.add_member(:test_case_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId, required: true, location: "uri", location_name: "testCaseId"))
    DeleteAutomatedReasoningPolicyTestCaseRequest.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location: "querystring", location_name: "updatedAt"))
    DeleteAutomatedReasoningPolicyTestCaseRequest.struct_class = Types::DeleteAutomatedReasoningPolicyTestCaseRequest

    DeleteAutomatedReasoningPolicyTestCaseResponse.struct_class = Types::DeleteAutomatedReasoningPolicyTestCaseResponse

    DeleteCustomModelDeploymentRequest.add_member(:custom_model_deployment_identifier, Shapes::ShapeRef.new(shape: CustomModelDeploymentIdentifier, required: true, location: "uri", location_name: "customModelDeploymentIdentifier"))
    DeleteCustomModelDeploymentRequest.struct_class = Types::DeleteCustomModelDeploymentRequest

    DeleteCustomModelDeploymentResponse.struct_class = Types::DeleteCustomModelDeploymentResponse

    DeleteCustomModelRequest.add_member(:model_identifier, Shapes::ShapeRef.new(shape: ModelIdentifier, required: true, location: "uri", location_name: "modelIdentifier"))
    DeleteCustomModelRequest.struct_class = Types::DeleteCustomModelRequest

    DeleteCustomModelResponse.struct_class = Types::DeleteCustomModelResponse

    DeleteFoundationModelAgreementRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: BedrockModelId, required: true, location_name: "modelId"))
    DeleteFoundationModelAgreementRequest.struct_class = Types::DeleteFoundationModelAgreementRequest

    DeleteFoundationModelAgreementResponse.struct_class = Types::DeleteFoundationModelAgreementResponse

    DeleteGuardrailRequest.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, required: true, location: "uri", location_name: "guardrailIdentifier"))
    DeleteGuardrailRequest.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailNumericalVersion, location: "querystring", location_name: "guardrailVersion"))
    DeleteGuardrailRequest.struct_class = Types::DeleteGuardrailRequest

    DeleteGuardrailResponse.struct_class = Types::DeleteGuardrailResponse

    DeleteImportedModelRequest.add_member(:model_identifier, Shapes::ShapeRef.new(shape: ImportedModelIdentifier, required: true, location: "uri", location_name: "modelIdentifier"))
    DeleteImportedModelRequest.struct_class = Types::DeleteImportedModelRequest

    DeleteImportedModelResponse.struct_class = Types::DeleteImportedModelResponse

    DeleteInferenceProfileRequest.add_member(:inference_profile_identifier, Shapes::ShapeRef.new(shape: InferenceProfileIdentifier, required: true, location: "uri", location_name: "inferenceProfileIdentifier"))
    DeleteInferenceProfileRequest.struct_class = Types::DeleteInferenceProfileRequest

    DeleteInferenceProfileResponse.struct_class = Types::DeleteInferenceProfileResponse

    DeleteMarketplaceModelEndpointRequest.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "endpointArn"))
    DeleteMarketplaceModelEndpointRequest.struct_class = Types::DeleteMarketplaceModelEndpointRequest

    DeleteMarketplaceModelEndpointResponse.struct_class = Types::DeleteMarketplaceModelEndpointResponse

    DeleteModelInvocationLoggingConfigurationRequest.struct_class = Types::DeleteModelInvocationLoggingConfigurationRequest

    DeleteModelInvocationLoggingConfigurationResponse.struct_class = Types::DeleteModelInvocationLoggingConfigurationResponse

    DeletePromptRouterRequest.add_member(:prompt_router_arn, Shapes::ShapeRef.new(shape: PromptRouterArn, required: true, location: "uri", location_name: "promptRouterArn"))
    DeletePromptRouterRequest.struct_class = Types::DeletePromptRouterRequest

    DeletePromptRouterResponse.struct_class = Types::DeletePromptRouterResponse

    DeleteProvisionedModelThroughputRequest.add_member(:provisioned_model_id, Shapes::ShapeRef.new(shape: ProvisionedModelId, required: true, location: "uri", location_name: "provisionedModelId"))
    DeleteProvisionedModelThroughputRequest.struct_class = Types::DeleteProvisionedModelThroughputRequest

    DeleteProvisionedModelThroughputResponse.struct_class = Types::DeleteProvisionedModelThroughputResponse

    DeregisterMarketplaceModelEndpointRequest.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "endpointArn"))
    DeregisterMarketplaceModelEndpointRequest.struct_class = Types::DeregisterMarketplaceModelEndpointRequest

    DeregisterMarketplaceModelEndpointResponse.struct_class = Types::DeregisterMarketplaceModelEndpointResponse

    DimensionalPriceRate.add_member(:dimension, Shapes::ShapeRef.new(shape: String, location_name: "dimension"))
    DimensionalPriceRate.add_member(:price, Shapes::ShapeRef.new(shape: String, location_name: "price"))
    DimensionalPriceRate.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    DimensionalPriceRate.add_member(:unit, Shapes::ShapeRef.new(shape: String, location_name: "unit"))
    DimensionalPriceRate.struct_class = Types::DimensionalPriceRate

    DistillationConfig.add_member(:teacher_model_config, Shapes::ShapeRef.new(shape: TeacherModelConfig, required: true, location_name: "teacherModelConfig"))
    DistillationConfig.struct_class = Types::DistillationConfig

    EndpointConfig.add_member(:sage_maker, Shapes::ShapeRef.new(shape: SageMakerEndpoint, location_name: "sageMaker"))
    EndpointConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EndpointConfig.add_member_subclass(:sage_maker, Types::EndpointConfig::SageMaker)
    EndpointConfig.add_member_subclass(:unknown, Types::EndpointConfig::Unknown)
    EndpointConfig.struct_class = Types::EndpointConfig

    ErrorMessages.member = Shapes::ShapeRef.new(shape: ErrorMessage)

    EvaluationBedrockKnowledgeBaseIdentifiers.member = Shapes::ShapeRef.new(shape: KnowledgeBaseId)

    EvaluationBedrockModel.add_member(:model_identifier, Shapes::ShapeRef.new(shape: EvaluationBedrockModelIdentifier, required: true, location_name: "modelIdentifier"))
    EvaluationBedrockModel.add_member(:inference_params, Shapes::ShapeRef.new(shape: EvaluationModelInferenceParams, location_name: "inferenceParams"))
    EvaluationBedrockModel.add_member(:performance_config, Shapes::ShapeRef.new(shape: PerformanceConfiguration, location_name: "performanceConfig"))
    EvaluationBedrockModel.struct_class = Types::EvaluationBedrockModel

    EvaluationBedrockModelIdentifiers.member = Shapes::ShapeRef.new(shape: EvaluationBedrockModelIdentifier)

    EvaluationConfig.add_member(:automated, Shapes::ShapeRef.new(shape: AutomatedEvaluationConfig, location_name: "automated"))
    EvaluationConfig.add_member(:human, Shapes::ShapeRef.new(shape: HumanEvaluationConfig, location_name: "human"))
    EvaluationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationConfig.add_member_subclass(:automated, Types::EvaluationConfig::Automated)
    EvaluationConfig.add_member_subclass(:human, Types::EvaluationConfig::Human)
    EvaluationConfig.add_member_subclass(:unknown, Types::EvaluationConfig::Unknown)
    EvaluationConfig.struct_class = Types::EvaluationConfig

    EvaluationDataset.add_member(:name, Shapes::ShapeRef.new(shape: EvaluationDatasetName, required: true, location_name: "name"))
    EvaluationDataset.add_member(:dataset_location, Shapes::ShapeRef.new(shape: EvaluationDatasetLocation, location_name: "datasetLocation"))
    EvaluationDataset.struct_class = Types::EvaluationDataset

    EvaluationDatasetLocation.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri"))
    EvaluationDatasetLocation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationDatasetLocation.add_member_subclass(:s3_uri, Types::EvaluationDatasetLocation::S3Uri)
    EvaluationDatasetLocation.add_member_subclass(:unknown, Types::EvaluationDatasetLocation::Unknown)
    EvaluationDatasetLocation.struct_class = Types::EvaluationDatasetLocation

    EvaluationDatasetMetricConfig.add_member(:task_type, Shapes::ShapeRef.new(shape: EvaluationTaskType, required: true, location_name: "taskType"))
    EvaluationDatasetMetricConfig.add_member(:dataset, Shapes::ShapeRef.new(shape: EvaluationDataset, required: true, location_name: "dataset"))
    EvaluationDatasetMetricConfig.add_member(:metric_names, Shapes::ShapeRef.new(shape: EvaluationMetricNames, required: true, location_name: "metricNames"))
    EvaluationDatasetMetricConfig.struct_class = Types::EvaluationDatasetMetricConfig

    EvaluationDatasetMetricConfigs.member = Shapes::ShapeRef.new(shape: EvaluationDatasetMetricConfig)

    EvaluationInferenceConfig.add_member(:models, Shapes::ShapeRef.new(shape: EvaluationModelConfigs, location_name: "models"))
    EvaluationInferenceConfig.add_member(:rag_configs, Shapes::ShapeRef.new(shape: RagConfigs, location_name: "ragConfigs"))
    EvaluationInferenceConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationInferenceConfig.add_member_subclass(:models, Types::EvaluationInferenceConfig::Models)
    EvaluationInferenceConfig.add_member_subclass(:rag_configs, Types::EvaluationInferenceConfig::RagConfigs)
    EvaluationInferenceConfig.add_member_subclass(:unknown, Types::EvaluationInferenceConfig::Unknown)
    EvaluationInferenceConfig.struct_class = Types::EvaluationInferenceConfig

    EvaluationInferenceConfigSummary.add_member(:model_config_summary, Shapes::ShapeRef.new(shape: EvaluationModelConfigSummary, location_name: "modelConfigSummary"))
    EvaluationInferenceConfigSummary.add_member(:rag_config_summary, Shapes::ShapeRef.new(shape: EvaluationRagConfigSummary, location_name: "ragConfigSummary"))
    EvaluationInferenceConfigSummary.struct_class = Types::EvaluationInferenceConfigSummary

    EvaluationJobIdentifiers.member = Shapes::ShapeRef.new(shape: EvaluationJobIdentifier)

    EvaluationMetricNames.member = Shapes::ShapeRef.new(shape: EvaluationMetricName)

    EvaluationModelConfig.add_member(:bedrock_model, Shapes::ShapeRef.new(shape: EvaluationBedrockModel, location_name: "bedrockModel"))
    EvaluationModelConfig.add_member(:precomputed_inference_source, Shapes::ShapeRef.new(shape: EvaluationPrecomputedInferenceSource, location_name: "precomputedInferenceSource"))
    EvaluationModelConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationModelConfig.add_member_subclass(:bedrock_model, Types::EvaluationModelConfig::BedrockModel)
    EvaluationModelConfig.add_member_subclass(:precomputed_inference_source, Types::EvaluationModelConfig::PrecomputedInferenceSource)
    EvaluationModelConfig.add_member_subclass(:unknown, Types::EvaluationModelConfig::Unknown)
    EvaluationModelConfig.struct_class = Types::EvaluationModelConfig

    EvaluationModelConfigSummary.add_member(:bedrock_model_identifiers, Shapes::ShapeRef.new(shape: EvaluationBedrockModelIdentifiers, location_name: "bedrockModelIdentifiers"))
    EvaluationModelConfigSummary.add_member(:precomputed_inference_source_identifiers, Shapes::ShapeRef.new(shape: EvaluationPrecomputedInferenceSourceIdentifiers, location_name: "precomputedInferenceSourceIdentifiers"))
    EvaluationModelConfigSummary.struct_class = Types::EvaluationModelConfigSummary

    EvaluationModelConfigs.member = Shapes::ShapeRef.new(shape: EvaluationModelConfig)

    EvaluationOutputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    EvaluationOutputDataConfig.struct_class = Types::EvaluationOutputDataConfig

    EvaluationPrecomputedInferenceSource.add_member(:inference_source_identifier, Shapes::ShapeRef.new(shape: EvaluationPrecomputedInferenceSourceIdentifier, required: true, location_name: "inferenceSourceIdentifier"))
    EvaluationPrecomputedInferenceSource.struct_class = Types::EvaluationPrecomputedInferenceSource

    EvaluationPrecomputedInferenceSourceIdentifiers.member = Shapes::ShapeRef.new(shape: EvaluationPrecomputedInferenceSourceIdentifier)

    EvaluationPrecomputedRagSourceConfig.add_member(:retrieve_source_config, Shapes::ShapeRef.new(shape: EvaluationPrecomputedRetrieveSourceConfig, location_name: "retrieveSourceConfig"))
    EvaluationPrecomputedRagSourceConfig.add_member(:retrieve_and_generate_source_config, Shapes::ShapeRef.new(shape: EvaluationPrecomputedRetrieveAndGenerateSourceConfig, location_name: "retrieveAndGenerateSourceConfig"))
    EvaluationPrecomputedRagSourceConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationPrecomputedRagSourceConfig.add_member_subclass(:retrieve_source_config, Types::EvaluationPrecomputedRagSourceConfig::RetrieveSourceConfig)
    EvaluationPrecomputedRagSourceConfig.add_member_subclass(:retrieve_and_generate_source_config, Types::EvaluationPrecomputedRagSourceConfig::RetrieveAndGenerateSourceConfig)
    EvaluationPrecomputedRagSourceConfig.add_member_subclass(:unknown, Types::EvaluationPrecomputedRagSourceConfig::Unknown)
    EvaluationPrecomputedRagSourceConfig.struct_class = Types::EvaluationPrecomputedRagSourceConfig

    EvaluationPrecomputedRagSourceIdentifiers.member = Shapes::ShapeRef.new(shape: EvaluationPrecomputedRagSourceIdentifier)

    EvaluationPrecomputedRetrieveAndGenerateSourceConfig.add_member(:rag_source_identifier, Shapes::ShapeRef.new(shape: EvaluationPrecomputedRagSourceIdentifier, required: true, location_name: "ragSourceIdentifier"))
    EvaluationPrecomputedRetrieveAndGenerateSourceConfig.struct_class = Types::EvaluationPrecomputedRetrieveAndGenerateSourceConfig

    EvaluationPrecomputedRetrieveSourceConfig.add_member(:rag_source_identifier, Shapes::ShapeRef.new(shape: EvaluationPrecomputedRagSourceIdentifier, required: true, location_name: "ragSourceIdentifier"))
    EvaluationPrecomputedRetrieveSourceConfig.struct_class = Types::EvaluationPrecomputedRetrieveSourceConfig

    EvaluationRagConfigSummary.add_member(:bedrock_knowledge_base_identifiers, Shapes::ShapeRef.new(shape: EvaluationBedrockKnowledgeBaseIdentifiers, location_name: "bedrockKnowledgeBaseIdentifiers"))
    EvaluationRagConfigSummary.add_member(:precomputed_rag_source_identifiers, Shapes::ShapeRef.new(shape: EvaluationPrecomputedRagSourceIdentifiers, location_name: "precomputedRagSourceIdentifiers"))
    EvaluationRagConfigSummary.struct_class = Types::EvaluationRagConfigSummary

    EvaluationSummaries.member = Shapes::ShapeRef.new(shape: EvaluationSummary)

    EvaluationSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: EvaluationJobArn, required: true, location_name: "jobArn"))
    EvaluationSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: EvaluationJobName, required: true, location_name: "jobName"))
    EvaluationSummary.add_member(:status, Shapes::ShapeRef.new(shape: EvaluationJobStatus, required: true, location_name: "status"))
    EvaluationSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    EvaluationSummary.add_member(:job_type, Shapes::ShapeRef.new(shape: EvaluationJobType, required: true, location_name: "jobType"))
    EvaluationSummary.add_member(:evaluation_task_types, Shapes::ShapeRef.new(shape: EvaluationTaskTypes, required: true, location_name: "evaluationTaskTypes"))
    EvaluationSummary.add_member(:model_identifiers, Shapes::ShapeRef.new(shape: EvaluationBedrockModelIdentifiers, deprecated: true, location_name: "modelIdentifiers", metadata: {"deprecatedMessage" => "Inference identifiers should be retrieved from the inferenceConfigSummary", "deprecatedSince" => "2025-03-07"}))
    EvaluationSummary.add_member(:rag_identifiers, Shapes::ShapeRef.new(shape: EvaluationBedrockKnowledgeBaseIdentifiers, deprecated: true, location_name: "ragIdentifiers", metadata: {"deprecatedMessage" => "Inference identifiers should be retrieved from the inferenceConfigSummary", "deprecatedSince" => "2025-03-07"}))
    EvaluationSummary.add_member(:evaluator_model_identifiers, Shapes::ShapeRef.new(shape: EvaluatorModelIdentifiers, location_name: "evaluatorModelIdentifiers"))
    EvaluationSummary.add_member(:custom_metrics_evaluator_model_identifiers, Shapes::ShapeRef.new(shape: EvaluatorModelIdentifiers, location_name: "customMetricsEvaluatorModelIdentifiers"))
    EvaluationSummary.add_member(:inference_config_summary, Shapes::ShapeRef.new(shape: EvaluationInferenceConfigSummary, location_name: "inferenceConfigSummary"))
    EvaluationSummary.add_member(:application_type, Shapes::ShapeRef.new(shape: ApplicationType, location_name: "applicationType"))
    EvaluationSummary.struct_class = Types::EvaluationSummary

    EvaluationTaskTypes.member = Shapes::ShapeRef.new(shape: EvaluationTaskType)

    EvaluatorModelConfig.add_member(:bedrock_evaluator_models, Shapes::ShapeRef.new(shape: BedrockEvaluatorModels, location_name: "bedrockEvaluatorModels"))
    EvaluatorModelConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluatorModelConfig.add_member_subclass(:bedrock_evaluator_models, Types::EvaluatorModelConfig::BedrockEvaluatorModels)
    EvaluatorModelConfig.add_member_subclass(:unknown, Types::EvaluatorModelConfig::Unknown)
    EvaluatorModelConfig.struct_class = Types::EvaluatorModelConfig

    EvaluatorModelIdentifiers.member = Shapes::ShapeRef.new(shape: EvaluatorModelIdentifier)

    ExportAutomatedReasoningPolicyVersionRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    ExportAutomatedReasoningPolicyVersionRequest.struct_class = Types::ExportAutomatedReasoningPolicyVersionRequest

    ExportAutomatedReasoningPolicyVersionResponse.add_member(:policy_definition, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinition, required: true, location_name: "policyDefinition"))
    ExportAutomatedReasoningPolicyVersionResponse.struct_class = Types::ExportAutomatedReasoningPolicyVersionResponse
    ExportAutomatedReasoningPolicyVersionResponse[:payload] = :policy_definition
    ExportAutomatedReasoningPolicyVersionResponse[:payload_member] = ExportAutomatedReasoningPolicyVersionResponse.member(:policy_definition)

    ExternalSource.add_member(:source_type, Shapes::ShapeRef.new(shape: ExternalSourceType, required: true, location_name: "sourceType"))
    ExternalSource.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3ObjectDoc, location_name: "s3Location"))
    ExternalSource.add_member(:byte_content, Shapes::ShapeRef.new(shape: ByteContentDoc, location_name: "byteContent"))
    ExternalSource.struct_class = Types::ExternalSource

    ExternalSources.member = Shapes::ShapeRef.new(shape: ExternalSource)

    ExternalSourcesGenerationConfiguration.add_member(:prompt_template, Shapes::ShapeRef.new(shape: PromptTemplate, location_name: "promptTemplate"))
    ExternalSourcesGenerationConfiguration.add_member(:guardrail_configuration, Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfiguration"))
    ExternalSourcesGenerationConfiguration.add_member(:kb_inference_config, Shapes::ShapeRef.new(shape: KbInferenceConfig, location_name: "kbInferenceConfig"))
    ExternalSourcesGenerationConfiguration.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: "additionalModelRequestFields"))
    ExternalSourcesGenerationConfiguration.struct_class = Types::ExternalSourcesGenerationConfiguration

    ExternalSourcesRetrieveAndGenerateConfiguration.add_member(:model_arn, Shapes::ShapeRef.new(shape: BedrockModelArn, required: true, location_name: "modelArn"))
    ExternalSourcesRetrieveAndGenerateConfiguration.add_member(:sources, Shapes::ShapeRef.new(shape: ExternalSources, required: true, location_name: "sources"))
    ExternalSourcesRetrieveAndGenerateConfiguration.add_member(:generation_configuration, Shapes::ShapeRef.new(shape: ExternalSourcesGenerationConfiguration, location_name: "generationConfiguration"))
    ExternalSourcesRetrieveAndGenerateConfiguration.struct_class = Types::ExternalSourcesRetrieveAndGenerateConfiguration

    FieldForReranking.add_member(:field_name, Shapes::ShapeRef.new(shape: FieldForRerankingFieldNameString, required: true, location_name: "fieldName"))
    FieldForReranking.struct_class = Types::FieldForReranking

    FieldsForReranking.member = Shapes::ShapeRef.new(shape: FieldForReranking)

    FilterAttribute.add_member(:key, Shapes::ShapeRef.new(shape: FilterKey, required: true, location_name: "key"))
    FilterAttribute.add_member(:value, Shapes::ShapeRef.new(shape: FilterValue, required: true, location_name: "value"))
    FilterAttribute.struct_class = Types::FilterAttribute

    FoundationModelDetails.add_member(:model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, required: true, location_name: "modelArn"))
    FoundationModelDetails.add_member(:model_id, Shapes::ShapeRef.new(shape: BedrockModelId, required: true, location_name: "modelId"))
    FoundationModelDetails.add_member(:model_name, Shapes::ShapeRef.new(shape: BrandedName, location_name: "modelName"))
    FoundationModelDetails.add_member(:provider_name, Shapes::ShapeRef.new(shape: BrandedName, location_name: "providerName"))
    FoundationModelDetails.add_member(:input_modalities, Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "inputModalities"))
    FoundationModelDetails.add_member(:output_modalities, Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "outputModalities"))
    FoundationModelDetails.add_member(:response_streaming_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "responseStreamingSupported"))
    FoundationModelDetails.add_member(:customizations_supported, Shapes::ShapeRef.new(shape: ModelCustomizationList, location_name: "customizationsSupported"))
    FoundationModelDetails.add_member(:inference_types_supported, Shapes::ShapeRef.new(shape: InferenceTypeList, location_name: "inferenceTypesSupported"))
    FoundationModelDetails.add_member(:model_lifecycle, Shapes::ShapeRef.new(shape: FoundationModelLifecycle, location_name: "modelLifecycle"))
    FoundationModelDetails.struct_class = Types::FoundationModelDetails

    FoundationModelLifecycle.add_member(:status, Shapes::ShapeRef.new(shape: FoundationModelLifecycleStatus, required: true, location_name: "status"))
    FoundationModelLifecycle.struct_class = Types::FoundationModelLifecycle

    FoundationModelSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, required: true, location_name: "modelArn"))
    FoundationModelSummary.add_member(:model_id, Shapes::ShapeRef.new(shape: BedrockModelId, required: true, location_name: "modelId"))
    FoundationModelSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: BrandedName, location_name: "modelName"))
    FoundationModelSummary.add_member(:provider_name, Shapes::ShapeRef.new(shape: BrandedName, location_name: "providerName"))
    FoundationModelSummary.add_member(:input_modalities, Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "inputModalities"))
    FoundationModelSummary.add_member(:output_modalities, Shapes::ShapeRef.new(shape: ModelModalityList, location_name: "outputModalities"))
    FoundationModelSummary.add_member(:response_streaming_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "responseStreamingSupported"))
    FoundationModelSummary.add_member(:customizations_supported, Shapes::ShapeRef.new(shape: ModelCustomizationList, location_name: "customizationsSupported"))
    FoundationModelSummary.add_member(:inference_types_supported, Shapes::ShapeRef.new(shape: InferenceTypeList, location_name: "inferenceTypesSupported"))
    FoundationModelSummary.add_member(:model_lifecycle, Shapes::ShapeRef.new(shape: FoundationModelLifecycle, location_name: "modelLifecycle"))
    FoundationModelSummary.struct_class = Types::FoundationModelSummary

    FoundationModelSummaryList.member = Shapes::ShapeRef.new(shape: FoundationModelSummary)

    GenerationConfiguration.add_member(:prompt_template, Shapes::ShapeRef.new(shape: PromptTemplate, location_name: "promptTemplate"))
    GenerationConfiguration.add_member(:guardrail_configuration, Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfiguration"))
    GenerationConfiguration.add_member(:kb_inference_config, Shapes::ShapeRef.new(shape: KbInferenceConfig, location_name: "kbInferenceConfig"))
    GenerationConfiguration.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: "additionalModelRequestFields"))
    GenerationConfiguration.struct_class = Types::GenerationConfiguration

    GetAutomatedReasoningPolicyAnnotationsRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    GetAutomatedReasoningPolicyAnnotationsRequest.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location: "uri", location_name: "buildWorkflowId"))
    GetAutomatedReasoningPolicyAnnotationsRequest.struct_class = Types::GetAutomatedReasoningPolicyAnnotationsRequest

    GetAutomatedReasoningPolicyAnnotationsResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    GetAutomatedReasoningPolicyAnnotationsResponse.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, required: true, location_name: "name"))
    GetAutomatedReasoningPolicyAnnotationsResponse.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location_name: "buildWorkflowId"))
    GetAutomatedReasoningPolicyAnnotationsResponse.add_member(:annotations, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationList, required: true, location_name: "annotations"))
    GetAutomatedReasoningPolicyAnnotationsResponse.add_member(:annotation_set_hash, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, required: true, location_name: "annotationSetHash"))
    GetAutomatedReasoningPolicyAnnotationsResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetAutomatedReasoningPolicyAnnotationsResponse.struct_class = Types::GetAutomatedReasoningPolicyAnnotationsResponse

    GetAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    GetAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location: "uri", location_name: "buildWorkflowId"))
    GetAutomatedReasoningPolicyBuildWorkflowRequest.struct_class = Types::GetAutomatedReasoningPolicyBuildWorkflowRequest

    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location_name: "buildWorkflowId"))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:status, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowStatus, required: true, location_name: "status"))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:build_workflow_type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowType, required: true, location_name: "buildWorkflowType"))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:document_name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildDocumentName, location_name: "documentName"))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:document_content_type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildDocumentContentType, location_name: "documentContentType"))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:document_description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildDocumentDescription, location_name: "documentDescription"))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetAutomatedReasoningPolicyBuildWorkflowResponse.struct_class = Types::GetAutomatedReasoningPolicyBuildWorkflowResponse

    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location: "uri", location_name: "buildWorkflowId"))
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest.add_member(:asset_type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildResultAssetType, required: true, location: "querystring", location_name: "assetType"))
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest.struct_class = Types::GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest

    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location_name: "buildWorkflowId"))
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse.add_member(:build_workflow_assets, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildResultAssets, location_name: "buildWorkflowAssets"))
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse.struct_class = Types::GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse

    GetAutomatedReasoningPolicyNextScenarioRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    GetAutomatedReasoningPolicyNextScenarioRequest.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location: "uri", location_name: "buildWorkflowId"))
    GetAutomatedReasoningPolicyNextScenarioRequest.struct_class = Types::GetAutomatedReasoningPolicyNextScenarioRequest

    GetAutomatedReasoningPolicyNextScenarioResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    GetAutomatedReasoningPolicyNextScenarioResponse.add_member(:scenario, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyScenario, location_name: "scenario"))
    GetAutomatedReasoningPolicyNextScenarioResponse.struct_class = Types::GetAutomatedReasoningPolicyNextScenarioResponse

    GetAutomatedReasoningPolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    GetAutomatedReasoningPolicyRequest.struct_class = Types::GetAutomatedReasoningPolicyRequest

    GetAutomatedReasoningPolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    GetAutomatedReasoningPolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, required: true, location_name: "name"))
    GetAutomatedReasoningPolicyResponse.add_member(:version, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyVersion, required: true, location_name: "version"))
    GetAutomatedReasoningPolicyResponse.add_member(:policy_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyId, required: true, location_name: "policyId"))
    GetAutomatedReasoningPolicyResponse.add_member(:description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDescription, location_name: "description"))
    GetAutomatedReasoningPolicyResponse.add_member(:definition_hash, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, required: true, location_name: "definitionHash"))
    GetAutomatedReasoningPolicyResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetAutomatedReasoningPolicyResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetAutomatedReasoningPolicyResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetAutomatedReasoningPolicyResponse.struct_class = Types::GetAutomatedReasoningPolicyResponse

    GetAutomatedReasoningPolicyTestCaseRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    GetAutomatedReasoningPolicyTestCaseRequest.add_member(:test_case_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId, required: true, location: "uri", location_name: "testCaseId"))
    GetAutomatedReasoningPolicyTestCaseRequest.struct_class = Types::GetAutomatedReasoningPolicyTestCaseRequest

    GetAutomatedReasoningPolicyTestCaseResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    GetAutomatedReasoningPolicyTestCaseResponse.add_member(:test_case, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCase, required: true, location_name: "testCase"))
    GetAutomatedReasoningPolicyTestCaseResponse.struct_class = Types::GetAutomatedReasoningPolicyTestCaseResponse

    GetAutomatedReasoningPolicyTestResultRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    GetAutomatedReasoningPolicyTestResultRequest.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location: "uri", location_name: "buildWorkflowId"))
    GetAutomatedReasoningPolicyTestResultRequest.add_member(:test_case_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId, required: true, location: "uri", location_name: "testCaseId"))
    GetAutomatedReasoningPolicyTestResultRequest.struct_class = Types::GetAutomatedReasoningPolicyTestResultRequest

    GetAutomatedReasoningPolicyTestResultResponse.add_member(:test_result, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestResult, required: true, location_name: "testResult"))
    GetAutomatedReasoningPolicyTestResultResponse.struct_class = Types::GetAutomatedReasoningPolicyTestResultResponse

    GetCustomModelDeploymentRequest.add_member(:custom_model_deployment_identifier, Shapes::ShapeRef.new(shape: CustomModelDeploymentIdentifier, required: true, location: "uri", location_name: "customModelDeploymentIdentifier"))
    GetCustomModelDeploymentRequest.struct_class = Types::GetCustomModelDeploymentRequest

    GetCustomModelDeploymentResponse.add_member(:custom_model_deployment_arn, Shapes::ShapeRef.new(shape: CustomModelDeploymentArn, required: true, location_name: "customModelDeploymentArn"))
    GetCustomModelDeploymentResponse.add_member(:model_deployment_name, Shapes::ShapeRef.new(shape: ModelDeploymentName, required: true, location_name: "modelDeploymentName"))
    GetCustomModelDeploymentResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: CustomModelArn, required: true, location_name: "modelArn"))
    GetCustomModelDeploymentResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetCustomModelDeploymentResponse.add_member(:status, Shapes::ShapeRef.new(shape: CustomModelDeploymentStatus, required: true, location_name: "status"))
    GetCustomModelDeploymentResponse.add_member(:description, Shapes::ShapeRef.new(shape: CustomModelDeploymentDescription, location_name: "description"))
    GetCustomModelDeploymentResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetCustomModelDeploymentResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GetCustomModelDeploymentResponse.struct_class = Types::GetCustomModelDeploymentResponse

    GetCustomModelRequest.add_member(:model_identifier, Shapes::ShapeRef.new(shape: ModelIdentifier, required: true, location: "uri", location_name: "modelIdentifier"))
    GetCustomModelRequest.struct_class = Types::GetCustomModelRequest

    GetCustomModelResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "modelArn"))
    GetCustomModelResponse.add_member(:model_name, Shapes::ShapeRef.new(shape: CustomModelName, required: true, location_name: "modelName"))
    GetCustomModelResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "jobName"))
    GetCustomModelResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, location_name: "jobArn"))
    GetCustomModelResponse.add_member(:base_model_arn, Shapes::ShapeRef.new(shape: ModelArn, location_name: "baseModelArn"))
    GetCustomModelResponse.add_member(:customization_type, Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    GetCustomModelResponse.add_member(:model_kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "modelKmsKeyArn"))
    GetCustomModelResponse.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: ModelCustomizationHyperParameters, location_name: "hyperParameters"))
    GetCustomModelResponse.add_member(:training_data_config, Shapes::ShapeRef.new(shape: TrainingDataConfig, location_name: "trainingDataConfig"))
    GetCustomModelResponse.add_member(:validation_data_config, Shapes::ShapeRef.new(shape: ValidationDataConfig, location_name: "validationDataConfig"))
    GetCustomModelResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "outputDataConfig"))
    GetCustomModelResponse.add_member(:training_metrics, Shapes::ShapeRef.new(shape: TrainingMetrics, location_name: "trainingMetrics"))
    GetCustomModelResponse.add_member(:validation_metrics, Shapes::ShapeRef.new(shape: ValidationMetrics, location_name: "validationMetrics"))
    GetCustomModelResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetCustomModelResponse.add_member(:customization_config, Shapes::ShapeRef.new(shape: CustomizationConfig, location_name: "customizationConfig"))
    GetCustomModelResponse.add_member(:model_status, Shapes::ShapeRef.new(shape: ModelStatus, location_name: "modelStatus"))
    GetCustomModelResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetCustomModelResponse.struct_class = Types::GetCustomModelResponse

    GetEvaluationJobRequest.add_member(:job_identifier, Shapes::ShapeRef.new(shape: EvaluationJobIdentifier, required: true, location: "uri", location_name: "jobIdentifier"))
    GetEvaluationJobRequest.struct_class = Types::GetEvaluationJobRequest

    GetEvaluationJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: EvaluationJobName, required: true, location_name: "jobName"))
    GetEvaluationJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: EvaluationJobStatus, required: true, location_name: "status"))
    GetEvaluationJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: EvaluationJobArn, required: true, location_name: "jobArn"))
    GetEvaluationJobResponse.add_member(:job_description, Shapes::ShapeRef.new(shape: EvaluationJobDescription, location_name: "jobDescription"))
    GetEvaluationJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    GetEvaluationJobResponse.add_member(:customer_encryption_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "customerEncryptionKeyId"))
    GetEvaluationJobResponse.add_member(:job_type, Shapes::ShapeRef.new(shape: EvaluationJobType, required: true, location_name: "jobType"))
    GetEvaluationJobResponse.add_member(:application_type, Shapes::ShapeRef.new(shape: ApplicationType, location_name: "applicationType"))
    GetEvaluationJobResponse.add_member(:evaluation_config, Shapes::ShapeRef.new(shape: EvaluationConfig, required: true, location_name: "evaluationConfig"))
    GetEvaluationJobResponse.add_member(:inference_config, Shapes::ShapeRef.new(shape: EvaluationInferenceConfig, required: true, location_name: "inferenceConfig"))
    GetEvaluationJobResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: EvaluationOutputDataConfig, required: true, location_name: "outputDataConfig"))
    GetEvaluationJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetEvaluationJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetEvaluationJobResponse.add_member(:failure_messages, Shapes::ShapeRef.new(shape: ErrorMessages, location_name: "failureMessages"))
    GetEvaluationJobResponse.struct_class = Types::GetEvaluationJobResponse

    GetFoundationModelAvailabilityRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: BedrockModelId, required: true, location: "uri", location_name: "modelId"))
    GetFoundationModelAvailabilityRequest.struct_class = Types::GetFoundationModelAvailabilityRequest

    GetFoundationModelAvailabilityResponse.add_member(:model_id, Shapes::ShapeRef.new(shape: BedrockModelId, required: true, location_name: "modelId"))
    GetFoundationModelAvailabilityResponse.add_member(:agreement_availability, Shapes::ShapeRef.new(shape: AgreementAvailability, required: true, location_name: "agreementAvailability"))
    GetFoundationModelAvailabilityResponse.add_member(:authorization_status, Shapes::ShapeRef.new(shape: AuthorizationStatus, required: true, location_name: "authorizationStatus"))
    GetFoundationModelAvailabilityResponse.add_member(:entitlement_availability, Shapes::ShapeRef.new(shape: EntitlementAvailability, required: true, location_name: "entitlementAvailability"))
    GetFoundationModelAvailabilityResponse.add_member(:region_availability, Shapes::ShapeRef.new(shape: RegionAvailability, required: true, location_name: "regionAvailability"))
    GetFoundationModelAvailabilityResponse.struct_class = Types::GetFoundationModelAvailabilityResponse

    GetFoundationModelRequest.add_member(:model_identifier, Shapes::ShapeRef.new(shape: GetFoundationModelIdentifier, required: true, location: "uri", location_name: "modelIdentifier"))
    GetFoundationModelRequest.struct_class = Types::GetFoundationModelRequest

    GetFoundationModelResponse.add_member(:model_details, Shapes::ShapeRef.new(shape: FoundationModelDetails, location_name: "modelDetails"))
    GetFoundationModelResponse.struct_class = Types::GetFoundationModelResponse

    GetGuardrailRequest.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, required: true, location: "uri", location_name: "guardrailIdentifier"))
    GetGuardrailRequest.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailVersion, location: "querystring", location_name: "guardrailVersion"))
    GetGuardrailRequest.struct_class = Types::GetGuardrailRequest

    GetGuardrailResponse.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailName, required: true, location_name: "name"))
    GetGuardrailResponse.add_member(:description, Shapes::ShapeRef.new(shape: GuardrailDescription, location_name: "description"))
    GetGuardrailResponse.add_member(:guardrail_id, Shapes::ShapeRef.new(shape: GuardrailId, required: true, location_name: "guardrailId"))
    GetGuardrailResponse.add_member(:guardrail_arn, Shapes::ShapeRef.new(shape: GuardrailArn, required: true, location_name: "guardrailArn"))
    GetGuardrailResponse.add_member(:version, Shapes::ShapeRef.new(shape: GuardrailVersion, required: true, location_name: "version"))
    GetGuardrailResponse.add_member(:status, Shapes::ShapeRef.new(shape: GuardrailStatus, required: true, location_name: "status"))
    GetGuardrailResponse.add_member(:topic_policy, Shapes::ShapeRef.new(shape: GuardrailTopicPolicy, location_name: "topicPolicy"))
    GetGuardrailResponse.add_member(:content_policy, Shapes::ShapeRef.new(shape: GuardrailContentPolicy, location_name: "contentPolicy"))
    GetGuardrailResponse.add_member(:word_policy, Shapes::ShapeRef.new(shape: GuardrailWordPolicy, location_name: "wordPolicy"))
    GetGuardrailResponse.add_member(:sensitive_information_policy, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicy, location_name: "sensitiveInformationPolicy"))
    GetGuardrailResponse.add_member(:contextual_grounding_policy, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingPolicy, location_name: "contextualGroundingPolicy"))
    GetGuardrailResponse.add_member(:automated_reasoning_policy, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningPolicy, location_name: "automatedReasoningPolicy"))
    GetGuardrailResponse.add_member(:cross_region_details, Shapes::ShapeRef.new(shape: GuardrailCrossRegionDetails, location_name: "crossRegionDetails"))
    GetGuardrailResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetGuardrailResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetGuardrailResponse.add_member(:status_reasons, Shapes::ShapeRef.new(shape: GuardrailStatusReasons, location_name: "statusReasons"))
    GetGuardrailResponse.add_member(:failure_recommendations, Shapes::ShapeRef.new(shape: GuardrailFailureRecommendations, location_name: "failureRecommendations"))
    GetGuardrailResponse.add_member(:blocked_input_messaging, Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, required: true, location_name: "blockedInputMessaging"))
    GetGuardrailResponse.add_member(:blocked_outputs_messaging, Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, required: true, location_name: "blockedOutputsMessaging"))
    GetGuardrailResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetGuardrailResponse.struct_class = Types::GetGuardrailResponse

    GetImportedModelRequest.add_member(:model_identifier, Shapes::ShapeRef.new(shape: ImportedModelIdentifier, required: true, location: "uri", location_name: "modelIdentifier"))
    GetImportedModelRequest.struct_class = Types::GetImportedModelRequest

    GetImportedModelResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: ImportedModelArn, location_name: "modelArn"))
    GetImportedModelResponse.add_member(:model_name, Shapes::ShapeRef.new(shape: ImportedModelName, location_name: "modelName"))
    GetImportedModelResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "jobName"))
    GetImportedModelResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelImportJobArn, location_name: "jobArn"))
    GetImportedModelResponse.add_member(:model_data_source, Shapes::ShapeRef.new(shape: ModelDataSource, location_name: "modelDataSource"))
    GetImportedModelResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    GetImportedModelResponse.add_member(:model_architecture, Shapes::ShapeRef.new(shape: String, location_name: "modelArchitecture"))
    GetImportedModelResponse.add_member(:model_kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "modelKmsKeyArn"))
    GetImportedModelResponse.add_member(:instruct_supported, Shapes::ShapeRef.new(shape: InstructSupported, location_name: "instructSupported"))
    GetImportedModelResponse.add_member(:custom_model_units, Shapes::ShapeRef.new(shape: CustomModelUnits, location_name: "customModelUnits"))
    GetImportedModelResponse.struct_class = Types::GetImportedModelResponse

    GetInferenceProfileRequest.add_member(:inference_profile_identifier, Shapes::ShapeRef.new(shape: InferenceProfileIdentifier, required: true, location: "uri", location_name: "inferenceProfileIdentifier"))
    GetInferenceProfileRequest.struct_class = Types::GetInferenceProfileRequest

    GetInferenceProfileResponse.add_member(:inference_profile_name, Shapes::ShapeRef.new(shape: InferenceProfileName, required: true, location_name: "inferenceProfileName"))
    GetInferenceProfileResponse.add_member(:description, Shapes::ShapeRef.new(shape: InferenceProfileDescription, location_name: "description"))
    GetInferenceProfileResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetInferenceProfileResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetInferenceProfileResponse.add_member(:inference_profile_arn, Shapes::ShapeRef.new(shape: InferenceProfileArn, required: true, location_name: "inferenceProfileArn"))
    GetInferenceProfileResponse.add_member(:models, Shapes::ShapeRef.new(shape: InferenceProfileModels, required: true, location_name: "models"))
    GetInferenceProfileResponse.add_member(:inference_profile_id, Shapes::ShapeRef.new(shape: InferenceProfileId, required: true, location_name: "inferenceProfileId"))
    GetInferenceProfileResponse.add_member(:status, Shapes::ShapeRef.new(shape: InferenceProfileStatus, required: true, location_name: "status"))
    GetInferenceProfileResponse.add_member(:type, Shapes::ShapeRef.new(shape: InferenceProfileType, required: true, location_name: "type"))
    GetInferenceProfileResponse.struct_class = Types::GetInferenceProfileResponse

    GetMarketplaceModelEndpointRequest.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "endpointArn"))
    GetMarketplaceModelEndpointRequest.struct_class = Types::GetMarketplaceModelEndpointRequest

    GetMarketplaceModelEndpointResponse.add_member(:marketplace_model_endpoint, Shapes::ShapeRef.new(shape: MarketplaceModelEndpoint, location_name: "marketplaceModelEndpoint"))
    GetMarketplaceModelEndpointResponse.struct_class = Types::GetMarketplaceModelEndpointResponse

    GetModelCopyJobRequest.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCopyJobArn, required: true, location: "uri", location_name: "jobArn"))
    GetModelCopyJobRequest.struct_class = Types::GetModelCopyJobRequest

    GetModelCopyJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCopyJobArn, required: true, location_name: "jobArn"))
    GetModelCopyJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ModelCopyJobStatus, required: true, location_name: "status"))
    GetModelCopyJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetModelCopyJobResponse.add_member(:target_model_arn, Shapes::ShapeRef.new(shape: CustomModelArn, required: true, location_name: "targetModelArn"))
    GetModelCopyJobResponse.add_member(:target_model_name, Shapes::ShapeRef.new(shape: CustomModelName, location_name: "targetModelName"))
    GetModelCopyJobResponse.add_member(:source_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "sourceAccountId"))
    GetModelCopyJobResponse.add_member(:source_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "sourceModelArn"))
    GetModelCopyJobResponse.add_member(:target_model_kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "targetModelKmsKeyArn"))
    GetModelCopyJobResponse.add_member(:target_model_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "targetModelTags"))
    GetModelCopyJobResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetModelCopyJobResponse.add_member(:source_model_name, Shapes::ShapeRef.new(shape: CustomModelName, location_name: "sourceModelName"))
    GetModelCopyJobResponse.struct_class = Types::GetModelCopyJobResponse

    GetModelCustomizationJobRequest.add_member(:job_identifier, Shapes::ShapeRef.new(shape: ModelCustomizationJobIdentifier, required: true, location: "uri", location_name: "jobIdentifier"))
    GetModelCustomizationJobRequest.struct_class = Types::GetModelCustomizationJobRequest

    GetModelCustomizationJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, required: true, location_name: "jobArn"))
    GetModelCustomizationJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "jobName"))
    GetModelCustomizationJobResponse.add_member(:output_model_name, Shapes::ShapeRef.new(shape: CustomModelName, required: true, location_name: "outputModelName"))
    GetModelCustomizationJobResponse.add_member(:output_model_arn, Shapes::ShapeRef.new(shape: CustomModelArn, location_name: "outputModelArn"))
    GetModelCustomizationJobResponse.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken"))
    GetModelCustomizationJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    GetModelCustomizationJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ModelCustomizationJobStatus, location_name: "status"))
    GetModelCustomizationJobResponse.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    GetModelCustomizationJobResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetModelCustomizationJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetModelCustomizationJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetModelCustomizationJobResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetModelCustomizationJobResponse.add_member(:base_model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, required: true, location_name: "baseModelArn"))
    GetModelCustomizationJobResponse.add_member(:hyper_parameters, Shapes::ShapeRef.new(shape: ModelCustomizationHyperParameters, location_name: "hyperParameters"))
    GetModelCustomizationJobResponse.add_member(:training_data_config, Shapes::ShapeRef.new(shape: TrainingDataConfig, required: true, location_name: "trainingDataConfig"))
    GetModelCustomizationJobResponse.add_member(:validation_data_config, Shapes::ShapeRef.new(shape: ValidationDataConfig, required: true, location_name: "validationDataConfig"))
    GetModelCustomizationJobResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "outputDataConfig"))
    GetModelCustomizationJobResponse.add_member(:customization_type, Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    GetModelCustomizationJobResponse.add_member(:output_model_kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "outputModelKmsKeyArn"))
    GetModelCustomizationJobResponse.add_member(:training_metrics, Shapes::ShapeRef.new(shape: TrainingMetrics, location_name: "trainingMetrics"))
    GetModelCustomizationJobResponse.add_member(:validation_metrics, Shapes::ShapeRef.new(shape: ValidationMetrics, location_name: "validationMetrics"))
    GetModelCustomizationJobResponse.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    GetModelCustomizationJobResponse.add_member(:customization_config, Shapes::ShapeRef.new(shape: CustomizationConfig, location_name: "customizationConfig"))
    GetModelCustomizationJobResponse.struct_class = Types::GetModelCustomizationJobResponse

    GetModelImportJobRequest.add_member(:job_identifier, Shapes::ShapeRef.new(shape: ModelImportJobIdentifier, required: true, location: "uri", location_name: "jobIdentifier"))
    GetModelImportJobRequest.struct_class = Types::GetModelImportJobRequest

    GetModelImportJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelImportJobArn, location_name: "jobArn"))
    GetModelImportJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "jobName"))
    GetModelImportJobResponse.add_member(:imported_model_name, Shapes::ShapeRef.new(shape: ImportedModelName, location_name: "importedModelName"))
    GetModelImportJobResponse.add_member(:imported_model_arn, Shapes::ShapeRef.new(shape: ImportedModelArn, location_name: "importedModelArn"))
    GetModelImportJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    GetModelImportJobResponse.add_member(:model_data_source, Shapes::ShapeRef.new(shape: ModelDataSource, location_name: "modelDataSource"))
    GetModelImportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ModelImportJobStatus, location_name: "status"))
    GetModelImportJobResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetModelImportJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    GetModelImportJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetModelImportJobResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetModelImportJobResponse.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    GetModelImportJobResponse.add_member(:imported_model_kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "importedModelKmsKeyArn"))
    GetModelImportJobResponse.struct_class = Types::GetModelImportJobResponse

    GetModelInvocationJobRequest.add_member(:job_identifier, Shapes::ShapeRef.new(shape: ModelInvocationJobIdentifier, required: true, location: "uri", location_name: "jobIdentifier"))
    GetModelInvocationJobRequest.struct_class = Types::GetModelInvocationJobRequest

    GetModelInvocationJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelInvocationJobArn, required: true, location_name: "jobArn"))
    GetModelInvocationJobResponse.add_member(:job_name, Shapes::ShapeRef.new(shape: ModelInvocationJobName, location_name: "jobName"))
    GetModelInvocationJobResponse.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    GetModelInvocationJobResponse.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ModelInvocationIdempotencyToken, location_name: "clientRequestToken"))
    GetModelInvocationJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    GetModelInvocationJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ModelInvocationJobStatus, location_name: "status"))
    GetModelInvocationJobResponse.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    GetModelInvocationJobResponse.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "submitTime"))
    GetModelInvocationJobResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetModelInvocationJobResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetModelInvocationJobResponse.add_member(:input_data_config, Shapes::ShapeRef.new(shape: ModelInvocationJobInputDataConfig, required: true, location_name: "inputDataConfig"))
    GetModelInvocationJobResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: ModelInvocationJobOutputDataConfig, required: true, location_name: "outputDataConfig"))
    GetModelInvocationJobResponse.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    GetModelInvocationJobResponse.add_member(:timeout_duration_in_hours, Shapes::ShapeRef.new(shape: ModelInvocationJobTimeoutDurationInHours, location_name: "timeoutDurationInHours"))
    GetModelInvocationJobResponse.add_member(:job_expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "jobExpirationTime"))
    GetModelInvocationJobResponse.struct_class = Types::GetModelInvocationJobResponse

    GetModelInvocationLoggingConfigurationRequest.struct_class = Types::GetModelInvocationLoggingConfigurationRequest

    GetModelInvocationLoggingConfigurationResponse.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, location_name: "loggingConfig"))
    GetModelInvocationLoggingConfigurationResponse.struct_class = Types::GetModelInvocationLoggingConfigurationResponse

    GetPromptRouterRequest.add_member(:prompt_router_arn, Shapes::ShapeRef.new(shape: PromptRouterArn, required: true, location: "uri", location_name: "promptRouterArn"))
    GetPromptRouterRequest.struct_class = Types::GetPromptRouterRequest

    GetPromptRouterResponse.add_member(:prompt_router_name, Shapes::ShapeRef.new(shape: PromptRouterName, required: true, location_name: "promptRouterName"))
    GetPromptRouterResponse.add_member(:routing_criteria, Shapes::ShapeRef.new(shape: RoutingCriteria, required: true, location_name: "routingCriteria"))
    GetPromptRouterResponse.add_member(:description, Shapes::ShapeRef.new(shape: PromptRouterDescription, location_name: "description"))
    GetPromptRouterResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetPromptRouterResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    GetPromptRouterResponse.add_member(:prompt_router_arn, Shapes::ShapeRef.new(shape: PromptRouterArn, required: true, location_name: "promptRouterArn"))
    GetPromptRouterResponse.add_member(:models, Shapes::ShapeRef.new(shape: PromptRouterTargetModels, required: true, location_name: "models"))
    GetPromptRouterResponse.add_member(:fallback_model, Shapes::ShapeRef.new(shape: PromptRouterTargetModel, required: true, location_name: "fallbackModel"))
    GetPromptRouterResponse.add_member(:status, Shapes::ShapeRef.new(shape: PromptRouterStatus, required: true, location_name: "status"))
    GetPromptRouterResponse.add_member(:type, Shapes::ShapeRef.new(shape: PromptRouterType, required: true, location_name: "type"))
    GetPromptRouterResponse.struct_class = Types::GetPromptRouterResponse

    GetProvisionedModelThroughputRequest.add_member(:provisioned_model_id, Shapes::ShapeRef.new(shape: ProvisionedModelId, required: true, location: "uri", location_name: "provisionedModelId"))
    GetProvisionedModelThroughputRequest.struct_class = Types::GetProvisionedModelThroughputRequest

    GetProvisionedModelThroughputResponse.add_member(:model_units, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "modelUnits"))
    GetProvisionedModelThroughputResponse.add_member(:desired_model_units, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "desiredModelUnits"))
    GetProvisionedModelThroughputResponse.add_member(:provisioned_model_name, Shapes::ShapeRef.new(shape: ProvisionedModelName, required: true, location_name: "provisionedModelName"))
    GetProvisionedModelThroughputResponse.add_member(:provisioned_model_arn, Shapes::ShapeRef.new(shape: ProvisionedModelArn, required: true, location_name: "provisionedModelArn"))
    GetProvisionedModelThroughputResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "modelArn"))
    GetProvisionedModelThroughputResponse.add_member(:desired_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "desiredModelArn"))
    GetProvisionedModelThroughputResponse.add_member(:foundation_model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, required: true, location_name: "foundationModelArn"))
    GetProvisionedModelThroughputResponse.add_member(:status, Shapes::ShapeRef.new(shape: ProvisionedModelStatus, required: true, location_name: "status"))
    GetProvisionedModelThroughputResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetProvisionedModelThroughputResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedTime"))
    GetProvisionedModelThroughputResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    GetProvisionedModelThroughputResponse.add_member(:commitment_duration, Shapes::ShapeRef.new(shape: CommitmentDuration, location_name: "commitmentDuration"))
    GetProvisionedModelThroughputResponse.add_member(:commitment_expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "commitmentExpirationTime"))
    GetProvisionedModelThroughputResponse.struct_class = Types::GetProvisionedModelThroughputResponse

    GetUseCaseForModelAccessRequest.struct_class = Types::GetUseCaseForModelAccessRequest

    GetUseCaseForModelAccessResponse.add_member(:form_data, Shapes::ShapeRef.new(shape: AcknowledgementFormDataBody, required: true, location_name: "formData"))
    GetUseCaseForModelAccessResponse.struct_class = Types::GetUseCaseForModelAccessResponse

    GuardrailAutomatedReasoningPolicy.add_member(:policies, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningPolicyPoliciesList, required: true, location_name: "policies"))
    GuardrailAutomatedReasoningPolicy.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: AutomatedReasoningConfidenceFilterThreshold, location_name: "confidenceThreshold"))
    GuardrailAutomatedReasoningPolicy.struct_class = Types::GuardrailAutomatedReasoningPolicy

    GuardrailAutomatedReasoningPolicyConfig.add_member(:policies, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningPolicyConfigPoliciesList, required: true, location_name: "policies"))
    GuardrailAutomatedReasoningPolicyConfig.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: AutomatedReasoningConfidenceFilterThreshold, location_name: "confidenceThreshold"))
    GuardrailAutomatedReasoningPolicyConfig.struct_class = Types::GuardrailAutomatedReasoningPolicyConfig

    GuardrailAutomatedReasoningPolicyConfigPoliciesList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn)

    GuardrailAutomatedReasoningPolicyPoliciesList.member = Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn)

    GuardrailConfiguration.add_member(:guardrail_id, Shapes::ShapeRef.new(shape: GuardrailConfigurationGuardrailIdString, required: true, location_name: "guardrailId"))
    GuardrailConfiguration.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailConfigurationGuardrailVersionString, required: true, location_name: "guardrailVersion"))
    GuardrailConfiguration.struct_class = Types::GuardrailConfiguration

    GuardrailContentFilter.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailContentFilterType, required: true, location_name: "type"))
    GuardrailContentFilter.add_member(:input_strength, Shapes::ShapeRef.new(shape: GuardrailFilterStrength, required: true, location_name: "inputStrength"))
    GuardrailContentFilter.add_member(:output_strength, Shapes::ShapeRef.new(shape: GuardrailFilterStrength, required: true, location_name: "outputStrength"))
    GuardrailContentFilter.add_member(:input_modalities, Shapes::ShapeRef.new(shape: GuardrailModalities, location_name: "inputModalities"))
    GuardrailContentFilter.add_member(:output_modalities, Shapes::ShapeRef.new(shape: GuardrailModalities, location_name: "outputModalities"))
    GuardrailContentFilter.add_member(:input_action, Shapes::ShapeRef.new(shape: GuardrailContentFilterAction, location_name: "inputAction"))
    GuardrailContentFilter.add_member(:output_action, Shapes::ShapeRef.new(shape: GuardrailContentFilterAction, location_name: "outputAction"))
    GuardrailContentFilter.add_member(:input_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "inputEnabled"))
    GuardrailContentFilter.add_member(:output_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "outputEnabled"))
    GuardrailContentFilter.struct_class = Types::GuardrailContentFilter

    GuardrailContentFilterConfig.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailContentFilterType, required: true, location_name: "type"))
    GuardrailContentFilterConfig.add_member(:input_strength, Shapes::ShapeRef.new(shape: GuardrailFilterStrength, required: true, location_name: "inputStrength"))
    GuardrailContentFilterConfig.add_member(:output_strength, Shapes::ShapeRef.new(shape: GuardrailFilterStrength, required: true, location_name: "outputStrength"))
    GuardrailContentFilterConfig.add_member(:input_modalities, Shapes::ShapeRef.new(shape: GuardrailModalities, location_name: "inputModalities"))
    GuardrailContentFilterConfig.add_member(:output_modalities, Shapes::ShapeRef.new(shape: GuardrailModalities, location_name: "outputModalities"))
    GuardrailContentFilterConfig.add_member(:input_action, Shapes::ShapeRef.new(shape: GuardrailContentFilterAction, location_name: "inputAction"))
    GuardrailContentFilterConfig.add_member(:output_action, Shapes::ShapeRef.new(shape: GuardrailContentFilterAction, location_name: "outputAction"))
    GuardrailContentFilterConfig.add_member(:input_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "inputEnabled"))
    GuardrailContentFilterConfig.add_member(:output_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "outputEnabled"))
    GuardrailContentFilterConfig.struct_class = Types::GuardrailContentFilterConfig

    GuardrailContentFilters.member = Shapes::ShapeRef.new(shape: GuardrailContentFilter)

    GuardrailContentFiltersConfig.member = Shapes::ShapeRef.new(shape: GuardrailContentFilterConfig)

    GuardrailContentFiltersTier.add_member(:tier_name, Shapes::ShapeRef.new(shape: GuardrailContentFiltersTierName, required: true, location_name: "tierName"))
    GuardrailContentFiltersTier.struct_class = Types::GuardrailContentFiltersTier

    GuardrailContentFiltersTierConfig.add_member(:tier_name, Shapes::ShapeRef.new(shape: GuardrailContentFiltersTierName, required: true, location_name: "tierName"))
    GuardrailContentFiltersTierConfig.struct_class = Types::GuardrailContentFiltersTierConfig

    GuardrailContentPolicy.add_member(:filters, Shapes::ShapeRef.new(shape: GuardrailContentFilters, location_name: "filters"))
    GuardrailContentPolicy.add_member(:tier, Shapes::ShapeRef.new(shape: GuardrailContentFiltersTier, location_name: "tier"))
    GuardrailContentPolicy.struct_class = Types::GuardrailContentPolicy

    GuardrailContentPolicyConfig.add_member(:filters_config, Shapes::ShapeRef.new(shape: GuardrailContentFiltersConfig, required: true, location_name: "filtersConfig"))
    GuardrailContentPolicyConfig.add_member(:tier_config, Shapes::ShapeRef.new(shape: GuardrailContentFiltersTierConfig, location_name: "tierConfig"))
    GuardrailContentPolicyConfig.struct_class = Types::GuardrailContentPolicyConfig

    GuardrailContextualGroundingFilter.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterType, required: true, location_name: "type"))
    GuardrailContextualGroundingFilter.add_member(:threshold, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterThresholdDouble, required: true, location_name: "threshold"))
    GuardrailContextualGroundingFilter.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingAction, location_name: "action"))
    GuardrailContextualGroundingFilter.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    GuardrailContextualGroundingFilter.struct_class = Types::GuardrailContextualGroundingFilter

    GuardrailContextualGroundingFilterConfig.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterType, required: true, location_name: "type"))
    GuardrailContextualGroundingFilterConfig.add_member(:threshold, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterConfigThresholdDouble, required: true, location_name: "threshold"))
    GuardrailContextualGroundingFilterConfig.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingAction, location_name: "action"))
    GuardrailContextualGroundingFilterConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    GuardrailContextualGroundingFilterConfig.struct_class = Types::GuardrailContextualGroundingFilterConfig

    GuardrailContextualGroundingFilters.member = Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilter)

    GuardrailContextualGroundingFiltersConfig.member = Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterConfig)

    GuardrailContextualGroundingPolicy.add_member(:filters, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilters, required: true, location_name: "filters"))
    GuardrailContextualGroundingPolicy.struct_class = Types::GuardrailContextualGroundingPolicy

    GuardrailContextualGroundingPolicyConfig.add_member(:filters_config, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFiltersConfig, required: true, location_name: "filtersConfig"))
    GuardrailContextualGroundingPolicyConfig.struct_class = Types::GuardrailContextualGroundingPolicyConfig

    GuardrailCrossRegionConfig.add_member(:guardrail_profile_identifier, Shapes::ShapeRef.new(shape: GuardrailCrossRegionGuardrailProfileIdentifier, required: true, location_name: "guardrailProfileIdentifier"))
    GuardrailCrossRegionConfig.struct_class = Types::GuardrailCrossRegionConfig

    GuardrailCrossRegionDetails.add_member(:guardrail_profile_id, Shapes::ShapeRef.new(shape: GuardrailCrossRegionGuardrailProfileId, location_name: "guardrailProfileId"))
    GuardrailCrossRegionDetails.add_member(:guardrail_profile_arn, Shapes::ShapeRef.new(shape: GuardrailCrossRegionGuardrailProfileArn, location_name: "guardrailProfileArn"))
    GuardrailCrossRegionDetails.struct_class = Types::GuardrailCrossRegionDetails

    GuardrailFailureRecommendations.member = Shapes::ShapeRef.new(shape: GuardrailFailureRecommendation)

    GuardrailManagedWordLists.member = Shapes::ShapeRef.new(shape: GuardrailManagedWords)

    GuardrailManagedWordListsConfig.member = Shapes::ShapeRef.new(shape: GuardrailManagedWordsConfig)

    GuardrailManagedWords.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailManagedWordsType, required: true, location_name: "type"))
    GuardrailManagedWords.add_member(:input_action, Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "inputAction"))
    GuardrailManagedWords.add_member(:output_action, Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "outputAction"))
    GuardrailManagedWords.add_member(:input_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "inputEnabled"))
    GuardrailManagedWords.add_member(:output_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "outputEnabled"))
    GuardrailManagedWords.struct_class = Types::GuardrailManagedWords

    GuardrailManagedWordsConfig.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailManagedWordsType, required: true, location_name: "type"))
    GuardrailManagedWordsConfig.add_member(:input_action, Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "inputAction"))
    GuardrailManagedWordsConfig.add_member(:output_action, Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "outputAction"))
    GuardrailManagedWordsConfig.add_member(:input_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "inputEnabled"))
    GuardrailManagedWordsConfig.add_member(:output_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "outputEnabled"))
    GuardrailManagedWordsConfig.struct_class = Types::GuardrailManagedWordsConfig

    GuardrailModalities.member = Shapes::ShapeRef.new(shape: GuardrailModality)

    GuardrailPiiEntities.member = Shapes::ShapeRef.new(shape: GuardrailPiiEntity)

    GuardrailPiiEntitiesConfig.member = Shapes::ShapeRef.new(shape: GuardrailPiiEntityConfig)

    GuardrailPiiEntity.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailPiiEntityType, required: true, location_name: "type"))
    GuardrailPiiEntity.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, required: true, location_name: "action"))
    GuardrailPiiEntity.add_member(:input_action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "inputAction"))
    GuardrailPiiEntity.add_member(:output_action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "outputAction"))
    GuardrailPiiEntity.add_member(:input_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "inputEnabled"))
    GuardrailPiiEntity.add_member(:output_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "outputEnabled"))
    GuardrailPiiEntity.struct_class = Types::GuardrailPiiEntity

    GuardrailPiiEntityConfig.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailPiiEntityType, required: true, location_name: "type"))
    GuardrailPiiEntityConfig.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, required: true, location_name: "action"))
    GuardrailPiiEntityConfig.add_member(:input_action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "inputAction"))
    GuardrailPiiEntityConfig.add_member(:output_action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "outputAction"))
    GuardrailPiiEntityConfig.add_member(:input_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "inputEnabled"))
    GuardrailPiiEntityConfig.add_member(:output_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "outputEnabled"))
    GuardrailPiiEntityConfig.struct_class = Types::GuardrailPiiEntityConfig

    GuardrailRegex.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailRegexNameString, required: true, location_name: "name"))
    GuardrailRegex.add_member(:description, Shapes::ShapeRef.new(shape: GuardrailRegexDescriptionString, location_name: "description"))
    GuardrailRegex.add_member(:pattern, Shapes::ShapeRef.new(shape: GuardrailRegexPatternString, required: true, location_name: "pattern"))
    GuardrailRegex.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, required: true, location_name: "action"))
    GuardrailRegex.add_member(:input_action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "inputAction"))
    GuardrailRegex.add_member(:output_action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "outputAction"))
    GuardrailRegex.add_member(:input_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "inputEnabled"))
    GuardrailRegex.add_member(:output_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "outputEnabled"))
    GuardrailRegex.struct_class = Types::GuardrailRegex

    GuardrailRegexConfig.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailRegexConfigNameString, required: true, location_name: "name"))
    GuardrailRegexConfig.add_member(:description, Shapes::ShapeRef.new(shape: GuardrailRegexConfigDescriptionString, location_name: "description"))
    GuardrailRegexConfig.add_member(:pattern, Shapes::ShapeRef.new(shape: GuardrailRegexConfigPatternString, required: true, location_name: "pattern"))
    GuardrailRegexConfig.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, required: true, location_name: "action"))
    GuardrailRegexConfig.add_member(:input_action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "inputAction"))
    GuardrailRegexConfig.add_member(:output_action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationAction, location_name: "outputAction"))
    GuardrailRegexConfig.add_member(:input_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "inputEnabled"))
    GuardrailRegexConfig.add_member(:output_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "outputEnabled"))
    GuardrailRegexConfig.struct_class = Types::GuardrailRegexConfig

    GuardrailRegexes.member = Shapes::ShapeRef.new(shape: GuardrailRegex)

    GuardrailRegexesConfig.member = Shapes::ShapeRef.new(shape: GuardrailRegexConfig)

    GuardrailSensitiveInformationPolicy.add_member(:pii_entities, Shapes::ShapeRef.new(shape: GuardrailPiiEntities, location_name: "piiEntities"))
    GuardrailSensitiveInformationPolicy.add_member(:regexes, Shapes::ShapeRef.new(shape: GuardrailRegexes, location_name: "regexes"))
    GuardrailSensitiveInformationPolicy.struct_class = Types::GuardrailSensitiveInformationPolicy

    GuardrailSensitiveInformationPolicyConfig.add_member(:pii_entities_config, Shapes::ShapeRef.new(shape: GuardrailPiiEntitiesConfig, location_name: "piiEntitiesConfig"))
    GuardrailSensitiveInformationPolicyConfig.add_member(:regexes_config, Shapes::ShapeRef.new(shape: GuardrailRegexesConfig, location_name: "regexesConfig"))
    GuardrailSensitiveInformationPolicyConfig.struct_class = Types::GuardrailSensitiveInformationPolicyConfig

    GuardrailStatusReasons.member = Shapes::ShapeRef.new(shape: GuardrailStatusReason)

    GuardrailSummaries.member = Shapes::ShapeRef.new(shape: GuardrailSummary)

    GuardrailSummary.add_member(:id, Shapes::ShapeRef.new(shape: GuardrailId, required: true, location_name: "id"))
    GuardrailSummary.add_member(:arn, Shapes::ShapeRef.new(shape: GuardrailArn, required: true, location_name: "arn"))
    GuardrailSummary.add_member(:status, Shapes::ShapeRef.new(shape: GuardrailStatus, required: true, location_name: "status"))
    GuardrailSummary.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailName, required: true, location_name: "name"))
    GuardrailSummary.add_member(:description, Shapes::ShapeRef.new(shape: GuardrailDescription, location_name: "description"))
    GuardrailSummary.add_member(:version, Shapes::ShapeRef.new(shape: GuardrailVersion, required: true, location_name: "version"))
    GuardrailSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GuardrailSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GuardrailSummary.add_member(:cross_region_details, Shapes::ShapeRef.new(shape: GuardrailCrossRegionDetails, location_name: "crossRegionDetails"))
    GuardrailSummary.struct_class = Types::GuardrailSummary

    GuardrailTopic.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailTopicName, required: true, location_name: "name"))
    GuardrailTopic.add_member(:definition, Shapes::ShapeRef.new(shape: GuardrailTopicDefinition, required: true, location_name: "definition"))
    GuardrailTopic.add_member(:examples, Shapes::ShapeRef.new(shape: GuardrailTopicExamples, location_name: "examples"))
    GuardrailTopic.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailTopicType, location_name: "type"))
    GuardrailTopic.add_member(:input_action, Shapes::ShapeRef.new(shape: GuardrailTopicAction, location_name: "inputAction"))
    GuardrailTopic.add_member(:output_action, Shapes::ShapeRef.new(shape: GuardrailTopicAction, location_name: "outputAction"))
    GuardrailTopic.add_member(:input_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "inputEnabled"))
    GuardrailTopic.add_member(:output_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "outputEnabled"))
    GuardrailTopic.struct_class = Types::GuardrailTopic

    GuardrailTopicConfig.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailTopicName, required: true, location_name: "name"))
    GuardrailTopicConfig.add_member(:definition, Shapes::ShapeRef.new(shape: GuardrailTopicDefinition, required: true, location_name: "definition"))
    GuardrailTopicConfig.add_member(:examples, Shapes::ShapeRef.new(shape: GuardrailTopicExamples, location_name: "examples"))
    GuardrailTopicConfig.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailTopicType, required: true, location_name: "type"))
    GuardrailTopicConfig.add_member(:input_action, Shapes::ShapeRef.new(shape: GuardrailTopicAction, location_name: "inputAction"))
    GuardrailTopicConfig.add_member(:output_action, Shapes::ShapeRef.new(shape: GuardrailTopicAction, location_name: "outputAction"))
    GuardrailTopicConfig.add_member(:input_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "inputEnabled"))
    GuardrailTopicConfig.add_member(:output_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "outputEnabled"))
    GuardrailTopicConfig.struct_class = Types::GuardrailTopicConfig

    GuardrailTopicExamples.member = Shapes::ShapeRef.new(shape: GuardrailTopicExample)

    GuardrailTopicPolicy.add_member(:topics, Shapes::ShapeRef.new(shape: GuardrailTopics, required: true, location_name: "topics"))
    GuardrailTopicPolicy.add_member(:tier, Shapes::ShapeRef.new(shape: GuardrailTopicsTier, location_name: "tier"))
    GuardrailTopicPolicy.struct_class = Types::GuardrailTopicPolicy

    GuardrailTopicPolicyConfig.add_member(:topics_config, Shapes::ShapeRef.new(shape: GuardrailTopicsConfig, required: true, location_name: "topicsConfig"))
    GuardrailTopicPolicyConfig.add_member(:tier_config, Shapes::ShapeRef.new(shape: GuardrailTopicsTierConfig, location_name: "tierConfig"))
    GuardrailTopicPolicyConfig.struct_class = Types::GuardrailTopicPolicyConfig

    GuardrailTopics.member = Shapes::ShapeRef.new(shape: GuardrailTopic)

    GuardrailTopicsConfig.member = Shapes::ShapeRef.new(shape: GuardrailTopicConfig)

    GuardrailTopicsTier.add_member(:tier_name, Shapes::ShapeRef.new(shape: GuardrailTopicsTierName, required: true, location_name: "tierName"))
    GuardrailTopicsTier.struct_class = Types::GuardrailTopicsTier

    GuardrailTopicsTierConfig.add_member(:tier_name, Shapes::ShapeRef.new(shape: GuardrailTopicsTierName, required: true, location_name: "tierName"))
    GuardrailTopicsTierConfig.struct_class = Types::GuardrailTopicsTierConfig

    GuardrailWord.add_member(:text, Shapes::ShapeRef.new(shape: GuardrailWordTextString, required: true, location_name: "text"))
    GuardrailWord.add_member(:input_action, Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "inputAction"))
    GuardrailWord.add_member(:output_action, Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "outputAction"))
    GuardrailWord.add_member(:input_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "inputEnabled"))
    GuardrailWord.add_member(:output_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "outputEnabled"))
    GuardrailWord.struct_class = Types::GuardrailWord

    GuardrailWordConfig.add_member(:text, Shapes::ShapeRef.new(shape: GuardrailWordConfigTextString, required: true, location_name: "text"))
    GuardrailWordConfig.add_member(:input_action, Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "inputAction"))
    GuardrailWordConfig.add_member(:output_action, Shapes::ShapeRef.new(shape: GuardrailWordAction, location_name: "outputAction"))
    GuardrailWordConfig.add_member(:input_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "inputEnabled"))
    GuardrailWordConfig.add_member(:output_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "outputEnabled"))
    GuardrailWordConfig.struct_class = Types::GuardrailWordConfig

    GuardrailWordPolicy.add_member(:words, Shapes::ShapeRef.new(shape: GuardrailWords, location_name: "words"))
    GuardrailWordPolicy.add_member(:managed_word_lists, Shapes::ShapeRef.new(shape: GuardrailManagedWordLists, location_name: "managedWordLists"))
    GuardrailWordPolicy.struct_class = Types::GuardrailWordPolicy

    GuardrailWordPolicyConfig.add_member(:words_config, Shapes::ShapeRef.new(shape: GuardrailWordsConfig, location_name: "wordsConfig"))
    GuardrailWordPolicyConfig.add_member(:managed_word_lists_config, Shapes::ShapeRef.new(shape: GuardrailManagedWordListsConfig, location_name: "managedWordListsConfig"))
    GuardrailWordPolicyConfig.struct_class = Types::GuardrailWordPolicyConfig

    GuardrailWords.member = Shapes::ShapeRef.new(shape: GuardrailWord)

    GuardrailWordsConfig.member = Shapes::ShapeRef.new(shape: GuardrailWordConfig)

    HumanEvaluationConfig.add_member(:human_workflow_config, Shapes::ShapeRef.new(shape: HumanWorkflowConfig, location_name: "humanWorkflowConfig"))
    HumanEvaluationConfig.add_member(:custom_metrics, Shapes::ShapeRef.new(shape: HumanEvaluationCustomMetrics, location_name: "customMetrics"))
    HumanEvaluationConfig.add_member(:dataset_metric_configs, Shapes::ShapeRef.new(shape: EvaluationDatasetMetricConfigs, required: true, location_name: "datasetMetricConfigs"))
    HumanEvaluationConfig.struct_class = Types::HumanEvaluationConfig

    HumanEvaluationCustomMetric.add_member(:name, Shapes::ShapeRef.new(shape: EvaluationMetricName, required: true, location_name: "name"))
    HumanEvaluationCustomMetric.add_member(:description, Shapes::ShapeRef.new(shape: EvaluationMetricDescription, location_name: "description"))
    HumanEvaluationCustomMetric.add_member(:rating_method, Shapes::ShapeRef.new(shape: EvaluationRatingMethod, required: true, location_name: "ratingMethod"))
    HumanEvaluationCustomMetric.struct_class = Types::HumanEvaluationCustomMetric

    HumanEvaluationCustomMetrics.member = Shapes::ShapeRef.new(shape: HumanEvaluationCustomMetric)

    HumanWorkflowConfig.add_member(:flow_definition_arn, Shapes::ShapeRef.new(shape: SageMakerFlowDefinitionArn, required: true, location_name: "flowDefinitionArn"))
    HumanWorkflowConfig.add_member(:instructions, Shapes::ShapeRef.new(shape: HumanTaskInstructions, location_name: "instructions"))
    HumanWorkflowConfig.struct_class = Types::HumanWorkflowConfig

    ImplicitFilterConfiguration.add_member(:metadata_attributes, Shapes::ShapeRef.new(shape: MetadataAttributeSchemaList, required: true, location_name: "metadataAttributes"))
    ImplicitFilterConfiguration.add_member(:model_arn, Shapes::ShapeRef.new(shape: BedrockModelArn, required: true, location_name: "modelArn"))
    ImplicitFilterConfiguration.struct_class = Types::ImplicitFilterConfiguration

    ImportedModelSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: ImportedModelArn, required: true, location_name: "modelArn"))
    ImportedModelSummary.add_member(:model_name, Shapes::ShapeRef.new(shape: ImportedModelName, required: true, location_name: "modelName"))
    ImportedModelSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    ImportedModelSummary.add_member(:instruct_supported, Shapes::ShapeRef.new(shape: InstructSupported, location_name: "instructSupported"))
    ImportedModelSummary.add_member(:model_architecture, Shapes::ShapeRef.new(shape: ModelArchitecture, location_name: "modelArchitecture"))
    ImportedModelSummary.struct_class = Types::ImportedModelSummary

    ImportedModelSummaryList.member = Shapes::ShapeRef.new(shape: ImportedModelSummary)

    InferenceProfileModel.add_member(:model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, location_name: "modelArn"))
    InferenceProfileModel.struct_class = Types::InferenceProfileModel

    InferenceProfileModelSource.add_member(:copy_from, Shapes::ShapeRef.new(shape: InferenceProfileModelSourceArn, location_name: "copyFrom"))
    InferenceProfileModelSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    InferenceProfileModelSource.add_member_subclass(:copy_from, Types::InferenceProfileModelSource::CopyFrom)
    InferenceProfileModelSource.add_member_subclass(:unknown, Types::InferenceProfileModelSource::Unknown)
    InferenceProfileModelSource.struct_class = Types::InferenceProfileModelSource

    InferenceProfileModels.member = Shapes::ShapeRef.new(shape: InferenceProfileModel)

    InferenceProfileSummaries.member = Shapes::ShapeRef.new(shape: InferenceProfileSummary)

    InferenceProfileSummary.add_member(:inference_profile_name, Shapes::ShapeRef.new(shape: InferenceProfileName, required: true, location_name: "inferenceProfileName"))
    InferenceProfileSummary.add_member(:description, Shapes::ShapeRef.new(shape: InferenceProfileDescription, location_name: "description"))
    InferenceProfileSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    InferenceProfileSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    InferenceProfileSummary.add_member(:inference_profile_arn, Shapes::ShapeRef.new(shape: InferenceProfileArn, required: true, location_name: "inferenceProfileArn"))
    InferenceProfileSummary.add_member(:models, Shapes::ShapeRef.new(shape: InferenceProfileModels, required: true, location_name: "models"))
    InferenceProfileSummary.add_member(:inference_profile_id, Shapes::ShapeRef.new(shape: InferenceProfileId, required: true, location_name: "inferenceProfileId"))
    InferenceProfileSummary.add_member(:status, Shapes::ShapeRef.new(shape: InferenceProfileStatus, required: true, location_name: "status"))
    InferenceProfileSummary.add_member(:type, Shapes::ShapeRef.new(shape: InferenceProfileType, required: true, location_name: "type"))
    InferenceProfileSummary.struct_class = Types::InferenceProfileSummary

    InferenceTypeList.member = Shapes::ShapeRef.new(shape: InferenceType)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvocationLogSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri"))
    InvocationLogSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    InvocationLogSource.add_member_subclass(:s3_uri, Types::InvocationLogSource::S3Uri)
    InvocationLogSource.add_member_subclass(:unknown, Types::InvocationLogSource::Unknown)
    InvocationLogSource.struct_class = Types::InvocationLogSource

    InvocationLogsConfig.add_member(:use_prompt_response, Shapes::ShapeRef.new(shape: UsePromptResponse, location_name: "usePromptResponse"))
    InvocationLogsConfig.add_member(:invocation_log_source, Shapes::ShapeRef.new(shape: InvocationLogSource, required: true, location_name: "invocationLogSource"))
    InvocationLogsConfig.add_member(:request_metadata_filters, Shapes::ShapeRef.new(shape: RequestMetadataFilters, location_name: "requestMetadataFilters"))
    InvocationLogsConfig.struct_class = Types::InvocationLogsConfig

    KbInferenceConfig.add_member(:text_inference_config, Shapes::ShapeRef.new(shape: TextInferenceConfig, location_name: "textInferenceConfig"))
    KbInferenceConfig.struct_class = Types::KbInferenceConfig

    KnowledgeBaseConfig.add_member(:retrieve_config, Shapes::ShapeRef.new(shape: RetrieveConfig, location_name: "retrieveConfig"))
    KnowledgeBaseConfig.add_member(:retrieve_and_generate_config, Shapes::ShapeRef.new(shape: RetrieveAndGenerateConfiguration, location_name: "retrieveAndGenerateConfig"))
    KnowledgeBaseConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    KnowledgeBaseConfig.add_member_subclass(:retrieve_config, Types::KnowledgeBaseConfig::RetrieveConfig)
    KnowledgeBaseConfig.add_member_subclass(:retrieve_and_generate_config, Types::KnowledgeBaseConfig::RetrieveAndGenerateConfig)
    KnowledgeBaseConfig.add_member_subclass(:unknown, Types::KnowledgeBaseConfig::Unknown)
    KnowledgeBaseConfig.struct_class = Types::KnowledgeBaseConfig

    KnowledgeBaseRetrievalConfiguration.add_member(:vector_search_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseVectorSearchConfiguration, required: true, location_name: "vectorSearchConfiguration"))
    KnowledgeBaseRetrievalConfiguration.struct_class = Types::KnowledgeBaseRetrievalConfiguration

    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: KnowledgeBaseId, required: true, location_name: "knowledgeBaseId"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:model_arn, Shapes::ShapeRef.new(shape: BedrockModelArn, required: true, location_name: "modelArn"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:retrieval_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseRetrievalConfiguration, location_name: "retrievalConfiguration"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:generation_configuration, Shapes::ShapeRef.new(shape: GenerationConfiguration, location_name: "generationConfiguration"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.add_member(:orchestration_configuration, Shapes::ShapeRef.new(shape: OrchestrationConfiguration, location_name: "orchestrationConfiguration"))
    KnowledgeBaseRetrieveAndGenerateConfiguration.struct_class = Types::KnowledgeBaseRetrieveAndGenerateConfiguration

    KnowledgeBaseVectorSearchConfiguration.add_member(:number_of_results, Shapes::ShapeRef.new(shape: KnowledgeBaseVectorSearchConfigurationNumberOfResultsInteger, location_name: "numberOfResults"))
    KnowledgeBaseVectorSearchConfiguration.add_member(:override_search_type, Shapes::ShapeRef.new(shape: SearchType, location_name: "overrideSearchType"))
    KnowledgeBaseVectorSearchConfiguration.add_member(:filter, Shapes::ShapeRef.new(shape: RetrievalFilter, location_name: "filter"))
    KnowledgeBaseVectorSearchConfiguration.add_member(:implicit_filter_configuration, Shapes::ShapeRef.new(shape: ImplicitFilterConfiguration, location_name: "implicitFilterConfiguration"))
    KnowledgeBaseVectorSearchConfiguration.add_member(:reranking_configuration, Shapes::ShapeRef.new(shape: VectorSearchRerankingConfiguration, location_name: "rerankingConfiguration"))
    KnowledgeBaseVectorSearchConfiguration.struct_class = Types::KnowledgeBaseVectorSearchConfiguration

    LegalTerm.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "url"))
    LegalTerm.struct_class = Types::LegalTerm

    ListAutomatedReasoningPoliciesRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, location: "querystring", location_name: "policyArn"))
    ListAutomatedReasoningPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListAutomatedReasoningPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAutomatedReasoningPoliciesRequest.struct_class = Types::ListAutomatedReasoningPoliciesRequest

    ListAutomatedReasoningPoliciesResponse.add_member(:automated_reasoning_policy_summaries, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicySummaries, required: true, location_name: "automatedReasoningPolicySummaries"))
    ListAutomatedReasoningPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAutomatedReasoningPoliciesResponse.struct_class = Types::ListAutomatedReasoningPoliciesResponse

    ListAutomatedReasoningPolicyBuildWorkflowsRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    ListAutomatedReasoningPolicyBuildWorkflowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListAutomatedReasoningPolicyBuildWorkflowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAutomatedReasoningPolicyBuildWorkflowsRequest.struct_class = Types::ListAutomatedReasoningPolicyBuildWorkflowsRequest

    ListAutomatedReasoningPolicyBuildWorkflowsResponse.add_member(:automated_reasoning_policy_build_workflow_summaries, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowSummaries, required: true, location_name: "automatedReasoningPolicyBuildWorkflowSummaries"))
    ListAutomatedReasoningPolicyBuildWorkflowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAutomatedReasoningPolicyBuildWorkflowsResponse.struct_class = Types::ListAutomatedReasoningPolicyBuildWorkflowsResponse

    ListAutomatedReasoningPolicyTestCasesRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    ListAutomatedReasoningPolicyTestCasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListAutomatedReasoningPolicyTestCasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAutomatedReasoningPolicyTestCasesRequest.struct_class = Types::ListAutomatedReasoningPolicyTestCasesRequest

    ListAutomatedReasoningPolicyTestCasesResponse.add_member(:test_cases, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseList, required: true, location_name: "testCases"))
    ListAutomatedReasoningPolicyTestCasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAutomatedReasoningPolicyTestCasesResponse.struct_class = Types::ListAutomatedReasoningPolicyTestCasesResponse

    ListAutomatedReasoningPolicyTestResultsRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    ListAutomatedReasoningPolicyTestResultsRequest.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location: "uri", location_name: "buildWorkflowId"))
    ListAutomatedReasoningPolicyTestResultsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListAutomatedReasoningPolicyTestResultsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAutomatedReasoningPolicyTestResultsRequest.struct_class = Types::ListAutomatedReasoningPolicyTestResultsRequest

    ListAutomatedReasoningPolicyTestResultsResponse.add_member(:test_results, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestList, required: true, location_name: "testResults"))
    ListAutomatedReasoningPolicyTestResultsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAutomatedReasoningPolicyTestResultsResponse.struct_class = Types::ListAutomatedReasoningPolicyTestResultsResponse

    ListCustomModelDeploymentsRequest.add_member(:created_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "createdBefore"))
    ListCustomModelDeploymentsRequest.add_member(:created_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "createdAfter"))
    ListCustomModelDeploymentsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: ModelDeploymentName, location: "querystring", location_name: "nameContains"))
    ListCustomModelDeploymentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCustomModelDeploymentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCustomModelDeploymentsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortModelsBy, location: "querystring", location_name: "sortBy"))
    ListCustomModelDeploymentsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListCustomModelDeploymentsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: CustomModelDeploymentStatus, location: "querystring", location_name: "statusEquals"))
    ListCustomModelDeploymentsRequest.add_member(:model_arn_equals, Shapes::ShapeRef.new(shape: CustomModelArn, location: "querystring", location_name: "modelArnEquals"))
    ListCustomModelDeploymentsRequest.struct_class = Types::ListCustomModelDeploymentsRequest

    ListCustomModelDeploymentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCustomModelDeploymentsResponse.add_member(:model_deployment_summaries, Shapes::ShapeRef.new(shape: CustomModelDeploymentSummaryList, location_name: "modelDeploymentSummaries"))
    ListCustomModelDeploymentsResponse.struct_class = Types::ListCustomModelDeploymentsResponse

    ListCustomModelsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeBefore"))
    ListCustomModelsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeAfter"))
    ListCustomModelsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: CustomModelName, location: "querystring", location_name: "nameContains"))
    ListCustomModelsRequest.add_member(:base_model_arn_equals, Shapes::ShapeRef.new(shape: ModelArn, location: "querystring", location_name: "baseModelArnEquals"))
    ListCustomModelsRequest.add_member(:foundation_model_arn_equals, Shapes::ShapeRef.new(shape: FoundationModelArn, location: "querystring", location_name: "foundationModelArnEquals"))
    ListCustomModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCustomModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListCustomModelsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortModelsBy, location: "querystring", location_name: "sortBy"))
    ListCustomModelsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListCustomModelsRequest.add_member(:is_owned, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "isOwned"))
    ListCustomModelsRequest.add_member(:model_status, Shapes::ShapeRef.new(shape: ModelStatus, location: "querystring", location_name: "modelStatus"))
    ListCustomModelsRequest.struct_class = Types::ListCustomModelsRequest

    ListCustomModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCustomModelsResponse.add_member(:model_summaries, Shapes::ShapeRef.new(shape: CustomModelSummaryList, location_name: "modelSummaries"))
    ListCustomModelsResponse.struct_class = Types::ListCustomModelsResponse

    ListEvaluationJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeAfter"))
    ListEvaluationJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeBefore"))
    ListEvaluationJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: EvaluationJobStatus, location: "querystring", location_name: "statusEquals"))
    ListEvaluationJobsRequest.add_member(:application_type_equals, Shapes::ShapeRef.new(shape: ApplicationType, location: "querystring", location_name: "applicationTypeEquals"))
    ListEvaluationJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: EvaluationJobName, location: "querystring", location_name: "nameContains"))
    ListEvaluationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEvaluationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListEvaluationJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortJobsBy, location: "querystring", location_name: "sortBy"))
    ListEvaluationJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListEvaluationJobsRequest.struct_class = Types::ListEvaluationJobsRequest

    ListEvaluationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEvaluationJobsResponse.add_member(:job_summaries, Shapes::ShapeRef.new(shape: EvaluationSummaries, location_name: "jobSummaries"))
    ListEvaluationJobsResponse.struct_class = Types::ListEvaluationJobsResponse

    ListFoundationModelAgreementOffersRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: BedrockModelId, required: true, location: "uri", location_name: "modelId"))
    ListFoundationModelAgreementOffersRequest.add_member(:offer_type, Shapes::ShapeRef.new(shape: OfferType, location: "querystring", location_name: "offerType"))
    ListFoundationModelAgreementOffersRequest.struct_class = Types::ListFoundationModelAgreementOffersRequest

    ListFoundationModelAgreementOffersResponse.add_member(:model_id, Shapes::ShapeRef.new(shape: BedrockModelId, required: true, location_name: "modelId"))
    ListFoundationModelAgreementOffersResponse.add_member(:offers, Shapes::ShapeRef.new(shape: Offers, required: true, location_name: "offers"))
    ListFoundationModelAgreementOffersResponse.struct_class = Types::ListFoundationModelAgreementOffersResponse

    ListFoundationModelsRequest.add_member(:by_provider, Shapes::ShapeRef.new(shape: Provider, location: "querystring", location_name: "byProvider"))
    ListFoundationModelsRequest.add_member(:by_customization_type, Shapes::ShapeRef.new(shape: ModelCustomization, location: "querystring", location_name: "byCustomizationType"))
    ListFoundationModelsRequest.add_member(:by_output_modality, Shapes::ShapeRef.new(shape: ModelModality, location: "querystring", location_name: "byOutputModality"))
    ListFoundationModelsRequest.add_member(:by_inference_type, Shapes::ShapeRef.new(shape: InferenceType, location: "querystring", location_name: "byInferenceType"))
    ListFoundationModelsRequest.struct_class = Types::ListFoundationModelsRequest

    ListFoundationModelsResponse.add_member(:model_summaries, Shapes::ShapeRef.new(shape: FoundationModelSummaryList, location_name: "modelSummaries"))
    ListFoundationModelsResponse.struct_class = Types::ListFoundationModelsResponse

    ListGuardrailsRequest.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, location: "querystring", location_name: "guardrailIdentifier"))
    ListGuardrailsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListGuardrailsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListGuardrailsRequest.struct_class = Types::ListGuardrailsRequest

    ListGuardrailsResponse.add_member(:guardrails, Shapes::ShapeRef.new(shape: GuardrailSummaries, required: true, location_name: "guardrails"))
    ListGuardrailsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListGuardrailsResponse.struct_class = Types::ListGuardrailsResponse

    ListImportedModelsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeBefore"))
    ListImportedModelsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeAfter"))
    ListImportedModelsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: ImportedModelName, location: "querystring", location_name: "nameContains"))
    ListImportedModelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListImportedModelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListImportedModelsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortModelsBy, location: "querystring", location_name: "sortBy"))
    ListImportedModelsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListImportedModelsRequest.struct_class = Types::ListImportedModelsRequest

    ListImportedModelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImportedModelsResponse.add_member(:model_summaries, Shapes::ShapeRef.new(shape: ImportedModelSummaryList, location_name: "modelSummaries"))
    ListImportedModelsResponse.struct_class = Types::ListImportedModelsResponse

    ListInferenceProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInferenceProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListInferenceProfilesRequest.add_member(:type_equals, Shapes::ShapeRef.new(shape: InferenceProfileType, location: "querystring", location_name: "type"))
    ListInferenceProfilesRequest.struct_class = Types::ListInferenceProfilesRequest

    ListInferenceProfilesResponse.add_member(:inference_profile_summaries, Shapes::ShapeRef.new(shape: InferenceProfileSummaries, location_name: "inferenceProfileSummaries"))
    ListInferenceProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListInferenceProfilesResponse.struct_class = Types::ListInferenceProfilesResponse

    ListMarketplaceModelEndpointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMarketplaceModelEndpointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListMarketplaceModelEndpointsRequest.add_member(:model_source_equals, Shapes::ShapeRef.new(shape: ModelSourceIdentifier, location: "querystring", location_name: "modelSourceIdentifier"))
    ListMarketplaceModelEndpointsRequest.struct_class = Types::ListMarketplaceModelEndpointsRequest

    ListMarketplaceModelEndpointsResponse.add_member(:marketplace_model_endpoints, Shapes::ShapeRef.new(shape: MarketplaceModelEndpointSummaries, location_name: "marketplaceModelEndpoints"))
    ListMarketplaceModelEndpointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListMarketplaceModelEndpointsResponse.struct_class = Types::ListMarketplaceModelEndpointsResponse

    ListModelCopyJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeAfter"))
    ListModelCopyJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeBefore"))
    ListModelCopyJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: ModelCopyJobStatus, location: "querystring", location_name: "statusEquals"))
    ListModelCopyJobsRequest.add_member(:source_account_equals, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "sourceAccountEquals"))
    ListModelCopyJobsRequest.add_member(:source_model_arn_equals, Shapes::ShapeRef.new(shape: ModelArn, location: "querystring", location_name: "sourceModelArnEquals"))
    ListModelCopyJobsRequest.add_member(:target_model_name_contains, Shapes::ShapeRef.new(shape: CustomModelName, location: "querystring", location_name: "outputModelNameContains"))
    ListModelCopyJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListModelCopyJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListModelCopyJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortJobsBy, location: "querystring", location_name: "sortBy"))
    ListModelCopyJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListModelCopyJobsRequest.struct_class = Types::ListModelCopyJobsRequest

    ListModelCopyJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListModelCopyJobsResponse.add_member(:model_copy_job_summaries, Shapes::ShapeRef.new(shape: ModelCopyJobSummaries, location_name: "modelCopyJobSummaries"))
    ListModelCopyJobsResponse.struct_class = Types::ListModelCopyJobsResponse

    ListModelCustomizationJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeAfter"))
    ListModelCustomizationJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeBefore"))
    ListModelCustomizationJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: FineTuningJobStatus, location: "querystring", location_name: "statusEquals"))
    ListModelCustomizationJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: JobName, location: "querystring", location_name: "nameContains"))
    ListModelCustomizationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListModelCustomizationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListModelCustomizationJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortJobsBy, location: "querystring", location_name: "sortBy"))
    ListModelCustomizationJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListModelCustomizationJobsRequest.struct_class = Types::ListModelCustomizationJobsRequest

    ListModelCustomizationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListModelCustomizationJobsResponse.add_member(:model_customization_job_summaries, Shapes::ShapeRef.new(shape: ModelCustomizationJobSummaries, location_name: "modelCustomizationJobSummaries"))
    ListModelCustomizationJobsResponse.struct_class = Types::ListModelCustomizationJobsResponse

    ListModelImportJobsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeAfter"))
    ListModelImportJobsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeBefore"))
    ListModelImportJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: ModelImportJobStatus, location: "querystring", location_name: "statusEquals"))
    ListModelImportJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: JobName, location: "querystring", location_name: "nameContains"))
    ListModelImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListModelImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListModelImportJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortJobsBy, location: "querystring", location_name: "sortBy"))
    ListModelImportJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListModelImportJobsRequest.struct_class = Types::ListModelImportJobsRequest

    ListModelImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListModelImportJobsResponse.add_member(:model_import_job_summaries, Shapes::ShapeRef.new(shape: ModelImportJobSummaries, location_name: "modelImportJobSummaries"))
    ListModelImportJobsResponse.struct_class = Types::ListModelImportJobsResponse

    ListModelInvocationJobsRequest.add_member(:submit_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "submitTimeAfter"))
    ListModelInvocationJobsRequest.add_member(:submit_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "submitTimeBefore"))
    ListModelInvocationJobsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: ModelInvocationJobStatus, location: "querystring", location_name: "statusEquals"))
    ListModelInvocationJobsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: ModelInvocationJobName, location: "querystring", location_name: "nameContains"))
    ListModelInvocationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListModelInvocationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListModelInvocationJobsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortJobsBy, location: "querystring", location_name: "sortBy"))
    ListModelInvocationJobsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListModelInvocationJobsRequest.struct_class = Types::ListModelInvocationJobsRequest

    ListModelInvocationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListModelInvocationJobsResponse.add_member(:invocation_job_summaries, Shapes::ShapeRef.new(shape: ModelInvocationJobSummaries, location_name: "invocationJobSummaries"))
    ListModelInvocationJobsResponse.struct_class = Types::ListModelInvocationJobsResponse

    ListPromptRoutersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPromptRoutersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListPromptRoutersRequest.add_member(:type, Shapes::ShapeRef.new(shape: PromptRouterType, location: "querystring", location_name: "type"))
    ListPromptRoutersRequest.struct_class = Types::ListPromptRoutersRequest

    ListPromptRoutersResponse.add_member(:prompt_router_summaries, Shapes::ShapeRef.new(shape: PromptRouterSummaries, location_name: "promptRouterSummaries"))
    ListPromptRoutersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPromptRoutersResponse.struct_class = Types::ListPromptRoutersResponse

    ListProvisionedModelThroughputsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeAfter"))
    ListProvisionedModelThroughputsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "creationTimeBefore"))
    ListProvisionedModelThroughputsRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: ProvisionedModelStatus, location: "querystring", location_name: "statusEquals"))
    ListProvisionedModelThroughputsRequest.add_member(:model_arn_equals, Shapes::ShapeRef.new(shape: ModelArn, location: "querystring", location_name: "modelArnEquals"))
    ListProvisionedModelThroughputsRequest.add_member(:name_contains, Shapes::ShapeRef.new(shape: ProvisionedModelName, location: "querystring", location_name: "nameContains"))
    ListProvisionedModelThroughputsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProvisionedModelThroughputsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListProvisionedModelThroughputsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortByProvisionedModels, location: "querystring", location_name: "sortBy"))
    ListProvisionedModelThroughputsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListProvisionedModelThroughputsRequest.struct_class = Types::ListProvisionedModelThroughputsRequest

    ListProvisionedModelThroughputsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListProvisionedModelThroughputsResponse.add_member(:provisioned_model_summaries, Shapes::ShapeRef.new(shape: ProvisionedModelSummaries, location_name: "provisionedModelSummaries"))
    ListProvisionedModelThroughputsResponse.struct_class = Types::ListProvisionedModelThroughputsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location_name: "resourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    LoggingConfig.add_member(:cloud_watch_config, Shapes::ShapeRef.new(shape: CloudWatchConfig, location_name: "cloudWatchConfig"))
    LoggingConfig.add_member(:s3_config, Shapes::ShapeRef.new(shape: S3Config, location_name: "s3Config"))
    LoggingConfig.add_member(:text_data_delivery_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "textDataDeliveryEnabled"))
    LoggingConfig.add_member(:image_data_delivery_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "imageDataDeliveryEnabled"))
    LoggingConfig.add_member(:embedding_data_delivery_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "embeddingDataDeliveryEnabled"))
    LoggingConfig.add_member(:video_data_delivery_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "videoDataDeliveryEnabled"))
    LoggingConfig.struct_class = Types::LoggingConfig

    MarketplaceModelEndpoint.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "endpointArn"))
    MarketplaceModelEndpoint.add_member(:model_source_identifier, Shapes::ShapeRef.new(shape: ModelSourceIdentifier, required: true, location_name: "modelSourceIdentifier"))
    MarketplaceModelEndpoint.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    MarketplaceModelEndpoint.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    MarketplaceModelEndpoint.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    MarketplaceModelEndpoint.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    MarketplaceModelEndpoint.add_member(:endpoint_config, Shapes::ShapeRef.new(shape: EndpointConfig, required: true, location_name: "endpointConfig"))
    MarketplaceModelEndpoint.add_member(:endpoint_status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "endpointStatus"))
    MarketplaceModelEndpoint.add_member(:endpoint_status_message, Shapes::ShapeRef.new(shape: String, location_name: "endpointStatusMessage"))
    MarketplaceModelEndpoint.struct_class = Types::MarketplaceModelEndpoint

    MarketplaceModelEndpointSummaries.member = Shapes::ShapeRef.new(shape: MarketplaceModelEndpointSummary)

    MarketplaceModelEndpointSummary.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "endpointArn"))
    MarketplaceModelEndpointSummary.add_member(:model_source_identifier, Shapes::ShapeRef.new(shape: ModelSourceIdentifier, required: true, location_name: "modelSourceIdentifier"))
    MarketplaceModelEndpointSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    MarketplaceModelEndpointSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    MarketplaceModelEndpointSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    MarketplaceModelEndpointSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    MarketplaceModelEndpointSummary.struct_class = Types::MarketplaceModelEndpointSummary

    MetadataAttributeSchema.add_member(:key, Shapes::ShapeRef.new(shape: MetadataAttributeSchemaKeyString, required: true, location_name: "key"))
    MetadataAttributeSchema.add_member(:type, Shapes::ShapeRef.new(shape: AttributeType, required: true, location_name: "type"))
    MetadataAttributeSchema.add_member(:description, Shapes::ShapeRef.new(shape: MetadataAttributeSchemaDescriptionString, required: true, location_name: "description"))
    MetadataAttributeSchema.struct_class = Types::MetadataAttributeSchema

    MetadataAttributeSchemaList.member = Shapes::ShapeRef.new(shape: MetadataAttributeSchema)

    MetadataConfigurationForReranking.add_member(:selection_mode, Shapes::ShapeRef.new(shape: RerankingMetadataSelectionMode, required: true, location_name: "selectionMode"))
    MetadataConfigurationForReranking.add_member(:selective_mode_configuration, Shapes::ShapeRef.new(shape: RerankingMetadataSelectiveModeConfiguration, location_name: "selectiveModeConfiguration"))
    MetadataConfigurationForReranking.struct_class = Types::MetadataConfigurationForReranking

    ModelCopyJobSummaries.member = Shapes::ShapeRef.new(shape: ModelCopyJobSummary)

    ModelCopyJobSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCopyJobArn, required: true, location_name: "jobArn"))
    ModelCopyJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: ModelCopyJobStatus, required: true, location_name: "status"))
    ModelCopyJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    ModelCopyJobSummary.add_member(:target_model_arn, Shapes::ShapeRef.new(shape: CustomModelArn, required: true, location_name: "targetModelArn"))
    ModelCopyJobSummary.add_member(:target_model_name, Shapes::ShapeRef.new(shape: CustomModelName, location_name: "targetModelName"))
    ModelCopyJobSummary.add_member(:source_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "sourceAccountId"))
    ModelCopyJobSummary.add_member(:source_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "sourceModelArn"))
    ModelCopyJobSummary.add_member(:target_model_kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "targetModelKmsKeyArn"))
    ModelCopyJobSummary.add_member(:target_model_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "targetModelTags"))
    ModelCopyJobSummary.add_member(:failure_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureMessage"))
    ModelCopyJobSummary.add_member(:source_model_name, Shapes::ShapeRef.new(shape: CustomModelName, location_name: "sourceModelName"))
    ModelCopyJobSummary.struct_class = Types::ModelCopyJobSummary

    ModelCustomizationHyperParameters.key = Shapes::ShapeRef.new(shape: String)
    ModelCustomizationHyperParameters.value = Shapes::ShapeRef.new(shape: String)

    ModelCustomizationJobSummaries.member = Shapes::ShapeRef.new(shape: ModelCustomizationJobSummary)

    ModelCustomizationJobSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelCustomizationJobArn, required: true, location_name: "jobArn"))
    ModelCustomizationJobSummary.add_member(:base_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "baseModelArn"))
    ModelCustomizationJobSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "jobName"))
    ModelCustomizationJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: ModelCustomizationJobStatus, required: true, location_name: "status"))
    ModelCustomizationJobSummary.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "statusDetails"))
    ModelCustomizationJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    ModelCustomizationJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    ModelCustomizationJobSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    ModelCustomizationJobSummary.add_member(:custom_model_arn, Shapes::ShapeRef.new(shape: CustomModelArn, location_name: "customModelArn"))
    ModelCustomizationJobSummary.add_member(:custom_model_name, Shapes::ShapeRef.new(shape: CustomModelName, location_name: "customModelName"))
    ModelCustomizationJobSummary.add_member(:customization_type, Shapes::ShapeRef.new(shape: CustomizationType, location_name: "customizationType"))
    ModelCustomizationJobSummary.struct_class = Types::ModelCustomizationJobSummary

    ModelCustomizationList.member = Shapes::ShapeRef.new(shape: ModelCustomization)

    ModelDataSource.add_member(:s3_data_source, Shapes::ShapeRef.new(shape: S3DataSource, location_name: "s3DataSource"))
    ModelDataSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ModelDataSource.add_member_subclass(:s3_data_source, Types::ModelDataSource::S3DataSource)
    ModelDataSource.add_member_subclass(:unknown, Types::ModelDataSource::Unknown)
    ModelDataSource.struct_class = Types::ModelDataSource

    ModelImportJobSummaries.member = Shapes::ShapeRef.new(shape: ModelImportJobSummary)

    ModelImportJobSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelImportJobArn, required: true, location_name: "jobArn"))
    ModelImportJobSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, required: true, location_name: "jobName"))
    ModelImportJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: ModelImportJobStatus, required: true, location_name: "status"))
    ModelImportJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    ModelImportJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    ModelImportJobSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    ModelImportJobSummary.add_member(:imported_model_arn, Shapes::ShapeRef.new(shape: ImportedModelArn, location_name: "importedModelArn"))
    ModelImportJobSummary.add_member(:imported_model_name, Shapes::ShapeRef.new(shape: ImportedModelName, location_name: "importedModelName"))
    ModelImportJobSummary.struct_class = Types::ModelImportJobSummary

    ModelInvocationJobInputDataConfig.add_member(:s3_input_data_config, Shapes::ShapeRef.new(shape: ModelInvocationJobS3InputDataConfig, location_name: "s3InputDataConfig"))
    ModelInvocationJobInputDataConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ModelInvocationJobInputDataConfig.add_member_subclass(:s3_input_data_config, Types::ModelInvocationJobInputDataConfig::S3InputDataConfig)
    ModelInvocationJobInputDataConfig.add_member_subclass(:unknown, Types::ModelInvocationJobInputDataConfig::Unknown)
    ModelInvocationJobInputDataConfig.struct_class = Types::ModelInvocationJobInputDataConfig

    ModelInvocationJobOutputDataConfig.add_member(:s3_output_data_config, Shapes::ShapeRef.new(shape: ModelInvocationJobS3OutputDataConfig, location_name: "s3OutputDataConfig"))
    ModelInvocationJobOutputDataConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ModelInvocationJobOutputDataConfig.add_member_subclass(:s3_output_data_config, Types::ModelInvocationJobOutputDataConfig::S3OutputDataConfig)
    ModelInvocationJobOutputDataConfig.add_member_subclass(:unknown, Types::ModelInvocationJobOutputDataConfig::Unknown)
    ModelInvocationJobOutputDataConfig.struct_class = Types::ModelInvocationJobOutputDataConfig

    ModelInvocationJobS3InputDataConfig.add_member(:s3_input_format, Shapes::ShapeRef.new(shape: S3InputFormat, location_name: "s3InputFormat"))
    ModelInvocationJobS3InputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    ModelInvocationJobS3InputDataConfig.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "s3BucketOwner"))
    ModelInvocationJobS3InputDataConfig.struct_class = Types::ModelInvocationJobS3InputDataConfig

    ModelInvocationJobS3OutputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    ModelInvocationJobS3OutputDataConfig.add_member(:s3_encryption_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "s3EncryptionKeyId"))
    ModelInvocationJobS3OutputDataConfig.add_member(:s3_bucket_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "s3BucketOwner"))
    ModelInvocationJobS3OutputDataConfig.struct_class = Types::ModelInvocationJobS3OutputDataConfig

    ModelInvocationJobSummaries.member = Shapes::ShapeRef.new(shape: ModelInvocationJobSummary)

    ModelInvocationJobSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: ModelInvocationJobArn, required: true, location_name: "jobArn"))
    ModelInvocationJobSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: ModelInvocationJobName, required: true, location_name: "jobName"))
    ModelInvocationJobSummary.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    ModelInvocationJobSummary.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ModelInvocationIdempotencyToken, location_name: "clientRequestToken"))
    ModelInvocationJobSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    ModelInvocationJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: ModelInvocationJobStatus, location_name: "status"))
    ModelInvocationJobSummary.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    ModelInvocationJobSummary.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "submitTime"))
    ModelInvocationJobSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    ModelInvocationJobSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    ModelInvocationJobSummary.add_member(:input_data_config, Shapes::ShapeRef.new(shape: ModelInvocationJobInputDataConfig, required: true, location_name: "inputDataConfig"))
    ModelInvocationJobSummary.add_member(:output_data_config, Shapes::ShapeRef.new(shape: ModelInvocationJobOutputDataConfig, required: true, location_name: "outputDataConfig"))
    ModelInvocationJobSummary.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    ModelInvocationJobSummary.add_member(:timeout_duration_in_hours, Shapes::ShapeRef.new(shape: ModelInvocationJobTimeoutDurationInHours, location_name: "timeoutDurationInHours"))
    ModelInvocationJobSummary.add_member(:job_expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "jobExpirationTime"))
    ModelInvocationJobSummary.struct_class = Types::ModelInvocationJobSummary

    ModelModalityList.member = Shapes::ShapeRef.new(shape: ModelModality)

    Offer.add_member(:offer_id, Shapes::ShapeRef.new(shape: OfferId, location_name: "offerId"))
    Offer.add_member(:offer_token, Shapes::ShapeRef.new(shape: OfferToken, required: true, location_name: "offerToken"))
    Offer.add_member(:term_details, Shapes::ShapeRef.new(shape: TermDetails, required: true, location_name: "termDetails"))
    Offer.struct_class = Types::Offer

    Offers.member = Shapes::ShapeRef.new(shape: Offer)

    OrchestrationConfiguration.add_member(:query_transformation_configuration, Shapes::ShapeRef.new(shape: QueryTransformationConfiguration, required: true, location_name: "queryTransformationConfiguration"))
    OrchestrationConfiguration.struct_class = Types::OrchestrationConfiguration

    OutputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    PerformanceConfiguration.add_member(:latency, Shapes::ShapeRef.new(shape: PerformanceConfigLatency, location_name: "latency"))
    PerformanceConfiguration.struct_class = Types::PerformanceConfiguration

    PricingTerm.add_member(:rate_card, Shapes::ShapeRef.new(shape: RateCard, required: true, location_name: "rateCard"))
    PricingTerm.struct_class = Types::PricingTerm

    PromptRouterSummaries.member = Shapes::ShapeRef.new(shape: PromptRouterSummary)

    PromptRouterSummary.add_member(:prompt_router_name, Shapes::ShapeRef.new(shape: PromptRouterName, required: true, location_name: "promptRouterName"))
    PromptRouterSummary.add_member(:routing_criteria, Shapes::ShapeRef.new(shape: RoutingCriteria, required: true, location_name: "routingCriteria"))
    PromptRouterSummary.add_member(:description, Shapes::ShapeRef.new(shape: PromptRouterDescription, location_name: "description"))
    PromptRouterSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    PromptRouterSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    PromptRouterSummary.add_member(:prompt_router_arn, Shapes::ShapeRef.new(shape: PromptRouterArn, required: true, location_name: "promptRouterArn"))
    PromptRouterSummary.add_member(:models, Shapes::ShapeRef.new(shape: PromptRouterTargetModels, required: true, location_name: "models"))
    PromptRouterSummary.add_member(:fallback_model, Shapes::ShapeRef.new(shape: PromptRouterTargetModel, required: true, location_name: "fallbackModel"))
    PromptRouterSummary.add_member(:status, Shapes::ShapeRef.new(shape: PromptRouterStatus, required: true, location_name: "status"))
    PromptRouterSummary.add_member(:type, Shapes::ShapeRef.new(shape: PromptRouterType, required: true, location_name: "type"))
    PromptRouterSummary.struct_class = Types::PromptRouterSummary

    PromptRouterTargetModel.add_member(:model_arn, Shapes::ShapeRef.new(shape: PromptRouterTargetModelArn, required: true, location_name: "modelArn"))
    PromptRouterTargetModel.struct_class = Types::PromptRouterTargetModel

    PromptRouterTargetModels.member = Shapes::ShapeRef.new(shape: PromptRouterTargetModel)

    PromptTemplate.add_member(:text_prompt_template, Shapes::ShapeRef.new(shape: TextPromptTemplate, location_name: "textPromptTemplate"))
    PromptTemplate.struct_class = Types::PromptTemplate

    ProvisionedModelSummaries.member = Shapes::ShapeRef.new(shape: ProvisionedModelSummary)

    ProvisionedModelSummary.add_member(:provisioned_model_name, Shapes::ShapeRef.new(shape: ProvisionedModelName, required: true, location_name: "provisionedModelName"))
    ProvisionedModelSummary.add_member(:provisioned_model_arn, Shapes::ShapeRef.new(shape: ProvisionedModelArn, required: true, location_name: "provisionedModelArn"))
    ProvisionedModelSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "modelArn"))
    ProvisionedModelSummary.add_member(:desired_model_arn, Shapes::ShapeRef.new(shape: ModelArn, required: true, location_name: "desiredModelArn"))
    ProvisionedModelSummary.add_member(:foundation_model_arn, Shapes::ShapeRef.new(shape: FoundationModelArn, required: true, location_name: "foundationModelArn"))
    ProvisionedModelSummary.add_member(:model_units, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "modelUnits"))
    ProvisionedModelSummary.add_member(:desired_model_units, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "desiredModelUnits"))
    ProvisionedModelSummary.add_member(:status, Shapes::ShapeRef.new(shape: ProvisionedModelStatus, required: true, location_name: "status"))
    ProvisionedModelSummary.add_member(:commitment_duration, Shapes::ShapeRef.new(shape: CommitmentDuration, location_name: "commitmentDuration"))
    ProvisionedModelSummary.add_member(:commitment_expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "commitmentExpirationTime"))
    ProvisionedModelSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    ProvisionedModelSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedTime"))
    ProvisionedModelSummary.struct_class = Types::ProvisionedModelSummary

    PutModelInvocationLoggingConfigurationRequest.add_member(:logging_config, Shapes::ShapeRef.new(shape: LoggingConfig, required: true, location_name: "loggingConfig"))
    PutModelInvocationLoggingConfigurationRequest.struct_class = Types::PutModelInvocationLoggingConfigurationRequest

    PutModelInvocationLoggingConfigurationResponse.struct_class = Types::PutModelInvocationLoggingConfigurationResponse

    PutUseCaseForModelAccessRequest.add_member(:form_data, Shapes::ShapeRef.new(shape: AcknowledgementFormDataBody, required: true, location_name: "formData"))
    PutUseCaseForModelAccessRequest.struct_class = Types::PutUseCaseForModelAccessRequest

    PutUseCaseForModelAccessResponse.struct_class = Types::PutUseCaseForModelAccessResponse

    QueryTransformationConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: QueryTransformationType, required: true, location_name: "type"))
    QueryTransformationConfiguration.struct_class = Types::QueryTransformationConfiguration

    RAGConfig.add_member(:knowledge_base_config, Shapes::ShapeRef.new(shape: KnowledgeBaseConfig, location_name: "knowledgeBaseConfig"))
    RAGConfig.add_member(:precomputed_rag_source_config, Shapes::ShapeRef.new(shape: EvaluationPrecomputedRagSourceConfig, location_name: "precomputedRagSourceConfig"))
    RAGConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RAGConfig.add_member_subclass(:knowledge_base_config, Types::RAGConfig::KnowledgeBaseConfig)
    RAGConfig.add_member_subclass(:precomputed_rag_source_config, Types::RAGConfig::PrecomputedRagSourceConfig)
    RAGConfig.add_member_subclass(:unknown, Types::RAGConfig::Unknown)
    RAGConfig.struct_class = Types::RAGConfig

    RAGStopSequences.member = Shapes::ShapeRef.new(shape: RAGStopSequencesMemberString)

    RagConfigs.member = Shapes::ShapeRef.new(shape: RAGConfig)

    RateCard.member = Shapes::ShapeRef.new(shape: DimensionalPriceRate)

    RatingScale.member = Shapes::ShapeRef.new(shape: RatingScaleItem)

    RatingScaleItem.add_member(:definition, Shapes::ShapeRef.new(shape: RatingScaleItemDefinition, required: true, location_name: "definition"))
    RatingScaleItem.add_member(:value, Shapes::ShapeRef.new(shape: RatingScaleItemValue, required: true, location_name: "value"))
    RatingScaleItem.struct_class = Types::RatingScaleItem

    RatingScaleItemValue.add_member(:string_value, Shapes::ShapeRef.new(shape: RatingScaleItemValueStringValueString, location_name: "stringValue"))
    RatingScaleItemValue.add_member(:float_value, Shapes::ShapeRef.new(shape: Float, location_name: "floatValue"))
    RatingScaleItemValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RatingScaleItemValue.add_member_subclass(:string_value, Types::RatingScaleItemValue::StringValue)
    RatingScaleItemValue.add_member_subclass(:float_value, Types::RatingScaleItemValue::FloatValue)
    RatingScaleItemValue.add_member_subclass(:unknown, Types::RatingScaleItemValue::Unknown)
    RatingScaleItemValue.struct_class = Types::RatingScaleItemValue

    RegisterMarketplaceModelEndpointRequest.add_member(:endpoint_identifier, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "endpointIdentifier"))
    RegisterMarketplaceModelEndpointRequest.add_member(:model_source_identifier, Shapes::ShapeRef.new(shape: ModelSourceIdentifier, required: true, location_name: "modelSourceIdentifier"))
    RegisterMarketplaceModelEndpointRequest.struct_class = Types::RegisterMarketplaceModelEndpointRequest

    RegisterMarketplaceModelEndpointResponse.add_member(:marketplace_model_endpoint, Shapes::ShapeRef.new(shape: MarketplaceModelEndpoint, required: true, location_name: "marketplaceModelEndpoint"))
    RegisterMarketplaceModelEndpointResponse.struct_class = Types::RegisterMarketplaceModelEndpointResponse

    RequestMetadataBaseFilters.add_member(:equals, Shapes::ShapeRef.new(shape: RequestMetadataMap, location_name: "equals"))
    RequestMetadataBaseFilters.add_member(:not_equals, Shapes::ShapeRef.new(shape: RequestMetadataMap, location_name: "notEquals"))
    RequestMetadataBaseFilters.struct_class = Types::RequestMetadataBaseFilters

    RequestMetadataFilters.add_member(:equals, Shapes::ShapeRef.new(shape: RequestMetadataMap, location_name: "equals"))
    RequestMetadataFilters.add_member(:not_equals, Shapes::ShapeRef.new(shape: RequestMetadataMap, location_name: "notEquals"))
    RequestMetadataFilters.add_member(:and_all, Shapes::ShapeRef.new(shape: RequestMetadataFiltersList, location_name: "andAll"))
    RequestMetadataFilters.add_member(:or_all, Shapes::ShapeRef.new(shape: RequestMetadataFiltersList, location_name: "orAll"))
    RequestMetadataFilters.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RequestMetadataFilters.add_member_subclass(:equals, Types::RequestMetadataFilters::Equals)
    RequestMetadataFilters.add_member_subclass(:not_equals, Types::RequestMetadataFilters::NotEquals)
    RequestMetadataFilters.add_member_subclass(:and_all, Types::RequestMetadataFilters::AndAll)
    RequestMetadataFilters.add_member_subclass(:or_all, Types::RequestMetadataFilters::OrAll)
    RequestMetadataFilters.add_member_subclass(:unknown, Types::RequestMetadataFilters::Unknown)
    RequestMetadataFilters.struct_class = Types::RequestMetadataFilters

    RequestMetadataFiltersList.member = Shapes::ShapeRef.new(shape: RequestMetadataBaseFilters)

    RequestMetadataMap.key = Shapes::ShapeRef.new(shape: RequestMetadataMapKeyString)
    RequestMetadataMap.value = Shapes::ShapeRef.new(shape: RequestMetadataMapValueString)

    RerankingMetadataSelectiveModeConfiguration.add_member(:fields_to_include, Shapes::ShapeRef.new(shape: FieldsForReranking, location_name: "fieldsToInclude"))
    RerankingMetadataSelectiveModeConfiguration.add_member(:fields_to_exclude, Shapes::ShapeRef.new(shape: FieldsForReranking, location_name: "fieldsToExclude"))
    RerankingMetadataSelectiveModeConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RerankingMetadataSelectiveModeConfiguration.add_member_subclass(:fields_to_include, Types::RerankingMetadataSelectiveModeConfiguration::FieldsToInclude)
    RerankingMetadataSelectiveModeConfiguration.add_member_subclass(:fields_to_exclude, Types::RerankingMetadataSelectiveModeConfiguration::FieldsToExclude)
    RerankingMetadataSelectiveModeConfiguration.add_member_subclass(:unknown, Types::RerankingMetadataSelectiveModeConfiguration::Unknown)
    RerankingMetadataSelectiveModeConfiguration.struct_class = Types::RerankingMetadataSelectiveModeConfiguration

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RetrievalFilter.add_member(:equals, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "equals"))
    RetrievalFilter.add_member(:not_equals, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "notEquals"))
    RetrievalFilter.add_member(:greater_than, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "greaterThan"))
    RetrievalFilter.add_member(:greater_than_or_equals, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "greaterThanOrEquals"))
    RetrievalFilter.add_member(:less_than, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "lessThan"))
    RetrievalFilter.add_member(:less_than_or_equals, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "lessThanOrEquals"))
    RetrievalFilter.add_member(:in, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "in"))
    RetrievalFilter.add_member(:not_in, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "notIn"))
    RetrievalFilter.add_member(:starts_with, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "startsWith"))
    RetrievalFilter.add_member(:list_contains, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "listContains"))
    RetrievalFilter.add_member(:string_contains, Shapes::ShapeRef.new(shape: FilterAttribute, location_name: "stringContains"))
    RetrievalFilter.add_member(:and_all, Shapes::ShapeRef.new(shape: RetrievalFilterList, location_name: "andAll"))
    RetrievalFilter.add_member(:or_all, Shapes::ShapeRef.new(shape: RetrievalFilterList, location_name: "orAll"))
    RetrievalFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RetrievalFilter.add_member_subclass(:equals, Types::RetrievalFilter::Equals)
    RetrievalFilter.add_member_subclass(:not_equals, Types::RetrievalFilter::NotEquals)
    RetrievalFilter.add_member_subclass(:greater_than, Types::RetrievalFilter::GreaterThan)
    RetrievalFilter.add_member_subclass(:greater_than_or_equals, Types::RetrievalFilter::GreaterThanOrEquals)
    RetrievalFilter.add_member_subclass(:less_than, Types::RetrievalFilter::LessThan)
    RetrievalFilter.add_member_subclass(:less_than_or_equals, Types::RetrievalFilter::LessThanOrEquals)
    RetrievalFilter.add_member_subclass(:in, Types::RetrievalFilter::In)
    RetrievalFilter.add_member_subclass(:not_in, Types::RetrievalFilter::NotIn)
    RetrievalFilter.add_member_subclass(:starts_with, Types::RetrievalFilter::StartsWith)
    RetrievalFilter.add_member_subclass(:list_contains, Types::RetrievalFilter::ListContains)
    RetrievalFilter.add_member_subclass(:string_contains, Types::RetrievalFilter::StringContains)
    RetrievalFilter.add_member_subclass(:and_all, Types::RetrievalFilter::AndAll)
    RetrievalFilter.add_member_subclass(:or_all, Types::RetrievalFilter::OrAll)
    RetrievalFilter.add_member_subclass(:unknown, Types::RetrievalFilter::Unknown)
    RetrievalFilter.struct_class = Types::RetrievalFilter

    RetrievalFilterList.member = Shapes::ShapeRef.new(shape: RetrievalFilter)

    RetrieveAndGenerateConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: RetrieveAndGenerateType, required: true, location_name: "type"))
    RetrieveAndGenerateConfiguration.add_member(:knowledge_base_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseRetrieveAndGenerateConfiguration, location_name: "knowledgeBaseConfiguration"))
    RetrieveAndGenerateConfiguration.add_member(:external_sources_configuration, Shapes::ShapeRef.new(shape: ExternalSourcesRetrieveAndGenerateConfiguration, location_name: "externalSourcesConfiguration"))
    RetrieveAndGenerateConfiguration.struct_class = Types::RetrieveAndGenerateConfiguration

    RetrieveConfig.add_member(:knowledge_base_id, Shapes::ShapeRef.new(shape: KnowledgeBaseId, required: true, location_name: "knowledgeBaseId"))
    RetrieveConfig.add_member(:knowledge_base_retrieval_configuration, Shapes::ShapeRef.new(shape: KnowledgeBaseRetrievalConfiguration, required: true, location_name: "knowledgeBaseRetrievalConfiguration"))
    RetrieveConfig.struct_class = Types::RetrieveConfig

    RoutingCriteria.add_member(:response_quality_difference, Shapes::ShapeRef.new(shape: RoutingCriteriaResponseQualityDifferenceDouble, required: true, location_name: "responseQualityDifference"))
    RoutingCriteria.struct_class = Types::RoutingCriteria

    S3Config.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    S3Config.add_member(:key_prefix, Shapes::ShapeRef.new(shape: KeyPrefix, location_name: "keyPrefix"))
    S3Config.struct_class = Types::S3Config

    S3DataSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    S3DataSource.struct_class = Types::S3DataSource

    S3ObjectDoc.add_member(:uri, Shapes::ShapeRef.new(shape: kBS3Uri, required: true, location_name: "uri"))
    S3ObjectDoc.struct_class = Types::S3ObjectDoc

    SageMakerEndpoint.add_member(:initial_instance_count, Shapes::ShapeRef.new(shape: InstanceCount, required: true, location_name: "initialInstanceCount"))
    SageMakerEndpoint.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "instanceType"))
    SageMakerEndpoint.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "executionRole"))
    SageMakerEndpoint.add_member(:kms_encryption_key, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsEncryptionKey"))
    SageMakerEndpoint.add_member(:vpc, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpc"))
    SageMakerEndpoint.struct_class = Types::SageMakerEndpoint

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    StartAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:build_workflow_type, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowType, required: true, location: "uri", location_name: "buildWorkflowType"))
    StartAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "header", location_name: "x-amz-client-token", metadata: {"idempotencyToken" => true}))
    StartAutomatedReasoningPolicyBuildWorkflowRequest.add_member(:source_content, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowSource, required: true, location_name: "sourceContent"))
    StartAutomatedReasoningPolicyBuildWorkflowRequest.struct_class = Types::StartAutomatedReasoningPolicyBuildWorkflowRequest
    StartAutomatedReasoningPolicyBuildWorkflowRequest[:payload] = :source_content
    StartAutomatedReasoningPolicyBuildWorkflowRequest[:payload_member] = StartAutomatedReasoningPolicyBuildWorkflowRequest.member(:source_content)

    StartAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    StartAutomatedReasoningPolicyBuildWorkflowResponse.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location_name: "buildWorkflowId"))
    StartAutomatedReasoningPolicyBuildWorkflowResponse.struct_class = Types::StartAutomatedReasoningPolicyBuildWorkflowResponse

    StartAutomatedReasoningPolicyTestWorkflowRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    StartAutomatedReasoningPolicyTestWorkflowRequest.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location: "uri", location_name: "buildWorkflowId"))
    StartAutomatedReasoningPolicyTestWorkflowRequest.add_member(:test_case_ids, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseIdList, location_name: "testCaseIds"))
    StartAutomatedReasoningPolicyTestWorkflowRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    StartAutomatedReasoningPolicyTestWorkflowRequest.struct_class = Types::StartAutomatedReasoningPolicyTestWorkflowRequest

    StartAutomatedReasoningPolicyTestWorkflowResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    StartAutomatedReasoningPolicyTestWorkflowResponse.struct_class = Types::StartAutomatedReasoningPolicyTestWorkflowResponse

    StatusDetails.add_member(:validation_details, Shapes::ShapeRef.new(shape: ValidationDetails, location_name: "validationDetails"))
    StatusDetails.add_member(:data_processing_details, Shapes::ShapeRef.new(shape: DataProcessingDetails, location_name: "dataProcessingDetails"))
    StatusDetails.add_member(:training_details, Shapes::ShapeRef.new(shape: TrainingDetails, location_name: "trainingDetails"))
    StatusDetails.struct_class = Types::StatusDetails

    StopEvaluationJobRequest.add_member(:job_identifier, Shapes::ShapeRef.new(shape: EvaluationJobIdentifier, required: true, location: "uri", location_name: "jobIdentifier"))
    StopEvaluationJobRequest.struct_class = Types::StopEvaluationJobRequest

    StopEvaluationJobResponse.struct_class = Types::StopEvaluationJobResponse

    StopModelCustomizationJobRequest.add_member(:job_identifier, Shapes::ShapeRef.new(shape: ModelCustomizationJobIdentifier, required: true, location: "uri", location_name: "jobIdentifier"))
    StopModelCustomizationJobRequest.struct_class = Types::StopModelCustomizationJobRequest

    StopModelCustomizationJobResponse.struct_class = Types::StopModelCustomizationJobResponse

    StopModelInvocationJobRequest.add_member(:job_identifier, Shapes::ShapeRef.new(shape: ModelInvocationJobIdentifier, required: true, location: "uri", location_name: "jobIdentifier"))
    StopModelInvocationJobRequest.struct_class = Types::StopModelInvocationJobRequest

    StopModelInvocationJobResponse.struct_class = Types::StopModelInvocationJobResponse

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    SupportTerm.add_member(:refund_policy_description, Shapes::ShapeRef.new(shape: String, location_name: "refundPolicyDescription"))
    SupportTerm.struct_class = Types::SupportTerm

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location_name: "resourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TeacherModelConfig.add_member(:teacher_model_identifier, Shapes::ShapeRef.new(shape: TeacherModelIdentifier, required: true, location_name: "teacherModelIdentifier"))
    TeacherModelConfig.add_member(:max_response_length_for_inference, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResponseLengthForInference"))
    TeacherModelConfig.struct_class = Types::TeacherModelConfig

    TermDetails.add_member(:usage_based_pricing_term, Shapes::ShapeRef.new(shape: PricingTerm, required: true, location_name: "usageBasedPricingTerm"))
    TermDetails.add_member(:legal_term, Shapes::ShapeRef.new(shape: LegalTerm, required: true, location_name: "legalTerm"))
    TermDetails.add_member(:support_term, Shapes::ShapeRef.new(shape: SupportTerm, required: true, location_name: "supportTerm"))
    TermDetails.add_member(:validity_term, Shapes::ShapeRef.new(shape: ValidityTerm, location_name: "validityTerm"))
    TermDetails.struct_class = Types::TermDetails

    TextInferenceConfig.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    TextInferenceConfig.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    TextInferenceConfig.add_member(:max_tokens, Shapes::ShapeRef.new(shape: MaxTokens, location_name: "maxTokens"))
    TextInferenceConfig.add_member(:stop_sequences, Shapes::ShapeRef.new(shape: RAGStopSequences, location_name: "stopSequences"))
    TextInferenceConfig.struct_class = Types::TextInferenceConfig

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: TaggableResourcesArn, location_name: "resourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    TrainingDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri"))
    TrainingDataConfig.add_member(:invocation_logs_config, Shapes::ShapeRef.new(shape: InvocationLogsConfig, location_name: "invocationLogsConfig"))
    TrainingDataConfig.struct_class = Types::TrainingDataConfig

    TrainingDetails.add_member(:status, Shapes::ShapeRef.new(shape: JobStatusDetails, location_name: "status"))
    TrainingDetails.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    TrainingDetails.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    TrainingDetails.struct_class = Types::TrainingDetails

    TrainingMetrics.add_member(:training_loss, Shapes::ShapeRef.new(shape: MetricFloat, location_name: "trainingLoss"))
    TrainingMetrics.struct_class = Types::TrainingMetrics

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourcesArn, required: true, location_name: "resourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAutomatedReasoningPolicyAnnotationsRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    UpdateAutomatedReasoningPolicyAnnotationsRequest.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location: "uri", location_name: "buildWorkflowId"))
    UpdateAutomatedReasoningPolicyAnnotationsRequest.add_member(:annotations, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyAnnotationList, required: true, location_name: "annotations"))
    UpdateAutomatedReasoningPolicyAnnotationsRequest.add_member(:last_updated_annotation_set_hash, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, required: true, location_name: "lastUpdatedAnnotationSetHash"))
    UpdateAutomatedReasoningPolicyAnnotationsRequest.struct_class = Types::UpdateAutomatedReasoningPolicyAnnotationsRequest

    UpdateAutomatedReasoningPolicyAnnotationsResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    UpdateAutomatedReasoningPolicyAnnotationsResponse.add_member(:build_workflow_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyBuildWorkflowId, required: true, location_name: "buildWorkflowId"))
    UpdateAutomatedReasoningPolicyAnnotationsResponse.add_member(:annotation_set_hash, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, required: true, location_name: "annotationSetHash"))
    UpdateAutomatedReasoningPolicyAnnotationsResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateAutomatedReasoningPolicyAnnotationsResponse.struct_class = Types::UpdateAutomatedReasoningPolicyAnnotationsResponse

    UpdateAutomatedReasoningPolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    UpdateAutomatedReasoningPolicyRequest.add_member(:policy_definition, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDefinition, required: true, location_name: "policyDefinition"))
    UpdateAutomatedReasoningPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, location_name: "name"))
    UpdateAutomatedReasoningPolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyDescription, location_name: "description"))
    UpdateAutomatedReasoningPolicyRequest.struct_class = Types::UpdateAutomatedReasoningPolicyRequest

    UpdateAutomatedReasoningPolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    UpdateAutomatedReasoningPolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyName, required: true, location_name: "name"))
    UpdateAutomatedReasoningPolicyResponse.add_member(:definition_hash, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyHash, required: true, location_name: "definitionHash"))
    UpdateAutomatedReasoningPolicyResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateAutomatedReasoningPolicyResponse.struct_class = Types::UpdateAutomatedReasoningPolicyResponse

    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location: "uri", location_name: "policyArn"))
    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:test_case_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId, required: true, location: "uri", location_name: "testCaseId"))
    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:guard_content, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestGuardContent, required: true, location_name: "guardContent"))
    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:query_content, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestQueryContent, location_name: "queryContent"))
    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedAt"))
    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:expected_aggregated_findings_result, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckResult, required: true, location_name: "expectedAggregatedFindingsResult"))
    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:confidence_threshold, Shapes::ShapeRef.new(shape: AutomatedReasoningCheckTranslationConfidence, location_name: "confidenceThreshold"))
    UpdateAutomatedReasoningPolicyTestCaseRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    UpdateAutomatedReasoningPolicyTestCaseRequest.struct_class = Types::UpdateAutomatedReasoningPolicyTestCaseRequest

    UpdateAutomatedReasoningPolicyTestCaseResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyArn, required: true, location_name: "policyArn"))
    UpdateAutomatedReasoningPolicyTestCaseResponse.add_member(:test_case_id, Shapes::ShapeRef.new(shape: AutomatedReasoningPolicyTestCaseId, required: true, location_name: "testCaseId"))
    UpdateAutomatedReasoningPolicyTestCaseResponse.struct_class = Types::UpdateAutomatedReasoningPolicyTestCaseResponse

    UpdateGuardrailRequest.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, required: true, location: "uri", location_name: "guardrailIdentifier"))
    UpdateGuardrailRequest.add_member(:name, Shapes::ShapeRef.new(shape: GuardrailName, required: true, location_name: "name"))
    UpdateGuardrailRequest.add_member(:description, Shapes::ShapeRef.new(shape: GuardrailDescription, location_name: "description"))
    UpdateGuardrailRequest.add_member(:topic_policy_config, Shapes::ShapeRef.new(shape: GuardrailTopicPolicyConfig, location_name: "topicPolicyConfig"))
    UpdateGuardrailRequest.add_member(:content_policy_config, Shapes::ShapeRef.new(shape: GuardrailContentPolicyConfig, location_name: "contentPolicyConfig"))
    UpdateGuardrailRequest.add_member(:word_policy_config, Shapes::ShapeRef.new(shape: GuardrailWordPolicyConfig, location_name: "wordPolicyConfig"))
    UpdateGuardrailRequest.add_member(:sensitive_information_policy_config, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicyConfig, location_name: "sensitiveInformationPolicyConfig"))
    UpdateGuardrailRequest.add_member(:contextual_grounding_policy_config, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingPolicyConfig, location_name: "contextualGroundingPolicyConfig"))
    UpdateGuardrailRequest.add_member(:automated_reasoning_policy_config, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningPolicyConfig, location_name: "automatedReasoningPolicyConfig"))
    UpdateGuardrailRequest.add_member(:cross_region_config, Shapes::ShapeRef.new(shape: GuardrailCrossRegionConfig, location_name: "crossRegionConfig"))
    UpdateGuardrailRequest.add_member(:blocked_input_messaging, Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, required: true, location_name: "blockedInputMessaging"))
    UpdateGuardrailRequest.add_member(:blocked_outputs_messaging, Shapes::ShapeRef.new(shape: GuardrailBlockedMessaging, required: true, location_name: "blockedOutputsMessaging"))
    UpdateGuardrailRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    UpdateGuardrailRequest.struct_class = Types::UpdateGuardrailRequest

    UpdateGuardrailResponse.add_member(:guardrail_id, Shapes::ShapeRef.new(shape: GuardrailId, required: true, location_name: "guardrailId"))
    UpdateGuardrailResponse.add_member(:guardrail_arn, Shapes::ShapeRef.new(shape: GuardrailArn, required: true, location_name: "guardrailArn"))
    UpdateGuardrailResponse.add_member(:version, Shapes::ShapeRef.new(shape: GuardrailDraftVersion, required: true, location_name: "version"))
    UpdateGuardrailResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateGuardrailResponse.struct_class = Types::UpdateGuardrailResponse

    UpdateMarketplaceModelEndpointRequest.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "endpointArn"))
    UpdateMarketplaceModelEndpointRequest.add_member(:endpoint_config, Shapes::ShapeRef.new(shape: EndpointConfig, required: true, location_name: "endpointConfig"))
    UpdateMarketplaceModelEndpointRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    UpdateMarketplaceModelEndpointRequest.struct_class = Types::UpdateMarketplaceModelEndpointRequest

    UpdateMarketplaceModelEndpointResponse.add_member(:marketplace_model_endpoint, Shapes::ShapeRef.new(shape: MarketplaceModelEndpoint, required: true, location_name: "marketplaceModelEndpoint"))
    UpdateMarketplaceModelEndpointResponse.struct_class = Types::UpdateMarketplaceModelEndpointResponse

    UpdateProvisionedModelThroughputRequest.add_member(:provisioned_model_id, Shapes::ShapeRef.new(shape: ProvisionedModelId, required: true, location: "uri", location_name: "provisionedModelId"))
    UpdateProvisionedModelThroughputRequest.add_member(:desired_provisioned_model_name, Shapes::ShapeRef.new(shape: ProvisionedModelName, location_name: "desiredProvisionedModelName"))
    UpdateProvisionedModelThroughputRequest.add_member(:desired_model_id, Shapes::ShapeRef.new(shape: ModelIdentifier, location_name: "desiredModelId"))
    UpdateProvisionedModelThroughputRequest.struct_class = Types::UpdateProvisionedModelThroughputRequest

    UpdateProvisionedModelThroughputResponse.struct_class = Types::UpdateProvisionedModelThroughputResponse

    ValidationDataConfig.add_member(:validators, Shapes::ShapeRef.new(shape: Validators, required: true, location_name: "validators"))
    ValidationDataConfig.struct_class = Types::ValidationDataConfig

    ValidationDetails.add_member(:status, Shapes::ShapeRef.new(shape: JobStatusDetails, location_name: "status"))
    ValidationDetails.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    ValidationDetails.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    ValidationDetails.struct_class = Types::ValidationDetails

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    ValidationMetrics.member = Shapes::ShapeRef.new(shape: ValidatorMetric)

    Validator.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    Validator.struct_class = Types::Validator

    ValidatorMetric.add_member(:validation_loss, Shapes::ShapeRef.new(shape: MetricFloat, location_name: "validationLoss"))
    ValidatorMetric.struct_class = Types::ValidatorMetric

    Validators.member = Shapes::ShapeRef.new(shape: Validator)

    ValidityTerm.add_member(:agreement_duration, Shapes::ShapeRef.new(shape: String, location_name: "agreementDuration"))
    ValidityTerm.struct_class = Types::ValidityTerm

    VectorSearchBedrockRerankingConfiguration.add_member(:model_configuration, Shapes::ShapeRef.new(shape: VectorSearchBedrockRerankingModelConfiguration, required: true, location_name: "modelConfiguration"))
    VectorSearchBedrockRerankingConfiguration.add_member(:number_of_reranked_results, Shapes::ShapeRef.new(shape: VectorSearchBedrockRerankingConfigurationNumberOfRerankedResultsInteger, location_name: "numberOfRerankedResults"))
    VectorSearchBedrockRerankingConfiguration.add_member(:metadata_configuration, Shapes::ShapeRef.new(shape: MetadataConfigurationForReranking, location_name: "metadataConfiguration"))
    VectorSearchBedrockRerankingConfiguration.struct_class = Types::VectorSearchBedrockRerankingConfiguration

    VectorSearchBedrockRerankingModelConfiguration.add_member(:model_arn, Shapes::ShapeRef.new(shape: BedrockRerankingModelArn, required: true, location_name: "modelArn"))
    VectorSearchBedrockRerankingModelConfiguration.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: AdditionalModelRequestFields, location_name: "additionalModelRequestFields"))
    VectorSearchBedrockRerankingModelConfiguration.struct_class = Types::VectorSearchBedrockRerankingModelConfiguration

    VectorSearchRerankingConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: VectorSearchRerankingConfigurationType, required: true, location_name: "type"))
    VectorSearchRerankingConfiguration.add_member(:bedrock_reranking_configuration, Shapes::ShapeRef.new(shape: VectorSearchBedrockRerankingConfiguration, location_name: "bedrockRerankingConfiguration"))
    VectorSearchRerankingConfiguration.struct_class = Types::VectorSearchRerankingConfiguration

    VpcConfig.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "subnetIds"))
    VpcConfig.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, required: true, location_name: "securityGroupIds"))
    VpcConfig.struct_class = Types::VpcConfig


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-04-20"

      api.metadata = {
        "apiVersion" => "2023-04-20",
        "auth" => ["aws.auth#sigv4", "smithy.api#httpBearerAuth"],
        "endpointPrefix" => "bedrock",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Bedrock",
        "serviceId" => "Bedrock",
        "signatureVersion" => "v4",
        "signingName" => "bedrock",
        "uid" => "bedrock-2023-04-20",
      }

      api.add_operation(:batch_delete_evaluation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteEvaluationJob"
        o.http_method = "POST"
        o.http_request_uri = "/evaluation-jobs/batch-delete"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteEvaluationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteEvaluationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:cancel_automated_reasoning_policy_build_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelAutomatedReasoningPolicyBuildWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelAutomatedReasoningPolicyBuildWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelAutomatedReasoningPolicyBuildWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_automated_reasoning_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAutomatedReasoningPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/automated-reasoning-policies"
        o.input = Shapes::ShapeRef.new(shape: CreateAutomatedReasoningPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAutomatedReasoningPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_automated_reasoning_policy_test_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAutomatedReasoningPolicyTestCase"
        o.http_method = "POST"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/test-cases"
        o.input = Shapes::ShapeRef.new(shape: CreateAutomatedReasoningPolicyTestCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAutomatedReasoningPolicyTestCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_automated_reasoning_policy_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAutomatedReasoningPolicyVersion"
        o.http_method = "POST"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/versions"
        o.input = Shapes::ShapeRef.new(shape: CreateAutomatedReasoningPolicyVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAutomatedReasoningPolicyVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_custom_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomModel"
        o.http_method = "POST"
        o.http_request_uri = "/custom-models/create-custom-model"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomModelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_custom_model_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomModelDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/model-customization/custom-model-deployments"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomModelDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomModelDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_evaluation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEvaluationJob"
        o.http_method = "POST"
        o.http_request_uri = "/evaluation-jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateEvaluationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEvaluationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_foundation_model_agreement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFoundationModelAgreement"
        o.http_method = "POST"
        o.http_request_uri = "/create-foundation-model-agreement"
        o.input = Shapes::ShapeRef.new(shape: CreateFoundationModelAgreementRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFoundationModelAgreementResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_guardrail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGuardrail"
        o.http_method = "POST"
        o.http_request_uri = "/guardrails"
        o.input = Shapes::ShapeRef.new(shape: CreateGuardrailRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGuardrailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_guardrail_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGuardrailVersion"
        o.http_method = "POST"
        o.http_request_uri = "/guardrails/{guardrailIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: CreateGuardrailVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGuardrailVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_inference_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInferenceProfile"
        o.http_method = "POST"
        o.http_request_uri = "/inference-profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateInferenceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInferenceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_marketplace_model_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMarketplaceModelEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/marketplace-model/endpoints"
        o.input = Shapes::ShapeRef.new(shape: CreateMarketplaceModelEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMarketplaceModelEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_model_copy_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelCopyJob"
        o.http_method = "POST"
        o.http_request_uri = "/model-copy-jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateModelCopyJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelCopyJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:create_model_customization_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelCustomizationJob"
        o.http_method = "POST"
        o.http_request_uri = "/model-customization-jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateModelCustomizationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelCustomizationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_model_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/model-import-jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateModelImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_model_invocation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateModelInvocationJob"
        o.http_method = "POST"
        o.http_request_uri = "/model-invocation-job"
        o.input = Shapes::ShapeRef.new(shape: CreateModelInvocationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateModelInvocationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_prompt_router, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePromptRouter"
        o.http_method = "POST"
        o.http_request_uri = "/prompt-routers"
        o.input = Shapes::ShapeRef.new(shape: CreatePromptRouterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePromptRouterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_provisioned_model_throughput, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProvisionedModelThroughput"
        o.http_method = "POST"
        o.http_request_uri = "/provisioned-model-throughput"
        o.input = Shapes::ShapeRef.new(shape: CreateProvisionedModelThroughputRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProvisionedModelThroughputResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_automated_reasoning_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAutomatedReasoningPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAutomatedReasoningPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAutomatedReasoningPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_automated_reasoning_policy_build_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAutomatedReasoningPolicyBuildWorkflow"
        o.http_method = "DELETE"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAutomatedReasoningPolicyBuildWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAutomatedReasoningPolicyBuildWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_automated_reasoning_policy_test_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAutomatedReasoningPolicyTestCase"
        o.http_method = "DELETE"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/test-cases/{testCaseId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAutomatedReasoningPolicyTestCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAutomatedReasoningPolicyTestCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_custom_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomModel"
        o.http_method = "DELETE"
        o.http_request_uri = "/custom-models/{modelIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCustomModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_custom_model_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomModelDeployment"
        o.http_method = "DELETE"
        o.http_request_uri = "/model-customization/custom-model-deployments/{customModelDeploymentIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomModelDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCustomModelDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_foundation_model_agreement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFoundationModelAgreement"
        o.http_method = "POST"
        o.http_request_uri = "/delete-foundation-model-agreement"
        o.input = Shapes::ShapeRef.new(shape: DeleteFoundationModelAgreementRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFoundationModelAgreementResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_guardrail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGuardrail"
        o.http_method = "DELETE"
        o.http_request_uri = "/guardrails/{guardrailIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGuardrailRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGuardrailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_imported_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteImportedModel"
        o.http_method = "DELETE"
        o.http_request_uri = "/imported-models/{modelIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteImportedModelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteImportedModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_inference_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInferenceProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/inference-profiles/{inferenceProfileIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInferenceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInferenceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_marketplace_model_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMarketplaceModelEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/marketplace-model/endpoints/{endpointArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMarketplaceModelEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMarketplaceModelEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_model_invocation_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteModelInvocationLoggingConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/logging/modelinvocations"
        o.input = Shapes::ShapeRef.new(shape: DeleteModelInvocationLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteModelInvocationLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_prompt_router, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePromptRouter"
        o.http_method = "DELETE"
        o.http_request_uri = "/prompt-routers/{promptRouterArn}"
        o.input = Shapes::ShapeRef.new(shape: DeletePromptRouterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePromptRouterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_provisioned_model_throughput, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProvisionedModelThroughput"
        o.http_method = "DELETE"
        o.http_request_uri = "/provisioned-model-throughput/{provisionedModelId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProvisionedModelThroughputRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProvisionedModelThroughputResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:deregister_marketplace_model_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterMarketplaceModelEndpoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/marketplace-model/endpoints/{endpointArn}/registration"
        o.input = Shapes::ShapeRef.new(shape: DeregisterMarketplaceModelEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterMarketplaceModelEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:export_automated_reasoning_policy_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportAutomatedReasoningPolicyVersion"
        o.http_method = "GET"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/export"
        o.input = Shapes::ShapeRef.new(shape: ExportAutomatedReasoningPolicyVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportAutomatedReasoningPolicyVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_automated_reasoning_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutomatedReasoningPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}"
        o.input = Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_automated_reasoning_policy_annotations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutomatedReasoningPolicyAnnotations"
        o.http_method = "GET"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/annotations"
        o.input = Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyAnnotationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyAnnotationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_automated_reasoning_policy_build_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutomatedReasoningPolicyBuildWorkflow"
        o.http_method = "GET"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}"
        o.input = Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyBuildWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyBuildWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_automated_reasoning_policy_build_workflow_result_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutomatedReasoningPolicyBuildWorkflowResultAssets"
        o.http_method = "GET"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/result-assets"
        o.input = Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyBuildWorkflowResultAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyBuildWorkflowResultAssetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_automated_reasoning_policy_next_scenario, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutomatedReasoningPolicyNextScenario"
        o.http_method = "GET"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/scenarios"
        o.input = Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyNextScenarioRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyNextScenarioResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_automated_reasoning_policy_test_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutomatedReasoningPolicyTestCase"
        o.http_method = "GET"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/test-cases/{testCaseId}"
        o.input = Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyTestCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyTestCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_automated_reasoning_policy_test_result, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutomatedReasoningPolicyTestResult"
        o.http_method = "GET"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/test-cases/{testCaseId}/test-results"
        o.input = Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyTestResultRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutomatedReasoningPolicyTestResultResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_custom_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCustomModel"
        o.http_method = "GET"
        o.http_request_uri = "/custom-models/{modelIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetCustomModelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCustomModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_custom_model_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCustomModelDeployment"
        o.http_method = "GET"
        o.http_request_uri = "/model-customization/custom-model-deployments/{customModelDeploymentIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetCustomModelDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCustomModelDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_evaluation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEvaluationJob"
        o.http_method = "GET"
        o.http_request_uri = "/evaluation-jobs/{jobIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetEvaluationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEvaluationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_foundation_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFoundationModel"
        o.http_method = "GET"
        o.http_request_uri = "/foundation-models/{modelIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetFoundationModelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFoundationModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_foundation_model_availability, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFoundationModelAvailability"
        o.http_method = "GET"
        o.http_request_uri = "/foundation-model-availability/{modelId}"
        o.input = Shapes::ShapeRef.new(shape: GetFoundationModelAvailabilityRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFoundationModelAvailabilityResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_guardrail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGuardrail"
        o.http_method = "GET"
        o.http_request_uri = "/guardrails/{guardrailIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetGuardrailRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGuardrailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_imported_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImportedModel"
        o.http_method = "GET"
        o.http_request_uri = "/imported-models/{modelIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetImportedModelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetImportedModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_inference_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInferenceProfile"
        o.http_method = "GET"
        o.http_request_uri = "/inference-profiles/{inferenceProfileIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetInferenceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInferenceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_marketplace_model_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMarketplaceModelEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/marketplace-model/endpoints/{endpointArn}"
        o.input = Shapes::ShapeRef.new(shape: GetMarketplaceModelEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMarketplaceModelEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_model_copy_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModelCopyJob"
        o.http_method = "GET"
        o.http_request_uri = "/model-copy-jobs/{jobArn}"
        o.input = Shapes::ShapeRef.new(shape: GetModelCopyJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelCopyJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_model_customization_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModelCustomizationJob"
        o.http_method = "GET"
        o.http_request_uri = "/model-customization-jobs/{jobIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetModelCustomizationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelCustomizationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_model_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModelImportJob"
        o.http_method = "GET"
        o.http_request_uri = "/model-import-jobs/{jobIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetModelImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_model_invocation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModelInvocationJob"
        o.http_method = "GET"
        o.http_request_uri = "/model-invocation-job/{jobIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetModelInvocationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelInvocationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_model_invocation_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetModelInvocationLoggingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/logging/modelinvocations"
        o.input = Shapes::ShapeRef.new(shape: GetModelInvocationLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetModelInvocationLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_prompt_router, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPromptRouter"
        o.http_method = "GET"
        o.http_request_uri = "/prompt-routers/{promptRouterArn}"
        o.input = Shapes::ShapeRef.new(shape: GetPromptRouterRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPromptRouterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_provisioned_model_throughput, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProvisionedModelThroughput"
        o.http_method = "GET"
        o.http_request_uri = "/provisioned-model-throughput/{provisionedModelId}"
        o.input = Shapes::ShapeRef.new(shape: GetProvisionedModelThroughputRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProvisionedModelThroughputResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_use_case_for_model_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUseCaseForModelAccess"
        o.http_method = "GET"
        o.http_request_uri = "/use-case-for-model-access"
        o.input = Shapes::ShapeRef.new(shape: GetUseCaseForModelAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUseCaseForModelAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_automated_reasoning_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutomatedReasoningPolicies"
        o.http_method = "GET"
        o.http_request_uri = "/automated-reasoning-policies"
        o.input = Shapes::ShapeRef.new(shape: ListAutomatedReasoningPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAutomatedReasoningPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_automated_reasoning_policy_build_workflows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutomatedReasoningPolicyBuildWorkflows"
        o.http_method = "GET"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/build-workflows"
        o.input = Shapes::ShapeRef.new(shape: ListAutomatedReasoningPolicyBuildWorkflowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAutomatedReasoningPolicyBuildWorkflowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_automated_reasoning_policy_test_cases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutomatedReasoningPolicyTestCases"
        o.http_method = "GET"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/test-cases"
        o.input = Shapes::ShapeRef.new(shape: ListAutomatedReasoningPolicyTestCasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAutomatedReasoningPolicyTestCasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_automated_reasoning_policy_test_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAutomatedReasoningPolicyTestResults"
        o.http_method = "GET"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/test-results"
        o.input = Shapes::ShapeRef.new(shape: ListAutomatedReasoningPolicyTestResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAutomatedReasoningPolicyTestResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_custom_model_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomModelDeployments"
        o.http_method = "GET"
        o.http_request_uri = "/model-customization/custom-model-deployments"
        o.input = Shapes::ShapeRef.new(shape: ListCustomModelDeploymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomModelDeploymentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_custom_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomModels"
        o.http_method = "GET"
        o.http_request_uri = "/custom-models"
        o.input = Shapes::ShapeRef.new(shape: ListCustomModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_evaluation_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEvaluationJobs"
        o.http_method = "GET"
        o.http_request_uri = "/evaluation-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListEvaluationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEvaluationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_foundation_model_agreement_offers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFoundationModelAgreementOffers"
        o.http_method = "GET"
        o.http_request_uri = "/list-foundation-model-agreement-offers/{modelId}"
        o.input = Shapes::ShapeRef.new(shape: ListFoundationModelAgreementOffersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFoundationModelAgreementOffersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_foundation_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFoundationModels"
        o.http_method = "GET"
        o.http_request_uri = "/foundation-models"
        o.input = Shapes::ShapeRef.new(shape: ListFoundationModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFoundationModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_guardrails, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGuardrails"
        o.http_method = "GET"
        o.http_request_uri = "/guardrails"
        o.input = Shapes::ShapeRef.new(shape: ListGuardrailsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGuardrailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_imported_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImportedModels"
        o.http_method = "GET"
        o.http_request_uri = "/imported-models"
        o.input = Shapes::ShapeRef.new(shape: ListImportedModelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImportedModelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_inference_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInferenceProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/inference-profiles"
        o.input = Shapes::ShapeRef.new(shape: ListInferenceProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInferenceProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_marketplace_model_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMarketplaceModelEndpoints"
        o.http_method = "GET"
        o.http_request_uri = "/marketplace-model/endpoints"
        o.input = Shapes::ShapeRef.new(shape: ListMarketplaceModelEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMarketplaceModelEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_model_copy_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelCopyJobs"
        o.http_method = "GET"
        o.http_request_uri = "/model-copy-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListModelCopyJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelCopyJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_model_customization_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelCustomizationJobs"
        o.http_method = "GET"
        o.http_request_uri = "/model-customization-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListModelCustomizationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelCustomizationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_model_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelImportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/model-import-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListModelImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_model_invocation_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListModelInvocationJobs"
        o.http_method = "GET"
        o.http_request_uri = "/model-invocation-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListModelInvocationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListModelInvocationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_prompt_routers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPromptRouters"
        o.http_method = "GET"
        o.http_request_uri = "/prompt-routers"
        o.input = Shapes::ShapeRef.new(shape: ListPromptRoutersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPromptRoutersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_provisioned_model_throughputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProvisionedModelThroughputs"
        o.http_method = "GET"
        o.http_request_uri = "/provisioned-model-throughputs"
        o.input = Shapes::ShapeRef.new(shape: ListProvisionedModelThroughputsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProvisionedModelThroughputsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/listTagsForResource"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:put_model_invocation_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutModelInvocationLoggingConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/logging/modelinvocations"
        o.input = Shapes::ShapeRef.new(shape: PutModelInvocationLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutModelInvocationLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:put_use_case_for_model_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutUseCaseForModelAccess"
        o.http_method = "POST"
        o.http_request_uri = "/use-case-for-model-access"
        o.input = Shapes::ShapeRef.new(shape: PutUseCaseForModelAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: PutUseCaseForModelAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:register_marketplace_model_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterMarketplaceModelEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/marketplace-model/endpoints/{endpointIdentifier}/registration"
        o.input = Shapes::ShapeRef.new(shape: RegisterMarketplaceModelEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterMarketplaceModelEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_automated_reasoning_policy_build_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAutomatedReasoningPolicyBuildWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowType}/start"
        o.input = Shapes::ShapeRef.new(shape: StartAutomatedReasoningPolicyBuildWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAutomatedReasoningPolicyBuildWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:start_automated_reasoning_policy_test_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAutomatedReasoningPolicyTestWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/test-workflows"
        o.input = Shapes::ShapeRef.new(shape: StartAutomatedReasoningPolicyTestWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAutomatedReasoningPolicyTestWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:stop_evaluation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopEvaluationJob"
        o.http_method = "POST"
        o.http_request_uri = "/evaluation-job/{jobIdentifier}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopEvaluationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopEvaluationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:stop_model_customization_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopModelCustomizationJob"
        o.http_method = "POST"
        o.http_request_uri = "/model-customization-jobs/{jobIdentifier}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopModelCustomizationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopModelCustomizationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:stop_model_invocation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopModelInvocationJob"
        o.http_method = "POST"
        o.http_request_uri = "/model-invocation-job/{jobIdentifier}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopModelInvocationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopModelInvocationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tagResource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/untagResource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_automated_reasoning_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAutomatedReasoningPolicy"
        o.http_method = "PATCH"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAutomatedReasoningPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAutomatedReasoningPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_automated_reasoning_policy_annotations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAutomatedReasoningPolicyAnnotations"
        o.http_method = "PATCH"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/build-workflows/{buildWorkflowId}/annotations"
        o.input = Shapes::ShapeRef.new(shape: UpdateAutomatedReasoningPolicyAnnotationsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAutomatedReasoningPolicyAnnotationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_automated_reasoning_policy_test_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAutomatedReasoningPolicyTestCase"
        o.http_method = "PATCH"
        o.http_request_uri = "/automated-reasoning-policies/{policyArn}/test-cases/{testCaseId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAutomatedReasoningPolicyTestCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAutomatedReasoningPolicyTestCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_guardrail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGuardrail"
        o.http_method = "PUT"
        o.http_request_uri = "/guardrails/{guardrailIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGuardrailRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGuardrailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_marketplace_model_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMarketplaceModelEndpoint"
        o.http_method = "PATCH"
        o.http_request_uri = "/marketplace-model/endpoints/{endpointArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMarketplaceModelEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMarketplaceModelEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_provisioned_model_throughput, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProvisionedModelThroughput"
        o.http_method = "PATCH"
        o.http_request_uri = "/provisioned-model-throughput/{provisionedModelId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProvisionedModelThroughputRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProvisionedModelThroughputResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
