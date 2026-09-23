# frozen_string_literal: true

# This is generated code!

module Aws::BedrockRuntime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AdditionalModelResponseFieldPaths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#AdditionalModelResponseFieldPaths", name: "AdditionalModelResponseFieldPaths", traits: {"smithy.api#length" => {"max" => 10}})
    AnyToolChoice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#AnyToolChoice", name: "AnyToolChoice")
    ApplyGuardrailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ApplyGuardrailRequest", name: "ApplyGuardrailRequest")
    ApplyGuardrailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ApplyGuardrailResponse", name: "ApplyGuardrailResponse")
    AsyncInvokeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#AsyncInvokeArn", name: "AsyncInvokeArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9\\-]+:bedrock:[a-z0-9\\-]*:[0-9]*:(provisioned-model|foundation-model)/.+$"})
    AsyncInvokeIdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#AsyncInvokeIdempotencyToken", name: "AsyncInvokeIdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[!-~]*$"})
    AsyncInvokeIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#AsyncInvokeIdentifier", name: "AsyncInvokeIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z_\\.\\-/0-9:]+$"})
    AsyncInvokeMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#AsyncInvokeMessage", name: "AsyncInvokeMessage", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#sensitive" => {}})
    AsyncInvokeOutputDataConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#AsyncInvokeOutputDataConfig", name: "AsyncInvokeOutputDataConfig")
    AsyncInvokeS3OutputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#AsyncInvokeS3OutputDataConfig", name: "AsyncInvokeS3OutputDataConfig")
    AsyncInvokeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#AsyncInvokeStatus", name: "AsyncInvokeStatus")
    AsyncInvokeSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#AsyncInvokeSummaries", name: "AsyncInvokeSummaries")
    AsyncInvokeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#AsyncInvokeSummary", name: "AsyncInvokeSummary")
    AutoToolChoice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#AutoToolChoice", name: "AutoToolChoice")
    AutomatedReasoningRuleIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#AutomatedReasoningRuleIdentifier", name: "AutomatedReasoningRuleIdentifier", traits: {"smithy.api#length" => {"max" => 12}, "smithy.api#pattern" => "^[a-z0-9]{12}$"})
    BidirectionalInputPayloadPart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#BidirectionalInputPayloadPart", name: "BidirectionalInputPayloadPart", traits: {"smithy.api#sensitive" => {}})
    BidirectionalOutputPayloadPart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#BidirectionalOutputPayloadPart", name: "BidirectionalOutputPayloadPart", traits: {"smithy.api#sensitive" => {}})
    Body = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.bedrockruntime#Body", name: "Body", traits: {"smithy.api#length" => {"max" => 25000000}, "smithy.api#sensitive" => {}})
    CachePointBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#CachePointBlock", name: "CachePointBlock")
    CachePointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#CachePointType", name: "CachePointType")
    Citation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#Citation", name: "Citation")
    CitationGeneratedContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#CitationGeneratedContent", name: "CitationGeneratedContent")
    CitationGeneratedContentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#CitationGeneratedContentList", name: "CitationGeneratedContentList")
    CitationLocation = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#CitationLocation", name: "CitationLocation")
    CitationSourceContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#CitationSourceContent", name: "CitationSourceContent")
    CitationSourceContentDelta = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#CitationSourceContentDelta", name: "CitationSourceContentDelta")
    CitationSourceContentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#CitationSourceContentList", name: "CitationSourceContentList")
    CitationSourceContentListDelta = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#CitationSourceContentListDelta", name: "CitationSourceContentListDelta")
    Citations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#Citations", name: "Citations")
    CitationsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#CitationsConfig", name: "CitationsConfig")
    CitationsContentBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#CitationsContentBlock", name: "CitationsContentBlock")
    CitationsDelta = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#CitationsDelta", name: "CitationsDelta")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ContentBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#ContentBlock", name: "ContentBlock")
    ContentBlockDelta = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#ContentBlockDelta", name: "ContentBlockDelta")
    ContentBlockDeltaEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ContentBlockDeltaEvent", name: "ContentBlockDeltaEvent")
    ContentBlockStart = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#ContentBlockStart", name: "ContentBlockStart")
    ContentBlockStartEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ContentBlockStartEvent", name: "ContentBlockStartEvent")
    ContentBlockStopEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ContentBlockStopEvent", name: "ContentBlockStopEvent")
    ContentBlocks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#ContentBlocks", name: "ContentBlocks")
    ConversationRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#ConversationRole", name: "ConversationRole")
    ConversationalModelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#ConversationalModelId", name: "ConversationalModelId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:(([0-9]{12}:custom-model/[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}/[a-z0-9]{12})|(:foundation-model/[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.:]?[a-z0-9-]{1,63}))|([0-9]{12}:imported-model/[a-z0-9]{12})|([0-9]{12}:provisioned-model/[a-z0-9]{12})|([0-9]{12}:custom-model-deployment/[a-z0-9]{12})|([0-9]{12}:(inference-profile|application-inference-profile)/[a-zA-Z0-9-:.]+)))|([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.:]?[a-z0-9-]{1,63}))|(([0-9a-zA-Z][_-]?)+)|([a-zA-Z0-9-:.]+)|(^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:prompt/[0-9a-zA-Z]{10}(?::[0-9]{1,5})?))$|(^arn:aws:sagemaker:[a-z0-9-]+:[0-9]{12}:endpoint/[a-zA-Z0-9-]+$)|(^arn:aws(-[^:]+)?:bedrock:([0-9a-z-]{1,20}):([0-9]{12}):(default-)?prompt-router/[a-zA-Z0-9-:.]+$)$"})
    ConverseMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ConverseMetrics", name: "ConverseMetrics")
    ConverseOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#ConverseOutput", name: "ConverseOutput")
    ConverseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ConverseRequest", name: "ConverseRequest")
    ConverseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ConverseResponse", name: "ConverseResponse")
    ConverseStreamMetadataEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ConverseStreamMetadataEvent", name: "ConverseStreamMetadataEvent")
    ConverseStreamMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ConverseStreamMetrics", name: "ConverseStreamMetrics")
    ConverseStreamOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#ConverseStreamOutput", name: "ConverseStreamOutput", traits: {"smithy.api#streaming" => {}})
    ConverseStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ConverseStreamRequest", name: "ConverseStreamRequest")
    ConverseStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ConverseStreamResponse", name: "ConverseStreamResponse")
    ConverseStreamTrace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ConverseStreamTrace", name: "ConverseStreamTrace")
    ConverseTokensRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ConverseTokensRequest", name: "ConverseTokensRequest")
    ConverseTrace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ConverseTrace", name: "ConverseTrace")
    CountTokensInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#CountTokensInput", name: "CountTokensInput")
    CountTokensRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#CountTokensRequest", name: "CountTokensRequest")
    CountTokensResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#CountTokensResponse", name: "CountTokensResponse")
    DocumentBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#DocumentBlock", name: "DocumentBlock")
    DocumentCharLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#DocumentCharLocation", name: "DocumentCharLocation")
    DocumentChunkLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#DocumentChunkLocation", name: "DocumentChunkLocation")
    DocumentContentBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#DocumentContentBlock", name: "DocumentContentBlock")
    DocumentContentBlocks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#DocumentContentBlocks", name: "DocumentContentBlocks")
    DocumentFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#DocumentFormat", name: "DocumentFormat")
    DocumentPageLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#DocumentPageLocation", name: "DocumentPageLocation")
    DocumentSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#DocumentSource", name: "DocumentSource")
    FoundationModelVersionIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#FoundationModelVersionIdentifier", name: "FoundationModelVersionIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z_\\.\\-/0-9:]+$"})
    GetAsyncInvokeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GetAsyncInvokeRequest", name: "GetAsyncInvokeRequest")
    GetAsyncInvokeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GetAsyncInvokeResponse", name: "GetAsyncInvokeResponse")
    GuardrailAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAction", name: "GuardrailAction")
    GuardrailAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAssessment", name: "GuardrailAssessment")
    GuardrailAssessmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAssessmentList", name: "GuardrailAssessmentList")
    GuardrailAssessmentListMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAssessmentListMap", name: "GuardrailAssessmentListMap")
    GuardrailAssessmentMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAssessmentMap", name: "GuardrailAssessmentMap")
    GuardrailAutomatedReasoningDifferenceScenarioList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningDifferenceScenarioList", name: "GuardrailAutomatedReasoningDifferenceScenarioList", traits: {"smithy.api#length" => {"max" => 2}})
    GuardrailAutomatedReasoningFinding = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningFinding", name: "GuardrailAutomatedReasoningFinding")
    GuardrailAutomatedReasoningFindingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningFindingList", name: "GuardrailAutomatedReasoningFindingList")
    GuardrailAutomatedReasoningImpossibleFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningImpossibleFinding", name: "GuardrailAutomatedReasoningImpossibleFinding")
    GuardrailAutomatedReasoningInputTextReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningInputTextReference", name: "GuardrailAutomatedReasoningInputTextReference")
    GuardrailAutomatedReasoningInputTextReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningInputTextReferenceList", name: "GuardrailAutomatedReasoningInputTextReferenceList")
    GuardrailAutomatedReasoningInvalidFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningInvalidFinding", name: "GuardrailAutomatedReasoningInvalidFinding")
    GuardrailAutomatedReasoningLogicWarning = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningLogicWarning", name: "GuardrailAutomatedReasoningLogicWarning")
    GuardrailAutomatedReasoningLogicWarningType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningLogicWarningType", name: "GuardrailAutomatedReasoningLogicWarningType")
    GuardrailAutomatedReasoningNoTranslationsFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningNoTranslationsFinding", name: "GuardrailAutomatedReasoningNoTranslationsFinding")
    GuardrailAutomatedReasoningPoliciesProcessed = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningPoliciesProcessed", name: "GuardrailAutomatedReasoningPoliciesProcessed")
    GuardrailAutomatedReasoningPolicyAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningPolicyAssessment", name: "GuardrailAutomatedReasoningPolicyAssessment")
    GuardrailAutomatedReasoningPolicyUnitsProcessed = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningPolicyUnitsProcessed", name: "GuardrailAutomatedReasoningPolicyUnitsProcessed")
    GuardrailAutomatedReasoningPolicyVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningPolicyVersionArn", name: "GuardrailAutomatedReasoningPolicyVersionArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:automated-reasoning-policy/[a-z0-9]{12}(:([1-9][0-9]{0,11}))?$"})
    GuardrailAutomatedReasoningRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningRule", name: "GuardrailAutomatedReasoningRule")
    GuardrailAutomatedReasoningRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningRuleList", name: "GuardrailAutomatedReasoningRuleList")
    GuardrailAutomatedReasoningSatisfiableFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningSatisfiableFinding", name: "GuardrailAutomatedReasoningSatisfiableFinding")
    GuardrailAutomatedReasoningScenario = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningScenario", name: "GuardrailAutomatedReasoningScenario")
    GuardrailAutomatedReasoningStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningStatement", name: "GuardrailAutomatedReasoningStatement")
    GuardrailAutomatedReasoningStatementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningStatementList", name: "GuardrailAutomatedReasoningStatementList")
    GuardrailAutomatedReasoningStatementLogicContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningStatementLogicContent", name: "GuardrailAutomatedReasoningStatementLogicContent", traits: {"smithy.api#length" => {"max" => 1000}, "smithy.api#sensitive" => {}})
    GuardrailAutomatedReasoningStatementNaturalLanguageContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningStatementNaturalLanguageContent", name: "GuardrailAutomatedReasoningStatementNaturalLanguageContent", traits: {"smithy.api#length" => {"max" => 1000}, "smithy.api#sensitive" => {}})
    GuardrailAutomatedReasoningTooComplexFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningTooComplexFinding", name: "GuardrailAutomatedReasoningTooComplexFinding")
    GuardrailAutomatedReasoningTranslation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningTranslation", name: "GuardrailAutomatedReasoningTranslation")
    GuardrailAutomatedReasoningTranslationAmbiguousFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningTranslationAmbiguousFinding", name: "GuardrailAutomatedReasoningTranslationAmbiguousFinding")
    GuardrailAutomatedReasoningTranslationConfidence = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningTranslationConfidence", name: "GuardrailAutomatedReasoningTranslationConfidence", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    GuardrailAutomatedReasoningTranslationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningTranslationList", name: "GuardrailAutomatedReasoningTranslationList")
    GuardrailAutomatedReasoningTranslationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningTranslationOption", name: "GuardrailAutomatedReasoningTranslationOption")
    GuardrailAutomatedReasoningTranslationOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningTranslationOptionList", name: "GuardrailAutomatedReasoningTranslationOptionList", traits: {"smithy.api#length" => {"max" => 2}})
    GuardrailAutomatedReasoningValidFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailAutomatedReasoningValidFinding", name: "GuardrailAutomatedReasoningValidFinding")
    GuardrailConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailConfiguration", name: "GuardrailConfiguration")
    GuardrailContentBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContentBlock", name: "GuardrailContentBlock")
    GuardrailContentBlockList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContentBlockList", name: "GuardrailContentBlockList")
    GuardrailContentFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContentFilter", name: "GuardrailContentFilter")
    GuardrailContentFilterConfidence = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContentFilterConfidence", name: "GuardrailContentFilterConfidence")
    GuardrailContentFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContentFilterList", name: "GuardrailContentFilterList")
    GuardrailContentFilterStrength = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContentFilterStrength", name: "GuardrailContentFilterStrength")
    GuardrailContentFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContentFilterType", name: "GuardrailContentFilterType")
    GuardrailContentPolicyAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContentPolicyAction", name: "GuardrailContentPolicyAction")
    GuardrailContentPolicyAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContentPolicyAssessment", name: "GuardrailContentPolicyAssessment")
    GuardrailContentPolicyImageUnitsProcessed = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContentPolicyImageUnitsProcessed", name: "GuardrailContentPolicyImageUnitsProcessed")
    GuardrailContentPolicyUnitsProcessed = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContentPolicyUnitsProcessed", name: "GuardrailContentPolicyUnitsProcessed")
    GuardrailContentQualifier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContentQualifier", name: "GuardrailContentQualifier")
    GuardrailContentQualifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContentQualifierList", name: "GuardrailContentQualifierList")
    GuardrailContentSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContentSource", name: "GuardrailContentSource")
    GuardrailContextualGroundingFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContextualGroundingFilter", name: "GuardrailContextualGroundingFilter")
    GuardrailContextualGroundingFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContextualGroundingFilterType", name: "GuardrailContextualGroundingFilterType")
    GuardrailContextualGroundingFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContextualGroundingFilters", name: "GuardrailContextualGroundingFilters")
    GuardrailContextualGroundingPolicyAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContextualGroundingPolicyAction", name: "GuardrailContextualGroundingPolicyAction")
    GuardrailContextualGroundingPolicyAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContextualGroundingPolicyAssessment", name: "GuardrailContextualGroundingPolicyAssessment")
    GuardrailContextualGroundingPolicyUnitsProcessed = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#GuardrailContextualGroundingPolicyUnitsProcessed", name: "GuardrailContextualGroundingPolicyUnitsProcessed")
    GuardrailConverseContentBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#GuardrailConverseContentBlock", name: "GuardrailConverseContentBlock")
    GuardrailConverseContentQualifier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailConverseContentQualifier", name: "GuardrailConverseContentQualifier")
    GuardrailConverseContentQualifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailConverseContentQualifierList", name: "GuardrailConverseContentQualifierList")
    GuardrailConverseImageBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailConverseImageBlock", name: "GuardrailConverseImageBlock", traits: {"smithy.api#sensitive" => {}})
    GuardrailConverseImageFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailConverseImageFormat", name: "GuardrailConverseImageFormat")
    GuardrailConverseImageSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#GuardrailConverseImageSource", name: "GuardrailConverseImageSource", traits: {"smithy.api#sensitive" => {}})
    GuardrailConverseTextBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailConverseTextBlock", name: "GuardrailConverseTextBlock")
    GuardrailCoverage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailCoverage", name: "GuardrailCoverage")
    GuardrailCustomWord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailCustomWord", name: "GuardrailCustomWord")
    GuardrailCustomWordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailCustomWordList", name: "GuardrailCustomWordList")
    GuardrailIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#GuardrailIdentifier", name: "GuardrailIdentifier", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^(([a-z0-9]+)|(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail/[a-z0-9]+))$"})
    GuardrailImageBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailImageBlock", name: "GuardrailImageBlock", traits: {"smithy.api#sensitive" => {}})
    GuardrailImageCoverage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailImageCoverage", name: "GuardrailImageCoverage")
    GuardrailImageFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailImageFormat", name: "GuardrailImageFormat")
    GuardrailImageSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#GuardrailImageSource", name: "GuardrailImageSource", traits: {"smithy.api#sensitive" => {}})
    GuardrailInvocationMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailInvocationMetrics", name: "GuardrailInvocationMetrics")
    GuardrailManagedWord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailManagedWord", name: "GuardrailManagedWord")
    GuardrailManagedWordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailManagedWordList", name: "GuardrailManagedWordList")
    GuardrailManagedWordType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailManagedWordType", name: "GuardrailManagedWordType")
    GuardrailOutputContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailOutputContent", name: "GuardrailOutputContent")
    GuardrailOutputContentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailOutputContentList", name: "GuardrailOutputContentList")
    GuardrailOutputScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailOutputScope", name: "GuardrailOutputScope")
    GuardrailOutputText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#GuardrailOutputText", name: "GuardrailOutputText")
    GuardrailPiiEntityFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailPiiEntityFilter", name: "GuardrailPiiEntityFilter")
    GuardrailPiiEntityFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailPiiEntityFilterList", name: "GuardrailPiiEntityFilterList")
    GuardrailPiiEntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailPiiEntityType", name: "GuardrailPiiEntityType")
    GuardrailProcessingLatency = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#GuardrailProcessingLatency", name: "GuardrailProcessingLatency")
    GuardrailRegexFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailRegexFilter", name: "GuardrailRegexFilter")
    GuardrailRegexFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailRegexFilterList", name: "GuardrailRegexFilterList")
    GuardrailSensitiveInformationPolicyAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailSensitiveInformationPolicyAction", name: "GuardrailSensitiveInformationPolicyAction")
    GuardrailSensitiveInformationPolicyAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailSensitiveInformationPolicyAssessment", name: "GuardrailSensitiveInformationPolicyAssessment")
    GuardrailSensitiveInformationPolicyFreeUnitsProcessed = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#GuardrailSensitiveInformationPolicyFreeUnitsProcessed", name: "GuardrailSensitiveInformationPolicyFreeUnitsProcessed")
    GuardrailSensitiveInformationPolicyUnitsProcessed = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#GuardrailSensitiveInformationPolicyUnitsProcessed", name: "GuardrailSensitiveInformationPolicyUnitsProcessed")
    GuardrailStreamConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailStreamConfiguration", name: "GuardrailStreamConfiguration")
    GuardrailStreamProcessingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailStreamProcessingMode", name: "GuardrailStreamProcessingMode")
    GuardrailTextBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailTextBlock", name: "GuardrailTextBlock")
    GuardrailTextCharactersCoverage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailTextCharactersCoverage", name: "GuardrailTextCharactersCoverage")
    GuardrailTopic = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailTopic", name: "GuardrailTopic")
    GuardrailTopicList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#GuardrailTopicList", name: "GuardrailTopicList")
    GuardrailTopicPolicyAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailTopicPolicyAction", name: "GuardrailTopicPolicyAction")
    GuardrailTopicPolicyAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailTopicPolicyAssessment", name: "GuardrailTopicPolicyAssessment")
    GuardrailTopicPolicyUnitsProcessed = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#GuardrailTopicPolicyUnitsProcessed", name: "GuardrailTopicPolicyUnitsProcessed")
    GuardrailTopicType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailTopicType", name: "GuardrailTopicType")
    GuardrailTrace = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailTrace", name: "GuardrailTrace")
    GuardrailTraceAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailTraceAssessment", name: "GuardrailTraceAssessment")
    GuardrailUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailUsage", name: "GuardrailUsage")
    GuardrailVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#GuardrailVersion", name: "GuardrailVersion", traits: {"smithy.api#pattern" => "^(([1-9][0-9]{0,7})|(DRAFT))$"})
    GuardrailWordPolicyAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#GuardrailWordPolicyAction", name: "GuardrailWordPolicyAction")
    GuardrailWordPolicyAssessment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#GuardrailWordPolicyAssessment", name: "GuardrailWordPolicyAssessment")
    GuardrailWordPolicyUnitsProcessed = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#GuardrailWordPolicyUnitsProcessed", name: "GuardrailWordPolicyUnitsProcessed")
    ImageBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ImageBlock", name: "ImageBlock")
    ImageFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#ImageFormat", name: "ImageFormat")
    ImageSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#ImageSource", name: "ImageSource")
    ImagesGuarded = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#ImagesGuarded", name: "ImagesGuarded")
    ImagesTotal = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#ImagesTotal", name: "ImagesTotal")
    InferenceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#InferenceConfiguration", name: "InferenceConfiguration")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvocationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#InvocationArn", name: "InvocationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:async-invoke/[a-z0-9]{12}$"})
    InvokeModelIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#InvokeModelIdentifier", name: "InvokeModelIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:(([0-9]{12}:custom-model/[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}/[a-z0-9]{12})|(:foundation-model/[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.:]?[a-z0-9-]{1,63}))|([0-9]{12}:imported-model/[a-z0-9]{12})|([0-9]{12}:provisioned-model/[a-z0-9]{12})|([0-9]{12}:custom-model-deployment/[a-z0-9]{12})|([0-9]{12}:(inference-profile|application-inference-profile)/[a-zA-Z0-9-:.]+)))|([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.:]?[a-z0-9-]{1,63}))|(([0-9a-zA-Z][_-]?)+)|([a-zA-Z0-9-:.]+)$|(^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:prompt/[0-9a-zA-Z]{10}(?::[0-9]{1,5})?))$|(^arn:aws:sagemaker:[a-z0-9-]+:[0-9]{12}:endpoint/[a-zA-Z0-9-]+$)|(^arn:aws(-[^:]+)?:bedrock:([0-9a-z-]{1,20}):([0-9]{12}):(default-)?prompt-router/[a-zA-Z0-9-:.]+$)$"})
    InvokeModelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#InvokeModelRequest", name: "InvokeModelRequest")
    InvokeModelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#InvokeModelResponse", name: "InvokeModelResponse")
    InvokeModelTokensRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#InvokeModelTokensRequest", name: "InvokeModelTokensRequest")
    InvokeModelWithBidirectionalStreamInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#InvokeModelWithBidirectionalStreamInput", name: "InvokeModelWithBidirectionalStreamInput", traits: {"smithy.api#streaming" => {}})
    InvokeModelWithBidirectionalStreamOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#InvokeModelWithBidirectionalStreamOutput", name: "InvokeModelWithBidirectionalStreamOutput", traits: {"smithy.api#streaming" => {}})
    InvokeModelWithBidirectionalStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#InvokeModelWithBidirectionalStreamRequest", name: "InvokeModelWithBidirectionalStreamRequest")
    InvokeModelWithBidirectionalStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#InvokeModelWithBidirectionalStreamResponse", name: "InvokeModelWithBidirectionalStreamResponse")
    InvokeModelWithResponseStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#InvokeModelWithResponseStreamRequest", name: "InvokeModelWithResponseStreamRequest")
    InvokeModelWithResponseStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#InvokeModelWithResponseStreamResponse", name: "InvokeModelWithResponseStreamResponse")
    InvokedModelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#InvokedModelId", name: "InvokedModelId", traits: {"smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}::foundation-model/[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([a-z0-9-]{1,63}[.]){0,2}[a-z0-9-]{1,63}([:][a-z0-9-]{1,63}){0,2})|(arn:aws(|-us-gov|-cn|-iso|-iso-b):bedrock:(|[0-9a-z-]{1,20}):(|[0-9]{12}):inference-profile/[a-zA-Z0-9-:.]+)$"})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:kms:[a-zA-Z0-9-]*:[0-9]{12}:((key/[a-zA-Z0-9-]{36})|(alias/[a-zA-Z0-9-_/]+))$"})
    ListAsyncInvokesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ListAsyncInvokesRequest", name: "ListAsyncInvokesRequest")
    ListAsyncInvokesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ListAsyncInvokesResponse", name: "ListAsyncInvokesResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    Message = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#Message", name: "Message")
    MessageStartEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#MessageStartEvent", name: "MessageStartEvent")
    MessageStopEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#MessageStopEvent", name: "MessageStopEvent")
    Messages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#Messages", name: "Messages")
    MimeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#MimeType", name: "MimeType")
    ModelErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ModelErrorException", name: "ModelErrorException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    ModelInputPayload = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.bedrockruntime#ModelInputPayload", name: "ModelInputPayload", traits: {"smithy.api#sensitive" => {}})
    ModelNotReadyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ModelNotReadyException", name: "ModelNotReadyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    ModelOutputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#ModelOutputs", name: "ModelOutputs")
    ModelStreamErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ModelStreamErrorException", name: "ModelStreamErrorException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    ModelTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ModelTimeoutException", name: "ModelTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408})
    NonBlankString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#NonBlankString", name: "NonBlankString", traits: {"smithy.api#pattern" => "^[\\s\\S]*$"})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 1}})
    NonEmptyStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#NonEmptyStringList", name: "NonEmptyStringList")
    NonNegativeInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#NonNegativeInteger", name: "NonNegativeInteger", traits: {"smithy.api#range" => {"min" => 0}})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S*$"})
    PartBody = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.bedrockruntime#PartBody", name: "PartBody", traits: {"smithy.api#length" => {"max" => 1000000}, "smithy.api#sensitive" => {}})
    PayloadPart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#PayloadPart", name: "PayloadPart", traits: {"smithy.api#sensitive" => {}})
    PerformanceConfigLatency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#PerformanceConfigLatency", name: "PerformanceConfigLatency")
    PerformanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#PerformanceConfiguration", name: "PerformanceConfiguration")
    PromptRouterTrace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#PromptRouterTrace", name: "PromptRouterTrace")
    PromptVariableMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockruntime#PromptVariableMap", name: "PromptVariableMap", traits: {"smithy.api#sensitive" => {}})
    PromptVariableValues = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#PromptVariableValues", name: "PromptVariableValues")
    ReasoningContentBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#ReasoningContentBlock", name: "ReasoningContentBlock", traits: {"smithy.api#sensitive" => {}})
    ReasoningContentBlockDelta = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#ReasoningContentBlockDelta", name: "ReasoningContentBlockDelta", traits: {"smithy.api#sensitive" => {}})
    ReasoningTextBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ReasoningTextBlock", name: "ReasoningTextBlock", traits: {"smithy.api#sensitive" => {}})
    RequestMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockruntime#RequestMetadata", name: "RequestMetadata", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}, "smithy.api#sensitive" => {}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#ResponseStream", name: "ResponseStream", traits: {"smithy.api#streaming" => {}})
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#S3Location", name: "S3Location")
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#S3Uri", name: "S3Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SortAsyncInvocationBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#SortAsyncInvocationBy", name: "SortAsyncInvocationBy")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#SortOrder", name: "SortOrder")
    SpecificToolChoice = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#SpecificToolChoice", name: "SpecificToolChoice")
    StartAsyncInvokeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#StartAsyncInvokeRequest", name: "StartAsyncInvokeRequest")
    StartAsyncInvokeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#StartAsyncInvokeResponse", name: "StartAsyncInvokeResponse")
    StatusCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#StatusCode", name: "StatusCode", traits: {"smithy.api#range" => {"min" => 100, "max" => 599}})
    StopReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#StopReason", name: "StopReason")
    SystemContentBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#SystemContentBlock", name: "SystemContentBlock")
    SystemContentBlocks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#SystemContentBlocks", name: "SystemContentBlocks")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    TextCharactersGuarded = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#TextCharactersGuarded", name: "TextCharactersGuarded")
    TextCharactersTotal = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockruntime#TextCharactersTotal", name: "TextCharactersTotal")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.bedrockruntime#Timestamp", name: "Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    TokenUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#TokenUsage", name: "TokenUsage")
    Tool = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#Tool", name: "Tool")
    ToolChoice = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#ToolChoice", name: "ToolChoice")
    ToolConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ToolConfiguration", name: "ToolConfiguration")
    ToolInputSchema = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#ToolInputSchema", name: "ToolInputSchema")
    ToolName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#ToolName", name: "ToolName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ToolResultBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ToolResultBlock", name: "ToolResultBlock")
    ToolResultContentBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#ToolResultContentBlock", name: "ToolResultContentBlock")
    ToolResultContentBlocks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#ToolResultContentBlocks", name: "ToolResultContentBlocks")
    ToolResultStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#ToolResultStatus", name: "ToolResultStatus")
    ToolSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ToolSpecification", name: "ToolSpecification")
    ToolUseBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ToolUseBlock", name: "ToolUseBlock")
    ToolUseBlockDelta = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ToolUseBlockDelta", name: "ToolUseBlockDelta")
    ToolUseBlockStart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ToolUseBlockStart", name: "ToolUseBlockStart")
    ToolUseId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockruntime#ToolUseId", name: "ToolUseId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    Tools = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockruntime#Tools", name: "Tools")
    Trace = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#Trace", name: "Trace")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VideoBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockruntime#VideoBlock", name: "VideoBlock")
    VideoFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockruntime#VideoFormat", name: "VideoFormat")
    VideoSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockruntime#VideoSource", name: "VideoSource")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AdditionalModelResponseFieldPaths.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}}))
    AnyToolChoice.type = Types::AnyToolChoice
    ApplyGuardrailRequest.add_member(:guardrail_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailIdentifier, name: "guardrailIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ApplyGuardrailRequest.add_member(:guardrail_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailVersion, name: "guardrailVersion", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ApplyGuardrailRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentSource, name: "source", traits: {"smithy.api#required" => {}}))
    ApplyGuardrailRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentBlockList, name: "content", traits: {"smithy.api#required" => {}}))
    ApplyGuardrailRequest.add_member(:output_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailOutputScope, name: "outputScope"))
    ApplyGuardrailRequest.type = Types::ApplyGuardrailRequest
    ApplyGuardrailResponse.add_member(:usage, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailUsage, name: "usage", traits: {"smithy.api#required" => {}}))
    ApplyGuardrailResponse.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAction, name: "action", traits: {"smithy.api#required" => {}}))
    ApplyGuardrailResponse.add_member(:action_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "actionReason"))
    ApplyGuardrailResponse.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailOutputContentList, name: "outputs", traits: {"smithy.api#required" => {}}))
    ApplyGuardrailResponse.add_member(:assessments, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAssessmentList, name: "assessments", traits: {"smithy.api#required" => {}}))
    ApplyGuardrailResponse.add_member(:guardrail_coverage, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailCoverage, name: "guardrailCoverage"))
    ApplyGuardrailResponse.type = Types::ApplyGuardrailResponse
    AsyncInvokeOutputDataConfig.add_member(:s3_output_data_config, Types::AsyncInvokeOutputDataConfig::S3OutputDataConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeS3OutputDataConfig, name: "s3OutputDataConfig"))
    AsyncInvokeOutputDataConfig.add_member(:unknown, Types::AsyncInvokeOutputDataConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AsyncInvokeOutputDataConfig.type = Types::AsyncInvokeOutputDataConfig
    AsyncInvokeS3OutputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "s3Uri", traits: {"smithy.api#required" => {}}))
    AsyncInvokeS3OutputDataConfig.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    AsyncInvokeS3OutputDataConfig.add_member(:bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "bucketOwner"))
    AsyncInvokeS3OutputDataConfig.type = Types::AsyncInvokeS3OutputDataConfig
    AsyncInvokeStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    AsyncInvokeStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    AsyncInvokeStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    AsyncInvokeSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeSummary, name: "member"))
    AsyncInvokeSummary.add_member(:invocation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationArn, name: "invocationArn", traits: {"smithy.api#required" => {}}))
    AsyncInvokeSummary.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeArn, name: "modelArn", traits: {"smithy.api#required" => {}}))
    AsyncInvokeSummary.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeIdempotencyToken, name: "clientRequestToken"))
    AsyncInvokeSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeStatus, name: "status"))
    AsyncInvokeSummary.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeMessage, name: "failureMessage"))
    AsyncInvokeSummary.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "submitTime", traits: {"smithy.api#required" => {}}))
    AsyncInvokeSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastModifiedTime"))
    AsyncInvokeSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    AsyncInvokeSummary.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeOutputDataConfig, name: "outputDataConfig", traits: {"smithy.api#required" => {}}))
    AsyncInvokeSummary.type = Types::AsyncInvokeSummary
    AutoToolChoice.type = Types::AutoToolChoice
    BidirectionalInputPayloadPart.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PartBody, name: "bytes"))
    BidirectionalInputPayloadPart.type = Types::BidirectionalInputPayloadPart
    BidirectionalOutputPayloadPart.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PartBody, name: "bytes"))
    BidirectionalOutputPayloadPart.type = Types::BidirectionalOutputPayloadPart
    CachePointBlock.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePointType, name: "type", traits: {"smithy.api#required" => {}}))
    CachePointBlock.type = Types::CachePointBlock
    CachePointType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    Citation.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    Citation.add_member(:source_content, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationSourceContentList, name: "sourceContent"))
    Citation.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationLocation, name: "location"))
    Citation.type = Types::Citation
    CitationGeneratedContent.add_member(:text, Types::CitationGeneratedContent::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    CitationGeneratedContent.add_member(:unknown, Types::CitationGeneratedContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CitationGeneratedContent.type = Types::CitationGeneratedContent
    CitationGeneratedContentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationGeneratedContent, name: "member"))
    CitationLocation.add_member(:document_char, Types::CitationLocation::DocumentChar, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentCharLocation, name: "documentChar"))
    CitationLocation.add_member(:document_page, Types::CitationLocation::DocumentPage, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentPageLocation, name: "documentPage"))
    CitationLocation.add_member(:document_chunk, Types::CitationLocation::DocumentChunk, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentChunkLocation, name: "documentChunk"))
    CitationLocation.add_member(:unknown, Types::CitationLocation::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CitationLocation.type = Types::CitationLocation
    CitationSourceContent.add_member(:text, Types::CitationSourceContent::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    CitationSourceContent.add_member(:unknown, Types::CitationSourceContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CitationSourceContent.type = Types::CitationSourceContent
    CitationSourceContentDelta.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    CitationSourceContentDelta.type = Types::CitationSourceContentDelta
    CitationSourceContentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationSourceContent, name: "member"))
    CitationSourceContentListDelta.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationSourceContentDelta, name: "member"))
    Citations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Citation, name: "member"))
    CitationsConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled", traits: {"smithy.api#required" => {}}))
    CitationsConfig.type = Types::CitationsConfig
    CitationsContentBlock.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationGeneratedContentList, name: "content"))
    CitationsContentBlock.add_member(:citations, ::Smithy::Schema::Shapes::MemberShape.new(target: Citations, name: "citations"))
    CitationsContentBlock.type = Types::CitationsContentBlock
    CitationsDelta.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    CitationsDelta.add_member(:source_content, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationSourceContentListDelta, name: "sourceContent"))
    CitationsDelta.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationLocation, name: "location"))
    CitationsDelta.type = Types::CitationsDelta
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ConflictException.type = Types::ConflictException
    ContentBlock.add_member(:text, Types::ContentBlock::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    ContentBlock.add_member(:image, Types::ContentBlock::Image, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBlock, name: "image"))
    ContentBlock.add_member(:document, Types::ContentBlock::Document, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentBlock, name: "document"))
    ContentBlock.add_member(:video, Types::ContentBlock::Video, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoBlock, name: "video"))
    ContentBlock.add_member(:tool_use, Types::ContentBlock::ToolUse, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolUseBlock, name: "toolUse"))
    ContentBlock.add_member(:tool_result, Types::ContentBlock::ToolResult, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolResultBlock, name: "toolResult"))
    ContentBlock.add_member(:guard_content, Types::ContentBlock::GuardContent, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailConverseContentBlock, name: "guardContent"))
    ContentBlock.add_member(:cache_point, Types::ContentBlock::CachePoint, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePointBlock, name: "cachePoint"))
    ContentBlock.add_member(:reasoning_content, Types::ContentBlock::ReasoningContent, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasoningContentBlock, name: "reasoningContent"))
    ContentBlock.add_member(:citations_content, Types::ContentBlock::CitationsContent, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationsContentBlock, name: "citationsContent"))
    ContentBlock.add_member(:unknown, Types::ContentBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ContentBlock.type = Types::ContentBlock
    ContentBlockDelta.add_member(:text, Types::ContentBlockDelta::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    ContentBlockDelta.add_member(:tool_use, Types::ContentBlockDelta::ToolUse, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolUseBlockDelta, name: "toolUse"))
    ContentBlockDelta.add_member(:reasoning_content, Types::ContentBlockDelta::ReasoningContent, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasoningContentBlockDelta, name: "reasoningContent"))
    ContentBlockDelta.add_member(:citation, Types::ContentBlockDelta::Citation, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationsDelta, name: "citation"))
    ContentBlockDelta.add_member(:unknown, Types::ContentBlockDelta::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ContentBlockDelta.type = Types::ContentBlockDelta
    ContentBlockDeltaEvent.add_member(:delta, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentBlockDelta, name: "delta", traits: {"smithy.api#required" => {}}))
    ContentBlockDeltaEvent.add_member(:content_block_index, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "contentBlockIndex", traits: {"smithy.api#required" => {}}))
    ContentBlockDeltaEvent.type = Types::ContentBlockDeltaEvent
    ContentBlockStart.add_member(:tool_use, Types::ContentBlockStart::ToolUse, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolUseBlockStart, name: "toolUse"))
    ContentBlockStart.add_member(:unknown, Types::ContentBlockStart::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ContentBlockStart.type = Types::ContentBlockStart
    ContentBlockStartEvent.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentBlockStart, name: "start", traits: {"smithy.api#required" => {}}))
    ContentBlockStartEvent.add_member(:content_block_index, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "contentBlockIndex", traits: {"smithy.api#required" => {}}))
    ContentBlockStartEvent.type = Types::ContentBlockStartEvent
    ContentBlockStopEvent.add_member(:content_block_index, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInteger, name: "contentBlockIndex", traits: {"smithy.api#required" => {}}))
    ContentBlockStopEvent.type = Types::ContentBlockStopEvent
    ContentBlocks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentBlock, name: "member"))
    ConversationRole.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "user"}))
    ConversationRole.add_member(:assistant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSISTANT", traits: {"smithy.api#enumValue" => "assistant"}))
    ConverseMetrics.add_member(:latency_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "latencyMs", traits: {"smithy.api#required" => {}}))
    ConverseMetrics.type = Types::ConverseMetrics
    ConverseOutput.add_member(:message, Types::ConverseOutput::Message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ConverseOutput.add_member(:unknown, Types::ConverseOutput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConverseOutput.type = Types::ConverseOutput
    ConverseRequest.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationalModelId, name: "modelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ConverseRequest.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Messages, name: "messages"))
    ConverseRequest.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemContentBlocks, name: "system"))
    ConverseRequest.add_member(:inference_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceConfiguration, name: "inferenceConfig"))
    ConverseRequest.add_member(:tool_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolConfiguration, name: "toolConfig"))
    ConverseRequest.add_member(:guardrail_config, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailConfiguration, name: "guardrailConfig"))
    ConverseRequest.add_member(:additional_model_request_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "additionalModelRequestFields"))
    ConverseRequest.add_member(:prompt_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptVariableMap, name: "promptVariables"))
    ConverseRequest.add_member(:additional_model_response_field_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalModelResponseFieldPaths, name: "additionalModelResponseFieldPaths", traits: {"smithy.api#length" => {"max" => 10}}))
    ConverseRequest.add_member(:request_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestMetadata, name: "requestMetadata"))
    ConverseRequest.add_member(:performance_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfiguration, name: "performanceConfig"))
    ConverseRequest.type = Types::ConverseRequest
    ConverseResponse.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: ConverseOutput, name: "output", traits: {"smithy.api#required" => {}}))
    ConverseResponse.add_member(:stop_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StopReason, name: "stopReason", traits: {"smithy.api#required" => {}}))
    ConverseResponse.add_member(:usage, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenUsage, name: "usage", traits: {"smithy.api#required" => {}}))
    ConverseResponse.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ConverseMetrics, name: "metrics", traits: {"smithy.api#required" => {}}))
    ConverseResponse.add_member(:additional_model_response_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "additionalModelResponseFields"))
    ConverseResponse.add_member(:trace, ::Smithy::Schema::Shapes::MemberShape.new(target: ConverseTrace, name: "trace"))
    ConverseResponse.add_member(:performance_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfiguration, name: "performanceConfig"))
    ConverseResponse.type = Types::ConverseResponse
    ConverseStreamMetadataEvent.add_member(:usage, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenUsage, name: "usage", traits: {"smithy.api#required" => {}}))
    ConverseStreamMetadataEvent.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ConverseStreamMetrics, name: "metrics", traits: {"smithy.api#required" => {}}))
    ConverseStreamMetadataEvent.add_member(:trace, ::Smithy::Schema::Shapes::MemberShape.new(target: ConverseStreamTrace, name: "trace"))
    ConverseStreamMetadataEvent.add_member(:performance_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfiguration, name: "performanceConfig"))
    ConverseStreamMetadataEvent.type = Types::ConverseStreamMetadataEvent
    ConverseStreamMetrics.add_member(:latency_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "latencyMs", traits: {"smithy.api#required" => {}}))
    ConverseStreamMetrics.type = Types::ConverseStreamMetrics
    ConverseStreamOutput.add_member(:message_start, Types::ConverseStreamOutput::MessageStart, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageStartEvent, name: "messageStart"))
    ConverseStreamOutput.add_member(:content_block_start, Types::ConverseStreamOutput::ContentBlockStart, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentBlockStartEvent, name: "contentBlockStart"))
    ConverseStreamOutput.add_member(:content_block_delta, Types::ConverseStreamOutput::ContentBlockDelta, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentBlockDeltaEvent, name: "contentBlockDelta"))
    ConverseStreamOutput.add_member(:content_block_stop, Types::ConverseStreamOutput::ContentBlockStop, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentBlockStopEvent, name: "contentBlockStop"))
    ConverseStreamOutput.add_member(:message_stop, Types::ConverseStreamOutput::MessageStop, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageStopEvent, name: "messageStop"))
    ConverseStreamOutput.add_member(:metadata, Types::ConverseStreamOutput::Metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ConverseStreamMetadataEvent, name: "metadata"))
    ConverseStreamOutput.add_member(:internal_server_exception, Types::ConverseStreamOutput::InternalServerException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerException, name: "internalServerException"))
    ConverseStreamOutput.add_member(:model_stream_error_exception, Types::ConverseStreamOutput::ModelStreamErrorException, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStreamErrorException, name: "modelStreamErrorException"))
    ConverseStreamOutput.add_member(:validation_exception, Types::ConverseStreamOutput::ValidationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationException, name: "validationException"))
    ConverseStreamOutput.add_member(:throttling_exception, Types::ConverseStreamOutput::ThrottlingException, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingException, name: "throttlingException"))
    ConverseStreamOutput.add_member(:service_unavailable_exception, Types::ConverseStreamOutput::ServiceUnavailableException, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUnavailableException, name: "serviceUnavailableException"))
    ConverseStreamOutput.add_member(:unknown, Types::ConverseStreamOutput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConverseStreamOutput.type = Types::ConverseStreamOutput
    ConverseStreamRequest.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationalModelId, name: "modelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ConverseStreamRequest.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Messages, name: "messages"))
    ConverseStreamRequest.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemContentBlocks, name: "system"))
    ConverseStreamRequest.add_member(:inference_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceConfiguration, name: "inferenceConfig"))
    ConverseStreamRequest.add_member(:tool_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolConfiguration, name: "toolConfig"))
    ConverseStreamRequest.add_member(:guardrail_config, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailStreamConfiguration, name: "guardrailConfig"))
    ConverseStreamRequest.add_member(:additional_model_request_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "additionalModelRequestFields"))
    ConverseStreamRequest.add_member(:prompt_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptVariableMap, name: "promptVariables"))
    ConverseStreamRequest.add_member(:additional_model_response_field_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalModelResponseFieldPaths, name: "additionalModelResponseFieldPaths", traits: {"smithy.api#length" => {"max" => 10}}))
    ConverseStreamRequest.add_member(:request_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestMetadata, name: "requestMetadata"))
    ConverseStreamRequest.add_member(:performance_config, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfiguration, name: "performanceConfig"))
    ConverseStreamRequest.type = Types::ConverseStreamRequest
    ConverseStreamResponse.add_member(:stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ConverseStreamOutput, name: "stream", traits: {"smithy.api#httpPayload" => {}}))
    ConverseStreamResponse[:http_payload] = :stream
    ConverseStreamResponse[:http_payload_member] = ConverseStreamResponse.member(:stream)
    ConverseStreamResponse.type = Types::ConverseStreamResponse
    ConverseStreamTrace.add_member(:guardrail, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTraceAssessment, name: "guardrail"))
    ConverseStreamTrace.add_member(:prompt_router, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptRouterTrace, name: "promptRouter"))
    ConverseStreamTrace.type = Types::ConverseStreamTrace
    ConverseTokensRequest.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Messages, name: "messages"))
    ConverseTokensRequest.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemContentBlocks, name: "system"))
    ConverseTokensRequest.type = Types::ConverseTokensRequest
    ConverseTrace.add_member(:guardrail, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTraceAssessment, name: "guardrail"))
    ConverseTrace.add_member(:prompt_router, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptRouterTrace, name: "promptRouter"))
    ConverseTrace.type = Types::ConverseTrace
    CountTokensInput.add_member(:invoke_model, Types::CountTokensInput::InvokeModel, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeModelTokensRequest, name: "invokeModel"))
    CountTokensInput.add_member(:converse, Types::CountTokensInput::Converse, ::Smithy::Schema::Shapes::MemberShape.new(target: ConverseTokensRequest, name: "converse"))
    CountTokensInput.add_member(:unknown, Types::CountTokensInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CountTokensInput.type = Types::CountTokensInput
    CountTokensRequest.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FoundationModelVersionIdentifier, name: "modelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CountTokensRequest.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: CountTokensInput, name: "input", traits: {"smithy.api#required" => {}}))
    CountTokensRequest.type = Types::CountTokensRequest
    CountTokensResponse.add_member(:input_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "inputTokens", traits: {"smithy.api#required" => {}}))
    CountTokensResponse.type = Types::CountTokensResponse
    DocumentBlock.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentFormat, name: "format", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "txt"}))
    DocumentBlock.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#required" => {}}))
    DocumentBlock.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentSource, name: "source", traits: {"smithy.api#required" => {}}))
    DocumentBlock.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "context"))
    DocumentBlock.add_member(:citations, ::Smithy::Schema::Shapes::MemberShape.new(target: CitationsConfig, name: "citations"))
    DocumentBlock.type = Types::DocumentBlock
    DocumentCharLocation.add_member(:document_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "documentIndex", traits: {"smithy.api#range" => {"min" => 0}}))
    DocumentCharLocation.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "start", traits: {"smithy.api#range" => {"min" => 0}}))
    DocumentCharLocation.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "end", traits: {"smithy.api#range" => {"min" => 0}}))
    DocumentCharLocation.type = Types::DocumentCharLocation
    DocumentChunkLocation.add_member(:document_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "documentIndex", traits: {"smithy.api#range" => {"min" => 0}}))
    DocumentChunkLocation.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "start", traits: {"smithy.api#range" => {"min" => 0}}))
    DocumentChunkLocation.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "end", traits: {"smithy.api#range" => {"min" => 0}}))
    DocumentChunkLocation.type = Types::DocumentChunkLocation
    DocumentContentBlock.add_member(:text, Types::DocumentContentBlock::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    DocumentContentBlock.add_member(:unknown, Types::DocumentContentBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DocumentContentBlock.type = Types::DocumentContentBlock
    DocumentContentBlocks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentContentBlock, name: "member"))
    DocumentFormat.add_member(:pdf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PDF", traits: {"smithy.api#enumValue" => "pdf"}))
    DocumentFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "csv"}))
    DocumentFormat.add_member(:doc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOC", traits: {"smithy.api#enumValue" => "doc"}))
    DocumentFormat.add_member(:docx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCX", traits: {"smithy.api#enumValue" => "docx"}))
    DocumentFormat.add_member(:xls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XLS", traits: {"smithy.api#enumValue" => "xls"}))
    DocumentFormat.add_member(:xlsx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XLSX", traits: {"smithy.api#enumValue" => "xlsx"}))
    DocumentFormat.add_member(:html, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTML", traits: {"smithy.api#enumValue" => "html"}))
    DocumentFormat.add_member(:txt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TXT", traits: {"smithy.api#enumValue" => "txt"}))
    DocumentFormat.add_member(:md, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MD", traits: {"smithy.api#enumValue" => "md"}))
    DocumentPageLocation.add_member(:document_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "documentIndex", traits: {"smithy.api#range" => {"min" => 0}}))
    DocumentPageLocation.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "start", traits: {"smithy.api#range" => {"min" => 0}}))
    DocumentPageLocation.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "end", traits: {"smithy.api#range" => {"min" => 0}}))
    DocumentPageLocation.type = Types::DocumentPageLocation
    DocumentSource.add_member(:bytes, Types::DocumentSource::Bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "bytes", traits: {"smithy.api#length" => {"min" => 1}}))
    DocumentSource.add_member(:s3_location, Types::DocumentSource::S3Location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "s3Location"))
    DocumentSource.add_member(:text, Types::DocumentSource::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    DocumentSource.add_member(:content, Types::DocumentSource::Content, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentContentBlocks, name: "content"))
    DocumentSource.add_member(:unknown, Types::DocumentSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DocumentSource.type = Types::DocumentSource
    GetAsyncInvokeRequest.add_member(:invocation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationArn, name: "invocationArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAsyncInvokeRequest.type = Types::GetAsyncInvokeRequest
    GetAsyncInvokeResponse.add_member(:invocation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationArn, name: "invocationArn", traits: {"smithy.api#required" => {}}))
    GetAsyncInvokeResponse.add_member(:model_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeArn, name: "modelArn", traits: {"smithy.api#required" => {}}))
    GetAsyncInvokeResponse.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeIdempotencyToken, name: "clientRequestToken"))
    GetAsyncInvokeResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetAsyncInvokeResponse.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeMessage, name: "failureMessage"))
    GetAsyncInvokeResponse.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "submitTime", traits: {"smithy.api#required" => {}}))
    GetAsyncInvokeResponse.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastModifiedTime"))
    GetAsyncInvokeResponse.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    GetAsyncInvokeResponse.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeOutputDataConfig, name: "outputDataConfig", traits: {"smithy.api#required" => {}}))
    GetAsyncInvokeResponse.type = Types::GetAsyncInvokeResponse
    GuardrailAction.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailAction.add_member(:guardrail_intervened, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARDRAIL_INTERVENED", traits: {"smithy.api#enumValue" => "GUARDRAIL_INTERVENED"}))
    GuardrailAssessment.add_member(:topic_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicPolicyAssessment, name: "topicPolicy"))
    GuardrailAssessment.add_member(:content_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentPolicyAssessment, name: "contentPolicy"))
    GuardrailAssessment.add_member(:word_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailWordPolicyAssessment, name: "wordPolicy"))
    GuardrailAssessment.add_member(:sensitive_information_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailSensitiveInformationPolicyAssessment, name: "sensitiveInformationPolicy"))
    GuardrailAssessment.add_member(:contextual_grounding_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContextualGroundingPolicyAssessment, name: "contextualGroundingPolicy"))
    GuardrailAssessment.add_member(:automated_reasoning_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningPolicyAssessment, name: "automatedReasoningPolicy"))
    GuardrailAssessment.add_member(:invocation_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailInvocationMetrics, name: "invocationMetrics"))
    GuardrailAssessment.type = Types::GuardrailAssessment
    GuardrailAssessmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAssessment, name: "member"))
    GuardrailAssessmentListMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    GuardrailAssessmentListMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAssessmentList, name: "value"))
    GuardrailAssessmentMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    GuardrailAssessmentMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAssessment, name: "value"))
    GuardrailAutomatedReasoningDifferenceScenarioList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningScenario, name: "member"))
    GuardrailAutomatedReasoningFinding.add_member(:valid, Types::GuardrailAutomatedReasoningFinding::Valid, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningValidFinding, name: "valid"))
    GuardrailAutomatedReasoningFinding.add_member(:invalid, Types::GuardrailAutomatedReasoningFinding::Invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningInvalidFinding, name: "invalid"))
    GuardrailAutomatedReasoningFinding.add_member(:satisfiable, Types::GuardrailAutomatedReasoningFinding::Satisfiable, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningSatisfiableFinding, name: "satisfiable"))
    GuardrailAutomatedReasoningFinding.add_member(:impossible, Types::GuardrailAutomatedReasoningFinding::Impossible, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningImpossibleFinding, name: "impossible"))
    GuardrailAutomatedReasoningFinding.add_member(:translation_ambiguous, Types::GuardrailAutomatedReasoningFinding::TranslationAmbiguous, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningTranslationAmbiguousFinding, name: "translationAmbiguous"))
    GuardrailAutomatedReasoningFinding.add_member(:too_complex, Types::GuardrailAutomatedReasoningFinding::TooComplex, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningTooComplexFinding, name: "tooComplex"))
    GuardrailAutomatedReasoningFinding.add_member(:no_translations, Types::GuardrailAutomatedReasoningFinding::NoTranslations, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningNoTranslationsFinding, name: "noTranslations"))
    GuardrailAutomatedReasoningFinding.add_member(:unknown, Types::GuardrailAutomatedReasoningFinding::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    GuardrailAutomatedReasoningFinding.type = Types::GuardrailAutomatedReasoningFinding
    GuardrailAutomatedReasoningFindingList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningFinding, name: "member"))
    GuardrailAutomatedReasoningImpossibleFinding.add_member(:translation, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningTranslation, name: "translation"))
    GuardrailAutomatedReasoningImpossibleFinding.add_member(:contradicting_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningRuleList, name: "contradictingRules"))
    GuardrailAutomatedReasoningImpossibleFinding.add_member(:logic_warning, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningLogicWarning, name: "logicWarning"))
    GuardrailAutomatedReasoningImpossibleFinding.type = Types::GuardrailAutomatedReasoningImpossibleFinding
    GuardrailAutomatedReasoningInputTextReference.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningStatementNaturalLanguageContent, name: "text"))
    GuardrailAutomatedReasoningInputTextReference.type = Types::GuardrailAutomatedReasoningInputTextReference
    GuardrailAutomatedReasoningInputTextReferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningInputTextReference, name: "member"))
    GuardrailAutomatedReasoningInvalidFinding.add_member(:translation, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningTranslation, name: "translation"))
    GuardrailAutomatedReasoningInvalidFinding.add_member(:contradicting_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningRuleList, name: "contradictingRules"))
    GuardrailAutomatedReasoningInvalidFinding.add_member(:logic_warning, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningLogicWarning, name: "logicWarning"))
    GuardrailAutomatedReasoningInvalidFinding.type = Types::GuardrailAutomatedReasoningInvalidFinding
    GuardrailAutomatedReasoningLogicWarning.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningLogicWarningType, name: "type"))
    GuardrailAutomatedReasoningLogicWarning.add_member(:premises, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningStatementList, name: "premises"))
    GuardrailAutomatedReasoningLogicWarning.add_member(:claims, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningStatementList, name: "claims"))
    GuardrailAutomatedReasoningLogicWarning.type = Types::GuardrailAutomatedReasoningLogicWarning
    GuardrailAutomatedReasoningLogicWarningType.add_member(:always_false, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALWAYS_FALSE", traits: {"smithy.api#enumValue" => "ALWAYS_FALSE"}))
    GuardrailAutomatedReasoningLogicWarningType.add_member(:always_true, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALWAYS_TRUE", traits: {"smithy.api#enumValue" => "ALWAYS_TRUE"}))
    GuardrailAutomatedReasoningNoTranslationsFinding.type = Types::GuardrailAutomatedReasoningNoTranslationsFinding
    GuardrailAutomatedReasoningPolicyAssessment.add_member(:findings, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningFindingList, name: "findings"))
    GuardrailAutomatedReasoningPolicyAssessment.type = Types::GuardrailAutomatedReasoningPolicyAssessment
    GuardrailAutomatedReasoningRule.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomatedReasoningRuleIdentifier, name: "identifier"))
    GuardrailAutomatedReasoningRule.add_member(:policy_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningPolicyVersionArn, name: "policyVersionArn"))
    GuardrailAutomatedReasoningRule.type = Types::GuardrailAutomatedReasoningRule
    GuardrailAutomatedReasoningRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningRule, name: "member"))
    GuardrailAutomatedReasoningSatisfiableFinding.add_member(:translation, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningTranslation, name: "translation"))
    GuardrailAutomatedReasoningSatisfiableFinding.add_member(:claims_true_scenario, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningScenario, name: "claimsTrueScenario"))
    GuardrailAutomatedReasoningSatisfiableFinding.add_member(:claims_false_scenario, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningScenario, name: "claimsFalseScenario"))
    GuardrailAutomatedReasoningSatisfiableFinding.add_member(:logic_warning, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningLogicWarning, name: "logicWarning"))
    GuardrailAutomatedReasoningSatisfiableFinding.type = Types::GuardrailAutomatedReasoningSatisfiableFinding
    GuardrailAutomatedReasoningScenario.add_member(:statements, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningStatementList, name: "statements"))
    GuardrailAutomatedReasoningScenario.type = Types::GuardrailAutomatedReasoningScenario
    GuardrailAutomatedReasoningStatement.add_member(:logic, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningStatementLogicContent, name: "logic"))
    GuardrailAutomatedReasoningStatement.add_member(:natural_language, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningStatementNaturalLanguageContent, name: "naturalLanguage"))
    GuardrailAutomatedReasoningStatement.type = Types::GuardrailAutomatedReasoningStatement
    GuardrailAutomatedReasoningStatementList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningStatement, name: "member"))
    GuardrailAutomatedReasoningTooComplexFinding.type = Types::GuardrailAutomatedReasoningTooComplexFinding
    GuardrailAutomatedReasoningTranslation.add_member(:premises, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningStatementList, name: "premises"))
    GuardrailAutomatedReasoningTranslation.add_member(:claims, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningStatementList, name: "claims"))
    GuardrailAutomatedReasoningTranslation.add_member(:untranslated_premises, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningInputTextReferenceList, name: "untranslatedPremises"))
    GuardrailAutomatedReasoningTranslation.add_member(:untranslated_claims, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningInputTextReferenceList, name: "untranslatedClaims"))
    GuardrailAutomatedReasoningTranslation.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningTranslationConfidence, name: "confidence"))
    GuardrailAutomatedReasoningTranslation.type = Types::GuardrailAutomatedReasoningTranslation
    GuardrailAutomatedReasoningTranslationAmbiguousFinding.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningTranslationOptionList, name: "options"))
    GuardrailAutomatedReasoningTranslationAmbiguousFinding.add_member(:difference_scenarios, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningDifferenceScenarioList, name: "differenceScenarios"))
    GuardrailAutomatedReasoningTranslationAmbiguousFinding.type = Types::GuardrailAutomatedReasoningTranslationAmbiguousFinding
    GuardrailAutomatedReasoningTranslationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningTranslation, name: "member"))
    GuardrailAutomatedReasoningTranslationOption.add_member(:translations, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningTranslationList, name: "translations"))
    GuardrailAutomatedReasoningTranslationOption.type = Types::GuardrailAutomatedReasoningTranslationOption
    GuardrailAutomatedReasoningTranslationOptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningTranslationOption, name: "member"))
    GuardrailAutomatedReasoningValidFinding.add_member(:translation, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningTranslation, name: "translation"))
    GuardrailAutomatedReasoningValidFinding.add_member(:claims_true_scenario, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningScenario, name: "claimsTrueScenario"))
    GuardrailAutomatedReasoningValidFinding.add_member(:supporting_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningRuleList, name: "supportingRules"))
    GuardrailAutomatedReasoningValidFinding.add_member(:logic_warning, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningLogicWarning, name: "logicWarning"))
    GuardrailAutomatedReasoningValidFinding.type = Types::GuardrailAutomatedReasoningValidFinding
    GuardrailConfiguration.add_member(:guardrail_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailIdentifier, name: "guardrailIdentifier", traits: {"smithy.api#required" => {}}))
    GuardrailConfiguration.add_member(:guardrail_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailVersion, name: "guardrailVersion", traits: {"smithy.api#required" => {}}))
    GuardrailConfiguration.add_member(:trace, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTrace, name: "trace", traits: {"smithy.api#default" => "disabled"}))
    GuardrailConfiguration.type = Types::GuardrailConfiguration
    GuardrailContentBlock.add_member(:text, Types::GuardrailContentBlock::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTextBlock, name: "text"))
    GuardrailContentBlock.add_member(:image, Types::GuardrailContentBlock::Image, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailImageBlock, name: "image"))
    GuardrailContentBlock.add_member(:unknown, Types::GuardrailContentBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    GuardrailContentBlock.type = Types::GuardrailContentBlock
    GuardrailContentBlockList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentBlock, name: "member"))
    GuardrailContentFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentFilterType, name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailContentFilter.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentFilterConfidence, name: "confidence", traits: {"smithy.api#required" => {}}))
    GuardrailContentFilter.add_member(:filter_strength, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentFilterStrength, name: "filterStrength"))
    GuardrailContentFilter.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentPolicyAction, name: "action", traits: {"smithy.api#required" => {}}))
    GuardrailContentFilter.add_member(:detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "detected"))
    GuardrailContentFilter.type = Types::GuardrailContentFilter
    GuardrailContentFilterConfidence.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailContentFilterConfidence.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    GuardrailContentFilterConfidence.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    GuardrailContentFilterConfidence.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    GuardrailContentFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentFilter, name: "member"))
    GuardrailContentFilterStrength.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailContentFilterStrength.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    GuardrailContentFilterStrength.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    GuardrailContentFilterStrength.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    GuardrailContentFilterType.add_member(:insults, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSULTS", traits: {"smithy.api#enumValue" => "INSULTS"}))
    GuardrailContentFilterType.add_member(:hate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HATE", traits: {"smithy.api#enumValue" => "HATE"}))
    GuardrailContentFilterType.add_member(:sexual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEXUAL", traits: {"smithy.api#enumValue" => "SEXUAL"}))
    GuardrailContentFilterType.add_member(:violence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIOLENCE", traits: {"smithy.api#enumValue" => "VIOLENCE"}))
    GuardrailContentFilterType.add_member(:misconduct, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISCONDUCT", traits: {"smithy.api#enumValue" => "MISCONDUCT"}))
    GuardrailContentFilterType.add_member(:prompt_attack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROMPT_ATTACK", traits: {"smithy.api#enumValue" => "PROMPT_ATTACK"}))
    GuardrailContentPolicyAction.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCKED", traits: {"smithy.api#enumValue" => "BLOCKED"}))
    GuardrailContentPolicyAction.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailContentPolicyAssessment.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentFilterList, name: "filters", traits: {"smithy.api#required" => {}}))
    GuardrailContentPolicyAssessment.type = Types::GuardrailContentPolicyAssessment
    GuardrailContentQualifier.add_member(:grounding_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUNDING_SOURCE", traits: {"smithy.api#enumValue" => "grounding_source"}))
    GuardrailContentQualifier.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERY", traits: {"smithy.api#enumValue" => "query"}))
    GuardrailContentQualifier.add_member(:guard_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARD_CONTENT", traits: {"smithy.api#enumValue" => "guard_content"}))
    GuardrailContentQualifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentQualifier, name: "member"))
    GuardrailContentSource.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INPUT", traits: {"smithy.api#enumValue" => "INPUT"}))
    GuardrailContentSource.add_member(:output, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTPUT", traits: {"smithy.api#enumValue" => "OUTPUT"}))
    GuardrailContextualGroundingFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContextualGroundingFilterType, name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailContextualGroundingFilter.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "threshold", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}, "smithy.api#required" => {}}))
    GuardrailContextualGroundingFilter.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "score", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}, "smithy.api#required" => {}}))
    GuardrailContextualGroundingFilter.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContextualGroundingPolicyAction, name: "action", traits: {"smithy.api#required" => {}}))
    GuardrailContextualGroundingFilter.add_member(:detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "detected"))
    GuardrailContextualGroundingFilter.type = Types::GuardrailContextualGroundingFilter
    GuardrailContextualGroundingFilterType.add_member(:grounding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUNDING", traits: {"smithy.api#enumValue" => "GROUNDING"}))
    GuardrailContextualGroundingFilterType.add_member(:relevance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELEVANCE", traits: {"smithy.api#enumValue" => "RELEVANCE"}))
    GuardrailContextualGroundingFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContextualGroundingFilter, name: "member"))
    GuardrailContextualGroundingPolicyAction.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCKED", traits: {"smithy.api#enumValue" => "BLOCKED"}))
    GuardrailContextualGroundingPolicyAction.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailContextualGroundingPolicyAssessment.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContextualGroundingFilters, name: "filters"))
    GuardrailContextualGroundingPolicyAssessment.type = Types::GuardrailContextualGroundingPolicyAssessment
    GuardrailConverseContentBlock.add_member(:text, Types::GuardrailConverseContentBlock::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailConverseTextBlock, name: "text"))
    GuardrailConverseContentBlock.add_member(:image, Types::GuardrailConverseContentBlock::Image, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailConverseImageBlock, name: "image"))
    GuardrailConverseContentBlock.add_member(:unknown, Types::GuardrailConverseContentBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    GuardrailConverseContentBlock.type = Types::GuardrailConverseContentBlock
    GuardrailConverseContentQualifier.add_member(:grounding_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUNDING_SOURCE", traits: {"smithy.api#enumValue" => "grounding_source"}))
    GuardrailConverseContentQualifier.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERY", traits: {"smithy.api#enumValue" => "query"}))
    GuardrailConverseContentQualifier.add_member(:guard_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARD_CONTENT", traits: {"smithy.api#enumValue" => "guard_content"}))
    GuardrailConverseContentQualifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailConverseContentQualifier, name: "member"))
    GuardrailConverseImageBlock.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailConverseImageFormat, name: "format", traits: {"smithy.api#required" => {}}))
    GuardrailConverseImageBlock.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailConverseImageSource, name: "source", traits: {"smithy.api#required" => {}}))
    GuardrailConverseImageBlock.type = Types::GuardrailConverseImageBlock
    GuardrailConverseImageFormat.add_member(:png, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PNG", traits: {"smithy.api#enumValue" => "png"}))
    GuardrailConverseImageFormat.add_member(:jpeg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JPEG", traits: {"smithy.api#enumValue" => "jpeg"}))
    GuardrailConverseImageSource.add_member(:bytes, Types::GuardrailConverseImageSource::Bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "bytes", traits: {"smithy.api#length" => {"min" => 1}}))
    GuardrailConverseImageSource.add_member(:unknown, Types::GuardrailConverseImageSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    GuardrailConverseImageSource.type = Types::GuardrailConverseImageSource
    GuardrailConverseTextBlock.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#required" => {}}))
    GuardrailConverseTextBlock.add_member(:qualifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailConverseContentQualifierList, name: "qualifiers"))
    GuardrailConverseTextBlock.type = Types::GuardrailConverseTextBlock
    GuardrailCoverage.add_member(:text_characters, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTextCharactersCoverage, name: "textCharacters"))
    GuardrailCoverage.add_member(:images, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailImageCoverage, name: "images"))
    GuardrailCoverage.type = Types::GuardrailCoverage
    GuardrailCustomWord.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "match", traits: {"smithy.api#required" => {}}))
    GuardrailCustomWord.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailWordPolicyAction, name: "action", traits: {"smithy.api#required" => {}}))
    GuardrailCustomWord.add_member(:detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "detected"))
    GuardrailCustomWord.type = Types::GuardrailCustomWord
    GuardrailCustomWordList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailCustomWord, name: "member"))
    GuardrailImageBlock.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailImageFormat, name: "format", traits: {"smithy.api#required" => {}}))
    GuardrailImageBlock.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailImageSource, name: "source", traits: {"smithy.api#required" => {}}))
    GuardrailImageBlock.type = Types::GuardrailImageBlock
    GuardrailImageCoverage.add_member(:guarded, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagesGuarded, name: "guarded"))
    GuardrailImageCoverage.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagesTotal, name: "total"))
    GuardrailImageCoverage.type = Types::GuardrailImageCoverage
    GuardrailImageFormat.add_member(:png, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PNG", traits: {"smithy.api#enumValue" => "png"}))
    GuardrailImageFormat.add_member(:jpeg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JPEG", traits: {"smithy.api#enumValue" => "jpeg"}))
    GuardrailImageSource.add_member(:bytes, Types::GuardrailImageSource::Bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "bytes", traits: {"smithy.api#length" => {"min" => 1}}))
    GuardrailImageSource.add_member(:unknown, Types::GuardrailImageSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    GuardrailImageSource.type = Types::GuardrailImageSource
    GuardrailInvocationMetrics.add_member(:guardrail_processing_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailProcessingLatency, name: "guardrailProcessingLatency"))
    GuardrailInvocationMetrics.add_member(:usage, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailUsage, name: "usage"))
    GuardrailInvocationMetrics.add_member(:guardrail_coverage, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailCoverage, name: "guardrailCoverage"))
    GuardrailInvocationMetrics.type = Types::GuardrailInvocationMetrics
    GuardrailManagedWord.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "match", traits: {"smithy.api#required" => {}}))
    GuardrailManagedWord.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailManagedWordType, name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailManagedWord.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailWordPolicyAction, name: "action", traits: {"smithy.api#required" => {}}))
    GuardrailManagedWord.add_member(:detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "detected"))
    GuardrailManagedWord.type = Types::GuardrailManagedWord
    GuardrailManagedWordList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailManagedWord, name: "member"))
    GuardrailManagedWordType.add_member(:profanity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFANITY", traits: {"smithy.api#enumValue" => "PROFANITY"}))
    GuardrailOutputContent.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailOutputText, name: "text"))
    GuardrailOutputContent.type = Types::GuardrailOutputContent
    GuardrailOutputContentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailOutputContent, name: "member"))
    GuardrailOutputScope.add_member(:interventions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERVENTIONS", traits: {"smithy.api#enumValue" => "INTERVENTIONS"}))
    GuardrailOutputScope.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    GuardrailPiiEntityFilter.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "match", traits: {"smithy.api#required" => {}}))
    GuardrailPiiEntityFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailPiiEntityType, name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailPiiEntityFilter.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailSensitiveInformationPolicyAction, name: "action", traits: {"smithy.api#required" => {}}))
    GuardrailPiiEntityFilter.add_member(:detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "detected"))
    GuardrailPiiEntityFilter.type = Types::GuardrailPiiEntityFilter
    GuardrailPiiEntityFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailPiiEntityFilter, name: "member"))
    GuardrailPiiEntityType.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDRESS", traits: {"smithy.api#enumValue" => "ADDRESS"}))
    GuardrailPiiEntityType.add_member(:age, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGE", traits: {"smithy.api#enumValue" => "AGE"}))
    GuardrailPiiEntityType.add_member(:aws_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_ACCESS_KEY", traits: {"smithy.api#enumValue" => "AWS_ACCESS_KEY"}))
    GuardrailPiiEntityType.add_member(:aws_secret_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SECRET_KEY", traits: {"smithy.api#enumValue" => "AWS_SECRET_KEY"}))
    GuardrailPiiEntityType.add_member(:ca_health_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_HEALTH_NUMBER", traits: {"smithy.api#enumValue" => "CA_HEALTH_NUMBER"}))
    GuardrailPiiEntityType.add_member(:ca_social_insurance_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_SOCIAL_INSURANCE_NUMBER", traits: {"smithy.api#enumValue" => "CA_SOCIAL_INSURANCE_NUMBER"}))
    GuardrailPiiEntityType.add_member(:credit_debit_card_cvv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_DEBIT_CARD_CVV", traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_CARD_CVV"}))
    GuardrailPiiEntityType.add_member(:credit_debit_card_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_DEBIT_CARD_EXPIRY", traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_CARD_EXPIRY"}))
    GuardrailPiiEntityType.add_member(:credit_debit_card_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_DEBIT_CARD_NUMBER", traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_CARD_NUMBER"}))
    GuardrailPiiEntityType.add_member(:driver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRIVER_ID", traits: {"smithy.api#enumValue" => "DRIVER_ID"}))
    GuardrailPiiEntityType.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL", traits: {"smithy.api#enumValue" => "EMAIL"}))
    GuardrailPiiEntityType.add_member(:international_bank_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNATIONAL_BANK_ACCOUNT_NUMBER", traits: {"smithy.api#enumValue" => "INTERNATIONAL_BANK_ACCOUNT_NUMBER"}))
    GuardrailPiiEntityType.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_ADDRESS", traits: {"smithy.api#enumValue" => "IP_ADDRESS"}))
    GuardrailPiiEntityType.add_member(:license_plate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE_PLATE", traits: {"smithy.api#enumValue" => "LICENSE_PLATE"}))
    GuardrailPiiEntityType.add_member(:mac_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAC_ADDRESS", traits: {"smithy.api#enumValue" => "MAC_ADDRESS"}))
    GuardrailPiiEntityType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    GuardrailPiiEntityType.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSWORD", traits: {"smithy.api#enumValue" => "PASSWORD"}))
    GuardrailPiiEntityType.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHONE", traits: {"smithy.api#enumValue" => "PHONE"}))
    GuardrailPiiEntityType.add_member(:pin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PIN", traits: {"smithy.api#enumValue" => "PIN"}))
    GuardrailPiiEntityType.add_member(:swift_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SWIFT_CODE", traits: {"smithy.api#enumValue" => "SWIFT_CODE"}))
    GuardrailPiiEntityType.add_member(:uk_national_health_service_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UK_NATIONAL_HEALTH_SERVICE_NUMBER", traits: {"smithy.api#enumValue" => "UK_NATIONAL_HEALTH_SERVICE_NUMBER"}))
    GuardrailPiiEntityType.add_member(:uk_national_insurance_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UK_NATIONAL_INSURANCE_NUMBER", traits: {"smithy.api#enumValue" => "UK_NATIONAL_INSURANCE_NUMBER"}))
    GuardrailPiiEntityType.add_member(:uk_unique_taxpayer_reference_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", traits: {"smithy.api#enumValue" => "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"}))
    GuardrailPiiEntityType.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL", traits: {"smithy.api#enumValue" => "URL"}))
    GuardrailPiiEntityType.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USERNAME", traits: {"smithy.api#enumValue" => "USERNAME"}))
    GuardrailPiiEntityType.add_member(:us_bank_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_BANK_ACCOUNT_NUMBER", traits: {"smithy.api#enumValue" => "US_BANK_ACCOUNT_NUMBER"}))
    GuardrailPiiEntityType.add_member(:us_bank_routing_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_BANK_ROUTING_NUMBER", traits: {"smithy.api#enumValue" => "US_BANK_ROUTING_NUMBER"}))
    GuardrailPiiEntityType.add_member(:us_individual_tax_identification_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", traits: {"smithy.api#enumValue" => "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER"}))
    GuardrailPiiEntityType.add_member(:us_passport_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_PASSPORT_NUMBER", traits: {"smithy.api#enumValue" => "US_PASSPORT_NUMBER"}))
    GuardrailPiiEntityType.add_member(:us_social_security_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_SOCIAL_SECURITY_NUMBER", traits: {"smithy.api#enumValue" => "US_SOCIAL_SECURITY_NUMBER"}))
    GuardrailPiiEntityType.add_member(:vehicle_identification_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VEHICLE_IDENTIFICATION_NUMBER", traits: {"smithy.api#enumValue" => "VEHICLE_IDENTIFICATION_NUMBER"}))
    GuardrailRegexFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    GuardrailRegexFilter.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "match"))
    GuardrailRegexFilter.add_member(:regex, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "regex"))
    GuardrailRegexFilter.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailSensitiveInformationPolicyAction, name: "action", traits: {"smithy.api#required" => {}}))
    GuardrailRegexFilter.add_member(:detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "detected"))
    GuardrailRegexFilter.type = Types::GuardrailRegexFilter
    GuardrailRegexFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailRegexFilter, name: "member"))
    GuardrailSensitiveInformationPolicyAction.add_member(:anonymized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANONYMIZED", traits: {"smithy.api#enumValue" => "ANONYMIZED"}))
    GuardrailSensitiveInformationPolicyAction.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCKED", traits: {"smithy.api#enumValue" => "BLOCKED"}))
    GuardrailSensitiveInformationPolicyAction.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailSensitiveInformationPolicyAssessment.add_member(:pii_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailPiiEntityFilterList, name: "piiEntities", traits: {"smithy.api#required" => {}}))
    GuardrailSensitiveInformationPolicyAssessment.add_member(:regexes, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailRegexFilterList, name: "regexes", traits: {"smithy.api#required" => {}}))
    GuardrailSensitiveInformationPolicyAssessment.type = Types::GuardrailSensitiveInformationPolicyAssessment
    GuardrailStreamConfiguration.add_member(:guardrail_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailIdentifier, name: "guardrailIdentifier", traits: {"smithy.api#required" => {}}))
    GuardrailStreamConfiguration.add_member(:guardrail_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailVersion, name: "guardrailVersion", traits: {"smithy.api#required" => {}}))
    GuardrailStreamConfiguration.add_member(:trace, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTrace, name: "trace", traits: {"smithy.api#default" => "disabled"}))
    GuardrailStreamConfiguration.add_member(:stream_processing_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailStreamProcessingMode, name: "streamProcessingMode", traits: {"smithy.api#default" => "sync"}))
    GuardrailStreamConfiguration.type = Types::GuardrailStreamConfiguration
    GuardrailStreamProcessingMode.add_member(:sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNC", traits: {"smithy.api#enumValue" => "sync"}))
    GuardrailStreamProcessingMode.add_member(:async, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASYNC", traits: {"smithy.api#enumValue" => "async"}))
    GuardrailTextBlock.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#required" => {}}))
    GuardrailTextBlock.add_member(:qualifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentQualifierList, name: "qualifiers"))
    GuardrailTextBlock.type = Types::GuardrailTextBlock
    GuardrailTextCharactersCoverage.add_member(:guarded, ::Smithy::Schema::Shapes::MemberShape.new(target: TextCharactersGuarded, name: "guarded"))
    GuardrailTextCharactersCoverage.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: TextCharactersTotal, name: "total"))
    GuardrailTextCharactersCoverage.type = Types::GuardrailTextCharactersCoverage
    GuardrailTopic.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    GuardrailTopic.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicType, name: "type", traits: {"smithy.api#required" => {}}))
    GuardrailTopic.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicPolicyAction, name: "action", traits: {"smithy.api#required" => {}}))
    GuardrailTopic.add_member(:detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "detected"))
    GuardrailTopic.type = Types::GuardrailTopic
    GuardrailTopicList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopic, name: "member"))
    GuardrailTopicPolicyAction.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCKED", traits: {"smithy.api#enumValue" => "BLOCKED"}))
    GuardrailTopicPolicyAction.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailTopicPolicyAssessment.add_member(:topics, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicList, name: "topics", traits: {"smithy.api#required" => {}}))
    GuardrailTopicPolicyAssessment.type = Types::GuardrailTopicPolicyAssessment
    GuardrailTopicType.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    GuardrailTrace.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    GuardrailTrace.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    GuardrailTrace.add_member(:enabled_full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED_FULL", traits: {"smithy.api#enumValue" => "enabled_full"}))
    GuardrailTraceAssessment.add_member(:model_output, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelOutputs, name: "modelOutput"))
    GuardrailTraceAssessment.add_member(:input_assessment, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAssessmentMap, name: "inputAssessment"))
    GuardrailTraceAssessment.add_member(:output_assessments, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAssessmentListMap, name: "outputAssessments"))
    GuardrailTraceAssessment.add_member(:action_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "actionReason"))
    GuardrailTraceAssessment.type = Types::GuardrailTraceAssessment
    GuardrailUsage.add_member(:topic_policy_units, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailTopicPolicyUnitsProcessed, name: "topicPolicyUnits", traits: {"smithy.api#required" => {}}))
    GuardrailUsage.add_member(:content_policy_units, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentPolicyUnitsProcessed, name: "contentPolicyUnits", traits: {"smithy.api#required" => {}}))
    GuardrailUsage.add_member(:word_policy_units, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailWordPolicyUnitsProcessed, name: "wordPolicyUnits", traits: {"smithy.api#required" => {}}))
    GuardrailUsage.add_member(:sensitive_information_policy_units, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailSensitiveInformationPolicyUnitsProcessed, name: "sensitiveInformationPolicyUnits", traits: {"smithy.api#required" => {}}))
    GuardrailUsage.add_member(:sensitive_information_policy_free_units, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailSensitiveInformationPolicyFreeUnitsProcessed, name: "sensitiveInformationPolicyFreeUnits", traits: {"smithy.api#required" => {}}))
    GuardrailUsage.add_member(:contextual_grounding_policy_units, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContextualGroundingPolicyUnitsProcessed, name: "contextualGroundingPolicyUnits", traits: {"smithy.api#required" => {}}))
    GuardrailUsage.add_member(:content_policy_image_units, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailContentPolicyImageUnitsProcessed, name: "contentPolicyImageUnits"))
    GuardrailUsage.add_member(:automated_reasoning_policy_units, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningPolicyUnitsProcessed, name: "automatedReasoningPolicyUnits"))
    GuardrailUsage.add_member(:automated_reasoning_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailAutomatedReasoningPoliciesProcessed, name: "automatedReasoningPolicies"))
    GuardrailUsage.type = Types::GuardrailUsage
    GuardrailWordPolicyAction.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCKED", traits: {"smithy.api#enumValue" => "BLOCKED"}))
    GuardrailWordPolicyAction.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    GuardrailWordPolicyAssessment.add_member(:custom_words, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailCustomWordList, name: "customWords", traits: {"smithy.api#required" => {}}))
    GuardrailWordPolicyAssessment.add_member(:managed_word_lists, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailManagedWordList, name: "managedWordLists", traits: {"smithy.api#required" => {}}))
    GuardrailWordPolicyAssessment.type = Types::GuardrailWordPolicyAssessment
    ImageBlock.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFormat, name: "format", traits: {"smithy.api#required" => {}}))
    ImageBlock.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSource, name: "source", traits: {"smithy.api#required" => {}}))
    ImageBlock.type = Types::ImageBlock
    ImageFormat.add_member(:png, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PNG", traits: {"smithy.api#enumValue" => "png"}))
    ImageFormat.add_member(:jpeg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JPEG", traits: {"smithy.api#enumValue" => "jpeg"}))
    ImageFormat.add_member(:gif, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIF", traits: {"smithy.api#enumValue" => "gif"}))
    ImageFormat.add_member(:webp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEBP", traits: {"smithy.api#enumValue" => "webp"}))
    ImageSource.add_member(:bytes, Types::ImageSource::Bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "bytes", traits: {"smithy.api#length" => {"min" => 1}}))
    ImageSource.add_member(:s3_location, Types::ImageSource::S3Location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "s3Location"))
    ImageSource.add_member(:unknown, Types::ImageSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ImageSource.type = Types::ImageSource
    InferenceConfiguration.add_member(:max_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxTokens", traits: {"smithy.api#range" => {"min" => 1}}))
    InferenceConfiguration.add_member(:temperature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "temperature", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}}))
    InferenceConfiguration.add_member(:top_p, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "topP", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}}))
    InferenceConfiguration.add_member(:stop_sequences, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringList, name: "stopSequences", traits: {"smithy.api#length" => {"max" => 2500}}))
    InferenceConfiguration.type = Types::InferenceConfiguration
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    InternalServerException.type = Types::InternalServerException
    InvokeModelRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Body, name: "body", traits: {"smithy.api#httpPayload" => {}}))
    InvokeModelRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    InvokeModelRequest.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "accept", traits: {"smithy.api#httpHeader" => "Accept"}))
    InvokeModelRequest.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeModelIdentifier, name: "modelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeModelRequest.add_member(:trace, ::Smithy::Schema::Shapes::MemberShape.new(target: Trace, name: "trace", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-Trace"}))
    InvokeModelRequest.add_member(:guardrail_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailIdentifier, name: "guardrailIdentifier", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-GuardrailIdentifier"}))
    InvokeModelRequest.add_member(:guardrail_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailVersion, name: "guardrailVersion", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-GuardrailVersion"}))
    InvokeModelRequest.add_member(:performance_config_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfigLatency, name: "performanceConfigLatency", traits: {"smithy.api#default" => "standard", "smithy.api#httpHeader" => "X-Amzn-Bedrock-PerformanceConfig-Latency"}))
    InvokeModelRequest[:http_payload] = :body
    InvokeModelRequest[:http_payload_member] = InvokeModelRequest.member(:body)
    InvokeModelRequest.type = Types::InvokeModelRequest
    InvokeModelResponse.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Body, name: "body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeModelResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type", "smithy.api#required" => {}}))
    InvokeModelResponse.add_member(:performance_config_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfigLatency, name: "performanceConfigLatency", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-PerformanceConfig-Latency"}))
    InvokeModelResponse[:http_payload] = :body
    InvokeModelResponse[:http_payload_member] = InvokeModelResponse.member(:body)
    InvokeModelResponse.type = Types::InvokeModelResponse
    InvokeModelTokensRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Body, name: "body", traits: {"smithy.api#required" => {}}))
    InvokeModelTokensRequest.type = Types::InvokeModelTokensRequest
    InvokeModelWithBidirectionalStreamInput.add_member(:chunk, Types::InvokeModelWithBidirectionalStreamInput::Chunk, ::Smithy::Schema::Shapes::MemberShape.new(target: BidirectionalInputPayloadPart, name: "chunk"))
    InvokeModelWithBidirectionalStreamInput.add_member(:unknown, Types::InvokeModelWithBidirectionalStreamInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    InvokeModelWithBidirectionalStreamInput.type = Types::InvokeModelWithBidirectionalStreamInput
    InvokeModelWithBidirectionalStreamOutput.add_member(:chunk, Types::InvokeModelWithBidirectionalStreamOutput::Chunk, ::Smithy::Schema::Shapes::MemberShape.new(target: BidirectionalOutputPayloadPart, name: "chunk"))
    InvokeModelWithBidirectionalStreamOutput.add_member(:internal_server_exception, Types::InvokeModelWithBidirectionalStreamOutput::InternalServerException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerException, name: "internalServerException"))
    InvokeModelWithBidirectionalStreamOutput.add_member(:model_stream_error_exception, Types::InvokeModelWithBidirectionalStreamOutput::ModelStreamErrorException, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStreamErrorException, name: "modelStreamErrorException"))
    InvokeModelWithBidirectionalStreamOutput.add_member(:validation_exception, Types::InvokeModelWithBidirectionalStreamOutput::ValidationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationException, name: "validationException"))
    InvokeModelWithBidirectionalStreamOutput.add_member(:throttling_exception, Types::InvokeModelWithBidirectionalStreamOutput::ThrottlingException, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingException, name: "throttlingException"))
    InvokeModelWithBidirectionalStreamOutput.add_member(:model_timeout_exception, Types::InvokeModelWithBidirectionalStreamOutput::ModelTimeoutException, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelTimeoutException, name: "modelTimeoutException"))
    InvokeModelWithBidirectionalStreamOutput.add_member(:service_unavailable_exception, Types::InvokeModelWithBidirectionalStreamOutput::ServiceUnavailableException, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUnavailableException, name: "serviceUnavailableException"))
    InvokeModelWithBidirectionalStreamOutput.add_member(:unknown, Types::InvokeModelWithBidirectionalStreamOutput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    InvokeModelWithBidirectionalStreamOutput.type = Types::InvokeModelWithBidirectionalStreamOutput
    InvokeModelWithBidirectionalStreamRequest.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeModelIdentifier, name: "modelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeModelWithBidirectionalStreamRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeModelWithBidirectionalStreamInput, name: "body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeModelWithBidirectionalStreamRequest[:http_payload] = :body
    InvokeModelWithBidirectionalStreamRequest[:http_payload_member] = InvokeModelWithBidirectionalStreamRequest.member(:body)
    InvokeModelWithBidirectionalStreamRequest.type = Types::InvokeModelWithBidirectionalStreamRequest
    InvokeModelWithBidirectionalStreamResponse.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeModelWithBidirectionalStreamOutput, name: "body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeModelWithBidirectionalStreamResponse[:http_payload] = :body
    InvokeModelWithBidirectionalStreamResponse[:http_payload_member] = InvokeModelWithBidirectionalStreamResponse.member(:body)
    InvokeModelWithBidirectionalStreamResponse.type = Types::InvokeModelWithBidirectionalStreamResponse
    InvokeModelWithResponseStreamRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Body, name: "body", traits: {"smithy.api#httpPayload" => {}}))
    InvokeModelWithResponseStreamRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    InvokeModelWithResponseStreamRequest.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "accept", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-Accept"}))
    InvokeModelWithResponseStreamRequest.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeModelIdentifier, name: "modelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeModelWithResponseStreamRequest.add_member(:trace, ::Smithy::Schema::Shapes::MemberShape.new(target: Trace, name: "trace", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-Trace"}))
    InvokeModelWithResponseStreamRequest.add_member(:guardrail_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailIdentifier, name: "guardrailIdentifier", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-GuardrailIdentifier"}))
    InvokeModelWithResponseStreamRequest.add_member(:guardrail_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailVersion, name: "guardrailVersion", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-GuardrailVersion"}))
    InvokeModelWithResponseStreamRequest.add_member(:performance_config_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfigLatency, name: "performanceConfigLatency", traits: {"smithy.api#default" => "standard", "smithy.api#httpHeader" => "X-Amzn-Bedrock-PerformanceConfig-Latency"}))
    InvokeModelWithResponseStreamRequest[:http_payload] = :body
    InvokeModelWithResponseStreamRequest[:http_payload_member] = InvokeModelWithResponseStreamRequest.member(:body)
    InvokeModelWithResponseStreamRequest.type = Types::InvokeModelWithResponseStreamRequest
    InvokeModelWithResponseStreamResponse.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseStream, name: "body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeModelWithResponseStreamResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "contentType", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-Content-Type", "smithy.api#required" => {}}))
    InvokeModelWithResponseStreamResponse.add_member(:performance_config_latency, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfigLatency, name: "performanceConfigLatency", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-PerformanceConfig-Latency"}))
    InvokeModelWithResponseStreamResponse[:http_payload] = :body
    InvokeModelWithResponseStreamResponse[:http_payload_member] = InvokeModelWithResponseStreamResponse.member(:body)
    InvokeModelWithResponseStreamResponse.type = Types::InvokeModelWithResponseStreamResponse
    ListAsyncInvokesRequest.add_member(:submit_time_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "submitTimeAfter", traits: {"smithy.api#httpQuery" => "submitTimeAfter"}))
    ListAsyncInvokesRequest.add_member(:submit_time_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "submitTimeBefore", traits: {"smithy.api#httpQuery" => "submitTimeBefore"}))
    ListAsyncInvokesRequest.add_member(:status_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeStatus, name: "statusEquals", traits: {"smithy.api#httpQuery" => "statusEquals"}))
    ListAsyncInvokesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAsyncInvokesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAsyncInvokesRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SortAsyncInvocationBy, name: "sortBy", traits: {"smithy.api#default" => "SubmissionTime", "smithy.api#httpQuery" => "sortBy"}))
    ListAsyncInvokesRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sortOrder", traits: {"smithy.api#default" => "Descending", "smithy.api#httpQuery" => "sortOrder"}))
    ListAsyncInvokesRequest.type = Types::ListAsyncInvokesRequest
    ListAsyncInvokesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListAsyncInvokesResponse.add_member(:async_invoke_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeSummaries, name: "asyncInvokeSummaries"))
    ListAsyncInvokesResponse.type = Types::ListAsyncInvokesResponse
    Message.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationRole, name: "role", traits: {"smithy.api#required" => {}}))
    Message.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentBlocks, name: "content", traits: {"smithy.api#required" => {}}))
    Message.type = Types::Message
    MessageStartEvent.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationRole, name: "role", traits: {"smithy.api#required" => {}}))
    MessageStartEvent.type = Types::MessageStartEvent
    MessageStopEvent.add_member(:stop_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StopReason, name: "stopReason", traits: {"smithy.api#required" => {}}))
    MessageStopEvent.add_member(:additional_model_response_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "additionalModelResponseFields"))
    MessageStopEvent.type = Types::MessageStopEvent
    Messages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "member"))
    ModelErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ModelErrorException.add_member(:original_status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "originalStatusCode"))
    ModelErrorException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "resourceName"))
    ModelErrorException.type = Types::ModelErrorException
    ModelNotReadyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ModelNotReadyException.type = Types::ModelNotReadyException
    ModelOutputs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailOutputText, name: "member"))
    ModelStreamErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ModelStreamErrorException.add_member(:original_status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "originalStatusCode"))
    ModelStreamErrorException.add_member(:original_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "originalMessage"))
    ModelStreamErrorException.type = Types::ModelStreamErrorException
    ModelTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ModelTimeoutException.type = Types::ModelTimeoutException
    NonEmptyStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    PayloadPart.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PartBody, name: "bytes"))
    PayloadPart.type = Types::PayloadPart
    PerformanceConfigLatency.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "standard"}))
    PerformanceConfigLatency.add_member(:optimized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIMIZED", traits: {"smithy.api#enumValue" => "optimized"}))
    PerformanceConfiguration.add_member(:latency, ::Smithy::Schema::Shapes::MemberShape.new(target: PerformanceConfigLatency, name: "latency", traits: {"smithy.api#default" => "standard"}))
    PerformanceConfiguration.type = Types::PerformanceConfiguration
    PromptRouterTrace.add_member(:invoked_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokedModelId, name: "invokedModelId"))
    PromptRouterTrace.type = Types::PromptRouterTrace
    PromptVariableMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    PromptVariableMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PromptVariableValues, name: "value"))
    PromptVariableValues.add_member(:text, Types::PromptVariableValues::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    PromptVariableValues.add_member(:unknown, Types::PromptVariableValues::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PromptVariableValues.type = Types::PromptVariableValues
    ReasoningContentBlock.add_member(:reasoning_text, Types::ReasoningContentBlock::ReasoningText, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasoningTextBlock, name: "reasoningText"))
    ReasoningContentBlock.add_member(:redacted_content, Types::ReasoningContentBlock::RedactedContent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "redactedContent"))
    ReasoningContentBlock.add_member(:unknown, Types::ReasoningContentBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ReasoningContentBlock.type = Types::ReasoningContentBlock
    ReasoningContentBlockDelta.add_member(:text, Types::ReasoningContentBlockDelta::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    ReasoningContentBlockDelta.add_member(:redacted_content, Types::ReasoningContentBlockDelta::RedactedContent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "redactedContent"))
    ReasoningContentBlockDelta.add_member(:signature, Types::ReasoningContentBlockDelta::Signature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "signature"))
    ReasoningContentBlockDelta.add_member(:unknown, Types::ReasoningContentBlockDelta::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ReasoningContentBlockDelta.type = Types::ReasoningContentBlockDelta
    ReasoningTextBlock.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#required" => {}}))
    ReasoningTextBlock.add_member(:signature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "signature"))
    ReasoningTextBlock.type = Types::ReasoningTextBlock
    RequestMetadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s:_@$#=/+,-.]{1,256}$"}))
    RequestMetadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s:_@$#=/+,-.]{0,256}$"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseStream.add_member(:chunk, Types::ResponseStream::Chunk, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadPart, name: "chunk"))
    ResponseStream.add_member(:internal_server_exception, Types::ResponseStream::InternalServerException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerException, name: "internalServerException"))
    ResponseStream.add_member(:model_stream_error_exception, Types::ResponseStream::ModelStreamErrorException, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelStreamErrorException, name: "modelStreamErrorException"))
    ResponseStream.add_member(:validation_exception, Types::ResponseStream::ValidationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationException, name: "validationException"))
    ResponseStream.add_member(:throttling_exception, Types::ResponseStream::ThrottlingException, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingException, name: "throttlingException"))
    ResponseStream.add_member(:model_timeout_exception, Types::ResponseStream::ModelTimeoutException, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelTimeoutException, name: "modelTimeoutException"))
    ResponseStream.add_member(:service_unavailable_exception, Types::ResponseStream::ServiceUnavailableException, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUnavailableException, name: "serviceUnavailableException"))
    ResponseStream.add_member(:unknown, Types::ResponseStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResponseStream.type = Types::ResponseStream
    S3Location.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "uri", traits: {"smithy.api#required" => {}}))
    S3Location.add_member(:bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "bucketOwner"))
    S3Location.type = Types::S3Location
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SortAsyncInvocationBy.add_member(:submission_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMISSION_TIME", traits: {"smithy.api#enumValue" => "SubmissionTime"}))
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "Ascending"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "Descending"}))
    SpecificToolChoice.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolName, name: "name", traits: {"smithy.api#required" => {}}))
    SpecificToolChoice.type = Types::SpecificToolChoice
    StartAsyncInvokeRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeIdempotencyToken, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartAsyncInvokeRequest.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeIdentifier, name: "modelId", traits: {"smithy.api#required" => {}}))
    StartAsyncInvokeRequest.add_member(:model_input, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelInputPayload, name: "modelInput", traits: {"smithy.api#required" => {}}))
    StartAsyncInvokeRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncInvokeOutputDataConfig, name: "outputDataConfig", traits: {"smithy.api#required" => {}}))
    StartAsyncInvokeRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    StartAsyncInvokeRequest.type = Types::StartAsyncInvokeRequest
    StartAsyncInvokeResponse.add_member(:invocation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InvocationArn, name: "invocationArn", traits: {"smithy.api#required" => {}}))
    StartAsyncInvokeResponse.type = Types::StartAsyncInvokeResponse
    StopReason.add_member(:end_turn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "END_TURN", traits: {"smithy.api#enumValue" => "end_turn"}))
    StopReason.add_member(:tool_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOOL_USE", traits: {"smithy.api#enumValue" => "tool_use"}))
    StopReason.add_member(:max_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_TOKENS", traits: {"smithy.api#enumValue" => "max_tokens"}))
    StopReason.add_member(:stop_sequence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_SEQUENCE", traits: {"smithy.api#enumValue" => "stop_sequence"}))
    StopReason.add_member(:guardrail_intervened, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARDRAIL_INTERVENED", traits: {"smithy.api#enumValue" => "guardrail_intervened"}))
    StopReason.add_member(:content_filtered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT_FILTERED", traits: {"smithy.api#enumValue" => "content_filtered"}))
    StopReason.add_member(:model_context_window_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODEL_CONTEXT_WINDOW_EXCEEDED", traits: {"smithy.api#enumValue" => "model_context_window_exceeded"}))
    SystemContentBlock.add_member(:text, Types::SystemContentBlock::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "text"))
    SystemContentBlock.add_member(:guard_content, Types::SystemContentBlock::GuardContent, ::Smithy::Schema::Shapes::MemberShape.new(target: GuardrailConverseContentBlock, name: "guardContent"))
    SystemContentBlock.add_member(:cache_point, Types::SystemContentBlock::CachePoint, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePointBlock, name: "cachePoint"))
    SystemContentBlock.add_member(:unknown, Types::SystemContentBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SystemContentBlock.type = Types::SystemContentBlock
    SystemContentBlocks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemContentBlock, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TokenUsage.add_member(:input_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "inputTokens", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    TokenUsage.add_member(:output_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "outputTokens", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    TokenUsage.add_member(:total_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalTokens", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    TokenUsage.add_member(:cache_read_input_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cacheReadInputTokens", traits: {"smithy.api#range" => {"min" => 0}}))
    TokenUsage.add_member(:cache_write_input_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cacheWriteInputTokens", traits: {"smithy.api#range" => {"min" => 0}}))
    TokenUsage.type = Types::TokenUsage
    Tool.add_member(:tool_spec, Types::Tool::ToolSpec, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolSpecification, name: "toolSpec"))
    Tool.add_member(:cache_point, Types::Tool::CachePoint, ::Smithy::Schema::Shapes::MemberShape.new(target: CachePointBlock, name: "cachePoint"))
    Tool.add_member(:unknown, Types::Tool::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Tool.type = Types::Tool
    ToolChoice.add_member(:auto, Types::ToolChoice::Auto, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoToolChoice, name: "auto"))
    ToolChoice.add_member(:any, Types::ToolChoice::Any, ::Smithy::Schema::Shapes::MemberShape.new(target: AnyToolChoice, name: "any"))
    ToolChoice.add_member(:tool, Types::ToolChoice::Tool, ::Smithy::Schema::Shapes::MemberShape.new(target: SpecificToolChoice, name: "tool"))
    ToolChoice.add_member(:unknown, Types::ToolChoice::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ToolChoice.type = Types::ToolChoice
    ToolConfiguration.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: Tools, name: "tools", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    ToolConfiguration.add_member(:tool_choice, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolChoice, name: "toolChoice"))
    ToolConfiguration.type = Types::ToolConfiguration
    ToolInputSchema.add_member(:json, Types::ToolInputSchema::Json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "json"))
    ToolInputSchema.add_member(:unknown, Types::ToolInputSchema::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ToolInputSchema.type = Types::ToolInputSchema
    ToolResultBlock.add_member(:tool_use_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolUseId, name: "toolUseId", traits: {"smithy.api#required" => {}}))
    ToolResultBlock.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolResultContentBlocks, name: "content", traits: {"smithy.api#required" => {}}))
    ToolResultBlock.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolResultStatus, name: "status"))
    ToolResultBlock.type = Types::ToolResultBlock
    ToolResultContentBlock.add_member(:json, Types::ToolResultContentBlock::Json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "json"))
    ToolResultContentBlock.add_member(:text, Types::ToolResultContentBlock::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    ToolResultContentBlock.add_member(:image, Types::ToolResultContentBlock::Image, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBlock, name: "image"))
    ToolResultContentBlock.add_member(:document, Types::ToolResultContentBlock::Document, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentBlock, name: "document"))
    ToolResultContentBlock.add_member(:video, Types::ToolResultContentBlock::Video, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoBlock, name: "video"))
    ToolResultContentBlock.add_member(:unknown, Types::ToolResultContentBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ToolResultContentBlock.type = Types::ToolResultContentBlock
    ToolResultContentBlocks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolResultContentBlock, name: "member"))
    ToolResultStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "success"}))
    ToolResultStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "error"}))
    ToolSpecification.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolName, name: "name", traits: {"smithy.api#required" => {}}))
    ToolSpecification.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    ToolSpecification.add_member(:input_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolInputSchema, name: "inputSchema", traits: {"smithy.api#required" => {}}))
    ToolSpecification.type = Types::ToolSpecification
    ToolUseBlock.add_member(:tool_use_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolUseId, name: "toolUseId", traits: {"smithy.api#required" => {}}))
    ToolUseBlock.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolName, name: "name", traits: {"smithy.api#required" => {}}))
    ToolUseBlock.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "input", traits: {"smithy.api#required" => {}}))
    ToolUseBlock.type = Types::ToolUseBlock
    ToolUseBlockDelta.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "input", traits: {"smithy.api#required" => {}}))
    ToolUseBlockDelta.type = Types::ToolUseBlockDelta
    ToolUseBlockStart.add_member(:tool_use_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolUseId, name: "toolUseId", traits: {"smithy.api#required" => {}}))
    ToolUseBlockStart.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolName, name: "name", traits: {"smithy.api#required" => {}}))
    ToolUseBlockStart.type = Types::ToolUseBlockStart
    Tools.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tool, name: "member"))
    Trace.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    Trace.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    Trace.add_member(:enabled_full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED_FULL", traits: {"smithy.api#enumValue" => "ENABLED_FULL"}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ValidationException.type = Types::ValidationException
    VideoBlock.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoFormat, name: "format", traits: {"smithy.api#required" => {}}))
    VideoBlock.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoSource, name: "source", traits: {"smithy.api#required" => {}}))
    VideoBlock.type = Types::VideoBlock
    VideoFormat.add_member(:mkv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MKV", traits: {"smithy.api#enumValue" => "mkv"}))
    VideoFormat.add_member(:mov, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MOV", traits: {"smithy.api#enumValue" => "mov"}))
    VideoFormat.add_member(:mp4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MP4", traits: {"smithy.api#enumValue" => "mp4"}))
    VideoFormat.add_member(:webm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEBM", traits: {"smithy.api#enumValue" => "webm"}))
    VideoFormat.add_member(:flv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLV", traits: {"smithy.api#enumValue" => "flv"}))
    VideoFormat.add_member(:mpeg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MPEG", traits: {"smithy.api#enumValue" => "mpeg"}))
    VideoFormat.add_member(:mpg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MPG", traits: {"smithy.api#enumValue" => "mpg"}))
    VideoFormat.add_member(:wmv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WMV", traits: {"smithy.api#enumValue" => "wmv"}))
    VideoFormat.add_member(:three_gp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THREE_GP", traits: {"smithy.api#enumValue" => "three_gp"}))
    VideoSource.add_member(:bytes, Types::VideoSource::Bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "bytes", traits: {"smithy.api#length" => {"min" => 1}}))
    VideoSource.add_member(:s3_location, Types::VideoSource::S3Location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "s3Location"))
    VideoSource.add_member(:unknown, Types::VideoSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    VideoSource.type = Types::VideoSource

    AmazonBedrockFrontendService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.bedrockruntime#AmazonBedrockFrontendService"
      service.name = "AmazonBedrockFrontendService"
      service.version = "2023-09-30"
      service.traits = {"aws.api#service" => {"sdkId" => "Bedrock Runtime", "endpointPrefix" => "bedrock-runtime", "cloudTrailEventSource" => "bedrock.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "bedrock"}, "aws.protocols#restJson1" => {"http" => ["h2", "http/1.1"], "eventStreamHttp" => ["h2", "http/1.1"]}, "smithy.api#auth" => ["aws.auth#sigv4", "smithy.api#httpBearerAuth"], "smithy.api#httpBearerAuth" => {}, "smithy.api#title" => "Amazon Bedrock Runtime"}
      service.add_operation(:apply_guardrail, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockruntime#ApplyGuardrail"
        operation.name = "ApplyGuardrail"
        operation.input = ApplyGuardrailRequest
        operation.output = ApplyGuardrailResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/guardrail/{guardrailIdentifier}/version/{guardrailVersion}/apply"}}
      end)
      service.add_operation(:converse, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockruntime#Converse"
        operation.name = "Converse"
        operation.input = ConverseRequest
        operation.output = ConverseResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ModelErrorException
        operation.errors << ModelNotReadyException
        operation.errors << ModelTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/model/{modelId}/converse"}}
      end)
      service.add_operation(:converse_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockruntime#ConverseStream"
        operation.name = "ConverseStream"
        operation.input = ConverseStreamRequest
        operation.output = ConverseStreamResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ModelErrorException
        operation.errors << ModelNotReadyException
        operation.errors << ModelTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/model/{modelId}/converse-stream"}}
      end)
      service.add_operation(:count_tokens, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockruntime#CountTokens"
        operation.name = "CountTokens"
        operation.input = CountTokensRequest
        operation.output = CountTokensResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/model/{modelId}/count-tokens"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_async_invoke, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockruntime#GetAsyncInvoke"
        operation.name = "GetAsyncInvoke"
        operation.input = GetAsyncInvokeRequest
        operation.output = GetAsyncInvokeResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/async-invoke/{invocationArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:invoke_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockruntime#InvokeModel"
        operation.name = "InvokeModel"
        operation.input = InvokeModelRequest
        operation.output = InvokeModelResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ModelErrorException
        operation.errors << ModelNotReadyException
        operation.errors << ModelTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/model/{modelId}/invoke"}}
      end)
      service.add_operation(:invoke_model_with_bidirectional_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockruntime#InvokeModelWithBidirectionalStream"
        operation.name = "InvokeModelWithBidirectionalStream"
        operation.input = InvokeModelWithBidirectionalStreamRequest
        operation.output = InvokeModelWithBidirectionalStreamResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ModelErrorException
        operation.errors << ModelNotReadyException
        operation.errors << ModelStreamErrorException
        operation.errors << ModelTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/model/{modelId}/invoke-with-bidirectional-stream"}}
      end)
      service.add_operation(:invoke_model_with_response_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockruntime#InvokeModelWithResponseStream"
        operation.name = "InvokeModelWithResponseStream"
        operation.input = InvokeModelWithResponseStreamRequest
        operation.output = InvokeModelWithResponseStreamResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ModelErrorException
        operation.errors << ModelNotReadyException
        operation.errors << ModelStreamErrorException
        operation.errors << ModelTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/model/{modelId}/invoke-with-response-stream"}}
      end)
      service.add_operation(:list_async_invokes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockruntime#ListAsyncInvokes"
        operation.name = "ListAsyncInvokes"
        operation.input = ListAsyncInvokesRequest
        operation.output = ListAsyncInvokesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/async-invoke"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAsyncInvokes.new
      end)
      service.add_operation(:start_async_invoke, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockruntime#StartAsyncInvoke"
        operation.name = "StartAsyncInvoke"
        operation.input = StartAsyncInvokeRequest
        operation.output = StartAsyncInvokeResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/async-invoke"}, "smithy.api#idempotent" => {}}
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
