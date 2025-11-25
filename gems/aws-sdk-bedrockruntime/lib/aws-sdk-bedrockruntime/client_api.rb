# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BedrockRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AnyToolChoice = Shapes::StructureShape.new(name: 'AnyToolChoice')
    AppliedGuardrailDetails = Shapes::StructureShape.new(name: 'AppliedGuardrailDetails')
    ApplyGuardrailRequest = Shapes::StructureShape.new(name: 'ApplyGuardrailRequest')
    ApplyGuardrailResponse = Shapes::StructureShape.new(name: 'ApplyGuardrailResponse')
    AsyncInvokeArn = Shapes::StringShape.new(name: 'AsyncInvokeArn')
    AsyncInvokeIdempotencyToken = Shapes::StringShape.new(name: 'AsyncInvokeIdempotencyToken')
    AsyncInvokeIdentifier = Shapes::StringShape.new(name: 'AsyncInvokeIdentifier')
    AsyncInvokeMessage = Shapes::StringShape.new(name: 'AsyncInvokeMessage')
    AsyncInvokeOutputDataConfig = Shapes::UnionShape.new(name: 'AsyncInvokeOutputDataConfig')
    AsyncInvokeS3OutputDataConfig = Shapes::StructureShape.new(name: 'AsyncInvokeS3OutputDataConfig')
    AsyncInvokeStatus = Shapes::StringShape.new(name: 'AsyncInvokeStatus')
    AsyncInvokeSummaries = Shapes::ListShape.new(name: 'AsyncInvokeSummaries')
    AsyncInvokeSummary = Shapes::StructureShape.new(name: 'AsyncInvokeSummary')
    AutoToolChoice = Shapes::StructureShape.new(name: 'AutoToolChoice')
    AutomatedReasoningRuleIdentifier = Shapes::StringShape.new(name: 'AutomatedReasoningRuleIdentifier')
    BidirectionalInputPayloadPart = Shapes::StructureShape.new(name: 'BidirectionalInputPayloadPart')
    BidirectionalOutputPayloadPart = Shapes::StructureShape.new(name: 'BidirectionalOutputPayloadPart')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Body = Shapes::BlobShape.new(name: 'Body')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CachePointBlock = Shapes::StructureShape.new(name: 'CachePointBlock')
    CachePointType = Shapes::StringShape.new(name: 'CachePointType')
    Citation = Shapes::StructureShape.new(name: 'Citation')
    CitationGeneratedContent = Shapes::UnionShape.new(name: 'CitationGeneratedContent')
    CitationGeneratedContentList = Shapes::ListShape.new(name: 'CitationGeneratedContentList')
    CitationLocation = Shapes::UnionShape.new(name: 'CitationLocation')
    CitationSourceContent = Shapes::UnionShape.new(name: 'CitationSourceContent')
    CitationSourceContentDelta = Shapes::StructureShape.new(name: 'CitationSourceContentDelta')
    CitationSourceContentList = Shapes::ListShape.new(name: 'CitationSourceContentList')
    CitationSourceContentListDelta = Shapes::ListShape.new(name: 'CitationSourceContentListDelta')
    Citations = Shapes::ListShape.new(name: 'Citations')
    CitationsConfig = Shapes::StructureShape.new(name: 'CitationsConfig')
    CitationsContentBlock = Shapes::StructureShape.new(name: 'CitationsContentBlock')
    CitationsDelta = Shapes::StructureShape.new(name: 'CitationsDelta')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentBlock = Shapes::UnionShape.new(name: 'ContentBlock')
    ContentBlockDelta = Shapes::UnionShape.new(name: 'ContentBlockDelta')
    ContentBlockDeltaEvent = Shapes::StructureShape.new(name: 'ContentBlockDeltaEvent')
    ContentBlockStart = Shapes::UnionShape.new(name: 'ContentBlockStart')
    ContentBlockStartEvent = Shapes::StructureShape.new(name: 'ContentBlockStartEvent')
    ContentBlockStopEvent = Shapes::StructureShape.new(name: 'ContentBlockStopEvent')
    ContentBlocks = Shapes::ListShape.new(name: 'ContentBlocks')
    ConversationRole = Shapes::StringShape.new(name: 'ConversationRole')
    ConversationalModelId = Shapes::StringShape.new(name: 'ConversationalModelId')
    ConverseMetrics = Shapes::StructureShape.new(name: 'ConverseMetrics')
    ConverseOutput = Shapes::UnionShape.new(name: 'ConverseOutput')
    ConverseRequest = Shapes::StructureShape.new(name: 'ConverseRequest')
    ConverseRequestAdditionalModelResponseFieldPathsList = Shapes::ListShape.new(name: 'ConverseRequestAdditionalModelResponseFieldPathsList')
    ConverseRequestAdditionalModelResponseFieldPathsListMemberString = Shapes::StringShape.new(name: 'ConverseRequestAdditionalModelResponseFieldPathsListMemberString')
    ConverseResponse = Shapes::StructureShape.new(name: 'ConverseResponse')
    ConverseStreamMetadataEvent = Shapes::StructureShape.new(name: 'ConverseStreamMetadataEvent')
    ConverseStreamMetrics = Shapes::StructureShape.new(name: 'ConverseStreamMetrics')
    ConverseStreamOutput = Shapes::StructureShape.new(name: 'ConverseStreamOutput')
    ConverseStreamRequest = Shapes::StructureShape.new(name: 'ConverseStreamRequest')
    ConverseStreamRequestAdditionalModelResponseFieldPathsList = Shapes::ListShape.new(name: 'ConverseStreamRequestAdditionalModelResponseFieldPathsList')
    ConverseStreamRequestAdditionalModelResponseFieldPathsListMemberString = Shapes::StringShape.new(name: 'ConverseStreamRequestAdditionalModelResponseFieldPathsListMemberString')
    ConverseStreamResponse = Shapes::StructureShape.new(name: 'ConverseStreamResponse')
    ConverseStreamTrace = Shapes::StructureShape.new(name: 'ConverseStreamTrace')
    ConverseTokensRequest = Shapes::StructureShape.new(name: 'ConverseTokensRequest')
    ConverseTrace = Shapes::StructureShape.new(name: 'ConverseTrace')
    CountTokensInput = Shapes::UnionShape.new(name: 'CountTokensInput')
    CountTokensRequest = Shapes::StructureShape.new(name: 'CountTokensRequest')
    CountTokensResponse = Shapes::StructureShape.new(name: 'CountTokensResponse')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    DocumentBlock = Shapes::StructureShape.new(name: 'DocumentBlock')
    DocumentBlockNameString = Shapes::StringShape.new(name: 'DocumentBlockNameString')
    DocumentCharLocation = Shapes::StructureShape.new(name: 'DocumentCharLocation')
    DocumentCharLocationDocumentIndexInteger = Shapes::IntegerShape.new(name: 'DocumentCharLocationDocumentIndexInteger')
    DocumentCharLocationEndInteger = Shapes::IntegerShape.new(name: 'DocumentCharLocationEndInteger')
    DocumentCharLocationStartInteger = Shapes::IntegerShape.new(name: 'DocumentCharLocationStartInteger')
    DocumentChunkLocation = Shapes::StructureShape.new(name: 'DocumentChunkLocation')
    DocumentChunkLocationDocumentIndexInteger = Shapes::IntegerShape.new(name: 'DocumentChunkLocationDocumentIndexInteger')
    DocumentChunkLocationEndInteger = Shapes::IntegerShape.new(name: 'DocumentChunkLocationEndInteger')
    DocumentChunkLocationStartInteger = Shapes::IntegerShape.new(name: 'DocumentChunkLocationStartInteger')
    DocumentContentBlock = Shapes::UnionShape.new(name: 'DocumentContentBlock')
    DocumentContentBlocks = Shapes::ListShape.new(name: 'DocumentContentBlocks')
    DocumentFormat = Shapes::StringShape.new(name: 'DocumentFormat')
    DocumentPageLocation = Shapes::StructureShape.new(name: 'DocumentPageLocation')
    DocumentPageLocationDocumentIndexInteger = Shapes::IntegerShape.new(name: 'DocumentPageLocationDocumentIndexInteger')
    DocumentPageLocationEndInteger = Shapes::IntegerShape.new(name: 'DocumentPageLocationEndInteger')
    DocumentPageLocationStartInteger = Shapes::IntegerShape.new(name: 'DocumentPageLocationStartInteger')
    DocumentSource = Shapes::UnionShape.new(name: 'DocumentSource')
    DocumentSourceBytesBlob = Shapes::BlobShape.new(name: 'DocumentSourceBytesBlob')
    FoundationModelVersionIdentifier = Shapes::StringShape.new(name: 'FoundationModelVersionIdentifier')
    GetAsyncInvokeRequest = Shapes::StructureShape.new(name: 'GetAsyncInvokeRequest')
    GetAsyncInvokeResponse = Shapes::StructureShape.new(name: 'GetAsyncInvokeResponse')
    GuardrailAction = Shapes::StringShape.new(name: 'GuardrailAction')
    GuardrailArn = Shapes::StringShape.new(name: 'GuardrailArn')
    GuardrailAssessment = Shapes::StructureShape.new(name: 'GuardrailAssessment')
    GuardrailAssessmentList = Shapes::ListShape.new(name: 'GuardrailAssessmentList')
    GuardrailAssessmentListMap = Shapes::MapShape.new(name: 'GuardrailAssessmentListMap')
    GuardrailAssessmentMap = Shapes::MapShape.new(name: 'GuardrailAssessmentMap')
    GuardrailAutomatedReasoningDifferenceScenarioList = Shapes::ListShape.new(name: 'GuardrailAutomatedReasoningDifferenceScenarioList')
    GuardrailAutomatedReasoningFinding = Shapes::UnionShape.new(name: 'GuardrailAutomatedReasoningFinding')
    GuardrailAutomatedReasoningFindingList = Shapes::ListShape.new(name: 'GuardrailAutomatedReasoningFindingList')
    GuardrailAutomatedReasoningImpossibleFinding = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningImpossibleFinding')
    GuardrailAutomatedReasoningInputTextReference = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningInputTextReference')
    GuardrailAutomatedReasoningInputTextReferenceList = Shapes::ListShape.new(name: 'GuardrailAutomatedReasoningInputTextReferenceList')
    GuardrailAutomatedReasoningInvalidFinding = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningInvalidFinding')
    GuardrailAutomatedReasoningLogicWarning = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningLogicWarning')
    GuardrailAutomatedReasoningLogicWarningType = Shapes::StringShape.new(name: 'GuardrailAutomatedReasoningLogicWarningType')
    GuardrailAutomatedReasoningNoTranslationsFinding = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningNoTranslationsFinding')
    GuardrailAutomatedReasoningPoliciesProcessed = Shapes::IntegerShape.new(name: 'GuardrailAutomatedReasoningPoliciesProcessed')
    GuardrailAutomatedReasoningPolicyAssessment = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningPolicyAssessment')
    GuardrailAutomatedReasoningPolicyUnitsProcessed = Shapes::IntegerShape.new(name: 'GuardrailAutomatedReasoningPolicyUnitsProcessed')
    GuardrailAutomatedReasoningPolicyVersionArn = Shapes::StringShape.new(name: 'GuardrailAutomatedReasoningPolicyVersionArn')
    GuardrailAutomatedReasoningRule = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningRule')
    GuardrailAutomatedReasoningRuleList = Shapes::ListShape.new(name: 'GuardrailAutomatedReasoningRuleList')
    GuardrailAutomatedReasoningSatisfiableFinding = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningSatisfiableFinding')
    GuardrailAutomatedReasoningScenario = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningScenario')
    GuardrailAutomatedReasoningStatement = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningStatement')
    GuardrailAutomatedReasoningStatementList = Shapes::ListShape.new(name: 'GuardrailAutomatedReasoningStatementList')
    GuardrailAutomatedReasoningStatementLogicContent = Shapes::StringShape.new(name: 'GuardrailAutomatedReasoningStatementLogicContent')
    GuardrailAutomatedReasoningStatementNaturalLanguageContent = Shapes::StringShape.new(name: 'GuardrailAutomatedReasoningStatementNaturalLanguageContent')
    GuardrailAutomatedReasoningTooComplexFinding = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningTooComplexFinding')
    GuardrailAutomatedReasoningTranslation = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningTranslation')
    GuardrailAutomatedReasoningTranslationAmbiguousFinding = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningTranslationAmbiguousFinding')
    GuardrailAutomatedReasoningTranslationConfidence = Shapes::FloatShape.new(name: 'GuardrailAutomatedReasoningTranslationConfidence')
    GuardrailAutomatedReasoningTranslationList = Shapes::ListShape.new(name: 'GuardrailAutomatedReasoningTranslationList')
    GuardrailAutomatedReasoningTranslationOption = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningTranslationOption')
    GuardrailAutomatedReasoningTranslationOptionList = Shapes::ListShape.new(name: 'GuardrailAutomatedReasoningTranslationOptionList')
    GuardrailAutomatedReasoningValidFinding = Shapes::StructureShape.new(name: 'GuardrailAutomatedReasoningValidFinding')
    GuardrailConfiguration = Shapes::StructureShape.new(name: 'GuardrailConfiguration')
    GuardrailContentBlock = Shapes::UnionShape.new(name: 'GuardrailContentBlock')
    GuardrailContentBlockList = Shapes::ListShape.new(name: 'GuardrailContentBlockList')
    GuardrailContentFilter = Shapes::StructureShape.new(name: 'GuardrailContentFilter')
    GuardrailContentFilterConfidence = Shapes::StringShape.new(name: 'GuardrailContentFilterConfidence')
    GuardrailContentFilterList = Shapes::ListShape.new(name: 'GuardrailContentFilterList')
    GuardrailContentFilterStrength = Shapes::StringShape.new(name: 'GuardrailContentFilterStrength')
    GuardrailContentFilterType = Shapes::StringShape.new(name: 'GuardrailContentFilterType')
    GuardrailContentPolicyAction = Shapes::StringShape.new(name: 'GuardrailContentPolicyAction')
    GuardrailContentPolicyAssessment = Shapes::StructureShape.new(name: 'GuardrailContentPolicyAssessment')
    GuardrailContentPolicyImageUnitsProcessed = Shapes::IntegerShape.new(name: 'GuardrailContentPolicyImageUnitsProcessed')
    GuardrailContentPolicyUnitsProcessed = Shapes::IntegerShape.new(name: 'GuardrailContentPolicyUnitsProcessed')
    GuardrailContentQualifier = Shapes::StringShape.new(name: 'GuardrailContentQualifier')
    GuardrailContentQualifierList = Shapes::ListShape.new(name: 'GuardrailContentQualifierList')
    GuardrailContentSource = Shapes::StringShape.new(name: 'GuardrailContentSource')
    GuardrailContextualGroundingFilter = Shapes::StructureShape.new(name: 'GuardrailContextualGroundingFilter')
    GuardrailContextualGroundingFilterScoreDouble = Shapes::FloatShape.new(name: 'GuardrailContextualGroundingFilterScoreDouble')
    GuardrailContextualGroundingFilterThresholdDouble = Shapes::FloatShape.new(name: 'GuardrailContextualGroundingFilterThresholdDouble')
    GuardrailContextualGroundingFilterType = Shapes::StringShape.new(name: 'GuardrailContextualGroundingFilterType')
    GuardrailContextualGroundingFilters = Shapes::ListShape.new(name: 'GuardrailContextualGroundingFilters')
    GuardrailContextualGroundingPolicyAction = Shapes::StringShape.new(name: 'GuardrailContextualGroundingPolicyAction')
    GuardrailContextualGroundingPolicyAssessment = Shapes::StructureShape.new(name: 'GuardrailContextualGroundingPolicyAssessment')
    GuardrailContextualGroundingPolicyUnitsProcessed = Shapes::IntegerShape.new(name: 'GuardrailContextualGroundingPolicyUnitsProcessed')
    GuardrailConverseContentBlock = Shapes::UnionShape.new(name: 'GuardrailConverseContentBlock')
    GuardrailConverseContentQualifier = Shapes::StringShape.new(name: 'GuardrailConverseContentQualifier')
    GuardrailConverseContentQualifierList = Shapes::ListShape.new(name: 'GuardrailConverseContentQualifierList')
    GuardrailConverseImageBlock = Shapes::StructureShape.new(name: 'GuardrailConverseImageBlock')
    GuardrailConverseImageFormat = Shapes::StringShape.new(name: 'GuardrailConverseImageFormat')
    GuardrailConverseImageSource = Shapes::UnionShape.new(name: 'GuardrailConverseImageSource')
    GuardrailConverseImageSourceBytesBlob = Shapes::BlobShape.new(name: 'GuardrailConverseImageSourceBytesBlob')
    GuardrailConverseTextBlock = Shapes::StructureShape.new(name: 'GuardrailConverseTextBlock')
    GuardrailCoverage = Shapes::StructureShape.new(name: 'GuardrailCoverage')
    GuardrailCustomWord = Shapes::StructureShape.new(name: 'GuardrailCustomWord')
    GuardrailCustomWordList = Shapes::ListShape.new(name: 'GuardrailCustomWordList')
    GuardrailId = Shapes::StringShape.new(name: 'GuardrailId')
    GuardrailIdentifier = Shapes::StringShape.new(name: 'GuardrailIdentifier')
    GuardrailImageBlock = Shapes::StructureShape.new(name: 'GuardrailImageBlock')
    GuardrailImageCoverage = Shapes::StructureShape.new(name: 'GuardrailImageCoverage')
    GuardrailImageFormat = Shapes::StringShape.new(name: 'GuardrailImageFormat')
    GuardrailImageSource = Shapes::UnionShape.new(name: 'GuardrailImageSource')
    GuardrailImageSourceBytesBlob = Shapes::BlobShape.new(name: 'GuardrailImageSourceBytesBlob')
    GuardrailInvocationMetrics = Shapes::StructureShape.new(name: 'GuardrailInvocationMetrics')
    GuardrailManagedWord = Shapes::StructureShape.new(name: 'GuardrailManagedWord')
    GuardrailManagedWordList = Shapes::ListShape.new(name: 'GuardrailManagedWordList')
    GuardrailManagedWordType = Shapes::StringShape.new(name: 'GuardrailManagedWordType')
    GuardrailOrigin = Shapes::StringShape.new(name: 'GuardrailOrigin')
    GuardrailOriginList = Shapes::ListShape.new(name: 'GuardrailOriginList')
    GuardrailOutputContent = Shapes::StructureShape.new(name: 'GuardrailOutputContent')
    GuardrailOutputContentList = Shapes::ListShape.new(name: 'GuardrailOutputContentList')
    GuardrailOutputScope = Shapes::StringShape.new(name: 'GuardrailOutputScope')
    GuardrailOutputText = Shapes::StringShape.new(name: 'GuardrailOutputText')
    GuardrailOwnership = Shapes::StringShape.new(name: 'GuardrailOwnership')
    GuardrailPiiEntityFilter = Shapes::StructureShape.new(name: 'GuardrailPiiEntityFilter')
    GuardrailPiiEntityFilterList = Shapes::ListShape.new(name: 'GuardrailPiiEntityFilterList')
    GuardrailPiiEntityType = Shapes::StringShape.new(name: 'GuardrailPiiEntityType')
    GuardrailProcessingLatency = Shapes::IntegerShape.new(name: 'GuardrailProcessingLatency')
    GuardrailRegexFilter = Shapes::StructureShape.new(name: 'GuardrailRegexFilter')
    GuardrailRegexFilterList = Shapes::ListShape.new(name: 'GuardrailRegexFilterList')
    GuardrailSensitiveInformationPolicyAction = Shapes::StringShape.new(name: 'GuardrailSensitiveInformationPolicyAction')
    GuardrailSensitiveInformationPolicyAssessment = Shapes::StructureShape.new(name: 'GuardrailSensitiveInformationPolicyAssessment')
    GuardrailSensitiveInformationPolicyFreeUnitsProcessed = Shapes::IntegerShape.new(name: 'GuardrailSensitiveInformationPolicyFreeUnitsProcessed')
    GuardrailSensitiveInformationPolicyUnitsProcessed = Shapes::IntegerShape.new(name: 'GuardrailSensitiveInformationPolicyUnitsProcessed')
    GuardrailStreamConfiguration = Shapes::StructureShape.new(name: 'GuardrailStreamConfiguration')
    GuardrailStreamProcessingMode = Shapes::StringShape.new(name: 'GuardrailStreamProcessingMode')
    GuardrailTextBlock = Shapes::StructureShape.new(name: 'GuardrailTextBlock')
    GuardrailTextCharactersCoverage = Shapes::StructureShape.new(name: 'GuardrailTextCharactersCoverage')
    GuardrailTopic = Shapes::StructureShape.new(name: 'GuardrailTopic')
    GuardrailTopicList = Shapes::ListShape.new(name: 'GuardrailTopicList')
    GuardrailTopicPolicyAction = Shapes::StringShape.new(name: 'GuardrailTopicPolicyAction')
    GuardrailTopicPolicyAssessment = Shapes::StructureShape.new(name: 'GuardrailTopicPolicyAssessment')
    GuardrailTopicPolicyUnitsProcessed = Shapes::IntegerShape.new(name: 'GuardrailTopicPolicyUnitsProcessed')
    GuardrailTopicType = Shapes::StringShape.new(name: 'GuardrailTopicType')
    GuardrailTrace = Shapes::StringShape.new(name: 'GuardrailTrace')
    GuardrailTraceAssessment = Shapes::StructureShape.new(name: 'GuardrailTraceAssessment')
    GuardrailUsage = Shapes::StructureShape.new(name: 'GuardrailUsage')
    GuardrailVersion = Shapes::StringShape.new(name: 'GuardrailVersion')
    GuardrailWordPolicyAction = Shapes::StringShape.new(name: 'GuardrailWordPolicyAction')
    GuardrailWordPolicyAssessment = Shapes::StructureShape.new(name: 'GuardrailWordPolicyAssessment')
    GuardrailWordPolicyUnitsProcessed = Shapes::IntegerShape.new(name: 'GuardrailWordPolicyUnitsProcessed')
    ImageBlock = Shapes::StructureShape.new(name: 'ImageBlock')
    ImageFormat = Shapes::StringShape.new(name: 'ImageFormat')
    ImageSource = Shapes::UnionShape.new(name: 'ImageSource')
    ImageSourceBytesBlob = Shapes::BlobShape.new(name: 'ImageSourceBytesBlob')
    ImagesGuarded = Shapes::IntegerShape.new(name: 'ImagesGuarded')
    ImagesTotal = Shapes::IntegerShape.new(name: 'ImagesTotal')
    InferenceConfiguration = Shapes::StructureShape.new(name: 'InferenceConfiguration')
    InferenceConfigurationMaxTokensInteger = Shapes::IntegerShape.new(name: 'InferenceConfigurationMaxTokensInteger')
    InferenceConfigurationStopSequencesList = Shapes::ListShape.new(name: 'InferenceConfigurationStopSequencesList')
    InferenceConfigurationTemperatureFloat = Shapes::FloatShape.new(name: 'InferenceConfigurationTemperatureFloat')
    InferenceConfigurationTopPFloat = Shapes::FloatShape.new(name: 'InferenceConfigurationTopPFloat')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvocationArn = Shapes::StringShape.new(name: 'InvocationArn')
    InvokeModelIdentifier = Shapes::StringShape.new(name: 'InvokeModelIdentifier')
    InvokeModelRequest = Shapes::StructureShape.new(name: 'InvokeModelRequest')
    InvokeModelResponse = Shapes::StructureShape.new(name: 'InvokeModelResponse')
    InvokeModelTokensRequest = Shapes::StructureShape.new(name: 'InvokeModelTokensRequest')
    InvokeModelWithBidirectionalStreamInput = Shapes::StructureShape.new(name: 'InvokeModelWithBidirectionalStreamInput')
    InvokeModelWithBidirectionalStreamOutput = Shapes::StructureShape.new(name: 'InvokeModelWithBidirectionalStreamOutput')
    InvokeModelWithBidirectionalStreamRequest = Shapes::StructureShape.new(name: 'InvokeModelWithBidirectionalStreamRequest')
    InvokeModelWithBidirectionalStreamResponse = Shapes::StructureShape.new(name: 'InvokeModelWithBidirectionalStreamResponse')
    InvokeModelWithResponseStreamRequest = Shapes::StructureShape.new(name: 'InvokeModelWithResponseStreamRequest')
    InvokeModelWithResponseStreamResponse = Shapes::StructureShape.new(name: 'InvokeModelWithResponseStreamResponse')
    InvokedModelId = Shapes::StringShape.new(name: 'InvokedModelId')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    ListAsyncInvokesRequest = Shapes::StructureShape.new(name: 'ListAsyncInvokesRequest')
    ListAsyncInvokesResponse = Shapes::StructureShape.new(name: 'ListAsyncInvokesResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StructureShape.new(name: 'Message')
    MessageStartEvent = Shapes::StructureShape.new(name: 'MessageStartEvent')
    MessageStopEvent = Shapes::StructureShape.new(name: 'MessageStopEvent')
    Messages = Shapes::ListShape.new(name: 'Messages')
    MimeType = Shapes::StringShape.new(name: 'MimeType')
    ModelErrorException = Shapes::StructureShape.new(name: 'ModelErrorException')
    ModelInputPayload = Shapes::DocumentShape.new(name: 'ModelInputPayload', document: true)
    ModelNotReadyException = Shapes::StructureShape.new(name: 'ModelNotReadyException')
    ModelOutputs = Shapes::ListShape.new(name: 'ModelOutputs')
    ModelStreamErrorException = Shapes::StructureShape.new(name: 'ModelStreamErrorException')
    ModelTimeoutException = Shapes::StructureShape.new(name: 'ModelTimeoutException')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonNegativeInteger = Shapes::IntegerShape.new(name: 'NonNegativeInteger')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PartBody = Shapes::BlobShape.new(name: 'PartBody')
    PayloadPart = Shapes::StructureShape.new(name: 'PayloadPart')
    PerformanceConfigLatency = Shapes::StringShape.new(name: 'PerformanceConfigLatency')
    PerformanceConfiguration = Shapes::StructureShape.new(name: 'PerformanceConfiguration')
    PromptRouterTrace = Shapes::StructureShape.new(name: 'PromptRouterTrace')
    PromptVariableMap = Shapes::MapShape.new(name: 'PromptVariableMap')
    PromptVariableValues = Shapes::UnionShape.new(name: 'PromptVariableValues')
    ReasoningContentBlock = Shapes::UnionShape.new(name: 'ReasoningContentBlock')
    ReasoningContentBlockDelta = Shapes::UnionShape.new(name: 'ReasoningContentBlockDelta')
    ReasoningTextBlock = Shapes::StructureShape.new(name: 'ReasoningTextBlock')
    RequestMetadata = Shapes::MapShape.new(name: 'RequestMetadata')
    RequestMetadataKeyString = Shapes::StringShape.new(name: 'RequestMetadataKeyString')
    RequestMetadataValueString = Shapes::StringShape.new(name: 'RequestMetadataValueString')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResponseStream = Shapes::StructureShape.new(name: 'ResponseStream')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SearchResultBlock = Shapes::StructureShape.new(name: 'SearchResultBlock')
    SearchResultContentBlock = Shapes::StructureShape.new(name: 'SearchResultContentBlock')
    SearchResultContentBlocks = Shapes::ListShape.new(name: 'SearchResultContentBlocks')
    SearchResultLocation = Shapes::StructureShape.new(name: 'SearchResultLocation')
    SearchResultLocationEndInteger = Shapes::IntegerShape.new(name: 'SearchResultLocationEndInteger')
    SearchResultLocationSearchResultIndexInteger = Shapes::IntegerShape.new(name: 'SearchResultLocationSearchResultIndexInteger')
    SearchResultLocationStartInteger = Shapes::IntegerShape.new(name: 'SearchResultLocationStartInteger')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceTier = Shapes::StructureShape.new(name: 'ServiceTier')
    ServiceTierType = Shapes::StringShape.new(name: 'ServiceTierType')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SortAsyncInvocationBy = Shapes::StringShape.new(name: 'SortAsyncInvocationBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SpecificToolChoice = Shapes::StructureShape.new(name: 'SpecificToolChoice')
    StartAsyncInvokeRequest = Shapes::StructureShape.new(name: 'StartAsyncInvokeRequest')
    StartAsyncInvokeResponse = Shapes::StructureShape.new(name: 'StartAsyncInvokeResponse')
    StatusCode = Shapes::IntegerShape.new(name: 'StatusCode')
    StopReason = Shapes::StringShape.new(name: 'StopReason')
    String = Shapes::StringShape.new(name: 'String')
    SystemContentBlock = Shapes::UnionShape.new(name: 'SystemContentBlock')
    SystemContentBlocks = Shapes::ListShape.new(name: 'SystemContentBlocks')
    SystemTool = Shapes::StructureShape.new(name: 'SystemTool')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TextCharactersGuarded = Shapes::IntegerShape.new(name: 'TextCharactersGuarded')
    TextCharactersTotal = Shapes::IntegerShape.new(name: 'TextCharactersTotal')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    TokenUsage = Shapes::StructureShape.new(name: 'TokenUsage')
    TokenUsageCacheReadInputTokensInteger = Shapes::IntegerShape.new(name: 'TokenUsageCacheReadInputTokensInteger')
    TokenUsageCacheWriteInputTokensInteger = Shapes::IntegerShape.new(name: 'TokenUsageCacheWriteInputTokensInteger')
    TokenUsageInputTokensInteger = Shapes::IntegerShape.new(name: 'TokenUsageInputTokensInteger')
    TokenUsageOutputTokensInteger = Shapes::IntegerShape.new(name: 'TokenUsageOutputTokensInteger')
    TokenUsageTotalTokensInteger = Shapes::IntegerShape.new(name: 'TokenUsageTotalTokensInteger')
    Tool = Shapes::UnionShape.new(name: 'Tool')
    ToolChoice = Shapes::UnionShape.new(name: 'ToolChoice')
    ToolConfiguration = Shapes::StructureShape.new(name: 'ToolConfiguration')
    ToolConfigurationToolsList = Shapes::ListShape.new(name: 'ToolConfigurationToolsList')
    ToolInputSchema = Shapes::UnionShape.new(name: 'ToolInputSchema')
    ToolName = Shapes::StringShape.new(name: 'ToolName')
    ToolResultBlock = Shapes::StructureShape.new(name: 'ToolResultBlock')
    ToolResultBlockDelta = Shapes::UnionShape.new(name: 'ToolResultBlockDelta')
    ToolResultBlockStart = Shapes::StructureShape.new(name: 'ToolResultBlockStart')
    ToolResultBlocksDelta = Shapes::ListShape.new(name: 'ToolResultBlocksDelta')
    ToolResultContentBlock = Shapes::UnionShape.new(name: 'ToolResultContentBlock')
    ToolResultContentBlocks = Shapes::ListShape.new(name: 'ToolResultContentBlocks')
    ToolResultStatus = Shapes::StringShape.new(name: 'ToolResultStatus')
    ToolSpecification = Shapes::StructureShape.new(name: 'ToolSpecification')
    ToolUseBlock = Shapes::StructureShape.new(name: 'ToolUseBlock')
    ToolUseBlockDelta = Shapes::StructureShape.new(name: 'ToolUseBlockDelta')
    ToolUseBlockStart = Shapes::StructureShape.new(name: 'ToolUseBlockStart')
    ToolUseId = Shapes::StringShape.new(name: 'ToolUseId')
    ToolUseType = Shapes::StringShape.new(name: 'ToolUseType')
    Trace = Shapes::StringShape.new(name: 'Trace')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VideoBlock = Shapes::StructureShape.new(name: 'VideoBlock')
    VideoFormat = Shapes::StringShape.new(name: 'VideoFormat')
    VideoSource = Shapes::UnionShape.new(name: 'VideoSource')
    VideoSourceBytesBlob = Shapes::BlobShape.new(name: 'VideoSourceBytesBlob')
    WebLocation = Shapes::StructureShape.new(name: 'WebLocation')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AnyToolChoice.struct_class = Types::AnyToolChoice

    AppliedGuardrailDetails.add_member(:guardrail_id, Shapes::ShapeRef.new(shape: GuardrailId, location_name: "guardrailId"))
    AppliedGuardrailDetails.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailVersion, location_name: "guardrailVersion"))
    AppliedGuardrailDetails.add_member(:guardrail_arn, Shapes::ShapeRef.new(shape: GuardrailArn, location_name: "guardrailArn"))
    AppliedGuardrailDetails.add_member(:guardrail_origin, Shapes::ShapeRef.new(shape: GuardrailOriginList, location_name: "guardrailOrigin"))
    AppliedGuardrailDetails.add_member(:guardrail_ownership, Shapes::ShapeRef.new(shape: GuardrailOwnership, location_name: "guardrailOwnership"))
    AppliedGuardrailDetails.struct_class = Types::AppliedGuardrailDetails

    ApplyGuardrailRequest.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, required: true, location: "uri", location_name: "guardrailIdentifier"))
    ApplyGuardrailRequest.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailVersion, required: true, location: "uri", location_name: "guardrailVersion"))
    ApplyGuardrailRequest.add_member(:source, Shapes::ShapeRef.new(shape: GuardrailContentSource, required: true, location_name: "source"))
    ApplyGuardrailRequest.add_member(:content, Shapes::ShapeRef.new(shape: GuardrailContentBlockList, required: true, location_name: "content"))
    ApplyGuardrailRequest.add_member(:output_scope, Shapes::ShapeRef.new(shape: GuardrailOutputScope, location_name: "outputScope"))
    ApplyGuardrailRequest.struct_class = Types::ApplyGuardrailRequest

    ApplyGuardrailResponse.add_member(:usage, Shapes::ShapeRef.new(shape: GuardrailUsage, required: true, location_name: "usage"))
    ApplyGuardrailResponse.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailAction, required: true, location_name: "action"))
    ApplyGuardrailResponse.add_member(:action_reason, Shapes::ShapeRef.new(shape: String, location_name: "actionReason"))
    ApplyGuardrailResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: GuardrailOutputContentList, required: true, location_name: "outputs"))
    ApplyGuardrailResponse.add_member(:assessments, Shapes::ShapeRef.new(shape: GuardrailAssessmentList, required: true, location_name: "assessments"))
    ApplyGuardrailResponse.add_member(:guardrail_coverage, Shapes::ShapeRef.new(shape: GuardrailCoverage, location_name: "guardrailCoverage"))
    ApplyGuardrailResponse.struct_class = Types::ApplyGuardrailResponse

    AsyncInvokeOutputDataConfig.add_member(:s3_output_data_config, Shapes::ShapeRef.new(shape: AsyncInvokeS3OutputDataConfig, location_name: "s3OutputDataConfig"))
    AsyncInvokeOutputDataConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AsyncInvokeOutputDataConfig.add_member_subclass(:s3_output_data_config, Types::AsyncInvokeOutputDataConfig::S3OutputDataConfig)
    AsyncInvokeOutputDataConfig.add_member_subclass(:unknown, Types::AsyncInvokeOutputDataConfig::Unknown)
    AsyncInvokeOutputDataConfig.struct_class = Types::AsyncInvokeOutputDataConfig

    AsyncInvokeS3OutputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    AsyncInvokeS3OutputDataConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    AsyncInvokeS3OutputDataConfig.add_member(:bucket_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "bucketOwner"))
    AsyncInvokeS3OutputDataConfig.struct_class = Types::AsyncInvokeS3OutputDataConfig

    AsyncInvokeSummaries.member = Shapes::ShapeRef.new(shape: AsyncInvokeSummary)

    AsyncInvokeSummary.add_member(:invocation_arn, Shapes::ShapeRef.new(shape: InvocationArn, required: true, location_name: "invocationArn"))
    AsyncInvokeSummary.add_member(:model_arn, Shapes::ShapeRef.new(shape: AsyncInvokeArn, required: true, location_name: "modelArn"))
    AsyncInvokeSummary.add_member(:client_request_token, Shapes::ShapeRef.new(shape: AsyncInvokeIdempotencyToken, location_name: "clientRequestToken"))
    AsyncInvokeSummary.add_member(:status, Shapes::ShapeRef.new(shape: AsyncInvokeStatus, location_name: "status"))
    AsyncInvokeSummary.add_member(:failure_message, Shapes::ShapeRef.new(shape: AsyncInvokeMessage, location_name: "failureMessage"))
    AsyncInvokeSummary.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "submitTime"))
    AsyncInvokeSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    AsyncInvokeSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    AsyncInvokeSummary.add_member(:output_data_config, Shapes::ShapeRef.new(shape: AsyncInvokeOutputDataConfig, required: true, location_name: "outputDataConfig"))
    AsyncInvokeSummary.struct_class = Types::AsyncInvokeSummary

    AutoToolChoice.struct_class = Types::AutoToolChoice

    BidirectionalInputPayloadPart.add_member(:bytes, Shapes::ShapeRef.new(shape: PartBody, location_name: "bytes"))
    BidirectionalInputPayloadPart.struct_class = Types::BidirectionalInputPayloadPart

    BidirectionalOutputPayloadPart.add_member(:bytes, Shapes::ShapeRef.new(shape: PartBody, location_name: "bytes"))
    BidirectionalOutputPayloadPart.struct_class = Types::BidirectionalOutputPayloadPart

    CachePointBlock.add_member(:type, Shapes::ShapeRef.new(shape: CachePointType, required: true, location_name: "type"))
    CachePointBlock.struct_class = Types::CachePointBlock

    Citation.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    Citation.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "source"))
    Citation.add_member(:source_content, Shapes::ShapeRef.new(shape: CitationSourceContentList, location_name: "sourceContent"))
    Citation.add_member(:location, Shapes::ShapeRef.new(shape: CitationLocation, location_name: "location"))
    Citation.struct_class = Types::Citation

    CitationGeneratedContent.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    CitationGeneratedContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CitationGeneratedContent.add_member_subclass(:text, Types::CitationGeneratedContent::Text)
    CitationGeneratedContent.add_member_subclass(:unknown, Types::CitationGeneratedContent::Unknown)
    CitationGeneratedContent.struct_class = Types::CitationGeneratedContent

    CitationGeneratedContentList.member = Shapes::ShapeRef.new(shape: CitationGeneratedContent)

    CitationLocation.add_member(:web, Shapes::ShapeRef.new(shape: WebLocation, location_name: "web"))
    CitationLocation.add_member(:document_char, Shapes::ShapeRef.new(shape: DocumentCharLocation, location_name: "documentChar"))
    CitationLocation.add_member(:document_page, Shapes::ShapeRef.new(shape: DocumentPageLocation, location_name: "documentPage"))
    CitationLocation.add_member(:document_chunk, Shapes::ShapeRef.new(shape: DocumentChunkLocation, location_name: "documentChunk"))
    CitationLocation.add_member(:search_result_location, Shapes::ShapeRef.new(shape: SearchResultLocation, location_name: "searchResultLocation"))
    CitationLocation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CitationLocation.add_member_subclass(:web, Types::CitationLocation::Web)
    CitationLocation.add_member_subclass(:document_char, Types::CitationLocation::DocumentChar)
    CitationLocation.add_member_subclass(:document_page, Types::CitationLocation::DocumentPage)
    CitationLocation.add_member_subclass(:document_chunk, Types::CitationLocation::DocumentChunk)
    CitationLocation.add_member_subclass(:search_result_location, Types::CitationLocation::SearchResultLocation)
    CitationLocation.add_member_subclass(:unknown, Types::CitationLocation::Unknown)
    CitationLocation.struct_class = Types::CitationLocation

    CitationSourceContent.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    CitationSourceContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CitationSourceContent.add_member_subclass(:text, Types::CitationSourceContent::Text)
    CitationSourceContent.add_member_subclass(:unknown, Types::CitationSourceContent::Unknown)
    CitationSourceContent.struct_class = Types::CitationSourceContent

    CitationSourceContentDelta.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    CitationSourceContentDelta.struct_class = Types::CitationSourceContentDelta

    CitationSourceContentList.member = Shapes::ShapeRef.new(shape: CitationSourceContent)

    CitationSourceContentListDelta.member = Shapes::ShapeRef.new(shape: CitationSourceContentDelta)

    Citations.member = Shapes::ShapeRef.new(shape: Citation)

    CitationsConfig.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    CitationsConfig.struct_class = Types::CitationsConfig

    CitationsContentBlock.add_member(:content, Shapes::ShapeRef.new(shape: CitationGeneratedContentList, location_name: "content"))
    CitationsContentBlock.add_member(:citations, Shapes::ShapeRef.new(shape: Citations, location_name: "citations"))
    CitationsContentBlock.struct_class = Types::CitationsContentBlock

    CitationsDelta.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    CitationsDelta.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "source"))
    CitationsDelta.add_member(:source_content, Shapes::ShapeRef.new(shape: CitationSourceContentListDelta, location_name: "sourceContent"))
    CitationsDelta.add_member(:location, Shapes::ShapeRef.new(shape: CitationLocation, location_name: "location"))
    CitationsDelta.struct_class = Types::CitationsDelta

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    ContentBlock.add_member(:image, Shapes::ShapeRef.new(shape: ImageBlock, location_name: "image"))
    ContentBlock.add_member(:document, Shapes::ShapeRef.new(shape: DocumentBlock, location_name: "document"))
    ContentBlock.add_member(:video, Shapes::ShapeRef.new(shape: VideoBlock, location_name: "video"))
    ContentBlock.add_member(:tool_use, Shapes::ShapeRef.new(shape: ToolUseBlock, location_name: "toolUse"))
    ContentBlock.add_member(:tool_result, Shapes::ShapeRef.new(shape: ToolResultBlock, location_name: "toolResult"))
    ContentBlock.add_member(:guard_content, Shapes::ShapeRef.new(shape: GuardrailConverseContentBlock, location_name: "guardContent"))
    ContentBlock.add_member(:cache_point, Shapes::ShapeRef.new(shape: CachePointBlock, location_name: "cachePoint"))
    ContentBlock.add_member(:reasoning_content, Shapes::ShapeRef.new(shape: ReasoningContentBlock, location_name: "reasoningContent"))
    ContentBlock.add_member(:citations_content, Shapes::ShapeRef.new(shape: CitationsContentBlock, location_name: "citationsContent"))
    ContentBlock.add_member(:search_result, Shapes::ShapeRef.new(shape: SearchResultBlock, location_name: "searchResult"))
    ContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ContentBlock.add_member_subclass(:text, Types::ContentBlock::Text)
    ContentBlock.add_member_subclass(:image, Types::ContentBlock::Image)
    ContentBlock.add_member_subclass(:document, Types::ContentBlock::Document)
    ContentBlock.add_member_subclass(:video, Types::ContentBlock::Video)
    ContentBlock.add_member_subclass(:tool_use, Types::ContentBlock::ToolUse)
    ContentBlock.add_member_subclass(:tool_result, Types::ContentBlock::ToolResult)
    ContentBlock.add_member_subclass(:guard_content, Types::ContentBlock::GuardContent)
    ContentBlock.add_member_subclass(:cache_point, Types::ContentBlock::CachePoint)
    ContentBlock.add_member_subclass(:reasoning_content, Types::ContentBlock::ReasoningContent)
    ContentBlock.add_member_subclass(:citations_content, Types::ContentBlock::CitationsContent)
    ContentBlock.add_member_subclass(:search_result, Types::ContentBlock::SearchResult)
    ContentBlock.add_member_subclass(:unknown, Types::ContentBlock::Unknown)
    ContentBlock.struct_class = Types::ContentBlock

    ContentBlockDelta.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    ContentBlockDelta.add_member(:tool_use, Shapes::ShapeRef.new(shape: ToolUseBlockDelta, location_name: "toolUse"))
    ContentBlockDelta.add_member(:tool_result, Shapes::ShapeRef.new(shape: ToolResultBlocksDelta, location_name: "toolResult"))
    ContentBlockDelta.add_member(:reasoning_content, Shapes::ShapeRef.new(shape: ReasoningContentBlockDelta, location_name: "reasoningContent"))
    ContentBlockDelta.add_member(:citation, Shapes::ShapeRef.new(shape: CitationsDelta, location_name: "citation"))
    ContentBlockDelta.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ContentBlockDelta.add_member_subclass(:text, Types::ContentBlockDelta::Text)
    ContentBlockDelta.add_member_subclass(:tool_use, Types::ContentBlockDelta::ToolUse)
    ContentBlockDelta.add_member_subclass(:tool_result, Types::ContentBlockDelta::ToolResult)
    ContentBlockDelta.add_member_subclass(:reasoning_content, Types::ContentBlockDelta::ReasoningContent)
    ContentBlockDelta.add_member_subclass(:citation, Types::ContentBlockDelta::Citation)
    ContentBlockDelta.add_member_subclass(:unknown, Types::ContentBlockDelta::Unknown)
    ContentBlockDelta.struct_class = Types::ContentBlockDelta

    ContentBlockDeltaEvent.add_member(:delta, Shapes::ShapeRef.new(shape: ContentBlockDelta, required: true, location_name: "delta"))
    ContentBlockDeltaEvent.add_member(:content_block_index, Shapes::ShapeRef.new(shape: NonNegativeInteger, required: true, location_name: "contentBlockIndex"))
    ContentBlockDeltaEvent.struct_class = Types::ContentBlockDeltaEvent

    ContentBlockStart.add_member(:tool_use, Shapes::ShapeRef.new(shape: ToolUseBlockStart, location_name: "toolUse"))
    ContentBlockStart.add_member(:tool_result, Shapes::ShapeRef.new(shape: ToolResultBlockStart, location_name: "toolResult"))
    ContentBlockStart.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ContentBlockStart.add_member_subclass(:tool_use, Types::ContentBlockStart::ToolUse)
    ContentBlockStart.add_member_subclass(:tool_result, Types::ContentBlockStart::ToolResult)
    ContentBlockStart.add_member_subclass(:unknown, Types::ContentBlockStart::Unknown)
    ContentBlockStart.struct_class = Types::ContentBlockStart

    ContentBlockStartEvent.add_member(:start, Shapes::ShapeRef.new(shape: ContentBlockStart, required: true, location_name: "start"))
    ContentBlockStartEvent.add_member(:content_block_index, Shapes::ShapeRef.new(shape: NonNegativeInteger, required: true, location_name: "contentBlockIndex"))
    ContentBlockStartEvent.struct_class = Types::ContentBlockStartEvent

    ContentBlockStopEvent.add_member(:content_block_index, Shapes::ShapeRef.new(shape: NonNegativeInteger, required: true, location_name: "contentBlockIndex"))
    ContentBlockStopEvent.struct_class = Types::ContentBlockStopEvent

    ContentBlocks.member = Shapes::ShapeRef.new(shape: ContentBlock)

    ConverseMetrics.add_member(:latency_ms, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "latencyMs"))
    ConverseMetrics.struct_class = Types::ConverseMetrics

    ConverseOutput.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    ConverseOutput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ConverseOutput.add_member_subclass(:message, Types::ConverseOutput::Message)
    ConverseOutput.add_member_subclass(:unknown, Types::ConverseOutput::Unknown)
    ConverseOutput.struct_class = Types::ConverseOutput

    ConverseRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: ConversationalModelId, required: true, location: "uri", location_name: "modelId"))
    ConverseRequest.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, location_name: "messages"))
    ConverseRequest.add_member(:system, Shapes::ShapeRef.new(shape: SystemContentBlocks, location_name: "system"))
    ConverseRequest.add_member(:inference_config, Shapes::ShapeRef.new(shape: InferenceConfiguration, location_name: "inferenceConfig"))
    ConverseRequest.add_member(:tool_config, Shapes::ShapeRef.new(shape: ToolConfiguration, location_name: "toolConfig"))
    ConverseRequest.add_member(:guardrail_config, Shapes::ShapeRef.new(shape: GuardrailConfiguration, location_name: "guardrailConfig"))
    ConverseRequest.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: Document, location_name: "additionalModelRequestFields"))
    ConverseRequest.add_member(:prompt_variables, Shapes::ShapeRef.new(shape: PromptVariableMap, location_name: "promptVariables"))
    ConverseRequest.add_member(:additional_model_response_field_paths, Shapes::ShapeRef.new(shape: ConverseRequestAdditionalModelResponseFieldPathsList, location_name: "additionalModelResponseFieldPaths"))
    ConverseRequest.add_member(:request_metadata, Shapes::ShapeRef.new(shape: RequestMetadata, location_name: "requestMetadata"))
    ConverseRequest.add_member(:performance_config, Shapes::ShapeRef.new(shape: PerformanceConfiguration, location_name: "performanceConfig"))
    ConverseRequest.add_member(:service_tier, Shapes::ShapeRef.new(shape: ServiceTier, location_name: "serviceTier"))
    ConverseRequest.struct_class = Types::ConverseRequest

    ConverseRequestAdditionalModelResponseFieldPathsList.member = Shapes::ShapeRef.new(shape: ConverseRequestAdditionalModelResponseFieldPathsListMemberString)

    ConverseResponse.add_member(:output, Shapes::ShapeRef.new(shape: ConverseOutput, required: true, location_name: "output"))
    ConverseResponse.add_member(:stop_reason, Shapes::ShapeRef.new(shape: StopReason, required: true, location_name: "stopReason"))
    ConverseResponse.add_member(:usage, Shapes::ShapeRef.new(shape: TokenUsage, required: true, location_name: "usage"))
    ConverseResponse.add_member(:metrics, Shapes::ShapeRef.new(shape: ConverseMetrics, required: true, location_name: "metrics"))
    ConverseResponse.add_member(:additional_model_response_fields, Shapes::ShapeRef.new(shape: Document, location_name: "additionalModelResponseFields"))
    ConverseResponse.add_member(:trace, Shapes::ShapeRef.new(shape: ConverseTrace, location_name: "trace"))
    ConverseResponse.add_member(:performance_config, Shapes::ShapeRef.new(shape: PerformanceConfiguration, location_name: "performanceConfig"))
    ConverseResponse.add_member(:service_tier, Shapes::ShapeRef.new(shape: ServiceTier, location_name: "serviceTier"))
    ConverseResponse.struct_class = Types::ConverseResponse

    ConverseStreamMetadataEvent.add_member(:usage, Shapes::ShapeRef.new(shape: TokenUsage, required: true, location_name: "usage"))
    ConverseStreamMetadataEvent.add_member(:metrics, Shapes::ShapeRef.new(shape: ConverseStreamMetrics, required: true, location_name: "metrics"))
    ConverseStreamMetadataEvent.add_member(:trace, Shapes::ShapeRef.new(shape: ConverseStreamTrace, location_name: "trace"))
    ConverseStreamMetadataEvent.add_member(:performance_config, Shapes::ShapeRef.new(shape: PerformanceConfiguration, location_name: "performanceConfig"))
    ConverseStreamMetadataEvent.add_member(:service_tier, Shapes::ShapeRef.new(shape: ServiceTier, location_name: "serviceTier"))
    ConverseStreamMetadataEvent.struct_class = Types::ConverseStreamMetadataEvent

    ConverseStreamMetrics.add_member(:latency_ms, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "latencyMs"))
    ConverseStreamMetrics.struct_class = Types::ConverseStreamMetrics

    ConverseStreamOutput.add_member(:message_start, Shapes::ShapeRef.new(shape: MessageStartEvent, event: true, location_name: "messageStart"))
    ConverseStreamOutput.add_member(:content_block_start, Shapes::ShapeRef.new(shape: ContentBlockStartEvent, event: true, location_name: "contentBlockStart"))
    ConverseStreamOutput.add_member(:content_block_delta, Shapes::ShapeRef.new(shape: ContentBlockDeltaEvent, event: true, location_name: "contentBlockDelta"))
    ConverseStreamOutput.add_member(:content_block_stop, Shapes::ShapeRef.new(shape: ContentBlockStopEvent, event: true, location_name: "contentBlockStop"))
    ConverseStreamOutput.add_member(:message_stop, Shapes::ShapeRef.new(shape: MessageStopEvent, event: true, location_name: "messageStop"))
    ConverseStreamOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: ConverseStreamMetadataEvent, event: true, location_name: "metadata"))
    ConverseStreamOutput.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    ConverseStreamOutput.add_member(:model_stream_error_exception, Shapes::ShapeRef.new(shape: ModelStreamErrorException, location_name: "modelStreamErrorException"))
    ConverseStreamOutput.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    ConverseStreamOutput.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    ConverseStreamOutput.add_member(:service_unavailable_exception, Shapes::ShapeRef.new(shape: ServiceUnavailableException, location_name: "serviceUnavailableException"))
    ConverseStreamOutput.struct_class = Types::ConverseStreamOutput

    ConverseStreamRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: ConversationalModelId, required: true, location: "uri", location_name: "modelId"))
    ConverseStreamRequest.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, location_name: "messages"))
    ConverseStreamRequest.add_member(:system, Shapes::ShapeRef.new(shape: SystemContentBlocks, location_name: "system"))
    ConverseStreamRequest.add_member(:inference_config, Shapes::ShapeRef.new(shape: InferenceConfiguration, location_name: "inferenceConfig"))
    ConverseStreamRequest.add_member(:tool_config, Shapes::ShapeRef.new(shape: ToolConfiguration, location_name: "toolConfig"))
    ConverseStreamRequest.add_member(:guardrail_config, Shapes::ShapeRef.new(shape: GuardrailStreamConfiguration, location_name: "guardrailConfig"))
    ConverseStreamRequest.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: Document, location_name: "additionalModelRequestFields"))
    ConverseStreamRequest.add_member(:prompt_variables, Shapes::ShapeRef.new(shape: PromptVariableMap, location_name: "promptVariables"))
    ConverseStreamRequest.add_member(:additional_model_response_field_paths, Shapes::ShapeRef.new(shape: ConverseStreamRequestAdditionalModelResponseFieldPathsList, location_name: "additionalModelResponseFieldPaths"))
    ConverseStreamRequest.add_member(:request_metadata, Shapes::ShapeRef.new(shape: RequestMetadata, location_name: "requestMetadata"))
    ConverseStreamRequest.add_member(:performance_config, Shapes::ShapeRef.new(shape: PerformanceConfiguration, location_name: "performanceConfig"))
    ConverseStreamRequest.add_member(:service_tier, Shapes::ShapeRef.new(shape: ServiceTier, location_name: "serviceTier"))
    ConverseStreamRequest.struct_class = Types::ConverseStreamRequest

    ConverseStreamRequestAdditionalModelResponseFieldPathsList.member = Shapes::ShapeRef.new(shape: ConverseStreamRequestAdditionalModelResponseFieldPathsListMemberString)

    ConverseStreamResponse.add_member(:stream, Shapes::ShapeRef.new(shape: ConverseStreamOutput, eventstream: true, location_name: "stream"))
    ConverseStreamResponse.struct_class = Types::ConverseStreamResponse
    ConverseStreamResponse[:payload] = :stream
    ConverseStreamResponse[:payload_member] = ConverseStreamResponse.member(:stream)

    ConverseStreamTrace.add_member(:guardrail, Shapes::ShapeRef.new(shape: GuardrailTraceAssessment, location_name: "guardrail"))
    ConverseStreamTrace.add_member(:prompt_router, Shapes::ShapeRef.new(shape: PromptRouterTrace, location_name: "promptRouter"))
    ConverseStreamTrace.struct_class = Types::ConverseStreamTrace

    ConverseTokensRequest.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, location_name: "messages"))
    ConverseTokensRequest.add_member(:system, Shapes::ShapeRef.new(shape: SystemContentBlocks, location_name: "system"))
    ConverseTokensRequest.add_member(:tool_config, Shapes::ShapeRef.new(shape: ToolConfiguration, location_name: "toolConfig"))
    ConverseTokensRequest.add_member(:additional_model_request_fields, Shapes::ShapeRef.new(shape: Document, location_name: "additionalModelRequestFields"))
    ConverseTokensRequest.struct_class = Types::ConverseTokensRequest

    ConverseTrace.add_member(:guardrail, Shapes::ShapeRef.new(shape: GuardrailTraceAssessment, location_name: "guardrail"))
    ConverseTrace.add_member(:prompt_router, Shapes::ShapeRef.new(shape: PromptRouterTrace, location_name: "promptRouter"))
    ConverseTrace.struct_class = Types::ConverseTrace

    CountTokensInput.add_member(:invoke_model, Shapes::ShapeRef.new(shape: InvokeModelTokensRequest, location_name: "invokeModel"))
    CountTokensInput.add_member(:converse, Shapes::ShapeRef.new(shape: ConverseTokensRequest, location_name: "converse"))
    CountTokensInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CountTokensInput.add_member_subclass(:invoke_model, Types::CountTokensInput::InvokeModel)
    CountTokensInput.add_member_subclass(:converse, Types::CountTokensInput::Converse)
    CountTokensInput.add_member_subclass(:unknown, Types::CountTokensInput::Unknown)
    CountTokensInput.struct_class = Types::CountTokensInput

    CountTokensRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: FoundationModelVersionIdentifier, required: true, location: "uri", location_name: "modelId"))
    CountTokensRequest.add_member(:input, Shapes::ShapeRef.new(shape: CountTokensInput, required: true, location_name: "input"))
    CountTokensRequest.struct_class = Types::CountTokensRequest

    CountTokensResponse.add_member(:input_tokens, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "inputTokens"))
    CountTokensResponse.struct_class = Types::CountTokensResponse

    DocumentBlock.add_member(:format, Shapes::ShapeRef.new(shape: DocumentFormat, location_name: "format"))
    DocumentBlock.add_member(:name, Shapes::ShapeRef.new(shape: DocumentBlockNameString, required: true, location_name: "name"))
    DocumentBlock.add_member(:source, Shapes::ShapeRef.new(shape: DocumentSource, required: true, location_name: "source"))
    DocumentBlock.add_member(:context, Shapes::ShapeRef.new(shape: String, location_name: "context"))
    DocumentBlock.add_member(:citations, Shapes::ShapeRef.new(shape: CitationsConfig, location_name: "citations"))
    DocumentBlock.struct_class = Types::DocumentBlock

    DocumentCharLocation.add_member(:document_index, Shapes::ShapeRef.new(shape: DocumentCharLocationDocumentIndexInteger, location_name: "documentIndex"))
    DocumentCharLocation.add_member(:start, Shapes::ShapeRef.new(shape: DocumentCharLocationStartInteger, location_name: "start"))
    DocumentCharLocation.add_member(:end, Shapes::ShapeRef.new(shape: DocumentCharLocationEndInteger, location_name: "end"))
    DocumentCharLocation.struct_class = Types::DocumentCharLocation

    DocumentChunkLocation.add_member(:document_index, Shapes::ShapeRef.new(shape: DocumentChunkLocationDocumentIndexInteger, location_name: "documentIndex"))
    DocumentChunkLocation.add_member(:start, Shapes::ShapeRef.new(shape: DocumentChunkLocationStartInteger, location_name: "start"))
    DocumentChunkLocation.add_member(:end, Shapes::ShapeRef.new(shape: DocumentChunkLocationEndInteger, location_name: "end"))
    DocumentChunkLocation.struct_class = Types::DocumentChunkLocation

    DocumentContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    DocumentContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DocumentContentBlock.add_member_subclass(:text, Types::DocumentContentBlock::Text)
    DocumentContentBlock.add_member_subclass(:unknown, Types::DocumentContentBlock::Unknown)
    DocumentContentBlock.struct_class = Types::DocumentContentBlock

    DocumentContentBlocks.member = Shapes::ShapeRef.new(shape: DocumentContentBlock)

    DocumentPageLocation.add_member(:document_index, Shapes::ShapeRef.new(shape: DocumentPageLocationDocumentIndexInteger, location_name: "documentIndex"))
    DocumentPageLocation.add_member(:start, Shapes::ShapeRef.new(shape: DocumentPageLocationStartInteger, location_name: "start"))
    DocumentPageLocation.add_member(:end, Shapes::ShapeRef.new(shape: DocumentPageLocationEndInteger, location_name: "end"))
    DocumentPageLocation.struct_class = Types::DocumentPageLocation

    DocumentSource.add_member(:bytes, Shapes::ShapeRef.new(shape: DocumentSourceBytesBlob, location_name: "bytes"))
    DocumentSource.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    DocumentSource.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    DocumentSource.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContentBlocks, location_name: "content"))
    DocumentSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DocumentSource.add_member_subclass(:bytes, Types::DocumentSource::Bytes)
    DocumentSource.add_member_subclass(:s3_location, Types::DocumentSource::S3Location)
    DocumentSource.add_member_subclass(:text, Types::DocumentSource::Text)
    DocumentSource.add_member_subclass(:content, Types::DocumentSource::Content)
    DocumentSource.add_member_subclass(:unknown, Types::DocumentSource::Unknown)
    DocumentSource.struct_class = Types::DocumentSource

    GetAsyncInvokeRequest.add_member(:invocation_arn, Shapes::ShapeRef.new(shape: InvocationArn, required: true, location: "uri", location_name: "invocationArn"))
    GetAsyncInvokeRequest.struct_class = Types::GetAsyncInvokeRequest

    GetAsyncInvokeResponse.add_member(:invocation_arn, Shapes::ShapeRef.new(shape: InvocationArn, required: true, location_name: "invocationArn"))
    GetAsyncInvokeResponse.add_member(:model_arn, Shapes::ShapeRef.new(shape: AsyncInvokeArn, required: true, location_name: "modelArn"))
    GetAsyncInvokeResponse.add_member(:client_request_token, Shapes::ShapeRef.new(shape: AsyncInvokeIdempotencyToken, location_name: "clientRequestToken"))
    GetAsyncInvokeResponse.add_member(:status, Shapes::ShapeRef.new(shape: AsyncInvokeStatus, required: true, location_name: "status"))
    GetAsyncInvokeResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: AsyncInvokeMessage, location_name: "failureMessage"))
    GetAsyncInvokeResponse.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "submitTime"))
    GetAsyncInvokeResponse.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedTime"))
    GetAsyncInvokeResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetAsyncInvokeResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: AsyncInvokeOutputDataConfig, required: true, location_name: "outputDataConfig"))
    GetAsyncInvokeResponse.struct_class = Types::GetAsyncInvokeResponse

    GuardrailAssessment.add_member(:topic_policy, Shapes::ShapeRef.new(shape: GuardrailTopicPolicyAssessment, location_name: "topicPolicy"))
    GuardrailAssessment.add_member(:content_policy, Shapes::ShapeRef.new(shape: GuardrailContentPolicyAssessment, location_name: "contentPolicy"))
    GuardrailAssessment.add_member(:word_policy, Shapes::ShapeRef.new(shape: GuardrailWordPolicyAssessment, location_name: "wordPolicy"))
    GuardrailAssessment.add_member(:sensitive_information_policy, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicyAssessment, location_name: "sensitiveInformationPolicy"))
    GuardrailAssessment.add_member(:contextual_grounding_policy, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingPolicyAssessment, location_name: "contextualGroundingPolicy"))
    GuardrailAssessment.add_member(:automated_reasoning_policy, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningPolicyAssessment, location_name: "automatedReasoningPolicy"))
    GuardrailAssessment.add_member(:invocation_metrics, Shapes::ShapeRef.new(shape: GuardrailInvocationMetrics, location_name: "invocationMetrics"))
    GuardrailAssessment.add_member(:applied_guardrail_details, Shapes::ShapeRef.new(shape: AppliedGuardrailDetails, location_name: "appliedGuardrailDetails"))
    GuardrailAssessment.struct_class = Types::GuardrailAssessment

    GuardrailAssessmentList.member = Shapes::ShapeRef.new(shape: GuardrailAssessment)

    GuardrailAssessmentListMap.key = Shapes::ShapeRef.new(shape: String)
    GuardrailAssessmentListMap.value = Shapes::ShapeRef.new(shape: GuardrailAssessmentList)

    GuardrailAssessmentMap.key = Shapes::ShapeRef.new(shape: String)
    GuardrailAssessmentMap.value = Shapes::ShapeRef.new(shape: GuardrailAssessment)

    GuardrailAutomatedReasoningDifferenceScenarioList.member = Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningScenario)

    GuardrailAutomatedReasoningFinding.add_member(:valid, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningValidFinding, location_name: "valid"))
    GuardrailAutomatedReasoningFinding.add_member(:invalid, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningInvalidFinding, location_name: "invalid"))
    GuardrailAutomatedReasoningFinding.add_member(:satisfiable, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningSatisfiableFinding, location_name: "satisfiable"))
    GuardrailAutomatedReasoningFinding.add_member(:impossible, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningImpossibleFinding, location_name: "impossible"))
    GuardrailAutomatedReasoningFinding.add_member(:translation_ambiguous, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningTranslationAmbiguousFinding, location_name: "translationAmbiguous"))
    GuardrailAutomatedReasoningFinding.add_member(:too_complex, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningTooComplexFinding, location_name: "tooComplex"))
    GuardrailAutomatedReasoningFinding.add_member(:no_translations, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningNoTranslationsFinding, location_name: "noTranslations"))
    GuardrailAutomatedReasoningFinding.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    GuardrailAutomatedReasoningFinding.add_member_subclass(:valid, Types::GuardrailAutomatedReasoningFinding::Valid)
    GuardrailAutomatedReasoningFinding.add_member_subclass(:invalid, Types::GuardrailAutomatedReasoningFinding::Invalid)
    GuardrailAutomatedReasoningFinding.add_member_subclass(:satisfiable, Types::GuardrailAutomatedReasoningFinding::Satisfiable)
    GuardrailAutomatedReasoningFinding.add_member_subclass(:impossible, Types::GuardrailAutomatedReasoningFinding::Impossible)
    GuardrailAutomatedReasoningFinding.add_member_subclass(:translation_ambiguous, Types::GuardrailAutomatedReasoningFinding::TranslationAmbiguous)
    GuardrailAutomatedReasoningFinding.add_member_subclass(:too_complex, Types::GuardrailAutomatedReasoningFinding::TooComplex)
    GuardrailAutomatedReasoningFinding.add_member_subclass(:no_translations, Types::GuardrailAutomatedReasoningFinding::NoTranslations)
    GuardrailAutomatedReasoningFinding.add_member_subclass(:unknown, Types::GuardrailAutomatedReasoningFinding::Unknown)
    GuardrailAutomatedReasoningFinding.struct_class = Types::GuardrailAutomatedReasoningFinding

    GuardrailAutomatedReasoningFindingList.member = Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningFinding)

    GuardrailAutomatedReasoningImpossibleFinding.add_member(:translation, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningTranslation, location_name: "translation"))
    GuardrailAutomatedReasoningImpossibleFinding.add_member(:contradicting_rules, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningRuleList, location_name: "contradictingRules"))
    GuardrailAutomatedReasoningImpossibleFinding.add_member(:logic_warning, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningLogicWarning, location_name: "logicWarning"))
    GuardrailAutomatedReasoningImpossibleFinding.struct_class = Types::GuardrailAutomatedReasoningImpossibleFinding

    GuardrailAutomatedReasoningInputTextReference.add_member(:text, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningStatementNaturalLanguageContent, location_name: "text"))
    GuardrailAutomatedReasoningInputTextReference.struct_class = Types::GuardrailAutomatedReasoningInputTextReference

    GuardrailAutomatedReasoningInputTextReferenceList.member = Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningInputTextReference)

    GuardrailAutomatedReasoningInvalidFinding.add_member(:translation, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningTranslation, location_name: "translation"))
    GuardrailAutomatedReasoningInvalidFinding.add_member(:contradicting_rules, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningRuleList, location_name: "contradictingRules"))
    GuardrailAutomatedReasoningInvalidFinding.add_member(:logic_warning, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningLogicWarning, location_name: "logicWarning"))
    GuardrailAutomatedReasoningInvalidFinding.struct_class = Types::GuardrailAutomatedReasoningInvalidFinding

    GuardrailAutomatedReasoningLogicWarning.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningLogicWarningType, location_name: "type"))
    GuardrailAutomatedReasoningLogicWarning.add_member(:premises, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningStatementList, location_name: "premises"))
    GuardrailAutomatedReasoningLogicWarning.add_member(:claims, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningStatementList, location_name: "claims"))
    GuardrailAutomatedReasoningLogicWarning.struct_class = Types::GuardrailAutomatedReasoningLogicWarning

    GuardrailAutomatedReasoningNoTranslationsFinding.struct_class = Types::GuardrailAutomatedReasoningNoTranslationsFinding

    GuardrailAutomatedReasoningPolicyAssessment.add_member(:findings, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningFindingList, location_name: "findings"))
    GuardrailAutomatedReasoningPolicyAssessment.struct_class = Types::GuardrailAutomatedReasoningPolicyAssessment

    GuardrailAutomatedReasoningRule.add_member(:identifier, Shapes::ShapeRef.new(shape: AutomatedReasoningRuleIdentifier, location_name: "identifier"))
    GuardrailAutomatedReasoningRule.add_member(:policy_version_arn, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningPolicyVersionArn, location_name: "policyVersionArn"))
    GuardrailAutomatedReasoningRule.struct_class = Types::GuardrailAutomatedReasoningRule

    GuardrailAutomatedReasoningRuleList.member = Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningRule)

    GuardrailAutomatedReasoningSatisfiableFinding.add_member(:translation, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningTranslation, location_name: "translation"))
    GuardrailAutomatedReasoningSatisfiableFinding.add_member(:claims_true_scenario, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningScenario, location_name: "claimsTrueScenario"))
    GuardrailAutomatedReasoningSatisfiableFinding.add_member(:claims_false_scenario, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningScenario, location_name: "claimsFalseScenario"))
    GuardrailAutomatedReasoningSatisfiableFinding.add_member(:logic_warning, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningLogicWarning, location_name: "logicWarning"))
    GuardrailAutomatedReasoningSatisfiableFinding.struct_class = Types::GuardrailAutomatedReasoningSatisfiableFinding

    GuardrailAutomatedReasoningScenario.add_member(:statements, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningStatementList, location_name: "statements"))
    GuardrailAutomatedReasoningScenario.struct_class = Types::GuardrailAutomatedReasoningScenario

    GuardrailAutomatedReasoningStatement.add_member(:logic, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningStatementLogicContent, location_name: "logic"))
    GuardrailAutomatedReasoningStatement.add_member(:natural_language, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningStatementNaturalLanguageContent, location_name: "naturalLanguage"))
    GuardrailAutomatedReasoningStatement.struct_class = Types::GuardrailAutomatedReasoningStatement

    GuardrailAutomatedReasoningStatementList.member = Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningStatement)

    GuardrailAutomatedReasoningTooComplexFinding.struct_class = Types::GuardrailAutomatedReasoningTooComplexFinding

    GuardrailAutomatedReasoningTranslation.add_member(:premises, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningStatementList, location_name: "premises"))
    GuardrailAutomatedReasoningTranslation.add_member(:claims, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningStatementList, location_name: "claims"))
    GuardrailAutomatedReasoningTranslation.add_member(:untranslated_premises, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningInputTextReferenceList, location_name: "untranslatedPremises"))
    GuardrailAutomatedReasoningTranslation.add_member(:untranslated_claims, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningInputTextReferenceList, location_name: "untranslatedClaims"))
    GuardrailAutomatedReasoningTranslation.add_member(:confidence, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningTranslationConfidence, location_name: "confidence"))
    GuardrailAutomatedReasoningTranslation.struct_class = Types::GuardrailAutomatedReasoningTranslation

    GuardrailAutomatedReasoningTranslationAmbiguousFinding.add_member(:options, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningTranslationOptionList, location_name: "options"))
    GuardrailAutomatedReasoningTranslationAmbiguousFinding.add_member(:difference_scenarios, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningDifferenceScenarioList, location_name: "differenceScenarios"))
    GuardrailAutomatedReasoningTranslationAmbiguousFinding.struct_class = Types::GuardrailAutomatedReasoningTranslationAmbiguousFinding

    GuardrailAutomatedReasoningTranslationList.member = Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningTranslation)

    GuardrailAutomatedReasoningTranslationOption.add_member(:translations, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningTranslationList, location_name: "translations"))
    GuardrailAutomatedReasoningTranslationOption.struct_class = Types::GuardrailAutomatedReasoningTranslationOption

    GuardrailAutomatedReasoningTranslationOptionList.member = Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningTranslationOption)

    GuardrailAutomatedReasoningValidFinding.add_member(:translation, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningTranslation, location_name: "translation"))
    GuardrailAutomatedReasoningValidFinding.add_member(:claims_true_scenario, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningScenario, location_name: "claimsTrueScenario"))
    GuardrailAutomatedReasoningValidFinding.add_member(:supporting_rules, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningRuleList, location_name: "supportingRules"))
    GuardrailAutomatedReasoningValidFinding.add_member(:logic_warning, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningLogicWarning, location_name: "logicWarning"))
    GuardrailAutomatedReasoningValidFinding.struct_class = Types::GuardrailAutomatedReasoningValidFinding

    GuardrailConfiguration.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, location_name: "guardrailIdentifier"))
    GuardrailConfiguration.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailVersion, location_name: "guardrailVersion"))
    GuardrailConfiguration.add_member(:trace, Shapes::ShapeRef.new(shape: GuardrailTrace, location_name: "trace"))
    GuardrailConfiguration.struct_class = Types::GuardrailConfiguration

    GuardrailContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: GuardrailTextBlock, location_name: "text"))
    GuardrailContentBlock.add_member(:image, Shapes::ShapeRef.new(shape: GuardrailImageBlock, location_name: "image"))
    GuardrailContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    GuardrailContentBlock.add_member_subclass(:text, Types::GuardrailContentBlock::Text)
    GuardrailContentBlock.add_member_subclass(:image, Types::GuardrailContentBlock::Image)
    GuardrailContentBlock.add_member_subclass(:unknown, Types::GuardrailContentBlock::Unknown)
    GuardrailContentBlock.struct_class = Types::GuardrailContentBlock

    GuardrailContentBlockList.member = Shapes::ShapeRef.new(shape: GuardrailContentBlock)

    GuardrailContentFilter.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailContentFilterType, required: true, location_name: "type"))
    GuardrailContentFilter.add_member(:confidence, Shapes::ShapeRef.new(shape: GuardrailContentFilterConfidence, required: true, location_name: "confidence"))
    GuardrailContentFilter.add_member(:filter_strength, Shapes::ShapeRef.new(shape: GuardrailContentFilterStrength, location_name: "filterStrength"))
    GuardrailContentFilter.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailContentPolicyAction, required: true, location_name: "action"))
    GuardrailContentFilter.add_member(:detected, Shapes::ShapeRef.new(shape: Boolean, location_name: "detected"))
    GuardrailContentFilter.struct_class = Types::GuardrailContentFilter

    GuardrailContentFilterList.member = Shapes::ShapeRef.new(shape: GuardrailContentFilter)

    GuardrailContentPolicyAssessment.add_member(:filters, Shapes::ShapeRef.new(shape: GuardrailContentFilterList, required: true, location_name: "filters"))
    GuardrailContentPolicyAssessment.struct_class = Types::GuardrailContentPolicyAssessment

    GuardrailContentQualifierList.member = Shapes::ShapeRef.new(shape: GuardrailContentQualifier)

    GuardrailContextualGroundingFilter.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterType, required: true, location_name: "type"))
    GuardrailContextualGroundingFilter.add_member(:threshold, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterThresholdDouble, required: true, location_name: "threshold"))
    GuardrailContextualGroundingFilter.add_member(:score, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilterScoreDouble, required: true, location_name: "score"))
    GuardrailContextualGroundingFilter.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingPolicyAction, required: true, location_name: "action"))
    GuardrailContextualGroundingFilter.add_member(:detected, Shapes::ShapeRef.new(shape: Boolean, location_name: "detected"))
    GuardrailContextualGroundingFilter.struct_class = Types::GuardrailContextualGroundingFilter

    GuardrailContextualGroundingFilters.member = Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilter)

    GuardrailContextualGroundingPolicyAssessment.add_member(:filters, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingFilters, location_name: "filters"))
    GuardrailContextualGroundingPolicyAssessment.struct_class = Types::GuardrailContextualGroundingPolicyAssessment

    GuardrailConverseContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: GuardrailConverseTextBlock, location_name: "text"))
    GuardrailConverseContentBlock.add_member(:image, Shapes::ShapeRef.new(shape: GuardrailConverseImageBlock, location_name: "image"))
    GuardrailConverseContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    GuardrailConverseContentBlock.add_member_subclass(:text, Types::GuardrailConverseContentBlock::Text)
    GuardrailConverseContentBlock.add_member_subclass(:image, Types::GuardrailConverseContentBlock::Image)
    GuardrailConverseContentBlock.add_member_subclass(:unknown, Types::GuardrailConverseContentBlock::Unknown)
    GuardrailConverseContentBlock.struct_class = Types::GuardrailConverseContentBlock

    GuardrailConverseContentQualifierList.member = Shapes::ShapeRef.new(shape: GuardrailConverseContentQualifier)

    GuardrailConverseImageBlock.add_member(:format, Shapes::ShapeRef.new(shape: GuardrailConverseImageFormat, required: true, location_name: "format"))
    GuardrailConverseImageBlock.add_member(:source, Shapes::ShapeRef.new(shape: GuardrailConverseImageSource, required: true, location_name: "source"))
    GuardrailConverseImageBlock.struct_class = Types::GuardrailConverseImageBlock

    GuardrailConverseImageSource.add_member(:bytes, Shapes::ShapeRef.new(shape: GuardrailConverseImageSourceBytesBlob, location_name: "bytes"))
    GuardrailConverseImageSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    GuardrailConverseImageSource.add_member_subclass(:bytes, Types::GuardrailConverseImageSource::Bytes)
    GuardrailConverseImageSource.add_member_subclass(:unknown, Types::GuardrailConverseImageSource::Unknown)
    GuardrailConverseImageSource.struct_class = Types::GuardrailConverseImageSource

    GuardrailConverseTextBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "text"))
    GuardrailConverseTextBlock.add_member(:qualifiers, Shapes::ShapeRef.new(shape: GuardrailConverseContentQualifierList, location_name: "qualifiers"))
    GuardrailConverseTextBlock.struct_class = Types::GuardrailConverseTextBlock

    GuardrailCoverage.add_member(:text_characters, Shapes::ShapeRef.new(shape: GuardrailTextCharactersCoverage, location_name: "textCharacters"))
    GuardrailCoverage.add_member(:images, Shapes::ShapeRef.new(shape: GuardrailImageCoverage, location_name: "images"))
    GuardrailCoverage.struct_class = Types::GuardrailCoverage

    GuardrailCustomWord.add_member(:match, Shapes::ShapeRef.new(shape: String, required: true, location_name: "match"))
    GuardrailCustomWord.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailWordPolicyAction, required: true, location_name: "action"))
    GuardrailCustomWord.add_member(:detected, Shapes::ShapeRef.new(shape: Boolean, location_name: "detected"))
    GuardrailCustomWord.struct_class = Types::GuardrailCustomWord

    GuardrailCustomWordList.member = Shapes::ShapeRef.new(shape: GuardrailCustomWord)

    GuardrailImageBlock.add_member(:format, Shapes::ShapeRef.new(shape: GuardrailImageFormat, required: true, location_name: "format"))
    GuardrailImageBlock.add_member(:source, Shapes::ShapeRef.new(shape: GuardrailImageSource, required: true, location_name: "source"))
    GuardrailImageBlock.struct_class = Types::GuardrailImageBlock

    GuardrailImageCoverage.add_member(:guarded, Shapes::ShapeRef.new(shape: ImagesGuarded, location_name: "guarded"))
    GuardrailImageCoverage.add_member(:total, Shapes::ShapeRef.new(shape: ImagesTotal, location_name: "total"))
    GuardrailImageCoverage.struct_class = Types::GuardrailImageCoverage

    GuardrailImageSource.add_member(:bytes, Shapes::ShapeRef.new(shape: GuardrailImageSourceBytesBlob, location_name: "bytes"))
    GuardrailImageSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    GuardrailImageSource.add_member_subclass(:bytes, Types::GuardrailImageSource::Bytes)
    GuardrailImageSource.add_member_subclass(:unknown, Types::GuardrailImageSource::Unknown)
    GuardrailImageSource.struct_class = Types::GuardrailImageSource

    GuardrailInvocationMetrics.add_member(:guardrail_processing_latency, Shapes::ShapeRef.new(shape: GuardrailProcessingLatency, location_name: "guardrailProcessingLatency"))
    GuardrailInvocationMetrics.add_member(:usage, Shapes::ShapeRef.new(shape: GuardrailUsage, location_name: "usage"))
    GuardrailInvocationMetrics.add_member(:guardrail_coverage, Shapes::ShapeRef.new(shape: GuardrailCoverage, location_name: "guardrailCoverage"))
    GuardrailInvocationMetrics.struct_class = Types::GuardrailInvocationMetrics

    GuardrailManagedWord.add_member(:match, Shapes::ShapeRef.new(shape: String, required: true, location_name: "match"))
    GuardrailManagedWord.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailManagedWordType, required: true, location_name: "type"))
    GuardrailManagedWord.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailWordPolicyAction, required: true, location_name: "action"))
    GuardrailManagedWord.add_member(:detected, Shapes::ShapeRef.new(shape: Boolean, location_name: "detected"))
    GuardrailManagedWord.struct_class = Types::GuardrailManagedWord

    GuardrailManagedWordList.member = Shapes::ShapeRef.new(shape: GuardrailManagedWord)

    GuardrailOriginList.member = Shapes::ShapeRef.new(shape: GuardrailOrigin)

    GuardrailOutputContent.add_member(:text, Shapes::ShapeRef.new(shape: GuardrailOutputText, location_name: "text"))
    GuardrailOutputContent.struct_class = Types::GuardrailOutputContent

    GuardrailOutputContentList.member = Shapes::ShapeRef.new(shape: GuardrailOutputContent)

    GuardrailPiiEntityFilter.add_member(:match, Shapes::ShapeRef.new(shape: String, required: true, location_name: "match"))
    GuardrailPiiEntityFilter.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailPiiEntityType, required: true, location_name: "type"))
    GuardrailPiiEntityFilter.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicyAction, required: true, location_name: "action"))
    GuardrailPiiEntityFilter.add_member(:detected, Shapes::ShapeRef.new(shape: Boolean, location_name: "detected"))
    GuardrailPiiEntityFilter.struct_class = Types::GuardrailPiiEntityFilter

    GuardrailPiiEntityFilterList.member = Shapes::ShapeRef.new(shape: GuardrailPiiEntityFilter)

    GuardrailRegexFilter.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    GuardrailRegexFilter.add_member(:match, Shapes::ShapeRef.new(shape: String, location_name: "match"))
    GuardrailRegexFilter.add_member(:regex, Shapes::ShapeRef.new(shape: String, location_name: "regex"))
    GuardrailRegexFilter.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicyAction, required: true, location_name: "action"))
    GuardrailRegexFilter.add_member(:detected, Shapes::ShapeRef.new(shape: Boolean, location_name: "detected"))
    GuardrailRegexFilter.struct_class = Types::GuardrailRegexFilter

    GuardrailRegexFilterList.member = Shapes::ShapeRef.new(shape: GuardrailRegexFilter)

    GuardrailSensitiveInformationPolicyAssessment.add_member(:pii_entities, Shapes::ShapeRef.new(shape: GuardrailPiiEntityFilterList, required: true, location_name: "piiEntities"))
    GuardrailSensitiveInformationPolicyAssessment.add_member(:regexes, Shapes::ShapeRef.new(shape: GuardrailRegexFilterList, required: true, location_name: "regexes"))
    GuardrailSensitiveInformationPolicyAssessment.struct_class = Types::GuardrailSensitiveInformationPolicyAssessment

    GuardrailStreamConfiguration.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, location_name: "guardrailIdentifier"))
    GuardrailStreamConfiguration.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailVersion, location_name: "guardrailVersion"))
    GuardrailStreamConfiguration.add_member(:trace, Shapes::ShapeRef.new(shape: GuardrailTrace, location_name: "trace"))
    GuardrailStreamConfiguration.add_member(:stream_processing_mode, Shapes::ShapeRef.new(shape: GuardrailStreamProcessingMode, location_name: "streamProcessingMode"))
    GuardrailStreamConfiguration.struct_class = Types::GuardrailStreamConfiguration

    GuardrailTextBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "text"))
    GuardrailTextBlock.add_member(:qualifiers, Shapes::ShapeRef.new(shape: GuardrailContentQualifierList, location_name: "qualifiers"))
    GuardrailTextBlock.struct_class = Types::GuardrailTextBlock

    GuardrailTextCharactersCoverage.add_member(:guarded, Shapes::ShapeRef.new(shape: TextCharactersGuarded, location_name: "guarded"))
    GuardrailTextCharactersCoverage.add_member(:total, Shapes::ShapeRef.new(shape: TextCharactersTotal, location_name: "total"))
    GuardrailTextCharactersCoverage.struct_class = Types::GuardrailTextCharactersCoverage

    GuardrailTopic.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    GuardrailTopic.add_member(:type, Shapes::ShapeRef.new(shape: GuardrailTopicType, required: true, location_name: "type"))
    GuardrailTopic.add_member(:action, Shapes::ShapeRef.new(shape: GuardrailTopicPolicyAction, required: true, location_name: "action"))
    GuardrailTopic.add_member(:detected, Shapes::ShapeRef.new(shape: Boolean, location_name: "detected"))
    GuardrailTopic.struct_class = Types::GuardrailTopic

    GuardrailTopicList.member = Shapes::ShapeRef.new(shape: GuardrailTopic)

    GuardrailTopicPolicyAssessment.add_member(:topics, Shapes::ShapeRef.new(shape: GuardrailTopicList, required: true, location_name: "topics"))
    GuardrailTopicPolicyAssessment.struct_class = Types::GuardrailTopicPolicyAssessment

    GuardrailTraceAssessment.add_member(:model_output, Shapes::ShapeRef.new(shape: ModelOutputs, location_name: "modelOutput"))
    GuardrailTraceAssessment.add_member(:input_assessment, Shapes::ShapeRef.new(shape: GuardrailAssessmentMap, location_name: "inputAssessment"))
    GuardrailTraceAssessment.add_member(:output_assessments, Shapes::ShapeRef.new(shape: GuardrailAssessmentListMap, location_name: "outputAssessments"))
    GuardrailTraceAssessment.add_member(:action_reason, Shapes::ShapeRef.new(shape: String, location_name: "actionReason"))
    GuardrailTraceAssessment.struct_class = Types::GuardrailTraceAssessment

    GuardrailUsage.add_member(:topic_policy_units, Shapes::ShapeRef.new(shape: GuardrailTopicPolicyUnitsProcessed, required: true, location_name: "topicPolicyUnits"))
    GuardrailUsage.add_member(:content_policy_units, Shapes::ShapeRef.new(shape: GuardrailContentPolicyUnitsProcessed, required: true, location_name: "contentPolicyUnits"))
    GuardrailUsage.add_member(:word_policy_units, Shapes::ShapeRef.new(shape: GuardrailWordPolicyUnitsProcessed, required: true, location_name: "wordPolicyUnits"))
    GuardrailUsage.add_member(:sensitive_information_policy_units, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicyUnitsProcessed, required: true, location_name: "sensitiveInformationPolicyUnits"))
    GuardrailUsage.add_member(:sensitive_information_policy_free_units, Shapes::ShapeRef.new(shape: GuardrailSensitiveInformationPolicyFreeUnitsProcessed, required: true, location_name: "sensitiveInformationPolicyFreeUnits"))
    GuardrailUsage.add_member(:contextual_grounding_policy_units, Shapes::ShapeRef.new(shape: GuardrailContextualGroundingPolicyUnitsProcessed, required: true, location_name: "contextualGroundingPolicyUnits"))
    GuardrailUsage.add_member(:content_policy_image_units, Shapes::ShapeRef.new(shape: GuardrailContentPolicyImageUnitsProcessed, location_name: "contentPolicyImageUnits"))
    GuardrailUsage.add_member(:automated_reasoning_policy_units, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningPolicyUnitsProcessed, location_name: "automatedReasoningPolicyUnits"))
    GuardrailUsage.add_member(:automated_reasoning_policies, Shapes::ShapeRef.new(shape: GuardrailAutomatedReasoningPoliciesProcessed, location_name: "automatedReasoningPolicies"))
    GuardrailUsage.struct_class = Types::GuardrailUsage

    GuardrailWordPolicyAssessment.add_member(:custom_words, Shapes::ShapeRef.new(shape: GuardrailCustomWordList, required: true, location_name: "customWords"))
    GuardrailWordPolicyAssessment.add_member(:managed_word_lists, Shapes::ShapeRef.new(shape: GuardrailManagedWordList, required: true, location_name: "managedWordLists"))
    GuardrailWordPolicyAssessment.struct_class = Types::GuardrailWordPolicyAssessment

    ImageBlock.add_member(:format, Shapes::ShapeRef.new(shape: ImageFormat, required: true, location_name: "format"))
    ImageBlock.add_member(:source, Shapes::ShapeRef.new(shape: ImageSource, required: true, location_name: "source"))
    ImageBlock.struct_class = Types::ImageBlock

    ImageSource.add_member(:bytes, Shapes::ShapeRef.new(shape: ImageSourceBytesBlob, location_name: "bytes"))
    ImageSource.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    ImageSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ImageSource.add_member_subclass(:bytes, Types::ImageSource::Bytes)
    ImageSource.add_member_subclass(:s3_location, Types::ImageSource::S3Location)
    ImageSource.add_member_subclass(:unknown, Types::ImageSource::Unknown)
    ImageSource.struct_class = Types::ImageSource

    InferenceConfiguration.add_member(:max_tokens, Shapes::ShapeRef.new(shape: InferenceConfigurationMaxTokensInteger, location_name: "maxTokens"))
    InferenceConfiguration.add_member(:temperature, Shapes::ShapeRef.new(shape: InferenceConfigurationTemperatureFloat, location_name: "temperature"))
    InferenceConfiguration.add_member(:top_p, Shapes::ShapeRef.new(shape: InferenceConfigurationTopPFloat, location_name: "topP"))
    InferenceConfiguration.add_member(:stop_sequences, Shapes::ShapeRef.new(shape: InferenceConfigurationStopSequencesList, location_name: "stopSequences"))
    InferenceConfiguration.struct_class = Types::InferenceConfiguration

    InferenceConfigurationStopSequencesList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvokeModelRequest.add_member(:body, Shapes::ShapeRef.new(shape: Body, location_name: "body"))
    InvokeModelRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "Content-Type"))
    InvokeModelRequest.add_member(:accept, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "Accept"))
    InvokeModelRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: InvokeModelIdentifier, required: true, location: "uri", location_name: "modelId"))
    InvokeModelRequest.add_member(:trace, Shapes::ShapeRef.new(shape: Trace, location: "header", location_name: "X-Amzn-Bedrock-Trace"))
    InvokeModelRequest.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, location: "header", location_name: "X-Amzn-Bedrock-GuardrailIdentifier"))
    InvokeModelRequest.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailVersion, location: "header", location_name: "X-Amzn-Bedrock-GuardrailVersion"))
    InvokeModelRequest.add_member(:performance_config_latency, Shapes::ShapeRef.new(shape: PerformanceConfigLatency, location: "header", location_name: "X-Amzn-Bedrock-PerformanceConfig-Latency"))
    InvokeModelRequest.add_member(:service_tier, Shapes::ShapeRef.new(shape: ServiceTierType, location: "header", location_name: "X-Amzn-Bedrock-Service-Tier"))
    InvokeModelRequest.struct_class = Types::InvokeModelRequest
    InvokeModelRequest[:payload] = :body
    InvokeModelRequest[:payload_member] = InvokeModelRequest.member(:body)

    InvokeModelResponse.add_member(:body, Shapes::ShapeRef.new(shape: Body, required: true, location_name: "body"))
    InvokeModelResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, required: true, location: "header", location_name: "Content-Type"))
    InvokeModelResponse.add_member(:performance_config_latency, Shapes::ShapeRef.new(shape: PerformanceConfigLatency, location: "header", location_name: "X-Amzn-Bedrock-PerformanceConfig-Latency"))
    InvokeModelResponse.add_member(:service_tier, Shapes::ShapeRef.new(shape: ServiceTierType, location: "header", location_name: "X-Amzn-Bedrock-Service-Tier"))
    InvokeModelResponse.struct_class = Types::InvokeModelResponse
    InvokeModelResponse[:payload] = :body
    InvokeModelResponse[:payload_member] = InvokeModelResponse.member(:body)

    InvokeModelTokensRequest.add_member(:body, Shapes::ShapeRef.new(shape: Body, required: true, location_name: "body"))
    InvokeModelTokensRequest.struct_class = Types::InvokeModelTokensRequest

    InvokeModelWithBidirectionalStreamInput.add_member(:chunk, Shapes::ShapeRef.new(shape: BidirectionalInputPayloadPart, event: true, location_name: "chunk"))
    InvokeModelWithBidirectionalStreamInput.struct_class = Types::InvokeModelWithBidirectionalStreamInput

    InvokeModelWithBidirectionalStreamOutput.add_member(:chunk, Shapes::ShapeRef.new(shape: BidirectionalOutputPayloadPart, event: true, location_name: "chunk"))
    InvokeModelWithBidirectionalStreamOutput.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    InvokeModelWithBidirectionalStreamOutput.add_member(:model_stream_error_exception, Shapes::ShapeRef.new(shape: ModelStreamErrorException, location_name: "modelStreamErrorException"))
    InvokeModelWithBidirectionalStreamOutput.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    InvokeModelWithBidirectionalStreamOutput.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    InvokeModelWithBidirectionalStreamOutput.add_member(:model_timeout_exception, Shapes::ShapeRef.new(shape: ModelTimeoutException, location_name: "modelTimeoutException"))
    InvokeModelWithBidirectionalStreamOutput.add_member(:service_unavailable_exception, Shapes::ShapeRef.new(shape: ServiceUnavailableException, location_name: "serviceUnavailableException"))
    InvokeModelWithBidirectionalStreamOutput.struct_class = Types::InvokeModelWithBidirectionalStreamOutput

    InvokeModelWithBidirectionalStreamRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: InvokeModelIdentifier, required: true, location: "uri", location_name: "modelId"))
    InvokeModelWithBidirectionalStreamRequest.add_member(:body, Shapes::ShapeRef.new(shape: InvokeModelWithBidirectionalStreamInput, required: true, eventstream: true, location_name: "body"))
    InvokeModelWithBidirectionalStreamRequest.struct_class = Types::InvokeModelWithBidirectionalStreamRequest
    InvokeModelWithBidirectionalStreamRequest[:payload] = :body
    InvokeModelWithBidirectionalStreamRequest[:payload_member] = InvokeModelWithBidirectionalStreamRequest.member(:body)

    InvokeModelWithBidirectionalStreamResponse.add_member(:body, Shapes::ShapeRef.new(shape: InvokeModelWithBidirectionalStreamOutput, required: true, eventstream: true, location_name: "body"))
    InvokeModelWithBidirectionalStreamResponse.struct_class = Types::InvokeModelWithBidirectionalStreamResponse
    InvokeModelWithBidirectionalStreamResponse[:payload] = :body
    InvokeModelWithBidirectionalStreamResponse[:payload_member] = InvokeModelWithBidirectionalStreamResponse.member(:body)

    InvokeModelWithResponseStreamRequest.add_member(:body, Shapes::ShapeRef.new(shape: Body, location_name: "body"))
    InvokeModelWithResponseStreamRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "Content-Type"))
    InvokeModelWithResponseStreamRequest.add_member(:accept, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "X-Amzn-Bedrock-Accept"))
    InvokeModelWithResponseStreamRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: InvokeModelIdentifier, required: true, location: "uri", location_name: "modelId"))
    InvokeModelWithResponseStreamRequest.add_member(:trace, Shapes::ShapeRef.new(shape: Trace, location: "header", location_name: "X-Amzn-Bedrock-Trace"))
    InvokeModelWithResponseStreamRequest.add_member(:guardrail_identifier, Shapes::ShapeRef.new(shape: GuardrailIdentifier, location: "header", location_name: "X-Amzn-Bedrock-GuardrailIdentifier"))
    InvokeModelWithResponseStreamRequest.add_member(:guardrail_version, Shapes::ShapeRef.new(shape: GuardrailVersion, location: "header", location_name: "X-Amzn-Bedrock-GuardrailVersion"))
    InvokeModelWithResponseStreamRequest.add_member(:performance_config_latency, Shapes::ShapeRef.new(shape: PerformanceConfigLatency, location: "header", location_name: "X-Amzn-Bedrock-PerformanceConfig-Latency"))
    InvokeModelWithResponseStreamRequest.add_member(:service_tier, Shapes::ShapeRef.new(shape: ServiceTierType, location: "header", location_name: "X-Amzn-Bedrock-Service-Tier"))
    InvokeModelWithResponseStreamRequest.struct_class = Types::InvokeModelWithResponseStreamRequest
    InvokeModelWithResponseStreamRequest[:payload] = :body
    InvokeModelWithResponseStreamRequest[:payload_member] = InvokeModelWithResponseStreamRequest.member(:body)

    InvokeModelWithResponseStreamResponse.add_member(:body, Shapes::ShapeRef.new(shape: ResponseStream, required: true, eventstream: true, location_name: "body"))
    InvokeModelWithResponseStreamResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, required: true, location: "header", location_name: "X-Amzn-Bedrock-Content-Type"))
    InvokeModelWithResponseStreamResponse.add_member(:performance_config_latency, Shapes::ShapeRef.new(shape: PerformanceConfigLatency, location: "header", location_name: "X-Amzn-Bedrock-PerformanceConfig-Latency"))
    InvokeModelWithResponseStreamResponse.add_member(:service_tier, Shapes::ShapeRef.new(shape: ServiceTierType, location: "header", location_name: "X-Amzn-Bedrock-Service-Tier"))
    InvokeModelWithResponseStreamResponse.struct_class = Types::InvokeModelWithResponseStreamResponse
    InvokeModelWithResponseStreamResponse[:payload] = :body
    InvokeModelWithResponseStreamResponse[:payload_member] = InvokeModelWithResponseStreamResponse.member(:body)

    ListAsyncInvokesRequest.add_member(:submit_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "submitTimeAfter"))
    ListAsyncInvokesRequest.add_member(:submit_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "submitTimeBefore"))
    ListAsyncInvokesRequest.add_member(:status_equals, Shapes::ShapeRef.new(shape: AsyncInvokeStatus, location: "querystring", location_name: "statusEquals"))
    ListAsyncInvokesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAsyncInvokesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListAsyncInvokesRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortAsyncInvocationBy, location: "querystring", location_name: "sortBy"))
    ListAsyncInvokesRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListAsyncInvokesRequest.struct_class = Types::ListAsyncInvokesRequest

    ListAsyncInvokesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListAsyncInvokesResponse.add_member(:async_invoke_summaries, Shapes::ShapeRef.new(shape: AsyncInvokeSummaries, location_name: "asyncInvokeSummaries"))
    ListAsyncInvokesResponse.struct_class = Types::ListAsyncInvokesResponse

    Message.add_member(:role, Shapes::ShapeRef.new(shape: ConversationRole, required: true, location_name: "role"))
    Message.add_member(:content, Shapes::ShapeRef.new(shape: ContentBlocks, required: true, location_name: "content"))
    Message.struct_class = Types::Message

    MessageStartEvent.add_member(:role, Shapes::ShapeRef.new(shape: ConversationRole, required: true, location_name: "role"))
    MessageStartEvent.struct_class = Types::MessageStartEvent

    MessageStopEvent.add_member(:stop_reason, Shapes::ShapeRef.new(shape: StopReason, required: true, location_name: "stopReason"))
    MessageStopEvent.add_member(:additional_model_response_fields, Shapes::ShapeRef.new(shape: Document, location_name: "additionalModelResponseFields"))
    MessageStopEvent.struct_class = Types::MessageStopEvent

    Messages.member = Shapes::ShapeRef.new(shape: Message)

    ModelErrorException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ModelErrorException.add_member(:original_status_code, Shapes::ShapeRef.new(shape: StatusCode, location_name: "originalStatusCode"))
    ModelErrorException.add_member(:resource_name, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "resourceName"))
    ModelErrorException.struct_class = Types::ModelErrorException

    ModelNotReadyException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ModelNotReadyException.struct_class = Types::ModelNotReadyException

    ModelOutputs.member = Shapes::ShapeRef.new(shape: GuardrailOutputText)

    ModelStreamErrorException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ModelStreamErrorException.add_member(:original_status_code, Shapes::ShapeRef.new(shape: StatusCode, location_name: "originalStatusCode"))
    ModelStreamErrorException.add_member(:original_message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "originalMessage"))
    ModelStreamErrorException.struct_class = Types::ModelStreamErrorException

    ModelTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ModelTimeoutException.struct_class = Types::ModelTimeoutException

    PayloadPart.add_member(:bytes, Shapes::ShapeRef.new(shape: PartBody, location_name: "bytes"))
    PayloadPart.struct_class = Types::PayloadPart

    PerformanceConfiguration.add_member(:latency, Shapes::ShapeRef.new(shape: PerformanceConfigLatency, location_name: "latency"))
    PerformanceConfiguration.struct_class = Types::PerformanceConfiguration

    PromptRouterTrace.add_member(:invoked_model_id, Shapes::ShapeRef.new(shape: InvokedModelId, location_name: "invokedModelId"))
    PromptRouterTrace.struct_class = Types::PromptRouterTrace

    PromptVariableMap.key = Shapes::ShapeRef.new(shape: String)
    PromptVariableMap.value = Shapes::ShapeRef.new(shape: PromptVariableValues)

    PromptVariableValues.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    PromptVariableValues.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PromptVariableValues.add_member_subclass(:text, Types::PromptVariableValues::Text)
    PromptVariableValues.add_member_subclass(:unknown, Types::PromptVariableValues::Unknown)
    PromptVariableValues.struct_class = Types::PromptVariableValues

    ReasoningContentBlock.add_member(:reasoning_text, Shapes::ShapeRef.new(shape: ReasoningTextBlock, location_name: "reasoningText"))
    ReasoningContentBlock.add_member(:redacted_content, Shapes::ShapeRef.new(shape: Blob, location_name: "redactedContent"))
    ReasoningContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ReasoningContentBlock.add_member_subclass(:reasoning_text, Types::ReasoningContentBlock::ReasoningText)
    ReasoningContentBlock.add_member_subclass(:redacted_content, Types::ReasoningContentBlock::RedactedContent)
    ReasoningContentBlock.add_member_subclass(:unknown, Types::ReasoningContentBlock::Unknown)
    ReasoningContentBlock.struct_class = Types::ReasoningContentBlock

    ReasoningContentBlockDelta.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    ReasoningContentBlockDelta.add_member(:redacted_content, Shapes::ShapeRef.new(shape: Blob, location_name: "redactedContent"))
    ReasoningContentBlockDelta.add_member(:signature, Shapes::ShapeRef.new(shape: String, location_name: "signature"))
    ReasoningContentBlockDelta.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ReasoningContentBlockDelta.add_member_subclass(:text, Types::ReasoningContentBlockDelta::Text)
    ReasoningContentBlockDelta.add_member_subclass(:redacted_content, Types::ReasoningContentBlockDelta::RedactedContent)
    ReasoningContentBlockDelta.add_member_subclass(:signature, Types::ReasoningContentBlockDelta::Signature)
    ReasoningContentBlockDelta.add_member_subclass(:unknown, Types::ReasoningContentBlockDelta::Unknown)
    ReasoningContentBlockDelta.struct_class = Types::ReasoningContentBlockDelta

    ReasoningTextBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "text"))
    ReasoningTextBlock.add_member(:signature, Shapes::ShapeRef.new(shape: String, location_name: "signature"))
    ReasoningTextBlock.struct_class = Types::ReasoningTextBlock

    RequestMetadata.key = Shapes::ShapeRef.new(shape: RequestMetadataKeyString)
    RequestMetadata.value = Shapes::ShapeRef.new(shape: RequestMetadataValueString)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResponseStream.add_member(:chunk, Shapes::ShapeRef.new(shape: PayloadPart, event: true, location_name: "chunk"))
    ResponseStream.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    ResponseStream.add_member(:model_stream_error_exception, Shapes::ShapeRef.new(shape: ModelStreamErrorException, location_name: "modelStreamErrorException"))
    ResponseStream.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    ResponseStream.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    ResponseStream.add_member(:model_timeout_exception, Shapes::ShapeRef.new(shape: ModelTimeoutException, location_name: "modelTimeoutException"))
    ResponseStream.add_member(:service_unavailable_exception, Shapes::ShapeRef.new(shape: ServiceUnavailableException, location_name: "serviceUnavailableException"))
    ResponseStream.struct_class = Types::ResponseStream

    S3Location.add_member(:uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "uri"))
    S3Location.add_member(:bucket_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "bucketOwner"))
    S3Location.struct_class = Types::S3Location

    SearchResultBlock.add_member(:source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "source"))
    SearchResultBlock.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "title"))
    SearchResultBlock.add_member(:content, Shapes::ShapeRef.new(shape: SearchResultContentBlocks, required: true, location_name: "content"))
    SearchResultBlock.add_member(:citations, Shapes::ShapeRef.new(shape: CitationsConfig, location_name: "citations"))
    SearchResultBlock.struct_class = Types::SearchResultBlock

    SearchResultContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "text"))
    SearchResultContentBlock.struct_class = Types::SearchResultContentBlock

    SearchResultContentBlocks.member = Shapes::ShapeRef.new(shape: SearchResultContentBlock)

    SearchResultLocation.add_member(:search_result_index, Shapes::ShapeRef.new(shape: SearchResultLocationSearchResultIndexInteger, location_name: "searchResultIndex"))
    SearchResultLocation.add_member(:start, Shapes::ShapeRef.new(shape: SearchResultLocationStartInteger, location_name: "start"))
    SearchResultLocation.add_member(:end, Shapes::ShapeRef.new(shape: SearchResultLocationEndInteger, location_name: "end"))
    SearchResultLocation.struct_class = Types::SearchResultLocation

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceTier.add_member(:type, Shapes::ShapeRef.new(shape: ServiceTierType, required: true, location_name: "type"))
    ServiceTier.struct_class = Types::ServiceTier

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SpecificToolChoice.add_member(:name, Shapes::ShapeRef.new(shape: ToolName, required: true, location_name: "name"))
    SpecificToolChoice.struct_class = Types::SpecificToolChoice

    StartAsyncInvokeRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: AsyncInvokeIdempotencyToken, location_name: "clientRequestToken", metadata: {"idempotencyToken" => true}))
    StartAsyncInvokeRequest.add_member(:model_id, Shapes::ShapeRef.new(shape: AsyncInvokeIdentifier, required: true, location_name: "modelId"))
    StartAsyncInvokeRequest.add_member(:model_input, Shapes::ShapeRef.new(shape: ModelInputPayload, required: true, location_name: "modelInput"))
    StartAsyncInvokeRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: AsyncInvokeOutputDataConfig, required: true, location_name: "outputDataConfig"))
    StartAsyncInvokeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    StartAsyncInvokeRequest.struct_class = Types::StartAsyncInvokeRequest

    StartAsyncInvokeResponse.add_member(:invocation_arn, Shapes::ShapeRef.new(shape: InvocationArn, required: true, location_name: "invocationArn"))
    StartAsyncInvokeResponse.struct_class = Types::StartAsyncInvokeResponse

    SystemContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "text"))
    SystemContentBlock.add_member(:guard_content, Shapes::ShapeRef.new(shape: GuardrailConverseContentBlock, location_name: "guardContent"))
    SystemContentBlock.add_member(:cache_point, Shapes::ShapeRef.new(shape: CachePointBlock, location_name: "cachePoint"))
    SystemContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SystemContentBlock.add_member_subclass(:text, Types::SystemContentBlock::Text)
    SystemContentBlock.add_member_subclass(:guard_content, Types::SystemContentBlock::GuardContent)
    SystemContentBlock.add_member_subclass(:cache_point, Types::SystemContentBlock::CachePoint)
    SystemContentBlock.add_member_subclass(:unknown, Types::SystemContentBlock::Unknown)
    SystemContentBlock.struct_class = Types::SystemContentBlock

    SystemContentBlocks.member = Shapes::ShapeRef.new(shape: SystemContentBlock)

    SystemTool.add_member(:name, Shapes::ShapeRef.new(shape: ToolName, required: true, location_name: "name"))
    SystemTool.struct_class = Types::SystemTool

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TokenUsage.add_member(:input_tokens, Shapes::ShapeRef.new(shape: TokenUsageInputTokensInteger, required: true, location_name: "inputTokens"))
    TokenUsage.add_member(:output_tokens, Shapes::ShapeRef.new(shape: TokenUsageOutputTokensInteger, required: true, location_name: "outputTokens"))
    TokenUsage.add_member(:total_tokens, Shapes::ShapeRef.new(shape: TokenUsageTotalTokensInteger, required: true, location_name: "totalTokens"))
    TokenUsage.add_member(:cache_read_input_tokens, Shapes::ShapeRef.new(shape: TokenUsageCacheReadInputTokensInteger, location_name: "cacheReadInputTokens"))
    TokenUsage.add_member(:cache_write_input_tokens, Shapes::ShapeRef.new(shape: TokenUsageCacheWriteInputTokensInteger, location_name: "cacheWriteInputTokens"))
    TokenUsage.struct_class = Types::TokenUsage

    Tool.add_member(:tool_spec, Shapes::ShapeRef.new(shape: ToolSpecification, location_name: "toolSpec"))
    Tool.add_member(:system_tool, Shapes::ShapeRef.new(shape: SystemTool, location_name: "systemTool"))
    Tool.add_member(:cache_point, Shapes::ShapeRef.new(shape: CachePointBlock, location_name: "cachePoint"))
    Tool.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Tool.add_member_subclass(:tool_spec, Types::Tool::ToolSpec)
    Tool.add_member_subclass(:system_tool, Types::Tool::SystemTool)
    Tool.add_member_subclass(:cache_point, Types::Tool::CachePoint)
    Tool.add_member_subclass(:unknown, Types::Tool::Unknown)
    Tool.struct_class = Types::Tool

    ToolChoice.add_member(:auto, Shapes::ShapeRef.new(shape: AutoToolChoice, location_name: "auto"))
    ToolChoice.add_member(:any, Shapes::ShapeRef.new(shape: AnyToolChoice, location_name: "any"))
    ToolChoice.add_member(:tool, Shapes::ShapeRef.new(shape: SpecificToolChoice, location_name: "tool"))
    ToolChoice.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ToolChoice.add_member_subclass(:auto, Types::ToolChoice::Auto)
    ToolChoice.add_member_subclass(:any, Types::ToolChoice::Any)
    ToolChoice.add_member_subclass(:tool, Types::ToolChoice::Tool)
    ToolChoice.add_member_subclass(:unknown, Types::ToolChoice::Unknown)
    ToolChoice.struct_class = Types::ToolChoice

    ToolConfiguration.add_member(:tools, Shapes::ShapeRef.new(shape: ToolConfigurationToolsList, required: true, location_name: "tools"))
    ToolConfiguration.add_member(:tool_choice, Shapes::ShapeRef.new(shape: ToolChoice, location_name: "toolChoice"))
    ToolConfiguration.struct_class = Types::ToolConfiguration

    ToolConfigurationToolsList.member = Shapes::ShapeRef.new(shape: Tool)

    ToolInputSchema.add_member(:json, Shapes::ShapeRef.new(shape: Document, location_name: "json"))
    ToolInputSchema.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ToolInputSchema.add_member_subclass(:json, Types::ToolInputSchema::Json)
    ToolInputSchema.add_member_subclass(:unknown, Types::ToolInputSchema::Unknown)
    ToolInputSchema.struct_class = Types::ToolInputSchema

    ToolResultBlock.add_member(:tool_use_id, Shapes::ShapeRef.new(shape: ToolUseId, required: true, location_name: "toolUseId"))
    ToolResultBlock.add_member(:content, Shapes::ShapeRef.new(shape: ToolResultContentBlocks, required: true, location_name: "content"))
    ToolResultBlock.add_member(:status, Shapes::ShapeRef.new(shape: ToolResultStatus, location_name: "status"))
    ToolResultBlock.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    ToolResultBlock.struct_class = Types::ToolResultBlock

    ToolResultBlockDelta.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    ToolResultBlockDelta.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ToolResultBlockDelta.add_member_subclass(:text, Types::ToolResultBlockDelta::Text)
    ToolResultBlockDelta.add_member_subclass(:unknown, Types::ToolResultBlockDelta::Unknown)
    ToolResultBlockDelta.struct_class = Types::ToolResultBlockDelta

    ToolResultBlockStart.add_member(:tool_use_id, Shapes::ShapeRef.new(shape: ToolUseId, required: true, location_name: "toolUseId"))
    ToolResultBlockStart.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    ToolResultBlockStart.add_member(:status, Shapes::ShapeRef.new(shape: ToolResultStatus, location_name: "status"))
    ToolResultBlockStart.struct_class = Types::ToolResultBlockStart

    ToolResultBlocksDelta.member = Shapes::ShapeRef.new(shape: ToolResultBlockDelta)

    ToolResultContentBlock.add_member(:json, Shapes::ShapeRef.new(shape: Document, location_name: "json"))
    ToolResultContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    ToolResultContentBlock.add_member(:image, Shapes::ShapeRef.new(shape: ImageBlock, location_name: "image"))
    ToolResultContentBlock.add_member(:document, Shapes::ShapeRef.new(shape: DocumentBlock, location_name: "document"))
    ToolResultContentBlock.add_member(:video, Shapes::ShapeRef.new(shape: VideoBlock, location_name: "video"))
    ToolResultContentBlock.add_member(:search_result, Shapes::ShapeRef.new(shape: SearchResultBlock, location_name: "searchResult"))
    ToolResultContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ToolResultContentBlock.add_member_subclass(:json, Types::ToolResultContentBlock::Json)
    ToolResultContentBlock.add_member_subclass(:text, Types::ToolResultContentBlock::Text)
    ToolResultContentBlock.add_member_subclass(:image, Types::ToolResultContentBlock::Image)
    ToolResultContentBlock.add_member_subclass(:document, Types::ToolResultContentBlock::Document)
    ToolResultContentBlock.add_member_subclass(:video, Types::ToolResultContentBlock::Video)
    ToolResultContentBlock.add_member_subclass(:search_result, Types::ToolResultContentBlock::SearchResult)
    ToolResultContentBlock.add_member_subclass(:unknown, Types::ToolResultContentBlock::Unknown)
    ToolResultContentBlock.struct_class = Types::ToolResultContentBlock

    ToolResultContentBlocks.member = Shapes::ShapeRef.new(shape: ToolResultContentBlock)

    ToolSpecification.add_member(:name, Shapes::ShapeRef.new(shape: ToolName, required: true, location_name: "name"))
    ToolSpecification.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ToolSpecification.add_member(:input_schema, Shapes::ShapeRef.new(shape: ToolInputSchema, required: true, location_name: "inputSchema"))
    ToolSpecification.struct_class = Types::ToolSpecification

    ToolUseBlock.add_member(:tool_use_id, Shapes::ShapeRef.new(shape: ToolUseId, required: true, location_name: "toolUseId"))
    ToolUseBlock.add_member(:name, Shapes::ShapeRef.new(shape: ToolName, required: true, location_name: "name"))
    ToolUseBlock.add_member(:input, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "input"))
    ToolUseBlock.add_member(:type, Shapes::ShapeRef.new(shape: ToolUseType, location_name: "type"))
    ToolUseBlock.struct_class = Types::ToolUseBlock

    ToolUseBlockDelta.add_member(:input, Shapes::ShapeRef.new(shape: String, required: true, location_name: "input"))
    ToolUseBlockDelta.struct_class = Types::ToolUseBlockDelta

    ToolUseBlockStart.add_member(:tool_use_id, Shapes::ShapeRef.new(shape: ToolUseId, required: true, location_name: "toolUseId"))
    ToolUseBlockStart.add_member(:name, Shapes::ShapeRef.new(shape: ToolName, required: true, location_name: "name"))
    ToolUseBlockStart.add_member(:type, Shapes::ShapeRef.new(shape: ToolUseType, location_name: "type"))
    ToolUseBlockStart.struct_class = Types::ToolUseBlockStart

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VideoBlock.add_member(:format, Shapes::ShapeRef.new(shape: VideoFormat, required: true, location_name: "format"))
    VideoBlock.add_member(:source, Shapes::ShapeRef.new(shape: VideoSource, required: true, location_name: "source"))
    VideoBlock.struct_class = Types::VideoBlock

    VideoSource.add_member(:bytes, Shapes::ShapeRef.new(shape: VideoSourceBytesBlob, location_name: "bytes"))
    VideoSource.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3Location"))
    VideoSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VideoSource.add_member_subclass(:bytes, Types::VideoSource::Bytes)
    VideoSource.add_member_subclass(:s3_location, Types::VideoSource::S3Location)
    VideoSource.add_member_subclass(:unknown, Types::VideoSource::Unknown)
    VideoSource.struct_class = Types::VideoSource

    WebLocation.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "url"))
    WebLocation.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "domain"))
    WebLocation.struct_class = Types::WebLocation


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-09-30"

      api.metadata = {
        "apiVersion" => "2023-09-30",
        "auth" => ["aws.auth#sigv4", "smithy.api#httpBearerAuth"],
        "endpointPrefix" => "bedrock-runtime",
        "protocol" => "rest-json",
        "protocolSettings" => {"h2" => "optional"},
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Bedrock Runtime",
        "serviceId" => "Bedrock Runtime",
        "signatureVersion" => "v4",
        "signingName" => "bedrock",
        "uid" => "bedrock-runtime-2023-09-30",
      }

      api.add_operation(:apply_guardrail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ApplyGuardrail"
        o.http_method = "POST"
        o.http_request_uri = "/guardrail/{guardrailIdentifier}/version/{guardrailVersion}/apply"
        o.input = Shapes::ShapeRef.new(shape: ApplyGuardrailRequest)
        o.output = Shapes::ShapeRef.new(shape: ApplyGuardrailResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:converse, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Converse"
        o.http_method = "POST"
        o.http_request_uri = "/model/{modelId}/converse"
        o.input = Shapes::ShapeRef.new(shape: ConverseRequest)
        o.output = Shapes::ShapeRef.new(shape: ConverseResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ModelTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ModelNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ModelErrorException)
      end)

      api.add_operation(:converse_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConverseStream"
        o.http_method = "POST"
        o.http_request_uri = "/model/{modelId}/converse-stream"
        o.input = Shapes::ShapeRef.new(shape: ConverseStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: ConverseStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ModelTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ModelNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ModelErrorException)
      end)

      api.add_operation(:count_tokens, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CountTokens"
        o.http_method = "POST"
        o.http_request_uri = "/model/{modelId}/count-tokens"
        o.input = Shapes::ShapeRef.new(shape: CountTokensRequest)
        o.output = Shapes::ShapeRef.new(shape: CountTokensResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_async_invoke, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAsyncInvoke"
        o.http_method = "GET"
        o.http_request_uri = "/async-invoke/{invocationArn}"
        o.input = Shapes::ShapeRef.new(shape: GetAsyncInvokeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAsyncInvokeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:invoke_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeModel"
        o.http_method = "POST"
        o.http_request_uri = "/model/{modelId}/invoke"
        o.input = Shapes::ShapeRef.new(shape: InvokeModelRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeModelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ModelTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ModelNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ModelErrorException)
      end)

      api.add_operation(:invoke_model_with_bidirectional_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeModelWithBidirectionalStream"
        o.http_method = "POST"
        o.http_request_uri = "/model/{modelId}/invoke-with-bidirectional-stream"
        o.input = Shapes::ShapeRef.new(shape: InvokeModelWithBidirectionalStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeModelWithBidirectionalStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ModelTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ModelStreamErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ModelNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ModelErrorException)
        o.async = true
      end)

      api.add_operation(:invoke_model_with_response_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeModelWithResponseStream"
        o.http_method = "POST"
        o.http_request_uri = "/model/{modelId}/invoke-with-response-stream"
        o.input = Shapes::ShapeRef.new(shape: InvokeModelWithResponseStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeModelWithResponseStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ModelTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ModelStreamErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ModelNotReadyException)
        o.errors << Shapes::ShapeRef.new(shape: ModelErrorException)
      end)

      api.add_operation(:list_async_invokes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAsyncInvokes"
        o.http_method = "GET"
        o.http_request_uri = "/async-invoke"
        o.input = Shapes::ShapeRef.new(shape: ListAsyncInvokesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAsyncInvokesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_async_invoke, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAsyncInvoke"
        o.http_method = "POST"
        o.http_request_uri = "/async-invoke"
        o.input = Shapes::ShapeRef.new(shape: StartAsyncInvokeRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAsyncInvokeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
