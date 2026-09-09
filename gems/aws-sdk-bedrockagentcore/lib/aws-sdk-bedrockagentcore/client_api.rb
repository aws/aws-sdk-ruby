# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BedrockAgentCore
  # @api private
  module ClientApi

    include Seahorse::Model

    A2aDescriptor = Shapes::StructureShape.new(name: 'A2aDescriptor')
    ABTestArn = Shapes::StringShape.new(name: 'ABTestArn')
    ABTestDescription = Shapes::StringShape.new(name: 'ABTestDescription')
    ABTestEvaluationConfig = Shapes::UnionShape.new(name: 'ABTestEvaluationConfig')
    ABTestExecutionStatus = Shapes::StringShape.new(name: 'ABTestExecutionStatus')
    ABTestId = Shapes::StringShape.new(name: 'ABTestId')
    ABTestName = Shapes::StringShape.new(name: 'ABTestName')
    ABTestResults = Shapes::StructureShape.new(name: 'ABTestResults')
    ABTestStatus = Shapes::StringShape.new(name: 'ABTestStatus')
    ABTestSummary = Shapes::StructureShape.new(name: 'ABTestSummary')
    ABTestSummaryList = Shapes::ListShape.new(name: 'ABTestSummaryList')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessTokenType = Shapes::StringShape.new(name: 'AccessTokenType')
    ActorId = Shapes::StringShape.new(name: 'ActorId')
    ActorSummary = Shapes::StructureShape.new(name: 'ActorSummary')
    ActorSummaryList = Shapes::ListShape.new(name: 'ActorSummaryList')
    AffectedSession = Shapes::StructureShape.new(name: 'AffectedSession')
    AffectedSessionList = Shapes::ListShape.new(name: 'AffectedSessionList')
    AgentCard = Shapes::DocumentShape.new(name: 'AgentCard', document: true)
    AgentCardDefinition = Shapes::StructureShape.new(name: 'AgentCardDefinition')
    AgentSkillsDescriptor = Shapes::StructureShape.new(name: 'AgentSkillsDescriptor')
    AgentTracesConfig = Shapes::UnionShape.new(name: 'AgentTracesConfig')
    Amount = Shapes::StructureShape.new(name: 'Amount')
    ApiKeyArn = Shapes::StringShape.new(name: 'ApiKeyArn')
    ApiKeyType = Shapes::StringShape.new(name: 'ApiKeyType')
    AudienceType = Shapes::StringShape.new(name: 'AudienceType')
    AudiencesListType = Shapes::ListShape.new(name: 'AudiencesListType')
    AuthorizationUrlType = Shapes::StringShape.new(name: 'AuthorizationUrlType')
    AutomationStream = Shapes::StructureShape.new(name: 'AutomationStream')
    AutomationStreamStatus = Shapes::StringShape.new(name: 'AutomationStreamStatus')
    AutomationStreamUpdate = Shapes::StructureShape.new(name: 'AutomationStreamUpdate')
    AvailableLimits = Shapes::StructureShape.new(name: 'AvailableLimits')
    BasicAuth = Shapes::StructureShape.new(name: 'BasicAuth')
    BatchCreateMemoryRecordsInput = Shapes::StructureShape.new(name: 'BatchCreateMemoryRecordsInput')
    BatchCreateMemoryRecordsOutput = Shapes::StructureShape.new(name: 'BatchCreateMemoryRecordsOutput')
    BatchDeleteMemoryRecordsInput = Shapes::StructureShape.new(name: 'BatchDeleteMemoryRecordsInput')
    BatchDeleteMemoryRecordsOutput = Shapes::StructureShape.new(name: 'BatchDeleteMemoryRecordsOutput')
    BatchEvaluationArn = Shapes::StringShape.new(name: 'BatchEvaluationArn')
    BatchEvaluationDescription = Shapes::StringShape.new(name: 'BatchEvaluationDescription')
    BatchEvaluationId = Shapes::StringShape.new(name: 'BatchEvaluationId')
    BatchEvaluationName = Shapes::StringShape.new(name: 'BatchEvaluationName')
    BatchEvaluationStatus = Shapes::StringShape.new(name: 'BatchEvaluationStatus')
    BatchEvaluationSummary = Shapes::StructureShape.new(name: 'BatchEvaluationSummary')
    BatchEvaluationSummaryList = Shapes::ListShape.new(name: 'BatchEvaluationSummaryList')
    BatchEvaluationTraceConfig = Shapes::StructureShape.new(name: 'BatchEvaluationTraceConfig')
    BatchUpdateMemoryRecordsInput = Shapes::StructureShape.new(name: 'BatchUpdateMemoryRecordsInput')
    BatchUpdateMemoryRecordsOutput = Shapes::StructureShape.new(name: 'BatchUpdateMemoryRecordsOutput')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    BlockchainChainId = Shapes::StringShape.new(name: 'BlockchainChainId')
    Body = Shapes::BlobShape.new(name: 'Body')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Branch = Shapes::StructureShape.new(name: 'Branch')
    BranchFilter = Shapes::StructureShape.new(name: 'BranchFilter')
    BranchName = Shapes::StringShape.new(name: 'BranchName')
    BrowserAction = Shapes::UnionShape.new(name: 'BrowserAction')
    BrowserActionResult = Shapes::UnionShape.new(name: 'BrowserActionResult')
    BrowserActionStatus = Shapes::StringShape.new(name: 'BrowserActionStatus')
    BrowserEnterprisePolicies = Shapes::ListShape.new(name: 'BrowserEnterprisePolicies')
    BrowserEnterprisePolicy = Shapes::StructureShape.new(name: 'BrowserEnterprisePolicy')
    BrowserEnterprisePolicyType = Shapes::StringShape.new(name: 'BrowserEnterprisePolicyType')
    BrowserExtension = Shapes::StructureShape.new(name: 'BrowserExtension')
    BrowserExtensions = Shapes::ListShape.new(name: 'BrowserExtensions')
    BrowserProfileConfiguration = Shapes::StructureShape.new(name: 'BrowserProfileConfiguration')
    BrowserProfileId = Shapes::StringShape.new(name: 'BrowserProfileId')
    BrowserSessionId = Shapes::StringShape.new(name: 'BrowserSessionId')
    BrowserSessionStatus = Shapes::StringShape.new(name: 'BrowserSessionStatus')
    BrowserSessionStream = Shapes::StructureShape.new(name: 'BrowserSessionStream')
    BrowserSessionSummaries = Shapes::ListShape.new(name: 'BrowserSessionSummaries')
    BrowserSessionSummary = Shapes::StructureShape.new(name: 'BrowserSessionSummary')
    BrowserSessionTimeout = Shapes::IntegerShape.new(name: 'BrowserSessionTimeout')
    BrowserStreamEndpoint = Shapes::StringShape.new(name: 'BrowserStreamEndpoint')
    CapacityProviderArn = Shapes::StringShape.new(name: 'CapacityProviderArn')
    CapacityProviderId = Shapes::StringShape.new(name: 'CapacityProviderId')
    CapacityProviderSessionStatus = Shapes::StringShape.new(name: 'CapacityProviderSessionStatus')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    CertificateLocation = Shapes::UnionShape.new(name: 'CertificateLocation')
    Certificates = Shapes::ListShape.new(name: 'Certificates')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudWatchFilterConfig = Shapes::StructureShape.new(name: 'CloudWatchFilterConfig')
    CloudWatchFilterConfigSessionIdsList = Shapes::ListShape.new(name: 'CloudWatchFilterConfigSessionIdsList')
    CloudWatchLogsFilter = Shapes::StructureShape.new(name: 'CloudWatchLogsFilter')
    CloudWatchLogsFilterKeyString = Shapes::StringShape.new(name: 'CloudWatchLogsFilterKeyString')
    CloudWatchLogsFilterList = Shapes::ListShape.new(name: 'CloudWatchLogsFilterList')
    CloudWatchLogsFilterOperator = Shapes::StringShape.new(name: 'CloudWatchLogsFilterOperator')
    CloudWatchLogsRule = Shapes::StructureShape.new(name: 'CloudWatchLogsRule')
    CloudWatchLogsSource = Shapes::StructureShape.new(name: 'CloudWatchLogsSource')
    CloudWatchLogsSourceLogGroupNamePrefixesList = Shapes::ListShape.new(name: 'CloudWatchLogsSourceLogGroupNamePrefixesList')
    CloudWatchLogsSourceLogGroupNamesList = Shapes::ListShape.new(name: 'CloudWatchLogsSourceLogGroupNamesList')
    CloudWatchLogsSourceServiceNamesList = Shapes::ListShape.new(name: 'CloudWatchLogsSourceServiceNamesList')
    CloudWatchLogsTraceConfig = Shapes::StructureShape.new(name: 'CloudWatchLogsTraceConfig')
    CloudWatchLogsTraceConfigLogGroupArnsList = Shapes::ListShape.new(name: 'CloudWatchLogsTraceConfigLogGroupArnsList')
    CloudWatchOutputConfig = Shapes::StructureShape.new(name: 'CloudWatchOutputConfig')
    CodeInterpreterResult = Shapes::StructureShape.new(name: 'CodeInterpreterResult')
    CodeInterpreterSessionId = Shapes::StringShape.new(name: 'CodeInterpreterSessionId')
    CodeInterpreterSessionStatus = Shapes::StringShape.new(name: 'CodeInterpreterSessionStatus')
    CodeInterpreterSessionSummaries = Shapes::ListShape.new(name: 'CodeInterpreterSessionSummaries')
    CodeInterpreterSessionSummary = Shapes::StructureShape.new(name: 'CodeInterpreterSessionSummary')
    CodeInterpreterSessionTimeout = Shapes::IntegerShape.new(name: 'CodeInterpreterSessionTimeout')
    CodeInterpreterStreamOutput = Shapes::StructureShape.new(name: 'CodeInterpreterStreamOutput')
    CoinbaseCdpPaymentJwtTokenType = Shapes::StringShape.new(name: 'CoinbaseCdpPaymentJwtTokenType')
    CoinbaseCdpPaymentRequestBodyType = Shapes::StringShape.new(name: 'CoinbaseCdpPaymentRequestBodyType')
    CoinbaseCdpTokenRequestInput = Shapes::StructureShape.new(name: 'CoinbaseCdpTokenRequestInput')
    CoinbaseCdpTokenResponseOutput = Shapes::StructureShape.new(name: 'CoinbaseCdpTokenResponseOutput')
    CommandExecutionStatus = Shapes::StringShape.new(name: 'CommandExecutionStatus')
    CompleteResourceTokenAuthRequest = Shapes::StructureShape.new(name: 'CompleteResourceTokenAuthRequest')
    CompleteResourceTokenAuthResponse = Shapes::StructureShape.new(name: 'CompleteResourceTokenAuthResponse')
    ConfidenceInterval = Shapes::StructureShape.new(name: 'ConfidenceInterval')
    ConfigurationBundleArn = Shapes::StringShape.new(name: 'ConfigurationBundleArn')
    ConfigurationBundleRef = Shapes::StructureShape.new(name: 'ConfigurationBundleRef')
    ConfigurationBundleToolEntry = Shapes::StructureShape.new(name: 'ConfigurationBundleToolEntry')
    ConfigurationBundleToolEntryList = Shapes::ListShape.new(name: 'ConfigurationBundleToolEntryList')
    ConfigurationBundleVersion = Shapes::StringShape.new(name: 'ConfigurationBundleVersion')
    ConfigurationBundleVersionId = Shapes::StringShape.new(name: 'ConfigurationBundleVersionId')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Content = Shapes::UnionShape.new(name: 'Content')
    ContentBlock = Shapes::StructureShape.new(name: 'ContentBlock')
    ContentBlockList = Shapes::ListShape.new(name: 'ContentBlockList')
    ContentBlockType = Shapes::StringShape.new(name: 'ContentBlockType')
    ContentDeltaEvent = Shapes::StructureShape.new(name: 'ContentDeltaEvent')
    ContentSource = Shapes::UnionShape.new(name: 'ContentSource')
    ContentStartEvent = Shapes::StructureShape.new(name: 'ContentStartEvent')
    ContentStopEvent = Shapes::StructureShape.new(name: 'ContentStopEvent')
    ContentTextString = Shapes::StringShape.new(name: 'ContentTextString')
    Context = Shapes::UnionShape.new(name: 'Context')
    ControlStats = Shapes::StructureShape.new(name: 'ControlStats')
    Conversational = Shapes::StructureShape.new(name: 'Conversational')
    CreateABTestRequest = Shapes::StructureShape.new(name: 'CreateABTestRequest')
    CreateABTestResponse = Shapes::StructureShape.new(name: 'CreateABTestResponse')
    CreateEventInput = Shapes::StructureShape.new(name: 'CreateEventInput')
    CreateEventOutput = Shapes::StructureShape.new(name: 'CreateEventOutput')
    CreatePaymentInstrumentRequest = Shapes::StructureShape.new(name: 'CreatePaymentInstrumentRequest')
    CreatePaymentInstrumentResponse = Shapes::StructureShape.new(name: 'CreatePaymentInstrumentResponse')
    CreatePaymentSessionRequest = Shapes::StructureShape.new(name: 'CreatePaymentSessionRequest')
    CreatePaymentSessionRequestExpiryTimeInMinutesInteger = Shapes::IntegerShape.new(name: 'CreatePaymentSessionRequestExpiryTimeInMinutesInteger')
    CreatePaymentSessionResponse = Shapes::StructureShape.new(name: 'CreatePaymentSessionResponse')
    CredentialProviderName = Shapes::StringShape.new(name: 'CredentialProviderName')
    CryptoWalletNetwork = Shapes::StringShape.new(name: 'CryptoWalletNetwork')
    CryptoX402PaymentInput = Shapes::StructureShape.new(name: 'CryptoX402PaymentInput')
    CryptoX402PaymentOutput = Shapes::StructureShape.new(name: 'CryptoX402PaymentOutput')
    Currency = Shapes::StringShape.new(name: 'Currency')
    CustomDescriptor = Shapes::StructureShape.new(name: 'CustomDescriptor')
    CustomRequestKeyType = Shapes::StringShape.new(name: 'CustomRequestKeyType')
    CustomRequestParametersType = Shapes::MapShape.new(name: 'CustomRequestParametersType')
    CustomRequestValueType = Shapes::StringShape.new(name: 'CustomRequestValueType')
    DataSourceConfig = Shapes::UnionShape.new(name: 'DataSourceConfig')
    DateTimestamp = Shapes::TimestampShape.new(name: 'DateTimestamp', timestampFormat: "iso8601")
    DeleteABTestRequest = Shapes::StructureShape.new(name: 'DeleteABTestRequest')
    DeleteABTestResponse = Shapes::StructureShape.new(name: 'DeleteABTestResponse')
    DeleteBatchEvaluationRequest = Shapes::StructureShape.new(name: 'DeleteBatchEvaluationRequest')
    DeleteBatchEvaluationResponse = Shapes::StructureShape.new(name: 'DeleteBatchEvaluationResponse')
    DeleteCapacityProviderSessionRequest = Shapes::StructureShape.new(name: 'DeleteCapacityProviderSessionRequest')
    DeleteCapacityProviderSessionResponse = Shapes::StructureShape.new(name: 'DeleteCapacityProviderSessionResponse')
    DeleteEventInput = Shapes::StructureShape.new(name: 'DeleteEventInput')
    DeleteEventOutput = Shapes::StructureShape.new(name: 'DeleteEventOutput')
    DeleteMemoryRecordInput = Shapes::StructureShape.new(name: 'DeleteMemoryRecordInput')
    DeleteMemoryRecordOutput = Shapes::StructureShape.new(name: 'DeleteMemoryRecordOutput')
    DeletePaymentInstrumentRequest = Shapes::StructureShape.new(name: 'DeletePaymentInstrumentRequest')
    DeletePaymentInstrumentResponse = Shapes::StructureShape.new(name: 'DeletePaymentInstrumentResponse')
    DeletePaymentSessionRequest = Shapes::StructureShape.new(name: 'DeletePaymentSessionRequest')
    DeletePaymentSessionResponse = Shapes::StructureShape.new(name: 'DeletePaymentSessionResponse')
    DeleteRecommendationRequest = Shapes::StructureShape.new(name: 'DeleteRecommendationRequest')
    DeleteRecommendationResponse = Shapes::StructureShape.new(name: 'DeleteRecommendationResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DescriptorType = Shapes::StringShape.new(name: 'DescriptorType')
    Descriptors = Shapes::StructureShape.new(name: 'Descriptors')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    DomainPattern = Shapes::StringShape.new(name: 'DomainPattern')
    DomainPatterns = Shapes::ListShape.new(name: 'DomainPatterns')
    Double = Shapes::FloatShape.new(name: 'Double')
    DuplicateIdException = Shapes::StructureShape.new(name: 'DuplicateIdException')
    EfsAccessPointArn = Shapes::StringShape.new(name: 'EfsAccessPointArn')
    EfsConfiguration = Shapes::StructureShape.new(name: 'EfsConfiguration')
    EfsFileSystemArn = Shapes::StringShape.new(name: 'EfsFileSystemArn')
    Email = Shapes::StringShape.new(name: 'Email')
    EmbeddedCryptoWallet = Shapes::StructureShape.new(name: 'EmbeddedCryptoWallet')
    EmbeddedCryptoWalletRedirectUrlString = Shapes::StringShape.new(name: 'EmbeddedCryptoWalletRedirectUrlString')
    ErrorDetailsList = Shapes::ListShape.new(name: 'ErrorDetailsList')
    ErrorDetailsListMemberString = Shapes::StringShape.new(name: 'ErrorDetailsListMemberString')
    EvaluateRequest = Shapes::StructureShape.new(name: 'EvaluateRequest')
    EvaluateResponse = Shapes::StructureShape.new(name: 'EvaluateResponse')
    EvaluationContent = Shapes::UnionShape.new(name: 'EvaluationContent')
    EvaluationContentList = Shapes::ListShape.new(name: 'EvaluationContentList')
    EvaluationContentTextString = Shapes::StringShape.new(name: 'EvaluationContentTextString')
    EvaluationErrorCode = Shapes::StringShape.new(name: 'EvaluationErrorCode')
    EvaluationErrorMessage = Shapes::StringShape.new(name: 'EvaluationErrorMessage')
    EvaluationExpectedTrajectory = Shapes::StructureShape.new(name: 'EvaluationExpectedTrajectory')
    EvaluationExplanation = Shapes::StringShape.new(name: 'EvaluationExplanation')
    EvaluationInput = Shapes::UnionShape.new(name: 'EvaluationInput')
    EvaluationJobResults = Shapes::StructureShape.new(name: 'EvaluationJobResults')
    EvaluationMetadata = Shapes::UnionShape.new(name: 'EvaluationMetadata')
    EvaluationReferenceInput = Shapes::StructureShape.new(name: 'EvaluationReferenceInput')
    EvaluationReferenceInputs = Shapes::ListShape.new(name: 'EvaluationReferenceInputs')
    EvaluationResultContent = Shapes::StructureShape.new(name: 'EvaluationResultContent')
    EvaluationResults = Shapes::ListShape.new(name: 'EvaluationResults')
    EvaluationTarget = Shapes::UnionShape.new(name: 'EvaluationTarget')
    EvaluationToolName = Shapes::StringShape.new(name: 'EvaluationToolName')
    EvaluationToolNames = Shapes::ListShape.new(name: 'EvaluationToolNames')
    Evaluator = Shapes::StructureShape.new(name: 'Evaluator')
    EvaluatorArn = Shapes::StringShape.new(name: 'EvaluatorArn')
    EvaluatorId = Shapes::StringShape.new(name: 'EvaluatorId')
    EvaluatorList = Shapes::ListShape.new(name: 'EvaluatorList')
    EvaluatorMetric = Shapes::StructureShape.new(name: 'EvaluatorMetric')
    EvaluatorMetricList = Shapes::ListShape.new(name: 'EvaluatorMetricList')
    EvaluatorName = Shapes::StringShape.new(name: 'EvaluatorName')
    EvaluatorStatistics = Shapes::StructureShape.new(name: 'EvaluatorStatistics')
    EvaluatorSummary = Shapes::StructureShape.new(name: 'EvaluatorSummary')
    EvaluatorSummaryList = Shapes::ListShape.new(name: 'EvaluatorSummaryList')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventFilterCondition = Shapes::StringShape.new(name: 'EventFilterCondition')
    EventId = Shapes::StringShape.new(name: 'EventId')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventMetadataFilterExpression = Shapes::StructureShape.new(name: 'EventMetadataFilterExpression')
    EventMetadataFilterList = Shapes::ListShape.new(name: 'EventMetadataFilterList')
    ExecutionSummaryAffectedSession = Shapes::StructureShape.new(name: 'ExecutionSummaryAffectedSession')
    ExecutionSummaryAffectedSessionList = Shapes::ListShape.new(name: 'ExecutionSummaryAffectedSessionList')
    ExecutionSummaryCluster = Shapes::StructureShape.new(name: 'ExecutionSummaryCluster')
    ExecutionSummaryClusterList = Shapes::ListShape.new(name: 'ExecutionSummaryClusterList')
    ExecutionSummaryClusteringResultContent = Shapes::StructureShape.new(name: 'ExecutionSummaryClusteringResultContent')
    ExternalProxy = Shapes::StructureShape.new(name: 'ExternalProxy')
    ExternalProxyPortInteger = Shapes::IntegerShape.new(name: 'ExternalProxyPortInteger')
    ExtractionConfig = Shapes::StructureShape.new(name: 'ExtractionConfig')
    ExtractionJob = Shapes::StructureShape.new(name: 'ExtractionJob')
    ExtractionJobFilterInput = Shapes::StructureShape.new(name: 'ExtractionJobFilterInput')
    ExtractionJobMessages = Shapes::UnionShape.new(name: 'ExtractionJobMessages')
    ExtractionJobMetadata = Shapes::StructureShape.new(name: 'ExtractionJobMetadata')
    ExtractionJobMetadataList = Shapes::ListShape.new(name: 'ExtractionJobMetadataList')
    ExtractionJobStatus = Shapes::StringShape.new(name: 'ExtractionJobStatus')
    ExtractionMode = Shapes::StringShape.new(name: 'ExtractionMode')
    FailureAnalysisResultContent = Shapes::StructureShape.new(name: 'FailureAnalysisResultContent')
    FailureCategoryCluster = Shapes::StructureShape.new(name: 'FailureCategoryCluster')
    FailureCategoryClusterList = Shapes::ListShape.new(name: 'FailureCategoryClusterList')
    FailureSpanDetail = Shapes::StructureShape.new(name: 'FailureSpanDetail')
    FailureSpanDetailList = Shapes::ListShape.new(name: 'FailureSpanDetailList')
    FailureSubCategoryCluster = Shapes::StructureShape.new(name: 'FailureSubCategoryCluster')
    FailureSubCategoryClusterList = Shapes::ListShape.new(name: 'FailureSubCategoryClusterList')
    FilterInput = Shapes::StructureShape.new(name: 'FilterInput')
    FilterStringValue = Shapes::StringShape.new(name: 'FilterStringValue')
    FilterValue = Shapes::UnionShape.new(name: 'FilterValue')
    GatewayArn = Shapes::StringShape.new(name: 'GatewayArn')
    GatewayFilter = Shapes::StructureShape.new(name: 'GatewayFilter')
    GetABTestRequest = Shapes::StructureShape.new(name: 'GetABTestRequest')
    GetABTestResponse = Shapes::StructureShape.new(name: 'GetABTestResponse')
    GetAgentCardRequest = Shapes::StructureShape.new(name: 'GetAgentCardRequest')
    GetAgentCardResponse = Shapes::StructureShape.new(name: 'GetAgentCardResponse')
    GetBatchEvaluationRequest = Shapes::StructureShape.new(name: 'GetBatchEvaluationRequest')
    GetBatchEvaluationResponse = Shapes::StructureShape.new(name: 'GetBatchEvaluationResponse')
    GetBrowserSessionRequest = Shapes::StructureShape.new(name: 'GetBrowserSessionRequest')
    GetBrowserSessionResponse = Shapes::StructureShape.new(name: 'GetBrowserSessionResponse')
    GetCodeInterpreterSessionRequest = Shapes::StructureShape.new(name: 'GetCodeInterpreterSessionRequest')
    GetCodeInterpreterSessionResponse = Shapes::StructureShape.new(name: 'GetCodeInterpreterSessionResponse')
    GetEventInput = Shapes::StructureShape.new(name: 'GetEventInput')
    GetEventOutput = Shapes::StructureShape.new(name: 'GetEventOutput')
    GetMemoryRecordInput = Shapes::StructureShape.new(name: 'GetMemoryRecordInput')
    GetMemoryRecordOutput = Shapes::StructureShape.new(name: 'GetMemoryRecordOutput')
    GetPaymentInstrumentBalanceRequest = Shapes::StructureShape.new(name: 'GetPaymentInstrumentBalanceRequest')
    GetPaymentInstrumentBalanceResponse = Shapes::StructureShape.new(name: 'GetPaymentInstrumentBalanceResponse')
    GetPaymentInstrumentRequest = Shapes::StructureShape.new(name: 'GetPaymentInstrumentRequest')
    GetPaymentInstrumentResponse = Shapes::StructureShape.new(name: 'GetPaymentInstrumentResponse')
    GetPaymentSessionRequest = Shapes::StructureShape.new(name: 'GetPaymentSessionRequest')
    GetPaymentSessionResponse = Shapes::StructureShape.new(name: 'GetPaymentSessionResponse')
    GetRecommendationRequest = Shapes::StructureShape.new(name: 'GetRecommendationRequest')
    GetRecommendationResponse = Shapes::StructureShape.new(name: 'GetRecommendationResponse')
    GetResourceApiKeyRequest = Shapes::StructureShape.new(name: 'GetResourceApiKeyRequest')
    GetResourceApiKeyResponse = Shapes::StructureShape.new(name: 'GetResourceApiKeyResponse')
    GetResourceOauth2TokenRequest = Shapes::StructureShape.new(name: 'GetResourceOauth2TokenRequest')
    GetResourceOauth2TokenResponse = Shapes::StructureShape.new(name: 'GetResourceOauth2TokenResponse')
    GetResourcePaymentTokenRequest = Shapes::StructureShape.new(name: 'GetResourcePaymentTokenRequest')
    GetResourcePaymentTokenResponse = Shapes::StructureShape.new(name: 'GetResourcePaymentTokenResponse')
    GetWorkloadAccessTokenForJWTRequest = Shapes::StructureShape.new(name: 'GetWorkloadAccessTokenForJWTRequest')
    GetWorkloadAccessTokenForJWTResponse = Shapes::StructureShape.new(name: 'GetWorkloadAccessTokenForJWTResponse')
    GetWorkloadAccessTokenForUserIdRequest = Shapes::StructureShape.new(name: 'GetWorkloadAccessTokenForUserIdRequest')
    GetWorkloadAccessTokenForUserIdResponse = Shapes::StructureShape.new(name: 'GetWorkloadAccessTokenForUserIdResponse')
    GetWorkloadAccessTokenRequest = Shapes::StructureShape.new(name: 'GetWorkloadAccessTokenRequest')
    GetWorkloadAccessTokenResponse = Shapes::StructureShape.new(name: 'GetWorkloadAccessTokenResponse')
    GroundTruthSource = Shapes::UnionShape.new(name: 'GroundTruthSource')
    GroundTruthTurn = Shapes::StructureShape.new(name: 'GroundTruthTurn')
    GroundTruthTurnInput = Shapes::UnionShape.new(name: 'GroundTruthTurnInput')
    GroundTruthTurnInputPromptString = Shapes::StringShape.new(name: 'GroundTruthTurnInputPromptString')
    HarnessAgentCoreBrowserConfig = Shapes::StructureShape.new(name: 'HarnessAgentCoreBrowserConfig')
    HarnessAgentCoreCodeInterpreterConfig = Shapes::StructureShape.new(name: 'HarnessAgentCoreCodeInterpreterConfig')
    HarnessAgentCoreGatewayConfig = Shapes::StructureShape.new(name: 'HarnessAgentCoreGatewayConfig')
    HarnessAllowedTool = Shapes::StringShape.new(name: 'HarnessAllowedTool')
    HarnessAllowedTools = Shapes::ListShape.new(name: 'HarnessAllowedTools')
    HarnessArn = Shapes::StringShape.new(name: 'HarnessArn')
    HarnessAwsSkillPath = Shapes::StringShape.new(name: 'HarnessAwsSkillPath')
    HarnessAwsSkillPaths = Shapes::ListShape.new(name: 'HarnessAwsSkillPaths')
    HarnessBedrockApiFormat = Shapes::StringShape.new(name: 'HarnessBedrockApiFormat')
    HarnessBedrockModelConfig = Shapes::StructureShape.new(name: 'HarnessBedrockModelConfig')
    HarnessBrowserArn = Shapes::StringShape.new(name: 'HarnessBrowserArn')
    HarnessCodeInterpreterArn = Shapes::StringShape.new(name: 'HarnessCodeInterpreterArn')
    HarnessContentBlock = Shapes::UnionShape.new(name: 'HarnessContentBlock')
    HarnessContentBlockDelta = Shapes::UnionShape.new(name: 'HarnessContentBlockDelta')
    HarnessContentBlockDeltaEvent = Shapes::StructureShape.new(name: 'HarnessContentBlockDeltaEvent')
    HarnessContentBlockStart = Shapes::UnionShape.new(name: 'HarnessContentBlockStart')
    HarnessContentBlockStartEvent = Shapes::StructureShape.new(name: 'HarnessContentBlockStartEvent')
    HarnessContentBlockStopEvent = Shapes::StructureShape.new(name: 'HarnessContentBlockStopEvent')
    HarnessContentBlocks = Shapes::ListShape.new(name: 'HarnessContentBlocks')
    HarnessConversationRole = Shapes::StringShape.new(name: 'HarnessConversationRole')
    HarnessEndpointName = Shapes::StringShape.new(name: 'HarnessEndpointName')
    HarnessGatewayOutboundAuth = Shapes::UnionShape.new(name: 'HarnessGatewayOutboundAuth')
    HarnessGeminiModelConfig = Shapes::StructureShape.new(name: 'HarnessGeminiModelConfig')
    HarnessInlineFunctionConfig = Shapes::StructureShape.new(name: 'HarnessInlineFunctionConfig')
    HarnessInlineFunctionDescription = Shapes::StringShape.new(name: 'HarnessInlineFunctionDescription')
    HarnessLiteLlmApiBase = Shapes::StringShape.new(name: 'HarnessLiteLlmApiBase')
    HarnessLiteLlmModelConfig = Shapes::StructureShape.new(name: 'HarnessLiteLlmModelConfig')
    HarnessMessage = Shapes::StructureShape.new(name: 'HarnessMessage')
    HarnessMessageStartEvent = Shapes::StructureShape.new(name: 'HarnessMessageStartEvent')
    HarnessMessageStopEvent = Shapes::StructureShape.new(name: 'HarnessMessageStopEvent')
    HarnessMessages = Shapes::ListShape.new(name: 'HarnessMessages')
    HarnessMetadataEvent = Shapes::StructureShape.new(name: 'HarnessMetadataEvent')
    HarnessModelConfiguration = Shapes::UnionShape.new(name: 'HarnessModelConfiguration')
    HarnessOpenAiApiFormat = Shapes::StringShape.new(name: 'HarnessOpenAiApiFormat')
    HarnessOpenAiModelConfig = Shapes::StructureShape.new(name: 'HarnessOpenAiModelConfig')
    HarnessReasoningContentBlock = Shapes::UnionShape.new(name: 'HarnessReasoningContentBlock')
    HarnessReasoningContentBlockDelta = Shapes::UnionShape.new(name: 'HarnessReasoningContentBlockDelta')
    HarnessReasoningTextBlock = Shapes::StructureShape.new(name: 'HarnessReasoningTextBlock')
    HarnessRemoteMcpConfig = Shapes::StructureShape.new(name: 'HarnessRemoteMcpConfig')
    HarnessRemoteMcpUrl = Shapes::StringShape.new(name: 'HarnessRemoteMcpUrl')
    HarnessSkill = Shapes::UnionShape.new(name: 'HarnessSkill')
    HarnessSkillAwsSkillsSource = Shapes::StructureShape.new(name: 'HarnessSkillAwsSkillsSource')
    HarnessSkillGitAuth = Shapes::StructureShape.new(name: 'HarnessSkillGitAuth')
    HarnessSkillGitSource = Shapes::StructureShape.new(name: 'HarnessSkillGitSource')
    HarnessSkillGitUrl = Shapes::StringShape.new(name: 'HarnessSkillGitUrl')
    HarnessSkillPath = Shapes::StringShape.new(name: 'HarnessSkillPath')
    HarnessSkillS3Source = Shapes::StructureShape.new(name: 'HarnessSkillS3Source')
    HarnessSkillS3Uri = Shapes::StringShape.new(name: 'HarnessSkillS3Uri')
    HarnessSkills = Shapes::ListShape.new(name: 'HarnessSkills')
    HarnessStopReason = Shapes::StringShape.new(name: 'HarnessStopReason')
    HarnessStreamMetrics = Shapes::StructureShape.new(name: 'HarnessStreamMetrics')
    HarnessSystemContentBlock = Shapes::UnionShape.new(name: 'HarnessSystemContentBlock')
    HarnessSystemPrompt = Shapes::ListShape.new(name: 'HarnessSystemPrompt')
    HarnessTokenUsage = Shapes::StructureShape.new(name: 'HarnessTokenUsage')
    HarnessTokenUsageCacheReadInputTokensInteger = Shapes::IntegerShape.new(name: 'HarnessTokenUsageCacheReadInputTokensInteger')
    HarnessTokenUsageCacheWriteInputTokensInteger = Shapes::IntegerShape.new(name: 'HarnessTokenUsageCacheWriteInputTokensInteger')
    HarnessTokenUsageInputTokensInteger = Shapes::IntegerShape.new(name: 'HarnessTokenUsageInputTokensInteger')
    HarnessTokenUsageOutputTokensInteger = Shapes::IntegerShape.new(name: 'HarnessTokenUsageOutputTokensInteger')
    HarnessTokenUsageTotalTokensInteger = Shapes::IntegerShape.new(name: 'HarnessTokenUsageTotalTokensInteger')
    HarnessTool = Shapes::StructureShape.new(name: 'HarnessTool')
    HarnessToolConfiguration = Shapes::UnionShape.new(name: 'HarnessToolConfiguration')
    HarnessToolName = Shapes::StringShape.new(name: 'HarnessToolName')
    HarnessToolResultBlock = Shapes::StructureShape.new(name: 'HarnessToolResultBlock')
    HarnessToolResultBlockDelta = Shapes::UnionShape.new(name: 'HarnessToolResultBlockDelta')
    HarnessToolResultBlockStart = Shapes::StructureShape.new(name: 'HarnessToolResultBlockStart')
    HarnessToolResultBlocksDelta = Shapes::ListShape.new(name: 'HarnessToolResultBlocksDelta')
    HarnessToolResultContentBlock = Shapes::UnionShape.new(name: 'HarnessToolResultContentBlock')
    HarnessToolResultContentBlocks = Shapes::ListShape.new(name: 'HarnessToolResultContentBlocks')
    HarnessToolResultMetadataBlockDelta = Shapes::StructureShape.new(name: 'HarnessToolResultMetadataBlockDelta')
    HarnessToolType = Shapes::StringShape.new(name: 'HarnessToolType')
    HarnessToolUseBlock = Shapes::StructureShape.new(name: 'HarnessToolUseBlock')
    HarnessToolUseBlockDelta = Shapes::StructureShape.new(name: 'HarnessToolUseBlockDelta')
    HarnessToolUseBlockStart = Shapes::StructureShape.new(name: 'HarnessToolUseBlockStart')
    HarnessToolUseId = Shapes::StringShape.new(name: 'HarnessToolUseId')
    HarnessToolUseStatus = Shapes::StringShape.new(name: 'HarnessToolUseStatus')
    HarnessToolUseType = Shapes::StringShape.new(name: 'HarnessToolUseType')
    HarnessTools = Shapes::ListShape.new(name: 'HarnessTools')
    HostName = Shapes::StringShape.new(name: 'HostName')
    HttpHeaderKey = Shapes::StringShape.new(name: 'HttpHeaderKey')
    HttpHeaderValue = Shapes::StringShape.new(name: 'HttpHeaderValue')
    HttpHeadersMap = Shapes::MapShape.new(name: 'HttpHeadersMap')
    HttpResponseCode = Shapes::IntegerShape.new(name: 'HttpResponseCode')
    IgnoredReferenceInputField = Shapes::StringShape.new(name: 'IgnoredReferenceInputField')
    IgnoredReferenceInputFields = Shapes::ListShape.new(name: 'IgnoredReferenceInputFields')
    IngestDataInput = Shapes::StructureShape.new(name: 'IngestDataInput')
    IngestDataOutput = Shapes::StructureShape.new(name: 'IngestDataOutput')
    IngestPayloadList = Shapes::ListShape.new(name: 'IngestPayloadList')
    IngestPayloadType = Shapes::UnionShape.new(name: 'IngestPayloadType')
    InlineContent = Shapes::StringShape.new(name: 'InlineContent')
    InlineGroundTruth = Shapes::StructureShape.new(name: 'InlineGroundTruth')
    InlineGroundTruthTurnsList = Shapes::ListShape.new(name: 'InlineGroundTruthTurnsList')
    InlineMemoryContent = Shapes::StructureShape.new(name: 'InlineMemoryContent')
    InputContentBlock = Shapes::StructureShape.new(name: 'InputContentBlock')
    InputContentBlockList = Shapes::ListShape.new(name: 'InputContentBlockList')
    Insight = Shapes::StructureShape.new(name: 'Insight')
    InsightId = Shapes::StringShape.new(name: 'InsightId')
    InsightList = Shapes::ListShape.new(name: 'InsightList')
    InsightsFailureCategory = Shapes::StringShape.new(name: 'InsightsFailureCategory')
    InsightsFailureSignal = Shapes::StructureShape.new(name: 'InsightsFailureSignal')
    InsightsFailureSignalList = Shapes::ListShape.new(name: 'InsightsFailureSignalList')
    InstrumentBalanceToken = Shapes::StringShape.new(name: 'InstrumentBalanceToken')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    InvokeAgentRuntimeCommandRequest = Shapes::StructureShape.new(name: 'InvokeAgentRuntimeCommandRequest')
    InvokeAgentRuntimeCommandRequestAccountIdString = Shapes::StringShape.new(name: 'InvokeAgentRuntimeCommandRequestAccountIdString')
    InvokeAgentRuntimeCommandRequestBaggageString = Shapes::StringShape.new(name: 'InvokeAgentRuntimeCommandRequestBaggageString')
    InvokeAgentRuntimeCommandRequestBody = Shapes::StructureShape.new(name: 'InvokeAgentRuntimeCommandRequestBody')
    InvokeAgentRuntimeCommandRequestBodyCommandString = Shapes::StringShape.new(name: 'InvokeAgentRuntimeCommandRequestBodyCommandString')
    InvokeAgentRuntimeCommandRequestTraceIdString = Shapes::StringShape.new(name: 'InvokeAgentRuntimeCommandRequestTraceIdString')
    InvokeAgentRuntimeCommandRequestTraceParentString = Shapes::StringShape.new(name: 'InvokeAgentRuntimeCommandRequestTraceParentString')
    InvokeAgentRuntimeCommandRequestTraceStateString = Shapes::StringShape.new(name: 'InvokeAgentRuntimeCommandRequestTraceStateString')
    InvokeAgentRuntimeCommandResponse = Shapes::StructureShape.new(name: 'InvokeAgentRuntimeCommandResponse')
    InvokeAgentRuntimeCommandStreamOutput = Shapes::StructureShape.new(name: 'InvokeAgentRuntimeCommandStreamOutput')
    InvokeAgentRuntimeRequest = Shapes::StructureShape.new(name: 'InvokeAgentRuntimeRequest')
    InvokeAgentRuntimeRequestAccountIdString = Shapes::StringShape.new(name: 'InvokeAgentRuntimeRequestAccountIdString')
    InvokeAgentRuntimeRequestBaggageString = Shapes::StringShape.new(name: 'InvokeAgentRuntimeRequestBaggageString')
    InvokeAgentRuntimeRequestTraceIdString = Shapes::StringShape.new(name: 'InvokeAgentRuntimeRequestTraceIdString')
    InvokeAgentRuntimeRequestTraceParentString = Shapes::StringShape.new(name: 'InvokeAgentRuntimeRequestTraceParentString')
    InvokeAgentRuntimeRequestTraceStateString = Shapes::StringShape.new(name: 'InvokeAgentRuntimeRequestTraceStateString')
    InvokeAgentRuntimeResponse = Shapes::StructureShape.new(name: 'InvokeAgentRuntimeResponse')
    InvokeBrowserRequest = Shapes::StructureShape.new(name: 'InvokeBrowserRequest')
    InvokeBrowserResponse = Shapes::StructureShape.new(name: 'InvokeBrowserResponse')
    InvokeCodeInterpreterRequest = Shapes::StructureShape.new(name: 'InvokeCodeInterpreterRequest')
    InvokeCodeInterpreterRequestTraceIdString = Shapes::StringShape.new(name: 'InvokeCodeInterpreterRequestTraceIdString')
    InvokeCodeInterpreterRequestTraceParentString = Shapes::StringShape.new(name: 'InvokeCodeInterpreterRequestTraceParentString')
    InvokeCodeInterpreterResponse = Shapes::StructureShape.new(name: 'InvokeCodeInterpreterResponse')
    InvokeHarnessRequest = Shapes::StructureShape.new(name: 'InvokeHarnessRequest')
    InvokeHarnessRequestBaggageString = Shapes::StringShape.new(name: 'InvokeHarnessRequestBaggageString')
    InvokeHarnessRequestRuntimeSessionIdString = Shapes::StringShape.new(name: 'InvokeHarnessRequestRuntimeSessionIdString')
    InvokeHarnessRequestTraceIdString = Shapes::StringShape.new(name: 'InvokeHarnessRequestTraceIdString')
    InvokeHarnessRequestTraceParentString = Shapes::StringShape.new(name: 'InvokeHarnessRequestTraceParentString')
    InvokeHarnessRequestTraceStateString = Shapes::StringShape.new(name: 'InvokeHarnessRequestTraceStateString')
    InvokeHarnessResponse = Shapes::StructureShape.new(name: 'InvokeHarnessResponse')
    InvokeHarnessStreamOutput = Shapes::StructureShape.new(name: 'InvokeHarnessStreamOutput')
    JwtKeyId = Shapes::StringShape.new(name: 'JwtKeyId')
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    KeyPressArguments = Shapes::StructureShape.new(name: 'KeyPressArguments')
    KeyPressArgumentsPressesInteger = Shapes::IntegerShape.new(name: 'KeyPressArgumentsPressesInteger')
    KeyPressResult = Shapes::StructureShape.new(name: 'KeyPressResult')
    KeyShortcutArguments = Shapes::StructureShape.new(name: 'KeyShortcutArguments')
    KeyShortcutResult = Shapes::StructureShape.new(name: 'KeyShortcutResult')
    KeyTypeArguments = Shapes::StructureShape.new(name: 'KeyTypeArguments')
    KeyTypeArgumentsTextString = Shapes::StringShape.new(name: 'KeyTypeArgumentsTextString')
    KeyTypeResult = Shapes::StructureShape.new(name: 'KeyTypeResult')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LanguageRuntime = Shapes::StringShape.new(name: 'LanguageRuntime')
    LeftExpression = Shapes::UnionShape.new(name: 'LeftExpression')
    LinkedAccount = Shapes::UnionShape.new(name: 'LinkedAccount')
    LinkedAccountDeveloperJwt = Shapes::StructureShape.new(name: 'LinkedAccountDeveloperJwt')
    LinkedAccountDeveloperJwtSubString = Shapes::StringShape.new(name: 'LinkedAccountDeveloperJwtSubString')
    LinkedAccountEmail = Shapes::StructureShape.new(name: 'LinkedAccountEmail')
    LinkedAccountList = Shapes::ListShape.new(name: 'LinkedAccountList')
    LinkedAccountOAuth2 = Shapes::UnionShape.new(name: 'LinkedAccountOAuth2')
    LinkedAccountSms = Shapes::StructureShape.new(name: 'LinkedAccountSms')
    ListABTestsRequest = Shapes::StructureShape.new(name: 'ListABTestsRequest')
    ListABTestsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListABTestsRequestMaxResultsInteger')
    ListABTestsResponse = Shapes::StructureShape.new(name: 'ListABTestsResponse')
    ListActorsInput = Shapes::StructureShape.new(name: 'ListActorsInput')
    ListActorsOutput = Shapes::StructureShape.new(name: 'ListActorsOutput')
    ListBatchEvaluationsRequest = Shapes::StructureShape.new(name: 'ListBatchEvaluationsRequest')
    ListBatchEvaluationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListBatchEvaluationsRequestMaxResultsInteger')
    ListBatchEvaluationsResponse = Shapes::StructureShape.new(name: 'ListBatchEvaluationsResponse')
    ListBrowserSessionsRequest = Shapes::StructureShape.new(name: 'ListBrowserSessionsRequest')
    ListBrowserSessionsResponse = Shapes::StructureShape.new(name: 'ListBrowserSessionsResponse')
    ListCodeInterpreterSessionsRequest = Shapes::StructureShape.new(name: 'ListCodeInterpreterSessionsRequest')
    ListCodeInterpreterSessionsResponse = Shapes::StructureShape.new(name: 'ListCodeInterpreterSessionsResponse')
    ListEventsInput = Shapes::StructureShape.new(name: 'ListEventsInput')
    ListEventsOutput = Shapes::StructureShape.new(name: 'ListEventsOutput')
    ListMemoryExtractionJobsInput = Shapes::StructureShape.new(name: 'ListMemoryExtractionJobsInput')
    ListMemoryExtractionJobsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMemoryExtractionJobsInputMaxResultsInteger')
    ListMemoryExtractionJobsOutput = Shapes::StructureShape.new(name: 'ListMemoryExtractionJobsOutput')
    ListMemoryRecordsInput = Shapes::StructureShape.new(name: 'ListMemoryRecordsInput')
    ListMemoryRecordsOutput = Shapes::StructureShape.new(name: 'ListMemoryRecordsOutput')
    ListPaymentInstrumentsRequest = Shapes::StructureShape.new(name: 'ListPaymentInstrumentsRequest')
    ListPaymentInstrumentsResponse = Shapes::StructureShape.new(name: 'ListPaymentInstrumentsResponse')
    ListPaymentSessionsRequest = Shapes::StructureShape.new(name: 'ListPaymentSessionsRequest')
    ListPaymentSessionsResponse = Shapes::StructureShape.new(name: 'ListPaymentSessionsResponse')
    ListRecommendationsRequest = Shapes::StructureShape.new(name: 'ListRecommendationsRequest')
    ListRecommendationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRecommendationsRequestMaxResultsInteger')
    ListRecommendationsResponse = Shapes::StructureShape.new(name: 'ListRecommendationsResponse')
    ListSessionsInput = Shapes::StructureShape.new(name: 'ListSessionsInput')
    ListSessionsOutput = Shapes::StructureShape.new(name: 'ListSessionsOutput')
    LiveViewStream = Shapes::StructureShape.new(name: 'LiveViewStream')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    LogGroupNamePrefix = Shapes::StringShape.new(name: 'LogGroupNamePrefix')
    LogStreamName = Shapes::StringShape.new(name: 'LogStreamName')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxLenString = Shapes::StringShape.new(name: 'MaxLenString')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxTokens = Shapes::IntegerShape.new(name: 'MaxTokens')
    McpDescriptor = Shapes::StructureShape.new(name: 'McpDescriptor')
    MemoryContent = Shapes::UnionShape.new(name: 'MemoryContent')
    MemoryContentTextString = Shapes::StringShape.new(name: 'MemoryContentTextString')
    MemoryDocument = Shapes::DocumentShape.new(name: 'MemoryDocument', document: true)
    MemoryId = Shapes::StringShape.new(name: 'MemoryId')
    MemoryJsonData = Shapes::StructureShape.new(name: 'MemoryJsonData')
    MemoryJsonDataContent = Shapes::DocumentShape.new(name: 'MemoryJsonDataContent', document: true)
    MemoryMetadataFilterExpression = Shapes::StructureShape.new(name: 'MemoryMetadataFilterExpression')
    MemoryMetadataFilterList = Shapes::ListShape.new(name: 'MemoryMetadataFilterList')
    MemoryRecord = Shapes::StructureShape.new(name: 'MemoryRecord')
    MemoryRecordCreateInput = Shapes::StructureShape.new(name: 'MemoryRecordCreateInput')
    MemoryRecordDeleteInput = Shapes::StructureShape.new(name: 'MemoryRecordDeleteInput')
    MemoryRecordId = Shapes::StringShape.new(name: 'MemoryRecordId')
    MemoryRecordLeftExpression = Shapes::UnionShape.new(name: 'MemoryRecordLeftExpression')
    MemoryRecordMetadataMap = Shapes::MapShape.new(name: 'MemoryRecordMetadataMap')
    MemoryRecordMetadataValue = Shapes::UnionShape.new(name: 'MemoryRecordMetadataValue')
    MemoryRecordOperatorType = Shapes::StringShape.new(name: 'MemoryRecordOperatorType')
    MemoryRecordOutput = Shapes::StructureShape.new(name: 'MemoryRecordOutput')
    MemoryRecordRightExpression = Shapes::UnionShape.new(name: 'MemoryRecordRightExpression')
    MemoryRecordStatus = Shapes::StringShape.new(name: 'MemoryRecordStatus')
    MemoryRecordSummary = Shapes::StructureShape.new(name: 'MemoryRecordSummary')
    MemoryRecordSummaryList = Shapes::ListShape.new(name: 'MemoryRecordSummaryList')
    MemoryRecordUpdateInput = Shapes::StructureShape.new(name: 'MemoryRecordUpdateInput')
    MemoryRecordsCreateInputList = Shapes::ListShape.new(name: 'MemoryRecordsCreateInputList')
    MemoryRecordsDeleteInputList = Shapes::ListShape.new(name: 'MemoryRecordsDeleteInputList')
    MemoryRecordsOutputList = Shapes::ListShape.new(name: 'MemoryRecordsOutputList')
    MemoryRecordsUpdateInputList = Shapes::ListShape.new(name: 'MemoryRecordsUpdateInputList')
    MemoryStrategyId = Shapes::StringShape.new(name: 'MemoryStrategyId')
    MessageMetadata = Shapes::StructureShape.new(name: 'MessageMetadata')
    MessagesList = Shapes::ListShape.new(name: 'MessagesList')
    MetadataFilterExpression = Shapes::DocumentShape.new(name: 'MetadataFilterExpression', document: true)
    MetadataKey = Shapes::StringShape.new(name: 'MetadataKey')
    MetadataMap = Shapes::MapShape.new(name: 'MetadataMap')
    MetadataValue = Shapes::UnionShape.new(name: 'MetadataValue')
    MetadataValueStringValueString = Shapes::StringShape.new(name: 'MetadataValueStringValueString')
    MetricsNamespace = Shapes::StringShape.new(name: 'MetricsNamespace')
    MimeType = Shapes::StringShape.new(name: 'MimeType')
    ModelId = Shapes::StringShape.new(name: 'ModelId')
    MountPath = Shapes::StringShape.new(name: 'MountPath')
    MouseButton = Shapes::StringShape.new(name: 'MouseButton')
    MouseClickArguments = Shapes::StructureShape.new(name: 'MouseClickArguments')
    MouseClickArgumentsClickCountInteger = Shapes::IntegerShape.new(name: 'MouseClickArgumentsClickCountInteger')
    MouseClickResult = Shapes::StructureShape.new(name: 'MouseClickResult')
    MouseDragArguments = Shapes::StructureShape.new(name: 'MouseDragArguments')
    MouseDragResult = Shapes::StructureShape.new(name: 'MouseDragResult')
    MouseMoveArguments = Shapes::StructureShape.new(name: 'MouseMoveArguments')
    MouseMoveResult = Shapes::StructureShape.new(name: 'MouseMoveResult')
    MouseScrollArguments = Shapes::StructureShape.new(name: 'MouseScrollArguments')
    MouseScrollArgumentsDeltaXInteger = Shapes::IntegerShape.new(name: 'MouseScrollArgumentsDeltaXInteger')
    MouseScrollArgumentsDeltaYInteger = Shapes::IntegerShape.new(name: 'MouseScrollArgumentsDeltaYInteger')
    MouseScrollResult = Shapes::StructureShape.new(name: 'MouseScrollResult')
    MppPaymentCredential = Shapes::StringShape.new(name: 'MppPaymentCredential')
    MppPaymentInput = Shapes::StructureShape.new(name: 'MppPaymentInput')
    MppPaymentOutput = Shapes::StructureShape.new(name: 'MppPaymentOutput')
    MppPaymentOutputSelectedPaymentIdString = Shapes::StringShape.new(name: 'MppPaymentOutputSelectedPaymentIdString')
    Name = Shapes::StringShape.new(name: 'Name')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NamespaceVariableName = Shapes::StringShape.new(name: 'NamespaceVariableName')
    NamespaceVariableValue = Shapes::StringShape.new(name: 'NamespaceVariableValue')
    NamespaceVariablesMap = Shapes::MapShape.new(name: 'NamespaceVariablesMap')
    NamespacesList = Shapes::ListShape.new(name: 'NamespacesList')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    OAuth2Authentication = Shapes::StructureShape.new(name: 'OAuth2Authentication')
    OAuth2AuthenticationNameString = Shapes::StringShape.new(name: 'OAuth2AuthenticationNameString')
    OAuth2AuthenticationSubString = Shapes::StringShape.new(name: 'OAuth2AuthenticationSubString')
    OAuth2AuthenticationUsernameString = Shapes::StringShape.new(name: 'OAuth2AuthenticationUsernameString')
    OAuthCredentialProvider = Shapes::StructureShape.new(name: 'OAuthCredentialProvider')
    OAuthCredentialProviderArn = Shapes::StringShape.new(name: 'OAuthCredentialProviderArn')
    OAuthCustomParameters = Shapes::MapShape.new(name: 'OAuthCustomParameters')
    OAuthCustomParametersKey = Shapes::StringShape.new(name: 'OAuthCustomParametersKey')
    OAuthCustomParametersValue = Shapes::StringShape.new(name: 'OAuthCustomParametersValue')
    OAuthDefaultReturnUrl = Shapes::StringShape.new(name: 'OAuthDefaultReturnUrl')
    OAuthGrantType = Shapes::StringShape.new(name: 'OAuthGrantType')
    OAuthScope = Shapes::StringShape.new(name: 'OAuthScope')
    OAuthScopes = Shapes::ListShape.new(name: 'OAuthScopes')
    Oauth2FlowType = Shapes::StringShape.new(name: 'Oauth2FlowType')
    OnlineEvaluationConfigArn = Shapes::StringShape.new(name: 'OnlineEvaluationConfigArn')
    OnlineEvaluationConfigSource = Shapes::StructureShape.new(name: 'OnlineEvaluationConfigSource')
    OnlineEvaluationTraceConfig = Shapes::StructureShape.new(name: 'OnlineEvaluationTraceConfig')
    OperatorType = Shapes::StringShape.new(name: 'OperatorType')
    OptionalLogGroupName = Shapes::StringShape.new(name: 'OptionalLogGroupName')
    OutputConfig = Shapes::UnionShape.new(name: 'OutputConfig')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PathPattern = Shapes::StringShape.new(name: 'PathPattern')
    PayloadType = Shapes::UnionShape.new(name: 'PayloadType')
    PayloadTypeList = Shapes::ListShape.new(name: 'PayloadTypeList')
    PaymentAgentName = Shapes::StringShape.new(name: 'PaymentAgentName')
    PaymentConnectorId = Shapes::StringShape.new(name: 'PaymentConnectorId')
    PaymentDocument = Shapes::DocumentShape.new(name: 'PaymentDocument', document: true)
    PaymentHttpMethodType = Shapes::StringShape.new(name: 'PaymentHttpMethodType')
    PaymentInput = Shapes::UnionShape.new(name: 'PaymentInput')
    PaymentInstrument = Shapes::StructureShape.new(name: 'PaymentInstrument')
    PaymentInstrumentDetails = Shapes::UnionShape.new(name: 'PaymentInstrumentDetails')
    PaymentInstrumentId = Shapes::StringShape.new(name: 'PaymentInstrumentId')
    PaymentInstrumentStatus = Shapes::StringShape.new(name: 'PaymentInstrumentStatus')
    PaymentInstrumentSummary = Shapes::StructureShape.new(name: 'PaymentInstrumentSummary')
    PaymentInstrumentSummaryList = Shapes::ListShape.new(name: 'PaymentInstrumentSummaryList')
    PaymentInstrumentType = Shapes::StringShape.new(name: 'PaymentInstrumentType')
    PaymentManagerArn = Shapes::StringShape.new(name: 'PaymentManagerArn')
    PaymentOutput = Shapes::UnionShape.new(name: 'PaymentOutput')
    PaymentRequestHostType = Shapes::StringShape.new(name: 'PaymentRequestHostType')
    PaymentRequestPathType = Shapes::StringShape.new(name: 'PaymentRequestPathType')
    PaymentSession = Shapes::StructureShape.new(name: 'PaymentSession')
    PaymentSessionId = Shapes::StringShape.new(name: 'PaymentSessionId')
    PaymentSessionStatus = Shapes::StringShape.new(name: 'PaymentSessionStatus')
    PaymentSessionSummary = Shapes::StructureShape.new(name: 'PaymentSessionSummary')
    PaymentSessionSummaryList = Shapes::ListShape.new(name: 'PaymentSessionSummaryList')
    PaymentStatus = Shapes::StringShape.new(name: 'PaymentStatus')
    PaymentTokenRequestInput = Shapes::UnionShape.new(name: 'PaymentTokenRequestInput')
    PaymentTokenResponseOutput = Shapes::UnionShape.new(name: 'PaymentTokenResponseOutput')
    PaymentType = Shapes::StringShape.new(name: 'PaymentType')
    PerVariantOnlineEvaluationConfig = Shapes::StructureShape.new(name: 'PerVariantOnlineEvaluationConfig')
    PerVariantOnlineEvaluationConfigList = Shapes::ListShape.new(name: 'PerVariantOnlineEvaluationConfigList')
    Permit2AllowanceLimit = Shapes::StringShape.new(name: 'Permit2AllowanceLimit')
    PhoneNumber = Shapes::StringShape.new(name: 'PhoneNumber')
    ProcessPaymentId = Shapes::StringShape.new(name: 'ProcessPaymentId')
    ProcessPaymentRequest = Shapes::StructureShape.new(name: 'ProcessPaymentRequest')
    ProcessPaymentResponse = Shapes::StructureShape.new(name: 'ProcessPaymentResponse')
    ProgrammingLanguage = Shapes::StringShape.new(name: 'ProgrammingLanguage')
    Proxy = Shapes::UnionShape.new(name: 'Proxy')
    ProxyBypass = Shapes::StructureShape.new(name: 'ProxyBypass')
    ProxyConfiguration = Shapes::StructureShape.new(name: 'ProxyConfiguration')
    ProxyConfigurationProxiesList = Shapes::ListShape.new(name: 'ProxyConfigurationProxiesList')
    ProxyCredentials = Shapes::UnionShape.new(name: 'ProxyCredentials')
    RecommendationArn = Shapes::StringShape.new(name: 'RecommendationArn')
    RecommendationConfig = Shapes::UnionShape.new(name: 'RecommendationConfig')
    RecommendationDescription = Shapes::StringShape.new(name: 'RecommendationDescription')
    RecommendationErrorCode = Shapes::StringShape.new(name: 'RecommendationErrorCode')
    RecommendationErrorMessage = Shapes::StringShape.new(name: 'RecommendationErrorMessage')
    RecommendationEvaluationConfig = Shapes::StructureShape.new(name: 'RecommendationEvaluationConfig')
    RecommendationEvaluationConfigEvaluatorsList = Shapes::ListShape.new(name: 'RecommendationEvaluationConfigEvaluatorsList')
    RecommendationEvaluatorReference = Shapes::StructureShape.new(name: 'RecommendationEvaluatorReference')
    RecommendationExplanation = Shapes::StringShape.new(name: 'RecommendationExplanation')
    RecommendationId = Shapes::StringShape.new(name: 'RecommendationId')
    RecommendationName = Shapes::StringShape.new(name: 'RecommendationName')
    RecommendationResult = Shapes::UnionShape.new(name: 'RecommendationResult')
    RecommendationResultConfigurationBundle = Shapes::StructureShape.new(name: 'RecommendationResultConfigurationBundle')
    RecommendationStatus = Shapes::StringShape.new(name: 'RecommendationStatus')
    RecommendationSummary = Shapes::StructureShape.new(name: 'RecommendationSummary')
    RecommendationSummaryList = Shapes::ListShape.new(name: 'RecommendationSummaryList')
    RecommendationToolName = Shapes::StringShape.new(name: 'RecommendationToolName')
    RecommendationType = Shapes::StringShape.new(name: 'RecommendationType')
    RegistryArn = Shapes::StringShape.new(name: 'RegistryArn')
    RegistryIdentifier = Shapes::StringShape.new(name: 'RegistryIdentifier')
    RegistryRecordArn = Shapes::StringShape.new(name: 'RegistryRecordArn')
    RegistryRecordId = Shapes::StringShape.new(name: 'RegistryRecordId')
    RegistryRecordName = Shapes::StringShape.new(name: 'RegistryRecordName')
    RegistryRecordStatus = Shapes::StringShape.new(name: 'RegistryRecordStatus')
    RegistryRecordSummary = Shapes::StructureShape.new(name: 'RegistryRecordSummary')
    RegistryRecordSummaryList = Shapes::ListShape.new(name: 'RegistryRecordSummaryList')
    RegistryRecordVersion = Shapes::StringShape.new(name: 'RegistryRecordVersion')
    RequestIdentifier = Shapes::StringShape.new(name: 'RequestIdentifier')
    RequestUri = Shapes::StringShape.new(name: 'RequestUri')
    ResourceContent = Shapes::StructureShape.new(name: 'ResourceContent')
    ResourceContentType = Shapes::StringShape.new(name: 'ResourceContentType')
    ResourceLocation = Shapes::UnionShape.new(name: 'ResourceLocation')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceOauth2ReturnUrlType = Shapes::StringShape.new(name: 'ResourceOauth2ReturnUrlType')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourcesListType = Shapes::ListShape.new(name: 'ResourcesListType')
    ResponseChunk = Shapes::StructureShape.new(name: 'ResponseChunk')
    ResponseStream = Shapes::BlobShape.new(name: 'ResponseStream', streaming: true)
    ResultDestination = Shapes::StringShape.new(name: 'ResultDestination')
    RetrieveMemoryRecordsInput = Shapes::StructureShape.new(name: 'RetrieveMemoryRecordsInput')
    RetrieveMemoryRecordsOutput = Shapes::StructureShape.new(name: 'RetrieveMemoryRecordsOutput')
    RetryableConflictException = Shapes::StructureShape.new(name: 'RetryableConflictException')
    RightExpression = Shapes::UnionShape.new(name: 'RightExpression')
    Role = Shapes::StringShape.new(name: 'Role')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RootCauseCluster = Shapes::StructureShape.new(name: 'RootCauseCluster')
    RootCauseClusterList = Shapes::ListShape.new(name: 'RootCauseClusterList')
    RuntimeClientError = Shapes::StructureShape.new(name: 'RuntimeClientError')
    S3FilesAccessPointArn = Shapes::StringShape.new(name: 'S3FilesAccessPointArn')
    S3FilesConfiguration = Shapes::StructureShape.new(name: 'S3FilesConfiguration')
    S3FilesFileSystemArn = Shapes::StringShape.new(name: 'S3FilesFileSystemArn')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3LocationBucketString = Shapes::StringShape.new(name: 'S3LocationBucketString')
    S3LocationPrefixString = Shapes::StringShape.new(name: 'S3LocationPrefixString')
    S3LocationVersionIdString = Shapes::StringShape.new(name: 'S3LocationVersionIdString')
    SaveBrowserSessionProfileRequest = Shapes::StructureShape.new(name: 'SaveBrowserSessionProfileRequest')
    SaveBrowserSessionProfileRequestTraceIdString = Shapes::StringShape.new(name: 'SaveBrowserSessionProfileRequestTraceIdString')
    SaveBrowserSessionProfileRequestTraceParentString = Shapes::StringShape.new(name: 'SaveBrowserSessionProfileRequestTraceParentString')
    SaveBrowserSessionProfileResponse = Shapes::StructureShape.new(name: 'SaveBrowserSessionProfileResponse')
    SchemaVersion = Shapes::StringShape.new(name: 'SchemaVersion')
    ScopeType = Shapes::StringShape.new(name: 'ScopeType')
    ScopesListType = Shapes::ListShape.new(name: 'ScopesListType')
    ScreenshotArguments = Shapes::StructureShape.new(name: 'ScreenshotArguments')
    ScreenshotFormat = Shapes::StringShape.new(name: 'ScreenshotFormat')
    ScreenshotResult = Shapes::StructureShape.new(name: 'ScreenshotResult')
    SearchCriteria = Shapes::StructureShape.new(name: 'SearchCriteria')
    SearchCriteriaSearchQueryString = Shapes::StringShape.new(name: 'SearchCriteriaSearchQueryString')
    SearchCriteriaTopKInteger = Shapes::IntegerShape.new(name: 'SearchCriteriaTopKInteger')
    SearchRegistryRecordsRequest = Shapes::StructureShape.new(name: 'SearchRegistryRecordsRequest')
    SearchRegistryRecordsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchRegistryRecordsRequestMaxResultsInteger')
    SearchRegistryRecordsRequestRegistryIdsList = Shapes::ListShape.new(name: 'SearchRegistryRecordsRequestRegistryIdsList')
    SearchRegistryRecordsRequestSearchQueryString = Shapes::StringShape.new(name: 'SearchRegistryRecordsRequestSearchQueryString')
    SearchRegistryRecordsResponse = Shapes::StructureShape.new(name: 'SearchRegistryRecordsResponse')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SecretsManagerLocation = Shapes::StructureShape.new(name: 'SecretsManagerLocation')
    SensitiveJson = Shapes::DocumentShape.new(name: 'SensitiveJson', document: true)
    SensitiveText = Shapes::StringShape.new(name: 'SensitiveText')
    ServerDefinition = Shapes::StructureShape.new(name: 'ServerDefinition')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    ServiceNameList = Shapes::ListShape.new(name: 'ServiceNameList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionFilter = Shapes::StructureShape.new(name: 'SessionFilter')
    SessionFilterConfig = Shapes::StructureShape.new(name: 'SessionFilterConfig')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SessionLimits = Shapes::StructureShape.new(name: 'SessionLimits')
    SessionMetadataList = Shapes::ListShape.new(name: 'SessionMetadataList')
    SessionMetadataShape = Shapes::StructureShape.new(name: 'SessionMetadataShape')
    SessionStatus = Shapes::StringShape.new(name: 'SessionStatus')
    SessionSummary = Shapes::StructureShape.new(name: 'SessionSummary')
    SessionSummaryList = Shapes::ListShape.new(name: 'SessionSummaryList')
    SessionType = Shapes::StringShape.new(name: 'SessionType')
    SkillDefinition = Shapes::StructureShape.new(name: 'SkillDefinition')
    SkillMdDefinition = Shapes::StructureShape.new(name: 'SkillMdDefinition')
    Span = Shapes::DocumentShape.new(name: 'Span', document: true)
    SpanContext = Shapes::StructureShape.new(name: 'SpanContext')
    SpanId = Shapes::StringShape.new(name: 'SpanId')
    SpanIds = Shapes::ListShape.new(name: 'SpanIds')
    Spans = Shapes::ListShape.new(name: 'Spans')
    StartBatchEvaluationRequest = Shapes::StructureShape.new(name: 'StartBatchEvaluationRequest')
    StartBatchEvaluationRequestEvaluatorsList = Shapes::ListShape.new(name: 'StartBatchEvaluationRequestEvaluatorsList')
    StartBatchEvaluationRequestInsightsList = Shapes::ListShape.new(name: 'StartBatchEvaluationRequestInsightsList')
    StartBatchEvaluationResponse = Shapes::StructureShape.new(name: 'StartBatchEvaluationResponse')
    StartBrowserSessionRequest = Shapes::StructureShape.new(name: 'StartBrowserSessionRequest')
    StartBrowserSessionRequestTraceIdString = Shapes::StringShape.new(name: 'StartBrowserSessionRequestTraceIdString')
    StartBrowserSessionRequestTraceParentString = Shapes::StringShape.new(name: 'StartBrowserSessionRequestTraceParentString')
    StartBrowserSessionResponse = Shapes::StructureShape.new(name: 'StartBrowserSessionResponse')
    StartCodeInterpreterSessionRequest = Shapes::StructureShape.new(name: 'StartCodeInterpreterSessionRequest')
    StartCodeInterpreterSessionRequestTraceIdString = Shapes::StringShape.new(name: 'StartCodeInterpreterSessionRequestTraceIdString')
    StartCodeInterpreterSessionRequestTraceParentString = Shapes::StringShape.new(name: 'StartCodeInterpreterSessionRequestTraceParentString')
    StartCodeInterpreterSessionResponse = Shapes::StructureShape.new(name: 'StartCodeInterpreterSessionResponse')
    StartMemoryExtractionJobInput = Shapes::StructureShape.new(name: 'StartMemoryExtractionJobInput')
    StartMemoryExtractionJobOutput = Shapes::StructureShape.new(name: 'StartMemoryExtractionJobOutput')
    StartRecommendationRequest = Shapes::StructureShape.new(name: 'StartRecommendationRequest')
    StartRecommendationResponse = Shapes::StructureShape.new(name: 'StartRecommendationResponse')
    State = Shapes::StringShape.new(name: 'State')
    StopBatchEvaluationRequest = Shapes::StructureShape.new(name: 'StopBatchEvaluationRequest')
    StopBatchEvaluationResponse = Shapes::StructureShape.new(name: 'StopBatchEvaluationResponse')
    StopBrowserSessionRequest = Shapes::StructureShape.new(name: 'StopBrowserSessionRequest')
    StopBrowserSessionRequestTraceIdString = Shapes::StringShape.new(name: 'StopBrowserSessionRequestTraceIdString')
    StopBrowserSessionRequestTraceParentString = Shapes::StringShape.new(name: 'StopBrowserSessionRequestTraceParentString')
    StopBrowserSessionResponse = Shapes::StructureShape.new(name: 'StopBrowserSessionResponse')
    StopCodeInterpreterSessionRequest = Shapes::StructureShape.new(name: 'StopCodeInterpreterSessionRequest')
    StopCodeInterpreterSessionRequestTraceIdString = Shapes::StringShape.new(name: 'StopCodeInterpreterSessionRequestTraceIdString')
    StopCodeInterpreterSessionRequestTraceParentString = Shapes::StringShape.new(name: 'StopCodeInterpreterSessionRequestTraceParentString')
    StopCodeInterpreterSessionResponse = Shapes::StructureShape.new(name: 'StopCodeInterpreterSessionResponse')
    StopRuntimeSessionRequest = Shapes::StructureShape.new(name: 'StopRuntimeSessionRequest')
    StopRuntimeSessionResponse = Shapes::StructureShape.new(name: 'StopRuntimeSessionResponse')
    StreamUpdate = Shapes::UnionShape.new(name: 'StreamUpdate')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringListMemberValue = Shapes::StringShape.new(name: 'StringListMemberValue')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    StringType = Shapes::StringShape.new(name: 'StringType')
    StringValue = Shapes::StringShape.new(name: 'StringValue')
    StringValueList = Shapes::ListShape.new(name: 'StringValueList')
    StripePrivyAppIdType = Shapes::StringShape.new(name: 'StripePrivyAppIdType')
    StripePrivyAuthorizationSignatureType = Shapes::StringShape.new(name: 'StripePrivyAuthorizationSignatureType')
    StripePrivyBasicAuthTokenType = Shapes::StringShape.new(name: 'StripePrivyBasicAuthTokenType')
    StripePrivyRequestBodyType = Shapes::StringShape.new(name: 'StripePrivyRequestBodyType')
    StripePrivyRequestHostType = Shapes::StringShape.new(name: 'StripePrivyRequestHostType')
    StripePrivyRequestPathType = Shapes::StringShape.new(name: 'StripePrivyRequestPathType')
    StripePrivyTokenRequestInput = Shapes::StructureShape.new(name: 'StripePrivyTokenRequestInput')
    StripePrivyTokenResponseOutput = Shapes::StructureShape.new(name: 'StripePrivyTokenResponseOutput')
    SubscriptionRequiredException = Shapes::StructureShape.new(name: 'SubscriptionRequiredException')
    SubscriptionRequiredExceptionProductNameString = Shapes::StringShape.new(name: 'SubscriptionRequiredExceptionProductNameString')
    SubscriptionRequiredExceptionSubscriptionUrlString = Shapes::StringShape.new(name: 'SubscriptionRequiredExceptionSubscriptionUrlString')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    SystemPromptConfig = Shapes::UnionShape.new(name: 'SystemPromptConfig')
    SystemPromptConfigurationBundle = Shapes::StructureShape.new(name: 'SystemPromptConfigurationBundle')
    SystemPromptRecommendationConfig = Shapes::StructureShape.new(name: 'SystemPromptRecommendationConfig')
    SystemPromptRecommendationResult = Shapes::StructureShape.new(name: 'SystemPromptRecommendationResult')
    SystemPromptText = Shapes::StringShape.new(name: 'SystemPromptText')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TargetName = Shapes::StringShape.new(name: 'TargetName')
    TargetPathList = Shapes::ListShape.new(name: 'TargetPathList')
    TargetRef = Shapes::StructureShape.new(name: 'TargetRef')
    TaskStatus = Shapes::StringShape.new(name: 'TaskStatus')
    Temperature = Shapes::FloatShape.new(name: 'Temperature')
    ThrottledException = Shapes::StructureShape.new(name: 'ThrottledException')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TokenBalance = Shapes::StructureShape.new(name: 'TokenBalance')
    TokenUsage = Shapes::StructureShape.new(name: 'TokenUsage')
    ToolArguments = Shapes::StructureShape.new(name: 'ToolArguments')
    ToolDescriptionConfig = Shapes::UnionShape.new(name: 'ToolDescriptionConfig')
    ToolDescriptionConfigurationBundle = Shapes::StructureShape.new(name: 'ToolDescriptionConfigurationBundle')
    ToolDescriptionInput = Shapes::StructureShape.new(name: 'ToolDescriptionInput')
    ToolDescriptionList = Shapes::ListShape.new(name: 'ToolDescriptionList')
    ToolDescriptionOutput = Shapes::StructureShape.new(name: 'ToolDescriptionOutput')
    ToolDescriptionRecommendationConfig = Shapes::StructureShape.new(name: 'ToolDescriptionRecommendationConfig')
    ToolDescriptionRecommendationResult = Shapes::StructureShape.new(name: 'ToolDescriptionRecommendationResult')
    ToolDescriptionResultList = Shapes::ListShape.new(name: 'ToolDescriptionResultList')
    ToolDescriptionSource = Shapes::UnionShape.new(name: 'ToolDescriptionSource')
    ToolDescriptionText = Shapes::StringShape.new(name: 'ToolDescriptionText')
    ToolDescriptionTextInput = Shapes::StructureShape.new(name: 'ToolDescriptionTextInput')
    ToolName = Shapes::StringShape.new(name: 'ToolName')
    ToolResultStructuredContent = Shapes::StructureShape.new(name: 'ToolResultStructuredContent')
    ToolsDefinition = Shapes::StructureShape.new(name: 'ToolsDefinition')
    ToolsFileSystemConfiguration = Shapes::UnionShape.new(name: 'ToolsFileSystemConfiguration')
    ToolsFileSystemConfigurations = Shapes::ListShape.new(name: 'ToolsFileSystemConfigurations')
    TopK = Shapes::IntegerShape.new(name: 'TopK')
    TopP = Shapes::FloatShape.new(name: 'TopP')
    TraceId = Shapes::StringShape.new(name: 'TraceId')
    TraceIds = Shapes::ListShape.new(name: 'TraceIds')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    Unit = Shapes::StructureShape.new(name: 'Unit')
    UpdateABTestRequest = Shapes::StructureShape.new(name: 'UpdateABTestRequest')
    UpdateABTestResponse = Shapes::StructureShape.new(name: 'UpdateABTestResponse')
    UpdateBrowserStreamRequest = Shapes::StructureShape.new(name: 'UpdateBrowserStreamRequest')
    UpdateBrowserStreamResponse = Shapes::StructureShape.new(name: 'UpdateBrowserStreamResponse')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserIdType = Shapes::StringShape.new(name: 'UserIdType')
    UserIdentifier = Shapes::UnionShape.new(name: 'UserIdentifier')
    UserIntentAffectedSession = Shapes::StructureShape.new(name: 'UserIntentAffectedSession')
    UserIntentAffectedSessionList = Shapes::ListShape.new(name: 'UserIntentAffectedSessionList')
    UserIntentCluster = Shapes::StructureShape.new(name: 'UserIntentCluster')
    UserIntentClusterList = Shapes::ListShape.new(name: 'UserIntentClusterList')
    UserIntentClusteringResultContent = Shapes::StructureShape.new(name: 'UserIntentClusteringResultContent')
    UserIntentList = Shapes::ListShape.new(name: 'UserIntentList')
    UserTokenType = Shapes::StringShape.new(name: 'UserTokenType')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    Variant = Shapes::StructureShape.new(name: 'Variant')
    VariantConfiguration = Shapes::StructureShape.new(name: 'VariantConfiguration')
    VariantList = Shapes::ListShape.new(name: 'VariantList')
    VariantName = Shapes::StringShape.new(name: 'VariantName')
    VariantResult = Shapes::StructureShape.new(name: 'VariantResult')
    VariantResultList = Shapes::ListShape.new(name: 'VariantResultList')
    VariantWeightInteger = Shapes::IntegerShape.new(name: 'VariantWeightInteger')
    Version = Shapes::StringShape.new(name: 'Version')
    ViewPort = Shapes::StructureShape.new(name: 'ViewPort')
    ViewPortHeight = Shapes::IntegerShape.new(name: 'ViewPortHeight')
    ViewPortWidth = Shapes::IntegerShape.new(name: 'ViewPortWidth')
    WorkloadIdentityNameType = Shapes::StringShape.new(name: 'WorkloadIdentityNameType')
    WorkloadIdentityTokenType = Shapes::StringShape.new(name: 'WorkloadIdentityTokenType')
    WwwAuthenticateHeader = Shapes::StringShape.new(name: 'WwwAuthenticateHeader')
    WwwAuthenticateHeaderList = Shapes::ListShape.new(name: 'WwwAuthenticateHeaderList')

    A2aDescriptor.add_member(:agent_card, Shapes::ShapeRef.new(shape: AgentCardDefinition, required: true, location_name: "agentCard"))
    A2aDescriptor.struct_class = Types::A2aDescriptor

    ABTestEvaluationConfig.add_member(:online_evaluation_config_arn, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigArn, location_name: "onlineEvaluationConfigArn"))
    ABTestEvaluationConfig.add_member(:per_variant_online_evaluation_config, Shapes::ShapeRef.new(shape: PerVariantOnlineEvaluationConfigList, location_name: "perVariantOnlineEvaluationConfig"))
    ABTestEvaluationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ABTestEvaluationConfig.add_member_subclass(:online_evaluation_config_arn, Types::ABTestEvaluationConfig::OnlineEvaluationConfigArn)
    ABTestEvaluationConfig.add_member_subclass(:per_variant_online_evaluation_config, Types::ABTestEvaluationConfig::PerVariantOnlineEvaluationConfig)
    ABTestEvaluationConfig.add_member_subclass(:unknown, Types::ABTestEvaluationConfig::Unknown)
    ABTestEvaluationConfig.struct_class = Types::ABTestEvaluationConfig

    ABTestResults.add_member(:analysis_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "analysisTimestamp"))
    ABTestResults.add_member(:evaluator_metrics, Shapes::ShapeRef.new(shape: EvaluatorMetricList, required: true, location_name: "evaluatorMetrics"))
    ABTestResults.struct_class = Types::ABTestResults

    ABTestSummary.add_member(:ab_test_id, Shapes::ShapeRef.new(shape: ABTestId, required: true, location_name: "abTestId"))
    ABTestSummary.add_member(:ab_test_arn, Shapes::ShapeRef.new(shape: ABTestArn, required: true, location_name: "abTestArn"))
    ABTestSummary.add_member(:name, Shapes::ShapeRef.new(shape: ABTestName, required: true, location_name: "name"))
    ABTestSummary.add_member(:status, Shapes::ShapeRef.new(shape: ABTestStatus, required: true, location_name: "status"))
    ABTestSummary.add_member(:execution_status, Shapes::ShapeRef.new(shape: ABTestExecutionStatus, required: true, location_name: "executionStatus"))
    ABTestSummary.add_member(:description, Shapes::ShapeRef.new(shape: ABTestDescription, location_name: "description"))
    ABTestSummary.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, location_name: "gatewayArn"))
    ABTestSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ABTestSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    ABTestSummary.struct_class = Types::ABTestSummary

    ABTestSummaryList.member = Shapes::ShapeRef.new(shape: ABTestSummary)

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActorSummary.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    ActorSummary.struct_class = Types::ActorSummary

    ActorSummaryList.member = Shapes::ShapeRef.new(shape: ActorSummary)

    AffectedSession.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sessionId"))
    AffectedSession.add_member(:explanation, Shapes::ShapeRef.new(shape: String, required: true, location_name: "explanation"))
    AffectedSession.add_member(:fix_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fixType"))
    AffectedSession.add_member(:recommendation, Shapes::ShapeRef.new(shape: String, required: true, location_name: "recommendation"))
    AffectedSession.add_member(:failure_spans, Shapes::ShapeRef.new(shape: FailureSpanDetailList, required: true, location_name: "failureSpans"))
    AffectedSession.struct_class = Types::AffectedSession

    AffectedSessionList.member = Shapes::ShapeRef.new(shape: AffectedSession)

    AgentCardDefinition.add_member(:schema_version, Shapes::ShapeRef.new(shape: SchemaVersion, location_name: "schemaVersion"))
    AgentCardDefinition.add_member(:inline_content, Shapes::ShapeRef.new(shape: InlineContent, location_name: "inlineContent"))
    AgentCardDefinition.struct_class = Types::AgentCardDefinition

    AgentSkillsDescriptor.add_member(:skill_md, Shapes::ShapeRef.new(shape: SkillMdDefinition, required: true, location_name: "skillMd"))
    AgentSkillsDescriptor.add_member(:skill_definition, Shapes::ShapeRef.new(shape: SkillDefinition, location_name: "skillDefinition"))
    AgentSkillsDescriptor.struct_class = Types::AgentSkillsDescriptor

    AgentTracesConfig.add_member(:session_spans, Shapes::ShapeRef.new(shape: Spans, location_name: "sessionSpans"))
    AgentTracesConfig.add_member(:cloudwatch_logs, Shapes::ShapeRef.new(shape: CloudWatchLogsTraceConfig, location_name: "cloudwatchLogs"))
    AgentTracesConfig.add_member(:batch_evaluation, Shapes::ShapeRef.new(shape: BatchEvaluationTraceConfig, location_name: "batchEvaluation"))
    AgentTracesConfig.add_member(:online_evaluation, Shapes::ShapeRef.new(shape: OnlineEvaluationTraceConfig, location_name: "onlineEvaluation"))
    AgentTracesConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AgentTracesConfig.add_member_subclass(:session_spans, Types::AgentTracesConfig::SessionSpans)
    AgentTracesConfig.add_member_subclass(:cloudwatch_logs, Types::AgentTracesConfig::CloudwatchLogs)
    AgentTracesConfig.add_member_subclass(:batch_evaluation, Types::AgentTracesConfig::BatchEvaluation)
    AgentTracesConfig.add_member_subclass(:online_evaluation, Types::AgentTracesConfig::OnlineEvaluation)
    AgentTracesConfig.add_member_subclass(:unknown, Types::AgentTracesConfig::Unknown)
    AgentTracesConfig.struct_class = Types::AgentTracesConfig

    Amount.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    Amount.add_member(:currency, Shapes::ShapeRef.new(shape: Currency, required: true, location_name: "currency"))
    Amount.struct_class = Types::Amount

    AudiencesListType.member = Shapes::ShapeRef.new(shape: AudienceType)

    AutomationStream.add_member(:stream_endpoint, Shapes::ShapeRef.new(shape: BrowserStreamEndpoint, required: true, location_name: "streamEndpoint"))
    AutomationStream.add_member(:stream_status, Shapes::ShapeRef.new(shape: AutomationStreamStatus, required: true, location_name: "streamStatus"))
    AutomationStream.struct_class = Types::AutomationStream

    AutomationStreamUpdate.add_member(:stream_status, Shapes::ShapeRef.new(shape: AutomationStreamStatus, location_name: "streamStatus"))
    AutomationStreamUpdate.struct_class = Types::AutomationStreamUpdate

    AvailableLimits.add_member(:available_spend_amount, Shapes::ShapeRef.new(shape: Amount, location_name: "availableSpendAmount"))
    AvailableLimits.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "updatedAt"))
    AvailableLimits.struct_class = Types::AvailableLimits

    BasicAuth.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "secretArn"))
    BasicAuth.struct_class = Types::BasicAuth

    BatchCreateMemoryRecordsInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    BatchCreateMemoryRecordsInput.add_member(:records, Shapes::ShapeRef.new(shape: MemoryRecordsCreateInputList, required: true, location_name: "records"))
    BatchCreateMemoryRecordsInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    BatchCreateMemoryRecordsInput.struct_class = Types::BatchCreateMemoryRecordsInput

    BatchCreateMemoryRecordsOutput.add_member(:successful_records, Shapes::ShapeRef.new(shape: MemoryRecordsOutputList, required: true, location_name: "successfulRecords"))
    BatchCreateMemoryRecordsOutput.add_member(:failed_records, Shapes::ShapeRef.new(shape: MemoryRecordsOutputList, required: true, location_name: "failedRecords"))
    BatchCreateMemoryRecordsOutput.struct_class = Types::BatchCreateMemoryRecordsOutput

    BatchDeleteMemoryRecordsInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    BatchDeleteMemoryRecordsInput.add_member(:records, Shapes::ShapeRef.new(shape: MemoryRecordsDeleteInputList, required: true, location_name: "records"))
    BatchDeleteMemoryRecordsInput.struct_class = Types::BatchDeleteMemoryRecordsInput

    BatchDeleteMemoryRecordsOutput.add_member(:successful_records, Shapes::ShapeRef.new(shape: MemoryRecordsOutputList, required: true, location_name: "successfulRecords"))
    BatchDeleteMemoryRecordsOutput.add_member(:failed_records, Shapes::ShapeRef.new(shape: MemoryRecordsOutputList, required: true, location_name: "failedRecords"))
    BatchDeleteMemoryRecordsOutput.struct_class = Types::BatchDeleteMemoryRecordsOutput

    BatchEvaluationSummary.add_member(:batch_evaluation_id, Shapes::ShapeRef.new(shape: BatchEvaluationId, required: true, location_name: "batchEvaluationId"))
    BatchEvaluationSummary.add_member(:batch_evaluation_arn, Shapes::ShapeRef.new(shape: BatchEvaluationArn, required: true, location_name: "batchEvaluationArn"))
    BatchEvaluationSummary.add_member(:batch_evaluation_name, Shapes::ShapeRef.new(shape: BatchEvaluationName, required: true, location_name: "batchEvaluationName"))
    BatchEvaluationSummary.add_member(:status, Shapes::ShapeRef.new(shape: BatchEvaluationStatus, required: true, location_name: "status"))
    BatchEvaluationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    BatchEvaluationSummary.add_member(:description, Shapes::ShapeRef.new(shape: BatchEvaluationDescription, location_name: "description"))
    BatchEvaluationSummary.add_member(:evaluators, Shapes::ShapeRef.new(shape: EvaluatorList, location_name: "evaluators"))
    BatchEvaluationSummary.add_member(:insights, Shapes::ShapeRef.new(shape: InsightList, location_name: "insights"))
    BatchEvaluationSummary.add_member(:evaluation_results, Shapes::ShapeRef.new(shape: EvaluationJobResults, location_name: "evaluationResults"))
    BatchEvaluationSummary.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetailsList, location_name: "errorDetails"))
    BatchEvaluationSummary.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    BatchEvaluationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    BatchEvaluationSummary.struct_class = Types::BatchEvaluationSummary

    BatchEvaluationSummaryList.member = Shapes::ShapeRef.new(shape: BatchEvaluationSummary)

    BatchEvaluationTraceConfig.add_member(:batch_evaluation_arn, Shapes::ShapeRef.new(shape: BatchEvaluationArn, required: true, location_name: "batchEvaluationArn"))
    BatchEvaluationTraceConfig.struct_class = Types::BatchEvaluationTraceConfig

    BatchUpdateMemoryRecordsInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    BatchUpdateMemoryRecordsInput.add_member(:records, Shapes::ShapeRef.new(shape: MemoryRecordsUpdateInputList, required: true, location_name: "records"))
    BatchUpdateMemoryRecordsInput.struct_class = Types::BatchUpdateMemoryRecordsInput

    BatchUpdateMemoryRecordsOutput.add_member(:successful_records, Shapes::ShapeRef.new(shape: MemoryRecordsOutputList, required: true, location_name: "successfulRecords"))
    BatchUpdateMemoryRecordsOutput.add_member(:failed_records, Shapes::ShapeRef.new(shape: MemoryRecordsOutputList, required: true, location_name: "failedRecords"))
    BatchUpdateMemoryRecordsOutput.struct_class = Types::BatchUpdateMemoryRecordsOutput

    Branch.add_member(:root_event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "rootEventId"))
    Branch.add_member(:name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "name"))
    Branch.struct_class = Types::Branch

    BranchFilter.add_member(:name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "name"))
    BranchFilter.add_member(:include_parent_branches, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeParentBranches"))
    BranchFilter.struct_class = Types::BranchFilter

    BrowserAction.add_member(:mouse_click, Shapes::ShapeRef.new(shape: MouseClickArguments, location_name: "mouseClick"))
    BrowserAction.add_member(:mouse_move, Shapes::ShapeRef.new(shape: MouseMoveArguments, location_name: "mouseMove"))
    BrowserAction.add_member(:mouse_drag, Shapes::ShapeRef.new(shape: MouseDragArguments, location_name: "mouseDrag"))
    BrowserAction.add_member(:mouse_scroll, Shapes::ShapeRef.new(shape: MouseScrollArguments, location_name: "mouseScroll"))
    BrowserAction.add_member(:key_type, Shapes::ShapeRef.new(shape: KeyTypeArguments, location_name: "keyType"))
    BrowserAction.add_member(:key_press, Shapes::ShapeRef.new(shape: KeyPressArguments, location_name: "keyPress"))
    BrowserAction.add_member(:key_shortcut, Shapes::ShapeRef.new(shape: KeyShortcutArguments, location_name: "keyShortcut"))
    BrowserAction.add_member(:screenshot, Shapes::ShapeRef.new(shape: ScreenshotArguments, location_name: "screenshot"))
    BrowserAction.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    BrowserAction.add_member_subclass(:mouse_click, Types::BrowserAction::MouseClick)
    BrowserAction.add_member_subclass(:mouse_move, Types::BrowserAction::MouseMove)
    BrowserAction.add_member_subclass(:mouse_drag, Types::BrowserAction::MouseDrag)
    BrowserAction.add_member_subclass(:mouse_scroll, Types::BrowserAction::MouseScroll)
    BrowserAction.add_member_subclass(:key_type, Types::BrowserAction::KeyType)
    BrowserAction.add_member_subclass(:key_press, Types::BrowserAction::KeyPress)
    BrowserAction.add_member_subclass(:key_shortcut, Types::BrowserAction::KeyShortcut)
    BrowserAction.add_member_subclass(:screenshot, Types::BrowserAction::Screenshot)
    BrowserAction.add_member_subclass(:unknown, Types::BrowserAction::Unknown)
    BrowserAction.struct_class = Types::BrowserAction

    BrowserActionResult.add_member(:mouse_click, Shapes::ShapeRef.new(shape: MouseClickResult, location_name: "mouseClick"))
    BrowserActionResult.add_member(:mouse_move, Shapes::ShapeRef.new(shape: MouseMoveResult, location_name: "mouseMove"))
    BrowserActionResult.add_member(:mouse_drag, Shapes::ShapeRef.new(shape: MouseDragResult, location_name: "mouseDrag"))
    BrowserActionResult.add_member(:mouse_scroll, Shapes::ShapeRef.new(shape: MouseScrollResult, location_name: "mouseScroll"))
    BrowserActionResult.add_member(:key_type, Shapes::ShapeRef.new(shape: KeyTypeResult, location_name: "keyType"))
    BrowserActionResult.add_member(:key_press, Shapes::ShapeRef.new(shape: KeyPressResult, location_name: "keyPress"))
    BrowserActionResult.add_member(:key_shortcut, Shapes::ShapeRef.new(shape: KeyShortcutResult, location_name: "keyShortcut"))
    BrowserActionResult.add_member(:screenshot, Shapes::ShapeRef.new(shape: ScreenshotResult, location_name: "screenshot"))
    BrowserActionResult.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    BrowserActionResult.add_member_subclass(:mouse_click, Types::BrowserActionResult::MouseClick)
    BrowserActionResult.add_member_subclass(:mouse_move, Types::BrowserActionResult::MouseMove)
    BrowserActionResult.add_member_subclass(:mouse_drag, Types::BrowserActionResult::MouseDrag)
    BrowserActionResult.add_member_subclass(:mouse_scroll, Types::BrowserActionResult::MouseScroll)
    BrowserActionResult.add_member_subclass(:key_type, Types::BrowserActionResult::KeyType)
    BrowserActionResult.add_member_subclass(:key_press, Types::BrowserActionResult::KeyPress)
    BrowserActionResult.add_member_subclass(:key_shortcut, Types::BrowserActionResult::KeyShortcut)
    BrowserActionResult.add_member_subclass(:screenshot, Types::BrowserActionResult::Screenshot)
    BrowserActionResult.add_member_subclass(:unknown, Types::BrowserActionResult::Unknown)
    BrowserActionResult.struct_class = Types::BrowserActionResult

    BrowserEnterprisePolicies.member = Shapes::ShapeRef.new(shape: BrowserEnterprisePolicy)

    BrowserEnterprisePolicy.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, required: true, location_name: "location"))
    BrowserEnterprisePolicy.add_member(:type, Shapes::ShapeRef.new(shape: BrowserEnterprisePolicyType, location_name: "type"))
    BrowserEnterprisePolicy.struct_class = Types::BrowserEnterprisePolicy

    BrowserExtension.add_member(:location, Shapes::ShapeRef.new(shape: ResourceLocation, required: true, location_name: "location"))
    BrowserExtension.struct_class = Types::BrowserExtension

    BrowserExtensions.member = Shapes::ShapeRef.new(shape: BrowserExtension)

    BrowserProfileConfiguration.add_member(:profile_identifier, Shapes::ShapeRef.new(shape: BrowserProfileId, required: true, location_name: "profileIdentifier"))
    BrowserProfileConfiguration.struct_class = Types::BrowserProfileConfiguration

    BrowserSessionStream.add_member(:automation_stream, Shapes::ShapeRef.new(shape: AutomationStream, required: true, location_name: "automationStream"))
    BrowserSessionStream.add_member(:live_view_stream, Shapes::ShapeRef.new(shape: LiveViewStream, location_name: "liveViewStream"))
    BrowserSessionStream.struct_class = Types::BrowserSessionStream

    BrowserSessionSummaries.member = Shapes::ShapeRef.new(shape: BrowserSessionSummary)

    BrowserSessionSummary.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "browserIdentifier"))
    BrowserSessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location_name: "sessionId"))
    BrowserSessionSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    BrowserSessionSummary.add_member(:status, Shapes::ShapeRef.new(shape: BrowserSessionStatus, required: true, location_name: "status"))
    BrowserSessionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    BrowserSessionSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastUpdatedAt"))
    BrowserSessionSummary.struct_class = Types::BrowserSessionSummary

    Certificate.add_member(:location, Shapes::ShapeRef.new(shape: CertificateLocation, required: true, location_name: "location"))
    Certificate.struct_class = Types::Certificate

    CertificateLocation.add_member(:secrets_manager, Shapes::ShapeRef.new(shape: SecretsManagerLocation, location_name: "secretsManager"))
    CertificateLocation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CertificateLocation.add_member_subclass(:secrets_manager, Types::CertificateLocation::SecretsManager)
    CertificateLocation.add_member_subclass(:unknown, Types::CertificateLocation::Unknown)
    CertificateLocation.struct_class = Types::CertificateLocation

    Certificates.member = Shapes::ShapeRef.new(shape: Certificate)

    CloudWatchFilterConfig.add_member(:session_ids, Shapes::ShapeRef.new(shape: CloudWatchFilterConfigSessionIdsList, location_name: "sessionIds"))
    CloudWatchFilterConfig.add_member(:time_range, Shapes::ShapeRef.new(shape: SessionFilterConfig, location_name: "timeRange"))
    CloudWatchFilterConfig.struct_class = Types::CloudWatchFilterConfig

    CloudWatchFilterConfigSessionIdsList.member = Shapes::ShapeRef.new(shape: String)

    CloudWatchLogsFilter.add_member(:key, Shapes::ShapeRef.new(shape: CloudWatchLogsFilterKeyString, required: true, location_name: "key"))
    CloudWatchLogsFilter.add_member(:operator, Shapes::ShapeRef.new(shape: CloudWatchLogsFilterOperator, required: true, location_name: "operator"))
    CloudWatchLogsFilter.add_member(:value, Shapes::ShapeRef.new(shape: FilterValue, required: true, location_name: "value"))
    CloudWatchLogsFilter.struct_class = Types::CloudWatchLogsFilter

    CloudWatchLogsFilterList.member = Shapes::ShapeRef.new(shape: CloudWatchLogsFilter)

    CloudWatchLogsRule.add_member(:filters, Shapes::ShapeRef.new(shape: CloudWatchLogsFilterList, location_name: "filters"))
    CloudWatchLogsRule.struct_class = Types::CloudWatchLogsRule

    CloudWatchLogsSource.add_member(:service_names, Shapes::ShapeRef.new(shape: CloudWatchLogsSourceServiceNamesList, required: true, location_name: "serviceNames"))
    CloudWatchLogsSource.add_member(:log_group_names, Shapes::ShapeRef.new(shape: CloudWatchLogsSourceLogGroupNamesList, location_name: "logGroupNames"))
    CloudWatchLogsSource.add_member(:log_group_name_prefixes, Shapes::ShapeRef.new(shape: CloudWatchLogsSourceLogGroupNamePrefixesList, location_name: "logGroupNamePrefixes"))
    CloudWatchLogsSource.add_member(:filter_config, Shapes::ShapeRef.new(shape: CloudWatchFilterConfig, location_name: "filterConfig"))
    CloudWatchLogsSource.struct_class = Types::CloudWatchLogsSource

    CloudWatchLogsSourceLogGroupNamePrefixesList.member = Shapes::ShapeRef.new(shape: LogGroupNamePrefix)

    CloudWatchLogsSourceLogGroupNamesList.member = Shapes::ShapeRef.new(shape: LogGroupName)

    CloudWatchLogsSourceServiceNamesList.member = Shapes::ShapeRef.new(shape: String)

    CloudWatchLogsTraceConfig.add_member(:log_group_arns, Shapes::ShapeRef.new(shape: CloudWatchLogsTraceConfigLogGroupArnsList, required: true, location_name: "logGroupArns"))
    CloudWatchLogsTraceConfig.add_member(:service_names, Shapes::ShapeRef.new(shape: ServiceNameList, required: true, location_name: "serviceNames"))
    CloudWatchLogsTraceConfig.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "startTime"))
    CloudWatchLogsTraceConfig.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "endTime"))
    CloudWatchLogsTraceConfig.add_member(:rule, Shapes::ShapeRef.new(shape: CloudWatchLogsRule, location_name: "rule"))
    CloudWatchLogsTraceConfig.struct_class = Types::CloudWatchLogsTraceConfig

    CloudWatchLogsTraceConfigLogGroupArnsList.member = Shapes::ShapeRef.new(shape: String)

    CloudWatchOutputConfig.add_member(:log_group_name, Shapes::ShapeRef.new(shape: OptionalLogGroupName, location_name: "logGroupName"))
    CloudWatchOutputConfig.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "logStreamName"))
    CloudWatchOutputConfig.add_member(:metrics_namespace, Shapes::ShapeRef.new(shape: MetricsNamespace, location_name: "metricsNamespace"))
    CloudWatchOutputConfig.add_member(:result_destination, Shapes::ShapeRef.new(shape: ResultDestination, location_name: "resultDestination"))
    CloudWatchOutputConfig.struct_class = Types::CloudWatchOutputConfig

    CodeInterpreterResult.add_member(:content, Shapes::ShapeRef.new(shape: ContentBlockList, required: true, location_name: "content"))
    CodeInterpreterResult.add_member(:structured_content, Shapes::ShapeRef.new(shape: ToolResultStructuredContent, location_name: "structuredContent"))
    CodeInterpreterResult.add_member(:is_error, Shapes::ShapeRef.new(shape: Boolean, location_name: "isError"))
    CodeInterpreterResult.struct_class = Types::CodeInterpreterResult

    CodeInterpreterSessionSummaries.member = Shapes::ShapeRef.new(shape: CodeInterpreterSessionSummary)

    CodeInterpreterSessionSummary.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeInterpreterIdentifier"))
    CodeInterpreterSessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, required: true, location_name: "sessionId"))
    CodeInterpreterSessionSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    CodeInterpreterSessionSummary.add_member(:status, Shapes::ShapeRef.new(shape: CodeInterpreterSessionStatus, required: true, location_name: "status"))
    CodeInterpreterSessionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    CodeInterpreterSessionSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastUpdatedAt"))
    CodeInterpreterSessionSummary.struct_class = Types::CodeInterpreterSessionSummary

    CodeInterpreterStreamOutput.add_member(:result, Shapes::ShapeRef.new(shape: CodeInterpreterResult, event: true, location_name: "result"))
    CodeInterpreterStreamOutput.add_member(:access_denied_exception, Shapes::ShapeRef.new(shape: AccessDeniedException, location_name: "accessDeniedException"))
    CodeInterpreterStreamOutput.add_member(:conflict_exception, Shapes::ShapeRef.new(shape: ConflictException, location_name: "conflictException"))
    CodeInterpreterStreamOutput.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    CodeInterpreterStreamOutput.add_member(:resource_not_found_exception, Shapes::ShapeRef.new(shape: ResourceNotFoundException, location_name: "resourceNotFoundException"))
    CodeInterpreterStreamOutput.add_member(:service_quota_exceeded_exception, Shapes::ShapeRef.new(shape: ServiceQuotaExceededException, location_name: "serviceQuotaExceededException"))
    CodeInterpreterStreamOutput.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    CodeInterpreterStreamOutput.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    CodeInterpreterStreamOutput.struct_class = Types::CodeInterpreterStreamOutput

    CoinbaseCdpTokenRequestInput.add_member(:request_method, Shapes::ShapeRef.new(shape: PaymentHttpMethodType, required: true, location_name: "requestMethod"))
    CoinbaseCdpTokenRequestInput.add_member(:request_host, Shapes::ShapeRef.new(shape: PaymentRequestHostType, location_name: "requestHost"))
    CoinbaseCdpTokenRequestInput.add_member(:request_path, Shapes::ShapeRef.new(shape: PaymentRequestPathType, required: true, location_name: "requestPath"))
    CoinbaseCdpTokenRequestInput.add_member(:include_wallet_auth_token, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeWalletAuthToken"))
    CoinbaseCdpTokenRequestInput.add_member(:request_body, Shapes::ShapeRef.new(shape: CoinbaseCdpPaymentRequestBodyType, location_name: "requestBody"))
    CoinbaseCdpTokenRequestInput.struct_class = Types::CoinbaseCdpTokenRequestInput

    CoinbaseCdpTokenResponseOutput.add_member(:bearer_token, Shapes::ShapeRef.new(shape: CoinbaseCdpPaymentJwtTokenType, required: true, location_name: "bearerToken"))
    CoinbaseCdpTokenResponseOutput.add_member(:wallet_auth_token, Shapes::ShapeRef.new(shape: CoinbaseCdpPaymentJwtTokenType, location_name: "walletAuthToken"))
    CoinbaseCdpTokenResponseOutput.struct_class = Types::CoinbaseCdpTokenResponseOutput

    CompleteResourceTokenAuthRequest.add_member(:user_identifier, Shapes::ShapeRef.new(shape: UserIdentifier, required: true, location_name: "userIdentifier"))
    CompleteResourceTokenAuthRequest.add_member(:session_uri, Shapes::ShapeRef.new(shape: RequestUri, required: true, location_name: "sessionUri"))
    CompleteResourceTokenAuthRequest.struct_class = Types::CompleteResourceTokenAuthRequest

    CompleteResourceTokenAuthResponse.struct_class = Types::CompleteResourceTokenAuthResponse

    ConfidenceInterval.add_member(:lower, Shapes::ShapeRef.new(shape: Double, location_name: "lower"))
    ConfidenceInterval.add_member(:upper, Shapes::ShapeRef.new(shape: Double, location_name: "upper"))
    ConfidenceInterval.struct_class = Types::ConfidenceInterval

    ConfigurationBundleRef.add_member(:bundle_arn, Shapes::ShapeRef.new(shape: ConfigurationBundleArn, required: true, location_name: "bundleArn"))
    ConfigurationBundleRef.add_member(:bundle_version, Shapes::ShapeRef.new(shape: ConfigurationBundleVersion, required: true, location_name: "bundleVersion"))
    ConfigurationBundleRef.struct_class = Types::ConfigurationBundleRef

    ConfigurationBundleToolEntry.add_member(:tool_name, Shapes::ShapeRef.new(shape: RecommendationToolName, required: true, location_name: "toolName"))
    ConfigurationBundleToolEntry.add_member(:tool_description_json_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "toolDescriptionJsonPath"))
    ConfigurationBundleToolEntry.struct_class = Types::ConfigurationBundleToolEntry

    ConfigurationBundleToolEntryList.member = Shapes::ShapeRef.new(shape: ConfigurationBundleToolEntry)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    Content.add_member(:text, Shapes::ShapeRef.new(shape: ContentTextString, location_name: "text"))
    Content.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Content.add_member_subclass(:text, Types::Content::Text)
    Content.add_member_subclass(:unknown, Types::Content::Unknown)
    Content.struct_class = Types::Content

    ContentBlock.add_member(:type, Shapes::ShapeRef.new(shape: ContentBlockType, required: true, location_name: "type"))
    ContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    ContentBlock.add_member(:data, Shapes::ShapeRef.new(shape: Blob, location_name: "data"))
    ContentBlock.add_member(:mime_type, Shapes::ShapeRef.new(shape: String, location_name: "mimeType"))
    ContentBlock.add_member(:uri, Shapes::ShapeRef.new(shape: String, location_name: "uri"))
    ContentBlock.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ContentBlock.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    ContentBlock.add_member(:size, Shapes::ShapeRef.new(shape: Long, location_name: "size"))
    ContentBlock.add_member(:resource, Shapes::ShapeRef.new(shape: ResourceContent, location_name: "resource"))
    ContentBlock.struct_class = Types::ContentBlock

    ContentBlockList.member = Shapes::ShapeRef.new(shape: ContentBlock)

    ContentDeltaEvent.add_member(:stdout, Shapes::ShapeRef.new(shape: String, location_name: "stdout"))
    ContentDeltaEvent.add_member(:stderr, Shapes::ShapeRef.new(shape: String, location_name: "stderr"))
    ContentDeltaEvent.struct_class = Types::ContentDeltaEvent

    ContentSource.add_member(:inline, Shapes::ShapeRef.new(shape: InlineMemoryContent, location_name: "inline"))
    ContentSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ContentSource.add_member_subclass(:inline, Types::ContentSource::Inline)
    ContentSource.add_member_subclass(:unknown, Types::ContentSource::Unknown)
    ContentSource.struct_class = Types::ContentSource

    ContentStartEvent.struct_class = Types::ContentStartEvent

    ContentStopEvent.add_member(:exit_code, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "exitCode"))
    ContentStopEvent.add_member(:status, Shapes::ShapeRef.new(shape: CommandExecutionStatus, required: true, location_name: "status"))
    ContentStopEvent.struct_class = Types::ContentStopEvent

    Context.add_member(:span_context, Shapes::ShapeRef.new(shape: SpanContext, location_name: "spanContext"))
    Context.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Context.add_member_subclass(:span_context, Types::Context::SpanContext)
    Context.add_member_subclass(:unknown, Types::Context::Unknown)
    Context.struct_class = Types::Context

    ControlStats.add_member(:variant_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "variantName"))
    ControlStats.add_member(:sample_size, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "sampleSize"))
    ControlStats.add_member(:mean, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "mean"))
    ControlStats.struct_class = Types::ControlStats

    Conversational.add_member(:content, Shapes::ShapeRef.new(shape: Content, required: true, location_name: "content"))
    Conversational.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "role"))
    Conversational.struct_class = Types::Conversational

    CreateABTestRequest.add_member(:name, Shapes::ShapeRef.new(shape: ABTestName, required: true, location_name: "name"))
    CreateABTestRequest.add_member(:description, Shapes::ShapeRef.new(shape: ABTestDescription, location_name: "description"))
    CreateABTestRequest.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    CreateABTestRequest.add_member(:variants, Shapes::ShapeRef.new(shape: VariantList, required: true, location_name: "variants"))
    CreateABTestRequest.add_member(:gateway_filter, Shapes::ShapeRef.new(shape: GatewayFilter, location_name: "gatewayFilter"))
    CreateABTestRequest.add_member(:evaluation_config, Shapes::ShapeRef.new(shape: ABTestEvaluationConfig, required: true, location_name: "evaluationConfig"))
    CreateABTestRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CreateABTestRequest.add_member(:enable_on_create, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableOnCreate"))
    CreateABTestRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateABTestRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateABTestRequest.struct_class = Types::CreateABTestRequest

    CreateABTestResponse.add_member(:ab_test_id, Shapes::ShapeRef.new(shape: ABTestId, required: true, location_name: "abTestId"))
    CreateABTestResponse.add_member(:ab_test_arn, Shapes::ShapeRef.new(shape: ABTestArn, required: true, location_name: "abTestArn"))
    CreateABTestResponse.add_member(:name, Shapes::ShapeRef.new(shape: ABTestName, location_name: "name"))
    CreateABTestResponse.add_member(:status, Shapes::ShapeRef.new(shape: ABTestStatus, required: true, location_name: "status"))
    CreateABTestResponse.add_member(:execution_status, Shapes::ShapeRef.new(shape: ABTestExecutionStatus, required: true, location_name: "executionStatus"))
    CreateABTestResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateABTestResponse.struct_class = Types::CreateABTestResponse

    CreateEventInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    CreateEventInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    CreateEventInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    CreateEventInput.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "eventTimestamp"))
    CreateEventInput.add_member(:payload, Shapes::ShapeRef.new(shape: PayloadTypeList, required: true, location_name: "payload"))
    CreateEventInput.add_member(:branch, Shapes::ShapeRef.new(shape: Branch, location_name: "branch"))
    CreateEventInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateEventInput.add_member(:metadata, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "metadata"))
    CreateEventInput.add_member(:extraction_mode, Shapes::ShapeRef.new(shape: ExtractionMode, location_name: "extractionMode"))
    CreateEventInput.add_member(:extraction_config, Shapes::ShapeRef.new(shape: ExtractionConfig, location_name: "extractionConfig"))
    CreateEventInput.struct_class = Types::CreateEventInput

    CreateEventOutput.add_member(:event, Shapes::ShapeRef.new(shape: Event, required: true, location_name: "event"))
    CreateEventOutput.struct_class = Types::CreateEventOutput

    CreatePaymentInstrumentRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-User-Id"))
    CreatePaymentInstrumentRequest.add_member(:agent_name, Shapes::ShapeRef.new(shape: PaymentAgentName, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"))
    CreatePaymentInstrumentRequest.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    CreatePaymentInstrumentRequest.add_member(:payment_connector_id, Shapes::ShapeRef.new(shape: PaymentConnectorId, required: true, location_name: "paymentConnectorId"))
    CreatePaymentInstrumentRequest.add_member(:payment_instrument_type, Shapes::ShapeRef.new(shape: PaymentInstrumentType, required: true, location_name: "paymentInstrumentType"))
    CreatePaymentInstrumentRequest.add_member(:payment_instrument_details, Shapes::ShapeRef.new(shape: PaymentInstrumentDetails, required: true, location_name: "paymentInstrumentDetails"))
    CreatePaymentInstrumentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePaymentInstrumentRequest.struct_class = Types::CreatePaymentInstrumentRequest

    CreatePaymentInstrumentResponse.add_member(:payment_instrument, Shapes::ShapeRef.new(shape: PaymentInstrument, required: true, location_name: "paymentInstrument"))
    CreatePaymentInstrumentResponse.struct_class = Types::CreatePaymentInstrumentResponse

    CreatePaymentSessionRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-User-Id"))
    CreatePaymentSessionRequest.add_member(:agent_name, Shapes::ShapeRef.new(shape: PaymentAgentName, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"))
    CreatePaymentSessionRequest.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    CreatePaymentSessionRequest.add_member(:limits, Shapes::ShapeRef.new(shape: SessionLimits, location_name: "limits"))
    CreatePaymentSessionRequest.add_member(:expiry_time_in_minutes, Shapes::ShapeRef.new(shape: CreatePaymentSessionRequestExpiryTimeInMinutesInteger, required: true, location_name: "expiryTimeInMinutes"))
    CreatePaymentSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePaymentSessionRequest.struct_class = Types::CreatePaymentSessionRequest

    CreatePaymentSessionResponse.add_member(:payment_session, Shapes::ShapeRef.new(shape: PaymentSession, required: true, location_name: "paymentSession"))
    CreatePaymentSessionResponse.struct_class = Types::CreatePaymentSessionResponse

    CryptoX402PaymentInput.add_member(:version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "version"))
    CryptoX402PaymentInput.add_member(:payload, Shapes::ShapeRef.new(shape: PaymentDocument, required: true, location_name: "payload"))
    CryptoX402PaymentInput.add_member(:permit2_allowance_limit, Shapes::ShapeRef.new(shape: Permit2AllowanceLimit, location_name: "permit2AllowanceLimit"))
    CryptoX402PaymentInput.struct_class = Types::CryptoX402PaymentInput

    CryptoX402PaymentOutput.add_member(:version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "version"))
    CryptoX402PaymentOutput.add_member(:payload, Shapes::ShapeRef.new(shape: PaymentDocument, required: true, location_name: "payload"))
    CryptoX402PaymentOutput.struct_class = Types::CryptoX402PaymentOutput

    CustomDescriptor.add_member(:inline_content, Shapes::ShapeRef.new(shape: InlineContent, location_name: "inlineContent"))
    CustomDescriptor.struct_class = Types::CustomDescriptor

    CustomRequestParametersType.key = Shapes::ShapeRef.new(shape: CustomRequestKeyType)
    CustomRequestParametersType.value = Shapes::ShapeRef.new(shape: CustomRequestValueType)

    DataSourceConfig.add_member(:cloud_watch_logs, Shapes::ShapeRef.new(shape: CloudWatchLogsSource, location_name: "cloudWatchLogs"))
    DataSourceConfig.add_member(:online_evaluation_config_source, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigSource, location_name: "onlineEvaluationConfigSource"))
    DataSourceConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DataSourceConfig.add_member_subclass(:cloud_watch_logs, Types::DataSourceConfig::CloudWatchLogs)
    DataSourceConfig.add_member_subclass(:online_evaluation_config_source, Types::DataSourceConfig::OnlineEvaluationConfigSource)
    DataSourceConfig.add_member_subclass(:unknown, Types::DataSourceConfig::Unknown)
    DataSourceConfig.struct_class = Types::DataSourceConfig

    DeleteABTestRequest.add_member(:ab_test_id, Shapes::ShapeRef.new(shape: ABTestId, required: true, location: "uri", location_name: "abTestId"))
    DeleteABTestRequest.struct_class = Types::DeleteABTestRequest

    DeleteABTestResponse.add_member(:ab_test_id, Shapes::ShapeRef.new(shape: ABTestId, required: true, location_name: "abTestId"))
    DeleteABTestResponse.add_member(:ab_test_arn, Shapes::ShapeRef.new(shape: ABTestArn, required: true, location_name: "abTestArn"))
    DeleteABTestResponse.add_member(:status, Shapes::ShapeRef.new(shape: ABTestStatus, required: true, location_name: "status"))
    DeleteABTestResponse.struct_class = Types::DeleteABTestResponse

    DeleteBatchEvaluationRequest.add_member(:batch_evaluation_id, Shapes::ShapeRef.new(shape: BatchEvaluationId, required: true, location: "uri", location_name: "batchEvaluationId"))
    DeleteBatchEvaluationRequest.struct_class = Types::DeleteBatchEvaluationRequest

    DeleteBatchEvaluationResponse.add_member(:batch_evaluation_id, Shapes::ShapeRef.new(shape: BatchEvaluationId, required: true, location_name: "batchEvaluationId"))
    DeleteBatchEvaluationResponse.add_member(:batch_evaluation_arn, Shapes::ShapeRef.new(shape: BatchEvaluationArn, required: true, location_name: "batchEvaluationArn"))
    DeleteBatchEvaluationResponse.add_member(:status, Shapes::ShapeRef.new(shape: BatchEvaluationStatus, required: true, location_name: "status"))
    DeleteBatchEvaluationResponse.struct_class = Types::DeleteBatchEvaluationResponse

    DeleteCapacityProviderSessionRequest.add_member(:capacity_provider_id, Shapes::ShapeRef.new(shape: CapacityProviderId, required: true, location: "uri", location_name: "capacityProviderId"))
    DeleteCapacityProviderSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    DeleteCapacityProviderSessionRequest.struct_class = Types::DeleteCapacityProviderSessionRequest

    DeleteCapacityProviderSessionResponse.add_member(:capacity_provider_arn, Shapes::ShapeRef.new(shape: CapacityProviderArn, required: true, location_name: "capacityProviderArn"))
    DeleteCapacityProviderSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "sessionId"))
    DeleteCapacityProviderSessionResponse.add_member(:status, Shapes::ShapeRef.new(shape: CapacityProviderSessionStatus, required: true, location_name: "status"))
    DeleteCapacityProviderSessionResponse.struct_class = Types::DeleteCapacityProviderSessionResponse

    DeleteEventInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    DeleteEventInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    DeleteEventInput.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location: "uri", location_name: "eventId"))
    DeleteEventInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location: "uri", location_name: "actorId"))
    DeleteEventInput.struct_class = Types::DeleteEventInput

    DeleteEventOutput.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    DeleteEventOutput.struct_class = Types::DeleteEventOutput

    DeleteMemoryRecordInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    DeleteMemoryRecordInput.add_member(:memory_record_id, Shapes::ShapeRef.new(shape: MemoryRecordId, required: true, location: "uri", location_name: "memoryRecordId"))
    DeleteMemoryRecordInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location: "querystring", location_name: "namespace"))
    DeleteMemoryRecordInput.struct_class = Types::DeleteMemoryRecordInput

    DeleteMemoryRecordOutput.add_member(:memory_record_id, Shapes::ShapeRef.new(shape: MemoryRecordId, required: true, location_name: "memoryRecordId"))
    DeleteMemoryRecordOutput.struct_class = Types::DeleteMemoryRecordOutput

    DeletePaymentInstrumentRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-User-Id"))
    DeletePaymentInstrumentRequest.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    DeletePaymentInstrumentRequest.add_member(:payment_connector_id, Shapes::ShapeRef.new(shape: PaymentConnectorId, required: true, location_name: "paymentConnectorId"))
    DeletePaymentInstrumentRequest.add_member(:payment_instrument_id, Shapes::ShapeRef.new(shape: PaymentInstrumentId, required: true, location_name: "paymentInstrumentId"))
    DeletePaymentInstrumentRequest.struct_class = Types::DeletePaymentInstrumentRequest

    DeletePaymentInstrumentResponse.add_member(:status, Shapes::ShapeRef.new(shape: PaymentInstrumentStatus, required: true, location_name: "status"))
    DeletePaymentInstrumentResponse.struct_class = Types::DeletePaymentInstrumentResponse

    DeletePaymentSessionRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-User-Id"))
    DeletePaymentSessionRequest.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    DeletePaymentSessionRequest.add_member(:payment_session_id, Shapes::ShapeRef.new(shape: PaymentSessionId, required: true, location_name: "paymentSessionId"))
    DeletePaymentSessionRequest.struct_class = Types::DeletePaymentSessionRequest

    DeletePaymentSessionResponse.add_member(:status, Shapes::ShapeRef.new(shape: PaymentSessionStatus, required: true, location_name: "status"))
    DeletePaymentSessionResponse.struct_class = Types::DeletePaymentSessionResponse

    DeleteRecommendationRequest.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, required: true, location: "uri", location_name: "recommendationId"))
    DeleteRecommendationRequest.struct_class = Types::DeleteRecommendationRequest

    DeleteRecommendationResponse.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, required: true, location_name: "recommendationId"))
    DeleteRecommendationResponse.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationStatus, required: true, location_name: "status"))
    DeleteRecommendationResponse.struct_class = Types::DeleteRecommendationResponse

    Descriptors.add_member(:mcp, Shapes::ShapeRef.new(shape: McpDescriptor, location_name: "mcp"))
    Descriptors.add_member(:a2a, Shapes::ShapeRef.new(shape: A2aDescriptor, location_name: "a2a"))
    Descriptors.add_member(:custom, Shapes::ShapeRef.new(shape: CustomDescriptor, location_name: "custom"))
    Descriptors.add_member(:agent_skills, Shapes::ShapeRef.new(shape: AgentSkillsDescriptor, location_name: "agentSkills"))
    Descriptors.struct_class = Types::Descriptors

    DomainPatterns.member = Shapes::ShapeRef.new(shape: DomainPattern)

    DuplicateIdException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    DuplicateIdException.struct_class = Types::DuplicateIdException

    EfsConfiguration.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: EfsAccessPointArn, required: true, location_name: "accessPointArn"))
    EfsConfiguration.add_member(:mount_path, Shapes::ShapeRef.new(shape: MountPath, required: true, location_name: "mountPath"))
    EfsConfiguration.add_member(:file_system_arn, Shapes::ShapeRef.new(shape: EfsFileSystemArn, required: true, location_name: "fileSystemArn"))
    EfsConfiguration.struct_class = Types::EfsConfiguration

    EmbeddedCryptoWallet.add_member(:network, Shapes::ShapeRef.new(shape: CryptoWalletNetwork, required: true, location_name: "network"))
    EmbeddedCryptoWallet.add_member(:linked_accounts, Shapes::ShapeRef.new(shape: LinkedAccountList, required: true, location_name: "linkedAccounts"))
    EmbeddedCryptoWallet.add_member(:wallet_address, Shapes::ShapeRef.new(shape: String, location_name: "walletAddress"))
    EmbeddedCryptoWallet.add_member(:redirect_url, Shapes::ShapeRef.new(shape: EmbeddedCryptoWalletRedirectUrlString, location_name: "redirectUrl"))
    EmbeddedCryptoWallet.struct_class = Types::EmbeddedCryptoWallet

    ErrorDetailsList.member = Shapes::ShapeRef.new(shape: ErrorDetailsListMemberString)

    EvaluateRequest.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location: "uri", location_name: "evaluatorId"))
    EvaluateRequest.add_member(:evaluation_input, Shapes::ShapeRef.new(shape: EvaluationInput, required: true, location_name: "evaluationInput"))
    EvaluateRequest.add_member(:evaluation_target, Shapes::ShapeRef.new(shape: EvaluationTarget, location_name: "evaluationTarget"))
    EvaluateRequest.add_member(:evaluation_reference_inputs, Shapes::ShapeRef.new(shape: EvaluationReferenceInputs, location_name: "evaluationReferenceInputs"))
    EvaluateRequest.struct_class = Types::EvaluateRequest

    EvaluateResponse.add_member(:evaluation_results, Shapes::ShapeRef.new(shape: EvaluationResults, required: true, location_name: "evaluationResults"))
    EvaluateResponse.struct_class = Types::EvaluateResponse

    EvaluationContent.add_member(:text, Shapes::ShapeRef.new(shape: EvaluationContentTextString, location_name: "text"))
    EvaluationContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationContent.add_member_subclass(:text, Types::EvaluationContent::Text)
    EvaluationContent.add_member_subclass(:unknown, Types::EvaluationContent::Unknown)
    EvaluationContent.struct_class = Types::EvaluationContent

    EvaluationContentList.member = Shapes::ShapeRef.new(shape: EvaluationContent)

    EvaluationExpectedTrajectory.add_member(:tool_names, Shapes::ShapeRef.new(shape: EvaluationToolNames, location_name: "toolNames"))
    EvaluationExpectedTrajectory.struct_class = Types::EvaluationExpectedTrajectory

    EvaluationInput.add_member(:session_spans, Shapes::ShapeRef.new(shape: Spans, location_name: "sessionSpans"))
    EvaluationInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationInput.add_member_subclass(:session_spans, Types::EvaluationInput::SessionSpans)
    EvaluationInput.add_member_subclass(:unknown, Types::EvaluationInput::Unknown)
    EvaluationInput.struct_class = Types::EvaluationInput

    EvaluationJobResults.add_member(:number_of_sessions_completed, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfSessionsCompleted"))
    EvaluationJobResults.add_member(:number_of_sessions_in_progress, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfSessionsInProgress"))
    EvaluationJobResults.add_member(:number_of_sessions_failed, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfSessionsFailed"))
    EvaluationJobResults.add_member(:total_number_of_sessions, Shapes::ShapeRef.new(shape: Integer, location_name: "totalNumberOfSessions"))
    EvaluationJobResults.add_member(:number_of_sessions_ignored, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfSessionsIgnored"))
    EvaluationJobResults.add_member(:evaluator_summaries, Shapes::ShapeRef.new(shape: EvaluatorSummaryList, location_name: "evaluatorSummaries"))
    EvaluationJobResults.struct_class = Types::EvaluationJobResults

    EvaluationMetadata.add_member(:session_metadata, Shapes::ShapeRef.new(shape: SessionMetadataList, location_name: "sessionMetadata"))
    EvaluationMetadata.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationMetadata.add_member_subclass(:session_metadata, Types::EvaluationMetadata::SessionMetadata)
    EvaluationMetadata.add_member_subclass(:unknown, Types::EvaluationMetadata::Unknown)
    EvaluationMetadata.struct_class = Types::EvaluationMetadata

    EvaluationReferenceInput.add_member(:context, Shapes::ShapeRef.new(shape: Context, required: true, location_name: "context"))
    EvaluationReferenceInput.add_member(:expected_response, Shapes::ShapeRef.new(shape: EvaluationContent, location_name: "expectedResponse"))
    EvaluationReferenceInput.add_member(:assertions, Shapes::ShapeRef.new(shape: EvaluationContentList, location_name: "assertions"))
    EvaluationReferenceInput.add_member(:expected_trajectory, Shapes::ShapeRef.new(shape: EvaluationExpectedTrajectory, location_name: "expectedTrajectory"))
    EvaluationReferenceInput.struct_class = Types::EvaluationReferenceInput

    EvaluationReferenceInputs.member = Shapes::ShapeRef.new(shape: EvaluationReferenceInput)

    EvaluationResultContent.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: EvaluatorArn, required: true, location_name: "evaluatorArn"))
    EvaluationResultContent.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location_name: "evaluatorId"))
    EvaluationResultContent.add_member(:evaluator_name, Shapes::ShapeRef.new(shape: EvaluatorName, required: true, location_name: "evaluatorName"))
    EvaluationResultContent.add_member(:explanation, Shapes::ShapeRef.new(shape: EvaluationExplanation, location_name: "explanation"))
    EvaluationResultContent.add_member(:context, Shapes::ShapeRef.new(shape: Context, required: true, location_name: "context"))
    EvaluationResultContent.add_member(:value, Shapes::ShapeRef.new(shape: Double, location_name: "value"))
    EvaluationResultContent.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "label"))
    EvaluationResultContent.add_member(:token_usage, Shapes::ShapeRef.new(shape: TokenUsage, location_name: "tokenUsage"))
    EvaluationResultContent.add_member(:error_message, Shapes::ShapeRef.new(shape: EvaluationErrorMessage, location_name: "errorMessage"))
    EvaluationResultContent.add_member(:error_code, Shapes::ShapeRef.new(shape: EvaluationErrorCode, location_name: "errorCode"))
    EvaluationResultContent.add_member(:ignored_reference_input_fields, Shapes::ShapeRef.new(shape: IgnoredReferenceInputFields, location_name: "ignoredReferenceInputFields"))
    EvaluationResultContent.struct_class = Types::EvaluationResultContent

    EvaluationResults.member = Shapes::ShapeRef.new(shape: EvaluationResultContent)

    EvaluationTarget.add_member(:span_ids, Shapes::ShapeRef.new(shape: SpanIds, location_name: "spanIds"))
    EvaluationTarget.add_member(:trace_ids, Shapes::ShapeRef.new(shape: TraceIds, location_name: "traceIds"))
    EvaluationTarget.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EvaluationTarget.add_member_subclass(:span_ids, Types::EvaluationTarget::SpanIds)
    EvaluationTarget.add_member_subclass(:trace_ids, Types::EvaluationTarget::TraceIds)
    EvaluationTarget.add_member_subclass(:unknown, Types::EvaluationTarget::Unknown)
    EvaluationTarget.struct_class = Types::EvaluationTarget

    EvaluationToolNames.member = Shapes::ShapeRef.new(shape: EvaluationToolName)

    Evaluator.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: EvaluatorId, required: true, location_name: "evaluatorId"))
    Evaluator.struct_class = Types::Evaluator

    EvaluatorList.member = Shapes::ShapeRef.new(shape: Evaluator)

    EvaluatorMetric.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "evaluatorArn"))
    EvaluatorMetric.add_member(:control_stats, Shapes::ShapeRef.new(shape: ControlStats, required: true, location_name: "controlStats"))
    EvaluatorMetric.add_member(:variant_results, Shapes::ShapeRef.new(shape: VariantResultList, required: true, location_name: "variantResults"))
    EvaluatorMetric.struct_class = Types::EvaluatorMetric

    EvaluatorMetricList.member = Shapes::ShapeRef.new(shape: EvaluatorMetric)

    EvaluatorStatistics.add_member(:average_score, Shapes::ShapeRef.new(shape: Double, location_name: "averageScore"))
    EvaluatorStatistics.struct_class = Types::EvaluatorStatistics

    EvaluatorSummary.add_member(:evaluator_id, Shapes::ShapeRef.new(shape: String, location_name: "evaluatorId"))
    EvaluatorSummary.add_member(:statistics, Shapes::ShapeRef.new(shape: EvaluatorStatistics, location_name: "statistics"))
    EvaluatorSummary.add_member(:total_evaluated, Shapes::ShapeRef.new(shape: Integer, location_name: "totalEvaluated"))
    EvaluatorSummary.add_member(:total_failed, Shapes::ShapeRef.new(shape: Integer, location_name: "totalFailed"))
    EvaluatorSummary.struct_class = Types::EvaluatorSummary

    EvaluatorSummaryList.member = Shapes::ShapeRef.new(shape: EvaluatorSummary)

    Event.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location_name: "memoryId"))
    Event.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    Event.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "sessionId"))
    Event.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location_name: "eventId"))
    Event.add_member(:event_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "eventTimestamp"))
    Event.add_member(:payload, Shapes::ShapeRef.new(shape: PayloadTypeList, required: true, location_name: "payload"))
    Event.add_member(:branch, Shapes::ShapeRef.new(shape: Branch, location_name: "branch"))
    Event.add_member(:metadata, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "metadata"))
    Event.struct_class = Types::Event

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    EventMetadataFilterExpression.add_member(:left, Shapes::ShapeRef.new(shape: LeftExpression, required: true, location_name: "left"))
    EventMetadataFilterExpression.add_member(:operator, Shapes::ShapeRef.new(shape: OperatorType, required: true, location_name: "operator"))
    EventMetadataFilterExpression.add_member(:right, Shapes::ShapeRef.new(shape: RightExpression, location_name: "right"))
    EventMetadataFilterExpression.struct_class = Types::EventMetadataFilterExpression

    EventMetadataFilterList.member = Shapes::ShapeRef.new(shape: EventMetadataFilterExpression)

    ExecutionSummaryAffectedSession.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sessionId"))
    ExecutionSummaryAffectedSession.add_member(:approach_taken, Shapes::ShapeRef.new(shape: String, required: true, location_name: "approachTaken"))
    ExecutionSummaryAffectedSession.add_member(:final_outcome, Shapes::ShapeRef.new(shape: String, required: true, location_name: "finalOutcome"))
    ExecutionSummaryAffectedSession.struct_class = Types::ExecutionSummaryAffectedSession

    ExecutionSummaryAffectedSessionList.member = Shapes::ShapeRef.new(shape: ExecutionSummaryAffectedSession)

    ExecutionSummaryCluster.add_member(:cluster_id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "clusterId"))
    ExecutionSummaryCluster.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ExecutionSummaryCluster.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    ExecutionSummaryCluster.add_member(:affected_session_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "affectedSessionCount"))
    ExecutionSummaryCluster.add_member(:affected_sessions, Shapes::ShapeRef.new(shape: ExecutionSummaryAffectedSessionList, required: true, location_name: "affectedSessions"))
    ExecutionSummaryCluster.struct_class = Types::ExecutionSummaryCluster

    ExecutionSummaryClusterList.member = Shapes::ShapeRef.new(shape: ExecutionSummaryCluster)

    ExecutionSummaryClusteringResultContent.add_member(:execution_summaries, Shapes::ShapeRef.new(shape: ExecutionSummaryClusterList, required: true, location_name: "executionSummaries"))
    ExecutionSummaryClusteringResultContent.struct_class = Types::ExecutionSummaryClusteringResultContent

    ExternalProxy.add_member(:server, Shapes::ShapeRef.new(shape: HostName, required: true, location_name: "server"))
    ExternalProxy.add_member(:port, Shapes::ShapeRef.new(shape: ExternalProxyPortInteger, required: true, location_name: "port"))
    ExternalProxy.add_member(:domain_patterns, Shapes::ShapeRef.new(shape: DomainPatterns, location_name: "domainPatterns"))
    ExternalProxy.add_member(:credentials, Shapes::ShapeRef.new(shape: ProxyCredentials, location_name: "credentials"))
    ExternalProxy.struct_class = Types::ExternalProxy

    ExtractionConfig.add_member(:namespace_variables, Shapes::ShapeRef.new(shape: NamespaceVariablesMap, location_name: "namespaceVariables"))
    ExtractionConfig.struct_class = Types::ExtractionConfig

    ExtractionJob.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    ExtractionJob.struct_class = Types::ExtractionJob

    ExtractionJobFilterInput.add_member(:strategy_id, Shapes::ShapeRef.new(shape: String, location_name: "strategyId"))
    ExtractionJobFilterInput.add_member(:session_id, Shapes::ShapeRef.new(shape: String, location_name: "sessionId"))
    ExtractionJobFilterInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: String, location_name: "actorId"))
    ExtractionJobFilterInput.add_member(:status, Shapes::ShapeRef.new(shape: ExtractionJobStatus, location_name: "status"))
    ExtractionJobFilterInput.struct_class = Types::ExtractionJobFilterInput

    ExtractionJobMessages.add_member(:messages_list, Shapes::ShapeRef.new(shape: MessagesList, location_name: "messagesList"))
    ExtractionJobMessages.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ExtractionJobMessages.add_member_subclass(:messages_list, Types::ExtractionJobMessages::MessagesList)
    ExtractionJobMessages.add_member_subclass(:unknown, Types::ExtractionJobMessages::Unknown)
    ExtractionJobMessages.struct_class = Types::ExtractionJobMessages

    ExtractionJobMetadata.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobID"))
    ExtractionJobMetadata.add_member(:messages, Shapes::ShapeRef.new(shape: ExtractionJobMessages, required: true, location_name: "messages"))
    ExtractionJobMetadata.add_member(:status, Shapes::ShapeRef.new(shape: ExtractionJobStatus, location_name: "status"))
    ExtractionJobMetadata.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "failureReason"))
    ExtractionJobMetadata.add_member(:strategy_id, Shapes::ShapeRef.new(shape: String, location_name: "strategyId"))
    ExtractionJobMetadata.add_member(:session_id, Shapes::ShapeRef.new(shape: String, location_name: "sessionId"))
    ExtractionJobMetadata.add_member(:actor_id, Shapes::ShapeRef.new(shape: String, location_name: "actorId"))
    ExtractionJobMetadata.struct_class = Types::ExtractionJobMetadata

    ExtractionJobMetadataList.member = Shapes::ShapeRef.new(shape: ExtractionJobMetadata)

    FailureAnalysisResultContent.add_member(:failures, Shapes::ShapeRef.new(shape: FailureCategoryClusterList, required: true, location_name: "failures"))
    FailureAnalysisResultContent.struct_class = Types::FailureAnalysisResultContent

    FailureCategoryCluster.add_member(:cluster_id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "clusterId"))
    FailureCategoryCluster.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    FailureCategoryCluster.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    FailureCategoryCluster.add_member(:affected_session_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "affectedSessionCount"))
    FailureCategoryCluster.add_member(:sub_categories, Shapes::ShapeRef.new(shape: FailureSubCategoryClusterList, required: true, location_name: "subCategories"))
    FailureCategoryCluster.struct_class = Types::FailureCategoryCluster

    FailureCategoryClusterList.member = Shapes::ShapeRef.new(shape: FailureCategoryCluster)

    FailureSpanDetail.add_member(:span_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "spanId"))
    FailureSpanDetail.add_member(:trace_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "traceId"))
    FailureSpanDetail.add_member(:signals, Shapes::ShapeRef.new(shape: InsightsFailureSignalList, required: true, location_name: "signals"))
    FailureSpanDetail.struct_class = Types::FailureSpanDetail

    FailureSpanDetailList.member = Shapes::ShapeRef.new(shape: FailureSpanDetail)

    FailureSubCategoryCluster.add_member(:cluster_id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "clusterId"))
    FailureSubCategoryCluster.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    FailureSubCategoryCluster.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    FailureSubCategoryCluster.add_member(:affected_session_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "affectedSessionCount"))
    FailureSubCategoryCluster.add_member(:root_causes, Shapes::ShapeRef.new(shape: RootCauseClusterList, required: true, location_name: "rootCauses"))
    FailureSubCategoryCluster.struct_class = Types::FailureSubCategoryCluster

    FailureSubCategoryClusterList.member = Shapes::ShapeRef.new(shape: FailureSubCategoryCluster)

    FilterInput.add_member(:branch, Shapes::ShapeRef.new(shape: BranchFilter, location_name: "branch"))
    FilterInput.add_member(:event_metadata, Shapes::ShapeRef.new(shape: EventMetadataFilterList, location_name: "eventMetadata"))
    FilterInput.struct_class = Types::FilterInput

    FilterValue.add_member(:string_value, Shapes::ShapeRef.new(shape: FilterStringValue, location_name: "stringValue"))
    FilterValue.add_member(:double_value, Shapes::ShapeRef.new(shape: Double, location_name: "doubleValue"))
    FilterValue.add_member(:boolean_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "booleanValue"))
    FilterValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FilterValue.add_member_subclass(:string_value, Types::FilterValue::StringValue)
    FilterValue.add_member_subclass(:double_value, Types::FilterValue::DoubleValue)
    FilterValue.add_member_subclass(:boolean_value, Types::FilterValue::BooleanValue)
    FilterValue.add_member_subclass(:unknown, Types::FilterValue::Unknown)
    FilterValue.struct_class = Types::FilterValue

    GatewayFilter.add_member(:target_paths, Shapes::ShapeRef.new(shape: TargetPathList, location_name: "targetPaths"))
    GatewayFilter.struct_class = Types::GatewayFilter

    GetABTestRequest.add_member(:ab_test_id, Shapes::ShapeRef.new(shape: ABTestId, required: true, location: "uri", location_name: "abTestId"))
    GetABTestRequest.struct_class = Types::GetABTestRequest

    GetABTestResponse.add_member(:ab_test_id, Shapes::ShapeRef.new(shape: ABTestId, required: true, location_name: "abTestId"))
    GetABTestResponse.add_member(:ab_test_arn, Shapes::ShapeRef.new(shape: ABTestArn, required: true, location_name: "abTestArn"))
    GetABTestResponse.add_member(:name, Shapes::ShapeRef.new(shape: ABTestName, required: true, location_name: "name"))
    GetABTestResponse.add_member(:description, Shapes::ShapeRef.new(shape: ABTestDescription, location_name: "description"))
    GetABTestResponse.add_member(:status, Shapes::ShapeRef.new(shape: ABTestStatus, required: true, location_name: "status"))
    GetABTestResponse.add_member(:execution_status, Shapes::ShapeRef.new(shape: ABTestExecutionStatus, required: true, location_name: "executionStatus"))
    GetABTestResponse.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    GetABTestResponse.add_member(:variants, Shapes::ShapeRef.new(shape: VariantList, required: true, location_name: "variants"))
    GetABTestResponse.add_member(:gateway_filter, Shapes::ShapeRef.new(shape: GatewayFilter, location_name: "gatewayFilter"))
    GetABTestResponse.add_member(:evaluation_config, Shapes::ShapeRef.new(shape: ABTestEvaluationConfig, required: true, location_name: "evaluationConfig"))
    GetABTestResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    GetABTestResponse.add_member(:current_run_id, Shapes::ShapeRef.new(shape: String, location_name: "currentRunId"))
    GetABTestResponse.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetailsList, location_name: "errorDetails"))
    GetABTestResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    GetABTestResponse.add_member(:stopped_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "stoppedAt"))
    GetABTestResponse.add_member(:max_duration_expires_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "maxDurationExpiresAt"))
    GetABTestResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetABTestResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetABTestResponse.add_member(:results, Shapes::ShapeRef.new(shape: ABTestResults, location_name: "results"))
    GetABTestResponse.struct_class = Types::GetABTestResponse

    GetAgentCardRequest.add_member(:runtime_session_id, Shapes::ShapeRef.new(shape: SessionType, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id", metadata: {"idempotencyToken" => true}))
    GetAgentCardRequest.add_member(:agent_runtime_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "agentRuntimeArn"))
    GetAgentCardRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "qualifier"))
    GetAgentCardRequest.struct_class = Types::GetAgentCardRequest

    GetAgentCardResponse.add_member(:runtime_session_id, Shapes::ShapeRef.new(shape: SessionId, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"))
    GetAgentCardResponse.add_member(:agent_card, Shapes::ShapeRef.new(shape: AgentCard, required: true, location_name: "agentCard"))
    GetAgentCardResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: HttpResponseCode, location: "statusCode", location_name: "statusCode"))
    GetAgentCardResponse.struct_class = Types::GetAgentCardResponse
    GetAgentCardResponse[:payload] = :agent_card
    GetAgentCardResponse[:payload_member] = GetAgentCardResponse.member(:agent_card)

    GetBatchEvaluationRequest.add_member(:batch_evaluation_id, Shapes::ShapeRef.new(shape: BatchEvaluationId, required: true, location: "uri", location_name: "batchEvaluationId"))
    GetBatchEvaluationRequest.struct_class = Types::GetBatchEvaluationRequest

    GetBatchEvaluationResponse.add_member(:batch_evaluation_id, Shapes::ShapeRef.new(shape: BatchEvaluationId, required: true, location_name: "batchEvaluationId"))
    GetBatchEvaluationResponse.add_member(:batch_evaluation_arn, Shapes::ShapeRef.new(shape: BatchEvaluationArn, required: true, location_name: "batchEvaluationArn"))
    GetBatchEvaluationResponse.add_member(:batch_evaluation_name, Shapes::ShapeRef.new(shape: BatchEvaluationName, required: true, location_name: "batchEvaluationName"))
    GetBatchEvaluationResponse.add_member(:status, Shapes::ShapeRef.new(shape: BatchEvaluationStatus, required: true, location_name: "status"))
    GetBatchEvaluationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetBatchEvaluationResponse.add_member(:evaluators, Shapes::ShapeRef.new(shape: EvaluatorList, location_name: "evaluators"))
    GetBatchEvaluationResponse.add_member(:insights, Shapes::ShapeRef.new(shape: InsightList, location_name: "insights"))
    GetBatchEvaluationResponse.add_member(:data_source_config, Shapes::ShapeRef.new(shape: DataSourceConfig, location_name: "dataSourceConfig"))
    GetBatchEvaluationResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "outputConfig"))
    GetBatchEvaluationResponse.add_member(:evaluation_results, Shapes::ShapeRef.new(shape: EvaluationJobResults, location_name: "evaluationResults"))
    GetBatchEvaluationResponse.add_member(:failure_analysis_result, Shapes::ShapeRef.new(shape: FailureAnalysisResultContent, location_name: "failureAnalysisResult"))
    GetBatchEvaluationResponse.add_member(:user_intent_result, Shapes::ShapeRef.new(shape: UserIntentClusteringResultContent, location_name: "userIntentResult"))
    GetBatchEvaluationResponse.add_member(:execution_summary_result, Shapes::ShapeRef.new(shape: ExecutionSummaryClusteringResultContent, location_name: "executionSummaryResult"))
    GetBatchEvaluationResponse.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetailsList, location_name: "errorDetails"))
    GetBatchEvaluationResponse.add_member(:description, Shapes::ShapeRef.new(shape: BatchEvaluationDescription, location_name: "description"))
    GetBatchEvaluationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    GetBatchEvaluationResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetBatchEvaluationResponse.struct_class = Types::GetBatchEvaluationResponse

    GetBrowserSessionRequest.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "browserIdentifier"))
    GetBrowserSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location: "querystring", location_name: "sessionId"))
    GetBrowserSessionRequest.struct_class = Types::GetBrowserSessionRequest

    GetBrowserSessionResponse.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "browserIdentifier"))
    GetBrowserSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location_name: "sessionId"))
    GetBrowserSessionResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    GetBrowserSessionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetBrowserSessionResponse.add_member(:view_port, Shapes::ShapeRef.new(shape: ViewPort, location_name: "viewPort"))
    GetBrowserSessionResponse.add_member(:extensions, Shapes::ShapeRef.new(shape: BrowserExtensions, location_name: "extensions"))
    GetBrowserSessionResponse.add_member(:enterprise_policies, Shapes::ShapeRef.new(shape: BrowserEnterprisePolicies, location_name: "enterprisePolicies"))
    GetBrowserSessionResponse.add_member(:profile_configuration, Shapes::ShapeRef.new(shape: BrowserProfileConfiguration, location_name: "profileConfiguration"))
    GetBrowserSessionResponse.add_member(:session_timeout_seconds, Shapes::ShapeRef.new(shape: BrowserSessionTimeout, location_name: "sessionTimeoutSeconds"))
    GetBrowserSessionResponse.add_member(:status, Shapes::ShapeRef.new(shape: BrowserSessionStatus, location_name: "status"))
    GetBrowserSessionResponse.add_member(:streams, Shapes::ShapeRef.new(shape: BrowserSessionStream, location_name: "streams"))
    GetBrowserSessionResponse.add_member(:proxy_configuration, Shapes::ShapeRef.new(shape: ProxyConfiguration, location_name: "proxyConfiguration"))
    GetBrowserSessionResponse.add_member(:certificates, Shapes::ShapeRef.new(shape: Certificates, location_name: "certificates"))
    GetBrowserSessionResponse.add_member(:filesystem_configurations, Shapes::ShapeRef.new(shape: ToolsFileSystemConfigurations, location_name: "filesystemConfigurations"))
    GetBrowserSessionResponse.add_member(:session_replay_artifact, Shapes::ShapeRef.new(shape: String, location_name: "sessionReplayArtifact"))
    GetBrowserSessionResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastUpdatedAt"))
    GetBrowserSessionResponse.struct_class = Types::GetBrowserSessionResponse

    GetCodeInterpreterSessionRequest.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "codeInterpreterIdentifier"))
    GetCodeInterpreterSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, required: true, location: "querystring", location_name: "sessionId"))
    GetCodeInterpreterSessionRequest.struct_class = Types::GetCodeInterpreterSessionRequest

    GetCodeInterpreterSessionResponse.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeInterpreterIdentifier"))
    GetCodeInterpreterSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, required: true, location_name: "sessionId"))
    GetCodeInterpreterSessionResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    GetCodeInterpreterSessionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetCodeInterpreterSessionResponse.add_member(:session_timeout_seconds, Shapes::ShapeRef.new(shape: CodeInterpreterSessionTimeout, location_name: "sessionTimeoutSeconds"))
    GetCodeInterpreterSessionResponse.add_member(:status, Shapes::ShapeRef.new(shape: CodeInterpreterSessionStatus, location_name: "status"))
    GetCodeInterpreterSessionResponse.add_member(:certificates, Shapes::ShapeRef.new(shape: Certificates, location_name: "certificates"))
    GetCodeInterpreterSessionResponse.add_member(:filesystem_configurations, Shapes::ShapeRef.new(shape: ToolsFileSystemConfigurations, location_name: "filesystemConfigurations"))
    GetCodeInterpreterSessionResponse.struct_class = Types::GetCodeInterpreterSessionResponse

    GetEventInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    GetEventInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    GetEventInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location: "uri", location_name: "actorId"))
    GetEventInput.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, required: true, location: "uri", location_name: "eventId"))
    GetEventInput.struct_class = Types::GetEventInput

    GetEventOutput.add_member(:event, Shapes::ShapeRef.new(shape: Event, required: true, location_name: "event"))
    GetEventOutput.struct_class = Types::GetEventOutput

    GetMemoryRecordInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    GetMemoryRecordInput.add_member(:memory_record_id, Shapes::ShapeRef.new(shape: MemoryRecordId, required: true, location: "uri", location_name: "memoryRecordId"))
    GetMemoryRecordInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location: "querystring", location_name: "namespace"))
    GetMemoryRecordInput.struct_class = Types::GetMemoryRecordInput

    GetMemoryRecordOutput.add_member(:memory_record, Shapes::ShapeRef.new(shape: MemoryRecord, required: true, location_name: "memoryRecord"))
    GetMemoryRecordOutput.struct_class = Types::GetMemoryRecordOutput

    GetPaymentInstrumentBalanceRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-User-Id"))
    GetPaymentInstrumentBalanceRequest.add_member(:agent_name, Shapes::ShapeRef.new(shape: PaymentAgentName, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"))
    GetPaymentInstrumentBalanceRequest.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    GetPaymentInstrumentBalanceRequest.add_member(:payment_connector_id, Shapes::ShapeRef.new(shape: PaymentConnectorId, required: true, location_name: "paymentConnectorId"))
    GetPaymentInstrumentBalanceRequest.add_member(:payment_instrument_id, Shapes::ShapeRef.new(shape: PaymentInstrumentId, required: true, location_name: "paymentInstrumentId"))
    GetPaymentInstrumentBalanceRequest.add_member(:chain, Shapes::ShapeRef.new(shape: BlockchainChainId, required: true, location_name: "chain"))
    GetPaymentInstrumentBalanceRequest.add_member(:token, Shapes::ShapeRef.new(shape: InstrumentBalanceToken, required: true, location_name: "token"))
    GetPaymentInstrumentBalanceRequest.struct_class = Types::GetPaymentInstrumentBalanceRequest

    GetPaymentInstrumentBalanceResponse.add_member(:payment_instrument_id, Shapes::ShapeRef.new(shape: PaymentInstrumentId, required: true, location_name: "paymentInstrumentId"))
    GetPaymentInstrumentBalanceResponse.add_member(:token_balance, Shapes::ShapeRef.new(shape: TokenBalance, required: true, location_name: "tokenBalance"))
    GetPaymentInstrumentBalanceResponse.struct_class = Types::GetPaymentInstrumentBalanceResponse

    GetPaymentInstrumentRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-User-Id"))
    GetPaymentInstrumentRequest.add_member(:agent_name, Shapes::ShapeRef.new(shape: PaymentAgentName, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"))
    GetPaymentInstrumentRequest.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    GetPaymentInstrumentRequest.add_member(:payment_connector_id, Shapes::ShapeRef.new(shape: PaymentConnectorId, location_name: "paymentConnectorId"))
    GetPaymentInstrumentRequest.add_member(:payment_instrument_id, Shapes::ShapeRef.new(shape: PaymentInstrumentId, required: true, location_name: "paymentInstrumentId"))
    GetPaymentInstrumentRequest.struct_class = Types::GetPaymentInstrumentRequest

    GetPaymentInstrumentResponse.add_member(:payment_instrument, Shapes::ShapeRef.new(shape: PaymentInstrument, required: true, location_name: "paymentInstrument"))
    GetPaymentInstrumentResponse.struct_class = Types::GetPaymentInstrumentResponse

    GetPaymentSessionRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-User-Id"))
    GetPaymentSessionRequest.add_member(:agent_name, Shapes::ShapeRef.new(shape: PaymentAgentName, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"))
    GetPaymentSessionRequest.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    GetPaymentSessionRequest.add_member(:payment_session_id, Shapes::ShapeRef.new(shape: PaymentSessionId, required: true, location_name: "paymentSessionId"))
    GetPaymentSessionRequest.struct_class = Types::GetPaymentSessionRequest

    GetPaymentSessionResponse.add_member(:payment_session, Shapes::ShapeRef.new(shape: PaymentSession, required: true, location_name: "paymentSession"))
    GetPaymentSessionResponse.struct_class = Types::GetPaymentSessionResponse

    GetRecommendationRequest.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, required: true, location: "uri", location_name: "recommendationId"))
    GetRecommendationRequest.struct_class = Types::GetRecommendationRequest

    GetRecommendationResponse.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, required: true, location_name: "recommendationId"))
    GetRecommendationResponse.add_member(:recommendation_arn, Shapes::ShapeRef.new(shape: RecommendationArn, required: true, location_name: "recommendationArn"))
    GetRecommendationResponse.add_member(:name, Shapes::ShapeRef.new(shape: RecommendationName, required: true, location_name: "name"))
    GetRecommendationResponse.add_member(:description, Shapes::ShapeRef.new(shape: RecommendationDescription, location_name: "description"))
    GetRecommendationResponse.add_member(:type, Shapes::ShapeRef.new(shape: RecommendationType, required: true, location_name: "type"))
    GetRecommendationResponse.add_member(:recommendation_config, Shapes::ShapeRef.new(shape: RecommendationConfig, required: true, location_name: "recommendationConfig"))
    GetRecommendationResponse.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationStatus, required: true, location_name: "status"))
    GetRecommendationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetRecommendationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    GetRecommendationResponse.add_member(:recommendation_result, Shapes::ShapeRef.new(shape: RecommendationResult, location_name: "recommendationResult"))
    GetRecommendationResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetRecommendationResponse.struct_class = Types::GetRecommendationResponse

    GetResourceApiKeyRequest.add_member(:workload_identity_token, Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, required: true, location_name: "workloadIdentityToken"))
    GetResourceApiKeyRequest.add_member(:resource_credential_provider_name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "resourceCredentialProviderName"))
    GetResourceApiKeyRequest.struct_class = Types::GetResourceApiKeyRequest

    GetResourceApiKeyResponse.add_member(:api_key, Shapes::ShapeRef.new(shape: ApiKeyType, required: true, location_name: "apiKey"))
    GetResourceApiKeyResponse.struct_class = Types::GetResourceApiKeyResponse

    GetResourceOauth2TokenRequest.add_member(:workload_identity_token, Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, required: true, location_name: "workloadIdentityToken"))
    GetResourceOauth2TokenRequest.add_member(:resource_credential_provider_name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "resourceCredentialProviderName"))
    GetResourceOauth2TokenRequest.add_member(:scopes, Shapes::ShapeRef.new(shape: ScopesListType, required: true, location_name: "scopes"))
    GetResourceOauth2TokenRequest.add_member(:oauth2_flow, Shapes::ShapeRef.new(shape: Oauth2FlowType, required: true, location_name: "oauth2Flow"))
    GetResourceOauth2TokenRequest.add_member(:session_uri, Shapes::ShapeRef.new(shape: RequestUri, location_name: "sessionUri"))
    GetResourceOauth2TokenRequest.add_member(:resource_oauth_2_return_url, Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlType, location_name: "resourceOauth2ReturnUrl"))
    GetResourceOauth2TokenRequest.add_member(:force_authentication, Shapes::ShapeRef.new(shape: Boolean, location_name: "forceAuthentication"))
    GetResourceOauth2TokenRequest.add_member(:custom_parameters, Shapes::ShapeRef.new(shape: CustomRequestParametersType, location_name: "customParameters"))
    GetResourceOauth2TokenRequest.add_member(:custom_state, Shapes::ShapeRef.new(shape: State, location_name: "customState"))
    GetResourceOauth2TokenRequest.add_member(:resources, Shapes::ShapeRef.new(shape: ResourcesListType, location_name: "resources"))
    GetResourceOauth2TokenRequest.add_member(:audiences, Shapes::ShapeRef.new(shape: AudiencesListType, location_name: "audiences"))
    GetResourceOauth2TokenRequest.struct_class = Types::GetResourceOauth2TokenRequest

    GetResourceOauth2TokenResponse.add_member(:authorization_url, Shapes::ShapeRef.new(shape: AuthorizationUrlType, location_name: "authorizationUrl"))
    GetResourceOauth2TokenResponse.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessTokenType, location_name: "accessToken"))
    GetResourceOauth2TokenResponse.add_member(:session_uri, Shapes::ShapeRef.new(shape: RequestUri, location_name: "sessionUri"))
    GetResourceOauth2TokenResponse.add_member(:session_status, Shapes::ShapeRef.new(shape: SessionStatus, location_name: "sessionStatus"))
    GetResourceOauth2TokenResponse.struct_class = Types::GetResourceOauth2TokenResponse

    GetResourcePaymentTokenRequest.add_member(:workload_identity_token, Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, required: true, location_name: "workloadIdentityToken"))
    GetResourcePaymentTokenRequest.add_member(:resource_credential_provider_name, Shapes::ShapeRef.new(shape: CredentialProviderName, required: true, location_name: "resourceCredentialProviderName"))
    GetResourcePaymentTokenRequest.add_member(:payment_token_request, Shapes::ShapeRef.new(shape: PaymentTokenRequestInput, required: true, location_name: "paymentTokenRequest"))
    GetResourcePaymentTokenRequest.struct_class = Types::GetResourcePaymentTokenRequest

    GetResourcePaymentTokenResponse.add_member(:payment_token_response, Shapes::ShapeRef.new(shape: PaymentTokenResponseOutput, required: true, location_name: "paymentTokenResponse"))
    GetResourcePaymentTokenResponse.struct_class = Types::GetResourcePaymentTokenResponse

    GetWorkloadAccessTokenForJWTRequest.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "workloadName"))
    GetWorkloadAccessTokenForJWTRequest.add_member(:user_token, Shapes::ShapeRef.new(shape: UserTokenType, required: true, location_name: "userToken"))
    GetWorkloadAccessTokenForJWTRequest.struct_class = Types::GetWorkloadAccessTokenForJWTRequest

    GetWorkloadAccessTokenForJWTResponse.add_member(:workload_access_token, Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, required: true, location_name: "workloadAccessToken"))
    GetWorkloadAccessTokenForJWTResponse.struct_class = Types::GetWorkloadAccessTokenForJWTResponse

    GetWorkloadAccessTokenForUserIdRequest.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "workloadName"))
    GetWorkloadAccessTokenForUserIdRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserIdType, required: true, location_name: "userId"))
    GetWorkloadAccessTokenForUserIdRequest.struct_class = Types::GetWorkloadAccessTokenForUserIdRequest

    GetWorkloadAccessTokenForUserIdResponse.add_member(:workload_access_token, Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, required: true, location_name: "workloadAccessToken"))
    GetWorkloadAccessTokenForUserIdResponse.struct_class = Types::GetWorkloadAccessTokenForUserIdResponse

    GetWorkloadAccessTokenRequest.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, required: true, location_name: "workloadName"))
    GetWorkloadAccessTokenRequest.struct_class = Types::GetWorkloadAccessTokenRequest

    GetWorkloadAccessTokenResponse.add_member(:workload_access_token, Shapes::ShapeRef.new(shape: WorkloadIdentityTokenType, required: true, location_name: "workloadAccessToken"))
    GetWorkloadAccessTokenResponse.struct_class = Types::GetWorkloadAccessTokenResponse

    GroundTruthSource.add_member(:inline, Shapes::ShapeRef.new(shape: InlineGroundTruth, location_name: "inline"))
    GroundTruthSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    GroundTruthSource.add_member_subclass(:inline, Types::GroundTruthSource::Inline)
    GroundTruthSource.add_member_subclass(:unknown, Types::GroundTruthSource::Unknown)
    GroundTruthSource.struct_class = Types::GroundTruthSource

    GroundTruthTurn.add_member(:input, Shapes::ShapeRef.new(shape: GroundTruthTurnInput, location_name: "input"))
    GroundTruthTurn.add_member(:expected_response, Shapes::ShapeRef.new(shape: EvaluationContent, location_name: "expectedResponse"))
    GroundTruthTurn.struct_class = Types::GroundTruthTurn

    GroundTruthTurnInput.add_member(:prompt, Shapes::ShapeRef.new(shape: GroundTruthTurnInputPromptString, location_name: "prompt"))
    GroundTruthTurnInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    GroundTruthTurnInput.add_member_subclass(:prompt, Types::GroundTruthTurnInput::Prompt)
    GroundTruthTurnInput.add_member_subclass(:unknown, Types::GroundTruthTurnInput::Unknown)
    GroundTruthTurnInput.struct_class = Types::GroundTruthTurnInput

    HarnessAgentCoreBrowserConfig.add_member(:browser_arn, Shapes::ShapeRef.new(shape: HarnessBrowserArn, location_name: "browserArn"))
    HarnessAgentCoreBrowserConfig.struct_class = Types::HarnessAgentCoreBrowserConfig

    HarnessAgentCoreCodeInterpreterConfig.add_member(:code_interpreter_arn, Shapes::ShapeRef.new(shape: HarnessCodeInterpreterArn, location_name: "codeInterpreterArn"))
    HarnessAgentCoreCodeInterpreterConfig.struct_class = Types::HarnessAgentCoreCodeInterpreterConfig

    HarnessAgentCoreGatewayConfig.add_member(:gateway_arn, Shapes::ShapeRef.new(shape: GatewayArn, required: true, location_name: "gatewayArn"))
    HarnessAgentCoreGatewayConfig.add_member(:outbound_auth, Shapes::ShapeRef.new(shape: HarnessGatewayOutboundAuth, location_name: "outboundAuth"))
    HarnessAgentCoreGatewayConfig.struct_class = Types::HarnessAgentCoreGatewayConfig

    HarnessAllowedTools.member = Shapes::ShapeRef.new(shape: HarnessAllowedTool)

    HarnessAwsSkillPaths.member = Shapes::ShapeRef.new(shape: HarnessAwsSkillPath)

    HarnessBedrockModelConfig.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    HarnessBedrockModelConfig.add_member(:max_tokens, Shapes::ShapeRef.new(shape: MaxTokens, location_name: "maxTokens"))
    HarnessBedrockModelConfig.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    HarnessBedrockModelConfig.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    HarnessBedrockModelConfig.add_member(:api_format, Shapes::ShapeRef.new(shape: HarnessBedrockApiFormat, location_name: "apiFormat"))
    HarnessBedrockModelConfig.add_member(:additional_params, Shapes::ShapeRef.new(shape: Document, location_name: "additionalParams"))
    HarnessBedrockModelConfig.struct_class = Types::HarnessBedrockModelConfig

    HarnessContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: SensitiveText, location_name: "text"))
    HarnessContentBlock.add_member(:tool_use, Shapes::ShapeRef.new(shape: HarnessToolUseBlock, location_name: "toolUse"))
    HarnessContentBlock.add_member(:tool_result, Shapes::ShapeRef.new(shape: HarnessToolResultBlock, location_name: "toolResult"))
    HarnessContentBlock.add_member(:reasoning_content, Shapes::ShapeRef.new(shape: HarnessReasoningContentBlock, location_name: "reasoningContent"))
    HarnessContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessContentBlock.add_member_subclass(:text, Types::HarnessContentBlock::Text)
    HarnessContentBlock.add_member_subclass(:tool_use, Types::HarnessContentBlock::ToolUse)
    HarnessContentBlock.add_member_subclass(:tool_result, Types::HarnessContentBlock::ToolResult)
    HarnessContentBlock.add_member_subclass(:reasoning_content, Types::HarnessContentBlock::ReasoningContent)
    HarnessContentBlock.add_member_subclass(:unknown, Types::HarnessContentBlock::Unknown)
    HarnessContentBlock.struct_class = Types::HarnessContentBlock

    HarnessContentBlockDelta.add_member(:text, Shapes::ShapeRef.new(shape: SensitiveText, location_name: "text"))
    HarnessContentBlockDelta.add_member(:tool_use, Shapes::ShapeRef.new(shape: HarnessToolUseBlockDelta, location_name: "toolUse"))
    HarnessContentBlockDelta.add_member(:tool_result, Shapes::ShapeRef.new(shape: HarnessToolResultBlocksDelta, location_name: "toolResult"))
    HarnessContentBlockDelta.add_member(:reasoning_content, Shapes::ShapeRef.new(shape: HarnessReasoningContentBlockDelta, location_name: "reasoningContent"))
    HarnessContentBlockDelta.add_member(:tool_result_metadata, Shapes::ShapeRef.new(shape: HarnessToolResultMetadataBlockDelta, location_name: "toolResultMetadata"))
    HarnessContentBlockDelta.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessContentBlockDelta.add_member_subclass(:text, Types::HarnessContentBlockDelta::Text)
    HarnessContentBlockDelta.add_member_subclass(:tool_use, Types::HarnessContentBlockDelta::ToolUse)
    HarnessContentBlockDelta.add_member_subclass(:tool_result, Types::HarnessContentBlockDelta::ToolResult)
    HarnessContentBlockDelta.add_member_subclass(:reasoning_content, Types::HarnessContentBlockDelta::ReasoningContent)
    HarnessContentBlockDelta.add_member_subclass(:tool_result_metadata, Types::HarnessContentBlockDelta::ToolResultMetadata)
    HarnessContentBlockDelta.add_member_subclass(:unknown, Types::HarnessContentBlockDelta::Unknown)
    HarnessContentBlockDelta.struct_class = Types::HarnessContentBlockDelta

    HarnessContentBlockDeltaEvent.add_member(:content_block_index, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "contentBlockIndex"))
    HarnessContentBlockDeltaEvent.add_member(:delta, Shapes::ShapeRef.new(shape: HarnessContentBlockDelta, required: true, location_name: "delta"))
    HarnessContentBlockDeltaEvent.struct_class = Types::HarnessContentBlockDeltaEvent

    HarnessContentBlockStart.add_member(:tool_use, Shapes::ShapeRef.new(shape: HarnessToolUseBlockStart, location_name: "toolUse"))
    HarnessContentBlockStart.add_member(:tool_result, Shapes::ShapeRef.new(shape: HarnessToolResultBlockStart, location_name: "toolResult"))
    HarnessContentBlockStart.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessContentBlockStart.add_member_subclass(:tool_use, Types::HarnessContentBlockStart::ToolUse)
    HarnessContentBlockStart.add_member_subclass(:tool_result, Types::HarnessContentBlockStart::ToolResult)
    HarnessContentBlockStart.add_member_subclass(:unknown, Types::HarnessContentBlockStart::Unknown)
    HarnessContentBlockStart.struct_class = Types::HarnessContentBlockStart

    HarnessContentBlockStartEvent.add_member(:content_block_index, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "contentBlockIndex"))
    HarnessContentBlockStartEvent.add_member(:start, Shapes::ShapeRef.new(shape: HarnessContentBlockStart, required: true, location_name: "start"))
    HarnessContentBlockStartEvent.struct_class = Types::HarnessContentBlockStartEvent

    HarnessContentBlockStopEvent.add_member(:content_block_index, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "contentBlockIndex"))
    HarnessContentBlockStopEvent.struct_class = Types::HarnessContentBlockStopEvent

    HarnessContentBlocks.member = Shapes::ShapeRef.new(shape: HarnessContentBlock)

    HarnessGatewayOutboundAuth.add_member(:aws_iam, Shapes::ShapeRef.new(shape: Unit, location_name: "awsIam"))
    HarnessGatewayOutboundAuth.add_member(:none, Shapes::ShapeRef.new(shape: Unit, location_name: "none"))
    HarnessGatewayOutboundAuth.add_member(:oauth, Shapes::ShapeRef.new(shape: OAuthCredentialProvider, location_name: "oauth"))
    HarnessGatewayOutboundAuth.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessGatewayOutboundAuth.add_member_subclass(:aws_iam, Types::HarnessGatewayOutboundAuth::AwsIam)
    HarnessGatewayOutboundAuth.add_member_subclass(:none, Types::HarnessGatewayOutboundAuth::None)
    HarnessGatewayOutboundAuth.add_member_subclass(:oauth, Types::HarnessGatewayOutboundAuth::Oauth)
    HarnessGatewayOutboundAuth.add_member_subclass(:unknown, Types::HarnessGatewayOutboundAuth::Unknown)
    HarnessGatewayOutboundAuth.struct_class = Types::HarnessGatewayOutboundAuth

    HarnessGeminiModelConfig.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    HarnessGeminiModelConfig.add_member(:api_key_arn, Shapes::ShapeRef.new(shape: ApiKeyArn, required: true, location_name: "apiKeyArn"))
    HarnessGeminiModelConfig.add_member(:max_tokens, Shapes::ShapeRef.new(shape: MaxTokens, location_name: "maxTokens"))
    HarnessGeminiModelConfig.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    HarnessGeminiModelConfig.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    HarnessGeminiModelConfig.add_member(:top_k, Shapes::ShapeRef.new(shape: TopK, location_name: "topK"))
    HarnessGeminiModelConfig.add_member(:additional_params, Shapes::ShapeRef.new(shape: Document, location_name: "additionalParams"))
    HarnessGeminiModelConfig.struct_class = Types::HarnessGeminiModelConfig

    HarnessInlineFunctionConfig.add_member(:description, Shapes::ShapeRef.new(shape: HarnessInlineFunctionDescription, required: true, location_name: "description"))
    HarnessInlineFunctionConfig.add_member(:input_schema, Shapes::ShapeRef.new(shape: SensitiveJson, required: true, location_name: "inputSchema"))
    HarnessInlineFunctionConfig.struct_class = Types::HarnessInlineFunctionConfig

    HarnessLiteLlmModelConfig.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    HarnessLiteLlmModelConfig.add_member(:api_key_arn, Shapes::ShapeRef.new(shape: ApiKeyArn, location_name: "apiKeyArn"))
    HarnessLiteLlmModelConfig.add_member(:api_base, Shapes::ShapeRef.new(shape: HarnessLiteLlmApiBase, location_name: "apiBase"))
    HarnessLiteLlmModelConfig.add_member(:max_tokens, Shapes::ShapeRef.new(shape: MaxTokens, location_name: "maxTokens"))
    HarnessLiteLlmModelConfig.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    HarnessLiteLlmModelConfig.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    HarnessLiteLlmModelConfig.add_member(:additional_params, Shapes::ShapeRef.new(shape: Document, location_name: "additionalParams"))
    HarnessLiteLlmModelConfig.struct_class = Types::HarnessLiteLlmModelConfig

    HarnessMessage.add_member(:role, Shapes::ShapeRef.new(shape: HarnessConversationRole, required: true, location_name: "role"))
    HarnessMessage.add_member(:content, Shapes::ShapeRef.new(shape: HarnessContentBlocks, required: true, location_name: "content"))
    HarnessMessage.struct_class = Types::HarnessMessage

    HarnessMessageStartEvent.add_member(:role, Shapes::ShapeRef.new(shape: HarnessConversationRole, required: true, location_name: "role"))
    HarnessMessageStartEvent.struct_class = Types::HarnessMessageStartEvent

    HarnessMessageStopEvent.add_member(:stop_reason, Shapes::ShapeRef.new(shape: HarnessStopReason, required: true, location_name: "stopReason"))
    HarnessMessageStopEvent.struct_class = Types::HarnessMessageStopEvent

    HarnessMessages.member = Shapes::ShapeRef.new(shape: HarnessMessage)

    HarnessMetadataEvent.add_member(:usage, Shapes::ShapeRef.new(shape: HarnessTokenUsage, required: true, location_name: "usage"))
    HarnessMetadataEvent.add_member(:metrics, Shapes::ShapeRef.new(shape: HarnessStreamMetrics, required: true, location_name: "metrics"))
    HarnessMetadataEvent.struct_class = Types::HarnessMetadataEvent

    HarnessModelConfiguration.add_member(:bedrock_model_config, Shapes::ShapeRef.new(shape: HarnessBedrockModelConfig, location_name: "bedrockModelConfig"))
    HarnessModelConfiguration.add_member(:open_ai_model_config, Shapes::ShapeRef.new(shape: HarnessOpenAiModelConfig, location_name: "openAiModelConfig"))
    HarnessModelConfiguration.add_member(:gemini_model_config, Shapes::ShapeRef.new(shape: HarnessGeminiModelConfig, location_name: "geminiModelConfig"))
    HarnessModelConfiguration.add_member(:lite_llm_model_config, Shapes::ShapeRef.new(shape: HarnessLiteLlmModelConfig, location_name: "liteLlmModelConfig"))
    HarnessModelConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessModelConfiguration.add_member_subclass(:bedrock_model_config, Types::HarnessModelConfiguration::BedrockModelConfig)
    HarnessModelConfiguration.add_member_subclass(:open_ai_model_config, Types::HarnessModelConfiguration::OpenAiModelConfig)
    HarnessModelConfiguration.add_member_subclass(:gemini_model_config, Types::HarnessModelConfiguration::GeminiModelConfig)
    HarnessModelConfiguration.add_member_subclass(:lite_llm_model_config, Types::HarnessModelConfiguration::LiteLlmModelConfig)
    HarnessModelConfiguration.add_member_subclass(:unknown, Types::HarnessModelConfiguration::Unknown)
    HarnessModelConfiguration.struct_class = Types::HarnessModelConfiguration

    HarnessOpenAiModelConfig.add_member(:model_id, Shapes::ShapeRef.new(shape: ModelId, required: true, location_name: "modelId"))
    HarnessOpenAiModelConfig.add_member(:api_key_arn, Shapes::ShapeRef.new(shape: ApiKeyArn, required: true, location_name: "apiKeyArn"))
    HarnessOpenAiModelConfig.add_member(:max_tokens, Shapes::ShapeRef.new(shape: MaxTokens, location_name: "maxTokens"))
    HarnessOpenAiModelConfig.add_member(:temperature, Shapes::ShapeRef.new(shape: Temperature, location_name: "temperature"))
    HarnessOpenAiModelConfig.add_member(:top_p, Shapes::ShapeRef.new(shape: TopP, location_name: "topP"))
    HarnessOpenAiModelConfig.add_member(:api_format, Shapes::ShapeRef.new(shape: HarnessOpenAiApiFormat, location_name: "apiFormat"))
    HarnessOpenAiModelConfig.add_member(:additional_params, Shapes::ShapeRef.new(shape: Document, location_name: "additionalParams"))
    HarnessOpenAiModelConfig.struct_class = Types::HarnessOpenAiModelConfig

    HarnessReasoningContentBlock.add_member(:reasoning_text, Shapes::ShapeRef.new(shape: HarnessReasoningTextBlock, location_name: "reasoningText"))
    HarnessReasoningContentBlock.add_member(:redacted_content, Shapes::ShapeRef.new(shape: Blob, location_name: "redactedContent"))
    HarnessReasoningContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessReasoningContentBlock.add_member_subclass(:reasoning_text, Types::HarnessReasoningContentBlock::ReasoningText)
    HarnessReasoningContentBlock.add_member_subclass(:redacted_content, Types::HarnessReasoningContentBlock::RedactedContent)
    HarnessReasoningContentBlock.add_member_subclass(:unknown, Types::HarnessReasoningContentBlock::Unknown)
    HarnessReasoningContentBlock.struct_class = Types::HarnessReasoningContentBlock

    HarnessReasoningContentBlockDelta.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    HarnessReasoningContentBlockDelta.add_member(:redacted_content, Shapes::ShapeRef.new(shape: Body, location_name: "redactedContent"))
    HarnessReasoningContentBlockDelta.add_member(:signature, Shapes::ShapeRef.new(shape: String, location_name: "signature"))
    HarnessReasoningContentBlockDelta.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessReasoningContentBlockDelta.add_member_subclass(:text, Types::HarnessReasoningContentBlockDelta::Text)
    HarnessReasoningContentBlockDelta.add_member_subclass(:redacted_content, Types::HarnessReasoningContentBlockDelta::RedactedContent)
    HarnessReasoningContentBlockDelta.add_member_subclass(:signature, Types::HarnessReasoningContentBlockDelta::Signature)
    HarnessReasoningContentBlockDelta.add_member_subclass(:unknown, Types::HarnessReasoningContentBlockDelta::Unknown)
    HarnessReasoningContentBlockDelta.struct_class = Types::HarnessReasoningContentBlockDelta

    HarnessReasoningTextBlock.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "text"))
    HarnessReasoningTextBlock.add_member(:signature, Shapes::ShapeRef.new(shape: String, location_name: "signature"))
    HarnessReasoningTextBlock.struct_class = Types::HarnessReasoningTextBlock

    HarnessRemoteMcpConfig.add_member(:url, Shapes::ShapeRef.new(shape: HarnessRemoteMcpUrl, required: true, location_name: "url"))
    HarnessRemoteMcpConfig.add_member(:headers, Shapes::ShapeRef.new(shape: HttpHeadersMap, location_name: "headers"))
    HarnessRemoteMcpConfig.struct_class = Types::HarnessRemoteMcpConfig

    HarnessSkill.add_member(:path, Shapes::ShapeRef.new(shape: HarnessSkillPath, location_name: "path"))
    HarnessSkill.add_member(:s3, Shapes::ShapeRef.new(shape: HarnessSkillS3Source, location_name: "s3"))
    HarnessSkill.add_member(:git, Shapes::ShapeRef.new(shape: HarnessSkillGitSource, location_name: "git"))
    HarnessSkill.add_member(:aws_skills, Shapes::ShapeRef.new(shape: HarnessSkillAwsSkillsSource, location_name: "awsSkills"))
    HarnessSkill.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessSkill.add_member_subclass(:path, Types::HarnessSkill::Path)
    HarnessSkill.add_member_subclass(:s3, Types::HarnessSkill::S3)
    HarnessSkill.add_member_subclass(:git, Types::HarnessSkill::Git)
    HarnessSkill.add_member_subclass(:aws_skills, Types::HarnessSkill::AwsSkills)
    HarnessSkill.add_member_subclass(:unknown, Types::HarnessSkill::Unknown)
    HarnessSkill.struct_class = Types::HarnessSkill

    HarnessSkillAwsSkillsSource.add_member(:paths, Shapes::ShapeRef.new(shape: HarnessAwsSkillPaths, location_name: "paths"))
    HarnessSkillAwsSkillsSource.struct_class = Types::HarnessSkillAwsSkillsSource

    HarnessSkillGitAuth.add_member(:credential_arn, Shapes::ShapeRef.new(shape: ApiKeyArn, required: true, location_name: "credentialArn"))
    HarnessSkillGitAuth.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "username"))
    HarnessSkillGitAuth.struct_class = Types::HarnessSkillGitAuth

    HarnessSkillGitSource.add_member(:url, Shapes::ShapeRef.new(shape: HarnessSkillGitUrl, required: true, location_name: "url"))
    HarnessSkillGitSource.add_member(:path, Shapes::ShapeRef.new(shape: String, location_name: "path"))
    HarnessSkillGitSource.add_member(:auth, Shapes::ShapeRef.new(shape: HarnessSkillGitAuth, location_name: "auth"))
    HarnessSkillGitSource.struct_class = Types::HarnessSkillGitSource

    HarnessSkillS3Source.add_member(:uri, Shapes::ShapeRef.new(shape: HarnessSkillS3Uri, required: true, location_name: "uri"))
    HarnessSkillS3Source.struct_class = Types::HarnessSkillS3Source

    HarnessSkills.member = Shapes::ShapeRef.new(shape: HarnessSkill)

    HarnessStreamMetrics.add_member(:latency_ms, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "latencyMs"))
    HarnessStreamMetrics.struct_class = Types::HarnessStreamMetrics

    HarnessSystemContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: SensitiveText, location_name: "text"))
    HarnessSystemContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessSystemContentBlock.add_member_subclass(:text, Types::HarnessSystemContentBlock::Text)
    HarnessSystemContentBlock.add_member_subclass(:unknown, Types::HarnessSystemContentBlock::Unknown)
    HarnessSystemContentBlock.struct_class = Types::HarnessSystemContentBlock

    HarnessSystemPrompt.member = Shapes::ShapeRef.new(shape: HarnessSystemContentBlock)

    HarnessTokenUsage.add_member(:input_tokens, Shapes::ShapeRef.new(shape: HarnessTokenUsageInputTokensInteger, required: true, location_name: "inputTokens"))
    HarnessTokenUsage.add_member(:output_tokens, Shapes::ShapeRef.new(shape: HarnessTokenUsageOutputTokensInteger, required: true, location_name: "outputTokens"))
    HarnessTokenUsage.add_member(:total_tokens, Shapes::ShapeRef.new(shape: HarnessTokenUsageTotalTokensInteger, required: true, location_name: "totalTokens"))
    HarnessTokenUsage.add_member(:cache_read_input_tokens, Shapes::ShapeRef.new(shape: HarnessTokenUsageCacheReadInputTokensInteger, location_name: "cacheReadInputTokens"))
    HarnessTokenUsage.add_member(:cache_write_input_tokens, Shapes::ShapeRef.new(shape: HarnessTokenUsageCacheWriteInputTokensInteger, location_name: "cacheWriteInputTokens"))
    HarnessTokenUsage.struct_class = Types::HarnessTokenUsage

    HarnessTool.add_member(:type, Shapes::ShapeRef.new(shape: HarnessToolType, required: true, location_name: "type"))
    HarnessTool.add_member(:name, Shapes::ShapeRef.new(shape: HarnessToolName, location_name: "name"))
    HarnessTool.add_member(:config, Shapes::ShapeRef.new(shape: HarnessToolConfiguration, location_name: "config"))
    HarnessTool.struct_class = Types::HarnessTool

    HarnessToolConfiguration.add_member(:remote_mcp, Shapes::ShapeRef.new(shape: HarnessRemoteMcpConfig, location_name: "remoteMcp"))
    HarnessToolConfiguration.add_member(:agent_core_browser, Shapes::ShapeRef.new(shape: HarnessAgentCoreBrowserConfig, location_name: "agentCoreBrowser"))
    HarnessToolConfiguration.add_member(:agent_core_gateway, Shapes::ShapeRef.new(shape: HarnessAgentCoreGatewayConfig, location_name: "agentCoreGateway"))
    HarnessToolConfiguration.add_member(:inline_function, Shapes::ShapeRef.new(shape: HarnessInlineFunctionConfig, location_name: "inlineFunction"))
    HarnessToolConfiguration.add_member(:agent_core_code_interpreter, Shapes::ShapeRef.new(shape: HarnessAgentCoreCodeInterpreterConfig, location_name: "agentCoreCodeInterpreter"))
    HarnessToolConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessToolConfiguration.add_member_subclass(:remote_mcp, Types::HarnessToolConfiguration::RemoteMcp)
    HarnessToolConfiguration.add_member_subclass(:agent_core_browser, Types::HarnessToolConfiguration::AgentCoreBrowser)
    HarnessToolConfiguration.add_member_subclass(:agent_core_gateway, Types::HarnessToolConfiguration::AgentCoreGateway)
    HarnessToolConfiguration.add_member_subclass(:inline_function, Types::HarnessToolConfiguration::InlineFunction)
    HarnessToolConfiguration.add_member_subclass(:agent_core_code_interpreter, Types::HarnessToolConfiguration::AgentCoreCodeInterpreter)
    HarnessToolConfiguration.add_member_subclass(:unknown, Types::HarnessToolConfiguration::Unknown)
    HarnessToolConfiguration.struct_class = Types::HarnessToolConfiguration

    HarnessToolResultBlock.add_member(:tool_use_id, Shapes::ShapeRef.new(shape: HarnessToolUseId, required: true, location_name: "toolUseId"))
    HarnessToolResultBlock.add_member(:content, Shapes::ShapeRef.new(shape: HarnessToolResultContentBlocks, required: true, location_name: "content"))
    HarnessToolResultBlock.add_member(:status, Shapes::ShapeRef.new(shape: HarnessToolUseStatus, location_name: "status"))
    HarnessToolResultBlock.add_member(:type, Shapes::ShapeRef.new(shape: HarnessToolUseType, location_name: "type"))
    HarnessToolResultBlock.struct_class = Types::HarnessToolResultBlock

    HarnessToolResultBlockDelta.add_member(:text, Shapes::ShapeRef.new(shape: SensitiveText, location_name: "text"))
    HarnessToolResultBlockDelta.add_member(:json, Shapes::ShapeRef.new(shape: SensitiveJson, location_name: "json"))
    HarnessToolResultBlockDelta.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessToolResultBlockDelta.add_member_subclass(:text, Types::HarnessToolResultBlockDelta::Text)
    HarnessToolResultBlockDelta.add_member_subclass(:json, Types::HarnessToolResultBlockDelta::Json)
    HarnessToolResultBlockDelta.add_member_subclass(:unknown, Types::HarnessToolResultBlockDelta::Unknown)
    HarnessToolResultBlockDelta.struct_class = Types::HarnessToolResultBlockDelta

    HarnessToolResultBlockStart.add_member(:tool_use_id, Shapes::ShapeRef.new(shape: HarnessToolUseId, required: true, location_name: "toolUseId"))
    HarnessToolResultBlockStart.add_member(:status, Shapes::ShapeRef.new(shape: HarnessToolUseStatus, location_name: "status"))
    HarnessToolResultBlockStart.struct_class = Types::HarnessToolResultBlockStart

    HarnessToolResultBlocksDelta.member = Shapes::ShapeRef.new(shape: HarnessToolResultBlockDelta)

    HarnessToolResultContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: SensitiveText, location_name: "text"))
    HarnessToolResultContentBlock.add_member(:json, Shapes::ShapeRef.new(shape: SensitiveJson, location_name: "json"))
    HarnessToolResultContentBlock.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HarnessToolResultContentBlock.add_member_subclass(:text, Types::HarnessToolResultContentBlock::Text)
    HarnessToolResultContentBlock.add_member_subclass(:json, Types::HarnessToolResultContentBlock::Json)
    HarnessToolResultContentBlock.add_member_subclass(:unknown, Types::HarnessToolResultContentBlock::Unknown)
    HarnessToolResultContentBlock.struct_class = Types::HarnessToolResultContentBlock

    HarnessToolResultContentBlocks.member = Shapes::ShapeRef.new(shape: HarnessToolResultContentBlock)

    HarnessToolResultMetadataBlockDelta.add_member(:metadata, Shapes::ShapeRef.new(shape: SensitiveText, required: true, location_name: "metadata"))
    HarnessToolResultMetadataBlockDelta.struct_class = Types::HarnessToolResultMetadataBlockDelta

    HarnessToolUseBlock.add_member(:name, Shapes::ShapeRef.new(shape: HarnessToolName, required: true, location_name: "name"))
    HarnessToolUseBlock.add_member(:tool_use_id, Shapes::ShapeRef.new(shape: HarnessToolUseId, required: true, location_name: "toolUseId"))
    HarnessToolUseBlock.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveJson, required: true, location_name: "input"))
    HarnessToolUseBlock.add_member(:type, Shapes::ShapeRef.new(shape: HarnessToolUseType, location_name: "type"))
    HarnessToolUseBlock.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "serverName"))
    HarnessToolUseBlock.struct_class = Types::HarnessToolUseBlock

    HarnessToolUseBlockDelta.add_member(:input, Shapes::ShapeRef.new(shape: SensitiveText, required: true, location_name: "input"))
    HarnessToolUseBlockDelta.struct_class = Types::HarnessToolUseBlockDelta

    HarnessToolUseBlockStart.add_member(:tool_use_id, Shapes::ShapeRef.new(shape: HarnessToolUseId, required: true, location_name: "toolUseId"))
    HarnessToolUseBlockStart.add_member(:name, Shapes::ShapeRef.new(shape: HarnessToolName, required: true, location_name: "name"))
    HarnessToolUseBlockStart.add_member(:type, Shapes::ShapeRef.new(shape: HarnessToolUseType, location_name: "type"))
    HarnessToolUseBlockStart.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "serverName"))
    HarnessToolUseBlockStart.struct_class = Types::HarnessToolUseBlockStart

    HarnessTools.member = Shapes::ShapeRef.new(shape: HarnessTool)

    HttpHeadersMap.key = Shapes::ShapeRef.new(shape: HttpHeaderKey)
    HttpHeadersMap.value = Shapes::ShapeRef.new(shape: HttpHeaderValue)

    IgnoredReferenceInputFields.member = Shapes::ShapeRef.new(shape: IgnoredReferenceInputField)

    IngestDataInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    IngestDataInput.add_member(:source, Shapes::ShapeRef.new(shape: ContentSource, required: true, location_name: "source"))
    IngestDataInput.add_member(:content_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "contentTimestamp"))
    IngestDataInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    IngestDataInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    IngestDataInput.add_member(:extraction_config, Shapes::ShapeRef.new(shape: ExtractionConfig, location_name: "extractionConfig"))
    IngestDataInput.add_member(:metadata, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "metadata"))
    IngestDataInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    IngestDataInput.struct_class = Types::IngestDataInput

    IngestDataOutput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "sessionId"))
    IngestDataOutput.struct_class = Types::IngestDataOutput

    IngestPayloadList.member = Shapes::ShapeRef.new(shape: IngestPayloadType)

    IngestPayloadType.add_member(:conversational, Shapes::ShapeRef.new(shape: Conversational, location_name: "conversational"))
    IngestPayloadType.add_member(:json, Shapes::ShapeRef.new(shape: MemoryJsonData, location_name: "json"))
    IngestPayloadType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IngestPayloadType.add_member_subclass(:conversational, Types::IngestPayloadType::Conversational)
    IngestPayloadType.add_member_subclass(:json, Types::IngestPayloadType::Json)
    IngestPayloadType.add_member_subclass(:unknown, Types::IngestPayloadType::Unknown)
    IngestPayloadType.struct_class = Types::IngestPayloadType

    InlineGroundTruth.add_member(:assertions, Shapes::ShapeRef.new(shape: EvaluationContentList, location_name: "assertions"))
    InlineGroundTruth.add_member(:expected_trajectory, Shapes::ShapeRef.new(shape: EvaluationExpectedTrajectory, location_name: "expectedTrajectory"))
    InlineGroundTruth.add_member(:turns, Shapes::ShapeRef.new(shape: InlineGroundTruthTurnsList, location_name: "turns"))
    InlineGroundTruth.struct_class = Types::InlineGroundTruth

    InlineGroundTruthTurnsList.member = Shapes::ShapeRef.new(shape: GroundTruthTurn)

    InlineMemoryContent.add_member(:payload, Shapes::ShapeRef.new(shape: IngestPayloadList, required: true, location_name: "payload"))
    InlineMemoryContent.struct_class = Types::InlineMemoryContent

    InputContentBlock.add_member(:path, Shapes::ShapeRef.new(shape: MaxLenString, required: true, location_name: "path"))
    InputContentBlock.add_member(:text, Shapes::ShapeRef.new(shape: MaxLenString, location_name: "text"))
    InputContentBlock.add_member(:blob, Shapes::ShapeRef.new(shape: Body, location_name: "blob"))
    InputContentBlock.struct_class = Types::InputContentBlock

    InputContentBlockList.member = Shapes::ShapeRef.new(shape: InputContentBlock)

    Insight.add_member(:insight_id, Shapes::ShapeRef.new(shape: InsightId, required: true, location_name: "insightId"))
    Insight.struct_class = Types::Insight

    InsightList.member = Shapes::ShapeRef.new(shape: Insight)

    InsightsFailureSignal.add_member(:category, Shapes::ShapeRef.new(shape: InsightsFailureCategory, required: true, location_name: "category"))
    InsightsFailureSignal.add_member(:evidence, Shapes::ShapeRef.new(shape: String, required: true, location_name: "evidence"))
    InsightsFailureSignal.add_member(:confidence, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "confidence"))
    InsightsFailureSignal.struct_class = Types::InsightsFailureSignal

    InsightsFailureSignalList.member = Shapes::ShapeRef.new(shape: InsightsFailureSignal)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    InvokeAgentRuntimeCommandRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "Content-Type"))
    InvokeAgentRuntimeCommandRequest.add_member(:accept, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "Accept"))
    InvokeAgentRuntimeCommandRequest.add_member(:runtime_session_id, Shapes::ShapeRef.new(shape: SessionType, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id", metadata: {"idempotencyToken" => true}))
    InvokeAgentRuntimeCommandRequest.add_member(:trace_id, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeCommandRequestTraceIdString, location: "header", location_name: "X-Amzn-Trace-Id"))
    InvokeAgentRuntimeCommandRequest.add_member(:trace_parent, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeCommandRequestTraceParentString, location: "header", location_name: "traceparent"))
    InvokeAgentRuntimeCommandRequest.add_member(:trace_state, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeCommandRequestTraceStateString, location: "header", location_name: "tracestate"))
    InvokeAgentRuntimeCommandRequest.add_member(:baggage, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeCommandRequestBaggageString, location: "header", location_name: "baggage"))
    InvokeAgentRuntimeCommandRequest.add_member(:agent_runtime_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "agentRuntimeArn"))
    InvokeAgentRuntimeCommandRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "qualifier"))
    InvokeAgentRuntimeCommandRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeCommandRequestAccountIdString, location: "querystring", location_name: "accountId"))
    InvokeAgentRuntimeCommandRequest.add_member(:body, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeCommandRequestBody, required: true, location_name: "body"))
    InvokeAgentRuntimeCommandRequest.struct_class = Types::InvokeAgentRuntimeCommandRequest
    InvokeAgentRuntimeCommandRequest[:payload] = :body
    InvokeAgentRuntimeCommandRequest[:payload_member] = InvokeAgentRuntimeCommandRequest.member(:body)

    InvokeAgentRuntimeCommandRequestBody.add_member(:command, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeCommandRequestBodyCommandString, required: true, location_name: "command"))
    InvokeAgentRuntimeCommandRequestBody.add_member(:timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "timeout"))
    InvokeAgentRuntimeCommandRequestBody.struct_class = Types::InvokeAgentRuntimeCommandRequestBody

    InvokeAgentRuntimeCommandResponse.add_member(:runtime_session_id, Shapes::ShapeRef.new(shape: SessionId, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"))
    InvokeAgentRuntimeCommandResponse.add_member(:trace_id, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Amzn-Trace-Id"))
    InvokeAgentRuntimeCommandResponse.add_member(:trace_parent, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "traceparent"))
    InvokeAgentRuntimeCommandResponse.add_member(:trace_state, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "tracestate"))
    InvokeAgentRuntimeCommandResponse.add_member(:baggage, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "baggage"))
    InvokeAgentRuntimeCommandResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "Content-Type"))
    InvokeAgentRuntimeCommandResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: HttpResponseCode, location: "statusCode", location_name: "statusCode"))
    InvokeAgentRuntimeCommandResponse.add_member(:stream, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeCommandStreamOutput, required: true, eventstream: true, location_name: "stream"))
    InvokeAgentRuntimeCommandResponse.struct_class = Types::InvokeAgentRuntimeCommandResponse
    InvokeAgentRuntimeCommandResponse[:payload] = :stream
    InvokeAgentRuntimeCommandResponse[:payload_member] = InvokeAgentRuntimeCommandResponse.member(:stream)

    InvokeAgentRuntimeCommandStreamOutput.add_member(:chunk, Shapes::ShapeRef.new(shape: ResponseChunk, event: true, location_name: "chunk"))
    InvokeAgentRuntimeCommandStreamOutput.add_member(:access_denied_exception, Shapes::ShapeRef.new(shape: AccessDeniedException, location_name: "accessDeniedException"))
    InvokeAgentRuntimeCommandStreamOutput.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    InvokeAgentRuntimeCommandStreamOutput.add_member(:resource_not_found_exception, Shapes::ShapeRef.new(shape: ResourceNotFoundException, location_name: "resourceNotFoundException"))
    InvokeAgentRuntimeCommandStreamOutput.add_member(:service_quota_exceeded_exception, Shapes::ShapeRef.new(shape: ServiceQuotaExceededException, location_name: "serviceQuotaExceededException"))
    InvokeAgentRuntimeCommandStreamOutput.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, location_name: "throttlingException"))
    InvokeAgentRuntimeCommandStreamOutput.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    InvokeAgentRuntimeCommandStreamOutput.add_member(:runtime_client_error, Shapes::ShapeRef.new(shape: RuntimeClientError, location_name: "runtimeClientError"))
    InvokeAgentRuntimeCommandStreamOutput.struct_class = Types::InvokeAgentRuntimeCommandStreamOutput

    InvokeAgentRuntimeRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "Content-Type"))
    InvokeAgentRuntimeRequest.add_member(:accept, Shapes::ShapeRef.new(shape: MimeType, location: "header", location_name: "Accept"))
    InvokeAgentRuntimeRequest.add_member(:mcp_session_id, Shapes::ShapeRef.new(shape: StringType, location: "header", location_name: "Mcp-Session-Id"))
    InvokeAgentRuntimeRequest.add_member(:runtime_session_id, Shapes::ShapeRef.new(shape: SessionType, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id", metadata: {"idempotencyToken" => true}))
    InvokeAgentRuntimeRequest.add_member(:mcp_protocol_version, Shapes::ShapeRef.new(shape: StringType, location: "header", location_name: "Mcp-Protocol-Version"))
    InvokeAgentRuntimeRequest.add_member(:mcp_method, Shapes::ShapeRef.new(shape: StringType, location: "header", location_name: "Mcp-Method"))
    InvokeAgentRuntimeRequest.add_member(:mcp_name, Shapes::ShapeRef.new(shape: StringType, location: "header", location_name: "Mcp-Name"))
    InvokeAgentRuntimeRequest.add_member(:runtime_user_id, Shapes::ShapeRef.new(shape: StringType, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Runtime-User-Id"))
    InvokeAgentRuntimeRequest.add_member(:trace_id, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeRequestTraceIdString, location: "header", location_name: "X-Amzn-Trace-Id"))
    InvokeAgentRuntimeRequest.add_member(:trace_parent, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeRequestTraceParentString, location: "header", location_name: "traceparent"))
    InvokeAgentRuntimeRequest.add_member(:trace_state, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeRequestTraceStateString, location: "header", location_name: "tracestate"))
    InvokeAgentRuntimeRequest.add_member(:baggage, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeRequestBaggageString, location: "header", location_name: "baggage"))
    InvokeAgentRuntimeRequest.add_member(:agent_runtime_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "agentRuntimeArn"))
    InvokeAgentRuntimeRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "qualifier"))
    InvokeAgentRuntimeRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: InvokeAgentRuntimeRequestAccountIdString, location: "querystring", location_name: "accountId"))
    InvokeAgentRuntimeRequest.add_member(:payload, Shapes::ShapeRef.new(shape: Body, required: true, location_name: "payload"))
    InvokeAgentRuntimeRequest.struct_class = Types::InvokeAgentRuntimeRequest
    InvokeAgentRuntimeRequest[:payload] = :payload
    InvokeAgentRuntimeRequest[:payload_member] = InvokeAgentRuntimeRequest.member(:payload)

    InvokeAgentRuntimeResponse.add_member(:runtime_session_id, Shapes::ShapeRef.new(shape: SessionId, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"))
    InvokeAgentRuntimeResponse.add_member(:mcp_session_id, Shapes::ShapeRef.new(shape: SessionId, location: "header", location_name: "Mcp-Session-Id"))
    InvokeAgentRuntimeResponse.add_member(:mcp_protocol_version, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Mcp-Protocol-Version"))
    InvokeAgentRuntimeResponse.add_member(:trace_id, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Amzn-Trace-Id"))
    InvokeAgentRuntimeResponse.add_member(:trace_parent, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "traceparent"))
    InvokeAgentRuntimeResponse.add_member(:trace_state, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "tracestate"))
    InvokeAgentRuntimeResponse.add_member(:baggage, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "baggage"))
    InvokeAgentRuntimeResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: String, required: true, location: "header", location_name: "Content-Type"))
    InvokeAgentRuntimeResponse.add_member(:response, Shapes::ShapeRef.new(shape: ResponseStream, location_name: "response"))
    InvokeAgentRuntimeResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: HttpResponseCode, location: "statusCode", location_name: "statusCode"))
    InvokeAgentRuntimeResponse.struct_class = Types::InvokeAgentRuntimeResponse
    InvokeAgentRuntimeResponse[:payload] = :response
    InvokeAgentRuntimeResponse[:payload_member] = InvokeAgentRuntimeResponse.member(:response)

    InvokeBrowserRequest.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "browserIdentifier"))
    InvokeBrowserRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location: "header", location_name: "x-amzn-browser-session-id"))
    InvokeBrowserRequest.add_member(:action, Shapes::ShapeRef.new(shape: BrowserAction, required: true, location_name: "action"))
    InvokeBrowserRequest.struct_class = Types::InvokeBrowserRequest

    InvokeBrowserResponse.add_member(:result, Shapes::ShapeRef.new(shape: BrowserActionResult, required: true, location_name: "result"))
    InvokeBrowserResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location: "header", location_name: "x-amzn-browser-session-id"))
    InvokeBrowserResponse.struct_class = Types::InvokeBrowserResponse

    InvokeCodeInterpreterRequest.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "codeInterpreterIdentifier"))
    InvokeCodeInterpreterRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, location: "header", location_name: "x-amzn-code-interpreter-session-id"))
    InvokeCodeInterpreterRequest.add_member(:trace_id, Shapes::ShapeRef.new(shape: InvokeCodeInterpreterRequestTraceIdString, location: "header", location_name: "X-Amzn-Trace-Id"))
    InvokeCodeInterpreterRequest.add_member(:trace_parent, Shapes::ShapeRef.new(shape: InvokeCodeInterpreterRequestTraceParentString, location: "header", location_name: "traceparent"))
    InvokeCodeInterpreterRequest.add_member(:name, Shapes::ShapeRef.new(shape: ToolName, required: true, location_name: "name"))
    InvokeCodeInterpreterRequest.add_member(:arguments, Shapes::ShapeRef.new(shape: ToolArguments, location_name: "arguments"))
    InvokeCodeInterpreterRequest.struct_class = Types::InvokeCodeInterpreterRequest

    InvokeCodeInterpreterResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, location: "header", location_name: "x-amzn-code-interpreter-session-id"))
    InvokeCodeInterpreterResponse.add_member(:stream, Shapes::ShapeRef.new(shape: CodeInterpreterStreamOutput, required: true, eventstream: true, location_name: "stream"))
    InvokeCodeInterpreterResponse.struct_class = Types::InvokeCodeInterpreterResponse
    InvokeCodeInterpreterResponse[:payload] = :stream
    InvokeCodeInterpreterResponse[:payload_member] = InvokeCodeInterpreterResponse.member(:stream)

    InvokeHarnessRequest.add_member(:harness_arn, Shapes::ShapeRef.new(shape: HarnessArn, required: true, location: "querystring", location_name: "harnessArn"))
    InvokeHarnessRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: HarnessEndpointName, location: "querystring", location_name: "qualifier"))
    InvokeHarnessRequest.add_member(:runtime_session_id, Shapes::ShapeRef.new(shape: InvokeHarnessRequestRuntimeSessionIdString, required: true, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"))
    InvokeHarnessRequest.add_member(:runtime_user_id, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Runtime-User-Id"))
    InvokeHarnessRequest.add_member(:trace_parent, Shapes::ShapeRef.new(shape: InvokeHarnessRequestTraceParentString, location: "header", location_name: "traceparent"))
    InvokeHarnessRequest.add_member(:trace_state, Shapes::ShapeRef.new(shape: InvokeHarnessRequestTraceStateString, location: "header", location_name: "tracestate"))
    InvokeHarnessRequest.add_member(:trace_id, Shapes::ShapeRef.new(shape: InvokeHarnessRequestTraceIdString, location: "header", location_name: "X-Amzn-Trace-Id"))
    InvokeHarnessRequest.add_member(:baggage, Shapes::ShapeRef.new(shape: InvokeHarnessRequestBaggageString, location: "header", location_name: "baggage"))
    InvokeHarnessRequest.add_member(:messages, Shapes::ShapeRef.new(shape: HarnessMessages, required: true, location_name: "messages"))
    InvokeHarnessRequest.add_member(:model, Shapes::ShapeRef.new(shape: HarnessModelConfiguration, location_name: "model"))
    InvokeHarnessRequest.add_member(:system_prompt, Shapes::ShapeRef.new(shape: HarnessSystemPrompt, location_name: "systemPrompt"))
    InvokeHarnessRequest.add_member(:tools, Shapes::ShapeRef.new(shape: HarnessTools, location_name: "tools"))
    InvokeHarnessRequest.add_member(:skills, Shapes::ShapeRef.new(shape: HarnessSkills, location_name: "skills"))
    InvokeHarnessRequest.add_member(:allowed_tools, Shapes::ShapeRef.new(shape: HarnessAllowedTools, location_name: "allowedTools"))
    InvokeHarnessRequest.add_member(:max_iterations, Shapes::ShapeRef.new(shape: Integer, location_name: "maxIterations"))
    InvokeHarnessRequest.add_member(:max_tokens, Shapes::ShapeRef.new(shape: Integer, location_name: "maxTokens"))
    InvokeHarnessRequest.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "timeoutSeconds"))
    InvokeHarnessRequest.add_member(:actor_id, Shapes::ShapeRef.new(shape: String, location_name: "actorId"))
    InvokeHarnessRequest.struct_class = Types::InvokeHarnessRequest

    InvokeHarnessResponse.add_member(:stream, Shapes::ShapeRef.new(shape: InvokeHarnessStreamOutput, required: true, eventstream: true, location_name: "stream"))
    InvokeHarnessResponse.struct_class = Types::InvokeHarnessResponse
    InvokeHarnessResponse[:payload] = :stream
    InvokeHarnessResponse[:payload_member] = InvokeHarnessResponse.member(:stream)

    InvokeHarnessStreamOutput.add_member(:message_start, Shapes::ShapeRef.new(shape: HarnessMessageStartEvent, event: true, location_name: "messageStart"))
    InvokeHarnessStreamOutput.add_member(:content_block_start, Shapes::ShapeRef.new(shape: HarnessContentBlockStartEvent, event: true, location_name: "contentBlockStart"))
    InvokeHarnessStreamOutput.add_member(:content_block_delta, Shapes::ShapeRef.new(shape: HarnessContentBlockDeltaEvent, event: true, location_name: "contentBlockDelta"))
    InvokeHarnessStreamOutput.add_member(:content_block_stop, Shapes::ShapeRef.new(shape: HarnessContentBlockStopEvent, event: true, location_name: "contentBlockStop"))
    InvokeHarnessStreamOutput.add_member(:message_stop, Shapes::ShapeRef.new(shape: HarnessMessageStopEvent, event: true, location_name: "messageStop"))
    InvokeHarnessStreamOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: HarnessMetadataEvent, event: true, location_name: "metadata"))
    InvokeHarnessStreamOutput.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, location_name: "internalServerException"))
    InvokeHarnessStreamOutput.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, location_name: "validationException"))
    InvokeHarnessStreamOutput.add_member(:runtime_client_error, Shapes::ShapeRef.new(shape: RuntimeClientError, location_name: "runtimeClientError"))
    InvokeHarnessStreamOutput.struct_class = Types::InvokeHarnessStreamOutput

    KeyList.member = Shapes::ShapeRef.new(shape: String)

    KeyPressArguments.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "key"))
    KeyPressArguments.add_member(:presses, Shapes::ShapeRef.new(shape: KeyPressArgumentsPressesInteger, location_name: "presses"))
    KeyPressArguments.struct_class = Types::KeyPressArguments

    KeyPressResult.add_member(:status, Shapes::ShapeRef.new(shape: BrowserActionStatus, required: true, location_name: "status"))
    KeyPressResult.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    KeyPressResult.struct_class = Types::KeyPressResult

    KeyShortcutArguments.add_member(:keys, Shapes::ShapeRef.new(shape: KeyList, required: true, location_name: "keys"))
    KeyShortcutArguments.struct_class = Types::KeyShortcutArguments

    KeyShortcutResult.add_member(:status, Shapes::ShapeRef.new(shape: BrowserActionStatus, required: true, location_name: "status"))
    KeyShortcutResult.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    KeyShortcutResult.struct_class = Types::KeyShortcutResult

    KeyTypeArguments.add_member(:text, Shapes::ShapeRef.new(shape: KeyTypeArgumentsTextString, required: true, location_name: "text"))
    KeyTypeArguments.struct_class = Types::KeyTypeArguments

    KeyTypeResult.add_member(:status, Shapes::ShapeRef.new(shape: BrowserActionStatus, required: true, location_name: "status"))
    KeyTypeResult.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    KeyTypeResult.struct_class = Types::KeyTypeResult

    LeftExpression.add_member(:metadata_key, Shapes::ShapeRef.new(shape: MetadataKey, location_name: "metadataKey"))
    LeftExpression.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    LeftExpression.add_member_subclass(:metadata_key, Types::LeftExpression::MetadataKey)
    LeftExpression.add_member_subclass(:unknown, Types::LeftExpression::Unknown)
    LeftExpression.struct_class = Types::LeftExpression

    LinkedAccount.add_member(:email, Shapes::ShapeRef.new(shape: LinkedAccountEmail, location_name: "email"))
    LinkedAccount.add_member(:sms, Shapes::ShapeRef.new(shape: LinkedAccountSms, location_name: "sms"))
    LinkedAccount.add_member(:developer_jwt, Shapes::ShapeRef.new(shape: LinkedAccountDeveloperJwt, location_name: "developerJwt"))
    LinkedAccount.add_member(:o_auth_2, Shapes::ShapeRef.new(shape: LinkedAccountOAuth2, location_name: "oAuth2"))
    LinkedAccount.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    LinkedAccount.add_member_subclass(:email, Types::LinkedAccount::Email)
    LinkedAccount.add_member_subclass(:sms, Types::LinkedAccount::Sms)
    LinkedAccount.add_member_subclass(:developer_jwt, Types::LinkedAccount::DeveloperJwt)
    LinkedAccount.add_member_subclass(:o_auth_2, Types::LinkedAccount::OAuth2)
    LinkedAccount.add_member_subclass(:unknown, Types::LinkedAccount::Unknown)
    LinkedAccount.struct_class = Types::LinkedAccount

    LinkedAccountDeveloperJwt.add_member(:kid, Shapes::ShapeRef.new(shape: JwtKeyId, required: true, location_name: "kid"))
    LinkedAccountDeveloperJwt.add_member(:sub, Shapes::ShapeRef.new(shape: LinkedAccountDeveloperJwtSubString, required: true, location_name: "sub"))
    LinkedAccountDeveloperJwt.struct_class = Types::LinkedAccountDeveloperJwt

    LinkedAccountEmail.add_member(:email_address, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "emailAddress"))
    LinkedAccountEmail.struct_class = Types::LinkedAccountEmail

    LinkedAccountList.member = Shapes::ShapeRef.new(shape: LinkedAccount)

    LinkedAccountOAuth2.add_member(:google, Shapes::ShapeRef.new(shape: OAuth2Authentication, location_name: "google"))
    LinkedAccountOAuth2.add_member(:apple, Shapes::ShapeRef.new(shape: OAuth2Authentication, location_name: "apple"))
    LinkedAccountOAuth2.add_member(:x, Shapes::ShapeRef.new(shape: OAuth2Authentication, location_name: "x"))
    LinkedAccountOAuth2.add_member(:telegram, Shapes::ShapeRef.new(shape: OAuth2Authentication, location_name: "telegram"))
    LinkedAccountOAuth2.add_member(:github, Shapes::ShapeRef.new(shape: OAuth2Authentication, location_name: "github"))
    LinkedAccountOAuth2.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    LinkedAccountOAuth2.add_member_subclass(:google, Types::LinkedAccountOAuth2::Google)
    LinkedAccountOAuth2.add_member_subclass(:apple, Types::LinkedAccountOAuth2::Apple)
    LinkedAccountOAuth2.add_member_subclass(:x, Types::LinkedAccountOAuth2::X)
    LinkedAccountOAuth2.add_member_subclass(:telegram, Types::LinkedAccountOAuth2::Telegram)
    LinkedAccountOAuth2.add_member_subclass(:github, Types::LinkedAccountOAuth2::Github)
    LinkedAccountOAuth2.add_member_subclass(:unknown, Types::LinkedAccountOAuth2::Unknown)
    LinkedAccountOAuth2.struct_class = Types::LinkedAccountOAuth2

    LinkedAccountSms.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, required: true, location_name: "phoneNumber"))
    LinkedAccountSms.struct_class = Types::LinkedAccountSms

    ListABTestsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListABTestsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListABTestsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListABTestsRequest.struct_class = Types::ListABTestsRequest

    ListABTestsResponse.add_member(:ab_tests, Shapes::ShapeRef.new(shape: ABTestSummaryList, required: true, location_name: "abTests"))
    ListABTestsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListABTestsResponse.struct_class = Types::ListABTestsResponse

    ListActorsInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    ListActorsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListActorsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListActorsInput.struct_class = Types::ListActorsInput

    ListActorsOutput.add_member(:actor_summaries, Shapes::ShapeRef.new(shape: ActorSummaryList, required: true, location_name: "actorSummaries"))
    ListActorsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListActorsOutput.struct_class = Types::ListActorsOutput

    ListBatchEvaluationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListBatchEvaluationsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListBatchEvaluationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListBatchEvaluationsRequest.struct_class = Types::ListBatchEvaluationsRequest

    ListBatchEvaluationsResponse.add_member(:batch_evaluations, Shapes::ShapeRef.new(shape: BatchEvaluationSummaryList, required: true, location_name: "batchEvaluations"))
    ListBatchEvaluationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBatchEvaluationsResponse.struct_class = Types::ListBatchEvaluationsResponse

    ListBrowserSessionsRequest.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "browserIdentifier"))
    ListBrowserSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBrowserSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBrowserSessionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: BrowserSessionStatus, location_name: "status"))
    ListBrowserSessionsRequest.struct_class = Types::ListBrowserSessionsRequest

    ListBrowserSessionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: BrowserSessionSummaries, required: true, location_name: "items"))
    ListBrowserSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBrowserSessionsResponse.struct_class = Types::ListBrowserSessionsResponse

    ListCodeInterpreterSessionsRequest.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "codeInterpreterIdentifier"))
    ListCodeInterpreterSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListCodeInterpreterSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeInterpreterSessionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: CodeInterpreterSessionStatus, location_name: "status"))
    ListCodeInterpreterSessionsRequest.struct_class = Types::ListCodeInterpreterSessionsRequest

    ListCodeInterpreterSessionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: CodeInterpreterSessionSummaries, required: true, location_name: "items"))
    ListCodeInterpreterSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeInterpreterSessionsResponse.struct_class = Types::ListCodeInterpreterSessionsResponse

    ListEventsInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    ListEventsInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    ListEventsInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location: "uri", location_name: "actorId"))
    ListEventsInput.add_member(:include_payloads, Shapes::ShapeRef.new(shape: Boolean, location_name: "includePayloads"))
    ListEventsInput.add_member(:filter, Shapes::ShapeRef.new(shape: FilterInput, location_name: "filter"))
    ListEventsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEventsInput.struct_class = Types::ListEventsInput

    ListEventsOutput.add_member(:events, Shapes::ShapeRef.new(shape: EventList, required: true, location_name: "events"))
    ListEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEventsOutput.struct_class = Types::ListEventsOutput

    ListMemoryExtractionJobsInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    ListMemoryExtractionJobsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMemoryExtractionJobsInputMaxResultsInteger, location_name: "maxResults"))
    ListMemoryExtractionJobsInput.add_member(:filter, Shapes::ShapeRef.new(shape: ExtractionJobFilterInput, location_name: "filter"))
    ListMemoryExtractionJobsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListMemoryExtractionJobsInput.struct_class = Types::ListMemoryExtractionJobsInput

    ListMemoryExtractionJobsOutput.add_member(:jobs, Shapes::ShapeRef.new(shape: ExtractionJobMetadataList, required: true, location_name: "jobs"))
    ListMemoryExtractionJobsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListMemoryExtractionJobsOutput.struct_class = Types::ListMemoryExtractionJobsOutput

    ListMemoryRecordsInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    ListMemoryRecordsInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "namespace"))
    ListMemoryRecordsInput.add_member(:namespace_path, Shapes::ShapeRef.new(shape: Namespace, location_name: "namespacePath"))
    ListMemoryRecordsInput.add_member(:memory_strategy_id, Shapes::ShapeRef.new(shape: MemoryStrategyId, location_name: "memoryStrategyId"))
    ListMemoryRecordsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListMemoryRecordsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListMemoryRecordsInput.add_member(:metadata_filters, Shapes::ShapeRef.new(shape: MemoryMetadataFilterList, location_name: "metadataFilters"))
    ListMemoryRecordsInput.struct_class = Types::ListMemoryRecordsInput

    ListMemoryRecordsOutput.add_member(:memory_record_summaries, Shapes::ShapeRef.new(shape: MemoryRecordSummaryList, required: true, location_name: "memoryRecordSummaries"))
    ListMemoryRecordsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListMemoryRecordsOutput.struct_class = Types::ListMemoryRecordsOutput

    ListPaymentInstrumentsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-User-Id"))
    ListPaymentInstrumentsRequest.add_member(:agent_name, Shapes::ShapeRef.new(shape: PaymentAgentName, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"))
    ListPaymentInstrumentsRequest.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    ListPaymentInstrumentsRequest.add_member(:payment_connector_id, Shapes::ShapeRef.new(shape: PaymentConnectorId, location_name: "paymentConnectorId"))
    ListPaymentInstrumentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPaymentInstrumentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListPaymentInstrumentsRequest.struct_class = Types::ListPaymentInstrumentsRequest

    ListPaymentInstrumentsResponse.add_member(:payment_instruments, Shapes::ShapeRef.new(shape: PaymentInstrumentSummaryList, required: true, location_name: "paymentInstruments"))
    ListPaymentInstrumentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPaymentInstrumentsResponse.struct_class = Types::ListPaymentInstrumentsResponse

    ListPaymentSessionsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-User-Id"))
    ListPaymentSessionsRequest.add_member(:agent_name, Shapes::ShapeRef.new(shape: PaymentAgentName, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"))
    ListPaymentSessionsRequest.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    ListPaymentSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPaymentSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListPaymentSessionsRequest.struct_class = Types::ListPaymentSessionsRequest

    ListPaymentSessionsResponse.add_member(:payment_sessions, Shapes::ShapeRef.new(shape: PaymentSessionSummaryList, required: true, location_name: "paymentSessions"))
    ListPaymentSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPaymentSessionsResponse.struct_class = Types::ListPaymentSessionsResponse

    ListRecommendationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRecommendationsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRecommendationsRequest.add_member(:status_filter, Shapes::ShapeRef.new(shape: RecommendationStatus, location: "querystring", location_name: "status"))
    ListRecommendationsRequest.struct_class = Types::ListRecommendationsRequest

    ListRecommendationsResponse.add_member(:recommendation_summaries, Shapes::ShapeRef.new(shape: RecommendationSummaryList, required: true, location_name: "recommendationSummaries"))
    ListRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRecommendationsResponse.struct_class = Types::ListRecommendationsResponse

    ListSessionsInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    ListSessionsInput.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location: "uri", location_name: "actorId"))
    ListSessionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSessionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSessionsInput.add_member(:filter, Shapes::ShapeRef.new(shape: SessionFilter, location_name: "filter"))
    ListSessionsInput.struct_class = Types::ListSessionsInput

    ListSessionsOutput.add_member(:session_summaries, Shapes::ShapeRef.new(shape: SessionSummaryList, required: true, location_name: "sessionSummaries"))
    ListSessionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSessionsOutput.struct_class = Types::ListSessionsOutput

    LiveViewStream.add_member(:stream_endpoint, Shapes::ShapeRef.new(shape: BrowserStreamEndpoint, location_name: "streamEndpoint"))
    LiveViewStream.struct_class = Types::LiveViewStream

    McpDescriptor.add_member(:server, Shapes::ShapeRef.new(shape: ServerDefinition, required: true, location_name: "server"))
    McpDescriptor.add_member(:tools, Shapes::ShapeRef.new(shape: ToolsDefinition, required: true, location_name: "tools"))
    McpDescriptor.struct_class = Types::McpDescriptor

    MemoryContent.add_member(:text, Shapes::ShapeRef.new(shape: MemoryContentTextString, location_name: "text"))
    MemoryContent.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MemoryContent.add_member_subclass(:text, Types::MemoryContent::Text)
    MemoryContent.add_member_subclass(:unknown, Types::MemoryContent::Unknown)
    MemoryContent.struct_class = Types::MemoryContent

    MemoryJsonData.add_member(:content, Shapes::ShapeRef.new(shape: MemoryJsonDataContent, required: true, location_name: "content"))
    MemoryJsonData.struct_class = Types::MemoryJsonData

    MemoryMetadataFilterExpression.add_member(:left, Shapes::ShapeRef.new(shape: MemoryRecordLeftExpression, required: true, location_name: "left"))
    MemoryMetadataFilterExpression.add_member(:operator, Shapes::ShapeRef.new(shape: MemoryRecordOperatorType, required: true, location_name: "operator"))
    MemoryMetadataFilterExpression.add_member(:right, Shapes::ShapeRef.new(shape: MemoryRecordRightExpression, location_name: "right"))
    MemoryMetadataFilterExpression.struct_class = Types::MemoryMetadataFilterExpression

    MemoryMetadataFilterList.member = Shapes::ShapeRef.new(shape: MemoryMetadataFilterExpression)

    MemoryRecord.add_member(:memory_record_id, Shapes::ShapeRef.new(shape: MemoryRecordId, required: true, location_name: "memoryRecordId"))
    MemoryRecord.add_member(:content, Shapes::ShapeRef.new(shape: MemoryContent, required: true, location_name: "content"))
    MemoryRecord.add_member(:memory_strategy_id, Shapes::ShapeRef.new(shape: MemoryStrategyId, required: true, location_name: "memoryStrategyId"))
    MemoryRecord.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, required: true, location_name: "namespaces"))
    MemoryRecord.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    MemoryRecord.add_member(:metadata, Shapes::ShapeRef.new(shape: MemoryRecordMetadataMap, location_name: "metadata"))
    MemoryRecord.struct_class = Types::MemoryRecord

    MemoryRecordCreateInput.add_member(:request_identifier, Shapes::ShapeRef.new(shape: RequestIdentifier, required: true, location_name: "requestIdentifier"))
    MemoryRecordCreateInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, required: true, location_name: "namespaces"))
    MemoryRecordCreateInput.add_member(:content, Shapes::ShapeRef.new(shape: MemoryContent, required: true, location_name: "content"))
    MemoryRecordCreateInput.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    MemoryRecordCreateInput.add_member(:memory_strategy_id, Shapes::ShapeRef.new(shape: MemoryStrategyId, location_name: "memoryStrategyId"))
    MemoryRecordCreateInput.add_member(:metadata, Shapes::ShapeRef.new(shape: MemoryRecordMetadataMap, location_name: "metadata"))
    MemoryRecordCreateInput.struct_class = Types::MemoryRecordCreateInput

    MemoryRecordDeleteInput.add_member(:memory_record_id, Shapes::ShapeRef.new(shape: MemoryRecordId, required: true, location_name: "memoryRecordId"))
    MemoryRecordDeleteInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "namespace"))
    MemoryRecordDeleteInput.struct_class = Types::MemoryRecordDeleteInput

    MemoryRecordLeftExpression.add_member(:metadata_key, Shapes::ShapeRef.new(shape: MetadataKey, location_name: "metadataKey"))
    MemoryRecordLeftExpression.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MemoryRecordLeftExpression.add_member_subclass(:metadata_key, Types::MemoryRecordLeftExpression::MetadataKey)
    MemoryRecordLeftExpression.add_member_subclass(:unknown, Types::MemoryRecordLeftExpression::Unknown)
    MemoryRecordLeftExpression.struct_class = Types::MemoryRecordLeftExpression

    MemoryRecordMetadataMap.key = Shapes::ShapeRef.new(shape: MetadataKey)
    MemoryRecordMetadataMap.value = Shapes::ShapeRef.new(shape: MemoryRecordMetadataValue)

    MemoryRecordMetadataValue.add_member(:string_value, Shapes::ShapeRef.new(shape: StringValue, location_name: "stringValue"))
    MemoryRecordMetadataValue.add_member(:string_list_value, Shapes::ShapeRef.new(shape: StringValueList, location_name: "stringListValue"))
    MemoryRecordMetadataValue.add_member(:number_value, Shapes::ShapeRef.new(shape: Double, location_name: "numberValue"))
    MemoryRecordMetadataValue.add_member(:date_time_value, Shapes::ShapeRef.new(shape: Timestamp, location_name: "dateTimeValue"))
    MemoryRecordMetadataValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MemoryRecordMetadataValue.add_member_subclass(:string_value, Types::MemoryRecordMetadataValue::StringValue)
    MemoryRecordMetadataValue.add_member_subclass(:string_list_value, Types::MemoryRecordMetadataValue::StringListValue)
    MemoryRecordMetadataValue.add_member_subclass(:number_value, Types::MemoryRecordMetadataValue::NumberValue)
    MemoryRecordMetadataValue.add_member_subclass(:date_time_value, Types::MemoryRecordMetadataValue::DateTimeValue)
    MemoryRecordMetadataValue.add_member_subclass(:unknown, Types::MemoryRecordMetadataValue::Unknown)
    MemoryRecordMetadataValue.struct_class = Types::MemoryRecordMetadataValue

    MemoryRecordOutput.add_member(:memory_record_id, Shapes::ShapeRef.new(shape: MemoryRecordId, required: true, location_name: "memoryRecordId"))
    MemoryRecordOutput.add_member(:status, Shapes::ShapeRef.new(shape: MemoryRecordStatus, required: true, location_name: "status"))
    MemoryRecordOutput.add_member(:request_identifier, Shapes::ShapeRef.new(shape: RequestIdentifier, location_name: "requestIdentifier"))
    MemoryRecordOutput.add_member(:error_code, Shapes::ShapeRef.new(shape: Integer, location_name: "errorCode"))
    MemoryRecordOutput.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    MemoryRecordOutput.struct_class = Types::MemoryRecordOutput

    MemoryRecordRightExpression.add_member(:metadata_value, Shapes::ShapeRef.new(shape: MemoryRecordMetadataValue, location_name: "metadataValue"))
    MemoryRecordRightExpression.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MemoryRecordRightExpression.add_member_subclass(:metadata_value, Types::MemoryRecordRightExpression::MetadataValue)
    MemoryRecordRightExpression.add_member_subclass(:unknown, Types::MemoryRecordRightExpression::Unknown)
    MemoryRecordRightExpression.struct_class = Types::MemoryRecordRightExpression

    MemoryRecordSummary.add_member(:memory_record_id, Shapes::ShapeRef.new(shape: MemoryRecordId, required: true, location_name: "memoryRecordId"))
    MemoryRecordSummary.add_member(:content, Shapes::ShapeRef.new(shape: MemoryContent, required: true, location_name: "content"))
    MemoryRecordSummary.add_member(:memory_strategy_id, Shapes::ShapeRef.new(shape: MemoryStrategyId, required: true, location_name: "memoryStrategyId"))
    MemoryRecordSummary.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, required: true, location_name: "namespaces"))
    MemoryRecordSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    MemoryRecordSummary.add_member(:score, Shapes::ShapeRef.new(shape: Double, location_name: "score"))
    MemoryRecordSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: MemoryRecordMetadataMap, location_name: "metadata"))
    MemoryRecordSummary.struct_class = Types::MemoryRecordSummary

    MemoryRecordSummaryList.member = Shapes::ShapeRef.new(shape: MemoryRecordSummary)

    MemoryRecordUpdateInput.add_member(:memory_record_id, Shapes::ShapeRef.new(shape: MemoryRecordId, required: true, location_name: "memoryRecordId"))
    MemoryRecordUpdateInput.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    MemoryRecordUpdateInput.add_member(:content, Shapes::ShapeRef.new(shape: MemoryContent, location_name: "content"))
    MemoryRecordUpdateInput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "namespaces"))
    MemoryRecordUpdateInput.add_member(:source_namespaces, Shapes::ShapeRef.new(shape: NamespacesList, location_name: "sourceNamespaces"))
    MemoryRecordUpdateInput.add_member(:memory_strategy_id, Shapes::ShapeRef.new(shape: MemoryStrategyId, location_name: "memoryStrategyId"))
    MemoryRecordUpdateInput.add_member(:metadata, Shapes::ShapeRef.new(shape: MemoryRecordMetadataMap, location_name: "metadata"))
    MemoryRecordUpdateInput.struct_class = Types::MemoryRecordUpdateInput

    MemoryRecordsCreateInputList.member = Shapes::ShapeRef.new(shape: MemoryRecordCreateInput)

    MemoryRecordsDeleteInputList.member = Shapes::ShapeRef.new(shape: MemoryRecordDeleteInput)

    MemoryRecordsOutputList.member = Shapes::ShapeRef.new(shape: MemoryRecordOutput)

    MemoryRecordsUpdateInputList.member = Shapes::ShapeRef.new(shape: MemoryRecordUpdateInput)

    MessageMetadata.add_member(:event_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "eventId"))
    MessageMetadata.add_member(:message_index, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "messageIndex"))
    MessageMetadata.struct_class = Types::MessageMetadata

    MessagesList.member = Shapes::ShapeRef.new(shape: MessageMetadata)

    MetadataMap.key = Shapes::ShapeRef.new(shape: MetadataKey)
    MetadataMap.value = Shapes::ShapeRef.new(shape: MetadataValue)

    MetadataValue.add_member(:string_value, Shapes::ShapeRef.new(shape: MetadataValueStringValueString, location_name: "stringValue"))
    MetadataValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MetadataValue.add_member_subclass(:string_value, Types::MetadataValue::StringValue)
    MetadataValue.add_member_subclass(:unknown, Types::MetadataValue::Unknown)
    MetadataValue.struct_class = Types::MetadataValue

    MouseClickArguments.add_member(:x, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "x"))
    MouseClickArguments.add_member(:y, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "y"))
    MouseClickArguments.add_member(:button, Shapes::ShapeRef.new(shape: MouseButton, location_name: "button"))
    MouseClickArguments.add_member(:click_count, Shapes::ShapeRef.new(shape: MouseClickArgumentsClickCountInteger, location_name: "clickCount"))
    MouseClickArguments.struct_class = Types::MouseClickArguments

    MouseClickResult.add_member(:status, Shapes::ShapeRef.new(shape: BrowserActionStatus, required: true, location_name: "status"))
    MouseClickResult.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    MouseClickResult.struct_class = Types::MouseClickResult

    MouseDragArguments.add_member(:end_x, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "endX"))
    MouseDragArguments.add_member(:end_y, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "endY"))
    MouseDragArguments.add_member(:start_x, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "startX"))
    MouseDragArguments.add_member(:start_y, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "startY"))
    MouseDragArguments.add_member(:button, Shapes::ShapeRef.new(shape: MouseButton, location_name: "button"))
    MouseDragArguments.struct_class = Types::MouseDragArguments

    MouseDragResult.add_member(:status, Shapes::ShapeRef.new(shape: BrowserActionStatus, required: true, location_name: "status"))
    MouseDragResult.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    MouseDragResult.struct_class = Types::MouseDragResult

    MouseMoveArguments.add_member(:x, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "x"))
    MouseMoveArguments.add_member(:y, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "y"))
    MouseMoveArguments.struct_class = Types::MouseMoveArguments

    MouseMoveResult.add_member(:status, Shapes::ShapeRef.new(shape: BrowserActionStatus, required: true, location_name: "status"))
    MouseMoveResult.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    MouseMoveResult.struct_class = Types::MouseMoveResult

    MouseScrollArguments.add_member(:x, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "x"))
    MouseScrollArguments.add_member(:y, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "y"))
    MouseScrollArguments.add_member(:delta_x, Shapes::ShapeRef.new(shape: MouseScrollArgumentsDeltaXInteger, location_name: "deltaX"))
    MouseScrollArguments.add_member(:delta_y, Shapes::ShapeRef.new(shape: MouseScrollArgumentsDeltaYInteger, location_name: "deltaY"))
    MouseScrollArguments.struct_class = Types::MouseScrollArguments

    MouseScrollResult.add_member(:status, Shapes::ShapeRef.new(shape: BrowserActionStatus, required: true, location_name: "status"))
    MouseScrollResult.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    MouseScrollResult.struct_class = Types::MouseScrollResult

    MppPaymentInput.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    MppPaymentInput.add_member(:www_authenticate_headers, Shapes::ShapeRef.new(shape: WwwAuthenticateHeaderList, required: true, location_name: "wwwAuthenticateHeaders"))
    MppPaymentInput.add_member(:buyer_pays_gas_fees, Shapes::ShapeRef.new(shape: Boolean, location_name: "buyerPaysGasFees"))
    MppPaymentInput.struct_class = Types::MppPaymentInput

    MppPaymentOutput.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    MppPaymentOutput.add_member(:selected_payment_id, Shapes::ShapeRef.new(shape: MppPaymentOutputSelectedPaymentIdString, required: true, location_name: "selectedPaymentId"))
    MppPaymentOutput.add_member(:payment_credential, Shapes::ShapeRef.new(shape: MppPaymentCredential, required: true, location_name: "paymentCredential"))
    MppPaymentOutput.struct_class = Types::MppPaymentOutput

    NamespaceVariablesMap.key = Shapes::ShapeRef.new(shape: NamespaceVariableName)
    NamespaceVariablesMap.value = Shapes::ShapeRef.new(shape: NamespaceVariableValue)

    NamespacesList.member = Shapes::ShapeRef.new(shape: Namespace)

    OAuth2Authentication.add_member(:sub, Shapes::ShapeRef.new(shape: OAuth2AuthenticationSubString, required: true, location_name: "sub"))
    OAuth2Authentication.add_member(:email_address, Shapes::ShapeRef.new(shape: Email, location_name: "emailAddress"))
    OAuth2Authentication.add_member(:name, Shapes::ShapeRef.new(shape: OAuth2AuthenticationNameString, location_name: "name"))
    OAuth2Authentication.add_member(:username, Shapes::ShapeRef.new(shape: OAuth2AuthenticationUsernameString, location_name: "username"))
    OAuth2Authentication.struct_class = Types::OAuth2Authentication

    OAuthCredentialProvider.add_member(:provider_arn, Shapes::ShapeRef.new(shape: OAuthCredentialProviderArn, required: true, location_name: "providerArn"))
    OAuthCredentialProvider.add_member(:scopes, Shapes::ShapeRef.new(shape: OAuthScopes, required: true, location_name: "scopes"))
    OAuthCredentialProvider.add_member(:custom_parameters, Shapes::ShapeRef.new(shape: OAuthCustomParameters, location_name: "customParameters"))
    OAuthCredentialProvider.add_member(:grant_type, Shapes::ShapeRef.new(shape: OAuthGrantType, location_name: "grantType"))
    OAuthCredentialProvider.add_member(:default_return_url, Shapes::ShapeRef.new(shape: OAuthDefaultReturnUrl, location_name: "defaultReturnUrl"))
    OAuthCredentialProvider.struct_class = Types::OAuthCredentialProvider

    OAuthCustomParameters.key = Shapes::ShapeRef.new(shape: OAuthCustomParametersKey)
    OAuthCustomParameters.value = Shapes::ShapeRef.new(shape: OAuthCustomParametersValue)

    OAuthScopes.member = Shapes::ShapeRef.new(shape: OAuthScope)

    OnlineEvaluationConfigSource.add_member(:online_evaluation_config_arn, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigArn, required: true, location_name: "onlineEvaluationConfigArn"))
    OnlineEvaluationConfigSource.add_member(:time_range, Shapes::ShapeRef.new(shape: SessionFilterConfig, location_name: "timeRange"))
    OnlineEvaluationConfigSource.struct_class = Types::OnlineEvaluationConfigSource

    OnlineEvaluationTraceConfig.add_member(:online_evaluation_config_arn, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigArn, required: true, location_name: "onlineEvaluationConfigArn"))
    OnlineEvaluationTraceConfig.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "startTime"))
    OnlineEvaluationTraceConfig.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "endTime"))
    OnlineEvaluationTraceConfig.struct_class = Types::OnlineEvaluationTraceConfig

    OutputConfig.add_member(:cloud_watch_config, Shapes::ShapeRef.new(shape: CloudWatchOutputConfig, location_name: "cloudWatchConfig"))
    OutputConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OutputConfig.add_member_subclass(:cloud_watch_config, Types::OutputConfig::CloudWatchConfig)
    OutputConfig.add_member_subclass(:unknown, Types::OutputConfig::Unknown)
    OutputConfig.struct_class = Types::OutputConfig

    PayloadType.add_member(:conversational, Shapes::ShapeRef.new(shape: Conversational, location_name: "conversational"))
    PayloadType.add_member(:blob, Shapes::ShapeRef.new(shape: MemoryDocument, location_name: "blob"))
    PayloadType.add_member(:json, Shapes::ShapeRef.new(shape: MemoryJsonData, location_name: "json"))
    PayloadType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PayloadType.add_member_subclass(:conversational, Types::PayloadType::Conversational)
    PayloadType.add_member_subclass(:blob, Types::PayloadType::Blob)
    PayloadType.add_member_subclass(:json, Types::PayloadType::Json)
    PayloadType.add_member_subclass(:unknown, Types::PayloadType::Unknown)
    PayloadType.struct_class = Types::PayloadType

    PayloadTypeList.member = Shapes::ShapeRef.new(shape: PayloadType)

    PaymentInput.add_member(:crypto_x402, Shapes::ShapeRef.new(shape: CryptoX402PaymentInput, location_name: "cryptoX402"))
    PaymentInput.add_member(:mpp, Shapes::ShapeRef.new(shape: MppPaymentInput, location_name: "mpp"))
    PaymentInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PaymentInput.add_member_subclass(:crypto_x402, Types::PaymentInput::CryptoX402)
    PaymentInput.add_member_subclass(:mpp, Types::PaymentInput::Mpp)
    PaymentInput.add_member_subclass(:unknown, Types::PaymentInput::Unknown)
    PaymentInput.struct_class = Types::PaymentInput

    PaymentInstrument.add_member(:payment_instrument_id, Shapes::ShapeRef.new(shape: PaymentInstrumentId, required: true, location_name: "paymentInstrumentId"))
    PaymentInstrument.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    PaymentInstrument.add_member(:payment_connector_id, Shapes::ShapeRef.new(shape: PaymentConnectorId, required: true, location_name: "paymentConnectorId"))
    PaymentInstrument.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "userId"))
    PaymentInstrument.add_member(:payment_instrument_type, Shapes::ShapeRef.new(shape: PaymentInstrumentType, required: true, location_name: "paymentInstrumentType"))
    PaymentInstrument.add_member(:payment_instrument_details, Shapes::ShapeRef.new(shape: PaymentInstrumentDetails, required: true, location_name: "paymentInstrumentDetails"))
    PaymentInstrument.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    PaymentInstrument.add_member(:status, Shapes::ShapeRef.new(shape: PaymentInstrumentStatus, required: true, location_name: "status"))
    PaymentInstrument.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    PaymentInstrument.struct_class = Types::PaymentInstrument

    PaymentInstrumentDetails.add_member(:embedded_crypto_wallet, Shapes::ShapeRef.new(shape: EmbeddedCryptoWallet, location_name: "embeddedCryptoWallet"))
    PaymentInstrumentDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PaymentInstrumentDetails.add_member_subclass(:embedded_crypto_wallet, Types::PaymentInstrumentDetails::EmbeddedCryptoWallet)
    PaymentInstrumentDetails.add_member_subclass(:unknown, Types::PaymentInstrumentDetails::Unknown)
    PaymentInstrumentDetails.struct_class = Types::PaymentInstrumentDetails

    PaymentInstrumentSummary.add_member(:payment_instrument_id, Shapes::ShapeRef.new(shape: PaymentInstrumentId, required: true, location_name: "paymentInstrumentId"))
    PaymentInstrumentSummary.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    PaymentInstrumentSummary.add_member(:payment_connector_id, Shapes::ShapeRef.new(shape: PaymentConnectorId, required: true, location_name: "paymentConnectorId"))
    PaymentInstrumentSummary.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "userId"))
    PaymentInstrumentSummary.add_member(:payment_instrument_type, Shapes::ShapeRef.new(shape: PaymentInstrumentType, required: true, location_name: "paymentInstrumentType"))
    PaymentInstrumentSummary.add_member(:status, Shapes::ShapeRef.new(shape: PaymentInstrumentStatus, required: true, location_name: "status"))
    PaymentInstrumentSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    PaymentInstrumentSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    PaymentInstrumentSummary.struct_class = Types::PaymentInstrumentSummary

    PaymentInstrumentSummaryList.member = Shapes::ShapeRef.new(shape: PaymentInstrumentSummary)

    PaymentOutput.add_member(:crypto_x402, Shapes::ShapeRef.new(shape: CryptoX402PaymentOutput, location_name: "cryptoX402"))
    PaymentOutput.add_member(:mpp, Shapes::ShapeRef.new(shape: MppPaymentOutput, location_name: "mpp"))
    PaymentOutput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PaymentOutput.add_member_subclass(:crypto_x402, Types::PaymentOutput::CryptoX402)
    PaymentOutput.add_member_subclass(:mpp, Types::PaymentOutput::Mpp)
    PaymentOutput.add_member_subclass(:unknown, Types::PaymentOutput::Unknown)
    PaymentOutput.struct_class = Types::PaymentOutput

    PaymentSession.add_member(:payment_session_id, Shapes::ShapeRef.new(shape: PaymentSessionId, required: true, location_name: "paymentSessionId"))
    PaymentSession.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    PaymentSession.add_member(:limits, Shapes::ShapeRef.new(shape: SessionLimits, location_name: "limits"))
    PaymentSession.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "userId"))
    PaymentSession.add_member(:expiry_time_in_minutes, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "expiryTimeInMinutes"))
    PaymentSession.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    PaymentSession.add_member(:available_limits, Shapes::ShapeRef.new(shape: AvailableLimits, location_name: "availableLimits"))
    PaymentSession.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    PaymentSession.struct_class = Types::PaymentSession

    PaymentSessionSummary.add_member(:payment_session_id, Shapes::ShapeRef.new(shape: PaymentSessionId, required: true, location_name: "paymentSessionId"))
    PaymentSessionSummary.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    PaymentSessionSummary.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "userId"))
    PaymentSessionSummary.add_member(:expiry_time_in_minutes, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "expiryTimeInMinutes"))
    PaymentSessionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    PaymentSessionSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    PaymentSessionSummary.struct_class = Types::PaymentSessionSummary

    PaymentSessionSummaryList.member = Shapes::ShapeRef.new(shape: PaymentSessionSummary)

    PaymentTokenRequestInput.add_member(:coinbase_cdp_token_request, Shapes::ShapeRef.new(shape: CoinbaseCdpTokenRequestInput, location_name: "coinbaseCdpTokenRequest"))
    PaymentTokenRequestInput.add_member(:stripe_privy_token_request, Shapes::ShapeRef.new(shape: StripePrivyTokenRequestInput, location_name: "stripePrivyTokenRequest"))
    PaymentTokenRequestInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PaymentTokenRequestInput.add_member_subclass(:coinbase_cdp_token_request, Types::PaymentTokenRequestInput::CoinbaseCdpTokenRequest)
    PaymentTokenRequestInput.add_member_subclass(:stripe_privy_token_request, Types::PaymentTokenRequestInput::StripePrivyTokenRequest)
    PaymentTokenRequestInput.add_member_subclass(:unknown, Types::PaymentTokenRequestInput::Unknown)
    PaymentTokenRequestInput.struct_class = Types::PaymentTokenRequestInput

    PaymentTokenResponseOutput.add_member(:coinbase_cdp_token_response, Shapes::ShapeRef.new(shape: CoinbaseCdpTokenResponseOutput, location_name: "coinbaseCdpTokenResponse"))
    PaymentTokenResponseOutput.add_member(:stripe_privy_token_response, Shapes::ShapeRef.new(shape: StripePrivyTokenResponseOutput, location_name: "stripePrivyTokenResponse"))
    PaymentTokenResponseOutput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PaymentTokenResponseOutput.add_member_subclass(:coinbase_cdp_token_response, Types::PaymentTokenResponseOutput::CoinbaseCdpTokenResponse)
    PaymentTokenResponseOutput.add_member_subclass(:stripe_privy_token_response, Types::PaymentTokenResponseOutput::StripePrivyTokenResponse)
    PaymentTokenResponseOutput.add_member_subclass(:unknown, Types::PaymentTokenResponseOutput::Unknown)
    PaymentTokenResponseOutput.struct_class = Types::PaymentTokenResponseOutput

    PerVariantOnlineEvaluationConfig.add_member(:name, Shapes::ShapeRef.new(shape: VariantName, required: true, location_name: "name"))
    PerVariantOnlineEvaluationConfig.add_member(:online_evaluation_config_arn, Shapes::ShapeRef.new(shape: OnlineEvaluationConfigArn, required: true, location_name: "onlineEvaluationConfigArn"))
    PerVariantOnlineEvaluationConfig.struct_class = Types::PerVariantOnlineEvaluationConfig

    PerVariantOnlineEvaluationConfigList.member = Shapes::ShapeRef.new(shape: PerVariantOnlineEvaluationConfig)

    ProcessPaymentRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-User-Id"))
    ProcessPaymentRequest.add_member(:agent_name, Shapes::ShapeRef.new(shape: PaymentAgentName, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"))
    ProcessPaymentRequest.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    ProcessPaymentRequest.add_member(:payment_session_id, Shapes::ShapeRef.new(shape: PaymentSessionId, required: true, location_name: "paymentSessionId"))
    ProcessPaymentRequest.add_member(:payment_instrument_id, Shapes::ShapeRef.new(shape: PaymentInstrumentId, required: true, location_name: "paymentInstrumentId"))
    ProcessPaymentRequest.add_member(:payment_type, Shapes::ShapeRef.new(shape: PaymentType, required: true, location_name: "paymentType"))
    ProcessPaymentRequest.add_member(:payment_input, Shapes::ShapeRef.new(shape: PaymentInput, required: true, location_name: "paymentInput"))
    ProcessPaymentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    ProcessPaymentRequest.struct_class = Types::ProcessPaymentRequest

    ProcessPaymentResponse.add_member(:process_payment_id, Shapes::ShapeRef.new(shape: ProcessPaymentId, required: true, location_name: "processPaymentId"))
    ProcessPaymentResponse.add_member(:payment_manager_arn, Shapes::ShapeRef.new(shape: PaymentManagerArn, required: true, location_name: "paymentManagerArn"))
    ProcessPaymentResponse.add_member(:payment_session_id, Shapes::ShapeRef.new(shape: PaymentSessionId, required: true, location_name: "paymentSessionId"))
    ProcessPaymentResponse.add_member(:payment_instrument_id, Shapes::ShapeRef.new(shape: PaymentInstrumentId, required: true, location_name: "paymentInstrumentId"))
    ProcessPaymentResponse.add_member(:payment_type, Shapes::ShapeRef.new(shape: PaymentType, required: true, location_name: "paymentType"))
    ProcessPaymentResponse.add_member(:status, Shapes::ShapeRef.new(shape: PaymentStatus, required: true, location_name: "status"))
    ProcessPaymentResponse.add_member(:payment_output, Shapes::ShapeRef.new(shape: PaymentOutput, required: true, location_name: "paymentOutput"))
    ProcessPaymentResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    ProcessPaymentResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    ProcessPaymentResponse.struct_class = Types::ProcessPaymentResponse

    Proxy.add_member(:external_proxy, Shapes::ShapeRef.new(shape: ExternalProxy, location_name: "externalProxy"))
    Proxy.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Proxy.add_member_subclass(:external_proxy, Types::Proxy::ExternalProxy)
    Proxy.add_member_subclass(:unknown, Types::Proxy::Unknown)
    Proxy.struct_class = Types::Proxy

    ProxyBypass.add_member(:domain_patterns, Shapes::ShapeRef.new(shape: DomainPatterns, location_name: "domainPatterns"))
    ProxyBypass.struct_class = Types::ProxyBypass

    ProxyConfiguration.add_member(:proxies, Shapes::ShapeRef.new(shape: ProxyConfigurationProxiesList, required: true, location_name: "proxies"))
    ProxyConfiguration.add_member(:bypass, Shapes::ShapeRef.new(shape: ProxyBypass, location_name: "bypass"))
    ProxyConfiguration.struct_class = Types::ProxyConfiguration

    ProxyConfigurationProxiesList.member = Shapes::ShapeRef.new(shape: Proxy)

    ProxyCredentials.add_member(:basic_auth, Shapes::ShapeRef.new(shape: BasicAuth, location_name: "basicAuth"))
    ProxyCredentials.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProxyCredentials.add_member_subclass(:basic_auth, Types::ProxyCredentials::BasicAuth)
    ProxyCredentials.add_member_subclass(:unknown, Types::ProxyCredentials::Unknown)
    ProxyCredentials.struct_class = Types::ProxyCredentials

    RecommendationConfig.add_member(:system_prompt_recommendation_config, Shapes::ShapeRef.new(shape: SystemPromptRecommendationConfig, location_name: "systemPromptRecommendationConfig"))
    RecommendationConfig.add_member(:tool_description_recommendation_config, Shapes::ShapeRef.new(shape: ToolDescriptionRecommendationConfig, location_name: "toolDescriptionRecommendationConfig"))
    RecommendationConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RecommendationConfig.add_member_subclass(:system_prompt_recommendation_config, Types::RecommendationConfig::SystemPromptRecommendationConfig)
    RecommendationConfig.add_member_subclass(:tool_description_recommendation_config, Types::RecommendationConfig::ToolDescriptionRecommendationConfig)
    RecommendationConfig.add_member_subclass(:unknown, Types::RecommendationConfig::Unknown)
    RecommendationConfig.struct_class = Types::RecommendationConfig

    RecommendationEvaluationConfig.add_member(:evaluators, Shapes::ShapeRef.new(shape: RecommendationEvaluationConfigEvaluatorsList, required: true, location_name: "evaluators"))
    RecommendationEvaluationConfig.struct_class = Types::RecommendationEvaluationConfig

    RecommendationEvaluationConfigEvaluatorsList.member = Shapes::ShapeRef.new(shape: RecommendationEvaluatorReference)

    RecommendationEvaluatorReference.add_member(:evaluator_arn, Shapes::ShapeRef.new(shape: EvaluatorArn, required: true, location_name: "evaluatorArn"))
    RecommendationEvaluatorReference.struct_class = Types::RecommendationEvaluatorReference

    RecommendationResult.add_member(:system_prompt_recommendation_result, Shapes::ShapeRef.new(shape: SystemPromptRecommendationResult, location_name: "systemPromptRecommendationResult"))
    RecommendationResult.add_member(:tool_description_recommendation_result, Shapes::ShapeRef.new(shape: ToolDescriptionRecommendationResult, location_name: "toolDescriptionRecommendationResult"))
    RecommendationResult.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RecommendationResult.add_member_subclass(:system_prompt_recommendation_result, Types::RecommendationResult::SystemPromptRecommendationResult)
    RecommendationResult.add_member_subclass(:tool_description_recommendation_result, Types::RecommendationResult::ToolDescriptionRecommendationResult)
    RecommendationResult.add_member_subclass(:unknown, Types::RecommendationResult::Unknown)
    RecommendationResult.struct_class = Types::RecommendationResult

    RecommendationResultConfigurationBundle.add_member(:bundle_arn, Shapes::ShapeRef.new(shape: ConfigurationBundleArn, required: true, location_name: "bundleArn"))
    RecommendationResultConfigurationBundle.add_member(:version_id, Shapes::ShapeRef.new(shape: ConfigurationBundleVersionId, required: true, location_name: "versionId"))
    RecommendationResultConfigurationBundle.struct_class = Types::RecommendationResultConfigurationBundle

    RecommendationSummary.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, required: true, location_name: "recommendationId"))
    RecommendationSummary.add_member(:recommendation_arn, Shapes::ShapeRef.new(shape: RecommendationArn, required: true, location_name: "recommendationArn"))
    RecommendationSummary.add_member(:name, Shapes::ShapeRef.new(shape: RecommendationName, required: true, location_name: "name"))
    RecommendationSummary.add_member(:description, Shapes::ShapeRef.new(shape: RecommendationDescription, location_name: "description"))
    RecommendationSummary.add_member(:type, Shapes::ShapeRef.new(shape: RecommendationType, required: true, location_name: "type"))
    RecommendationSummary.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationStatus, required: true, location_name: "status"))
    RecommendationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    RecommendationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    RecommendationSummary.struct_class = Types::RecommendationSummary

    RecommendationSummaryList.member = Shapes::ShapeRef.new(shape: RecommendationSummary)

    RegistryRecordSummary.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    RegistryRecordSummary.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    RegistryRecordSummary.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    RegistryRecordSummary.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, required: true, location_name: "name"))
    RegistryRecordSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RegistryRecordSummary.add_member(:descriptor_type, Shapes::ShapeRef.new(shape: DescriptorType, required: true, location_name: "descriptorType"))
    RegistryRecordSummary.add_member(:descriptors, Shapes::ShapeRef.new(shape: Descriptors, required: true, location_name: "descriptors"))
    RegistryRecordSummary.add_member(:version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, required: true, location_name: "version"))
    RegistryRecordSummary.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    RegistryRecordSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    RegistryRecordSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    RegistryRecordSummary.struct_class = Types::RegistryRecordSummary

    RegistryRecordSummaryList.member = Shapes::ShapeRef.new(shape: RegistryRecordSummary)

    ResourceContent.add_member(:type, Shapes::ShapeRef.new(shape: ResourceContentType, required: true, location_name: "type"))
    ResourceContent.add_member(:uri, Shapes::ShapeRef.new(shape: String, location_name: "uri"))
    ResourceContent.add_member(:mime_type, Shapes::ShapeRef.new(shape: String, location_name: "mimeType"))
    ResourceContent.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    ResourceContent.add_member(:blob, Shapes::ShapeRef.new(shape: Blob, location_name: "blob"))
    ResourceContent.struct_class = Types::ResourceContent

    ResourceLocation.add_member(:s3, Shapes::ShapeRef.new(shape: S3Location, location_name: "s3"))
    ResourceLocation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceLocation.add_member_subclass(:s3, Types::ResourceLocation::S3)
    ResourceLocation.add_member_subclass(:unknown, Types::ResourceLocation::Unknown)
    ResourceLocation.struct_class = Types::ResourceLocation

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcesListType.member = Shapes::ShapeRef.new(shape: ResourceType)

    ResponseChunk.add_member(:content_start, Shapes::ShapeRef.new(shape: ContentStartEvent, location_name: "contentStart"))
    ResponseChunk.add_member(:content_delta, Shapes::ShapeRef.new(shape: ContentDeltaEvent, location_name: "contentDelta"))
    ResponseChunk.add_member(:content_stop, Shapes::ShapeRef.new(shape: ContentStopEvent, location_name: "contentStop"))
    ResponseChunk.struct_class = Types::ResponseChunk

    RetrieveMemoryRecordsInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    RetrieveMemoryRecordsInput.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "namespace"))
    RetrieveMemoryRecordsInput.add_member(:namespace_path, Shapes::ShapeRef.new(shape: Namespace, location_name: "namespacePath"))
    RetrieveMemoryRecordsInput.add_member(:search_criteria, Shapes::ShapeRef.new(shape: SearchCriteria, required: true, location_name: "searchCriteria"))
    RetrieveMemoryRecordsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    RetrieveMemoryRecordsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    RetrieveMemoryRecordsInput.struct_class = Types::RetrieveMemoryRecordsInput

    RetrieveMemoryRecordsOutput.add_member(:memory_record_summaries, Shapes::ShapeRef.new(shape: MemoryRecordSummaryList, required: true, location_name: "memoryRecordSummaries"))
    RetrieveMemoryRecordsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    RetrieveMemoryRecordsOutput.struct_class = Types::RetrieveMemoryRecordsOutput

    RetryableConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    RetryableConflictException.struct_class = Types::RetryableConflictException

    RightExpression.add_member(:metadata_value, Shapes::ShapeRef.new(shape: MetadataValue, location_name: "metadataValue"))
    RightExpression.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RightExpression.add_member_subclass(:metadata_value, Types::RightExpression::MetadataValue)
    RightExpression.add_member_subclass(:unknown, Types::RightExpression::Unknown)
    RightExpression.struct_class = Types::RightExpression

    RootCauseCluster.add_member(:cluster_id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "clusterId"))
    RootCauseCluster.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    RootCauseCluster.add_member(:root_cause, Shapes::ShapeRef.new(shape: String, required: true, location_name: "rootCause"))
    RootCauseCluster.add_member(:recommendation, Shapes::ShapeRef.new(shape: String, required: true, location_name: "recommendation"))
    RootCauseCluster.add_member(:affected_session_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "affectedSessionCount"))
    RootCauseCluster.add_member(:affected_sessions, Shapes::ShapeRef.new(shape: AffectedSessionList, required: true, location_name: "affectedSessions"))
    RootCauseCluster.struct_class = Types::RootCauseCluster

    RootCauseClusterList.member = Shapes::ShapeRef.new(shape: RootCauseCluster)

    RuntimeClientError.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    RuntimeClientError.struct_class = Types::RuntimeClientError

    S3FilesConfiguration.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: S3FilesAccessPointArn, required: true, location_name: "accessPointArn"))
    S3FilesConfiguration.add_member(:mount_path, Shapes::ShapeRef.new(shape: MountPath, required: true, location_name: "mountPath"))
    S3FilesConfiguration.add_member(:file_system_arn, Shapes::ShapeRef.new(shape: S3FilesFileSystemArn, required: true, location_name: "fileSystemArn"))
    S3FilesConfiguration.struct_class = Types::S3FilesConfiguration

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: S3LocationBucketString, required: true, location_name: "bucket"))
    S3Location.add_member(:prefix, Shapes::ShapeRef.new(shape: S3LocationPrefixString, required: true, location_name: "prefix"))
    S3Location.add_member(:version_id, Shapes::ShapeRef.new(shape: S3LocationVersionIdString, location_name: "versionId"))
    S3Location.struct_class = Types::S3Location

    SaveBrowserSessionProfileRequest.add_member(:trace_id, Shapes::ShapeRef.new(shape: SaveBrowserSessionProfileRequestTraceIdString, location: "header", location_name: "X-Amzn-Trace-Id"))
    SaveBrowserSessionProfileRequest.add_member(:trace_parent, Shapes::ShapeRef.new(shape: SaveBrowserSessionProfileRequestTraceParentString, location: "header", location_name: "traceparent"))
    SaveBrowserSessionProfileRequest.add_member(:profile_identifier, Shapes::ShapeRef.new(shape: BrowserProfileId, required: true, location: "uri", location_name: "profileIdentifier"))
    SaveBrowserSessionProfileRequest.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "browserIdentifier"))
    SaveBrowserSessionProfileRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location_name: "sessionId"))
    SaveBrowserSessionProfileRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    SaveBrowserSessionProfileRequest.struct_class = Types::SaveBrowserSessionProfileRequest

    SaveBrowserSessionProfileResponse.add_member(:profile_identifier, Shapes::ShapeRef.new(shape: BrowserProfileId, required: true, location_name: "profileIdentifier"))
    SaveBrowserSessionProfileResponse.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "browserIdentifier"))
    SaveBrowserSessionProfileResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location_name: "sessionId"))
    SaveBrowserSessionProfileResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    SaveBrowserSessionProfileResponse.struct_class = Types::SaveBrowserSessionProfileResponse

    ScopesListType.member = Shapes::ShapeRef.new(shape: ScopeType)

    ScreenshotArguments.add_member(:format, Shapes::ShapeRef.new(shape: ScreenshotFormat, location_name: "format"))
    ScreenshotArguments.struct_class = Types::ScreenshotArguments

    ScreenshotResult.add_member(:status, Shapes::ShapeRef.new(shape: BrowserActionStatus, required: true, location_name: "status"))
    ScreenshotResult.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    ScreenshotResult.add_member(:data, Shapes::ShapeRef.new(shape: Blob, location_name: "data"))
    ScreenshotResult.struct_class = Types::ScreenshotResult

    SearchCriteria.add_member(:search_query, Shapes::ShapeRef.new(shape: SearchCriteriaSearchQueryString, required: true, location_name: "searchQuery"))
    SearchCriteria.add_member(:memory_strategy_id, Shapes::ShapeRef.new(shape: MemoryStrategyId, location_name: "memoryStrategyId"))
    SearchCriteria.add_member(:top_k, Shapes::ShapeRef.new(shape: SearchCriteriaTopKInteger, location_name: "topK"))
    SearchCriteria.add_member(:metadata_filters, Shapes::ShapeRef.new(shape: MemoryMetadataFilterList, location_name: "metadataFilters"))
    SearchCriteria.struct_class = Types::SearchCriteria

    SearchRegistryRecordsRequest.add_member(:search_query, Shapes::ShapeRef.new(shape: SearchRegistryRecordsRequestSearchQueryString, required: true, location_name: "searchQuery"))
    SearchRegistryRecordsRequest.add_member(:registry_ids, Shapes::ShapeRef.new(shape: SearchRegistryRecordsRequestRegistryIdsList, required: true, location_name: "registryIds"))
    SearchRegistryRecordsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchRegistryRecordsRequestMaxResultsInteger, location_name: "maxResults"))
    SearchRegistryRecordsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: MetadataFilterExpression, location_name: "filters"))
    SearchRegistryRecordsRequest.struct_class = Types::SearchRegistryRecordsRequest

    SearchRegistryRecordsRequestRegistryIdsList.member = Shapes::ShapeRef.new(shape: RegistryIdentifier)

    SearchRegistryRecordsResponse.add_member(:registry_records, Shapes::ShapeRef.new(shape: RegistryRecordSummaryList, required: true, location_name: "registryRecords"))
    SearchRegistryRecordsResponse.struct_class = Types::SearchRegistryRecordsResponse

    SecretsManagerLocation.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, required: true, location_name: "secretArn"))
    SecretsManagerLocation.struct_class = Types::SecretsManagerLocation

    ServerDefinition.add_member(:schema_version, Shapes::ShapeRef.new(shape: SchemaVersion, location_name: "schemaVersion"))
    ServerDefinition.add_member(:inline_content, Shapes::ShapeRef.new(shape: InlineContent, location_name: "inlineContent"))
    ServerDefinition.struct_class = Types::ServerDefinition

    ServiceException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceException.struct_class = Types::ServiceException

    ServiceNameList.member = Shapes::ShapeRef.new(shape: ServiceName)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SessionFilter.add_member(:event_filter, Shapes::ShapeRef.new(shape: EventFilterCondition, location_name: "eventFilter"))
    SessionFilter.struct_class = Types::SessionFilter

    SessionFilterConfig.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "startTime"))
    SessionFilterConfig.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endTime"))
    SessionFilterConfig.struct_class = Types::SessionFilterConfig

    SessionLimits.add_member(:max_spend_amount, Shapes::ShapeRef.new(shape: Amount, required: true, location_name: "maxSpendAmount"))
    SessionLimits.struct_class = Types::SessionLimits

    SessionMetadataList.member = Shapes::ShapeRef.new(shape: SessionMetadataShape)

    SessionMetadataShape.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sessionId"))
    SessionMetadataShape.add_member(:test_scenario_id, Shapes::ShapeRef.new(shape: String, location_name: "testScenarioId"))
    SessionMetadataShape.add_member(:ground_truth, Shapes::ShapeRef.new(shape: GroundTruthSource, location_name: "groundTruth"))
    SessionMetadataShape.add_member(:metadata, Shapes::ShapeRef.new(shape: StringMap, location_name: "metadata"))
    SessionMetadataShape.struct_class = Types::SessionMetadataShape

    SessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "sessionId"))
    SessionSummary.add_member(:actor_id, Shapes::ShapeRef.new(shape: ActorId, required: true, location_name: "actorId"))
    SessionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    SessionSummary.struct_class = Types::SessionSummary

    SessionSummaryList.member = Shapes::ShapeRef.new(shape: SessionSummary)

    SkillDefinition.add_member(:schema_version, Shapes::ShapeRef.new(shape: SchemaVersion, location_name: "schemaVersion"))
    SkillDefinition.add_member(:inline_content, Shapes::ShapeRef.new(shape: InlineContent, location_name: "inlineContent"))
    SkillDefinition.struct_class = Types::SkillDefinition

    SkillMdDefinition.add_member(:inline_content, Shapes::ShapeRef.new(shape: InlineContent, location_name: "inlineContent"))
    SkillMdDefinition.struct_class = Types::SkillMdDefinition

    SpanContext.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sessionId"))
    SpanContext.add_member(:trace_id, Shapes::ShapeRef.new(shape: String, location_name: "traceId"))
    SpanContext.add_member(:span_id, Shapes::ShapeRef.new(shape: String, location_name: "spanId"))
    SpanContext.struct_class = Types::SpanContext

    SpanIds.member = Shapes::ShapeRef.new(shape: SpanId)

    Spans.member = Shapes::ShapeRef.new(shape: Span)

    StartBatchEvaluationRequest.add_member(:batch_evaluation_name, Shapes::ShapeRef.new(shape: BatchEvaluationName, required: true, location_name: "batchEvaluationName"))
    StartBatchEvaluationRequest.add_member(:evaluators, Shapes::ShapeRef.new(shape: StartBatchEvaluationRequestEvaluatorsList, location_name: "evaluators"))
    StartBatchEvaluationRequest.add_member(:insights, Shapes::ShapeRef.new(shape: StartBatchEvaluationRequestInsightsList, location_name: "insights"))
    StartBatchEvaluationRequest.add_member(:data_source_config, Shapes::ShapeRef.new(shape: DataSourceConfig, required: true, location_name: "dataSourceConfig"))
    StartBatchEvaluationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartBatchEvaluationRequest.add_member(:evaluation_metadata, Shapes::ShapeRef.new(shape: EvaluationMetadata, location_name: "evaluationMetadata"))
    StartBatchEvaluationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StartBatchEvaluationRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    StartBatchEvaluationRequest.add_member(:description, Shapes::ShapeRef.new(shape: BatchEvaluationDescription, location_name: "description"))
    StartBatchEvaluationRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "outputConfig"))
    StartBatchEvaluationRequest.struct_class = Types::StartBatchEvaluationRequest

    StartBatchEvaluationRequestEvaluatorsList.member = Shapes::ShapeRef.new(shape: Evaluator)

    StartBatchEvaluationRequestInsightsList.member = Shapes::ShapeRef.new(shape: Insight)

    StartBatchEvaluationResponse.add_member(:batch_evaluation_id, Shapes::ShapeRef.new(shape: BatchEvaluationId, required: true, location_name: "batchEvaluationId"))
    StartBatchEvaluationResponse.add_member(:batch_evaluation_arn, Shapes::ShapeRef.new(shape: BatchEvaluationArn, required: true, location_name: "batchEvaluationArn"))
    StartBatchEvaluationResponse.add_member(:batch_evaluation_name, Shapes::ShapeRef.new(shape: BatchEvaluationName, required: true, location_name: "batchEvaluationName"))
    StartBatchEvaluationResponse.add_member(:evaluators, Shapes::ShapeRef.new(shape: EvaluatorList, location_name: "evaluators"))
    StartBatchEvaluationResponse.add_member(:insights, Shapes::ShapeRef.new(shape: InsightList, location_name: "insights"))
    StartBatchEvaluationResponse.add_member(:status, Shapes::ShapeRef.new(shape: BatchEvaluationStatus, required: true, location_name: "status"))
    StartBatchEvaluationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    StartBatchEvaluationResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "outputConfig"))
    StartBatchEvaluationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StartBatchEvaluationResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    StartBatchEvaluationResponse.add_member(:description, Shapes::ShapeRef.new(shape: BatchEvaluationDescription, location_name: "description"))
    StartBatchEvaluationResponse.struct_class = Types::StartBatchEvaluationResponse

    StartBrowserSessionRequest.add_member(:trace_id, Shapes::ShapeRef.new(shape: StartBrowserSessionRequestTraceIdString, location: "header", location_name: "X-Amzn-Trace-Id"))
    StartBrowserSessionRequest.add_member(:trace_parent, Shapes::ShapeRef.new(shape: StartBrowserSessionRequestTraceParentString, location: "header", location_name: "traceparent"))
    StartBrowserSessionRequest.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "browserIdentifier"))
    StartBrowserSessionRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    StartBrowserSessionRequest.add_member(:session_timeout_seconds, Shapes::ShapeRef.new(shape: BrowserSessionTimeout, location_name: "sessionTimeoutSeconds"))
    StartBrowserSessionRequest.add_member(:view_port, Shapes::ShapeRef.new(shape: ViewPort, location_name: "viewPort"))
    StartBrowserSessionRequest.add_member(:extensions, Shapes::ShapeRef.new(shape: BrowserExtensions, location_name: "extensions"))
    StartBrowserSessionRequest.add_member(:profile_configuration, Shapes::ShapeRef.new(shape: BrowserProfileConfiguration, location_name: "profileConfiguration"))
    StartBrowserSessionRequest.add_member(:proxy_configuration, Shapes::ShapeRef.new(shape: ProxyConfiguration, location_name: "proxyConfiguration"))
    StartBrowserSessionRequest.add_member(:enterprise_policies, Shapes::ShapeRef.new(shape: BrowserEnterprisePolicies, location_name: "enterprisePolicies"))
    StartBrowserSessionRequest.add_member(:certificates, Shapes::ShapeRef.new(shape: Certificates, location_name: "certificates"))
    StartBrowserSessionRequest.add_member(:filesystem_configurations, Shapes::ShapeRef.new(shape: ToolsFileSystemConfigurations, location_name: "filesystemConfigurations"))
    StartBrowserSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartBrowserSessionRequest.struct_class = Types::StartBrowserSessionRequest

    StartBrowserSessionResponse.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "browserIdentifier"))
    StartBrowserSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location_name: "sessionId"))
    StartBrowserSessionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    StartBrowserSessionResponse.add_member(:streams, Shapes::ShapeRef.new(shape: BrowserSessionStream, location_name: "streams"))
    StartBrowserSessionResponse.struct_class = Types::StartBrowserSessionResponse

    StartCodeInterpreterSessionRequest.add_member(:trace_id, Shapes::ShapeRef.new(shape: StartCodeInterpreterSessionRequestTraceIdString, location: "header", location_name: "X-Amzn-Trace-Id"))
    StartCodeInterpreterSessionRequest.add_member(:trace_parent, Shapes::ShapeRef.new(shape: StartCodeInterpreterSessionRequestTraceParentString, location: "header", location_name: "traceparent"))
    StartCodeInterpreterSessionRequest.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "codeInterpreterIdentifier"))
    StartCodeInterpreterSessionRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    StartCodeInterpreterSessionRequest.add_member(:session_timeout_seconds, Shapes::ShapeRef.new(shape: CodeInterpreterSessionTimeout, location_name: "sessionTimeoutSeconds"))
    StartCodeInterpreterSessionRequest.add_member(:certificates, Shapes::ShapeRef.new(shape: Certificates, location_name: "certificates"))
    StartCodeInterpreterSessionRequest.add_member(:filesystem_configurations, Shapes::ShapeRef.new(shape: ToolsFileSystemConfigurations, location_name: "filesystemConfigurations"))
    StartCodeInterpreterSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartCodeInterpreterSessionRequest.struct_class = Types::StartCodeInterpreterSessionRequest

    StartCodeInterpreterSessionResponse.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeInterpreterIdentifier"))
    StartCodeInterpreterSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, required: true, location_name: "sessionId"))
    StartCodeInterpreterSessionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    StartCodeInterpreterSessionResponse.struct_class = Types::StartCodeInterpreterSessionResponse

    StartMemoryExtractionJobInput.add_member(:memory_id, Shapes::ShapeRef.new(shape: MemoryId, required: true, location: "uri", location_name: "memoryId"))
    StartMemoryExtractionJobInput.add_member(:extraction_job, Shapes::ShapeRef.new(shape: ExtractionJob, required: true, location_name: "extractionJob"))
    StartMemoryExtractionJobInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartMemoryExtractionJobInput.struct_class = Types::StartMemoryExtractionJobInput

    StartMemoryExtractionJobOutput.add_member(:job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "jobId"))
    StartMemoryExtractionJobOutput.struct_class = Types::StartMemoryExtractionJobOutput

    StartRecommendationRequest.add_member(:name, Shapes::ShapeRef.new(shape: RecommendationName, required: true, location_name: "name"))
    StartRecommendationRequest.add_member(:description, Shapes::ShapeRef.new(shape: RecommendationDescription, location_name: "description"))
    StartRecommendationRequest.add_member(:type, Shapes::ShapeRef.new(shape: RecommendationType, required: true, location_name: "type"))
    StartRecommendationRequest.add_member(:recommendation_config, Shapes::ShapeRef.new(shape: RecommendationConfig, required: true, location_name: "recommendationConfig"))
    StartRecommendationRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    StartRecommendationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartRecommendationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StartRecommendationRequest.struct_class = Types::StartRecommendationRequest

    StartRecommendationResponse.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, required: true, location_name: "recommendationId"))
    StartRecommendationResponse.add_member(:recommendation_arn, Shapes::ShapeRef.new(shape: RecommendationArn, required: true, location_name: "recommendationArn"))
    StartRecommendationResponse.add_member(:name, Shapes::ShapeRef.new(shape: RecommendationName, required: true, location_name: "name"))
    StartRecommendationResponse.add_member(:description, Shapes::ShapeRef.new(shape: RecommendationDescription, location_name: "description"))
    StartRecommendationResponse.add_member(:type, Shapes::ShapeRef.new(shape: RecommendationType, required: true, location_name: "type"))
    StartRecommendationResponse.add_member(:recommendation_config, Shapes::ShapeRef.new(shape: RecommendationConfig, required: true, location_name: "recommendationConfig"))
    StartRecommendationResponse.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationStatus, required: true, location_name: "status"))
    StartRecommendationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    StartRecommendationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    StartRecommendationResponse.struct_class = Types::StartRecommendationResponse

    StopBatchEvaluationRequest.add_member(:batch_evaluation_id, Shapes::ShapeRef.new(shape: BatchEvaluationId, required: true, location: "uri", location_name: "batchEvaluationId"))
    StopBatchEvaluationRequest.struct_class = Types::StopBatchEvaluationRequest

    StopBatchEvaluationResponse.add_member(:batch_evaluation_id, Shapes::ShapeRef.new(shape: BatchEvaluationId, required: true, location_name: "batchEvaluationId"))
    StopBatchEvaluationResponse.add_member(:batch_evaluation_arn, Shapes::ShapeRef.new(shape: BatchEvaluationArn, required: true, location_name: "batchEvaluationArn"))
    StopBatchEvaluationResponse.add_member(:status, Shapes::ShapeRef.new(shape: BatchEvaluationStatus, required: true, location_name: "status"))
    StopBatchEvaluationResponse.add_member(:description, Shapes::ShapeRef.new(shape: BatchEvaluationDescription, location_name: "description"))
    StopBatchEvaluationResponse.struct_class = Types::StopBatchEvaluationResponse

    StopBrowserSessionRequest.add_member(:trace_id, Shapes::ShapeRef.new(shape: StopBrowserSessionRequestTraceIdString, location: "header", location_name: "X-Amzn-Trace-Id"))
    StopBrowserSessionRequest.add_member(:trace_parent, Shapes::ShapeRef.new(shape: StopBrowserSessionRequestTraceParentString, location: "header", location_name: "traceparent"))
    StopBrowserSessionRequest.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "browserIdentifier"))
    StopBrowserSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location: "querystring", location_name: "sessionId"))
    StopBrowserSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StopBrowserSessionRequest.struct_class = Types::StopBrowserSessionRequest

    StopBrowserSessionResponse.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "browserIdentifier"))
    StopBrowserSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location_name: "sessionId"))
    StopBrowserSessionResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    StopBrowserSessionResponse.struct_class = Types::StopBrowserSessionResponse

    StopCodeInterpreterSessionRequest.add_member(:trace_id, Shapes::ShapeRef.new(shape: StopCodeInterpreterSessionRequestTraceIdString, location: "header", location_name: "X-Amzn-Trace-Id"))
    StopCodeInterpreterSessionRequest.add_member(:trace_parent, Shapes::ShapeRef.new(shape: StopCodeInterpreterSessionRequestTraceParentString, location: "header", location_name: "traceparent"))
    StopCodeInterpreterSessionRequest.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "codeInterpreterIdentifier"))
    StopCodeInterpreterSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, required: true, location: "querystring", location_name: "sessionId"))
    StopCodeInterpreterSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StopCodeInterpreterSessionRequest.struct_class = Types::StopCodeInterpreterSessionRequest

    StopCodeInterpreterSessionResponse.add_member(:code_interpreter_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeInterpreterIdentifier"))
    StopCodeInterpreterSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: CodeInterpreterSessionId, required: true, location_name: "sessionId"))
    StopCodeInterpreterSessionResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastUpdatedAt"))
    StopCodeInterpreterSessionResponse.struct_class = Types::StopCodeInterpreterSessionResponse

    StopRuntimeSessionRequest.add_member(:runtime_session_id, Shapes::ShapeRef.new(shape: SessionType, required: true, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"))
    StopRuntimeSessionRequest.add_member(:agent_runtime_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "agentRuntimeArn"))
    StopRuntimeSessionRequest.add_member(:qualifier, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "qualifier"))
    StopRuntimeSessionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StopRuntimeSessionRequest.struct_class = Types::StopRuntimeSessionRequest

    StopRuntimeSessionResponse.add_member(:runtime_session_id, Shapes::ShapeRef.new(shape: SessionId, location: "header", location_name: "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"))
    StopRuntimeSessionResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: HttpResponseCode, location: "statusCode", location_name: "statusCode"))
    StopRuntimeSessionResponse.struct_class = Types::StopRuntimeSessionResponse

    StreamUpdate.add_member(:automation_stream_update, Shapes::ShapeRef.new(shape: AutomationStreamUpdate, location_name: "automationStreamUpdate"))
    StreamUpdate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    StreamUpdate.add_member_subclass(:automation_stream_update, Types::StreamUpdate::AutomationStreamUpdate)
    StreamUpdate.add_member_subclass(:unknown, Types::StreamUpdate::Unknown)
    StreamUpdate.struct_class = Types::StreamUpdate

    StringList.member = Shapes::ShapeRef.new(shape: MaxLenString)

    StringMap.key = Shapes::ShapeRef.new(shape: String)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    StringValueList.member = Shapes::ShapeRef.new(shape: StringListMemberValue)

    StripePrivyTokenRequestInput.add_member(:request_host, Shapes::ShapeRef.new(shape: StripePrivyRequestHostType, location_name: "requestHost"))
    StripePrivyTokenRequestInput.add_member(:request_path, Shapes::ShapeRef.new(shape: StripePrivyRequestPathType, required: true, location_name: "requestPath"))
    StripePrivyTokenRequestInput.add_member(:request_body, Shapes::ShapeRef.new(shape: StripePrivyRequestBodyType, required: true, location_name: "requestBody"))
    StripePrivyTokenRequestInput.add_member(:include_authorization_signature, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeAuthorizationSignature"))
    StripePrivyTokenRequestInput.struct_class = Types::StripePrivyTokenRequestInput

    StripePrivyTokenResponseOutput.add_member(:authorization_signature, Shapes::ShapeRef.new(shape: StripePrivyAuthorizationSignatureType, location_name: "authorizationSignature"))
    StripePrivyTokenResponseOutput.add_member(:request_expiry, Shapes::ShapeRef.new(shape: Long, location_name: "requestExpiry"))
    StripePrivyTokenResponseOutput.add_member(:app_id, Shapes::ShapeRef.new(shape: StripePrivyAppIdType, required: true, location_name: "appId"))
    StripePrivyTokenResponseOutput.add_member(:basic_auth_token, Shapes::ShapeRef.new(shape: StripePrivyBasicAuthTokenType, required: true, location_name: "basicAuthToken"))
    StripePrivyTokenResponseOutput.struct_class = Types::StripePrivyTokenResponseOutput

    SubscriptionRequiredException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    SubscriptionRequiredException.add_member(:subscription_url, Shapes::ShapeRef.new(shape: SubscriptionRequiredExceptionSubscriptionUrlString, location_name: "subscriptionUrl"))
    SubscriptionRequiredException.add_member(:product_name, Shapes::ShapeRef.new(shape: SubscriptionRequiredExceptionProductNameString, location_name: "productName"))
    SubscriptionRequiredException.struct_class = Types::SubscriptionRequiredException

    SystemPromptConfig.add_member(:text, Shapes::ShapeRef.new(shape: SystemPromptText, location_name: "text"))
    SystemPromptConfig.add_member(:configuration_bundle, Shapes::ShapeRef.new(shape: SystemPromptConfigurationBundle, location_name: "configurationBundle"))
    SystemPromptConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SystemPromptConfig.add_member_subclass(:text, Types::SystemPromptConfig::Text)
    SystemPromptConfig.add_member_subclass(:configuration_bundle, Types::SystemPromptConfig::ConfigurationBundle)
    SystemPromptConfig.add_member_subclass(:unknown, Types::SystemPromptConfig::Unknown)
    SystemPromptConfig.struct_class = Types::SystemPromptConfig

    SystemPromptConfigurationBundle.add_member(:bundle_arn, Shapes::ShapeRef.new(shape: ConfigurationBundleArn, required: true, location_name: "bundleArn"))
    SystemPromptConfigurationBundle.add_member(:version_id, Shapes::ShapeRef.new(shape: ConfigurationBundleVersionId, required: true, location_name: "versionId"))
    SystemPromptConfigurationBundle.add_member(:system_prompt_json_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "systemPromptJsonPath"))
    SystemPromptConfigurationBundle.struct_class = Types::SystemPromptConfigurationBundle

    SystemPromptRecommendationConfig.add_member(:system_prompt, Shapes::ShapeRef.new(shape: SystemPromptConfig, required: true, location_name: "systemPrompt"))
    SystemPromptRecommendationConfig.add_member(:agent_traces, Shapes::ShapeRef.new(shape: AgentTracesConfig, required: true, location_name: "agentTraces"))
    SystemPromptRecommendationConfig.add_member(:evaluation_config, Shapes::ShapeRef.new(shape: RecommendationEvaluationConfig, location_name: "evaluationConfig"))
    SystemPromptRecommendationConfig.struct_class = Types::SystemPromptRecommendationConfig

    SystemPromptRecommendationResult.add_member(:recommended_system_prompt, Shapes::ShapeRef.new(shape: SystemPromptText, location_name: "recommendedSystemPrompt"))
    SystemPromptRecommendationResult.add_member(:configuration_bundle, Shapes::ShapeRef.new(shape: RecommendationResultConfigurationBundle, location_name: "configurationBundle"))
    SystemPromptRecommendationResult.add_member(:explanation, Shapes::ShapeRef.new(shape: RecommendationExplanation, location_name: "explanation"))
    SystemPromptRecommendationResult.add_member(:error_code, Shapes::ShapeRef.new(shape: RecommendationErrorCode, location_name: "errorCode"))
    SystemPromptRecommendationResult.add_member(:error_message, Shapes::ShapeRef.new(shape: RecommendationErrorMessage, location_name: "errorMessage"))
    SystemPromptRecommendationResult.struct_class = Types::SystemPromptRecommendationResult

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TargetPathList.member = Shapes::ShapeRef.new(shape: PathPattern)

    TargetRef.add_member(:name, Shapes::ShapeRef.new(shape: TargetName, required: true, location_name: "name"))
    TargetRef.struct_class = Types::TargetRef

    ThrottledException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottledException.struct_class = Types::ThrottledException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TokenBalance.add_member(:amount, Shapes::ShapeRef.new(shape: String, required: true, location_name: "amount"))
    TokenBalance.add_member(:decimals, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "decimals"))
    TokenBalance.add_member(:token, Shapes::ShapeRef.new(shape: InstrumentBalanceToken, required: true, location_name: "token"))
    TokenBalance.add_member(:network, Shapes::ShapeRef.new(shape: CryptoWalletNetwork, required: true, location_name: "network"))
    TokenBalance.add_member(:chain, Shapes::ShapeRef.new(shape: BlockchainChainId, required: true, location_name: "chain"))
    TokenBalance.struct_class = Types::TokenBalance

    TokenUsage.add_member(:input_tokens, Shapes::ShapeRef.new(shape: Integer, location_name: "inputTokens"))
    TokenUsage.add_member(:output_tokens, Shapes::ShapeRef.new(shape: Integer, location_name: "outputTokens"))
    TokenUsage.add_member(:total_tokens, Shapes::ShapeRef.new(shape: Integer, location_name: "totalTokens"))
    TokenUsage.struct_class = Types::TokenUsage

    ToolArguments.add_member(:code, Shapes::ShapeRef.new(shape: MaxLenString, location_name: "code"))
    ToolArguments.add_member(:language, Shapes::ShapeRef.new(shape: ProgrammingLanguage, location_name: "language"))
    ToolArguments.add_member(:clear_context, Shapes::ShapeRef.new(shape: Boolean, location_name: "clearContext"))
    ToolArguments.add_member(:command, Shapes::ShapeRef.new(shape: MaxLenString, location_name: "command"))
    ToolArguments.add_member(:path, Shapes::ShapeRef.new(shape: MaxLenString, location_name: "path"))
    ToolArguments.add_member(:paths, Shapes::ShapeRef.new(shape: StringList, location_name: "paths"))
    ToolArguments.add_member(:content, Shapes::ShapeRef.new(shape: InputContentBlockList, location_name: "content"))
    ToolArguments.add_member(:directory_path, Shapes::ShapeRef.new(shape: MaxLenString, location_name: "directoryPath"))
    ToolArguments.add_member(:task_id, Shapes::ShapeRef.new(shape: MaxLenString, location_name: "taskId"))
    ToolArguments.add_member(:runtime, Shapes::ShapeRef.new(shape: LanguageRuntime, location_name: "runtime"))
    ToolArguments.struct_class = Types::ToolArguments

    ToolDescriptionConfig.add_member(:text, Shapes::ShapeRef.new(shape: ToolDescriptionText, location_name: "text"))
    ToolDescriptionConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ToolDescriptionConfig.add_member_subclass(:text, Types::ToolDescriptionConfig::Text)
    ToolDescriptionConfig.add_member_subclass(:unknown, Types::ToolDescriptionConfig::Unknown)
    ToolDescriptionConfig.struct_class = Types::ToolDescriptionConfig

    ToolDescriptionConfigurationBundle.add_member(:bundle_arn, Shapes::ShapeRef.new(shape: ConfigurationBundleArn, required: true, location_name: "bundleArn"))
    ToolDescriptionConfigurationBundle.add_member(:version_id, Shapes::ShapeRef.new(shape: ConfigurationBundleVersionId, required: true, location_name: "versionId"))
    ToolDescriptionConfigurationBundle.add_member(:tools, Shapes::ShapeRef.new(shape: ConfigurationBundleToolEntryList, required: true, location_name: "tools"))
    ToolDescriptionConfigurationBundle.struct_class = Types::ToolDescriptionConfigurationBundle

    ToolDescriptionInput.add_member(:tool_name, Shapes::ShapeRef.new(shape: RecommendationToolName, required: true, location_name: "toolName"))
    ToolDescriptionInput.add_member(:tool_description, Shapes::ShapeRef.new(shape: ToolDescriptionConfig, required: true, location_name: "toolDescription"))
    ToolDescriptionInput.struct_class = Types::ToolDescriptionInput

    ToolDescriptionList.member = Shapes::ShapeRef.new(shape: ToolDescriptionInput)

    ToolDescriptionOutput.add_member(:tool_name, Shapes::ShapeRef.new(shape: RecommendationToolName, required: true, location_name: "toolName"))
    ToolDescriptionOutput.add_member(:recommended_tool_description, Shapes::ShapeRef.new(shape: ToolDescriptionText, location_name: "recommendedToolDescription"))
    ToolDescriptionOutput.add_member(:explanation, Shapes::ShapeRef.new(shape: RecommendationExplanation, location_name: "explanation"))
    ToolDescriptionOutput.struct_class = Types::ToolDescriptionOutput

    ToolDescriptionRecommendationConfig.add_member(:tool_description, Shapes::ShapeRef.new(shape: ToolDescriptionSource, required: true, location_name: "toolDescription"))
    ToolDescriptionRecommendationConfig.add_member(:agent_traces, Shapes::ShapeRef.new(shape: AgentTracesConfig, required: true, location_name: "agentTraces"))
    ToolDescriptionRecommendationConfig.struct_class = Types::ToolDescriptionRecommendationConfig

    ToolDescriptionRecommendationResult.add_member(:tools, Shapes::ShapeRef.new(shape: ToolDescriptionResultList, location_name: "tools"))
    ToolDescriptionRecommendationResult.add_member(:configuration_bundle, Shapes::ShapeRef.new(shape: RecommendationResultConfigurationBundle, location_name: "configurationBundle"))
    ToolDescriptionRecommendationResult.add_member(:error_code, Shapes::ShapeRef.new(shape: RecommendationErrorCode, location_name: "errorCode"))
    ToolDescriptionRecommendationResult.add_member(:error_message, Shapes::ShapeRef.new(shape: RecommendationErrorMessage, location_name: "errorMessage"))
    ToolDescriptionRecommendationResult.struct_class = Types::ToolDescriptionRecommendationResult

    ToolDescriptionResultList.member = Shapes::ShapeRef.new(shape: ToolDescriptionOutput)

    ToolDescriptionSource.add_member(:tool_description_text, Shapes::ShapeRef.new(shape: ToolDescriptionTextInput, location_name: "toolDescriptionText"))
    ToolDescriptionSource.add_member(:configuration_bundle, Shapes::ShapeRef.new(shape: ToolDescriptionConfigurationBundle, location_name: "configurationBundle"))
    ToolDescriptionSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ToolDescriptionSource.add_member_subclass(:tool_description_text, Types::ToolDescriptionSource::ToolDescriptionText)
    ToolDescriptionSource.add_member_subclass(:configuration_bundle, Types::ToolDescriptionSource::ConfigurationBundle)
    ToolDescriptionSource.add_member_subclass(:unknown, Types::ToolDescriptionSource::Unknown)
    ToolDescriptionSource.struct_class = Types::ToolDescriptionSource

    ToolDescriptionTextInput.add_member(:tools, Shapes::ShapeRef.new(shape: ToolDescriptionList, required: true, location_name: "tools"))
    ToolDescriptionTextInput.struct_class = Types::ToolDescriptionTextInput

    ToolResultStructuredContent.add_member(:task_id, Shapes::ShapeRef.new(shape: String, location_name: "taskId"))
    ToolResultStructuredContent.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "taskStatus"))
    ToolResultStructuredContent.add_member(:stdout, Shapes::ShapeRef.new(shape: String, location_name: "stdout"))
    ToolResultStructuredContent.add_member(:stderr, Shapes::ShapeRef.new(shape: String, location_name: "stderr"))
    ToolResultStructuredContent.add_member(:exit_code, Shapes::ShapeRef.new(shape: Integer, location_name: "exitCode"))
    ToolResultStructuredContent.add_member(:execution_time, Shapes::ShapeRef.new(shape: Double, location_name: "executionTime"))
    ToolResultStructuredContent.struct_class = Types::ToolResultStructuredContent

    ToolsDefinition.add_member(:protocol_version, Shapes::ShapeRef.new(shape: SchemaVersion, location_name: "protocolVersion"))
    ToolsDefinition.add_member(:inline_content, Shapes::ShapeRef.new(shape: InlineContent, location_name: "inlineContent"))
    ToolsDefinition.struct_class = Types::ToolsDefinition

    ToolsFileSystemConfiguration.add_member(:s3_files_configuration, Shapes::ShapeRef.new(shape: S3FilesConfiguration, location_name: "s3FilesConfiguration"))
    ToolsFileSystemConfiguration.add_member(:efs_configuration, Shapes::ShapeRef.new(shape: EfsConfiguration, location_name: "efsConfiguration"))
    ToolsFileSystemConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ToolsFileSystemConfiguration.add_member_subclass(:s3_files_configuration, Types::ToolsFileSystemConfiguration::S3FilesConfiguration)
    ToolsFileSystemConfiguration.add_member_subclass(:efs_configuration, Types::ToolsFileSystemConfiguration::EfsConfiguration)
    ToolsFileSystemConfiguration.add_member_subclass(:unknown, Types::ToolsFileSystemConfiguration::Unknown)
    ToolsFileSystemConfiguration.struct_class = Types::ToolsFileSystemConfiguration

    ToolsFileSystemConfigurations.member = Shapes::ShapeRef.new(shape: ToolsFileSystemConfiguration)

    TraceIds.member = Shapes::ShapeRef.new(shape: TraceId)

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    Unit.struct_class = Types::Unit

    UpdateABTestRequest.add_member(:ab_test_id, Shapes::ShapeRef.new(shape: ABTestId, required: true, location: "uri", location_name: "abTestId"))
    UpdateABTestRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateABTestRequest.add_member(:name, Shapes::ShapeRef.new(shape: ABTestName, location_name: "name"))
    UpdateABTestRequest.add_member(:description, Shapes::ShapeRef.new(shape: ABTestDescription, location_name: "description"))
    UpdateABTestRequest.add_member(:variants, Shapes::ShapeRef.new(shape: VariantList, location_name: "variants"))
    UpdateABTestRequest.add_member(:gateway_filter, Shapes::ShapeRef.new(shape: GatewayFilter, location_name: "gatewayFilter"))
    UpdateABTestRequest.add_member(:evaluation_config, Shapes::ShapeRef.new(shape: ABTestEvaluationConfig, location_name: "evaluationConfig"))
    UpdateABTestRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateABTestRequest.add_member(:execution_status, Shapes::ShapeRef.new(shape: ABTestExecutionStatus, location_name: "executionStatus"))
    UpdateABTestRequest.struct_class = Types::UpdateABTestRequest

    UpdateABTestResponse.add_member(:ab_test_id, Shapes::ShapeRef.new(shape: ABTestId, required: true, location_name: "abTestId"))
    UpdateABTestResponse.add_member(:ab_test_arn, Shapes::ShapeRef.new(shape: ABTestArn, required: true, location_name: "abTestArn"))
    UpdateABTestResponse.add_member(:status, Shapes::ShapeRef.new(shape: ABTestStatus, required: true, location_name: "status"))
    UpdateABTestResponse.add_member(:execution_status, Shapes::ShapeRef.new(shape: ABTestExecutionStatus, required: true, location_name: "executionStatus"))
    UpdateABTestResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateABTestResponse.struct_class = Types::UpdateABTestResponse

    UpdateBrowserStreamRequest.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "browserIdentifier"))
    UpdateBrowserStreamRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location: "querystring", location_name: "sessionId"))
    UpdateBrowserStreamRequest.add_member(:stream_update, Shapes::ShapeRef.new(shape: StreamUpdate, required: true, location_name: "streamUpdate"))
    UpdateBrowserStreamRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateBrowserStreamRequest.struct_class = Types::UpdateBrowserStreamRequest

    UpdateBrowserStreamResponse.add_member(:browser_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "browserIdentifier"))
    UpdateBrowserStreamResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: BrowserSessionId, required: true, location_name: "sessionId"))
    UpdateBrowserStreamResponse.add_member(:streams, Shapes::ShapeRef.new(shape: BrowserSessionStream, required: true, location_name: "streams"))
    UpdateBrowserStreamResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateBrowserStreamResponse.struct_class = Types::UpdateBrowserStreamResponse

    UserIdentifier.add_member(:user_token, Shapes::ShapeRef.new(shape: UserTokenType, location_name: "userToken"))
    UserIdentifier.add_member(:user_id, Shapes::ShapeRef.new(shape: UserIdType, location_name: "userId"))
    UserIdentifier.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    UserIdentifier.add_member_subclass(:user_token, Types::UserIdentifier::UserToken)
    UserIdentifier.add_member_subclass(:user_id, Types::UserIdentifier::UserId)
    UserIdentifier.add_member_subclass(:unknown, Types::UserIdentifier::Unknown)
    UserIdentifier.struct_class = Types::UserIdentifier

    UserIntentAffectedSession.add_member(:session_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sessionId"))
    UserIntentAffectedSession.add_member(:user_messages, Shapes::ShapeRef.new(shape: UserIntentList, required: true, location_name: "userMessages"))
    UserIntentAffectedSession.struct_class = Types::UserIntentAffectedSession

    UserIntentAffectedSessionList.member = Shapes::ShapeRef.new(shape: UserIntentAffectedSession)

    UserIntentCluster.add_member(:cluster_id, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "clusterId"))
    UserIntentCluster.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    UserIntentCluster.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    UserIntentCluster.add_member(:affected_session_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "affectedSessionCount"))
    UserIntentCluster.add_member(:affected_sessions, Shapes::ShapeRef.new(shape: UserIntentAffectedSessionList, required: true, location_name: "affectedSessions"))
    UserIntentCluster.struct_class = Types::UserIntentCluster

    UserIntentClusterList.member = Shapes::ShapeRef.new(shape: UserIntentCluster)

    UserIntentClusteringResultContent.add_member(:user_intents, Shapes::ShapeRef.new(shape: UserIntentClusterList, required: true, location_name: "userIntents"))
    UserIntentClusteringResultContent.struct_class = Types::UserIntentClusteringResultContent

    UserIntentList.member = Shapes::ShapeRef.new(shape: String)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    Variant.add_member(:name, Shapes::ShapeRef.new(shape: VariantName, required: true, location_name: "name"))
    Variant.add_member(:weight, Shapes::ShapeRef.new(shape: VariantWeightInteger, required: true, location_name: "weight"))
    Variant.add_member(:variant_configuration, Shapes::ShapeRef.new(shape: VariantConfiguration, required: true, location_name: "variantConfiguration"))
    Variant.struct_class = Types::Variant

    VariantConfiguration.add_member(:configuration_bundle, Shapes::ShapeRef.new(shape: ConfigurationBundleRef, location_name: "configurationBundle"))
    VariantConfiguration.add_member(:target, Shapes::ShapeRef.new(shape: TargetRef, location_name: "target"))
    VariantConfiguration.struct_class = Types::VariantConfiguration

    VariantList.member = Shapes::ShapeRef.new(shape: Variant)

    VariantResult.add_member(:variant_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "variantName"))
    VariantResult.add_member(:sample_size, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "sampleSize"))
    VariantResult.add_member(:mean, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "mean"))
    VariantResult.add_member(:absolute_change, Shapes::ShapeRef.new(shape: Double, location_name: "absoluteChange"))
    VariantResult.add_member(:percent_change, Shapes::ShapeRef.new(shape: Double, location_name: "percentChange"))
    VariantResult.add_member(:p_value, Shapes::ShapeRef.new(shape: Double, location_name: "pValue"))
    VariantResult.add_member(:confidence_interval, Shapes::ShapeRef.new(shape: ConfidenceInterval, location_name: "confidenceInterval"))
    VariantResult.add_member(:is_significant, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isSignificant"))
    VariantResult.struct_class = Types::VariantResult

    VariantResultList.member = Shapes::ShapeRef.new(shape: VariantResult)

    ViewPort.add_member(:width, Shapes::ShapeRef.new(shape: ViewPortWidth, required: true, location_name: "width"))
    ViewPort.add_member(:height, Shapes::ShapeRef.new(shape: ViewPortHeight, required: true, location_name: "height"))
    ViewPort.struct_class = Types::ViewPort

    WwwAuthenticateHeaderList.member = Shapes::ShapeRef.new(shape: WwwAuthenticateHeader)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-02-28"

      api.metadata = {
        "apiVersion" => "2024-02-28",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "bedrock-agentcore",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Bedrock AgentCore",
        "serviceId" => "Bedrock AgentCore",
        "signatureVersion" => "v4",
        "signingName" => "bedrock-agentcore",
        "uid" => "bedrock-agentcore-2024-02-28",
      }

      api.add_operation(:batch_create_memory_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateMemoryRecords"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/memoryRecords/batchCreate"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateMemoryRecordsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateMemoryRecordsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:batch_delete_memory_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteMemoryRecords"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/memoryRecords/batchDelete"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteMemoryRecordsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteMemoryRecordsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:batch_update_memory_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateMemoryRecords"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/memoryRecords/batchUpdate"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateMemoryRecordsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateMemoryRecordsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:complete_resource_token_auth, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CompleteResourceTokenAuth"
        o.http_method = "POST"
        o.http_request_uri = "/identities/CompleteResourceTokenAuth"
        o.input = Shapes::ShapeRef.new(shape: CompleteResourceTokenAuthRequest)
        o.output = Shapes::ShapeRef.new(shape: CompleteResourceTokenAuthResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_ab_test, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateABTest"
        o.http_method = "POST"
        o.http_request_uri = "/ab-tests"
        o.input = Shapes::ShapeRef.new(shape: CreateABTestRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateABTestResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEvent"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/events"
        o.input = Shapes::ShapeRef.new(shape: CreateEventInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_payment_instrument, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePaymentInstrument"
        o.http_method = "POST"
        o.http_request_uri = "/payments/createPaymentInstrument"
        o.input = Shapes::ShapeRef.new(shape: CreatePaymentInstrumentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePaymentInstrumentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionRequiredException)
      end)

      api.add_operation(:create_payment_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePaymentSession"
        o.http_method = "POST"
        o.http_request_uri = "/payments/createPaymentSession"
        o.input = Shapes::ShapeRef.new(shape: CreatePaymentSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePaymentSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionRequiredException)
      end)

      api.add_operation(:delete_ab_test, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteABTest"
        o.http_method = "DELETE"
        o.http_request_uri = "/ab-tests/{abTestId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteABTestRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteABTestResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_batch_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBatchEvaluation"
        o.http_method = "DELETE"
        o.http_request_uri = "/evaluations/batch-evaluate/{batchEvaluationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteBatchEvaluationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBatchEvaluationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_capacity_provider_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCapacityProviderSession"
        o.http_method = "DELETE"
        o.http_request_uri = "/capacity-providers/{capacityProviderId}/sessions/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCapacityProviderSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCapacityProviderSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEvent"
        o.http_method = "DELETE"
        o.http_request_uri = "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}/events/{eventId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_memory_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMemoryRecord"
        o.http_method = "DELETE"
        o.http_request_uri = "/memories/{memoryId}/memoryRecords/{memoryRecordId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMemoryRecordInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMemoryRecordOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_payment_instrument, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePaymentInstrument"
        o.http_method = "POST"
        o.http_request_uri = "/payments/deletePaymentInstrument"
        o.input = Shapes::ShapeRef.new(shape: DeletePaymentInstrumentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePaymentInstrumentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_payment_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePaymentSession"
        o.http_method = "POST"
        o.http_request_uri = "/payments/deletePaymentSession"
        o.input = Shapes::ShapeRef.new(shape: DeletePaymentSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePaymentSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRecommendation"
        o.http_method = "DELETE"
        o.http_request_uri = "/recommendations/{recommendationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:evaluate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Evaluate"
        o.http_method = "POST"
        o.http_request_uri = "/evaluations/evaluate/{evaluatorId}"
        o.input = Shapes::ShapeRef.new(shape: EvaluateRequest)
        o.output = Shapes::ShapeRef.new(shape: EvaluateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateIdException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_ab_test, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetABTest"
        o.http_method = "GET"
        o.http_request_uri = "/ab-tests/{abTestId}"
        o.input = Shapes::ShapeRef.new(shape: GetABTestRequest)
        o.output = Shapes::ShapeRef.new(shape: GetABTestResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_agent_card, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAgentCard"
        o.http_method = "GET"
        o.http_request_uri = "/runtimes/{agentRuntimeArn}/invocations/.well-known/agent-card.json"
        o.input = Shapes::ShapeRef.new(shape: GetAgentCardRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAgentCardResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RuntimeClientError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_batch_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBatchEvaluation"
        o.http_method = "GET"
        o.http_request_uri = "/evaluations/batch-evaluate/{batchEvaluationId}"
        o.input = Shapes::ShapeRef.new(shape: GetBatchEvaluationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBatchEvaluationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_browser_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBrowserSession"
        o.http_method = "GET"
        o.http_request_uri = "/browsers/{browserIdentifier}/sessions/get"
        o.input = Shapes::ShapeRef.new(shape: GetBrowserSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBrowserSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_code_interpreter_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCodeInterpreterSession"
        o.http_method = "GET"
        o.http_request_uri = "/code-interpreters/{codeInterpreterIdentifier}/sessions/get"
        o.input = Shapes::ShapeRef.new(shape: GetCodeInterpreterSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCodeInterpreterSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEvent"
        o.http_method = "GET"
        o.http_request_uri = "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}/events/{eventId}"
        o.input = Shapes::ShapeRef.new(shape: GetEventInput)
        o.output = Shapes::ShapeRef.new(shape: GetEventOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_memory_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMemoryRecord"
        o.http_method = "GET"
        o.http_request_uri = "/memories/{memoryId}/memoryRecord/{memoryRecordId}"
        o.input = Shapes::ShapeRef.new(shape: GetMemoryRecordInput)
        o.output = Shapes::ShapeRef.new(shape: GetMemoryRecordOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_payment_instrument, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPaymentInstrument"
        o.http_method = "POST"
        o.http_request_uri = "/payments/getPaymentInstrument"
        o.input = Shapes::ShapeRef.new(shape: GetPaymentInstrumentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPaymentInstrumentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_payment_instrument_balance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPaymentInstrumentBalance"
        o.http_method = "POST"
        o.http_request_uri = "/payments/getPaymentInstrumentBalance"
        o.input = Shapes::ShapeRef.new(shape: GetPaymentInstrumentBalanceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPaymentInstrumentBalanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_payment_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPaymentSession"
        o.http_method = "POST"
        o.http_request_uri = "/payments/getPaymentSession"
        o.input = Shapes::ShapeRef.new(shape: GetPaymentSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPaymentSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecommendation"
        o.http_method = "GET"
        o.http_request_uri = "/recommendations/{recommendationId}"
        o.input = Shapes::ShapeRef.new(shape: GetRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_resource_api_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceApiKey"
        o.http_method = "POST"
        o.http_request_uri = "/identities/api-key"
        o.input = Shapes::ShapeRef.new(shape: GetResourceApiKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceApiKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_resource_oauth_2_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceOauth2Token"
        o.http_method = "POST"
        o.http_request_uri = "/identities/oauth2/token"
        o.input = Shapes::ShapeRef.new(shape: GetResourceOauth2TokenRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceOauth2TokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_resource_payment_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePaymentToken"
        o.http_method = "POST"
        o.http_request_uri = "/identities/payment/token"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePaymentTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePaymentTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_workload_access_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkloadAccessToken"
        o.http_method = "POST"
        o.http_request_uri = "/identities/GetWorkloadAccessToken"
        o.input = Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_workload_access_token_for_jwt, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkloadAccessTokenForJWT"
        o.http_method = "POST"
        o.http_request_uri = "/identities/GetWorkloadAccessTokenForJWT"
        o.input = Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenForJWTRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenForJWTResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_workload_access_token_for_user_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkloadAccessTokenForUserId"
        o.http_method = "POST"
        o.http_request_uri = "/identities/GetWorkloadAccessTokenForUserId"
        o.input = Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenForUserIdRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkloadAccessTokenForUserIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:ingest_data, Seahorse::Model::Operation.new.tap do |o|
        o.name = "IngestData"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/ingest"
        o.input = Shapes::ShapeRef.new(shape: IngestDataInput)
        o.output = Shapes::ShapeRef.new(shape: IngestDataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:invoke_agent_runtime, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeAgentRuntime"
        o.http_method = "POST"
        o.http_request_uri = "/runtimes/{agentRuntimeArn}/invocations"
        o.input = Shapes::ShapeRef.new(shape: InvokeAgentRuntimeRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeAgentRuntimeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RuntimeClientError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:invoke_agent_runtime_command, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeAgentRuntimeCommand"
        o.http_method = "POST"
        o.http_request_uri = "/runtimes/{agentRuntimeArn}/commands"
        o.input = Shapes::ShapeRef.new(shape: InvokeAgentRuntimeCommandRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeAgentRuntimeCommandResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RuntimeClientError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:invoke_browser, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeBrowser"
        o.http_method = "POST"
        o.http_request_uri = "/browsers/{browserIdentifier}/sessions/invoke"
        o.input = Shapes::ShapeRef.new(shape: InvokeBrowserRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeBrowserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:invoke_code_interpreter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeCodeInterpreter"
        o.http_method = "POST"
        o.http_request_uri = "/code-interpreters/{codeInterpreterIdentifier}/tools/invoke"
        o.input = Shapes::ShapeRef.new(shape: InvokeCodeInterpreterRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeCodeInterpreterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:invoke_harness, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeHarness"
        o.http_method = "POST"
        o.http_request_uri = "/harnesses/invoke"
        o.input = Shapes::ShapeRef.new(shape: InvokeHarnessRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeHarnessResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RuntimeClientError)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_ab_tests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListABTests"
        o.http_method = "GET"
        o.http_request_uri = "/ab-tests"
        o.input = Shapes::ShapeRef.new(shape: ListABTestsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListABTestsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_actors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListActors"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/actors"
        o.input = Shapes::ShapeRef.new(shape: ListActorsInput)
        o.output = Shapes::ShapeRef.new(shape: ListActorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_batch_evaluations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBatchEvaluations"
        o.http_method = "GET"
        o.http_request_uri = "/evaluations/batch-evaluate"
        o.input = Shapes::ShapeRef.new(shape: ListBatchEvaluationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBatchEvaluationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_browser_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBrowserSessions"
        o.http_method = "POST"
        o.http_request_uri = "/browsers/{browserIdentifier}/sessions/list"
        o.input = Shapes::ShapeRef.new(shape: ListBrowserSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBrowserSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_code_interpreter_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeInterpreterSessions"
        o.http_method = "POST"
        o.http_request_uri = "/code-interpreters/{codeInterpreterIdentifier}/sessions/list"
        o.input = Shapes::ShapeRef.new(shape: ListCodeInterpreterSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCodeInterpreterSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEvents"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: ListEventsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEventsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_memory_extraction_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMemoryExtractionJobs"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/extractionJobs"
        o.input = Shapes::ShapeRef.new(shape: ListMemoryExtractionJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMemoryExtractionJobsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_memory_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMemoryRecords"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/memoryRecords"
        o.input = Shapes::ShapeRef.new(shape: ListMemoryRecordsInput)
        o.output = Shapes::ShapeRef.new(shape: ListMemoryRecordsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_payment_instruments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPaymentInstruments"
        o.http_method = "POST"
        o.http_request_uri = "/payments/listPaymentInstruments"
        o.input = Shapes::ShapeRef.new(shape: ListPaymentInstrumentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPaymentInstrumentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_payment_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPaymentSessions"
        o.http_method = "POST"
        o.http_request_uri = "/payments/listPaymentSessions"
        o.input = Shapes::ShapeRef.new(shape: ListPaymentSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPaymentSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecommendations"
        o.http_method = "GET"
        o.http_request_uri = "/recommendations"
        o.input = Shapes::ShapeRef.new(shape: ListRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSessions"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/actor/{actorId}/sessions"
        o.input = Shapes::ShapeRef.new(shape: ListSessionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSessionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:process_payment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ProcessPayment"
        o.http_method = "POST"
        o.http_request_uri = "/payments/processPayment"
        o.input = Shapes::ShapeRef.new(shape: ProcessPaymentRequest)
        o.output = Shapes::ShapeRef.new(shape: ProcessPaymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionRequiredException)
      end)

      api.add_operation(:retrieve_memory_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RetrieveMemoryRecords"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/retrieve"
        o.input = Shapes::ShapeRef.new(shape: RetrieveMemoryRecordsInput)
        o.output = Shapes::ShapeRef.new(shape: RetrieveMemoryRecordsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:save_browser_session_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SaveBrowserSessionProfile"
        o.http_method = "PUT"
        o.http_request_uri = "/browser-profiles/{profileIdentifier}/save"
        o.input = Shapes::ShapeRef.new(shape: SaveBrowserSessionProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: SaveBrowserSessionProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:search_registry_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchRegistryRecords"
        o.http_method = "POST"
        o.http_request_uri = "/registry-records/search"
        o.input = Shapes::ShapeRef.new(shape: SearchRegistryRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchRegistryRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_batch_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartBatchEvaluation"
        o.http_method = "POST"
        o.http_request_uri = "/evaluations/batch-evaluate"
        o.input = Shapes::ShapeRef.new(shape: StartBatchEvaluationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartBatchEvaluationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_browser_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartBrowserSession"
        o.http_method = "PUT"
        o.http_request_uri = "/browsers/{browserIdentifier}/sessions/start"
        o.input = Shapes::ShapeRef.new(shape: StartBrowserSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartBrowserSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_code_interpreter_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCodeInterpreterSession"
        o.http_method = "PUT"
        o.http_request_uri = "/code-interpreters/{codeInterpreterIdentifier}/sessions/start"
        o.input = Shapes::ShapeRef.new(shape: StartCodeInterpreterSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCodeInterpreterSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_memory_extraction_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMemoryExtractionJob"
        o.http_method = "POST"
        o.http_request_uri = "/memories/{memoryId}/extractionJobs/start"
        o.input = Shapes::ShapeRef.new(shape: StartMemoryExtractionJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartMemoryExtractionJobOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartRecommendation"
        o.http_method = "POST"
        o.http_request_uri = "/recommendations"
        o.input = Shapes::ShapeRef.new(shape: StartRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_batch_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopBatchEvaluation"
        o.http_method = "POST"
        o.http_request_uri = "/evaluations/batch-evaluate/{batchEvaluationId}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopBatchEvaluationRequest)
        o.output = Shapes::ShapeRef.new(shape: StopBatchEvaluationResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_browser_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopBrowserSession"
        o.http_method = "PUT"
        o.http_request_uri = "/browsers/{browserIdentifier}/sessions/stop"
        o.input = Shapes::ShapeRef.new(shape: StopBrowserSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopBrowserSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_code_interpreter_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopCodeInterpreterSession"
        o.http_method = "PUT"
        o.http_request_uri = "/code-interpreters/{codeInterpreterIdentifier}/sessions/stop"
        o.input = Shapes::ShapeRef.new(shape: StopCodeInterpreterSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopCodeInterpreterSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_runtime_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopRuntimeSession"
        o.http_method = "POST"
        o.http_request_uri = "/runtimes/{agentRuntimeArn}/stopruntimesession"
        o.input = Shapes::ShapeRef.new(shape: StopRuntimeSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopRuntimeSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: RetryableConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: RuntimeClientError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_ab_test, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateABTest"
        o.http_method = "PUT"
        o.http_request_uri = "/ab-tests/{abTestId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateABTestRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateABTestResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_browser_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBrowserStream"
        o.http_method = "PUT"
        o.http_request_uri = "/browsers/{browserIdentifier}/sessions/streams/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateBrowserStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBrowserStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
