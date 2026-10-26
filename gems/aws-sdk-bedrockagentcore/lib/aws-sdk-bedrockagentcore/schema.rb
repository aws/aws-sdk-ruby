# frozen_string_literal: true

# This is generated code!

module Aws::BedrockAgentCore
  # This module contains a schema composed of shapes used by the client.
  module Schema

    A2aDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#A2aDescriptor", name: "A2aDescriptor")
    ABTestArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ABTestArn", name: "ABTestArn", traits: {"aws.api#arnReference" => {"type" => "AWS::BedrockAgentCore::ABTest"}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:ab-test/[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"})
    ABTestDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ABTestDescription", name: "ABTestDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ABTestEvaluationConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#ABTestEvaluationConfig", name: "ABTestEvaluationConfig")
    ABTestExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#ABTestExecutionStatus", name: "ABTestExecutionStatus")
    ABTestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ABTestId", name: "ABTestId", traits: {"smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"})
    ABTestName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ABTestName", name: "ABTestName", traits: {"smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]{0,47}$"})
    ABTestResults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ABTestResults", name: "ABTestResults")
    ABTestStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#ABTestStatus", name: "ABTestStatus")
    ABTestSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ABTestSummary", name: "ABTestSummary")
    ABTestSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#ABTestSummaryList", name: "ABTestSummaryList")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#AccessTokenType", name: "AccessTokenType", traits: {"smithy.api#length" => {"min" => 1, "max" => 131072}, "smithy.api#sensitive" => {}})
    ActorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ActorId", name: "ActorId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-_/]*(?::[a-zA-Z0-9-_/]+)*[a-zA-Z0-9-_/]*$"})
    ActorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ActorSummary", name: "ActorSummary")
    ActorSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#ActorSummaryList", name: "ActorSummaryList")
    AffectedSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#AffectedSession", name: "AffectedSession")
    AffectedSessionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#AffectedSessionList", name: "AffectedSessionList", traits: {"smithy.api#length" => {"min" => 0}})
    AgentCard = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.bedrockagentcore#AgentCard", name: "AgentCard")
    AgentCardDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#AgentCardDefinition", name: "AgentCardDefinition")
    AgentSkillsDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#AgentSkillsDescriptor", name: "AgentSkillsDescriptor")
    AgentTracesConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#AgentTracesConfig", name: "AgentTracesConfig")
    Amount = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#Amount", name: "Amount")
    ApiKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ApiKeyArn", name: "ApiKeyArn", traits: {"smithy.api#pattern" => "^arn:aws:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:token-vault/[a-zA-Z0-9-.]+/apikeycredentialprovider/[a-zA-Z0-9-.]+$"})
    ApiKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ApiKeyType", name: "ApiKeyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#sensitive" => {}})
    AudienceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#AudienceType", name: "AudienceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AudiencesListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#AudiencesListType", name: "AudiencesListType")
    AuthorizationUrlType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#AuthorizationUrlType", name: "AuthorizationUrlType", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    AutomationStream = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#AutomationStream", name: "AutomationStream")
    AutomationStreamStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#AutomationStreamStatus", name: "AutomationStreamStatus")
    AutomationStreamUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#AutomationStreamUpdate", name: "AutomationStreamUpdate")
    AvailableLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#AvailableLimits", name: "AvailableLimits")
    BasicAuth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#BasicAuth", name: "BasicAuth")
    BatchCreateMemoryRecordsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#BatchCreateMemoryRecordsInput", name: "BatchCreateMemoryRecordsInput")
    BatchCreateMemoryRecordsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#BatchCreateMemoryRecordsOutput", name: "BatchCreateMemoryRecordsOutput")
    BatchDeleteMemoryRecordsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#BatchDeleteMemoryRecordsInput", name: "BatchDeleteMemoryRecordsInput")
    BatchDeleteMemoryRecordsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#BatchDeleteMemoryRecordsOutput", name: "BatchDeleteMemoryRecordsOutput")
    BatchEvaluationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#BatchEvaluationArn", name: "BatchEvaluationArn", traits: {"aws.api#arnReference" => {"type" => "AWS::BedrockAgentCore::BatchEvaluate"}})
    BatchEvaluationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#BatchEvaluationDescription", name: "BatchEvaluationDescription", traits: {"smithy.api#length" => {"max" => 200}})
    BatchEvaluationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#BatchEvaluationId", name: "BatchEvaluationId", traits: {"smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"})
    BatchEvaluationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#BatchEvaluationName", name: "BatchEvaluationName", traits: {"smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]{0,47}$"})
    BatchEvaluationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#BatchEvaluationStatus", name: "BatchEvaluationStatus")
    BatchEvaluationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#BatchEvaluationSummary", name: "BatchEvaluationSummary")
    BatchEvaluationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#BatchEvaluationSummaryList", name: "BatchEvaluationSummaryList")
    BatchEvaluationTraceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#BatchEvaluationTraceConfig", name: "BatchEvaluationTraceConfig")
    BatchUpdateMemoryRecordsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#BatchUpdateMemoryRecordsInput", name: "BatchUpdateMemoryRecordsInput")
    BatchUpdateMemoryRecordsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#BatchUpdateMemoryRecordsOutput", name: "BatchUpdateMemoryRecordsOutput")
    BlockchainChainId = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#BlockchainChainId", name: "BlockchainChainId")
    Body = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.bedrockagentcore#Body", name: "Body", traits: {"smithy.api#length" => {"max" => 100000000}, "smithy.api#sensitive" => {}})
    Branch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#Branch", name: "Branch")
    BranchFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#BranchFilter", name: "BranchFilter")
    BranchName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#BranchName", name: "BranchName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-_]*$"})
    BrowserAction = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#BrowserAction", name: "BrowserAction")
    BrowserActionResult = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#BrowserActionResult", name: "BrowserActionResult")
    BrowserActionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#BrowserActionStatus", name: "BrowserActionStatus")
    BrowserEnterprisePolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#BrowserEnterprisePolicies", name: "BrowserEnterprisePolicies", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    BrowserEnterprisePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#BrowserEnterprisePolicy", name: "BrowserEnterprisePolicy")
    BrowserEnterprisePolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#BrowserEnterprisePolicyType", name: "BrowserEnterprisePolicyType")
    BrowserExtension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#BrowserExtension", name: "BrowserExtension")
    BrowserExtensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#BrowserExtensions", name: "BrowserExtensions", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    BrowserProfileConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#BrowserProfileConfiguration", name: "BrowserProfileConfiguration")
    BrowserProfileId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#BrowserProfileId", name: "BrowserProfileId", traits: {"smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10}$"})
    BrowserSessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#BrowserSessionId", name: "BrowserSessionId", traits: {"smithy.api#pattern" => "^[0-9a-zA-Z]{1,40}$"})
    BrowserSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#BrowserSessionStatus", name: "BrowserSessionStatus")
    BrowserSessionStream = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#BrowserSessionStream", name: "BrowserSessionStream")
    BrowserSessionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#BrowserSessionSummaries", name: "BrowserSessionSummaries")
    BrowserSessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#BrowserSessionSummary", name: "BrowserSessionSummary")
    BrowserSessionTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockagentcore#BrowserSessionTimeout", name: "BrowserSessionTimeout", traits: {"smithy.api#range" => {"min" => 1, "max" => 28800}})
    BrowserStreamEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#BrowserStreamEndpoint", name: "BrowserStreamEndpoint", traits: {"smithy.api#length" => {"min" => 10, "max" => 512}})
    CapacityProviderArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#CapacityProviderArn", name: "CapacityProviderArn", traits: {"aws.api#arnReference" => {"type" => "AWS::BedrockAgentCore::CapacityProvider"}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:capacity-provider/[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10}$"})
    CapacityProviderId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#CapacityProviderId", name: "CapacityProviderId", traits: {"smithy.api#length" => {"min" => 12, "max" => 59}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10}$"})
    CapacityProviderSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#CapacityProviderSessionStatus", name: "CapacityProviderSessionStatus")
    Certificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#Certificate", name: "Certificate")
    CertificateLocation = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#CertificateLocation", name: "CertificateLocation")
    Certificates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#Certificates", name: "Certificates", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 33, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,256}$"})
    CloudWatchFilterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CloudWatchFilterConfig", name: "CloudWatchFilterConfig")
    CloudWatchLogsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CloudWatchLogsFilter", name: "CloudWatchLogsFilter")
    CloudWatchLogsFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#CloudWatchLogsFilterList", name: "CloudWatchLogsFilterList")
    CloudWatchLogsFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#CloudWatchLogsFilterOperator", name: "CloudWatchLogsFilterOperator")
    CloudWatchLogsRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CloudWatchLogsRule", name: "CloudWatchLogsRule")
    CloudWatchLogsSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CloudWatchLogsSource", name: "CloudWatchLogsSource")
    CloudWatchLogsTraceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CloudWatchLogsTraceConfig", name: "CloudWatchLogsTraceConfig")
    CloudWatchOutputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CloudWatchOutputConfig", name: "CloudWatchOutputConfig")
    CodeInterpreterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CodeInterpreterResult", name: "CodeInterpreterResult")
    CodeInterpreterSessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#CodeInterpreterSessionId", name: "CodeInterpreterSessionId", traits: {"smithy.api#pattern" => "^[0-9a-zA-Z]{1,40}$"})
    CodeInterpreterSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#CodeInterpreterSessionStatus", name: "CodeInterpreterSessionStatus")
    CodeInterpreterSessionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#CodeInterpreterSessionSummaries", name: "CodeInterpreterSessionSummaries")
    CodeInterpreterSessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CodeInterpreterSessionSummary", name: "CodeInterpreterSessionSummary")
    CodeInterpreterSessionTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockagentcore#CodeInterpreterSessionTimeout", name: "CodeInterpreterSessionTimeout", traits: {"smithy.api#range" => {"min" => 1, "max" => 28800}})
    CodeInterpreterStreamOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#CodeInterpreterStreamOutput", name: "CodeInterpreterStreamOutput", traits: {"smithy.api#streaming" => {}})
    CoinbaseCdpPaymentJwtTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#CoinbaseCdpPaymentJwtTokenType", name: "CoinbaseCdpPaymentJwtTokenType", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#sensitive" => {}})
    CoinbaseCdpPaymentRequestBodyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#CoinbaseCdpPaymentRequestBodyType", name: "CoinbaseCdpPaymentRequestBodyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E]+$"})
    CoinbaseCdpTokenRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CoinbaseCdpTokenRequestInput", name: "CoinbaseCdpTokenRequestInput")
    CoinbaseCdpTokenResponseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CoinbaseCdpTokenResponseOutput", name: "CoinbaseCdpTokenResponseOutput")
    CommandExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#CommandExecutionStatus", name: "CommandExecutionStatus")
    CompleteResourceTokenAuthRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CompleteResourceTokenAuthRequest", name: "CompleteResourceTokenAuthRequest")
    CompleteResourceTokenAuthResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CompleteResourceTokenAuthResponse", name: "CompleteResourceTokenAuthResponse")
    ConfidenceInterval = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ConfidenceInterval", name: "ConfidenceInterval")
    ConfigurationBundleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ConfigurationBundleArn", name: "ConfigurationBundleArn", traits: {"smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:configuration-bundle/[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"})
    ConfigurationBundleRef = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ConfigurationBundleRef", name: "ConfigurationBundleRef")
    ConfigurationBundleToolEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ConfigurationBundleToolEntry", name: "ConfigurationBundleToolEntry")
    ConfigurationBundleToolEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#ConfigurationBundleToolEntryList", name: "ConfigurationBundleToolEntryList")
    ConfigurationBundleVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ConfigurationBundleVersion", name: "ConfigurationBundleVersion", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ConfigurationBundleVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ConfigurationBundleVersionId", name: "ConfigurationBundleVersionId")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Content = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#Content", name: "Content")
    ContentBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ContentBlock", name: "ContentBlock")
    ContentBlockList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#ContentBlockList", name: "ContentBlockList")
    ContentBlockType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#ContentBlockType", name: "ContentBlockType")
    ContentDeltaEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ContentDeltaEvent", name: "ContentDeltaEvent")
    ContentSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#ContentSource", name: "ContentSource")
    ContentStartEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ContentStartEvent", name: "ContentStartEvent")
    ContentStopEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ContentStopEvent", name: "ContentStopEvent")
    Context = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#Context", name: "Context")
    ControlStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ControlStats", name: "ControlStats")
    Conversational = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#Conversational", name: "Conversational")
    CreateABTestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CreateABTestRequest", name: "CreateABTestRequest")
    CreateABTestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CreateABTestResponse", name: "CreateABTestResponse")
    CreateEventInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CreateEventInput", name: "CreateEventInput")
    CreateEventOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CreateEventOutput", name: "CreateEventOutput")
    CreatePaymentInstrumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CreatePaymentInstrumentRequest", name: "CreatePaymentInstrumentRequest")
    CreatePaymentInstrumentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CreatePaymentInstrumentResponse", name: "CreatePaymentInstrumentResponse")
    CreatePaymentSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CreatePaymentSessionRequest", name: "CreatePaymentSessionRequest")
    CreatePaymentSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CreatePaymentSessionResponse", name: "CreatePaymentSessionResponse")
    CredentialProviderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#CredentialProviderName", name: "CredentialProviderName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_]+$"})
    CryptoWalletNetwork = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#CryptoWalletNetwork", name: "CryptoWalletNetwork")
    CryptoX402PaymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CryptoX402PaymentInput", name: "CryptoX402PaymentInput")
    CryptoX402PaymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CryptoX402PaymentOutput", name: "CryptoX402PaymentOutput")
    Currency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#Currency", name: "Currency")
    CustomDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#CustomDescriptor", name: "CustomDescriptor")
    CustomRequestKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#CustomRequestKeyType", name: "CustomRequestKeyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_\\.]+$"})
    CustomRequestParametersType = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentcore#CustomRequestParametersType", name: "CustomRequestParametersType")
    CustomRequestValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#CustomRequestValueType", name: "CustomRequestValueType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    DataSourceConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#DataSourceConfig", name: "DataSourceConfig")
    DateTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.bedrockagentcore#DateTimestamp", name: "DateTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteABTestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeleteABTestRequest", name: "DeleteABTestRequest")
    DeleteABTestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeleteABTestResponse", name: "DeleteABTestResponse")
    DeleteBatchEvaluationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeleteBatchEvaluationRequest", name: "DeleteBatchEvaluationRequest")
    DeleteBatchEvaluationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeleteBatchEvaluationResponse", name: "DeleteBatchEvaluationResponse")
    DeleteCapacityProviderSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeleteCapacityProviderSessionRequest", name: "DeleteCapacityProviderSessionRequest")
    DeleteCapacityProviderSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeleteCapacityProviderSessionResponse", name: "DeleteCapacityProviderSessionResponse")
    DeleteEventInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeleteEventInput", name: "DeleteEventInput")
    DeleteEventOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeleteEventOutput", name: "DeleteEventOutput")
    DeleteMemoryRecordInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeleteMemoryRecordInput", name: "DeleteMemoryRecordInput")
    DeleteMemoryRecordOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeleteMemoryRecordOutput", name: "DeleteMemoryRecordOutput")
    DeletePaymentInstrumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeletePaymentInstrumentRequest", name: "DeletePaymentInstrumentRequest")
    DeletePaymentInstrumentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeletePaymentInstrumentResponse", name: "DeletePaymentInstrumentResponse")
    DeletePaymentSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeletePaymentSessionRequest", name: "DeletePaymentSessionRequest")
    DeletePaymentSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeletePaymentSessionResponse", name: "DeletePaymentSessionResponse")
    DeleteRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeleteRecommendationRequest", name: "DeleteRecommendationRequest")
    DeleteRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DeleteRecommendationResponse", name: "DeleteRecommendationResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    DescriptorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#DescriptorType", name: "DescriptorType")
    Descriptors = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#Descriptors", name: "Descriptors")
    DomainPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#DomainPattern", name: "DomainPattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(\\.)?[a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?(\\.[a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?)*$"})
    DomainPatterns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#DomainPatterns", name: "DomainPatterns", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    DuplicateIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#DuplicateIdException", name: "DuplicateIdException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    EfsAccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#EfsAccessPointArn", name: "EfsAccessPointArn", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:access-point/fsap-[0-9a-f]{8,40}$"})
    EfsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#EfsConfiguration", name: "EfsConfiguration")
    EfsFileSystemArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#EfsFileSystemArn", name: "EfsFileSystemArn", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^arn:aws[-a-z]*:elasticfilesystem:[a-z0-9-]+:[0-9]{12}:file-system/fs-[0-9a-f]{8,40}$"})
    Email = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#Email", name: "Email", traits: {"smithy.api#length" => {"min" => 1, "max" => 254}, "smithy.api#pattern" => "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$", "smithy.api#sensitive" => {}})
    EmbeddedCryptoWallet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#EmbeddedCryptoWallet", name: "EmbeddedCryptoWallet")
    ErrorDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#ErrorDetailsList", name: "ErrorDetailsList", traits: {"smithy.api#length" => {"max" => 1}})
    EvaluateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#EvaluateRequest", name: "EvaluateRequest")
    EvaluateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#EvaluateResponse", name: "EvaluateResponse")
    EvaluationContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationContent", name: "EvaluationContent")
    EvaluationContentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationContentList", name: "EvaluationContentList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    EvaluationErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationErrorCode", name: "EvaluationErrorCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    EvaluationErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationErrorMessage", name: "EvaluationErrorMessage", traits: {"smithy.api#length" => {"max" => 2048}})
    EvaluationExpectedTrajectory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationExpectedTrajectory", name: "EvaluationExpectedTrajectory")
    EvaluationExplanation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationExplanation", name: "EvaluationExplanation", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#sensitive" => {}})
    EvaluationInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationInput", name: "EvaluationInput")
    EvaluationJobResults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationJobResults", name: "EvaluationJobResults")
    EvaluationMetadata = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationMetadata", name: "EvaluationMetadata")
    EvaluationReferenceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationReferenceInput", name: "EvaluationReferenceInput")
    EvaluationReferenceInputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationReferenceInputs", name: "EvaluationReferenceInputs", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#sensitive" => {}})
    EvaluationResultContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationResultContent", name: "EvaluationResultContent")
    EvaluationResults = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationResults", name: "EvaluationResults")
    EvaluationStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationStringList", name: "EvaluationStringList")
    EvaluationTarget = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationTarget", name: "EvaluationTarget")
    EvaluationToolName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationToolName", name: "EvaluationToolName", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    EvaluationToolNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#EvaluationToolNames", name: "EvaluationToolNames", traits: {"smithy.api#length" => {"max" => 1000}})
    Evaluator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#Evaluator", name: "Evaluator")
    EvaluatorArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#EvaluatorArn", name: "EvaluatorArn", traits: {"aws.api#arnReference" => {"type" => "AWS::BedrockAgentCore::Evaluator"}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:evaluator\\/[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$|^arn:aws[a-zA-Z-]*:bedrock-agentcore:::evaluator/(Builtin|ThirdParty)\\.[a-zA-Z0-9._-]+$"})
    EvaluatorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#EvaluatorId", name: "EvaluatorId", traits: {"smithy.api#length" => {"min" => 1, "max" => 111}, "smithy.api#pattern" => "^(Builtin\\.[a-zA-Z0-9._-]+|ThirdParty\\.[a-zA-Z0-9_-]+\\.[a-zA-Z0-9_-]+|[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10})$"})
    EvaluatorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#EvaluatorList", name: "EvaluatorList")
    EvaluatorMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#EvaluatorMetric", name: "EvaluatorMetric")
    EvaluatorMetricList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#EvaluatorMetricList", name: "EvaluatorMetricList")
    EvaluatorName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#EvaluatorName", name: "EvaluatorName", traits: {"smithy.api#length" => {"min" => 1, "max" => 48}, "smithy.api#pattern" => "^(Builtin\\.[a-zA-Z0-9._-]+|ThirdParty\\.[a-zA-Z0-9_-]+\\.[a-zA-Z0-9_-]+|[a-zA-Z][a-zA-Z0-9_]{0,47})$"})
    EvaluatorStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#EvaluatorStatistics", name: "EvaluatorStatistics")
    EvaluatorSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#EvaluatorSummary", name: "EvaluatorSummary")
    EvaluatorSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#EvaluatorSummaryList", name: "EvaluatorSummaryList")
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#Event", name: "Event")
    EventFilterCondition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#EventFilterCondition", name: "EventFilterCondition")
    EventId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#EventId", name: "EventId", traits: {"smithy.api#pattern" => "^[0-9]+#[a-fA-F0-9]+$"})
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#EventList", name: "EventList")
    EventMetadataFilterExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#EventMetadataFilterExpression", name: "EventMetadataFilterExpression")
    EventMetadataFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#EventMetadataFilterList", name: "EventMetadataFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ExecutionSummaryAffectedSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ExecutionSummaryAffectedSession", name: "ExecutionSummaryAffectedSession")
    ExecutionSummaryAffectedSessionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#ExecutionSummaryAffectedSessionList", name: "ExecutionSummaryAffectedSessionList", traits: {"smithy.api#length" => {"min" => 0}})
    ExecutionSummaryCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ExecutionSummaryCluster", name: "ExecutionSummaryCluster")
    ExecutionSummaryClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#ExecutionSummaryClusterList", name: "ExecutionSummaryClusterList", traits: {"smithy.api#length" => {"min" => 0}})
    ExecutionSummaryClusteringResultContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ExecutionSummaryClusteringResultContent", name: "ExecutionSummaryClusteringResultContent")
    ExternalProxy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ExternalProxy", name: "ExternalProxy")
    ExtractionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ExtractionConfig", name: "ExtractionConfig")
    ExtractionJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ExtractionJob", name: "ExtractionJob")
    ExtractionJobFilterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ExtractionJobFilterInput", name: "ExtractionJobFilterInput")
    ExtractionJobMessages = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#ExtractionJobMessages", name: "ExtractionJobMessages")
    ExtractionJobMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ExtractionJobMetadata", name: "ExtractionJobMetadata")
    ExtractionJobMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#ExtractionJobMetadataList", name: "ExtractionJobMetadataList")
    ExtractionJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#ExtractionJobStatus", name: "ExtractionJobStatus")
    ExtractionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#ExtractionMode", name: "ExtractionMode")
    FailureAnalysisResultContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#FailureAnalysisResultContent", name: "FailureAnalysisResultContent")
    FailureCategoryCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#FailureCategoryCluster", name: "FailureCategoryCluster")
    FailureCategoryClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#FailureCategoryClusterList", name: "FailureCategoryClusterList", traits: {"smithy.api#length" => {"min" => 0}})
    FailureSpanDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#FailureSpanDetail", name: "FailureSpanDetail")
    FailureSpanDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#FailureSpanDetailList", name: "FailureSpanDetailList", traits: {"smithy.api#length" => {"min" => 0}})
    FailureSubCategoryCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#FailureSubCategoryCluster", name: "FailureSubCategoryCluster")
    FailureSubCategoryClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#FailureSubCategoryClusterList", name: "FailureSubCategoryClusterList", traits: {"smithy.api#length" => {"min" => 0}})
    FilterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#FilterInput", name: "FilterInput")
    FilterStringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#FilterStringValue", name: "FilterStringValue", traits: {"smithy.api#length" => {"max" => 1024}})
    FilterValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#FilterValue", name: "FilterValue")
    GatewayArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#GatewayArn", name: "GatewayArn", traits: {"aws.api#arnReference" => {"type" => "AWS::BedrockAgentCore::Gateway"}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):bedrock-agentcore:[a-z0-9-]{1,20}:[0-9]{12}:gateway/([0-9a-z][-]?){1,48}-[a-z0-9]{10}$"})
    GatewayFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GatewayFilter", name: "GatewayFilter")
    GetABTestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetABTestRequest", name: "GetABTestRequest")
    GetABTestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetABTestResponse", name: "GetABTestResponse")
    GetAgentCardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetAgentCardRequest", name: "GetAgentCardRequest")
    GetAgentCardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetAgentCardResponse", name: "GetAgentCardResponse")
    GetBatchEvaluationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetBatchEvaluationRequest", name: "GetBatchEvaluationRequest")
    GetBatchEvaluationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetBatchEvaluationResponse", name: "GetBatchEvaluationResponse")
    GetBrowserSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetBrowserSessionRequest", name: "GetBrowserSessionRequest")
    GetBrowserSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetBrowserSessionResponse", name: "GetBrowserSessionResponse")
    GetCodeInterpreterSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetCodeInterpreterSessionRequest", name: "GetCodeInterpreterSessionRequest")
    GetCodeInterpreterSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetCodeInterpreterSessionResponse", name: "GetCodeInterpreterSessionResponse")
    GetEventInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetEventInput", name: "GetEventInput")
    GetEventOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetEventOutput", name: "GetEventOutput")
    GetMemoryRecordInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetMemoryRecordInput", name: "GetMemoryRecordInput")
    GetMemoryRecordOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetMemoryRecordOutput", name: "GetMemoryRecordOutput")
    GetPaymentInstrumentBalanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetPaymentInstrumentBalanceRequest", name: "GetPaymentInstrumentBalanceRequest")
    GetPaymentInstrumentBalanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetPaymentInstrumentBalanceResponse", name: "GetPaymentInstrumentBalanceResponse")
    GetPaymentInstrumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetPaymentInstrumentRequest", name: "GetPaymentInstrumentRequest")
    GetPaymentInstrumentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetPaymentInstrumentResponse", name: "GetPaymentInstrumentResponse")
    GetPaymentSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetPaymentSessionRequest", name: "GetPaymentSessionRequest")
    GetPaymentSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetPaymentSessionResponse", name: "GetPaymentSessionResponse")
    GetRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetRecommendationRequest", name: "GetRecommendationRequest")
    GetRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetRecommendationResponse", name: "GetRecommendationResponse")
    GetResourceApiKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetResourceApiKeyRequest", name: "GetResourceApiKeyRequest")
    GetResourceApiKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetResourceApiKeyResponse", name: "GetResourceApiKeyResponse")
    GetResourceOauth2TokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetResourceOauth2TokenRequest", name: "GetResourceOauth2TokenRequest")
    GetResourceOauth2TokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetResourceOauth2TokenResponse", name: "GetResourceOauth2TokenResponse")
    GetResourcePaymentTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetResourcePaymentTokenRequest", name: "GetResourcePaymentTokenRequest")
    GetResourcePaymentTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetResourcePaymentTokenResponse", name: "GetResourcePaymentTokenResponse")
    GetWorkloadAccessTokenForJWTRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenForJWTRequest", name: "GetWorkloadAccessTokenForJWTRequest")
    GetWorkloadAccessTokenForJWTResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenForJWTResponse", name: "GetWorkloadAccessTokenForJWTResponse")
    GetWorkloadAccessTokenForUserIdRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenForUserIdRequest", name: "GetWorkloadAccessTokenForUserIdRequest")
    GetWorkloadAccessTokenForUserIdResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenForUserIdResponse", name: "GetWorkloadAccessTokenForUserIdResponse")
    GetWorkloadAccessTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenRequest", name: "GetWorkloadAccessTokenRequest")
    GetWorkloadAccessTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenResponse", name: "GetWorkloadAccessTokenResponse")
    GroundTruthSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#GroundTruthSource", name: "GroundTruthSource")
    GroundTruthTurn = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#GroundTruthTurn", name: "GroundTruthTurn")
    GroundTruthTurnInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#GroundTruthTurnInput", name: "GroundTruthTurnInput")
    GroundTruthTurnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#GroundTruthTurnList", name: "GroundTruthTurnList")
    HarnessAgentCoreBrowserConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessAgentCoreBrowserConfig", name: "HarnessAgentCoreBrowserConfig")
    HarnessAgentCoreCodeInterpreterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessAgentCoreCodeInterpreterConfig", name: "HarnessAgentCoreCodeInterpreterConfig")
    HarnessAgentCoreGatewayConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessAgentCoreGatewayConfig", name: "HarnessAgentCoreGatewayConfig")
    HarnessAllowedTool = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessAllowedTool", name: "HarnessAllowedTool", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^(\\*|@?[^/]+(/[^/]+)?)$"})
    HarnessAllowedTools = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#HarnessAllowedTools", name: "HarnessAllowedTools")
    HarnessArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessArn", name: "HarnessArn", traits: {"smithy.api#pattern" => "^arn:([^:]+)?:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:harness/[a-zA-Z][a-zA-Z0-9_]{0,39}-[a-zA-Z0-9]{10}$"})
    HarnessAwsSkillPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessAwsSkillPath", name: "HarnessAwsSkillPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^([^*?\\[\\]]|\\*)+$"})
    HarnessAwsSkillPaths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#HarnessAwsSkillPaths", name: "HarnessAwsSkillPaths")
    HarnessBedrockApiFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#HarnessBedrockApiFormat", name: "HarnessBedrockApiFormat")
    HarnessBedrockModelConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessBedrockModelConfig", name: "HarnessBedrockModelConfig")
    HarnessBrowserArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessBrowserArn", name: "HarnessBrowserArn", traits: {"smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock-agentcore:[a-z0-9-]+:(aws|[0-9]{12}):browser(-custom)?/(aws\\.browser\\.v1|[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10})$"})
    HarnessCodeInterpreterArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessCodeInterpreterArn", name: "HarnessCodeInterpreterArn", traits: {"smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock-agentcore:[a-z0-9-]+:(aws|[0-9]{12}):code-interpreter(-custom)?/(aws\\.codeinterpreter\\.v1|[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10})$"})
    HarnessContentBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#HarnessContentBlock", name: "HarnessContentBlock")
    HarnessContentBlockDelta = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#HarnessContentBlockDelta", name: "HarnessContentBlockDelta")
    HarnessContentBlockDeltaEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessContentBlockDeltaEvent", name: "HarnessContentBlockDeltaEvent")
    HarnessContentBlockStart = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#HarnessContentBlockStart", name: "HarnessContentBlockStart")
    HarnessContentBlockStartEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessContentBlockStartEvent", name: "HarnessContentBlockStartEvent")
    HarnessContentBlockStopEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessContentBlockStopEvent", name: "HarnessContentBlockStopEvent")
    HarnessContentBlocks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#HarnessContentBlocks", name: "HarnessContentBlocks")
    HarnessConversationRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#HarnessConversationRole", name: "HarnessConversationRole")
    HarnessEndpointName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessEndpointName", name: "HarnessEndpointName", traits: {"smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]{0,47}$"})
    HarnessGatewayOutboundAuth = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#HarnessGatewayOutboundAuth", name: "HarnessGatewayOutboundAuth")
    HarnessGeminiModelConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessGeminiModelConfig", name: "HarnessGeminiModelConfig")
    HarnessHookDecision = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#HarnessHookDecision", name: "HarnessHookDecision")
    HarnessHookEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessHookEvent", name: "HarnessHookEvent")
    HarnessHookEventId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessHookEventId", name: "HarnessHookEventId", traits: {"smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    HarnessHookEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#HarnessHookEventType", name: "HarnessHookEventType")
    HarnessHookName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessHookName", name: "HarnessHookName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    HarnessInlineFunctionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessInlineFunctionConfig", name: "HarnessInlineFunctionConfig")
    HarnessInlineFunctionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessInlineFunctionDescription", name: "HarnessInlineFunctionDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    HarnessLiteLlmApiBase = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessLiteLlmApiBase", name: "HarnessLiteLlmApiBase", traits: {"smithy.api#length" => {"min" => 1, "max" => 16383}, "smithy.api#sensitive" => {}})
    HarnessLiteLlmModelConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessLiteLlmModelConfig", name: "HarnessLiteLlmModelConfig")
    HarnessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessMessage", name: "HarnessMessage")
    HarnessMessageStartEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessMessageStartEvent", name: "HarnessMessageStartEvent")
    HarnessMessageStopEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessMessageStopEvent", name: "HarnessMessageStopEvent")
    HarnessMessages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#HarnessMessages", name: "HarnessMessages")
    HarnessMetadataEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessMetadataEvent", name: "HarnessMetadataEvent")
    HarnessModelConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#HarnessModelConfiguration", name: "HarnessModelConfiguration")
    HarnessOpenAiApiBase = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessOpenAiApiBase", name: "HarnessOpenAiApiBase", traits: {"smithy.api#length" => {"min" => 1, "max" => 16383}, "smithy.api#sensitive" => {}})
    HarnessOpenAiApiFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#HarnessOpenAiApiFormat", name: "HarnessOpenAiApiFormat")
    HarnessOpenAiModelConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessOpenAiModelConfig", name: "HarnessOpenAiModelConfig")
    HarnessReasoningContentBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#HarnessReasoningContentBlock", name: "HarnessReasoningContentBlock", traits: {"smithy.api#sensitive" => {}})
    HarnessReasoningContentBlockDelta = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#HarnessReasoningContentBlockDelta", name: "HarnessReasoningContentBlockDelta", traits: {"smithy.api#sensitive" => {}})
    HarnessReasoningTextBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessReasoningTextBlock", name: "HarnessReasoningTextBlock", traits: {"smithy.api#sensitive" => {}})
    HarnessRemoteMcpConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessRemoteMcpConfig", name: "HarnessRemoteMcpConfig")
    HarnessRemoteMcpUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessRemoteMcpUrl", name: "HarnessRemoteMcpUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 16383}, "smithy.api#sensitive" => {}})
    HarnessSkill = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#HarnessSkill", name: "HarnessSkill")
    HarnessSkillAwsSkillsSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessSkillAwsSkillsSource", name: "HarnessSkillAwsSkillsSource")
    HarnessSkillGitAuth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessSkillGitAuth", name: "HarnessSkillGitAuth")
    HarnessSkillGitSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessSkillGitSource", name: "HarnessSkillGitSource")
    HarnessSkillGitUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessSkillGitUrl", name: "HarnessSkillGitUrl", traits: {"smithy.api#length" => {"min" => 8, "max" => 16383}, "smithy.api#pattern" => "^https://[^\#@]+$"})
    HarnessSkillPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessSkillPath", name: "HarnessSkillPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    HarnessSkillS3Source = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessSkillS3Source", name: "HarnessSkillS3Source")
    HarnessSkillS3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessSkillS3Uri", name: "HarnessSkillS3Uri", traits: {"smithy.api#length" => {"min" => 5, "max" => 16383}, "smithy.api#pattern" => "^s3://"})
    HarnessSkills = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#HarnessSkills", name: "HarnessSkills")
    HarnessStopReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#HarnessStopReason", name: "HarnessStopReason")
    HarnessStreamMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessStreamMetrics", name: "HarnessStreamMetrics")
    HarnessSystemContentBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#HarnessSystemContentBlock", name: "HarnessSystemContentBlock")
    HarnessSystemPrompt = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#HarnessSystemPrompt", name: "HarnessSystemPrompt")
    HarnessTokenUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessTokenUsage", name: "HarnessTokenUsage")
    HarnessTool = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessTool", name: "HarnessTool")
    HarnessToolConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolConfiguration", name: "HarnessToolConfiguration")
    HarnessToolName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolName", name: "HarnessToolName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    HarnessToolResultBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolResultBlock", name: "HarnessToolResultBlock")
    HarnessToolResultBlockDelta = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolResultBlockDelta", name: "HarnessToolResultBlockDelta")
    HarnessToolResultBlockStart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolResultBlockStart", name: "HarnessToolResultBlockStart")
    HarnessToolResultBlocksDelta = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolResultBlocksDelta", name: "HarnessToolResultBlocksDelta")
    HarnessToolResultContentBlock = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolResultContentBlock", name: "HarnessToolResultContentBlock")
    HarnessToolResultContentBlocks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolResultContentBlocks", name: "HarnessToolResultContentBlocks")
    HarnessToolResultMetadataBlockDelta = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolResultMetadataBlockDelta", name: "HarnessToolResultMetadataBlockDelta")
    HarnessToolType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolType", name: "HarnessToolType")
    HarnessToolUseBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolUseBlock", name: "HarnessToolUseBlock")
    HarnessToolUseBlockDelta = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolUseBlockDelta", name: "HarnessToolUseBlockDelta")
    HarnessToolUseBlockStart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolUseBlockStart", name: "HarnessToolUseBlockStart")
    HarnessToolUseId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolUseId", name: "HarnessToolUseId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    HarnessToolUseStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolUseStatus", name: "HarnessToolUseStatus")
    HarnessToolUseType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#HarnessToolUseType", name: "HarnessToolUseType")
    HarnessTools = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#HarnessTools", name: "HarnessTools")
    HostName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HostName", name: "HostName", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^[a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?(\\.[a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?)*$"})
    HttpHeaderKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HttpHeaderKey", name: "HttpHeaderKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 16383}})
    HttpHeaderValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#HttpHeaderValue", name: "HttpHeaderValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 16383}})
    HttpHeadersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentcore#HttpHeadersMap", name: "HttpHeadersMap", traits: {"smithy.api#sensitive" => {}})
    HttpResponseCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockagentcore#HttpResponseCode", name: "HttpResponseCode")
    IgnoredReferenceInputField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#IgnoredReferenceInputField", name: "IgnoredReferenceInputField", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    IgnoredReferenceInputFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#IgnoredReferenceInputFields", name: "IgnoredReferenceInputFields", traits: {"smithy.api#length" => {"max" => 100}})
    IngestDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#IngestDataInput", name: "IngestDataInput")
    IngestDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#IngestDataOutput", name: "IngestDataOutput")
    IngestPayloadList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#IngestPayloadList", name: "IngestPayloadList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    IngestPayloadType = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#IngestPayloadType", name: "IngestPayloadType")
    InlineContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#InlineContent", name: "InlineContent", traits: {"smithy.api#length" => {"min" => 1, "max" => 409600}})
    InlineGroundTruth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InlineGroundTruth", name: "InlineGroundTruth")
    InlineMemoryContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InlineMemoryContent", name: "InlineMemoryContent")
    InputContentBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InputContentBlock", name: "InputContentBlock")
    InputContentBlockList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#InputContentBlockList", name: "InputContentBlockList")
    Insight = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#Insight", name: "Insight")
    InsightId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#InsightId", name: "InsightId", traits: {"smithy.api#pattern" => "^(Builtin\\.[a-zA-Z0-9._-]+|[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10})$"})
    InsightList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#InsightList", name: "InsightList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    InsightsFailureCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#InsightsFailureCategory", name: "InsightsFailureCategory")
    InsightsFailureSignal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InsightsFailureSignal", name: "InsightsFailureSignal")
    InsightsFailureSignalList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#InsightsFailureSignalList", name: "InsightsFailureSignalList")
    InstrumentBalanceToken = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#InstrumentBalanceToken", name: "InstrumentBalanceToken")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvokeAgentRuntimeCommandRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InvokeAgentRuntimeCommandRequest", name: "InvokeAgentRuntimeCommandRequest")
    InvokeAgentRuntimeCommandRequestBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InvokeAgentRuntimeCommandRequestBody", name: "InvokeAgentRuntimeCommandRequestBody")
    InvokeAgentRuntimeCommandResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InvokeAgentRuntimeCommandResponse", name: "InvokeAgentRuntimeCommandResponse")
    InvokeAgentRuntimeCommandStreamOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#InvokeAgentRuntimeCommandStreamOutput", name: "InvokeAgentRuntimeCommandStreamOutput", traits: {"smithy.api#streaming" => {}})
    InvokeAgentRuntimeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InvokeAgentRuntimeRequest", name: "InvokeAgentRuntimeRequest")
    InvokeAgentRuntimeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InvokeAgentRuntimeResponse", name: "InvokeAgentRuntimeResponse")
    InvokeBrowserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InvokeBrowserRequest", name: "InvokeBrowserRequest")
    InvokeBrowserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InvokeBrowserResponse", name: "InvokeBrowserResponse")
    InvokeCodeInterpreterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InvokeCodeInterpreterRequest", name: "InvokeCodeInterpreterRequest")
    InvokeCodeInterpreterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InvokeCodeInterpreterResponse", name: "InvokeCodeInterpreterResponse")
    InvokeHarnessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InvokeHarnessRequest", name: "InvokeHarnessRequest")
    InvokeHarnessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#InvokeHarnessResponse", name: "InvokeHarnessResponse")
    InvokeHarnessStreamOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#InvokeHarnessStreamOutput", name: "InvokeHarnessStreamOutput", traits: {"smithy.api#streaming" => {}})
    JwtKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#JwtKeyId", name: "JwtKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]{1,255}$"})
    KeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#KeyList", name: "KeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    KeyPressArguments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#KeyPressArguments", name: "KeyPressArguments")
    KeyPressResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#KeyPressResult", name: "KeyPressResult")
    KeyShortcutArguments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#KeyShortcutArguments", name: "KeyShortcutArguments")
    KeyShortcutResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#KeyShortcutResult", name: "KeyShortcutResult")
    KeyTypeArguments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#KeyTypeArguments", name: "KeyTypeArguments")
    KeyTypeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#KeyTypeResult", name: "KeyTypeResult")
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$"})
    LanguageRuntime = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#LanguageRuntime", name: "LanguageRuntime")
    LeftExpression = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#LeftExpression", name: "LeftExpression")
    LinkedAccount = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#LinkedAccount", name: "LinkedAccount", traits: {"smithy.api#sensitive" => {}})
    LinkedAccountDeveloperJwt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#LinkedAccountDeveloperJwt", name: "LinkedAccountDeveloperJwt")
    LinkedAccountEmail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#LinkedAccountEmail", name: "LinkedAccountEmail", traits: {"smithy.api#sensitive" => {}})
    LinkedAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#LinkedAccountList", name: "LinkedAccountList", traits: {"smithy.api#length" => {"max" => 1}})
    LinkedAccountOAuth2 = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#LinkedAccountOAuth2", name: "LinkedAccountOAuth2")
    LinkedAccountSms = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#LinkedAccountSms", name: "LinkedAccountSms", traits: {"smithy.api#sensitive" => {}})
    ListABTestsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListABTestsRequest", name: "ListABTestsRequest")
    ListABTestsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListABTestsResponse", name: "ListABTestsResponse")
    ListActorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListActorsInput", name: "ListActorsInput")
    ListActorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListActorsOutput", name: "ListActorsOutput")
    ListBatchEvaluationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListBatchEvaluationsRequest", name: "ListBatchEvaluationsRequest")
    ListBatchEvaluationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListBatchEvaluationsResponse", name: "ListBatchEvaluationsResponse")
    ListBrowserSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListBrowserSessionsRequest", name: "ListBrowserSessionsRequest")
    ListBrowserSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListBrowserSessionsResponse", name: "ListBrowserSessionsResponse")
    ListCodeInterpreterSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListCodeInterpreterSessionsRequest", name: "ListCodeInterpreterSessionsRequest")
    ListCodeInterpreterSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListCodeInterpreterSessionsResponse", name: "ListCodeInterpreterSessionsResponse")
    ListEventsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListEventsInput", name: "ListEventsInput")
    ListEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListEventsOutput", name: "ListEventsOutput")
    ListMemoryExtractionJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListMemoryExtractionJobsInput", name: "ListMemoryExtractionJobsInput")
    ListMemoryExtractionJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListMemoryExtractionJobsOutput", name: "ListMemoryExtractionJobsOutput")
    ListMemoryRecordsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListMemoryRecordsInput", name: "ListMemoryRecordsInput")
    ListMemoryRecordsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListMemoryRecordsOutput", name: "ListMemoryRecordsOutput")
    ListPaymentInstrumentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListPaymentInstrumentsRequest", name: "ListPaymentInstrumentsRequest")
    ListPaymentInstrumentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListPaymentInstrumentsResponse", name: "ListPaymentInstrumentsResponse")
    ListPaymentSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListPaymentSessionsRequest", name: "ListPaymentSessionsRequest")
    ListPaymentSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListPaymentSessionsResponse", name: "ListPaymentSessionsResponse")
    ListRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListRecommendationsRequest", name: "ListRecommendationsRequest")
    ListRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListRecommendationsResponse", name: "ListRecommendationsResponse")
    ListSessionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListSessionsInput", name: "ListSessionsInput")
    ListSessionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ListSessionsOutput", name: "ListSessionsOutput")
    LiveViewStream = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#LiveViewStream", name: "LiveViewStream")
    LogGroupArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#LogGroupArnList", name: "LogGroupArnList")
    LogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#LogGroupName", name: "LogGroupName", traits: {"smithy.api#pattern" => "^[.\\-_/#A-Za-z0-9]+$"})
    LogGroupNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#LogGroupNameList", name: "LogGroupNameList")
    LogGroupNamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#LogGroupNamePrefix", name: "LogGroupNamePrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[.\\-_/#A-Za-z0-9]+$"})
    LogGroupNamePrefixList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#LogGroupNamePrefixList", name: "LogGroupNamePrefixList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    LogStreamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#LogStreamName", name: "LogStreamName", traits: {"smithy.api#pattern" => "^[^:*]*$"})
    MaxLenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#MaxLenString", name: "MaxLenString", traits: {"smithy.api#length" => {"max" => 100000000}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockagentcore#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxTokens = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockagentcore#MaxTokens", name: "MaxTokens", traits: {"smithy.api#range" => {"min" => 1}})
    McpDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#McpDescriptor", name: "McpDescriptor")
    MemoryContent = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#MemoryContent", name: "MemoryContent")
    MemoryDocument = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.bedrockagentcore#MemoryDocument", name: "MemoryDocument", traits: {"smithy.api#sensitive" => {}})
    MemoryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#MemoryId", name: "MemoryId", traits: {"smithy.api#length" => {"min" => 12}, "smithy.api#pattern" => "^(arn:(aws|aws-cn|aws-us-gov):bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:memory/)?[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"})
    MemoryJsonData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MemoryJsonData", name: "MemoryJsonData", traits: {"smithy.api#sensitive" => {}})
    MemoryJsonDataContent = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.bedrockagentcore#MemoryJsonDataContent", name: "MemoryJsonDataContent", traits: {"smithy.api#sensitive" => {}})
    MemoryMetadataFilterExpression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MemoryMetadataFilterExpression", name: "MemoryMetadataFilterExpression")
    MemoryMetadataFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#MemoryMetadataFilterList", name: "MemoryMetadataFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    MemoryRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecord", name: "MemoryRecord")
    MemoryRecordCreateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordCreateInput", name: "MemoryRecordCreateInput")
    MemoryRecordDeleteInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordDeleteInput", name: "MemoryRecordDeleteInput")
    MemoryRecordId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordId", name: "MemoryRecordId", traits: {"smithy.api#length" => {"min" => 40, "max" => 50}, "smithy.api#pattern" => "^mem-[a-zA-Z0-9-_]*$"})
    MemoryRecordLeftExpression = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordLeftExpression", name: "MemoryRecordLeftExpression")
    MemoryRecordMetadataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordMetadataMap", name: "MemoryRecordMetadataMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    MemoryRecordMetadataValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordMetadataValue", name: "MemoryRecordMetadataValue")
    MemoryRecordOperatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordOperatorType", name: "MemoryRecordOperatorType")
    MemoryRecordOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordOutput", name: "MemoryRecordOutput")
    MemoryRecordRightExpression = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordRightExpression", name: "MemoryRecordRightExpression")
    MemoryRecordStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordStatus", name: "MemoryRecordStatus")
    MemoryRecordSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordSummary", name: "MemoryRecordSummary")
    MemoryRecordSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordSummaryList", name: "MemoryRecordSummaryList")
    MemoryRecordUpdateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordUpdateInput", name: "MemoryRecordUpdateInput")
    MemoryRecordsCreateInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordsCreateInputList", name: "MemoryRecordsCreateInputList", traits: {"smithy.api#length" => {"max" => 100}})
    MemoryRecordsDeleteInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordsDeleteInputList", name: "MemoryRecordsDeleteInputList", traits: {"smithy.api#length" => {"max" => 100}})
    MemoryRecordsOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordsOutputList", name: "MemoryRecordsOutputList")
    MemoryRecordsUpdateInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#MemoryRecordsUpdateInputList", name: "MemoryRecordsUpdateInputList", traits: {"smithy.api#length" => {"max" => 100}})
    MemoryStrategyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#MemoryStrategyId", name: "MemoryStrategyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-_]*$"})
    MessageMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MessageMetadata", name: "MessageMetadata")
    MessagesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#MessagesList", name: "MessagesList")
    MetadataFilterExpression = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.bedrockagentcore#MetadataFilterExpression", name: "MetadataFilterExpression")
    MetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#MetadataKey", name: "MetadataKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    MetadataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentcore#MetadataMap", name: "MetadataMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 15}})
    MetadataValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#MetadataValue", name: "MetadataValue")
    MetricsNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#MetricsNamespace", name: "MetricsNamespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9._#/:-]+$"})
    MimeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#MimeType", name: "MimeType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ModelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ModelId", name: "ModelId")
    MountPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#MountPath", name: "MountPath", traits: {"smithy.api#length" => {"min" => 6, "max" => 200}, "smithy.api#pattern" => "^/mnt/[a-zA-Z0-9._-]+/?$"})
    MouseButton = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#MouseButton", name: "MouseButton")
    MouseClickArguments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MouseClickArguments", name: "MouseClickArguments")
    MouseClickResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MouseClickResult", name: "MouseClickResult")
    MouseDragArguments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MouseDragArguments", name: "MouseDragArguments")
    MouseDragResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MouseDragResult", name: "MouseDragResult")
    MouseMoveArguments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MouseMoveArguments", name: "MouseMoveArguments")
    MouseMoveResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MouseMoveResult", name: "MouseMoveResult")
    MouseScrollArguments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MouseScrollArguments", name: "MouseScrollArguments")
    MouseScrollResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MouseScrollResult", name: "MouseScrollResult")
    MppPaymentCredential = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#MppPaymentCredential", name: "MppPaymentCredential", traits: {"smithy.api#length" => {"min" => 1, "max" => 32768}, "smithy.api#sensitive" => {}})
    MppPaymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MppPaymentInput", name: "MppPaymentInput")
    MppPaymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#MppPaymentOutput", name: "MppPaymentOutput")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Namespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#Namespace", name: "Namespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9/*][a-zA-Z0-9-_/*]*(?::[a-zA-Z0-9-_/*]+)*[a-zA-Z0-9-_/*]*$"})
    NamespaceVariableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#NamespaceVariableName", name: "NamespaceVariableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^(?!memoryStrategyId$|actorId$|sessionId$)[a-z][a-z0-9]*$"})
    NamespaceVariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#NamespaceVariableValue", name: "NamespaceVariableValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9][a-z0-9-_]*$"})
    NamespaceVariablesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentcore#NamespaceVariablesMap", name: "NamespaceVariablesMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    NamespacesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#NamespacesList", name: "NamespacesList", traits: {"smithy.api#length" => {"max" => 1}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S*$"})
    NonBlankString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#NonBlankString", name: "NonBlankString", traits: {"smithy.api#pattern" => "^[\\s\\S]+$"})
    OAuth2Authentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#OAuth2Authentication", name: "OAuth2Authentication", traits: {"smithy.api#sensitive" => {}})
    OAuthCredentialProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#OAuthCredentialProvider", name: "OAuthCredentialProvider")
    OAuthCredentialProviderArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#OAuthCredentialProviderArn", name: "OAuthCredentialProviderArn", traits: {"smithy.api#pattern" => "^arn:([^:]*):([^:]*):([^:]*):([0-9]{12})?:(.+)$"})
    OAuthCustomParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentcore#OAuthCustomParameters", name: "OAuthCustomParameters", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OAuthCustomParametersKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#OAuthCustomParametersKey", name: "OAuthCustomParametersKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    OAuthCustomParametersValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#OAuthCustomParametersValue", name: "OAuthCustomParametersValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    OAuthDefaultReturnUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#OAuthDefaultReturnUrl", name: "OAuthDefaultReturnUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\w+:(\\/?\\/?)[^\\s]+$"})
    OAuthGrantType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#OAuthGrantType", name: "OAuthGrantType")
    OAuthScope = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#OAuthScope", name: "OAuthScope", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    OAuthScopes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#OAuthScopes", name: "OAuthScopes", traits: {"smithy.api#length" => {"max" => 100}})
    Oauth2FlowType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#Oauth2FlowType", name: "Oauth2FlowType")
    OnlineEvaluationConfigArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#OnlineEvaluationConfigArn", name: "OnlineEvaluationConfigArn", traits: {"aws.api#arnReference" => {"type" => "AWS::BedrockAgentCore::OnlineEvaluationConfig"}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:online-evaluation-config\\/[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"})
    OnlineEvaluationConfigSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#OnlineEvaluationConfigSource", name: "OnlineEvaluationConfigSource")
    OnlineEvaluationTraceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#OnlineEvaluationTraceConfig", name: "OnlineEvaluationTraceConfig")
    OperatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#OperatorType", name: "OperatorType")
    OptionalLogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#OptionalLogGroupName", name: "OptionalLogGroupName", traits: {"smithy.api#pattern" => "^$|^[.\\-_/#A-Za-z0-9]+$"})
    OutputConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#OutputConfig", name: "OutputConfig")
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#PaginationToken", name: "PaginationToken")
    PathPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#PathPattern", name: "PathPattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    PayloadType = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#PayloadType", name: "PayloadType")
    PayloadTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#PayloadTypeList", name: "PayloadTypeList", traits: {"smithy.api#length" => {"max" => 100}})
    PaymentAgentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#PaymentAgentName", name: "PaymentAgentName", traits: {"smithy.api#length" => {"max" => 256}})
    PaymentConnectorId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#PaymentConnectorId", name: "PaymentConnectorId", traits: {"smithy.api#length" => {"min" => 12, "max" => 211}, "smithy.api#pattern" => "^([0-9a-z][-]?){1,100}-[0-9a-z]{10}$"})
    PaymentDocument = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.bedrockagentcore#PaymentDocument", name: "PaymentDocument", traits: {"smithy.api#sensitive" => {}})
    PaymentHttpMethodType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#PaymentHttpMethodType", name: "PaymentHttpMethodType")
    PaymentInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#PaymentInput", name: "PaymentInput")
    PaymentInstrument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#PaymentInstrument", name: "PaymentInstrument")
    PaymentInstrumentDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#PaymentInstrumentDetails", name: "PaymentInstrumentDetails")
    PaymentInstrumentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#PaymentInstrumentId", name: "PaymentInstrumentId", traits: {"smithy.api#length" => {"min" => 34, "max" => 34}, "smithy.api#pattern" => "^payment-instrument-[0-9a-zA-Z-]{15}$"})
    PaymentInstrumentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#PaymentInstrumentStatus", name: "PaymentInstrumentStatus")
    PaymentInstrumentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#PaymentInstrumentSummary", name: "PaymentInstrumentSummary")
    PaymentInstrumentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#PaymentInstrumentSummaryList", name: "PaymentInstrumentSummaryList")
    PaymentInstrumentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#PaymentInstrumentType", name: "PaymentInstrumentType")
    PaymentManagerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#PaymentManagerArn", name: "PaymentManagerArn", traits: {"aws.api#arnReference" => {"type" => "AWS::BedrockAgentCore::PaymentManager"}, "smithy.api#length" => {"min" => 66, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws|aws-[a-z0-9-]+):bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:payment-manager/[a-z0-9]([a-z0-9-]{0,47}[a-z0-9])?-[a-z0-9]{10}$"})
    PaymentOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#PaymentOutput", name: "PaymentOutput")
    PaymentRequestHostType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#PaymentRequestHostType", name: "PaymentRequestHostType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\.]+$"})
    PaymentRequestPathType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#PaymentRequestPathType", name: "PaymentRequestPathType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^/[a-zA-Z0-9/_\\-\\.~%?=&]+$"})
    PaymentSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#PaymentSession", name: "PaymentSession")
    PaymentSessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#PaymentSessionId", name: "PaymentSessionId", traits: {"smithy.api#length" => {"min" => 31, "max" => 31}, "smithy.api#pattern" => "^payment-session-[0-9a-zA-Z-]{15}$"})
    PaymentSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#PaymentSessionStatus", name: "PaymentSessionStatus")
    PaymentSessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#PaymentSessionSummary", name: "PaymentSessionSummary")
    PaymentSessionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#PaymentSessionSummaryList", name: "PaymentSessionSummaryList")
    PaymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#PaymentStatus", name: "PaymentStatus")
    PaymentTokenRequestInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#PaymentTokenRequestInput", name: "PaymentTokenRequestInput")
    PaymentTokenResponseOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#PaymentTokenResponseOutput", name: "PaymentTokenResponseOutput")
    PaymentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#PaymentType", name: "PaymentType")
    PerVariantOnlineEvaluationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#PerVariantOnlineEvaluationConfig", name: "PerVariantOnlineEvaluationConfig")
    PerVariantOnlineEvaluationConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#PerVariantOnlineEvaluationConfigList", name: "PerVariantOnlineEvaluationConfigList", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    Permit2AllowanceLimit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#Permit2AllowanceLimit", name: "Permit2AllowanceLimit", traits: {"smithy.api#length" => {"min" => 1, "max" => 78}, "smithy.api#pattern" => "^[0-9]+$"})
    PhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#PhoneNumber", name: "PhoneNumber", traits: {"smithy.api#length" => {"min" => 3, "max" => 16}, "smithy.api#pattern" => "^\\+[1-9]\\d{1,14}$", "smithy.api#sensitive" => {}})
    ProcessPaymentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ProcessPaymentId", name: "ProcessPaymentId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"})
    ProcessPaymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ProcessPaymentRequest", name: "ProcessPaymentRequest")
    ProcessPaymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ProcessPaymentResponse", name: "ProcessPaymentResponse")
    ProgrammingLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#ProgrammingLanguage", name: "ProgrammingLanguage")
    Proxies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#Proxies", name: "Proxies")
    Proxy = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#Proxy", name: "Proxy")
    ProxyBypass = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ProxyBypass", name: "ProxyBypass")
    ProxyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ProxyConfiguration", name: "ProxyConfiguration")
    ProxyCredentials = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#ProxyCredentials", name: "ProxyCredentials")
    RecommendationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationArn", name: "RecommendationArn", traits: {"aws.api#arnReference" => {"type" => "AWS::BedrockAgentCore::Recommendation"}, "smithy.api#pattern" => "^arn:aws[a-zA-Z-]*:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:recommendation/[0-9a-zA-Z_-]{1,48}-[0-9A-Z]{10}$"})
    RecommendationConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationConfig", name: "RecommendationConfig")
    RecommendationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationDescription", name: "RecommendationDescription", traits: {"smithy.api#length" => {"max" => 4096}})
    RecommendationErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationErrorCode", name: "RecommendationErrorCode", traits: {"smithy.api#length" => {"max" => 1024}})
    RecommendationErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationErrorMessage", name: "RecommendationErrorMessage", traits: {"smithy.api#length" => {"max" => 2048}})
    RecommendationEvaluationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationEvaluationConfig", name: "RecommendationEvaluationConfig")
    RecommendationEvaluatorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationEvaluatorList", name: "RecommendationEvaluatorList")
    RecommendationEvaluatorReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationEvaluatorReference", name: "RecommendationEvaluatorReference")
    RecommendationExplanation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationExplanation", name: "RecommendationExplanation", traits: {"smithy.api#length" => {"max" => 4096}})
    RecommendationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationId", name: "RecommendationId", traits: {"smithy.api#pattern" => "^[0-9a-zA-Z_-]{1,48}-[0-9A-Z]{10}$"})
    RecommendationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationName", name: "RecommendationName", traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_-]{0,47}$"})
    RecommendationResult = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationResult", name: "RecommendationResult")
    RecommendationResultConfigurationBundle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationResultConfigurationBundle", name: "RecommendationResultConfigurationBundle")
    RecommendationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationStatus", name: "RecommendationStatus")
    RecommendationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationSummary", name: "RecommendationSummary")
    RecommendationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationSummaryList", name: "RecommendationSummaryList")
    RecommendationToolName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationToolName", name: "RecommendationToolName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-\\.]+$"})
    RecommendationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#RecommendationType", name: "RecommendationType")
    RecordExpiryAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#RecordExpiryAction", name: "RecordExpiryAction")
    RecordExpiryDurationDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockagentcore#RecordExpiryDurationDays", name: "RecordExpiryDurationDays", traits: {"smithy.api#range" => {"min" => 31}})
    RecordExpirySpecification = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#RecordExpirySpecification", name: "RecordExpirySpecification")
    RegistryArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RegistryArn", name: "RegistryArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:registry/[a-zA-Z0-9]{12,16}$"})
    RegistryIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#RegistryIdList", name: "RegistryIdList")
    RegistryIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RegistryIdentifier", name: "RegistryIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:registry/)?[a-zA-Z0-9]{12,16}$"})
    RegistryRecordArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RegistryRecordArn", name: "RegistryRecordArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:registry/[a-zA-Z0-9]{12,16}/record/[a-zA-Z0-9]{12}$"})
    RegistryRecordId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RegistryRecordId", name: "RegistryRecordId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[a-zA-Z0-9]{12}$"})
    RegistryRecordName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RegistryRecordName", name: "RegistryRecordName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_\\-\\.\\/]*$"})
    RegistryRecordStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#RegistryRecordStatus", name: "RegistryRecordStatus")
    RegistryRecordSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#RegistryRecordSummary", name: "RegistryRecordSummary")
    RegistryRecordSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#RegistryRecordSummaryList", name: "RegistryRecordSummaryList")
    RegistryRecordVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RegistryRecordVersion", name: "RegistryRecordVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9.-]+$"})
    RequestIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RequestIdentifier", name: "RequestIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    RequestUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RequestUri", name: "RequestUri", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^urn:ietf:params:oauth:request_uri:[a-zA-Z0-9-._~]+$"})
    ResourceContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ResourceContent", name: "ResourceContent")
    ResourceContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#ResourceContentType", name: "ResourceContentType")
    ResourceLocation = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#ResourceLocation", name: "ResourceLocation")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceOauth2ReturnUrlType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ResourceOauth2ReturnUrlType", name: "ResourceOauth2ReturnUrlType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\w+:(\\/?\\/?)[^\\s]+$"})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ResourceType", name: "ResourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ResourcesListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#ResourcesListType", name: "ResourcesListType")
    ResponseChunk = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ResponseChunk", name: "ResponseChunk")
    ResponseStream = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.bedrockagentcore#ResponseStream", name: "ResponseStream", traits: {"smithy.api#sensitive" => {}, "smithy.api#streaming" => {}})
    ResultDestination = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#ResultDestination", name: "ResultDestination")
    RetrieveMemoryRecordsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#RetrieveMemoryRecordsInput", name: "RetrieveMemoryRecordsInput")
    RetrieveMemoryRecordsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#RetrieveMemoryRecordsOutput", name: "RetrieveMemoryRecordsOutput")
    RetryableConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#RetryableConflictException", name: "RetryableConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409, "smithy.api#retryable" => {}})
    RightExpression = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#RightExpression", name: "RightExpression")
    Role = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#Role", name: "Role")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::([0-9]{12})?:role/.+$"})
    RootCauseCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#RootCauseCluster", name: "RootCauseCluster")
    RootCauseClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#RootCauseClusterList", name: "RootCauseClusterList", traits: {"smithy.api#length" => {"min" => 0}})
    RuntimeClientError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#RuntimeClientError", name: "RuntimeClientError", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    S3FilesAccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#S3FilesAccessPointArn", name: "S3FilesAccessPointArn", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40}/access-point/fsap-[0-9a-f]{17,40}$"})
    S3FilesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#S3FilesConfiguration", name: "S3FilesConfiguration")
    S3FilesFileSystemArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#S3FilesFileSystemArn", name: "S3FilesFileSystemArn", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^arn:aws[-a-z]*:s3files:[a-z0-9-]+:[0-9]{12}:file-system/fs-[0-9a-f]{17,40}$"})
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#S3Location", name: "S3Location")
    SaveBrowserSessionProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SaveBrowserSessionProfileRequest", name: "SaveBrowserSessionProfileRequest")
    SaveBrowserSessionProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SaveBrowserSessionProfileResponse", name: "SaveBrowserSessionProfileResponse")
    SchemaVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#SchemaVersion", name: "SchemaVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ScopeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ScopeType", name: "ScopeType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ScopesListType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#ScopesListType", name: "ScopesListType")
    ScreenshotArguments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ScreenshotArguments", name: "ScreenshotArguments")
    ScreenshotFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#ScreenshotFormat", name: "ScreenshotFormat")
    ScreenshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ScreenshotResult", name: "ScreenshotResult")
    SearchCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SearchCriteria", name: "SearchCriteria")
    SearchRegistryRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SearchRegistryRecordsRequest", name: "SearchRegistryRecordsRequest")
    SearchRegistryRecordsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SearchRegistryRecordsResponse", name: "SearchRegistryRecordsResponse")
    SecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#SecretArn", name: "SecretArn", traits: {"smithy.api#pattern" => "^arn:aws(-[a-z-]+)?:secretsmanager:[a-z0-9-]+:[0-9]{12}:secret:[a-zA-Z0-9/_+=.@-]+$"})
    SecretsManagerLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SecretsManagerLocation", name: "SecretsManagerLocation")
    SensitiveJson = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.bedrockagentcore#SensitiveJson", name: "SensitiveJson", traits: {"smithy.api#sensitive" => {}})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    SensitiveText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#SensitiveText", name: "SensitiveText", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    ServerDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ServerDefinition", name: "ServerDefinition")
    ServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ServiceException", name: "ServiceException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ServiceName", name: "ServiceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]+$"})
    ServiceNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#ServiceNameList", name: "ServiceNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SessionFilter", name: "SessionFilter")
    SessionFilterConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SessionFilterConfig", name: "SessionFilterConfig")
    SessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#SessionId", name: "SessionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9-_]*$"})
    SessionLimits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SessionLimits", name: "SessionLimits")
    SessionMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#SessionMetadataList", name: "SessionMetadataList", traits: {"smithy.api#length" => {"max" => 500}})
    SessionMetadataShape = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SessionMetadataShape", name: "SessionMetadataShape")
    SessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#SessionStatus", name: "SessionStatus")
    SessionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SessionSummary", name: "SessionSummary")
    SessionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#SessionSummaryList", name: "SessionSummaryList")
    SessionTraceIds = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SessionTraceIds", name: "SessionTraceIds")
    SessionTraceIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#SessionTraceIdsList", name: "SessionTraceIdsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    SessionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#SessionType", name: "SessionType", traits: {"smithy.api#length" => {"min" => 33, "max" => 256}})
    SkillDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SkillDefinition", name: "SkillDefinition")
    SkillMdDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SkillMdDefinition", name: "SkillMdDefinition")
    Span = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.bedrockagentcore#Span", name: "Span")
    SpanContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SpanContext", name: "SpanContext")
    SpanId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#SpanId", name: "SpanId", traits: {"smithy.api#length" => {"min" => 16, "max" => 16}})
    SpanIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#SpanIds", name: "SpanIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    Spans = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#Spans", name: "Spans", traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}, "smithy.api#sensitive" => {}})
    StartBatchEvaluationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StartBatchEvaluationRequest", name: "StartBatchEvaluationRequest")
    StartBatchEvaluationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StartBatchEvaluationResponse", name: "StartBatchEvaluationResponse")
    StartBrowserSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StartBrowserSessionRequest", name: "StartBrowserSessionRequest")
    StartBrowserSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StartBrowserSessionResponse", name: "StartBrowserSessionResponse")
    StartCodeInterpreterSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StartCodeInterpreterSessionRequest", name: "StartCodeInterpreterSessionRequest")
    StartCodeInterpreterSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StartCodeInterpreterSessionResponse", name: "StartCodeInterpreterSessionResponse")
    StartMemoryExtractionJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StartMemoryExtractionJobInput", name: "StartMemoryExtractionJobInput")
    StartMemoryExtractionJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StartMemoryExtractionJobOutput", name: "StartMemoryExtractionJobOutput")
    StartRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StartRecommendationRequest", name: "StartRecommendationRequest")
    StartRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StartRecommendationResponse", name: "StartRecommendationResponse")
    State = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#State", name: "State", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    StopBatchEvaluationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StopBatchEvaluationRequest", name: "StopBatchEvaluationRequest")
    StopBatchEvaluationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StopBatchEvaluationResponse", name: "StopBatchEvaluationResponse")
    StopBrowserSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StopBrowserSessionRequest", name: "StopBrowserSessionRequest")
    StopBrowserSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StopBrowserSessionResponse", name: "StopBrowserSessionResponse")
    StopCodeInterpreterSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StopCodeInterpreterSessionRequest", name: "StopCodeInterpreterSessionRequest")
    StopCodeInterpreterSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StopCodeInterpreterSessionResponse", name: "StopCodeInterpreterSessionResponse")
    StopRuntimeSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StopRuntimeSessionRequest", name: "StopRuntimeSessionRequest")
    StopRuntimeSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StopRuntimeSessionResponse", name: "StopRuntimeSessionResponse")
    StreamUpdate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#StreamUpdate", name: "StreamUpdate")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#StringList", name: "StringList")
    StringListMemberValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#StringListMemberValue", name: "StringListMemberValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentcore#StringMap", name: "StringMap")
    StringType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#StringType", name: "StringType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    StringValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#StringValue", name: "StringValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    StringValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#StringValueList", name: "StringValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    StripePrivyAppIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#StripePrivyAppIdType", name: "StripePrivyAppIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_]+$"})
    StripePrivyAuthorizationSignatureType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#StripePrivyAuthorizationSignatureType", name: "StripePrivyAuthorizationSignatureType", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#sensitive" => {}})
    StripePrivyBasicAuthTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#StripePrivyBasicAuthTokenType", name: "StripePrivyBasicAuthTokenType", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#sensitive" => {}})
    StripePrivyRequestBodyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#StripePrivyRequestBodyType", name: "StripePrivyRequestBodyType", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u007E]+$", "smithy.api#sensitive" => {}})
    StripePrivyRequestHostType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#StripePrivyRequestHostType", name: "StripePrivyRequestHostType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\.]+$"})
    StripePrivyRequestPathType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#StripePrivyRequestPathType", name: "StripePrivyRequestPathType", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^/[a-zA-Z0-9/_\\-\\.~%?=&]+$"})
    StripePrivyTokenRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StripePrivyTokenRequestInput", name: "StripePrivyTokenRequestInput")
    StripePrivyTokenResponseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#StripePrivyTokenResponseOutput", name: "StripePrivyTokenResponseOutput")
    SubscriptionRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SubscriptionRequiredException", name: "SubscriptionRequiredException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    SystemPromptConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#SystemPromptConfig", name: "SystemPromptConfig")
    SystemPromptConfigurationBundle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SystemPromptConfigurationBundle", name: "SystemPromptConfigurationBundle")
    SystemPromptRecommendationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SystemPromptRecommendationConfig", name: "SystemPromptRecommendationConfig")
    SystemPromptRecommendationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#SystemPromptRecommendationResult", name: "SystemPromptRecommendationResult")
    SystemPromptText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#SystemPromptText", name: "SystemPromptText", traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}, "smithy.api#sensitive" => {}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockagentcore#TagsMap", name: "TagsMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TargetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#TargetName", name: "TargetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TargetPathList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#TargetPathList", name: "TargetPathList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    TargetRef = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#TargetRef", name: "TargetRef")
    TaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#TaskStatus", name: "TaskStatus")
    Temperature = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.bedrockagentcore#Temperature", name: "Temperature", traits: {"smithy.api#range" => {"min" => 0.0, "max" => 2.0}})
    ThrottledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ThrottledException", name: "ThrottledException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TokenBalance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#TokenBalance", name: "TokenBalance")
    TokenUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#TokenUsage", name: "TokenUsage")
    ToolArguments = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ToolArguments", name: "ToolArguments")
    ToolDescriptionConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#ToolDescriptionConfig", name: "ToolDescriptionConfig")
    ToolDescriptionConfigurationBundle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ToolDescriptionConfigurationBundle", name: "ToolDescriptionConfigurationBundle")
    ToolDescriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ToolDescriptionInput", name: "ToolDescriptionInput")
    ToolDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#ToolDescriptionList", name: "ToolDescriptionList")
    ToolDescriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ToolDescriptionOutput", name: "ToolDescriptionOutput")
    ToolDescriptionRecommendationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ToolDescriptionRecommendationConfig", name: "ToolDescriptionRecommendationConfig")
    ToolDescriptionRecommendationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ToolDescriptionRecommendationResult", name: "ToolDescriptionRecommendationResult")
    ToolDescriptionResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#ToolDescriptionResultList", name: "ToolDescriptionResultList")
    ToolDescriptionSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#ToolDescriptionSource", name: "ToolDescriptionSource")
    ToolDescriptionText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#ToolDescriptionText", name: "ToolDescriptionText", traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}, "smithy.api#sensitive" => {}})
    ToolDescriptionTextInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ToolDescriptionTextInput", name: "ToolDescriptionTextInput")
    ToolName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#ToolName", name: "ToolName")
    ToolResultStructuredContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ToolResultStructuredContent", name: "ToolResultStructuredContent")
    ToolsDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ToolsDefinition", name: "ToolsDefinition")
    ToolsFileSystemConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#ToolsFileSystemConfiguration", name: "ToolsFileSystemConfiguration")
    ToolsFileSystemConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#ToolsFileSystemConfigurations", name: "ToolsFileSystemConfigurations", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    TopK = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockagentcore#TopK", name: "TopK", traits: {"smithy.api#range" => {"min" => 0, "max" => 500}})
    TopP = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.bedrockagentcore#TopP", name: "TopP", traits: {"smithy.api#range" => {"min" => 0.0, "max" => 1.0}})
    TraceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#TraceId", name: "TraceId", traits: {"smithy.api#length" => {"min" => 32, "max" => 32}})
    TraceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#TraceIdList", name: "TraceIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TraceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#TraceIds", name: "TraceIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UpdateABTestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#UpdateABTestRequest", name: "UpdateABTestRequest")
    UpdateABTestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#UpdateABTestResponse", name: "UpdateABTestResponse")
    UpdateBrowserStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#UpdateBrowserStreamRequest", name: "UpdateBrowserStreamRequest")
    UpdateBrowserStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#UpdateBrowserStreamResponse", name: "UpdateBrowserStreamResponse")
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#UserId", name: "UserId", traits: {"smithy.api#length" => {"max" => 120}})
    UserIdType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#UserIdType", name: "UserIdType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    UserIdentifier = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockagentcore#UserIdentifier", name: "UserIdentifier")
    UserIntentAffectedSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#UserIntentAffectedSession", name: "UserIntentAffectedSession")
    UserIntentAffectedSessionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#UserIntentAffectedSessionList", name: "UserIntentAffectedSessionList", traits: {"smithy.api#length" => {"min" => 0}})
    UserIntentCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#UserIntentCluster", name: "UserIntentCluster")
    UserIntentClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#UserIntentClusterList", name: "UserIntentClusterList", traits: {"smithy.api#length" => {"min" => 0}})
    UserIntentClusteringResultContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#UserIntentClusteringResultContent", name: "UserIntentClusteringResultContent")
    UserIntentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#UserIntentList", name: "UserIntentList")
    UserTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#UserTokenType", name: "UserTokenType", traits: {"smithy.api#length" => {"min" => 1, "max" => 131072}, "smithy.api#pattern" => "^[A-Za-z0-9-_=]+.[A-Za-z0-9-_=]+.[A-Za-z0-9-_=]+$", "smithy.api#sensitive" => {}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockagentcore#ValidationExceptionReason", name: "ValidationExceptionReason")
    Variant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#Variant", name: "Variant")
    VariantConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#VariantConfiguration", name: "VariantConfiguration")
    VariantList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#VariantList", name: "VariantList", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    VariantName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#VariantName", name: "VariantName", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#pattern" => "^(C|T1)$"})
    VariantResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#VariantResult", name: "VariantResult")
    VariantResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#VariantResultList", name: "VariantResultList")
    Version = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#Version", name: "Version", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#pattern" => "^[0-9]+$"})
    ViewPort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockagentcore#ViewPort", name: "ViewPort")
    ViewPortHeight = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockagentcore#ViewPortHeight", name: "ViewPortHeight", traits: {"smithy.api#range" => {"min" => 240, "max" => 2160}})
    ViewPortWidth = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockagentcore#ViewPortWidth", name: "ViewPortWidth", traits: {"smithy.api#range" => {"min" => 320, "max" => 3840}})
    WorkloadIdentityNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#WorkloadIdentityNameType", name: "WorkloadIdentityNameType", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9_.-]+$"})
    WorkloadIdentityTokenType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#WorkloadIdentityTokenType", name: "WorkloadIdentityTokenType", traits: {"smithy.api#length" => {"min" => 1, "max" => 131072}, "smithy.api#sensitive" => {}})
    WwwAuthenticateHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockagentcore#WwwAuthenticateHeader", name: "WwwAuthenticateHeader", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}})
    WwwAuthenticateHeaderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockagentcore#WwwAuthenticateHeaderList", name: "WwwAuthenticateHeaderList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})

    A2aDescriptor.add_member(:agent_card, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCardDefinition, name: "agentCard", traits: {"smithy.api#required" => {}}))
    A2aDescriptor.type = Types::A2aDescriptor
    ABTestEvaluationConfig.add_member(:online_evaluation_config_arn, Types::ABTestEvaluationConfig::OnlineEvaluationConfigArn, ::Smithy::Schema::Shapes::MemberShape.new(target: OnlineEvaluationConfigArn, name: "onlineEvaluationConfigArn"))
    ABTestEvaluationConfig.add_member(:per_variant_online_evaluation_config, Types::ABTestEvaluationConfig::PerVariantOnlineEvaluationConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: PerVariantOnlineEvaluationConfigList, name: "perVariantOnlineEvaluationConfig"))
    ABTestEvaluationConfig.add_member(:unknown, Types::ABTestEvaluationConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ABTestEvaluationConfig.type = Types::ABTestEvaluationConfig
    ABTestExecutionStatus.add_member(:paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAUSED", traits: {"smithy.api#enumValue" => "PAUSED"}))
    ABTestExecutionStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ABTestExecutionStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    ABTestExecutionStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    ABTestResults.add_member(:analysis_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "analysisTimestamp"))
    ABTestResults.add_member(:evaluator_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatorMetricList, name: "evaluatorMetrics", traits: {"smithy.api#required" => {}}))
    ABTestResults.type = Types::ABTestResults
    ABTestStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ABTestStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ABTestStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ABTestStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ABTestStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    ABTestStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ABTestStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ABTestStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ABTestSummary.add_member(:ab_test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestId, name: "abTestId", traits: {"smithy.api#required" => {}}))
    ABTestSummary.add_member(:ab_test_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestArn, name: "abTestArn", traits: {"smithy.api#required" => {}}))
    ABTestSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestName, name: "name", traits: {"smithy.api#required" => {}}))
    ABTestSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ABTestSummary.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestExecutionStatus, name: "executionStatus", traits: {"smithy.api#required" => {}}))
    ABTestSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestDescription, name: "description"))
    ABTestSummary.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "gatewayArn"))
    ABTestSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    ABTestSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ABTestSummary.type = Types::ABTestSummary
    ABTestSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestSummary, name: "member"))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ActorSummary.add_member(:actor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorId, name: "actorId", traits: {"smithy.api#required" => {}}))
    ActorSummary.type = Types::ActorSummary
    ActorSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorSummary, name: "member"))
    AffectedSession.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionId", traits: {"smithy.api#required" => {}}))
    AffectedSession.add_member(:explanation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "explanation", traits: {"smithy.api#required" => {}}))
    AffectedSession.add_member(:fix_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fixType", traits: {"smithy.api#required" => {}}))
    AffectedSession.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendation", traits: {"smithy.api#required" => {}}))
    AffectedSession.add_member(:failure_spans, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureSpanDetailList, name: "failureSpans", traits: {"smithy.api#required" => {}}))
    AffectedSession.type = Types::AffectedSession
    AffectedSessionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AffectedSession, name: "member"))
    AgentCardDefinition.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersion, name: "schemaVersion"))
    AgentCardDefinition.add_member(:inline_content, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineContent, name: "inlineContent"))
    AgentCardDefinition.type = Types::AgentCardDefinition
    AgentSkillsDescriptor.add_member(:skill_md, ::Smithy::Schema::Shapes::MemberShape.new(target: SkillMdDefinition, name: "skillMd", traits: {"smithy.api#required" => {}}))
    AgentSkillsDescriptor.add_member(:skill_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: SkillDefinition, name: "skillDefinition"))
    AgentSkillsDescriptor.type = Types::AgentSkillsDescriptor
    AgentTracesConfig.add_member(:session_spans, Types::AgentTracesConfig::SessionSpans, ::Smithy::Schema::Shapes::MemberShape.new(target: Spans, name: "sessionSpans"))
    AgentTracesConfig.add_member(:cloudwatch_logs, Types::AgentTracesConfig::CloudwatchLogs, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsTraceConfig, name: "cloudwatchLogs"))
    AgentTracesConfig.add_member(:batch_evaluation, Types::AgentTracesConfig::BatchEvaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationTraceConfig, name: "batchEvaluation"))
    AgentTracesConfig.add_member(:online_evaluation, Types::AgentTracesConfig::OnlineEvaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: OnlineEvaluationTraceConfig, name: "onlineEvaluation"))
    AgentTracesConfig.add_member(:unknown, Types::AgentTracesConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AgentTracesConfig.type = Types::AgentTracesConfig
    Amount.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#required" => {}}))
    Amount.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: Currency, name: "currency", traits: {"smithy.api#required" => {}}))
    Amount.type = Types::Amount
    AudiencesListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AudienceType, name: "member"))
    AutomationStream.add_member(:stream_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserStreamEndpoint, name: "streamEndpoint", traits: {"smithy.api#required" => {}}))
    AutomationStream.add_member(:stream_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationStreamStatus, name: "streamStatus", traits: {"smithy.api#required" => {}}))
    AutomationStream.type = Types::AutomationStream
    AutomationStreamStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutomationStreamStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AutomationStreamUpdate.add_member(:stream_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationStreamStatus, name: "streamStatus"))
    AutomationStreamUpdate.type = Types::AutomationStreamUpdate
    AvailableLimits.add_member(:available_spend_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Amount, name: "availableSpendAmount"))
    AvailableLimits.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt"))
    AvailableLimits.type = Types::AvailableLimits
    BasicAuth.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "secretArn", traits: {"smithy.api#required" => {}}))
    BasicAuth.type = Types::BasicAuth
    BatchCreateMemoryRecordsInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchCreateMemoryRecordsInput.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordsCreateInputList, name: "records", traits: {"smithy.api#required" => {}}))
    BatchCreateMemoryRecordsInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    BatchCreateMemoryRecordsInput.add_member(:record_expiry_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordExpirySpecification, name: "recordExpirySpecification"))
    BatchCreateMemoryRecordsInput.type = Types::BatchCreateMemoryRecordsInput
    BatchCreateMemoryRecordsOutput.add_member(:successful_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordsOutputList, name: "successfulRecords", traits: {"smithy.api#required" => {}}))
    BatchCreateMemoryRecordsOutput.add_member(:failed_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordsOutputList, name: "failedRecords", traits: {"smithy.api#required" => {}}))
    BatchCreateMemoryRecordsOutput.type = Types::BatchCreateMemoryRecordsOutput
    BatchDeleteMemoryRecordsInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteMemoryRecordsInput.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordsDeleteInputList, name: "records", traits: {"smithy.api#required" => {}}))
    BatchDeleteMemoryRecordsInput.type = Types::BatchDeleteMemoryRecordsInput
    BatchDeleteMemoryRecordsOutput.add_member(:successful_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordsOutputList, name: "successfulRecords", traits: {"smithy.api#required" => {}}))
    BatchDeleteMemoryRecordsOutput.add_member(:failed_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordsOutputList, name: "failedRecords", traits: {"smithy.api#required" => {}}))
    BatchDeleteMemoryRecordsOutput.type = Types::BatchDeleteMemoryRecordsOutput
    BatchEvaluationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    BatchEvaluationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    BatchEvaluationStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    BatchEvaluationStatus.add_member(:completed_with_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_ERRORS", traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ERRORS"}))
    BatchEvaluationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    BatchEvaluationStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    BatchEvaluationStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    BatchEvaluationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    BatchEvaluationSummary.add_member(:batch_evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationId, name: "batchEvaluationId", traits: {"smithy.api#required" => {}}))
    BatchEvaluationSummary.add_member(:batch_evaluation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationArn, name: "batchEvaluationArn", traits: {"smithy.api#required" => {}}))
    BatchEvaluationSummary.add_member(:batch_evaluation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationName, name: "batchEvaluationName", traits: {"smithy.api#required" => {}}))
    BatchEvaluationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    BatchEvaluationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    BatchEvaluationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationDescription, name: "description"))
    BatchEvaluationSummary.add_member(:evaluators, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatorList, name: "evaluators"))
    BatchEvaluationSummary.add_member(:insights, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightList, name: "insights"))
    BatchEvaluationSummary.add_member(:evaluation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationJobResults, name: "evaluationResults"))
    BatchEvaluationSummary.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetailsList, name: "errorDetails"))
    BatchEvaluationSummary.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    BatchEvaluationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    BatchEvaluationSummary.type = Types::BatchEvaluationSummary
    BatchEvaluationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationSummary, name: "member"))
    BatchEvaluationTraceConfig.add_member(:batch_evaluation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationArn, name: "batchEvaluationArn", traits: {"smithy.api#required" => {}}))
    BatchEvaluationTraceConfig.type = Types::BatchEvaluationTraceConfig
    BatchUpdateMemoryRecordsInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchUpdateMemoryRecordsInput.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordsUpdateInputList, name: "records", traits: {"smithy.api#required" => {}}))
    BatchUpdateMemoryRecordsInput.add_member(:record_expiry_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordExpirySpecification, name: "recordExpirySpecification"))
    BatchUpdateMemoryRecordsInput.type = Types::BatchUpdateMemoryRecordsInput
    BatchUpdateMemoryRecordsOutput.add_member(:successful_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordsOutputList, name: "successfulRecords", traits: {"smithy.api#required" => {}}))
    BatchUpdateMemoryRecordsOutput.add_member(:failed_records, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordsOutputList, name: "failedRecords", traits: {"smithy.api#required" => {}}))
    BatchUpdateMemoryRecordsOutput.type = Types::BatchUpdateMemoryRecordsOutput
    BlockchainChainId.add_member(:base, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASE", traits: {"smithy.api#enumValue" => "BASE"}))
    BlockchainChainId.add_member(:base_sepolia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASE_SEPOLIA", traits: {"smithy.api#enumValue" => "BASE_SEPOLIA"}))
    BlockchainChainId.add_member(:ethereum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ETHEREUM", traits: {"smithy.api#enumValue" => "ETHEREUM"}))
    BlockchainChainId.add_member(:solana, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOLANA", traits: {"smithy.api#enumValue" => "SOLANA"}))
    BlockchainChainId.add_member(:solana_devnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOLANA_DEVNET", traits: {"smithy.api#enumValue" => "SOLANA_DEVNET"}))
    Branch.add_member(:root_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "rootEventId"))
    Branch.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "name", traits: {"smithy.api#required" => {}}))
    Branch.type = Types::Branch
    BranchFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "name", traits: {"smithy.api#required" => {}}))
    BranchFilter.add_member(:include_parent_branches, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includeParentBranches", traits: {"smithy.api#default" => true}))
    BranchFilter.type = Types::BranchFilter
    BrowserAction.add_member(:mouse_click, Types::BrowserAction::MouseClick, ::Smithy::Schema::Shapes::MemberShape.new(target: MouseClickArguments, name: "mouseClick"))
    BrowserAction.add_member(:mouse_move, Types::BrowserAction::MouseMove, ::Smithy::Schema::Shapes::MemberShape.new(target: MouseMoveArguments, name: "mouseMove"))
    BrowserAction.add_member(:mouse_drag, Types::BrowserAction::MouseDrag, ::Smithy::Schema::Shapes::MemberShape.new(target: MouseDragArguments, name: "mouseDrag"))
    BrowserAction.add_member(:mouse_scroll, Types::BrowserAction::MouseScroll, ::Smithy::Schema::Shapes::MemberShape.new(target: MouseScrollArguments, name: "mouseScroll"))
    BrowserAction.add_member(:key_type, Types::BrowserAction::KeyType, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyTypeArguments, name: "keyType"))
    BrowserAction.add_member(:key_press, Types::BrowserAction::KeyPress, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPressArguments, name: "keyPress"))
    BrowserAction.add_member(:key_shortcut, Types::BrowserAction::KeyShortcut, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyShortcutArguments, name: "keyShortcut"))
    BrowserAction.add_member(:screenshot, Types::BrowserAction::Screenshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ScreenshotArguments, name: "screenshot"))
    BrowserAction.add_member(:unknown, Types::BrowserAction::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    BrowserAction.type = Types::BrowserAction
    BrowserActionResult.add_member(:mouse_click, Types::BrowserActionResult::MouseClick, ::Smithy::Schema::Shapes::MemberShape.new(target: MouseClickResult, name: "mouseClick"))
    BrowserActionResult.add_member(:mouse_move, Types::BrowserActionResult::MouseMove, ::Smithy::Schema::Shapes::MemberShape.new(target: MouseMoveResult, name: "mouseMove"))
    BrowserActionResult.add_member(:mouse_drag, Types::BrowserActionResult::MouseDrag, ::Smithy::Schema::Shapes::MemberShape.new(target: MouseDragResult, name: "mouseDrag"))
    BrowserActionResult.add_member(:mouse_scroll, Types::BrowserActionResult::MouseScroll, ::Smithy::Schema::Shapes::MemberShape.new(target: MouseScrollResult, name: "mouseScroll"))
    BrowserActionResult.add_member(:key_type, Types::BrowserActionResult::KeyType, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyTypeResult, name: "keyType"))
    BrowserActionResult.add_member(:key_press, Types::BrowserActionResult::KeyPress, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPressResult, name: "keyPress"))
    BrowserActionResult.add_member(:key_shortcut, Types::BrowserActionResult::KeyShortcut, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyShortcutResult, name: "keyShortcut"))
    BrowserActionResult.add_member(:screenshot, Types::BrowserActionResult::Screenshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ScreenshotResult, name: "screenshot"))
    BrowserActionResult.add_member(:unknown, Types::BrowserActionResult::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    BrowserActionResult.type = Types::BrowserActionResult
    BrowserActionStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    BrowserActionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    BrowserEnterprisePolicies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserEnterprisePolicy, name: "member"))
    BrowserEnterprisePolicy.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location", traits: {"smithy.api#required" => {}}))
    BrowserEnterprisePolicy.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserEnterprisePolicyType, name: "type"))
    BrowserEnterprisePolicy.type = Types::BrowserEnterprisePolicy
    BrowserEnterprisePolicyType.add_member(:managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED", traits: {"smithy.api#enumValue" => "MANAGED"}))
    BrowserEnterprisePolicyType.add_member(:recommended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMENDED", traits: {"smithy.api#enumValue" => "RECOMMENDED"}))
    BrowserExtension.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLocation, name: "location", traits: {"smithy.api#required" => {}}))
    BrowserExtension.type = Types::BrowserExtension
    BrowserExtensions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserExtension, name: "member"))
    BrowserProfileConfiguration.add_member(:profile_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserProfileId, name: "profileIdentifier", traits: {"smithy.api#required" => {}}))
    BrowserProfileConfiguration.type = Types::BrowserProfileConfiguration
    BrowserSessionStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    BrowserSessionStatus.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    BrowserSessionStream.add_member(:automation_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationStream, name: "automationStream", traits: {"smithy.api#required" => {}}))
    BrowserSessionStream.add_member(:live_view_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: LiveViewStream, name: "liveViewStream"))
    BrowserSessionStream.type = Types::BrowserSessionStream
    BrowserSessionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionSummary, name: "member"))
    BrowserSessionSummary.add_member(:browser_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "browserIdentifier", traits: {"smithy.api#required" => {}}))
    BrowserSessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    BrowserSessionSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    BrowserSessionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    BrowserSessionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    BrowserSessionSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "lastUpdatedAt"))
    BrowserSessionSummary.type = Types::BrowserSessionSummary
    CapacityProviderSessionStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "Provisioning"}))
    CapacityProviderSessionStatus.add_member(:deprovisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPROVISIONING", traits: {"smithy.api#enumValue" => "Deprovisioning"}))
    CapacityProviderSessionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    CapacityProviderSessionStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    CapacityProviderSessionStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "Deleted"}))
    CapacityProviderSessionStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "Stopped"}))
    Certificate.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateLocation, name: "location", traits: {"smithy.api#required" => {}}))
    Certificate.type = Types::Certificate
    CertificateLocation.add_member(:secrets_manager, Types::CertificateLocation::SecretsManager, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerLocation, name: "secretsManager"))
    CertificateLocation.add_member(:unknown, Types::CertificateLocation::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CertificateLocation.type = Types::CertificateLocation
    Certificates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificate, name: "member"))
    CloudWatchFilterConfig.add_member(:session_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationStringList, name: "sessionIds", traits: {"smithy.api#length" => {"max" => 500}}))
    CloudWatchFilterConfig.add_member(:time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionFilterConfig, name: "timeRange"))
    CloudWatchFilterConfig.add_member(:session_trace_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTraceIdsList, name: "sessionTraceIds"))
    CloudWatchFilterConfig.type = Types::CloudWatchFilterConfig
    CloudWatchLogsFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]+$", "smithy.api#required" => {}}))
    CloudWatchLogsFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsFilterOperator, name: "operator", traits: {"smithy.api#required" => {}}))
    CloudWatchLogsFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "value", traits: {"smithy.api#required" => {}}))
    CloudWatchLogsFilter.type = Types::CloudWatchLogsFilter
    CloudWatchLogsFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsFilter, name: "member"))
    CloudWatchLogsFilterOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "Equals"}))
    CloudWatchLogsFilterOperator.add_member(:not_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EQUALS", traits: {"smithy.api#enumValue" => "NotEquals"}))
    CloudWatchLogsFilterOperator.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GreaterThan"}))
    CloudWatchLogsFilterOperator.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LessThan"}))
    CloudWatchLogsFilterOperator.add_member(:greater_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "GreaterThanOrEqual"}))
    CloudWatchLogsFilterOperator.add_member(:less_than_or_equal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN_OR_EQUAL", traits: {"smithy.api#enumValue" => "LessThanOrEqual"}))
    CloudWatchLogsFilterOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "Contains"}))
    CloudWatchLogsFilterOperator.add_member(:not_contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CONTAINS", traits: {"smithy.api#enumValue" => "NotContains"}))
    CloudWatchLogsRule.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsFilterList, name: "filters"))
    CloudWatchLogsRule.type = Types::CloudWatchLogsRule
    CloudWatchLogsSource.add_member(:service_names, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationStringList, name: "serviceNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    CloudWatchLogsSource.add_member(:log_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupNameList, name: "logGroupNames", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => [], "smithy.api#length" => {"max" => 10}}))
    CloudWatchLogsSource.add_member(:log_group_name_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupNamePrefixList, name: "logGroupNamePrefixes", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}}))
    CloudWatchLogsSource.add_member(:filter_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchFilterConfig, name: "filterConfig"))
    CloudWatchLogsSource.type = Types::CloudWatchLogsSource
    CloudWatchLogsTraceConfig.add_member(:log_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArnList, name: "logGroupArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#required" => {}}))
    CloudWatchLogsTraceConfig.add_member(:service_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNameList, name: "serviceNames", traits: {"smithy.api#required" => {}}))
    CloudWatchLogsTraceConfig.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CloudWatchLogsTraceConfig.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CloudWatchLogsTraceConfig.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsRule, name: "rule"))
    CloudWatchLogsTraceConfig.type = Types::CloudWatchLogsTraceConfig
    CloudWatchOutputConfig.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalLogGroupName, name: "logGroupName", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    CloudWatchOutputConfig.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName, name: "logStreamName", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => ""}))
    CloudWatchOutputConfig.add_member(:metrics_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsNamespace, name: "metricsNamespace"))
    CloudWatchOutputConfig.add_member(:result_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultDestination, name: "resultDestination", traits: {"smithy.api#default" => "DEDICATED_LOG_GROUP"}))
    CloudWatchOutputConfig.type = Types::CloudWatchOutputConfig
    CodeInterpreterResult.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentBlockList, name: "content", traits: {"smithy.api#required" => {}}))
    CodeInterpreterResult.add_member(:structured_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolResultStructuredContent, name: "structuredContent"))
    CodeInterpreterResult.add_member(:is_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isError"))
    CodeInterpreterResult.type = Types::CodeInterpreterResult
    CodeInterpreterSessionStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    CodeInterpreterSessionStatus.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    CodeInterpreterSessionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterSessionSummary, name: "member"))
    CodeInterpreterSessionSummary.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeInterpreterIdentifier", traits: {"smithy.api#required" => {}}))
    CodeInterpreterSessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterSessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    CodeInterpreterSessionSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    CodeInterpreterSessionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterSessionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CodeInterpreterSessionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CodeInterpreterSessionSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "lastUpdatedAt"))
    CodeInterpreterSessionSummary.type = Types::CodeInterpreterSessionSummary
    CodeInterpreterStreamOutput.add_member(:result, Types::CodeInterpreterStreamOutput::Result, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterResult, name: "result"))
    CodeInterpreterStreamOutput.add_member(:access_denied_exception, Types::CodeInterpreterStreamOutput::AccessDeniedException, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedException, name: "accessDeniedException"))
    CodeInterpreterStreamOutput.add_member(:conflict_exception, Types::CodeInterpreterStreamOutput::ConflictException, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictException, name: "conflictException"))
    CodeInterpreterStreamOutput.add_member(:internal_server_exception, Types::CodeInterpreterStreamOutput::InternalServerException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerException, name: "internalServerException"))
    CodeInterpreterStreamOutput.add_member(:resource_not_found_exception, Types::CodeInterpreterStreamOutput::ResourceNotFoundException, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundException, name: "resourceNotFoundException"))
    CodeInterpreterStreamOutput.add_member(:service_quota_exceeded_exception, Types::CodeInterpreterStreamOutput::ServiceQuotaExceededException, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceQuotaExceededException, name: "serviceQuotaExceededException"))
    CodeInterpreterStreamOutput.add_member(:throttling_exception, Types::CodeInterpreterStreamOutput::ThrottlingException, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingException, name: "throttlingException"))
    CodeInterpreterStreamOutput.add_member(:validation_exception, Types::CodeInterpreterStreamOutput::ValidationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationException, name: "validationException"))
    CodeInterpreterStreamOutput.add_member(:unknown, Types::CodeInterpreterStreamOutput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CodeInterpreterStreamOutput.type = Types::CodeInterpreterStreamOutput
    CoinbaseCdpTokenRequestInput.add_member(:request_method, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentHttpMethodType, name: "requestMethod", traits: {"smithy.api#required" => {}}))
    CoinbaseCdpTokenRequestInput.add_member(:request_host, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestHostType, name: "requestHost"))
    CoinbaseCdpTokenRequestInput.add_member(:request_path, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentRequestPathType, name: "requestPath", traits: {"smithy.api#required" => {}}))
    CoinbaseCdpTokenRequestInput.add_member(:include_wallet_auth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includeWalletAuthToken", traits: {"smithy.api#default" => false}))
    CoinbaseCdpTokenRequestInput.add_member(:request_body, ::Smithy::Schema::Shapes::MemberShape.new(target: CoinbaseCdpPaymentRequestBodyType, name: "requestBody"))
    CoinbaseCdpTokenRequestInput.type = Types::CoinbaseCdpTokenRequestInput
    CoinbaseCdpTokenResponseOutput.add_member(:bearer_token, ::Smithy::Schema::Shapes::MemberShape.new(target: CoinbaseCdpPaymentJwtTokenType, name: "bearerToken", traits: {"smithy.api#required" => {}}))
    CoinbaseCdpTokenResponseOutput.add_member(:wallet_auth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: CoinbaseCdpPaymentJwtTokenType, name: "walletAuthToken"))
    CoinbaseCdpTokenResponseOutput.type = Types::CoinbaseCdpTokenResponseOutput
    CommandExecutionStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CommandExecutionStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    CompleteResourceTokenAuthRequest.add_member(:user_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdentifier, name: "userIdentifier", traits: {"smithy.api#required" => {}}))
    CompleteResourceTokenAuthRequest.add_member(:session_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestUri, name: "sessionUri", traits: {"smithy.api#required" => {}}))
    CompleteResourceTokenAuthRequest.type = Types::CompleteResourceTokenAuthRequest
    CompleteResourceTokenAuthResponse.type = Types::CompleteResourceTokenAuthResponse
    ConfidenceInterval.add_member(:lower, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "lower"))
    ConfidenceInterval.add_member(:upper, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "upper"))
    ConfidenceInterval.type = Types::ConfidenceInterval
    ConfigurationBundleRef.add_member(:bundle_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationBundleArn, name: "bundleArn", traits: {"smithy.api#required" => {}}))
    ConfigurationBundleRef.add_member(:bundle_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationBundleVersion, name: "bundleVersion", traits: {"smithy.api#required" => {}}))
    ConfigurationBundleRef.type = Types::ConfigurationBundleRef
    ConfigurationBundleToolEntry.add_member(:tool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationToolName, name: "toolName", traits: {"smithy.api#required" => {}}))
    ConfigurationBundleToolEntry.add_member(:tool_description_json_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "toolDescriptionJsonPath", traits: {"smithy.api#required" => {}}))
    ConfigurationBundleToolEntry.type = Types::ConfigurationBundleToolEntry
    ConfigurationBundleToolEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationBundleToolEntry, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ConflictException.type = Types::ConflictException
    Content.add_member(:text, Types::Content::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "text", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}}))
    Content.add_member(:unknown, Types::Content::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Content.type = Types::Content
    ContentBlock.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentBlockType, name: "type", traits: {"smithy.api#required" => {}}))
    ContentBlock.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    ContentBlock.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "data"))
    ContentBlock.add_member(:mime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "mimeType"))
    ContentBlock.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "uri"))
    ContentBlock.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    ContentBlock.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    ContentBlock.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "size"))
    ContentBlock.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceContent, name: "resource"))
    ContentBlock.type = Types::ContentBlock
    ContentBlockList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentBlock, name: "member"))
    ContentBlockType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "text"}))
    ContentBlockType.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE", traits: {"smithy.api#enumValue" => "image"}))
    ContentBlockType.add_member(:embedded_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMBEDDED_RESOURCE", traits: {"smithy.api#enumValue" => "resource"}))
    ContentBlockType.add_member(:resource_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_LINK", traits: {"smithy.api#enumValue" => "resource_link"}))
    ContentDeltaEvent.add_member(:stdout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stdout"))
    ContentDeltaEvent.add_member(:stderr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stderr"))
    ContentDeltaEvent.type = Types::ContentDeltaEvent
    ContentSource.add_member(:inline, Types::ContentSource::Inline, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineMemoryContent, name: "inline"))
    ContentSource.add_member(:unknown, Types::ContentSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ContentSource.type = Types::ContentSource
    ContentStartEvent.type = Types::ContentStartEvent
    ContentStopEvent.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "exitCode", traits: {"smithy.api#required" => {}}))
    ContentStopEvent.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandExecutionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ContentStopEvent.type = Types::ContentStopEvent
    Context.add_member(:span_context, Types::Context::SpanContext, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanContext, name: "spanContext"))
    Context.add_member(:unknown, Types::Context::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Context.type = Types::Context
    ControlStats.add_member(:variant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "variantName", traits: {"smithy.api#required" => {}}))
    ControlStats.add_member(:sample_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sampleSize", traits: {"smithy.api#required" => {}}))
    ControlStats.add_member(:mean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "mean", traits: {"smithy.api#required" => {}}))
    ControlStats.type = Types::ControlStats
    Conversational.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, name: "content", traits: {"smithy.api#required" => {}}))
    Conversational.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "role", traits: {"smithy.api#required" => {}}))
    Conversational.type = Types::Conversational
    CreateABTestRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateABTestRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestDescription, name: "description"))
    CreateABTestRequest.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "gatewayArn", traits: {"smithy.api#required" => {}}))
    CreateABTestRequest.add_member(:variants, ::Smithy::Schema::Shapes::MemberShape.new(target: VariantList, name: "variants", traits: {"smithy.api#required" => {}}))
    CreateABTestRequest.add_member(:gateway_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayFilter, name: "gatewayFilter"))
    CreateABTestRequest.add_member(:evaluation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestEvaluationConfig, name: "evaluationConfig", traits: {"smithy.api#required" => {}}))
    CreateABTestRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateABTestRequest.add_member(:enable_on_create, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableOnCreate"))
    CreateABTestRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateABTestRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateABTestRequest.type = Types::CreateABTestRequest
    CreateABTestResponse.add_member(:ab_test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestId, name: "abTestId", traits: {"smithy.api#required" => {}}))
    CreateABTestResponse.add_member(:ab_test_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestArn, name: "abTestArn", traits: {"smithy.api#required" => {}}))
    CreateABTestResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestName, name: "name"))
    CreateABTestResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateABTestResponse.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestExecutionStatus, name: "executionStatus", traits: {"smithy.api#required" => {}}))
    CreateABTestResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateABTestResponse.type = Types::CreateABTestResponse
    CreateEventInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateEventInput.add_member(:actor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorId, name: "actorId", traits: {"smithy.api#required" => {}}))
    CreateEventInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId"))
    CreateEventInput.add_member(:event_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "eventTimestamp", traits: {"smithy.api#required" => {}}))
    CreateEventInput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadTypeList, name: "payload", traits: {"smithy.api#required" => {}}))
    CreateEventInput.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: Branch, name: "branch"))
    CreateEventInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateEventInput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataMap, name: "metadata"))
    CreateEventInput.add_member(:extraction_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtractionMode, name: "extractionMode"))
    CreateEventInput.add_member(:extraction_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtractionConfig, name: "extractionConfig"))
    CreateEventInput.type = Types::CreateEventInput
    CreateEventOutput.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "event", traits: {"smithy.api#required" => {}}))
    CreateEventOutput.type = Types::CreateEventOutput
    CreatePaymentInstrumentRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}))
    CreatePaymentInstrumentRequest.add_member(:agent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentAgentName, name: "agentName", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"}))
    CreatePaymentInstrumentRequest.add_member(:payment_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentManagerArn, name: "paymentManagerArn", traits: {"smithy.api#required" => {}}))
    CreatePaymentInstrumentRequest.add_member(:payment_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentConnectorId, name: "paymentConnectorId", traits: {"smithy.api#required" => {}}))
    CreatePaymentInstrumentRequest.add_member(:payment_instrument_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentType, name: "paymentInstrumentType", traits: {"smithy.api#required" => {}}))
    CreatePaymentInstrumentRequest.add_member(:payment_instrument_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentDetails, name: "paymentInstrumentDetails", traits: {"smithy.api#required" => {}}))
    CreatePaymentInstrumentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePaymentInstrumentRequest.type = Types::CreatePaymentInstrumentRequest
    CreatePaymentInstrumentResponse.add_member(:payment_instrument, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrument, name: "paymentInstrument", traits: {"smithy.api#required" => {}}))
    CreatePaymentInstrumentResponse.type = Types::CreatePaymentInstrumentResponse
    CreatePaymentSessionRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}))
    CreatePaymentSessionRequest.add_member(:agent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentAgentName, name: "agentName", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"}))
    CreatePaymentSessionRequest.add_member(:payment_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentManagerArn, name: "paymentManagerArn", traits: {"smithy.api#required" => {}}))
    CreatePaymentSessionRequest.add_member(:limits, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLimits, name: "limits"))
    CreatePaymentSessionRequest.add_member(:expiry_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "expiryTimeInMinutes", traits: {"smithy.api#range" => {"min" => 15, "max" => 480}, "smithy.api#required" => {}}))
    CreatePaymentSessionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePaymentSessionRequest.type = Types::CreatePaymentSessionRequest
    CreatePaymentSessionResponse.add_member(:payment_session, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentSession, name: "paymentSession", traits: {"smithy.api#required" => {}}))
    CreatePaymentSessionResponse.type = Types::CreatePaymentSessionResponse
    CryptoWalletNetwork.add_member(:ethereum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ETHEREUM", traits: {"smithy.api#enumValue" => "ETHEREUM"}))
    CryptoWalletNetwork.add_member(:solana, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOLANA", traits: {"smithy.api#enumValue" => "SOLANA"}))
    CryptoX402PaymentInput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "version", traits: {"smithy.api#required" => {}}))
    CryptoX402PaymentInput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentDocument, name: "payload", traits: {"smithy.api#required" => {}}))
    CryptoX402PaymentInput.add_member(:permit2_allowance_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Permit2AllowanceLimit, name: "permit2AllowanceLimit"))
    CryptoX402PaymentInput.type = Types::CryptoX402PaymentInput
    CryptoX402PaymentOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "version", traits: {"smithy.api#required" => {}}))
    CryptoX402PaymentOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentDocument, name: "payload", traits: {"smithy.api#required" => {}}))
    CryptoX402PaymentOutput.type = Types::CryptoX402PaymentOutput
    Currency.add_member(:usd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USD", traits: {"smithy.api#enumValue" => "USD"}))
    CustomDescriptor.add_member(:inline_content, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineContent, name: "inlineContent"))
    CustomDescriptor.type = Types::CustomDescriptor
    CustomRequestParametersType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRequestKeyType, name: "key"))
    CustomRequestParametersType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRequestValueType, name: "value"))
    DataSourceConfig.add_member(:cloud_watch_logs, Types::DataSourceConfig::CloudWatchLogs, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsSource, name: "cloudWatchLogs"))
    DataSourceConfig.add_member(:online_evaluation_config_source, Types::DataSourceConfig::OnlineEvaluationConfigSource, ::Smithy::Schema::Shapes::MemberShape.new(target: OnlineEvaluationConfigSource, name: "onlineEvaluationConfigSource"))
    DataSourceConfig.add_member(:unknown, Types::DataSourceConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DataSourceConfig.type = Types::DataSourceConfig
    DeleteABTestRequest.add_member(:ab_test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestId, name: "abTestId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteABTestRequest.type = Types::DeleteABTestRequest
    DeleteABTestResponse.add_member(:ab_test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestId, name: "abTestId", traits: {"smithy.api#required" => {}}))
    DeleteABTestResponse.add_member(:ab_test_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestArn, name: "abTestArn", traits: {"smithy.api#required" => {}}))
    DeleteABTestResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteABTestResponse.type = Types::DeleteABTestResponse
    DeleteBatchEvaluationRequest.add_member(:batch_evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationId, name: "batchEvaluationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBatchEvaluationRequest.type = Types::DeleteBatchEvaluationRequest
    DeleteBatchEvaluationResponse.add_member(:batch_evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationId, name: "batchEvaluationId", traits: {"smithy.api#required" => {}}))
    DeleteBatchEvaluationResponse.add_member(:batch_evaluation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationArn, name: "batchEvaluationArn", traits: {"smithy.api#required" => {}}))
    DeleteBatchEvaluationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteBatchEvaluationResponse.type = Types::DeleteBatchEvaluationResponse
    DeleteCapacityProviderSessionRequest.add_member(:capacity_provider_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderId, name: "capacityProviderId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCapacityProviderSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCapacityProviderSessionRequest.type = Types::DeleteCapacityProviderSessionRequest
    DeleteCapacityProviderSessionResponse.add_member(:capacity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderArn, name: "capacityProviderArn", traits: {"smithy.api#required" => {}}))
    DeleteCapacityProviderSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    DeleteCapacityProviderSessionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderSessionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteCapacityProviderSessionResponse.type = Types::DeleteCapacityProviderSessionResponse
    DeleteEventInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventInput.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "eventId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventInput.add_member(:actor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorId, name: "actorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventInput.type = Types::DeleteEventInput
    DeleteEventOutput.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "eventId", traits: {"smithy.api#required" => {}}))
    DeleteEventOutput.type = Types::DeleteEventOutput
    DeleteMemoryRecordInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMemoryRecordInput.add_member(:memory_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordId, name: "memoryRecordId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMemoryRecordInput.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    DeleteMemoryRecordInput.type = Types::DeleteMemoryRecordInput
    DeleteMemoryRecordOutput.add_member(:memory_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordId, name: "memoryRecordId", traits: {"smithy.api#required" => {}}))
    DeleteMemoryRecordOutput.type = Types::DeleteMemoryRecordOutput
    DeletePaymentInstrumentRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}))
    DeletePaymentInstrumentRequest.add_member(:payment_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentManagerArn, name: "paymentManagerArn", traits: {"smithy.api#required" => {}}))
    DeletePaymentInstrumentRequest.add_member(:payment_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentConnectorId, name: "paymentConnectorId", traits: {"smithy.api#required" => {}}))
    DeletePaymentInstrumentRequest.add_member(:payment_instrument_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentId, name: "paymentInstrumentId", traits: {"smithy.api#required" => {}}))
    DeletePaymentInstrumentRequest.type = Types::DeletePaymentInstrumentRequest
    DeletePaymentInstrumentResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeletePaymentInstrumentResponse.type = Types::DeletePaymentInstrumentResponse
    DeletePaymentSessionRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}))
    DeletePaymentSessionRequest.add_member(:payment_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentManagerArn, name: "paymentManagerArn", traits: {"smithy.api#required" => {}}))
    DeletePaymentSessionRequest.add_member(:payment_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentSessionId, name: "paymentSessionId", traits: {"smithy.api#required" => {}}))
    DeletePaymentSessionRequest.type = Types::DeletePaymentSessionRequest
    DeletePaymentSessionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentSessionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeletePaymentSessionResponse.type = Types::DeletePaymentSessionResponse
    DeleteRecommendationRequest.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, name: "recommendationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecommendationRequest.type = Types::DeleteRecommendationRequest
    DeleteRecommendationResponse.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, name: "recommendationId", traits: {"smithy.api#required" => {}}))
    DeleteRecommendationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteRecommendationResponse.type = Types::DeleteRecommendationResponse
    DescriptorType.add_member(:mcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP", traits: {"smithy.api#enumValue" => "MCP"}))
    DescriptorType.add_member(:a2_a, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "A2A", traits: {"smithy.api#enumValue" => "A2A"}))
    DescriptorType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    DescriptorType.add_member(:agent_skills, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT_SKILLS", traits: {"smithy.api#enumValue" => "AGENT_SKILLS"}))
    Descriptors.add_member(:mcp, ::Smithy::Schema::Shapes::MemberShape.new(target: McpDescriptor, name: "mcp"))
    Descriptors.add_member(:a2a, ::Smithy::Schema::Shapes::MemberShape.new(target: A2aDescriptor, name: "a2a"))
    Descriptors.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDescriptor, name: "custom"))
    Descriptors.add_member(:agent_skills, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSkillsDescriptor, name: "agentSkills"))
    Descriptors.type = Types::Descriptors
    DomainPatterns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainPattern, name: "member"))
    DuplicateIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    DuplicateIdException.type = Types::DuplicateIdException
    EfsConfiguration.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EfsAccessPointArn, name: "accessPointArn", traits: {"smithy.api#required" => {}}))
    EfsConfiguration.add_member(:mount_path, ::Smithy::Schema::Shapes::MemberShape.new(target: MountPath, name: "mountPath", traits: {"smithy.api#required" => {}}))
    EfsConfiguration.add_member(:file_system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EfsFileSystemArn, name: "fileSystemArn", traits: {"smithy.api#required" => {}}))
    EfsConfiguration.type = Types::EfsConfiguration
    EmbeddedCryptoWallet.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: CryptoWalletNetwork, name: "network", traits: {"smithy.api#required" => {}}))
    EmbeddedCryptoWallet.add_member(:linked_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedAccountList, name: "linkedAccounts", traits: {"smithy.api#required" => {}}))
    EmbeddedCryptoWallet.add_member(:wallet_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "walletAddress"))
    EmbeddedCryptoWallet.add_member(:redirect_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "redirectUrl", traits: {"smithy.api#length" => {"max" => 2048}}))
    EmbeddedCryptoWallet.type = Types::EmbeddedCryptoWallet
    ErrorDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#length" => {"max" => 1000}}))
    EvaluateRequest.add_member(:evaluator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatorId, name: "evaluatorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    EvaluateRequest.add_member(:evaluation_input, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationInput, name: "evaluationInput", traits: {"smithy.api#required" => {}}))
    EvaluateRequest.add_member(:evaluation_target, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationTarget, name: "evaluationTarget"))
    EvaluateRequest.add_member(:evaluation_reference_inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationReferenceInputs, name: "evaluationReferenceInputs"))
    EvaluateRequest.type = Types::EvaluateRequest
    EvaluateResponse.add_member(:evaluation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResults, name: "evaluationResults", traits: {"smithy.api#required" => {}}))
    EvaluateResponse.type = Types::EvaluateResponse
    EvaluationContent.add_member(:text, Types::EvaluationContent::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}}))
    EvaluationContent.add_member(:unknown, Types::EvaluationContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EvaluationContent.type = Types::EvaluationContent
    EvaluationContentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationContent, name: "member"))
    EvaluationExpectedTrajectory.add_member(:tool_names, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationToolNames, name: "toolNames"))
    EvaluationExpectedTrajectory.type = Types::EvaluationExpectedTrajectory
    EvaluationInput.add_member(:session_spans, Types::EvaluationInput::SessionSpans, ::Smithy::Schema::Shapes::MemberShape.new(target: Spans, name: "sessionSpans"))
    EvaluationInput.add_member(:unknown, Types::EvaluationInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EvaluationInput.type = Types::EvaluationInput
    EvaluationJobResults.add_member(:number_of_sessions_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numberOfSessionsCompleted"))
    EvaluationJobResults.add_member(:number_of_sessions_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numberOfSessionsInProgress"))
    EvaluationJobResults.add_member(:number_of_sessions_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numberOfSessionsFailed"))
    EvaluationJobResults.add_member(:total_number_of_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalNumberOfSessions"))
    EvaluationJobResults.add_member(:number_of_sessions_ignored, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numberOfSessionsIgnored"))
    EvaluationJobResults.add_member(:evaluator_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatorSummaryList, name: "evaluatorSummaries"))
    EvaluationJobResults.type = Types::EvaluationJobResults
    EvaluationMetadata.add_member(:session_metadata, Types::EvaluationMetadata::SessionMetadata, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionMetadataList, name: "sessionMetadata"))
    EvaluationMetadata.add_member(:unknown, Types::EvaluationMetadata::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EvaluationMetadata.type = Types::EvaluationMetadata
    EvaluationReferenceInput.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: Context, name: "context", traits: {"smithy.api#required" => {}}))
    EvaluationReferenceInput.add_member(:expected_response, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationContent, name: "expectedResponse"))
    EvaluationReferenceInput.add_member(:assertions, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationContentList, name: "assertions"))
    EvaluationReferenceInput.add_member(:expected_trajectory, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationExpectedTrajectory, name: "expectedTrajectory"))
    EvaluationReferenceInput.type = Types::EvaluationReferenceInput
    EvaluationReferenceInputs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationReferenceInput, name: "member"))
    EvaluationResultContent.add_member(:evaluator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatorArn, name: "evaluatorArn", traits: {"smithy.api#required" => {}}))
    EvaluationResultContent.add_member(:evaluator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatorId, name: "evaluatorId", traits: {"smithy.api#required" => {}}))
    EvaluationResultContent.add_member(:evaluator_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatorName, name: "evaluatorName", traits: {"smithy.api#required" => {}}))
    EvaluationResultContent.add_member(:explanation, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationExplanation, name: "explanation"))
    EvaluationResultContent.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: Context, name: "context", traits: {"smithy.api#required" => {}}))
    EvaluationResultContent.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "value"))
    EvaluationResultContent.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "label"))
    EvaluationResultContent.add_member(:token_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenUsage, name: "tokenUsage"))
    EvaluationResultContent.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationErrorMessage, name: "errorMessage"))
    EvaluationResultContent.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationErrorCode, name: "errorCode"))
    EvaluationResultContent.add_member(:ignored_reference_input_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: IgnoredReferenceInputFields, name: "ignoredReferenceInputFields"))
    EvaluationResultContent.type = Types::EvaluationResultContent
    EvaluationResults.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationResultContent, name: "member"))
    EvaluationStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    EvaluationTarget.add_member(:span_ids, Types::EvaluationTarget::SpanIds, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanIds, name: "spanIds"))
    EvaluationTarget.add_member(:trace_ids, Types::EvaluationTarget::TraceIds, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceIds, name: "traceIds"))
    EvaluationTarget.add_member(:unknown, Types::EvaluationTarget::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EvaluationTarget.type = Types::EvaluationTarget
    EvaluationToolNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationToolName, name: "member"))
    Evaluator.add_member(:evaluator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatorId, name: "evaluatorId", traits: {"smithy.api#required" => {}}))
    Evaluator.type = Types::Evaluator
    EvaluatorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Evaluator, name: "member"))
    EvaluatorMetric.add_member(:evaluator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "evaluatorArn", traits: {"smithy.api#required" => {}}))
    EvaluatorMetric.add_member(:control_stats, ::Smithy::Schema::Shapes::MemberShape.new(target: ControlStats, name: "controlStats", traits: {"smithy.api#required" => {}}))
    EvaluatorMetric.add_member(:variant_results, ::Smithy::Schema::Shapes::MemberShape.new(target: VariantResultList, name: "variantResults", traits: {"smithy.api#required" => {}}))
    EvaluatorMetric.type = Types::EvaluatorMetric
    EvaluatorMetricList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatorMetric, name: "member"))
    EvaluatorStatistics.add_member(:average_score, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "averageScore"))
    EvaluatorStatistics.type = Types::EvaluatorStatistics
    EvaluatorSummary.add_member(:evaluator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "evaluatorId"))
    EvaluatorSummary.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatorStatistics, name: "statistics"))
    EvaluatorSummary.add_member(:total_evaluated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalEvaluated"))
    EvaluatorSummary.add_member(:total_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalFailed"))
    EvaluatorSummary.type = Types::EvaluatorSummary
    EvaluatorSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatorSummary, name: "member"))
    Event.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#required" => {}}))
    Event.add_member(:actor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorId, name: "actorId", traits: {"smithy.api#required" => {}}))
    Event.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    Event.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "eventId", traits: {"smithy.api#required" => {}}))
    Event.add_member(:event_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "eventTimestamp", traits: {"smithy.api#required" => {}}))
    Event.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadTypeList, name: "payload", traits: {"smithy.api#required" => {}}))
    Event.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: Branch, name: "branch"))
    Event.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataMap, name: "metadata"))
    Event.type = Types::Event
    EventFilterCondition.add_member(:has_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HAS_EVENTS", traits: {"smithy.api#enumValue" => "HAS_EVENTS"}))
    EventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "member"))
    EventMetadataFilterExpression.add_member(:left, ::Smithy::Schema::Shapes::MemberShape.new(target: LeftExpression, name: "left", traits: {"smithy.api#required" => {}}))
    EventMetadataFilterExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatorType, name: "operator", traits: {"smithy.api#required" => {}}))
    EventMetadataFilterExpression.add_member(:right, ::Smithy::Schema::Shapes::MemberShape.new(target: RightExpression, name: "right"))
    EventMetadataFilterExpression.type = Types::EventMetadataFilterExpression
    EventMetadataFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventMetadataFilterExpression, name: "member"))
    ExecutionSummaryAffectedSession.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionId", traits: {"smithy.api#required" => {}}))
    ExecutionSummaryAffectedSession.add_member(:approach_taken, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "approachTaken", traits: {"smithy.api#required" => {}}))
    ExecutionSummaryAffectedSession.add_member(:final_outcome, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "finalOutcome", traits: {"smithy.api#required" => {}}))
    ExecutionSummaryAffectedSession.type = Types::ExecutionSummaryAffectedSession
    ExecutionSummaryAffectedSessionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSummaryAffectedSession, name: "member"))
    ExecutionSummaryCluster.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "clusterId", traits: {"smithy.api#required" => {}}))
    ExecutionSummaryCluster.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ExecutionSummaryCluster.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    ExecutionSummaryCluster.add_member(:affected_session_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "affectedSessionCount", traits: {"smithy.api#required" => {}}))
    ExecutionSummaryCluster.add_member(:affected_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSummaryAffectedSessionList, name: "affectedSessions", traits: {"smithy.api#required" => {}}))
    ExecutionSummaryCluster.type = Types::ExecutionSummaryCluster
    ExecutionSummaryClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSummaryCluster, name: "member"))
    ExecutionSummaryClusteringResultContent.add_member(:execution_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSummaryClusterList, name: "executionSummaries", traits: {"smithy.api#required" => {}}))
    ExecutionSummaryClusteringResultContent.type = Types::ExecutionSummaryClusteringResultContent
    ExternalProxy.add_member(:server, ::Smithy::Schema::Shapes::MemberShape.new(target: HostName, name: "server", traits: {"smithy.api#required" => {}}))
    ExternalProxy.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "port", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}, "smithy.api#required" => {}}))
    ExternalProxy.add_member(:domain_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainPatterns, name: "domainPatterns"))
    ExternalProxy.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyCredentials, name: "credentials"))
    ExternalProxy.type = Types::ExternalProxy
    ExtractionConfig.add_member(:namespace_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceVariablesMap, name: "namespaceVariables"))
    ExtractionConfig.type = Types::ExtractionConfig
    ExtractionJob.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "jobId", traits: {"smithy.api#required" => {}}))
    ExtractionJob.type = Types::ExtractionJob
    ExtractionJobFilterInput.add_member(:strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "strategyId"))
    ExtractionJobFilterInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionId"))
    ExtractionJobFilterInput.add_member(:actor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "actorId"))
    ExtractionJobFilterInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtractionJobStatus, name: "status"))
    ExtractionJobFilterInput.type = Types::ExtractionJobFilterInput
    ExtractionJobMessages.add_member(:messages_list, Types::ExtractionJobMessages::MessagesList, ::Smithy::Schema::Shapes::MemberShape.new(target: MessagesList, name: "messagesList"))
    ExtractionJobMessages.add_member(:unknown, Types::ExtractionJobMessages::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ExtractionJobMessages.type = Types::ExtractionJobMessages
    ExtractionJobMetadata.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "jobID", traits: {"smithy.api#required" => {}}))
    ExtractionJobMetadata.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtractionJobMessages, name: "messages", traits: {"smithy.api#required" => {}}))
    ExtractionJobMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtractionJobStatus, name: "status"))
    ExtractionJobMetadata.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureReason"))
    ExtractionJobMetadata.add_member(:strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "strategyId"))
    ExtractionJobMetadata.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionId"))
    ExtractionJobMetadata.add_member(:actor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "actorId"))
    ExtractionJobMetadata.type = Types::ExtractionJobMetadata
    ExtractionJobMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtractionJobMetadata, name: "member"))
    ExtractionJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ExtractionMode.add_member(:skip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIP", traits: {"smithy.api#enumValue" => "SKIP"}))
    FailureAnalysisResultContent.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCategoryClusterList, name: "failures", traits: {"smithy.api#required" => {}}))
    FailureAnalysisResultContent.type = Types::FailureAnalysisResultContent
    FailureCategoryCluster.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "clusterId", traits: {"smithy.api#required" => {}}))
    FailureCategoryCluster.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    FailureCategoryCluster.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    FailureCategoryCluster.add_member(:affected_session_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "affectedSessionCount", traits: {"smithy.api#required" => {}}))
    FailureCategoryCluster.add_member(:sub_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureSubCategoryClusterList, name: "subCategories", traits: {"smithy.api#required" => {}}))
    FailureCategoryCluster.type = Types::FailureCategoryCluster
    FailureCategoryClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureCategoryCluster, name: "member"))
    FailureSpanDetail.add_member(:span_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "spanId", traits: {"smithy.api#required" => {}}))
    FailureSpanDetail.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceId", traits: {"smithy.api#required" => {}}))
    FailureSpanDetail.add_member(:signals, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsFailureSignalList, name: "signals", traits: {"smithy.api#required" => {}}))
    FailureSpanDetail.type = Types::FailureSpanDetail
    FailureSpanDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureSpanDetail, name: "member"))
    FailureSubCategoryCluster.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "clusterId", traits: {"smithy.api#required" => {}}))
    FailureSubCategoryCluster.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    FailureSubCategoryCluster.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    FailureSubCategoryCluster.add_member(:affected_session_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "affectedSessionCount", traits: {"smithy.api#required" => {}}))
    FailureSubCategoryCluster.add_member(:root_causes, ::Smithy::Schema::Shapes::MemberShape.new(target: RootCauseClusterList, name: "rootCauses", traits: {"smithy.api#required" => {}}))
    FailureSubCategoryCluster.type = Types::FailureSubCategoryCluster
    FailureSubCategoryClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureSubCategoryCluster, name: "member"))
    FilterInput.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchFilter, name: "branch"))
    FilterInput.add_member(:event_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: EventMetadataFilterList, name: "eventMetadata"))
    FilterInput.type = Types::FilterInput
    FilterValue.add_member(:string_value, Types::FilterValue::StringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterStringValue, name: "stringValue"))
    FilterValue.add_member(:double_value, Types::FilterValue::DoubleValue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "doubleValue"))
    FilterValue.add_member(:boolean_value, Types::FilterValue::BooleanValue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "booleanValue"))
    FilterValue.add_member(:unknown, Types::FilterValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FilterValue.type = Types::FilterValue
    GatewayFilter.add_member(:target_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetPathList, name: "targetPaths"))
    GatewayFilter.type = Types::GatewayFilter
    GetABTestRequest.add_member(:ab_test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestId, name: "abTestId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetABTestRequest.type = Types::GetABTestRequest
    GetABTestResponse.add_member(:ab_test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestId, name: "abTestId", traits: {"smithy.api#required" => {}}))
    GetABTestResponse.add_member(:ab_test_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestArn, name: "abTestArn", traits: {"smithy.api#required" => {}}))
    GetABTestResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestName, name: "name", traits: {"smithy.api#required" => {}}))
    GetABTestResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestDescription, name: "description"))
    GetABTestResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetABTestResponse.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestExecutionStatus, name: "executionStatus", traits: {"smithy.api#required" => {}}))
    GetABTestResponse.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "gatewayArn", traits: {"smithy.api#required" => {}}))
    GetABTestResponse.add_member(:variants, ::Smithy::Schema::Shapes::MemberShape.new(target: VariantList, name: "variants", traits: {"smithy.api#required" => {}}))
    GetABTestResponse.add_member(:gateway_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayFilter, name: "gatewayFilter"))
    GetABTestResponse.add_member(:evaluation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestEvaluationConfig, name: "evaluationConfig", traits: {"smithy.api#required" => {}}))
    GetABTestResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    GetABTestResponse.add_member(:current_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "currentRunId"))
    GetABTestResponse.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetailsList, name: "errorDetails"))
    GetABTestResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startedAt"))
    GetABTestResponse.add_member(:stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "stoppedAt"))
    GetABTestResponse.add_member(:max_duration_expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "maxDurationExpiresAt"))
    GetABTestResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetABTestResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetABTestResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestResults, name: "results"))
    GetABTestResponse.type = Types::GetABTestResponse
    GetAgentCardRequest.add_member(:runtime_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "runtimeSessionId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id", "smithy.api#idempotencyToken" => {}}))
    GetAgentCardRequest.add_member(:agent_runtime_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentRuntimeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentCardRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "qualifier", traits: {"smithy.api#httpQuery" => "qualifier"}))
    GetAgentCardRequest.type = Types::GetAgentCardRequest
    GetAgentCardResponse.add_member(:runtime_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "runtimeSessionId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"}))
    GetAgentCardResponse.add_member(:agent_card, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCard, name: "agentCard", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetAgentCardResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpResponseCode, name: "statusCode", traits: {"smithy.api#httpResponseCode" => {}}))
    GetAgentCardResponse[:http_payload] = :agent_card
    GetAgentCardResponse[:http_payload_member] = GetAgentCardResponse.member(:agent_card)
    GetAgentCardResponse.type = Types::GetAgentCardResponse
    GetBatchEvaluationRequest.add_member(:batch_evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationId, name: "batchEvaluationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBatchEvaluationRequest.type = Types::GetBatchEvaluationRequest
    GetBatchEvaluationResponse.add_member(:batch_evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationId, name: "batchEvaluationId", traits: {"smithy.api#required" => {}}))
    GetBatchEvaluationResponse.add_member(:batch_evaluation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationArn, name: "batchEvaluationArn", traits: {"smithy.api#required" => {}}))
    GetBatchEvaluationResponse.add_member(:batch_evaluation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationName, name: "batchEvaluationName", traits: {"smithy.api#required" => {}}))
    GetBatchEvaluationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetBatchEvaluationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetBatchEvaluationResponse.add_member(:evaluators, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatorList, name: "evaluators"))
    GetBatchEvaluationResponse.add_member(:insights, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightList, name: "insights"))
    GetBatchEvaluationResponse.add_member(:data_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfig, name: "dataSourceConfig"))
    GetBatchEvaluationResponse.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfig, name: "outputConfig"))
    GetBatchEvaluationResponse.add_member(:evaluation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationJobResults, name: "evaluationResults"))
    GetBatchEvaluationResponse.add_member(:failure_analysis_result, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureAnalysisResultContent, name: "failureAnalysisResult"))
    GetBatchEvaluationResponse.add_member(:user_intent_result, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIntentClusteringResultContent, name: "userIntentResult"))
    GetBatchEvaluationResponse.add_member(:execution_summary_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionSummaryClusteringResultContent, name: "executionSummaryResult"))
    GetBatchEvaluationResponse.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetailsList, name: "errorDetails"))
    GetBatchEvaluationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationDescription, name: "description"))
    GetBatchEvaluationResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetBatchEvaluationResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    GetBatchEvaluationResponse.type = Types::GetBatchEvaluationResponse
    GetBrowserSessionRequest.add_member(:browser_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "browserIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBrowserSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionId, name: "sessionId", traits: {"smithy.api#httpQuery" => "sessionId", "smithy.api#required" => {}}))
    GetBrowserSessionRequest.type = Types::GetBrowserSessionRequest
    GetBrowserSessionResponse.add_member(:browser_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "browserIdentifier", traits: {"smithy.api#required" => {}}))
    GetBrowserSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    GetBrowserSessionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    GetBrowserSessionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetBrowserSessionResponse.add_member(:view_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewPort, name: "viewPort"))
    GetBrowserSessionResponse.add_member(:extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserExtensions, name: "extensions"))
    GetBrowserSessionResponse.add_member(:enterprise_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserEnterprisePolicies, name: "enterprisePolicies"))
    GetBrowserSessionResponse.add_member(:profile_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserProfileConfiguration, name: "profileConfiguration"))
    GetBrowserSessionResponse.add_member(:session_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionTimeout, name: "sessionTimeoutSeconds"))
    GetBrowserSessionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionStatus, name: "status"))
    GetBrowserSessionResponse.add_member(:streams, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionStream, name: "streams"))
    GetBrowserSessionResponse.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, name: "proxyConfiguration"))
    GetBrowserSessionResponse.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificates, name: "certificates"))
    GetBrowserSessionResponse.add_member(:filesystem_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolsFileSystemConfigurations, name: "filesystemConfigurations"))
    GetBrowserSessionResponse.add_member(:session_replay_artifact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionReplayArtifact"))
    GetBrowserSessionResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "lastUpdatedAt"))
    GetBrowserSessionResponse.type = Types::GetBrowserSessionResponse
    GetCodeInterpreterSessionRequest.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeInterpreterIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCodeInterpreterSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterSessionId, name: "sessionId", traits: {"smithy.api#httpQuery" => "sessionId", "smithy.api#required" => {}}))
    GetCodeInterpreterSessionRequest.type = Types::GetCodeInterpreterSessionRequest
    GetCodeInterpreterSessionResponse.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeInterpreterIdentifier", traits: {"smithy.api#required" => {}}))
    GetCodeInterpreterSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterSessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    GetCodeInterpreterSessionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    GetCodeInterpreterSessionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetCodeInterpreterSessionResponse.add_member(:session_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterSessionTimeout, name: "sessionTimeoutSeconds"))
    GetCodeInterpreterSessionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterSessionStatus, name: "status"))
    GetCodeInterpreterSessionResponse.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificates, name: "certificates"))
    GetCodeInterpreterSessionResponse.add_member(:filesystem_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolsFileSystemConfigurations, name: "filesystemConfigurations"))
    GetCodeInterpreterSessionResponse.type = Types::GetCodeInterpreterSessionResponse
    GetEventInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventInput.add_member(:actor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorId, name: "actorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventInput.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, name: "eventId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventInput.type = Types::GetEventInput
    GetEventOutput.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "event", traits: {"smithy.api#required" => {}}))
    GetEventOutput.type = Types::GetEventOutput
    GetMemoryRecordInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMemoryRecordInput.add_member(:memory_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordId, name: "memoryRecordId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMemoryRecordInput.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    GetMemoryRecordInput.type = Types::GetMemoryRecordInput
    GetMemoryRecordOutput.add_member(:memory_record, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecord, name: "memoryRecord", traits: {"smithy.api#required" => {}}))
    GetMemoryRecordOutput.type = Types::GetMemoryRecordOutput
    GetPaymentInstrumentBalanceRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}))
    GetPaymentInstrumentBalanceRequest.add_member(:agent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentAgentName, name: "agentName", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"}))
    GetPaymentInstrumentBalanceRequest.add_member(:payment_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentManagerArn, name: "paymentManagerArn", traits: {"smithy.api#required" => {}}))
    GetPaymentInstrumentBalanceRequest.add_member(:payment_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentConnectorId, name: "paymentConnectorId", traits: {"smithy.api#required" => {}}))
    GetPaymentInstrumentBalanceRequest.add_member(:payment_instrument_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentId, name: "paymentInstrumentId", traits: {"smithy.api#required" => {}}))
    GetPaymentInstrumentBalanceRequest.add_member(:chain, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainChainId, name: "chain", traits: {"smithy.api#required" => {}}))
    GetPaymentInstrumentBalanceRequest.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentBalanceToken, name: "token", traits: {"smithy.api#required" => {}}))
    GetPaymentInstrumentBalanceRequest.type = Types::GetPaymentInstrumentBalanceRequest
    GetPaymentInstrumentBalanceResponse.add_member(:payment_instrument_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentId, name: "paymentInstrumentId", traits: {"smithy.api#required" => {}}))
    GetPaymentInstrumentBalanceResponse.add_member(:token_balance, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenBalance, name: "tokenBalance", traits: {"smithy.api#required" => {}}))
    GetPaymentInstrumentBalanceResponse.type = Types::GetPaymentInstrumentBalanceResponse
    GetPaymentInstrumentRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}))
    GetPaymentInstrumentRequest.add_member(:agent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentAgentName, name: "agentName", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"}))
    GetPaymentInstrumentRequest.add_member(:payment_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentManagerArn, name: "paymentManagerArn", traits: {"smithy.api#required" => {}}))
    GetPaymentInstrumentRequest.add_member(:payment_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentConnectorId, name: "paymentConnectorId"))
    GetPaymentInstrumentRequest.add_member(:payment_instrument_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentId, name: "paymentInstrumentId", traits: {"smithy.api#required" => {}}))
    GetPaymentInstrumentRequest.type = Types::GetPaymentInstrumentRequest
    GetPaymentInstrumentResponse.add_member(:payment_instrument, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrument, name: "paymentInstrument", traits: {"smithy.api#required" => {}}))
    GetPaymentInstrumentResponse.type = Types::GetPaymentInstrumentResponse
    GetPaymentSessionRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}))
    GetPaymentSessionRequest.add_member(:agent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentAgentName, name: "agentName", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"}))
    GetPaymentSessionRequest.add_member(:payment_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentManagerArn, name: "paymentManagerArn", traits: {"smithy.api#required" => {}}))
    GetPaymentSessionRequest.add_member(:payment_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentSessionId, name: "paymentSessionId", traits: {"smithy.api#required" => {}}))
    GetPaymentSessionRequest.type = Types::GetPaymentSessionRequest
    GetPaymentSessionResponse.add_member(:payment_session, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentSession, name: "paymentSession", traits: {"smithy.api#required" => {}}))
    GetPaymentSessionResponse.type = Types::GetPaymentSessionResponse
    GetRecommendationRequest.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, name: "recommendationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationRequest.type = Types::GetRecommendationRequest
    GetRecommendationResponse.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, name: "recommendationId", traits: {"smithy.api#required" => {}}))
    GetRecommendationResponse.add_member(:recommendation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationArn, name: "recommendationArn", traits: {"smithy.api#required" => {}}))
    GetRecommendationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationName, name: "name", traits: {"smithy.api#required" => {}}))
    GetRecommendationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationDescription, name: "description"))
    GetRecommendationResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, name: "type", traits: {"smithy.api#required" => {}}))
    GetRecommendationResponse.add_member(:recommendation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationConfig, name: "recommendationConfig", traits: {"smithy.api#required" => {}}))
    GetRecommendationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetRecommendationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetRecommendationResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetRecommendationResponse.add_member(:recommendation_result, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationResult, name: "recommendationResult"))
    GetRecommendationResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    GetRecommendationResponse.type = Types::GetRecommendationResponse
    GetResourceApiKeyRequest.add_member(:workload_identity_token, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIdentityTokenType, name: "workloadIdentityToken", traits: {"smithy.api#required" => {}}))
    GetResourceApiKeyRequest.add_member(:resource_credential_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialProviderName, name: "resourceCredentialProviderName", traits: {"smithy.api#required" => {}}))
    GetResourceApiKeyRequest.type = Types::GetResourceApiKeyRequest
    GetResourceApiKeyResponse.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeyType, name: "apiKey", traits: {"smithy.api#required" => {}}))
    GetResourceApiKeyResponse.type = Types::GetResourceApiKeyResponse
    GetResourceOauth2TokenRequest.add_member(:workload_identity_token, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIdentityTokenType, name: "workloadIdentityToken", traits: {"smithy.api#required" => {}}))
    GetResourceOauth2TokenRequest.add_member(:resource_credential_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialProviderName, name: "resourceCredentialProviderName", traits: {"smithy.api#required" => {}}))
    GetResourceOauth2TokenRequest.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopesListType, name: "scopes", traits: {"smithy.api#required" => {}}))
    GetResourceOauth2TokenRequest.add_member(:oauth2_flow, ::Smithy::Schema::Shapes::MemberShape.new(target: Oauth2FlowType, name: "oauth2Flow", traits: {"smithy.api#required" => {}}))
    GetResourceOauth2TokenRequest.add_member(:session_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestUri, name: "sessionUri"))
    GetResourceOauth2TokenRequest.add_member(:resource_oauth2_return_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceOauth2ReturnUrlType, name: "resourceOauth2ReturnUrl"))
    GetResourceOauth2TokenRequest.add_member(:force_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "forceAuthentication"))
    GetResourceOauth2TokenRequest.add_member(:custom_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRequestParametersType, name: "customParameters"))
    GetResourceOauth2TokenRequest.add_member(:custom_state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "customState"))
    GetResourceOauth2TokenRequest.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesListType, name: "resources"))
    GetResourceOauth2TokenRequest.add_member(:audiences, ::Smithy::Schema::Shapes::MemberShape.new(target: AudiencesListType, name: "audiences"))
    GetResourceOauth2TokenRequest.type = Types::GetResourceOauth2TokenRequest
    GetResourceOauth2TokenResponse.add_member(:authorization_url, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationUrlType, name: "authorizationUrl"))
    GetResourceOauth2TokenResponse.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessTokenType, name: "accessToken"))
    GetResourceOauth2TokenResponse.add_member(:session_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestUri, name: "sessionUri"))
    GetResourceOauth2TokenResponse.add_member(:session_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionStatus, name: "sessionStatus"))
    GetResourceOauth2TokenResponse.type = Types::GetResourceOauth2TokenResponse
    GetResourcePaymentTokenRequest.add_member(:workload_identity_token, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIdentityTokenType, name: "workloadIdentityToken", traits: {"smithy.api#required" => {}}))
    GetResourcePaymentTokenRequest.add_member(:resource_credential_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialProviderName, name: "resourceCredentialProviderName", traits: {"smithy.api#required" => {}}))
    GetResourcePaymentTokenRequest.add_member(:payment_token_request, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentTokenRequestInput, name: "paymentTokenRequest", traits: {"smithy.api#required" => {}}))
    GetResourcePaymentTokenRequest.type = Types::GetResourcePaymentTokenRequest
    GetResourcePaymentTokenResponse.add_member(:payment_token_response, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentTokenResponseOutput, name: "paymentTokenResponse", traits: {"smithy.api#required" => {}}))
    GetResourcePaymentTokenResponse.type = Types::GetResourcePaymentTokenResponse
    GetWorkloadAccessTokenForJWTRequest.add_member(:workload_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIdentityNameType, name: "workloadName", traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenForJWTRequest.add_member(:user_token, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTokenType, name: "userToken", traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenForJWTRequest.type = Types::GetWorkloadAccessTokenForJWTRequest
    GetWorkloadAccessTokenForJWTResponse.add_member(:workload_access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIdentityTokenType, name: "workloadAccessToken", traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenForJWTResponse.type = Types::GetWorkloadAccessTokenForJWTResponse
    GetWorkloadAccessTokenForUserIdRequest.add_member(:workload_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIdentityNameType, name: "workloadName", traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenForUserIdRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdType, name: "userId", traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenForUserIdRequest.type = Types::GetWorkloadAccessTokenForUserIdRequest
    GetWorkloadAccessTokenForUserIdResponse.add_member(:workload_access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIdentityTokenType, name: "workloadAccessToken", traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenForUserIdResponse.type = Types::GetWorkloadAccessTokenForUserIdResponse
    GetWorkloadAccessTokenRequest.add_member(:workload_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIdentityNameType, name: "workloadName", traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenRequest.type = Types::GetWorkloadAccessTokenRequest
    GetWorkloadAccessTokenResponse.add_member(:workload_access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIdentityTokenType, name: "workloadAccessToken", traits: {"smithy.api#required" => {}}))
    GetWorkloadAccessTokenResponse.type = Types::GetWorkloadAccessTokenResponse
    GroundTruthSource.add_member(:inline, Types::GroundTruthSource::Inline, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineGroundTruth, name: "inline"))
    GroundTruthSource.add_member(:unknown, Types::GroundTruthSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    GroundTruthSource.type = Types::GroundTruthSource
    GroundTruthTurn.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundTruthTurnInput, name: "input"))
    GroundTruthTurn.add_member(:expected_response, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationContent, name: "expectedResponse"))
    GroundTruthTurn.type = Types::GroundTruthTurn
    GroundTruthTurnInput.add_member(:prompt, Types::GroundTruthTurnInput::Prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "prompt", traits: {"smithy.api#length" => {"max" => 4000}}))
    GroundTruthTurnInput.add_member(:unknown, Types::GroundTruthTurnInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    GroundTruthTurnInput.type = Types::GroundTruthTurnInput
    GroundTruthTurnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundTruthTurn, name: "member"))
    HarnessAgentCoreBrowserConfig.add_member(:browser_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessBrowserArn, name: "browserArn"))
    HarnessAgentCoreBrowserConfig.type = Types::HarnessAgentCoreBrowserConfig
    HarnessAgentCoreCodeInterpreterConfig.add_member(:code_interpreter_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessCodeInterpreterArn, name: "codeInterpreterArn"))
    HarnessAgentCoreCodeInterpreterConfig.type = Types::HarnessAgentCoreCodeInterpreterConfig
    HarnessAgentCoreGatewayConfig.add_member(:gateway_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayArn, name: "gatewayArn", traits: {"smithy.api#required" => {}}))
    HarnessAgentCoreGatewayConfig.add_member(:outbound_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessGatewayOutboundAuth, name: "outboundAuth"))
    HarnessAgentCoreGatewayConfig.type = Types::HarnessAgentCoreGatewayConfig
    HarnessAllowedTools.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessAllowedTool, name: "member"))
    HarnessAwsSkillPaths.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessAwsSkillPath, name: "member"))
    HarnessBedrockApiFormat.add_member(:converse_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONVERSE_STREAM", traits: {"smithy.api#enumValue" => "converse_stream"}))
    HarnessBedrockApiFormat.add_member(:responses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSES", traits: {"smithy.api#enumValue" => "responses"}))
    HarnessBedrockApiFormat.add_member(:chat_completions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHAT_COMPLETIONS", traits: {"smithy.api#enumValue" => "chat_completions"}))
    HarnessBedrockModelConfig.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelId, name: "modelId", traits: {"smithy.api#required" => {}}))
    HarnessBedrockModelConfig.add_member(:max_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxTokens, name: "maxTokens"))
    HarnessBedrockModelConfig.add_member(:temperature, ::Smithy::Schema::Shapes::MemberShape.new(target: Temperature, name: "temperature"))
    HarnessBedrockModelConfig.add_member(:top_p, ::Smithy::Schema::Shapes::MemberShape.new(target: TopP, name: "topP"))
    HarnessBedrockModelConfig.add_member(:api_format, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessBedrockApiFormat, name: "apiFormat"))
    HarnessBedrockModelConfig.add_member(:additional_params, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "additionalParams"))
    HarnessBedrockModelConfig.type = Types::HarnessBedrockModelConfig
    HarnessContentBlock.add_member(:text, Types::HarnessContentBlock::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "text"))
    HarnessContentBlock.add_member(:tool_use, Types::HarnessContentBlock::ToolUse, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolUseBlock, name: "toolUse"))
    HarnessContentBlock.add_member(:tool_result, Types::HarnessContentBlock::ToolResult, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolResultBlock, name: "toolResult"))
    HarnessContentBlock.add_member(:reasoning_content, Types::HarnessContentBlock::ReasoningContent, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessReasoningContentBlock, name: "reasoningContent"))
    HarnessContentBlock.add_member(:unknown, Types::HarnessContentBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    HarnessContentBlock.type = Types::HarnessContentBlock
    HarnessContentBlockDelta.add_member(:text, Types::HarnessContentBlockDelta::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "text"))
    HarnessContentBlockDelta.add_member(:tool_use, Types::HarnessContentBlockDelta::ToolUse, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolUseBlockDelta, name: "toolUse"))
    HarnessContentBlockDelta.add_member(:tool_result, Types::HarnessContentBlockDelta::ToolResult, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolResultBlocksDelta, name: "toolResult"))
    HarnessContentBlockDelta.add_member(:reasoning_content, Types::HarnessContentBlockDelta::ReasoningContent, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessReasoningContentBlockDelta, name: "reasoningContent"))
    HarnessContentBlockDelta.add_member(:tool_result_metadata, Types::HarnessContentBlockDelta::ToolResultMetadata, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolResultMetadataBlockDelta, name: "toolResultMetadata"))
    HarnessContentBlockDelta.add_member(:unknown, Types::HarnessContentBlockDelta::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    HarnessContentBlockDelta.type = Types::HarnessContentBlockDelta
    HarnessContentBlockDeltaEvent.add_member(:content_block_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "contentBlockIndex", traits: {"smithy.api#required" => {}}))
    HarnessContentBlockDeltaEvent.add_member(:delta, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessContentBlockDelta, name: "delta", traits: {"smithy.api#required" => {}}))
    HarnessContentBlockDeltaEvent.type = Types::HarnessContentBlockDeltaEvent
    HarnessContentBlockStart.add_member(:tool_use, Types::HarnessContentBlockStart::ToolUse, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolUseBlockStart, name: "toolUse"))
    HarnessContentBlockStart.add_member(:tool_result, Types::HarnessContentBlockStart::ToolResult, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolResultBlockStart, name: "toolResult"))
    HarnessContentBlockStart.add_member(:unknown, Types::HarnessContentBlockStart::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    HarnessContentBlockStart.type = Types::HarnessContentBlockStart
    HarnessContentBlockStartEvent.add_member(:content_block_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "contentBlockIndex", traits: {"smithy.api#required" => {}}))
    HarnessContentBlockStartEvent.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessContentBlockStart, name: "start", traits: {"smithy.api#required" => {}}))
    HarnessContentBlockStartEvent.type = Types::HarnessContentBlockStartEvent
    HarnessContentBlockStopEvent.add_member(:content_block_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "contentBlockIndex", traits: {"smithy.api#required" => {}}))
    HarnessContentBlockStopEvent.type = Types::HarnessContentBlockStopEvent
    HarnessContentBlocks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessContentBlock, name: "member"))
    HarnessConversationRole.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "user"}))
    HarnessConversationRole.add_member(:assistant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSISTANT", traits: {"smithy.api#enumValue" => "assistant"}))
    HarnessGatewayOutboundAuth.add_member(:aws_iam, Types::HarnessGatewayOutboundAuth::AwsIam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "awsIam"))
    HarnessGatewayOutboundAuth.add_member(:none, Types::HarnessGatewayOutboundAuth::None, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "none"))
    HarnessGatewayOutboundAuth.add_member(:oauth, Types::HarnessGatewayOutboundAuth::Oauth, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthCredentialProvider, name: "oauth"))
    HarnessGatewayOutboundAuth.add_member(:unknown, Types::HarnessGatewayOutboundAuth::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    HarnessGatewayOutboundAuth.type = Types::HarnessGatewayOutboundAuth
    HarnessGeminiModelConfig.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelId, name: "modelId", traits: {"smithy.api#required" => {}}))
    HarnessGeminiModelConfig.add_member(:api_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeyArn, name: "apiKeyArn", traits: {"smithy.api#required" => {}}))
    HarnessGeminiModelConfig.add_member(:max_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxTokens, name: "maxTokens"))
    HarnessGeminiModelConfig.add_member(:temperature, ::Smithy::Schema::Shapes::MemberShape.new(target: Temperature, name: "temperature"))
    HarnessGeminiModelConfig.add_member(:top_p, ::Smithy::Schema::Shapes::MemberShape.new(target: TopP, name: "topP"))
    HarnessGeminiModelConfig.add_member(:top_k, ::Smithy::Schema::Shapes::MemberShape.new(target: TopK, name: "topK"))
    HarnessGeminiModelConfig.add_member(:additional_params, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "additionalParams"))
    HarnessGeminiModelConfig.type = Types::HarnessGeminiModelConfig
    HarnessHookDecision.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "allow"}))
    HarnessHookDecision.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY", traits: {"smithy.api#enumValue" => "deny"}))
    HarnessHookEvent.add_member(:hook_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessHookEventId, name: "hookEventId", traits: {"smithy.api#required" => {}}))
    HarnessHookEvent.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessHookName, name: "name", traits: {"smithy.api#required" => {}}))
    HarnessHookEvent.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessHookEventType, name: "type", traits: {"smithy.api#required" => {}}))
    HarnessHookEvent.add_member(:decision, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessHookDecision, name: "decision"))
    HarnessHookEvent.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reason", traits: {"smithy.api#length" => {"max" => 1024}}))
    HarnessHookEvent.type = Types::HarnessHookEvent
    HarnessHookEventType.add_member(:before_tool_call, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE_TOOL_CALL", traits: {"smithy.api#enumValue" => "before_tool_call"}))
    HarnessHookEventType.add_member(:after_tool_call, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_TOOL_CALL", traits: {"smithy.api#enumValue" => "after_tool_call"}))
    HarnessHookEventType.add_member(:before_invocation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE_INVOCATION", traits: {"smithy.api#enumValue" => "before_invocation"}))
    HarnessHookEventType.add_member(:after_invocation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_INVOCATION", traits: {"smithy.api#enumValue" => "after_invocation"}))
    HarnessInlineFunctionConfig.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessInlineFunctionDescription, name: "description", traits: {"smithy.api#required" => {}}))
    HarnessInlineFunctionConfig.add_member(:input_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveJson, name: "inputSchema", traits: {"smithy.api#required" => {}}))
    HarnessInlineFunctionConfig.type = Types::HarnessInlineFunctionConfig
    HarnessLiteLlmModelConfig.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelId, name: "modelId", traits: {"smithy.api#required" => {}}))
    HarnessLiteLlmModelConfig.add_member(:api_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeyArn, name: "apiKeyArn"))
    HarnessLiteLlmModelConfig.add_member(:api_base, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessLiteLlmApiBase, name: "apiBase"))
    HarnessLiteLlmModelConfig.add_member(:max_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxTokens, name: "maxTokens"))
    HarnessLiteLlmModelConfig.add_member(:temperature, ::Smithy::Schema::Shapes::MemberShape.new(target: Temperature, name: "temperature"))
    HarnessLiteLlmModelConfig.add_member(:top_p, ::Smithy::Schema::Shapes::MemberShape.new(target: TopP, name: "topP"))
    HarnessLiteLlmModelConfig.add_member(:additional_params, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "additionalParams"))
    HarnessLiteLlmModelConfig.type = Types::HarnessLiteLlmModelConfig
    HarnessMessage.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessConversationRole, name: "role", traits: {"smithy.api#required" => {}}))
    HarnessMessage.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessContentBlocks, name: "content", traits: {"smithy.api#required" => {}}))
    HarnessMessage.type = Types::HarnessMessage
    HarnessMessageStartEvent.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessConversationRole, name: "role", traits: {"smithy.api#required" => {}}))
    HarnessMessageStartEvent.type = Types::HarnessMessageStartEvent
    HarnessMessageStopEvent.add_member(:stop_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessStopReason, name: "stopReason", traits: {"smithy.api#required" => {}}))
    HarnessMessageStopEvent.type = Types::HarnessMessageStopEvent
    HarnessMessages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessMessage, name: "member"))
    HarnessMetadataEvent.add_member(:usage, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessTokenUsage, name: "usage", traits: {"smithy.api#required" => {}}))
    HarnessMetadataEvent.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessStreamMetrics, name: "metrics", traits: {"smithy.api#required" => {}}))
    HarnessMetadataEvent.type = Types::HarnessMetadataEvent
    HarnessModelConfiguration.add_member(:bedrock_model_config, Types::HarnessModelConfiguration::BedrockModelConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessBedrockModelConfig, name: "bedrockModelConfig"))
    HarnessModelConfiguration.add_member(:open_ai_model_config, Types::HarnessModelConfiguration::OpenAiModelConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessOpenAiModelConfig, name: "openAiModelConfig"))
    HarnessModelConfiguration.add_member(:gemini_model_config, Types::HarnessModelConfiguration::GeminiModelConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessGeminiModelConfig, name: "geminiModelConfig"))
    HarnessModelConfiguration.add_member(:lite_llm_model_config, Types::HarnessModelConfiguration::LiteLlmModelConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessLiteLlmModelConfig, name: "liteLlmModelConfig"))
    HarnessModelConfiguration.add_member(:unknown, Types::HarnessModelConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    HarnessModelConfiguration.type = Types::HarnessModelConfiguration
    HarnessOpenAiApiFormat.add_member(:chat_completions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHAT_COMPLETIONS", traits: {"smithy.api#enumValue" => "chat_completions"}))
    HarnessOpenAiApiFormat.add_member(:responses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESPONSES", traits: {"smithy.api#enumValue" => "responses"}))
    HarnessOpenAiModelConfig.add_member(:model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ModelId, name: "modelId", traits: {"smithy.api#required" => {}}))
    HarnessOpenAiModelConfig.add_member(:api_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeyArn, name: "apiKeyArn", traits: {"smithy.api#required" => {}}))
    HarnessOpenAiModelConfig.add_member(:api_base, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessOpenAiApiBase, name: "apiBase"))
    HarnessOpenAiModelConfig.add_member(:max_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxTokens, name: "maxTokens"))
    HarnessOpenAiModelConfig.add_member(:temperature, ::Smithy::Schema::Shapes::MemberShape.new(target: Temperature, name: "temperature"))
    HarnessOpenAiModelConfig.add_member(:top_p, ::Smithy::Schema::Shapes::MemberShape.new(target: TopP, name: "topP"))
    HarnessOpenAiModelConfig.add_member(:api_format, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessOpenAiApiFormat, name: "apiFormat"))
    HarnessOpenAiModelConfig.add_member(:additional_params, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "additionalParams"))
    HarnessOpenAiModelConfig.type = Types::HarnessOpenAiModelConfig
    HarnessReasoningContentBlock.add_member(:reasoning_text, Types::HarnessReasoningContentBlock::ReasoningText, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessReasoningTextBlock, name: "reasoningText"))
    HarnessReasoningContentBlock.add_member(:redacted_content, Types::HarnessReasoningContentBlock::RedactedContent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "redactedContent"))
    HarnessReasoningContentBlock.add_member(:unknown, Types::HarnessReasoningContentBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    HarnessReasoningContentBlock.type = Types::HarnessReasoningContentBlock
    HarnessReasoningContentBlockDelta.add_member(:text, Types::HarnessReasoningContentBlockDelta::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    HarnessReasoningContentBlockDelta.add_member(:redacted_content, Types::HarnessReasoningContentBlockDelta::RedactedContent, ::Smithy::Schema::Shapes::MemberShape.new(target: Body, name: "redactedContent"))
    HarnessReasoningContentBlockDelta.add_member(:signature, Types::HarnessReasoningContentBlockDelta::Signature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "signature"))
    HarnessReasoningContentBlockDelta.add_member(:unknown, Types::HarnessReasoningContentBlockDelta::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    HarnessReasoningContentBlockDelta.type = Types::HarnessReasoningContentBlockDelta
    HarnessReasoningTextBlock.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#required" => {}}))
    HarnessReasoningTextBlock.add_member(:signature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "signature"))
    HarnessReasoningTextBlock.type = Types::HarnessReasoningTextBlock
    HarnessRemoteMcpConfig.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessRemoteMcpUrl, name: "url", traits: {"smithy.api#required" => {}}))
    HarnessRemoteMcpConfig.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpHeadersMap, name: "headers"))
    HarnessRemoteMcpConfig.type = Types::HarnessRemoteMcpConfig
    HarnessSkill.add_member(:path, Types::HarnessSkill::Path, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessSkillPath, name: "path"))
    HarnessSkill.add_member(:s3, Types::HarnessSkill::S3, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessSkillS3Source, name: "s3"))
    HarnessSkill.add_member(:git, Types::HarnessSkill::Git, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessSkillGitSource, name: "git"))
    HarnessSkill.add_member(:aws_skills, Types::HarnessSkill::AwsSkills, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessSkillAwsSkillsSource, name: "awsSkills"))
    HarnessSkill.add_member(:unknown, Types::HarnessSkill::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    HarnessSkill.type = Types::HarnessSkill
    HarnessSkillAwsSkillsSource.add_member(:paths, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessAwsSkillPaths, name: "paths"))
    HarnessSkillAwsSkillsSource.type = Types::HarnessSkillAwsSkillsSource
    HarnessSkillGitAuth.add_member(:credential_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeyArn, name: "credentialArn", traits: {"smithy.api#required" => {}}))
    HarnessSkillGitAuth.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "username"))
    HarnessSkillGitAuth.type = Types::HarnessSkillGitAuth
    HarnessSkillGitSource.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessSkillGitUrl, name: "url", traits: {"smithy.api#required" => {}}))
    HarnessSkillGitSource.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "path"))
    HarnessSkillGitSource.add_member(:auth, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessSkillGitAuth, name: "auth"))
    HarnessSkillGitSource.type = Types::HarnessSkillGitSource
    HarnessSkillS3Source.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessSkillS3Uri, name: "uri", traits: {"smithy.api#required" => {}}))
    HarnessSkillS3Source.type = Types::HarnessSkillS3Source
    HarnessSkills.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessSkill, name: "member"))
    HarnessStopReason.add_member(:end_turn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "END_TURN", traits: {"smithy.api#enumValue" => "end_turn"}))
    HarnessStopReason.add_member(:tool_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOOL_USE", traits: {"smithy.api#enumValue" => "tool_use"}))
    HarnessStopReason.add_member(:tool_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOOL_RESULT", traits: {"smithy.api#enumValue" => "tool_result"}))
    HarnessStopReason.add_member(:max_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_TOKENS", traits: {"smithy.api#enumValue" => "max_tokens"}))
    HarnessStopReason.add_member(:stop_sequence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_SEQUENCE", traits: {"smithy.api#enumValue" => "stop_sequence"}))
    HarnessStopReason.add_member(:content_filtered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT_FILTERED", traits: {"smithy.api#enumValue" => "content_filtered"}))
    HarnessStopReason.add_member(:malformed_model_output, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MALFORMED_MODEL_OUTPUT", traits: {"smithy.api#enumValue" => "malformed_model_output"}))
    HarnessStopReason.add_member(:malformed_tool_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MALFORMED_TOOL_USE", traits: {"smithy.api#enumValue" => "malformed_tool_use"}))
    HarnessStopReason.add_member(:interrupted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERRUPTED", traits: {"smithy.api#enumValue" => "interrupted"}))
    HarnessStopReason.add_member(:partial_turn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL_TURN", traits: {"smithy.api#enumValue" => "partial_turn"}))
    HarnessStopReason.add_member(:model_context_window_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODEL_CONTEXT_WINDOW_EXCEEDED", traits: {"smithy.api#enumValue" => "model_context_window_exceeded"}))
    HarnessStopReason.add_member(:max_iterations_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_ITERATIONS_EXCEEDED", traits: {"smithy.api#enumValue" => "max_iterations_exceeded"}))
    HarnessStopReason.add_member(:max_output_tokens_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_OUTPUT_TOKENS_EXCEEDED", traits: {"smithy.api#enumValue" => "max_output_tokens_exceeded"}))
    HarnessStopReason.add_member(:timeout_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMEOUT_EXCEEDED", traits: {"smithy.api#enumValue" => "timeout_exceeded"}))
    HarnessStopReason.add_member(:hook_stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOOK_STOPPED", traits: {"smithy.api#enumValue" => "hook_stopped"}))
    HarnessStreamMetrics.add_member(:latency_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "latencyMs", traits: {"smithy.api#required" => {}}))
    HarnessStreamMetrics.type = Types::HarnessStreamMetrics
    HarnessSystemContentBlock.add_member(:text, Types::HarnessSystemContentBlock::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "text"))
    HarnessSystemContentBlock.add_member(:unknown, Types::HarnessSystemContentBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    HarnessSystemContentBlock.type = Types::HarnessSystemContentBlock
    HarnessSystemPrompt.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessSystemContentBlock, name: "member"))
    HarnessTokenUsage.add_member(:input_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "inputTokens", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    HarnessTokenUsage.add_member(:output_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "outputTokens", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    HarnessTokenUsage.add_member(:total_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalTokens", traits: {"smithy.api#range" => {"min" => 0}, "smithy.api#required" => {}}))
    HarnessTokenUsage.add_member(:cache_read_input_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cacheReadInputTokens", traits: {"smithy.api#range" => {"min" => 0}}))
    HarnessTokenUsage.add_member(:cache_write_input_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "cacheWriteInputTokens", traits: {"smithy.api#range" => {"min" => 0}}))
    HarnessTokenUsage.type = Types::HarnessTokenUsage
    HarnessTool.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolType, name: "type", traits: {"smithy.api#required" => {}}))
    HarnessTool.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolName, name: "name"))
    HarnessTool.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolConfiguration, name: "config"))
    HarnessTool.type = Types::HarnessTool
    HarnessToolConfiguration.add_member(:remote_mcp, Types::HarnessToolConfiguration::RemoteMcp, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessRemoteMcpConfig, name: "remoteMcp"))
    HarnessToolConfiguration.add_member(:agent_core_browser, Types::HarnessToolConfiguration::AgentCoreBrowser, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessAgentCoreBrowserConfig, name: "agentCoreBrowser"))
    HarnessToolConfiguration.add_member(:agent_core_gateway, Types::HarnessToolConfiguration::AgentCoreGateway, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessAgentCoreGatewayConfig, name: "agentCoreGateway"))
    HarnessToolConfiguration.add_member(:inline_function, Types::HarnessToolConfiguration::InlineFunction, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessInlineFunctionConfig, name: "inlineFunction"))
    HarnessToolConfiguration.add_member(:agent_core_code_interpreter, Types::HarnessToolConfiguration::AgentCoreCodeInterpreter, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessAgentCoreCodeInterpreterConfig, name: "agentCoreCodeInterpreter"))
    HarnessToolConfiguration.add_member(:unknown, Types::HarnessToolConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    HarnessToolConfiguration.type = Types::HarnessToolConfiguration
    HarnessToolResultBlock.add_member(:tool_use_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolUseId, name: "toolUseId", traits: {"smithy.api#required" => {}}))
    HarnessToolResultBlock.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolResultContentBlocks, name: "content", traits: {"smithy.api#required" => {}}))
    HarnessToolResultBlock.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolUseStatus, name: "status"))
    HarnessToolResultBlock.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolUseType, name: "type"))
    HarnessToolResultBlock.type = Types::HarnessToolResultBlock
    HarnessToolResultBlockDelta.add_member(:text, Types::HarnessToolResultBlockDelta::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "text"))
    HarnessToolResultBlockDelta.add_member(:json, Types::HarnessToolResultBlockDelta::Json, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveJson, name: "json"))
    HarnessToolResultBlockDelta.add_member(:unknown, Types::HarnessToolResultBlockDelta::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    HarnessToolResultBlockDelta.type = Types::HarnessToolResultBlockDelta
    HarnessToolResultBlockStart.add_member(:tool_use_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolUseId, name: "toolUseId", traits: {"smithy.api#required" => {}}))
    HarnessToolResultBlockStart.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolUseStatus, name: "status"))
    HarnessToolResultBlockStart.type = Types::HarnessToolResultBlockStart
    HarnessToolResultBlocksDelta.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolResultBlockDelta, name: "member"))
    HarnessToolResultContentBlock.add_member(:text, Types::HarnessToolResultContentBlock::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "text"))
    HarnessToolResultContentBlock.add_member(:json, Types::HarnessToolResultContentBlock::Json, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveJson, name: "json"))
    HarnessToolResultContentBlock.add_member(:unknown, Types::HarnessToolResultContentBlock::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    HarnessToolResultContentBlock.type = Types::HarnessToolResultContentBlock
    HarnessToolResultContentBlocks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolResultContentBlock, name: "member"))
    HarnessToolResultMetadataBlockDelta.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "metadata", traits: {"smithy.api#required" => {}}))
    HarnessToolResultMetadataBlockDelta.type = Types::HarnessToolResultMetadataBlockDelta
    HarnessToolType.add_member(:remote_mcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOTE_MCP", traits: {"smithy.api#enumValue" => "remote_mcp"}))
    HarnessToolType.add_member(:agentcore_browser, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENTCORE_BROWSER", traits: {"smithy.api#enumValue" => "agentcore_browser"}))
    HarnessToolType.add_member(:agentcore_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENTCORE_GATEWAY", traits: {"smithy.api#enumValue" => "agentcore_gateway"}))
    HarnessToolType.add_member(:inline_function, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INLINE_FUNCTION", traits: {"smithy.api#enumValue" => "inline_function"}))
    HarnessToolType.add_member(:agentcore_code_interpreter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENTCORE_CODE_INTERPRETER", traits: {"smithy.api#enumValue" => "agentcore_code_interpreter"}))
    HarnessToolUseBlock.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolName, name: "name", traits: {"smithy.api#required" => {}}))
    HarnessToolUseBlock.add_member(:tool_use_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolUseId, name: "toolUseId", traits: {"smithy.api#required" => {}}))
    HarnessToolUseBlock.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveJson, name: "input", traits: {"smithy.api#required" => {}}))
    HarnessToolUseBlock.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolUseType, name: "type"))
    HarnessToolUseBlock.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serverName"))
    HarnessToolUseBlock.type = Types::HarnessToolUseBlock
    HarnessToolUseBlockDelta.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveText, name: "input", traits: {"smithy.api#required" => {}}))
    HarnessToolUseBlockDelta.type = Types::HarnessToolUseBlockDelta
    HarnessToolUseBlockStart.add_member(:tool_use_id, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolUseId, name: "toolUseId", traits: {"smithy.api#required" => {}}))
    HarnessToolUseBlockStart.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolName, name: "name", traits: {"smithy.api#required" => {}}))
    HarnessToolUseBlockStart.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessToolUseType, name: "type"))
    HarnessToolUseBlockStart.add_member(:server_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serverName"))
    HarnessToolUseBlockStart.type = Types::HarnessToolUseBlockStart
    HarnessToolUseStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "success"}))
    HarnessToolUseStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "error"}))
    HarnessToolUseType.add_member(:tool_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOOL_USE", traits: {"smithy.api#enumValue" => "tool_use"}))
    HarnessToolUseType.add_member(:server_tool_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVER_TOOL_USE", traits: {"smithy.api#enumValue" => "server_tool_use"}))
    HarnessToolUseType.add_member(:mcp_tool_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP_TOOL_USE", traits: {"smithy.api#enumValue" => "mcp_tool_use"}))
    HarnessTools.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessTool, name: "member"))
    HttpHeadersMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpHeaderKey, name: "key"))
    HttpHeadersMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpHeaderValue, name: "value"))
    IgnoredReferenceInputFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IgnoredReferenceInputField, name: "member"))
    IngestDataInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    IngestDataInput.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentSource, name: "source", traits: {"smithy.api#required" => {}}))
    IngestDataInput.add_member(:content_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "contentTimestamp", traits: {"smithy.api#required" => {}}))
    IngestDataInput.add_member(:actor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorId, name: "actorId", traits: {"smithy.api#required" => {}}))
    IngestDataInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId"))
    IngestDataInput.add_member(:extraction_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtractionConfig, name: "extractionConfig"))
    IngestDataInput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataMap, name: "metadata"))
    IngestDataInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    IngestDataInput.type = Types::IngestDataInput
    IngestDataOutput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    IngestDataOutput.type = Types::IngestDataOutput
    IngestPayloadList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestPayloadType, name: "member"))
    IngestPayloadType.add_member(:conversational, Types::IngestPayloadType::Conversational, ::Smithy::Schema::Shapes::MemberShape.new(target: Conversational, name: "conversational"))
    IngestPayloadType.add_member(:json, Types::IngestPayloadType::Json, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryJsonData, name: "json"))
    IngestPayloadType.add_member(:unknown, Types::IngestPayloadType::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IngestPayloadType.type = Types::IngestPayloadType
    InlineGroundTruth.add_member(:assertions, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationContentList, name: "assertions"))
    InlineGroundTruth.add_member(:expected_trajectory, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationExpectedTrajectory, name: "expectedTrajectory"))
    InlineGroundTruth.add_member(:turns, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundTruthTurnList, name: "turns", traits: {"smithy.api#length" => {"min" => 1}}))
    InlineGroundTruth.type = Types::InlineGroundTruth
    InlineMemoryContent.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: IngestPayloadList, name: "payload", traits: {"smithy.api#required" => {}}))
    InlineMemoryContent.type = Types::InlineMemoryContent
    InputContentBlock.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLenString, name: "path", traits: {"smithy.api#required" => {}}))
    InputContentBlock.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLenString, name: "text"))
    InputContentBlock.add_member(:blob, ::Smithy::Schema::Shapes::MemberShape.new(target: Body, name: "blob"))
    InputContentBlock.type = Types::InputContentBlock
    InputContentBlockList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InputContentBlock, name: "member"))
    Insight.add_member(:insight_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightId, name: "insightId", traits: {"smithy.api#required" => {}}))
    Insight.type = Types::Insight
    InsightList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Insight, name: "member"))
    InsightsFailureCategory.add_member(:execution_error_authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_ERROR_AUTHENTICATION", traits: {"smithy.api#enumValue" => "execution-error-category-authentication"}))
    InsightsFailureCategory.add_member(:execution_error_resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_ERROR_RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "execution-error-category-resource-not-found"}))
    InsightsFailureCategory.add_member(:execution_error_service_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_ERROR_SERVICE_ERRORS", traits: {"smithy.api#enumValue" => "execution-error-category-service-errors"}))
    InsightsFailureCategory.add_member(:execution_error_rate_limiting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_ERROR_RATE_LIMITING", traits: {"smithy.api#enumValue" => "execution-error-category-rate-limiting"}))
    InsightsFailureCategory.add_member(:execution_error_formatting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_ERROR_FORMATTING", traits: {"smithy.api#enumValue" => "execution-error-category-formatting"}))
    InsightsFailureCategory.add_member(:execution_error_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_ERROR_TIMEOUT", traits: {"smithy.api#enumValue" => "execution-error-category-timeout"}))
    InsightsFailureCategory.add_member(:execution_error_resource_exhaustion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_ERROR_RESOURCE_EXHAUSTION", traits: {"smithy.api#enumValue" => "execution-error-category-resource-exhaustion"}))
    InsightsFailureCategory.add_member(:execution_error_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_ERROR_ENVIRONMENT", traits: {"smithy.api#enumValue" => "execution-error-category-environment"}))
    InsightsFailureCategory.add_member(:execution_error_tool_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTION_ERROR_TOOL_SCHEMA", traits: {"smithy.api#enumValue" => "execution-error-category-tool-schema"}))
    InsightsFailureCategory.add_member(:task_instruction_non_compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASK_INSTRUCTION_NON_COMPLIANCE", traits: {"smithy.api#enumValue" => "task-instruction-category-non-compliance"}))
    InsightsFailureCategory.add_member(:task_instruction_problem_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASK_INSTRUCTION_PROBLEM_ID", traits: {"smithy.api#enumValue" => "task-instruction-category-problem-id"}))
    InsightsFailureCategory.add_member(:incorrect_actions_tool_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCORRECT_ACTIONS_TOOL_SELECTION", traits: {"smithy.api#enumValue" => "incorrect-actions-category-tool-selection"}))
    InsightsFailureCategory.add_member(:incorrect_actions_poor_information_retrieval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCORRECT_ACTIONS_POOR_INFORMATION_RETRIEVAL", traits: {"smithy.api#enumValue" => "incorrect-actions-category-poor-information-retrieval"}))
    InsightsFailureCategory.add_member(:incorrect_actions_clarification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCORRECT_ACTIONS_CLARIFICATION", traits: {"smithy.api#enumValue" => "incorrect-actions-category-clarification"}))
    InsightsFailureCategory.add_member(:incorrect_actions_inappropriate_info_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCORRECT_ACTIONS_INAPPROPRIATE_INFO_REQUEST", traits: {"smithy.api#enumValue" => "incorrect-actions-category-inappropriate-info-request"}))
    InsightsFailureCategory.add_member(:context_handling_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTEXT_HANDLING_FAILURES", traits: {"smithy.api#enumValue" => "context-handling-error-category-context-handling-failures"}))
    InsightsFailureCategory.add_member(:hallucination_capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HALLUCINATION_CAPABILITIES", traits: {"smithy.api#enumValue" => "hallucination-category-hall-capabilities"}))
    InsightsFailureCategory.add_member(:hallucination_misunderstand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HALLUCINATION_MISUNDERSTAND", traits: {"smithy.api#enumValue" => "hallucination-category-hall-misunderstand"}))
    InsightsFailureCategory.add_member(:hallucination_usage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HALLUCINATION_USAGE", traits: {"smithy.api#enumValue" => "hallucination-category-hall-usage"}))
    InsightsFailureCategory.add_member(:hallucination_history, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HALLUCINATION_HISTORY", traits: {"smithy.api#enumValue" => "hallucination-category-hall-history"}))
    InsightsFailureCategory.add_member(:hallucination_params, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HALLUCINATION_PARAMS", traits: {"smithy.api#enumValue" => "hallucination-category-hall-params"}))
    InsightsFailureCategory.add_member(:hallucination_fabricate_tool_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HALLUCINATION_FABRICATE_TOOL_OUTPUTS", traits: {"smithy.api#enumValue" => "hallucination-category-fabricate-tool-outputs"}))
    InsightsFailureCategory.add_member(:repetitive_behavior_tool, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPETITIVE_BEHAVIOR_TOOL", traits: {"smithy.api#enumValue" => "repetitive-behavior-category-repetition-tool"}))
    InsightsFailureCategory.add_member(:repetitive_behavior_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPETITIVE_BEHAVIOR_INFO", traits: {"smithy.api#enumValue" => "repetitive-behavior-category-repetition-info"}))
    InsightsFailureCategory.add_member(:repetitive_behavior_step, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPETITIVE_BEHAVIOR_STEP", traits: {"smithy.api#enumValue" => "repetitive-behavior-category-step-repetition"}))
    InsightsFailureCategory.add_member(:orchestration_reasoning_mismatch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORCHESTRATION_REASONING_MISMATCH", traits: {"smithy.api#enumValue" => "orchestration-related-errors-category-reasoning-mismatch"}))
    InsightsFailureCategory.add_member(:orchestration_goal_deviation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORCHESTRATION_GOAL_DEVIATION", traits: {"smithy.api#enumValue" => "orchestration-related-errors-category-goal-deviation"}))
    InsightsFailureCategory.add_member(:orchestration_premature_termination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORCHESTRATION_PREMATURE_TERMINATION", traits: {"smithy.api#enumValue" => "orchestration-related-errors-category-premature-termination"}))
    InsightsFailureCategory.add_member(:orchestration_unaware_termination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORCHESTRATION_UNAWARE_TERMINATION", traits: {"smithy.api#enumValue" => "orchestration-related-errors-category-unaware-termination"}))
    InsightsFailureCategory.add_member(:llm_output_nonsensical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LLM_OUTPUT_NONSENSICAL", traits: {"smithy.api#enumValue" => "llm-output-category-nonsensical"}))
    InsightsFailureCategory.add_member(:configuration_mismatch_tool_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATION_MISMATCH_TOOL_DEFINITION", traits: {"smithy.api#enumValue" => "configuration-mismatch-category-tool-definition"}))
    InsightsFailureCategory.add_member(:coding_edge_case_oversights, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODING_EDGE_CASE_OVERSIGHTS", traits: {"smithy.api#enumValue" => "coding-use-case-specific-failure-types-category-edge-case-oversights"}))
    InsightsFailureCategory.add_member(:coding_dependency_issues, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODING_DEPENDENCY_ISSUES", traits: {"smithy.api#enumValue" => "coding-use-case-specific-failure-types-category-dependency-issues"}))
    InsightsFailureCategory.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))
    InsightsFailureSignal.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsFailureCategory, name: "category", traits: {"smithy.api#required" => {}}))
    InsightsFailureSignal.add_member(:evidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "evidence", traits: {"smithy.api#required" => {}}))
    InsightsFailureSignal.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "confidence", traits: {"smithy.api#required" => {}}))
    InsightsFailureSignal.type = Types::InsightsFailureSignal
    InsightsFailureSignalList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsFailureSignal, name: "member"))
    InstrumentBalanceToken.add_member(:usdc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USDC", traits: {"smithy.api#enumValue" => "USDC"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    InternalServerException.type = Types::InternalServerException
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InvalidInputException.type = Types::InvalidInputException
    InvokeAgentRuntimeCommandRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    InvokeAgentRuntimeCommandRequest.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "accept", traits: {"smithy.api#httpHeader" => "Accept"}))
    InvokeAgentRuntimeCommandRequest.add_member(:runtime_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "runtimeSessionId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id", "smithy.api#idempotencyToken" => {}}))
    InvokeAgentRuntimeCommandRequest.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceId", traits: {"smithy.api#httpHeader" => "X-Amzn-Trace-Id", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    InvokeAgentRuntimeCommandRequest.add_member(:trace_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceParent", traits: {"smithy.api#httpHeader" => "traceparent", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    InvokeAgentRuntimeCommandRequest.add_member(:trace_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceState", traits: {"smithy.api#httpHeader" => "tracestate", "smithy.api#length" => {"min" => 0, "max" => 512}}))
    InvokeAgentRuntimeCommandRequest.add_member(:baggage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "baggage", traits: {"smithy.api#httpHeader" => "baggage", "smithy.api#length" => {"min" => 0, "max" => 8192}}))
    InvokeAgentRuntimeCommandRequest.add_member(:agent_runtime_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentRuntimeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeAgentRuntimeCommandRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "qualifier", traits: {"smithy.api#httpQuery" => "qualifier"}))
    InvokeAgentRuntimeCommandRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId", traits: {"smithy.api#httpQuery" => "accountId", "smithy.api#pattern" => "^[0-9]{12}$"}))
    InvokeAgentRuntimeCommandRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeAgentRuntimeCommandRequestBody, name: "body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeAgentRuntimeCommandRequest[:http_payload] = :body
    InvokeAgentRuntimeCommandRequest[:http_payload_member] = InvokeAgentRuntimeCommandRequest.member(:body)
    InvokeAgentRuntimeCommandRequest.type = Types::InvokeAgentRuntimeCommandRequest
    InvokeAgentRuntimeCommandRequestBody.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "command", traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#required" => {}}))
    InvokeAgentRuntimeCommandRequestBody.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "timeout"))
    InvokeAgentRuntimeCommandRequestBody.type = Types::InvokeAgentRuntimeCommandRequestBody
    InvokeAgentRuntimeCommandResponse.add_member(:runtime_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "runtimeSessionId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"}))
    InvokeAgentRuntimeCommandResponse.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceId", traits: {"smithy.api#httpHeader" => "X-Amzn-Trace-Id"}))
    InvokeAgentRuntimeCommandResponse.add_member(:trace_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceParent", traits: {"smithy.api#httpHeader" => "traceparent"}))
    InvokeAgentRuntimeCommandResponse.add_member(:trace_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceState", traits: {"smithy.api#httpHeader" => "tracestate"}))
    InvokeAgentRuntimeCommandResponse.add_member(:baggage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "baggage", traits: {"smithy.api#httpHeader" => "baggage"}))
    InvokeAgentRuntimeCommandResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type", "smithy.api#required" => {}}))
    InvokeAgentRuntimeCommandResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpResponseCode, name: "statusCode", traits: {"smithy.api#httpResponseCode" => {}}))
    InvokeAgentRuntimeCommandResponse.add_member(:stream, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeAgentRuntimeCommandStreamOutput, name: "stream", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeAgentRuntimeCommandResponse[:http_payload] = :stream
    InvokeAgentRuntimeCommandResponse[:http_payload_member] = InvokeAgentRuntimeCommandResponse.member(:stream)
    InvokeAgentRuntimeCommandResponse.type = Types::InvokeAgentRuntimeCommandResponse
    InvokeAgentRuntimeCommandStreamOutput.add_member(:chunk, Types::InvokeAgentRuntimeCommandStreamOutput::Chunk, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseChunk, name: "chunk"))
    InvokeAgentRuntimeCommandStreamOutput.add_member(:access_denied_exception, Types::InvokeAgentRuntimeCommandStreamOutput::AccessDeniedException, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedException, name: "accessDeniedException"))
    InvokeAgentRuntimeCommandStreamOutput.add_member(:internal_server_exception, Types::InvokeAgentRuntimeCommandStreamOutput::InternalServerException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerException, name: "internalServerException"))
    InvokeAgentRuntimeCommandStreamOutput.add_member(:resource_not_found_exception, Types::InvokeAgentRuntimeCommandStreamOutput::ResourceNotFoundException, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundException, name: "resourceNotFoundException"))
    InvokeAgentRuntimeCommandStreamOutput.add_member(:service_quota_exceeded_exception, Types::InvokeAgentRuntimeCommandStreamOutput::ServiceQuotaExceededException, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceQuotaExceededException, name: "serviceQuotaExceededException"))
    InvokeAgentRuntimeCommandStreamOutput.add_member(:throttling_exception, Types::InvokeAgentRuntimeCommandStreamOutput::ThrottlingException, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingException, name: "throttlingException"))
    InvokeAgentRuntimeCommandStreamOutput.add_member(:validation_exception, Types::InvokeAgentRuntimeCommandStreamOutput::ValidationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationException, name: "validationException"))
    InvokeAgentRuntimeCommandStreamOutput.add_member(:runtime_client_error, Types::InvokeAgentRuntimeCommandStreamOutput::RuntimeClientError, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeClientError, name: "runtimeClientError"))
    InvokeAgentRuntimeCommandStreamOutput.add_member(:unknown, Types::InvokeAgentRuntimeCommandStreamOutput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    InvokeAgentRuntimeCommandStreamOutput.type = Types::InvokeAgentRuntimeCommandStreamOutput
    InvokeAgentRuntimeRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    InvokeAgentRuntimeRequest.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: MimeType, name: "accept", traits: {"smithy.api#httpHeader" => "Accept"}))
    InvokeAgentRuntimeRequest.add_member(:mcp_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "mcpSessionId", traits: {"smithy.api#httpHeader" => "Mcp-Session-Id"}))
    InvokeAgentRuntimeRequest.add_member(:runtime_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "runtimeSessionId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id", "smithy.api#idempotencyToken" => {}}))
    InvokeAgentRuntimeRequest.add_member(:mcp_protocol_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "mcpProtocolVersion", traits: {"smithy.api#httpHeader" => "Mcp-Protocol-Version"}))
    InvokeAgentRuntimeRequest.add_member(:mcp_method, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "mcpMethod", traits: {"smithy.api#httpHeader" => "Mcp-Method"}))
    InvokeAgentRuntimeRequest.add_member(:mcp_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "mcpName", traits: {"smithy.api#httpHeader" => "Mcp-Name"}))
    InvokeAgentRuntimeRequest.add_member(:runtime_user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StringType, name: "runtimeUserId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Runtime-User-Id"}))
    InvokeAgentRuntimeRequest.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceId", traits: {"smithy.api#httpHeader" => "X-Amzn-Trace-Id", "smithy.api#length" => {"min" => 0, "max" => 128}}))
    InvokeAgentRuntimeRequest.add_member(:trace_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceParent", traits: {"smithy.api#httpHeader" => "traceparent", "smithy.api#length" => {"min" => 0, "max" => 128}}))
    InvokeAgentRuntimeRequest.add_member(:trace_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceState", traits: {"smithy.api#httpHeader" => "tracestate", "smithy.api#length" => {"min" => 0, "max" => 512}}))
    InvokeAgentRuntimeRequest.add_member(:baggage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "baggage", traits: {"smithy.api#httpHeader" => "baggage", "smithy.api#length" => {"min" => 0, "max" => 8192}}))
    InvokeAgentRuntimeRequest.add_member(:agent_runtime_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentRuntimeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeAgentRuntimeRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "qualifier", traits: {"smithy.api#httpQuery" => "qualifier"}))
    InvokeAgentRuntimeRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountId", traits: {"smithy.api#httpQuery" => "accountId", "smithy.api#pattern" => "^[0-9]{12}$"}))
    InvokeAgentRuntimeRequest.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Body, name: "payload", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeAgentRuntimeRequest[:http_payload] = :payload
    InvokeAgentRuntimeRequest[:http_payload_member] = InvokeAgentRuntimeRequest.member(:payload)
    InvokeAgentRuntimeRequest.type = Types::InvokeAgentRuntimeRequest
    InvokeAgentRuntimeResponse.add_member(:runtime_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "runtimeSessionId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"}))
    InvokeAgentRuntimeResponse.add_member(:mcp_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "mcpSessionId", traits: {"smithy.api#httpHeader" => "Mcp-Session-Id"}))
    InvokeAgentRuntimeResponse.add_member(:mcp_protocol_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "mcpProtocolVersion", traits: {"smithy.api#httpHeader" => "Mcp-Protocol-Version"}))
    InvokeAgentRuntimeResponse.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceId", traits: {"smithy.api#httpHeader" => "X-Amzn-Trace-Id"}))
    InvokeAgentRuntimeResponse.add_member(:trace_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceParent", traits: {"smithy.api#httpHeader" => "traceparent"}))
    InvokeAgentRuntimeResponse.add_member(:trace_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceState", traits: {"smithy.api#httpHeader" => "tracestate"}))
    InvokeAgentRuntimeResponse.add_member(:baggage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "baggage", traits: {"smithy.api#httpHeader" => "baggage"}))
    InvokeAgentRuntimeResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type", "smithy.api#required" => {}}))
    InvokeAgentRuntimeResponse.add_member(:response, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseStream, name: "response", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    InvokeAgentRuntimeResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpResponseCode, name: "statusCode", traits: {"smithy.api#httpResponseCode" => {}}))
    InvokeAgentRuntimeResponse[:http_payload] = :response
    InvokeAgentRuntimeResponse[:http_payload_member] = InvokeAgentRuntimeResponse.member(:response)
    InvokeAgentRuntimeResponse.type = Types::InvokeAgentRuntimeResponse
    InvokeBrowserRequest.add_member(:browser_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "browserIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeBrowserRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionId, name: "sessionId", traits: {"smithy.api#httpHeader" => "x-amzn-browser-session-id", "smithy.api#required" => {}}))
    InvokeBrowserRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserAction, name: "action", traits: {"smithy.api#required" => {}}))
    InvokeBrowserRequest.type = Types::InvokeBrowserRequest
    InvokeBrowserResponse.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserActionResult, name: "result", traits: {"smithy.api#required" => {}}))
    InvokeBrowserResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionId, name: "sessionId", traits: {"smithy.api#httpHeader" => "x-amzn-browser-session-id", "smithy.api#required" => {}}))
    InvokeBrowserResponse.type = Types::InvokeBrowserResponse
    InvokeCodeInterpreterRequest.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeInterpreterIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeCodeInterpreterRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterSessionId, name: "sessionId", traits: {"smithy.api#httpHeader" => "x-amzn-code-interpreter-session-id"}))
    InvokeCodeInterpreterRequest.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceId", traits: {"smithy.api#httpHeader" => "X-Amzn-Trace-Id", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    InvokeCodeInterpreterRequest.add_member(:trace_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceParent", traits: {"smithy.api#httpHeader" => "traceparent", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    InvokeCodeInterpreterRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolName, name: "name", traits: {"smithy.api#required" => {}}))
    InvokeCodeInterpreterRequest.add_member(:arguments, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolArguments, name: "arguments"))
    InvokeCodeInterpreterRequest.type = Types::InvokeCodeInterpreterRequest
    InvokeCodeInterpreterResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterSessionId, name: "sessionId", traits: {"smithy.api#httpHeader" => "x-amzn-code-interpreter-session-id"}))
    InvokeCodeInterpreterResponse.add_member(:stream, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterStreamOutput, name: "stream", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeCodeInterpreterResponse[:http_payload] = :stream
    InvokeCodeInterpreterResponse[:http_payload_member] = InvokeCodeInterpreterResponse.member(:stream)
    InvokeCodeInterpreterResponse.type = Types::InvokeCodeInterpreterResponse
    InvokeHarnessRequest.add_member(:harness_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessArn, name: "harnessArn", traits: {"smithy.api#httpQuery" => "harnessArn", "smithy.api#required" => {}}))
    InvokeHarnessRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessEndpointName, name: "qualifier", traits: {"smithy.api#httpQuery" => "qualifier"}))
    InvokeHarnessRequest.add_member(:runtime_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "runtimeSessionId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id", "smithy.api#length" => {"min" => 33, "max" => 100}, "smithy.api#required" => {}}))
    InvokeHarnessRequest.add_member(:runtime_user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "runtimeUserId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Runtime-User-Id"}))
    InvokeHarnessRequest.add_member(:trace_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceParent", traits: {"smithy.api#httpHeader" => "traceparent", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    InvokeHarnessRequest.add_member(:trace_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceState", traits: {"smithy.api#httpHeader" => "tracestate", "smithy.api#length" => {"min" => 0, "max" => 512}}))
    InvokeHarnessRequest.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceId", traits: {"smithy.api#httpHeader" => "X-Amzn-Trace-Id", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    InvokeHarnessRequest.add_member(:baggage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "baggage", traits: {"smithy.api#httpHeader" => "baggage", "smithy.api#length" => {"min" => 0, "max" => 8192}}))
    InvokeHarnessRequest.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessMessages, name: "messages", traits: {"smithy.api#required" => {}}))
    InvokeHarnessRequest.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessModelConfiguration, name: "model"))
    InvokeHarnessRequest.add_member(:system_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessSystemPrompt, name: "systemPrompt"))
    InvokeHarnessRequest.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessTools, name: "tools"))
    InvokeHarnessRequest.add_member(:skills, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessSkills, name: "skills"))
    InvokeHarnessRequest.add_member(:allowed_tools, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessAllowedTools, name: "allowedTools"))
    InvokeHarnessRequest.add_member(:max_iterations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxIterations"))
    InvokeHarnessRequest.add_member(:max_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxTokens"))
    InvokeHarnessRequest.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "timeoutSeconds"))
    InvokeHarnessRequest.add_member(:actor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "actorId"))
    InvokeHarnessRequest.type = Types::InvokeHarnessRequest
    InvokeHarnessResponse.add_member(:stream, ::Smithy::Schema::Shapes::MemberShape.new(target: InvokeHarnessStreamOutput, name: "stream", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    InvokeHarnessResponse[:http_payload] = :stream
    InvokeHarnessResponse[:http_payload_member] = InvokeHarnessResponse.member(:stream)
    InvokeHarnessResponse.type = Types::InvokeHarnessResponse
    InvokeHarnessStreamOutput.add_member(:message_start, Types::InvokeHarnessStreamOutput::MessageStart, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessMessageStartEvent, name: "messageStart"))
    InvokeHarnessStreamOutput.add_member(:content_block_start, Types::InvokeHarnessStreamOutput::ContentBlockStart, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessContentBlockStartEvent, name: "contentBlockStart"))
    InvokeHarnessStreamOutput.add_member(:content_block_delta, Types::InvokeHarnessStreamOutput::ContentBlockDelta, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessContentBlockDeltaEvent, name: "contentBlockDelta"))
    InvokeHarnessStreamOutput.add_member(:content_block_stop, Types::InvokeHarnessStreamOutput::ContentBlockStop, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessContentBlockStopEvent, name: "contentBlockStop"))
    InvokeHarnessStreamOutput.add_member(:message_stop, Types::InvokeHarnessStreamOutput::MessageStop, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessMessageStopEvent, name: "messageStop"))
    InvokeHarnessStreamOutput.add_member(:metadata, Types::InvokeHarnessStreamOutput::Metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessMetadataEvent, name: "metadata"))
    InvokeHarnessStreamOutput.add_member(:internal_server_exception, Types::InvokeHarnessStreamOutput::InternalServerException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerException, name: "internalServerException"))
    InvokeHarnessStreamOutput.add_member(:validation_exception, Types::InvokeHarnessStreamOutput::ValidationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationException, name: "validationException"))
    InvokeHarnessStreamOutput.add_member(:runtime_client_error, Types::InvokeHarnessStreamOutput::RuntimeClientError, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeClientError, name: "runtimeClientError"))
    InvokeHarnessStreamOutput.add_member(:hook_event, Types::InvokeHarnessStreamOutput::HookEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: HarnessHookEvent, name: "hookEvent"))
    InvokeHarnessStreamOutput.add_member(:unknown, Types::InvokeHarnessStreamOutput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    InvokeHarnessStreamOutput.type = Types::InvokeHarnessStreamOutput
    KeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    KeyPressArguments.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#required" => {}}))
    KeyPressArguments.add_member(:presses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "presses", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    KeyPressArguments.type = Types::KeyPressArguments
    KeyPressResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserActionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    KeyPressResult.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "error"))
    KeyPressResult.type = Types::KeyPressResult
    KeyShortcutArguments.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyList, name: "keys", traits: {"smithy.api#required" => {}}))
    KeyShortcutArguments.type = Types::KeyShortcutArguments
    KeyShortcutResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserActionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    KeyShortcutResult.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "error"))
    KeyShortcutResult.type = Types::KeyShortcutResult
    KeyTypeArguments.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text", traits: {"smithy.api#length" => {"max" => 10000}, "smithy.api#required" => {}}))
    KeyTypeArguments.type = Types::KeyTypeArguments
    KeyTypeResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserActionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    KeyTypeResult.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "error"))
    KeyTypeResult.type = Types::KeyTypeResult
    LanguageRuntime.add_member(:nodejs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NODEJS", traits: {"smithy.api#enumValue" => "nodejs"}))
    LanguageRuntime.add_member(:deno, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENO", traits: {"smithy.api#enumValue" => "deno"}))
    LanguageRuntime.add_member(:python, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PYTHON", traits: {"smithy.api#enumValue" => "python"}))
    LeftExpression.add_member(:metadata_key, Types::LeftExpression::MetadataKey, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataKey, name: "metadataKey"))
    LeftExpression.add_member(:unknown, Types::LeftExpression::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    LeftExpression.type = Types::LeftExpression
    LinkedAccount.add_member(:email, Types::LinkedAccount::Email, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedAccountEmail, name: "email"))
    LinkedAccount.add_member(:sms, Types::LinkedAccount::Sms, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedAccountSms, name: "sms"))
    LinkedAccount.add_member(:developer_jwt, Types::LinkedAccount::DeveloperJwt, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedAccountDeveloperJwt, name: "developerJwt"))
    LinkedAccount.add_member(:o_auth2, Types::LinkedAccount::OAuth2, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedAccountOAuth2, name: "oAuth2"))
    LinkedAccount.add_member(:unknown, Types::LinkedAccount::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    LinkedAccount.type = Types::LinkedAccount
    LinkedAccountDeveloperJwt.add_member(:kid, ::Smithy::Schema::Shapes::MemberShape.new(target: JwtKeyId, name: "kid", traits: {"smithy.api#required" => {}}))
    LinkedAccountDeveloperJwt.add_member(:sub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sub", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    LinkedAccountDeveloperJwt.type = Types::LinkedAccountDeveloperJwt
    LinkedAccountEmail.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "emailAddress", traits: {"smithy.api#required" => {}}))
    LinkedAccountEmail.type = Types::LinkedAccountEmail
    LinkedAccountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedAccount, name: "member"))
    LinkedAccountOAuth2.add_member(:google, Types::LinkedAccountOAuth2::Google, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2Authentication, name: "google"))
    LinkedAccountOAuth2.add_member(:apple, Types::LinkedAccountOAuth2::Apple, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2Authentication, name: "apple"))
    LinkedAccountOAuth2.add_member(:x, Types::LinkedAccountOAuth2::X, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2Authentication, name: "x"))
    LinkedAccountOAuth2.add_member(:telegram, Types::LinkedAccountOAuth2::Telegram, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2Authentication, name: "telegram"))
    LinkedAccountOAuth2.add_member(:github, Types::LinkedAccountOAuth2::Github, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuth2Authentication, name: "github"))
    LinkedAccountOAuth2.add_member(:unknown, Types::LinkedAccountOAuth2::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    LinkedAccountOAuth2.type = Types::LinkedAccountOAuth2
    LinkedAccountSms.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "phoneNumber", traits: {"smithy.api#required" => {}}))
    LinkedAccountSms.type = Types::LinkedAccountSms
    ListABTestsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListABTestsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListABTestsRequest.type = Types::ListABTestsRequest
    ListABTestsResponse.add_member(:ab_tests, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestSummaryList, name: "abTests", traits: {"smithy.api#required" => {}}))
    ListABTestsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListABTestsResponse.type = Types::ListABTestsResponse
    ListActorsInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListActorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100}))
    ListActorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListActorsInput.type = Types::ListActorsInput
    ListActorsOutput.add_member(:actor_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorSummaryList, name: "actorSummaries", traits: {"smithy.api#required" => {}}))
    ListActorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListActorsOutput.type = Types::ListActorsOutput
    ListBatchEvaluationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListBatchEvaluationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBatchEvaluationsRequest.type = Types::ListBatchEvaluationsRequest
    ListBatchEvaluationsResponse.add_member(:batch_evaluations, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationSummaryList, name: "batchEvaluations", traits: {"smithy.api#required" => {}}))
    ListBatchEvaluationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListBatchEvaluationsResponse.type = Types::ListBatchEvaluationsResponse
    ListBrowserSessionsRequest.add_member(:browser_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "browserIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBrowserSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListBrowserSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBrowserSessionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionStatus, name: "status"))
    ListBrowserSessionsRequest.type = Types::ListBrowserSessionsRequest
    ListBrowserSessionsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionSummaries, name: "items", traits: {"smithy.api#required" => {}}))
    ListBrowserSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBrowserSessionsResponse.type = Types::ListBrowserSessionsResponse
    ListCodeInterpreterSessionsRequest.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeInterpreterIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCodeInterpreterSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListCodeInterpreterSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCodeInterpreterSessionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterSessionStatus, name: "status"))
    ListCodeInterpreterSessionsRequest.type = Types::ListCodeInterpreterSessionsRequest
    ListCodeInterpreterSessionsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterSessionSummaries, name: "items", traits: {"smithy.api#required" => {}}))
    ListCodeInterpreterSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCodeInterpreterSessionsResponse.type = Types::ListCodeInterpreterSessionsResponse
    ListEventsInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEventsInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEventsInput.add_member(:actor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorId, name: "actorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEventsInput.add_member(:include_payloads, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includePayloads", traits: {"smithy.api#default" => true}))
    ListEventsInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterInput, name: "filter"))
    ListEventsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100}))
    ListEventsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListEventsInput.type = Types::ListEventsInput
    ListEventsOutput.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventList, name: "events", traits: {"smithy.api#required" => {}}))
    ListEventsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListEventsOutput.type = Types::ListEventsOutput
    ListMemoryExtractionJobsInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMemoryExtractionJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 20, "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListMemoryExtractionJobsInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtractionJobFilterInput, name: "filter"))
    ListMemoryExtractionJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListMemoryExtractionJobsInput.type = Types::ListMemoryExtractionJobsInput
    ListMemoryExtractionJobsOutput.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtractionJobMetadataList, name: "jobs", traits: {"smithy.api#required" => {}}))
    ListMemoryExtractionJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListMemoryExtractionJobsOutput.type = Types::ListMemoryExtractionJobsOutput
    ListMemoryRecordsInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMemoryRecordsInput.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "namespace"))
    ListMemoryRecordsInput.add_member(:namespace_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "namespacePath"))
    ListMemoryRecordsInput.add_member(:memory_strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryStrategyId, name: "memoryStrategyId"))
    ListMemoryRecordsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100}))
    ListMemoryRecordsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListMemoryRecordsInput.add_member(:metadata_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryMetadataFilterList, name: "metadataFilters"))
    ListMemoryRecordsInput.type = Types::ListMemoryRecordsInput
    ListMemoryRecordsOutput.add_member(:memory_record_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordSummaryList, name: "memoryRecordSummaries", traits: {"smithy.api#required" => {}}))
    ListMemoryRecordsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListMemoryRecordsOutput.type = Types::ListMemoryRecordsOutput
    ListPaymentInstrumentsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}))
    ListPaymentInstrumentsRequest.add_member(:agent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentAgentName, name: "agentName", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"}))
    ListPaymentInstrumentsRequest.add_member(:payment_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentManagerArn, name: "paymentManagerArn", traits: {"smithy.api#required" => {}}))
    ListPaymentInstrumentsRequest.add_member(:payment_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentConnectorId, name: "paymentConnectorId"))
    ListPaymentInstrumentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPaymentInstrumentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults"))
    ListPaymentInstrumentsRequest.type = Types::ListPaymentInstrumentsRequest
    ListPaymentInstrumentsResponse.add_member(:payment_instruments, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentSummaryList, name: "paymentInstruments", traits: {"smithy.api#required" => {}}))
    ListPaymentInstrumentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListPaymentInstrumentsResponse.type = Types::ListPaymentInstrumentsResponse
    ListPaymentSessionsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}))
    ListPaymentSessionsRequest.add_member(:agent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentAgentName, name: "agentName", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"}))
    ListPaymentSessionsRequest.add_member(:payment_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentManagerArn, name: "paymentManagerArn", traits: {"smithy.api#required" => {}}))
    ListPaymentSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPaymentSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults"))
    ListPaymentSessionsRequest.type = Types::ListPaymentSessionsRequest
    ListPaymentSessionsResponse.add_member(:payment_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentSessionSummaryList, name: "paymentSessions", traits: {"smithy.api#required" => {}}))
    ListPaymentSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPaymentSessionsResponse.type = Types::ListPaymentSessionsResponse
    ListRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRecommendationsRequest.add_member(:status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, name: "statusFilter", traits: {"smithy.api#httpQuery" => "status"}))
    ListRecommendationsRequest.type = Types::ListRecommendationsRequest
    ListRecommendationsResponse.add_member(:recommendation_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSummaryList, name: "recommendationSummaries", traits: {"smithy.api#required" => {}}))
    ListRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRecommendationsResponse.type = Types::ListRecommendationsResponse
    ListSessionsInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsInput.add_member(:actor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorId, name: "actorId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100}))
    ListSessionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSessionsInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionFilter, name: "filter"))
    ListSessionsInput.type = Types::ListSessionsInput
    ListSessionsOutput.add_member(:session_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummaryList, name: "sessionSummaries", traits: {"smithy.api#required" => {}}))
    ListSessionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSessionsOutput.type = Types::ListSessionsOutput
    LiveViewStream.add_member(:stream_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserStreamEndpoint, name: "streamEndpoint"))
    LiveViewStream.type = Types::LiveViewStream
    LogGroupArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    LogGroupNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, name: "member"))
    LogGroupNamePrefixList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupNamePrefix, name: "member"))
    McpDescriptor.add_member(:server, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerDefinition, name: "server", traits: {"smithy.api#required" => {}}))
    McpDescriptor.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolsDefinition, name: "tools", traits: {"smithy.api#required" => {}}))
    McpDescriptor.type = Types::McpDescriptor
    MemoryContent.add_member(:text, Types::MemoryContent::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "text", traits: {"smithy.api#length" => {"min" => 1, "max" => 16000}}))
    MemoryContent.add_member(:unknown, Types::MemoryContent::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MemoryContent.type = Types::MemoryContent
    MemoryJsonData.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryJsonDataContent, name: "content", traits: {"smithy.api#required" => {}}))
    MemoryJsonData.type = Types::MemoryJsonData
    MemoryMetadataFilterExpression.add_member(:left, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordLeftExpression, name: "left", traits: {"smithy.api#required" => {}}))
    MemoryMetadataFilterExpression.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordOperatorType, name: "operator", traits: {"smithy.api#required" => {}}))
    MemoryMetadataFilterExpression.add_member(:right, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordRightExpression, name: "right"))
    MemoryMetadataFilterExpression.type = Types::MemoryMetadataFilterExpression
    MemoryMetadataFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryMetadataFilterExpression, name: "member"))
    MemoryRecord.add_member(:memory_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordId, name: "memoryRecordId", traits: {"smithy.api#required" => {}}))
    MemoryRecord.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryContent, name: "content", traits: {"smithy.api#required" => {}}))
    MemoryRecord.add_member(:memory_strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryStrategyId, name: "memoryStrategyId", traits: {"smithy.api#required" => {}}))
    MemoryRecord.add_member(:namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacesList, name: "namespaces", traits: {"smithy.api#required" => {}}))
    MemoryRecord.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    MemoryRecord.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp"))
    MemoryRecord.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordMetadataMap, name: "metadata"))
    MemoryRecord.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "expiresAt"))
    MemoryRecord.type = Types::MemoryRecord
    MemoryRecordCreateInput.add_member(:request_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestIdentifier, name: "requestIdentifier", traits: {"smithy.api#required" => {}}))
    MemoryRecordCreateInput.add_member(:namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacesList, name: "namespaces", traits: {"smithy.api#required" => {}}))
    MemoryRecordCreateInput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryContent, name: "content", traits: {"smithy.api#required" => {}}))
    MemoryRecordCreateInput.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    MemoryRecordCreateInput.add_member(:memory_strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryStrategyId, name: "memoryStrategyId"))
    MemoryRecordCreateInput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordMetadataMap, name: "metadata"))
    MemoryRecordCreateInput.type = Types::MemoryRecordCreateInput
    MemoryRecordDeleteInput.add_member(:memory_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordId, name: "memoryRecordId", traits: {"smithy.api#required" => {}}))
    MemoryRecordDeleteInput.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "namespace"))
    MemoryRecordDeleteInput.type = Types::MemoryRecordDeleteInput
    MemoryRecordLeftExpression.add_member(:metadata_key, Types::MemoryRecordLeftExpression::MetadataKey, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataKey, name: "metadataKey"))
    MemoryRecordLeftExpression.add_member(:unknown, Types::MemoryRecordLeftExpression::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MemoryRecordLeftExpression.type = Types::MemoryRecordLeftExpression
    MemoryRecordMetadataMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataKey, name: "key"))
    MemoryRecordMetadataMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordMetadataValue, name: "value"))
    MemoryRecordMetadataValue.add_member(:string_value, Types::MemoryRecordMetadataValue::StringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValue, name: "stringValue"))
    MemoryRecordMetadataValue.add_member(:string_list_value, Types::MemoryRecordMetadataValue::StringListValue, ::Smithy::Schema::Shapes::MemberShape.new(target: StringValueList, name: "stringListValue"))
    MemoryRecordMetadataValue.add_member(:number_value, Types::MemoryRecordMetadataValue::NumberValue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "numberValue"))
    MemoryRecordMetadataValue.add_member(:date_time_value, Types::MemoryRecordMetadataValue::DateTimeValue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "dateTimeValue"))
    MemoryRecordMetadataValue.add_member(:unknown, Types::MemoryRecordMetadataValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MemoryRecordMetadataValue.type = Types::MemoryRecordMetadataValue
    MemoryRecordOperatorType.add_member(:equals_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS_TO", traits: {"smithy.api#enumValue" => "EQUALS_TO"}))
    MemoryRecordOperatorType.add_member(:exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXISTS", traits: {"smithy.api#enumValue" => "EXISTS"}))
    MemoryRecordOperatorType.add_member(:not_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EXISTS", traits: {"smithy.api#enumValue" => "NOT_EXISTS"}))
    MemoryRecordOperatorType.add_member(:before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE", traits: {"smithy.api#enumValue" => "BEFORE"}))
    MemoryRecordOperatorType.add_member(:after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER", traits: {"smithy.api#enumValue" => "AFTER"}))
    MemoryRecordOperatorType.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    MemoryRecordOperatorType.add_member(:greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN", traits: {"smithy.api#enumValue" => "GREATER_THAN"}))
    MemoryRecordOperatorType.add_member(:greater_than_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GREATER_THAN_OR_EQUALS", traits: {"smithy.api#enumValue" => "GREATER_THAN_OR_EQUALS"}))
    MemoryRecordOperatorType.add_member(:less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN", traits: {"smithy.api#enumValue" => "LESS_THAN"}))
    MemoryRecordOperatorType.add_member(:less_than_or_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LESS_THAN_OR_EQUALS", traits: {"smithy.api#enumValue" => "LESS_THAN_OR_EQUALS"}))
    MemoryRecordOutput.add_member(:memory_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordId, name: "memoryRecordId", traits: {"smithy.api#required" => {}}))
    MemoryRecordOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordStatus, name: "status", traits: {"smithy.api#required" => {}}))
    MemoryRecordOutput.add_member(:request_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestIdentifier, name: "requestIdentifier"))
    MemoryRecordOutput.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "errorCode"))
    MemoryRecordOutput.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    MemoryRecordOutput.type = Types::MemoryRecordOutput
    MemoryRecordRightExpression.add_member(:metadata_value, Types::MemoryRecordRightExpression::MetadataValue, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordMetadataValue, name: "metadataValue"))
    MemoryRecordRightExpression.add_member(:unknown, Types::MemoryRecordRightExpression::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MemoryRecordRightExpression.type = Types::MemoryRecordRightExpression
    MemoryRecordStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    MemoryRecordStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    MemoryRecordSummary.add_member(:memory_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordId, name: "memoryRecordId", traits: {"smithy.api#required" => {}}))
    MemoryRecordSummary.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryContent, name: "content", traits: {"smithy.api#required" => {}}))
    MemoryRecordSummary.add_member(:memory_strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryStrategyId, name: "memoryStrategyId", traits: {"smithy.api#required" => {}}))
    MemoryRecordSummary.add_member(:namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacesList, name: "namespaces", traits: {"smithy.api#required" => {}}))
    MemoryRecordSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    MemoryRecordSummary.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "score"))
    MemoryRecordSummary.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp"))
    MemoryRecordSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordMetadataMap, name: "metadata"))
    MemoryRecordSummary.type = Types::MemoryRecordSummary
    MemoryRecordSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordSummary, name: "member"))
    MemoryRecordUpdateInput.add_member(:memory_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordId, name: "memoryRecordId", traits: {"smithy.api#required" => {}}))
    MemoryRecordUpdateInput.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp", traits: {"smithy.api#required" => {}}))
    MemoryRecordUpdateInput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryContent, name: "content"))
    MemoryRecordUpdateInput.add_member(:namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacesList, name: "namespaces"))
    MemoryRecordUpdateInput.add_member(:source_namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespacesList, name: "sourceNamespaces"))
    MemoryRecordUpdateInput.add_member(:memory_strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryStrategyId, name: "memoryStrategyId"))
    MemoryRecordUpdateInput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordMetadataMap, name: "metadata"))
    MemoryRecordUpdateInput.type = Types::MemoryRecordUpdateInput
    MemoryRecordsCreateInputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordCreateInput, name: "member"))
    MemoryRecordsDeleteInputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordDeleteInput, name: "member"))
    MemoryRecordsOutputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordOutput, name: "member"))
    MemoryRecordsUpdateInputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordUpdateInput, name: "member"))
    MessageMetadata.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eventId", traits: {"smithy.api#required" => {}}))
    MessageMetadata.add_member(:message_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "messageIndex", traits: {"smithy.api#required" => {}}))
    MessageMetadata.type = Types::MessageMetadata
    MessagesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageMetadata, name: "member"))
    MetadataMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataKey, name: "key"))
    MetadataMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataValue, name: "value"))
    MetadataValue.add_member(:string_value, Types::MetadataValue::StringValue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stringValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"}))
    MetadataValue.add_member(:unknown, Types::MetadataValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MetadataValue.type = Types::MetadataValue
    MouseButton.add_member(:left, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEFT", traits: {"smithy.api#enumValue" => "LEFT"}))
    MouseButton.add_member(:right, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RIGHT", traits: {"smithy.api#enumValue" => "RIGHT"}))
    MouseButton.add_member(:middle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MIDDLE", traits: {"smithy.api#enumValue" => "MIDDLE"}))
    MouseClickArguments.add_member(:x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "x", traits: {"smithy.api#required" => {}}))
    MouseClickArguments.add_member(:y, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "y", traits: {"smithy.api#required" => {}}))
    MouseClickArguments.add_member(:button, ::Smithy::Schema::Shapes::MemberShape.new(target: MouseButton, name: "button"))
    MouseClickArguments.add_member(:click_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "clickCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}}))
    MouseClickArguments.type = Types::MouseClickArguments
    MouseClickResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserActionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    MouseClickResult.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "error"))
    MouseClickResult.type = Types::MouseClickResult
    MouseDragArguments.add_member(:end_x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "endX", traits: {"smithy.api#required" => {}}))
    MouseDragArguments.add_member(:end_y, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "endY", traits: {"smithy.api#required" => {}}))
    MouseDragArguments.add_member(:start_x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "startX", traits: {"smithy.api#required" => {}}))
    MouseDragArguments.add_member(:start_y, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "startY", traits: {"smithy.api#required" => {}}))
    MouseDragArguments.add_member(:button, ::Smithy::Schema::Shapes::MemberShape.new(target: MouseButton, name: "button"))
    MouseDragArguments.type = Types::MouseDragArguments
    MouseDragResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserActionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    MouseDragResult.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "error"))
    MouseDragResult.type = Types::MouseDragResult
    MouseMoveArguments.add_member(:x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "x", traits: {"smithy.api#required" => {}}))
    MouseMoveArguments.add_member(:y, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "y", traits: {"smithy.api#required" => {}}))
    MouseMoveArguments.type = Types::MouseMoveArguments
    MouseMoveResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserActionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    MouseMoveResult.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "error"))
    MouseMoveResult.type = Types::MouseMoveResult
    MouseScrollArguments.add_member(:x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "x", traits: {"smithy.api#required" => {}}))
    MouseScrollArguments.add_member(:y, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "y", traits: {"smithy.api#required" => {}}))
    MouseScrollArguments.add_member(:delta_x, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "deltaX", traits: {"smithy.api#range" => {"min" => -1000, "max" => 1000}}))
    MouseScrollArguments.add_member(:delta_y, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "deltaY", traits: {"smithy.api#range" => {"min" => -1000, "max" => 1000}}))
    MouseScrollArguments.type = Types::MouseScrollArguments
    MouseScrollResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserActionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    MouseScrollResult.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "error"))
    MouseScrollResult.type = Types::MouseScrollResult
    MppPaymentInput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version", traits: {"smithy.api#required" => {}}))
    MppPaymentInput.add_member(:www_authenticate_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: WwwAuthenticateHeaderList, name: "wwwAuthenticateHeaders", traits: {"smithy.api#required" => {}}))
    MppPaymentInput.add_member(:buyer_pays_gas_fees, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "buyerPaysGasFees"))
    MppPaymentInput.type = Types::MppPaymentInput
    MppPaymentOutput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Version, name: "version", traits: {"smithy.api#required" => {}}))
    MppPaymentOutput.add_member(:selected_payment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "selectedPaymentId", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#required" => {}}))
    MppPaymentOutput.add_member(:payment_credential, ::Smithy::Schema::Shapes::MemberShape.new(target: MppPaymentCredential, name: "paymentCredential", traits: {"smithy.api#required" => {}}))
    MppPaymentOutput.type = Types::MppPaymentOutput
    NamespaceVariablesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceVariableName, name: "key"))
    NamespaceVariablesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceVariableValue, name: "value"))
    NamespacesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "member"))
    OAuth2Authentication.add_member(:sub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sub", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    OAuth2Authentication.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "emailAddress"))
    OAuth2Authentication.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OAuth2Authentication.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "username", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    OAuth2Authentication.type = Types::OAuth2Authentication
    OAuthCredentialProvider.add_member(:provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthCredentialProviderArn, name: "providerArn", traits: {"smithy.api#required" => {}}))
    OAuthCredentialProvider.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthScopes, name: "scopes", traits: {"smithy.api#required" => {}}))
    OAuthCredentialProvider.add_member(:custom_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthCustomParameters, name: "customParameters"))
    OAuthCredentialProvider.add_member(:grant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthGrantType, name: "grantType", traits: {"smithy.api#default" => "CLIENT_CREDENTIALS"}))
    OAuthCredentialProvider.add_member(:default_return_url, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthDefaultReturnUrl, name: "defaultReturnUrl"))
    OAuthCredentialProvider.type = Types::OAuthCredentialProvider
    OAuthCustomParameters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthCustomParametersKey, name: "key"))
    OAuthCustomParameters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthCustomParametersValue, name: "value"))
    OAuthGrantType.add_member(:client_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIENT_CREDENTIALS", traits: {"smithy.api#enumValue" => "CLIENT_CREDENTIALS"}))
    OAuthGrantType.add_member(:authorization_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHORIZATION_CODE", traits: {"smithy.api#enumValue" => "AUTHORIZATION_CODE"}))
    OAuthGrantType.add_member(:token_exchange, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOKEN_EXCHANGE", traits: {"smithy.api#enumValue" => "TOKEN_EXCHANGE"}))
    OAuthScopes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OAuthScope, name: "member"))
    Oauth2FlowType.add_member(:user_federation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_FEDERATION", traits: {"smithy.api#enumValue" => "USER_FEDERATION"}))
    Oauth2FlowType.add_member(:m2_m, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "M2M", traits: {"smithy.api#enumValue" => "M2M"}))
    Oauth2FlowType.add_member(:on_behalf_of_token_exchange, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_BEHALF_OF_TOKEN_EXCHANGE", traits: {"smithy.api#enumValue" => "ON_BEHALF_OF_TOKEN_EXCHANGE"}))
    OnlineEvaluationConfigSource.add_member(:online_evaluation_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OnlineEvaluationConfigArn, name: "onlineEvaluationConfigArn", traits: {"smithy.api#required" => {}}))
    OnlineEvaluationConfigSource.add_member(:time_range, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionFilterConfig, name: "timeRange"))
    OnlineEvaluationConfigSource.type = Types::OnlineEvaluationConfigSource
    OnlineEvaluationTraceConfig.add_member(:online_evaluation_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OnlineEvaluationConfigArn, name: "onlineEvaluationConfigArn", traits: {"smithy.api#required" => {}}))
    OnlineEvaluationTraceConfig.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    OnlineEvaluationTraceConfig.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    OnlineEvaluationTraceConfig.type = Types::OnlineEvaluationTraceConfig
    OperatorType.add_member(:equals_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS_TO", traits: {"smithy.api#enumValue" => "EQUALS_TO"}))
    OperatorType.add_member(:exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXISTS", traits: {"smithy.api#enumValue" => "EXISTS"}))
    OperatorType.add_member(:not_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_EXISTS", traits: {"smithy.api#enumValue" => "NOT_EXISTS"}))
    OutputConfig.add_member(:cloud_watch_config, Types::OutputConfig::CloudWatchConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchOutputConfig, name: "cloudWatchConfig"))
    OutputConfig.add_member(:unknown, Types::OutputConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OutputConfig.type = Types::OutputConfig
    PayloadType.add_member(:conversational, Types::PayloadType::Conversational, ::Smithy::Schema::Shapes::MemberShape.new(target: Conversational, name: "conversational"))
    PayloadType.add_member(:blob, Types::PayloadType::Blob, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryDocument, name: "blob"))
    PayloadType.add_member(:json, Types::PayloadType::Json, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryJsonData, name: "json"))
    PayloadType.add_member(:unknown, Types::PayloadType::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PayloadType.type = Types::PayloadType
    PayloadTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PayloadType, name: "member"))
    PaymentHttpMethodType.add_member(:get, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GET", traits: {"smithy.api#enumValue" => "GET"}))
    PaymentHttpMethodType.add_member(:post, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST", traits: {"smithy.api#enumValue" => "POST"}))
    PaymentHttpMethodType.add_member(:put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUT", traits: {"smithy.api#enumValue" => "PUT"}))
    PaymentHttpMethodType.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    PaymentHttpMethodType.add_member(:patch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PATCH", traits: {"smithy.api#enumValue" => "PATCH"}))
    PaymentInput.add_member(:crypto_x402, Types::PaymentInput::CryptoX402, ::Smithy::Schema::Shapes::MemberShape.new(target: CryptoX402PaymentInput, name: "cryptoX402"))
    PaymentInput.add_member(:mpp, Types::PaymentInput::Mpp, ::Smithy::Schema::Shapes::MemberShape.new(target: MppPaymentInput, name: "mpp"))
    PaymentInput.add_member(:unknown, Types::PaymentInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PaymentInput.type = Types::PaymentInput
    PaymentInstrument.add_member(:payment_instrument_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentId, name: "paymentInstrumentId", traits: {"smithy.api#required" => {}}))
    PaymentInstrument.add_member(:payment_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentManagerArn, name: "paymentManagerArn", traits: {"smithy.api#required" => {}}))
    PaymentInstrument.add_member(:payment_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentConnectorId, name: "paymentConnectorId", traits: {"smithy.api#required" => {}}))
    PaymentInstrument.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#required" => {}}))
    PaymentInstrument.add_member(:payment_instrument_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentType, name: "paymentInstrumentType", traits: {"smithy.api#required" => {}}))
    PaymentInstrument.add_member(:payment_instrument_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentDetails, name: "paymentInstrumentDetails", traits: {"smithy.api#required" => {}}))
    PaymentInstrument.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    PaymentInstrument.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    PaymentInstrument.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    PaymentInstrument.type = Types::PaymentInstrument
    PaymentInstrumentDetails.add_member(:embedded_crypto_wallet, Types::PaymentInstrumentDetails::EmbeddedCryptoWallet, ::Smithy::Schema::Shapes::MemberShape.new(target: EmbeddedCryptoWallet, name: "embeddedCryptoWallet"))
    PaymentInstrumentDetails.add_member(:unknown, Types::PaymentInstrumentDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PaymentInstrumentDetails.type = Types::PaymentInstrumentDetails
    PaymentInstrumentStatus.add_member(:initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIATED", traits: {"smithy.api#enumValue" => "INITIATED"}))
    PaymentInstrumentStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    PaymentInstrumentStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    PaymentInstrumentStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    PaymentInstrumentStatus.add_member(:blocked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCKED", traits: {"smithy.api#enumValue" => "BLOCKED"}))
    PaymentInstrumentSummary.add_member(:payment_instrument_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentId, name: "paymentInstrumentId", traits: {"smithy.api#required" => {}}))
    PaymentInstrumentSummary.add_member(:payment_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentManagerArn, name: "paymentManagerArn", traits: {"smithy.api#required" => {}}))
    PaymentInstrumentSummary.add_member(:payment_connector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentConnectorId, name: "paymentConnectorId", traits: {"smithy.api#required" => {}}))
    PaymentInstrumentSummary.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#required" => {}}))
    PaymentInstrumentSummary.add_member(:payment_instrument_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentType, name: "paymentInstrumentType", traits: {"smithy.api#required" => {}}))
    PaymentInstrumentSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    PaymentInstrumentSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    PaymentInstrumentSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    PaymentInstrumentSummary.type = Types::PaymentInstrumentSummary
    PaymentInstrumentSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentSummary, name: "member"))
    PaymentInstrumentType.add_member(:embedded_crypto_wallet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMBEDDED_CRYPTO_WALLET", traits: {"smithy.api#enumValue" => "EMBEDDED_CRYPTO_WALLET"}))
    PaymentOutput.add_member(:crypto_x402, Types::PaymentOutput::CryptoX402, ::Smithy::Schema::Shapes::MemberShape.new(target: CryptoX402PaymentOutput, name: "cryptoX402"))
    PaymentOutput.add_member(:mpp, Types::PaymentOutput::Mpp, ::Smithy::Schema::Shapes::MemberShape.new(target: MppPaymentOutput, name: "mpp"))
    PaymentOutput.add_member(:unknown, Types::PaymentOutput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PaymentOutput.type = Types::PaymentOutput
    PaymentSession.add_member(:payment_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentSessionId, name: "paymentSessionId", traits: {"smithy.api#required" => {}}))
    PaymentSession.add_member(:payment_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentManagerArn, name: "paymentManagerArn", traits: {"smithy.api#required" => {}}))
    PaymentSession.add_member(:limits, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionLimits, name: "limits"))
    PaymentSession.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#required" => {}}))
    PaymentSession.add_member(:expiry_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "expiryTimeInMinutes", traits: {"smithy.api#required" => {}}))
    PaymentSession.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    PaymentSession.add_member(:available_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailableLimits, name: "availableLimits"))
    PaymentSession.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    PaymentSession.type = Types::PaymentSession
    PaymentSessionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    PaymentSessionStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    PaymentSessionStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    PaymentSessionSummary.add_member(:payment_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentSessionId, name: "paymentSessionId", traits: {"smithy.api#required" => {}}))
    PaymentSessionSummary.add_member(:payment_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentManagerArn, name: "paymentManagerArn", traits: {"smithy.api#required" => {}}))
    PaymentSessionSummary.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#required" => {}}))
    PaymentSessionSummary.add_member(:expiry_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "expiryTimeInMinutes", traits: {"smithy.api#required" => {}}))
    PaymentSessionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    PaymentSessionSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    PaymentSessionSummary.type = Types::PaymentSessionSummary
    PaymentSessionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentSessionSummary, name: "member"))
    PaymentStatus.add_member(:proof_generated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROOF_GENERATED", traits: {"smithy.api#enumValue" => "PROOF_GENERATED"}))
    PaymentTokenRequestInput.add_member(:coinbase_cdp_token_request, Types::PaymentTokenRequestInput::CoinbaseCdpTokenRequest, ::Smithy::Schema::Shapes::MemberShape.new(target: CoinbaseCdpTokenRequestInput, name: "coinbaseCdpTokenRequest"))
    PaymentTokenRequestInput.add_member(:stripe_privy_token_request, Types::PaymentTokenRequestInput::StripePrivyTokenRequest, ::Smithy::Schema::Shapes::MemberShape.new(target: StripePrivyTokenRequestInput, name: "stripePrivyTokenRequest"))
    PaymentTokenRequestInput.add_member(:unknown, Types::PaymentTokenRequestInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PaymentTokenRequestInput.type = Types::PaymentTokenRequestInput
    PaymentTokenResponseOutput.add_member(:coinbase_cdp_token_response, Types::PaymentTokenResponseOutput::CoinbaseCdpTokenResponse, ::Smithy::Schema::Shapes::MemberShape.new(target: CoinbaseCdpTokenResponseOutput, name: "coinbaseCdpTokenResponse"))
    PaymentTokenResponseOutput.add_member(:stripe_privy_token_response, Types::PaymentTokenResponseOutput::StripePrivyTokenResponse, ::Smithy::Schema::Shapes::MemberShape.new(target: StripePrivyTokenResponseOutput, name: "stripePrivyTokenResponse"))
    PaymentTokenResponseOutput.add_member(:unknown, Types::PaymentTokenResponseOutput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PaymentTokenResponseOutput.type = Types::PaymentTokenResponseOutput
    PaymentType.add_member(:crypto_x402, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRYPTO_X402", traits: {"smithy.api#enumValue" => "CRYPTO_X402"}))
    PaymentType.add_member(:mpp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MPP", traits: {"smithy.api#enumValue" => "MPP"}))
    PerVariantOnlineEvaluationConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VariantName, name: "name", traits: {"smithy.api#required" => {}}))
    PerVariantOnlineEvaluationConfig.add_member(:online_evaluation_config_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OnlineEvaluationConfigArn, name: "onlineEvaluationConfigArn", traits: {"smithy.api#required" => {}}))
    PerVariantOnlineEvaluationConfig.type = Types::PerVariantOnlineEvaluationConfig
    PerVariantOnlineEvaluationConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PerVariantOnlineEvaluationConfig, name: "member"))
    ProcessPaymentRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-User-Id"}))
    ProcessPaymentRequest.add_member(:agent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentAgentName, name: "agentName", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Payments-Agent-Name"}))
    ProcessPaymentRequest.add_member(:payment_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentManagerArn, name: "paymentManagerArn", traits: {"smithy.api#required" => {}}))
    ProcessPaymentRequest.add_member(:payment_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentSessionId, name: "paymentSessionId", traits: {"smithy.api#required" => {}}))
    ProcessPaymentRequest.add_member(:payment_instrument_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentId, name: "paymentInstrumentId", traits: {"smithy.api#required" => {}}))
    ProcessPaymentRequest.add_member(:payment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentType, name: "paymentType", traits: {"smithy.api#required" => {}}))
    ProcessPaymentRequest.add_member(:payment_input, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInput, name: "paymentInput", traits: {"smithy.api#required" => {}}))
    ProcessPaymentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ProcessPaymentRequest.type = Types::ProcessPaymentRequest
    ProcessPaymentResponse.add_member(:process_payment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessPaymentId, name: "processPaymentId", traits: {"smithy.api#required" => {}}))
    ProcessPaymentResponse.add_member(:payment_manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentManagerArn, name: "paymentManagerArn", traits: {"smithy.api#required" => {}}))
    ProcessPaymentResponse.add_member(:payment_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentSessionId, name: "paymentSessionId", traits: {"smithy.api#required" => {}}))
    ProcessPaymentResponse.add_member(:payment_instrument_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentInstrumentId, name: "paymentInstrumentId", traits: {"smithy.api#required" => {}}))
    ProcessPaymentResponse.add_member(:payment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentType, name: "paymentType", traits: {"smithy.api#required" => {}}))
    ProcessPaymentResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ProcessPaymentResponse.add_member(:payment_output, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentOutput, name: "paymentOutput", traits: {"smithy.api#required" => {}}))
    ProcessPaymentResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    ProcessPaymentResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ProcessPaymentResponse.type = Types::ProcessPaymentResponse
    ProgrammingLanguage.add_member(:python, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PYTHON", traits: {"smithy.api#enumValue" => "python"}))
    ProgrammingLanguage.add_member(:javascript, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JAVASCRIPT", traits: {"smithy.api#enumValue" => "javascript"}))
    ProgrammingLanguage.add_member(:typescript, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TYPESCRIPT", traits: {"smithy.api#enumValue" => "typescript"}))
    Proxies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Proxy, name: "member"))
    Proxy.add_member(:external_proxy, Types::Proxy::ExternalProxy, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalProxy, name: "externalProxy"))
    Proxy.add_member(:unknown, Types::Proxy::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Proxy.type = Types::Proxy
    ProxyBypass.add_member(:domain_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainPatterns, name: "domainPatterns"))
    ProxyBypass.type = Types::ProxyBypass
    ProxyConfiguration.add_member(:proxies, ::Smithy::Schema::Shapes::MemberShape.new(target: Proxies, name: "proxies", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#required" => {}}))
    ProxyConfiguration.add_member(:bypass, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyBypass, name: "bypass"))
    ProxyConfiguration.type = Types::ProxyConfiguration
    ProxyCredentials.add_member(:basic_auth, Types::ProxyCredentials::BasicAuth, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicAuth, name: "basicAuth"))
    ProxyCredentials.add_member(:unknown, Types::ProxyCredentials::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ProxyCredentials.type = Types::ProxyCredentials
    RecommendationConfig.add_member(:system_prompt_recommendation_config, Types::RecommendationConfig::SystemPromptRecommendationConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemPromptRecommendationConfig, name: "systemPromptRecommendationConfig"))
    RecommendationConfig.add_member(:tool_description_recommendation_config, Types::RecommendationConfig::ToolDescriptionRecommendationConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolDescriptionRecommendationConfig, name: "toolDescriptionRecommendationConfig"))
    RecommendationConfig.add_member(:unknown, Types::RecommendationConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RecommendationConfig.type = Types::RecommendationConfig
    RecommendationEvaluationConfig.add_member(:evaluators, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationEvaluatorList, name: "evaluators", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    RecommendationEvaluationConfig.type = Types::RecommendationEvaluationConfig
    RecommendationEvaluatorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationEvaluatorReference, name: "member"))
    RecommendationEvaluatorReference.add_member(:evaluator_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatorArn, name: "evaluatorArn", traits: {"smithy.api#required" => {}}))
    RecommendationEvaluatorReference.type = Types::RecommendationEvaluatorReference
    RecommendationResult.add_member(:system_prompt_recommendation_result, Types::RecommendationResult::SystemPromptRecommendationResult, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemPromptRecommendationResult, name: "systemPromptRecommendationResult"))
    RecommendationResult.add_member(:tool_description_recommendation_result, Types::RecommendationResult::ToolDescriptionRecommendationResult, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolDescriptionRecommendationResult, name: "toolDescriptionRecommendationResult"))
    RecommendationResult.add_member(:unknown, Types::RecommendationResult::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RecommendationResult.type = Types::RecommendationResult
    RecommendationResultConfigurationBundle.add_member(:bundle_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationBundleArn, name: "bundleArn", traits: {"smithy.api#required" => {}}))
    RecommendationResultConfigurationBundle.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationBundleVersionId, name: "versionId", traits: {"smithy.api#required" => {}}))
    RecommendationResultConfigurationBundle.type = Types::RecommendationResultConfigurationBundle
    RecommendationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    RecommendationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    RecommendationStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    RecommendationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RecommendationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    RecommendationSummary.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, name: "recommendationId", traits: {"smithy.api#required" => {}}))
    RecommendationSummary.add_member(:recommendation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationArn, name: "recommendationArn", traits: {"smithy.api#required" => {}}))
    RecommendationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationName, name: "name", traits: {"smithy.api#required" => {}}))
    RecommendationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationDescription, name: "description"))
    RecommendationSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, name: "type", traits: {"smithy.api#required" => {}}))
    RecommendationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    RecommendationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    RecommendationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    RecommendationSummary.type = Types::RecommendationSummary
    RecommendationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSummary, name: "member"))
    RecommendationType.add_member(:system_prompt_recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM_PROMPT_RECOMMENDATION", traits: {"smithy.api#enumValue" => "SYSTEM_PROMPT_RECOMMENDATION"}))
    RecommendationType.add_member(:tool_description_recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOOL_DESCRIPTION_RECOMMENDATION", traits: {"smithy.api#enumValue" => "TOOL_DESCRIPTION_RECOMMENDATION"}))
    RecordExpiryAction.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVE", traits: {"smithy.api#enumValue" => "REMOVE"}))
    RecordExpirySpecification.add_member(:record_expiry_duration_days, Types::RecordExpirySpecification::RecordExpiryDurationDays, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordExpiryDurationDays, name: "recordExpiryDurationDays"))
    RecordExpirySpecification.add_member(:action, Types::RecordExpirySpecification::Action, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordExpiryAction, name: "action"))
    RecordExpirySpecification.add_member(:unknown, Types::RecordExpirySpecification::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RecordExpirySpecification.type = Types::RecordExpirySpecification
    RegistryIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdentifier, name: "member"))
    RegistryRecordStatus.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRAFT", traits: {"smithy.api#enumValue" => "DRAFT"}))
    RegistryRecordStatus.add_member(:pending_approval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_APPROVAL", traits: {"smithy.api#enumValue" => "PENDING_APPROVAL"}))
    RegistryRecordStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    RegistryRecordStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    RegistryRecordStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    RegistryRecordSummary.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryArn, name: "registryArn", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordArn, name: "recordArn", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordId, name: "recordId", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordName, name: "name", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    RegistryRecordSummary.add_member(:descriptor_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorType, name: "descriptorType", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:descriptors, ::Smithy::Schema::Shapes::MemberShape.new(target: Descriptors, name: "descriptors", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordVersion, name: "version", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordStatus, name: "status", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.type = Types::RegistryRecordSummary
    RegistryRecordSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordSummary, name: "member"))
    ResourceContent.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceContentType, name: "type", traits: {"smithy.api#required" => {}}))
    ResourceContent.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "uri"))
    ResourceContent.add_member(:mime_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "mimeType"))
    ResourceContent.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    ResourceContent.add_member(:blob, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "blob"))
    ResourceContent.type = Types::ResourceContent
    ResourceContentType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "text"}))
    ResourceContentType.add_member(:blob, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOB", traits: {"smithy.api#enumValue" => "blob"}))
    ResourceLocation.add_member(:s3, Types::ResourceLocation::S3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "s3"))
    ResourceLocation.add_member(:unknown, Types::ResourceLocation::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResourceLocation.type = Types::ResourceLocation
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcesListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "member"))
    ResponseChunk.add_member(:content_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentStartEvent, name: "contentStart"))
    ResponseChunk.add_member(:content_delta, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentDeltaEvent, name: "contentDelta"))
    ResponseChunk.add_member(:content_stop, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentStopEvent, name: "contentStop"))
    ResponseChunk.type = Types::ResponseChunk
    ResultDestination.add_member(:dedicated_log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEDICATED_LOG_GROUP", traits: {"smithy.api#enumValue" => "DEDICATED_LOG_GROUP"}))
    ResultDestination.add_member(:source_log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_LOG_GROUP", traits: {"smithy.api#enumValue" => "SOURCE_LOG_GROUP"}))
    RetrieveMemoryRecordsInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RetrieveMemoryRecordsInput.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "namespace"))
    RetrieveMemoryRecordsInput.add_member(:namespace_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "namespacePath"))
    RetrieveMemoryRecordsInput.add_member(:search_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchCriteria, name: "searchCriteria", traits: {"smithy.api#required" => {}}))
    RetrieveMemoryRecordsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    RetrieveMemoryRecordsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#default" => 100}))
    RetrieveMemoryRecordsInput.type = Types::RetrieveMemoryRecordsInput
    RetrieveMemoryRecordsOutput.add_member(:memory_record_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryRecordSummaryList, name: "memoryRecordSummaries", traits: {"smithy.api#required" => {}}))
    RetrieveMemoryRecordsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    RetrieveMemoryRecordsOutput.type = Types::RetrieveMemoryRecordsOutput
    RetryableConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    RetryableConflictException.type = Types::RetryableConflictException
    RightExpression.add_member(:metadata_value, Types::RightExpression::MetadataValue, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataValue, name: "metadataValue"))
    RightExpression.add_member(:unknown, Types::RightExpression::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RightExpression.type = Types::RightExpression
    Role.add_member(:assistant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSISTANT", traits: {"smithy.api#enumValue" => "ASSISTANT"}))
    Role.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    Role.add_member(:tool, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOOL", traits: {"smithy.api#enumValue" => "TOOL"}))
    Role.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    RootCauseCluster.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "clusterId", traits: {"smithy.api#required" => {}}))
    RootCauseCluster.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    RootCauseCluster.add_member(:root_cause, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "rootCause", traits: {"smithy.api#required" => {}}))
    RootCauseCluster.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendation", traits: {"smithy.api#required" => {}}))
    RootCauseCluster.add_member(:affected_session_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "affectedSessionCount", traits: {"smithy.api#required" => {}}))
    RootCauseCluster.add_member(:affected_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: AffectedSessionList, name: "affectedSessions", traits: {"smithy.api#required" => {}}))
    RootCauseCluster.type = Types::RootCauseCluster
    RootCauseClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RootCauseCluster, name: "member"))
    RuntimeClientError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    RuntimeClientError.type = Types::RuntimeClientError
    S3FilesConfiguration.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3FilesAccessPointArn, name: "accessPointArn", traits: {"smithy.api#required" => {}}))
    S3FilesConfiguration.add_member(:mount_path, ::Smithy::Schema::Shapes::MemberShape.new(target: MountPath, name: "mountPath", traits: {"smithy.api#required" => {}}))
    S3FilesConfiguration.add_member(:file_system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3FilesFileSystemArn, name: "fileSystemArn", traits: {"smithy.api#required" => {}}))
    S3FilesConfiguration.type = Types::S3FilesConfiguration
    S3Location.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][a-z0-9.-]*[a-z0-9]$", "smithy.api#required" => {}}))
    S3Location.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "prefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    S3Location.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "versionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}}))
    S3Location.type = Types::S3Location
    SaveBrowserSessionProfileRequest.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceId", traits: {"smithy.api#httpHeader" => "X-Amzn-Trace-Id", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    SaveBrowserSessionProfileRequest.add_member(:trace_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceParent", traits: {"smithy.api#httpHeader" => "traceparent", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    SaveBrowserSessionProfileRequest.add_member(:profile_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserProfileId, name: "profileIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SaveBrowserSessionProfileRequest.add_member(:browser_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "browserIdentifier", traits: {"smithy.api#required" => {}}))
    SaveBrowserSessionProfileRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    SaveBrowserSessionProfileRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    SaveBrowserSessionProfileRequest.type = Types::SaveBrowserSessionProfileRequest
    SaveBrowserSessionProfileResponse.add_member(:profile_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserProfileId, name: "profileIdentifier", traits: {"smithy.api#required" => {}}))
    SaveBrowserSessionProfileResponse.add_member(:browser_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "browserIdentifier", traits: {"smithy.api#required" => {}}))
    SaveBrowserSessionProfileResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    SaveBrowserSessionProfileResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    SaveBrowserSessionProfileResponse.type = Types::SaveBrowserSessionProfileResponse
    ScopesListType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeType, name: "member"))
    ScreenshotArguments.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ScreenshotFormat, name: "format"))
    ScreenshotArguments.type = Types::ScreenshotArguments
    ScreenshotFormat.add_member(:png, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PNG", traits: {"smithy.api#enumValue" => "PNG"}))
    ScreenshotResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserActionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ScreenshotResult.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "error"))
    ScreenshotResult.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "data"))
    ScreenshotResult.type = Types::ScreenshotResult
    SearchCriteria.add_member(:search_query, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "searchQuery", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#required" => {}}))
    SearchCriteria.add_member(:memory_strategy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryStrategyId, name: "memoryStrategyId"))
    SearchCriteria.add_member(:top_k, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "topK", traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    SearchCriteria.add_member(:metadata_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryMetadataFilterList, name: "metadataFilters"))
    SearchCriteria.type = Types::SearchCriteria
    SearchRegistryRecordsRequest.add_member(:search_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "searchQuery", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    SearchRegistryRecordsRequest.add_member(:registry_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdList, name: "registryIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#required" => {}}))
    SearchRegistryRecordsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 20}}))
    SearchRegistryRecordsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataFilterExpression, name: "filters"))
    SearchRegistryRecordsRequest.type = Types::SearchRegistryRecordsRequest
    SearchRegistryRecordsResponse.add_member(:registry_records, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordSummaryList, name: "registryRecords", traits: {"smithy.api#required" => {}}))
    SearchRegistryRecordsResponse.type = Types::SearchRegistryRecordsResponse
    SecretsManagerLocation.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "secretArn", traits: {"smithy.api#required" => {}}))
    SecretsManagerLocation.type = Types::SecretsManagerLocation
    ServerDefinition.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersion, name: "schemaVersion"))
    ServerDefinition.add_member(:inline_content, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineContent, name: "inlineContent"))
    ServerDefinition.type = Types::ServerDefinition
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceException.type = Types::ServiceException
    ServiceNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionFilter.add_member(:event_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EventFilterCondition, name: "eventFilter"))
    SessionFilter.type = Types::SessionFilter
    SessionFilterConfig.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "startTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    SessionFilterConfig.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "endTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    SessionFilterConfig.type = Types::SessionFilterConfig
    SessionLimits.add_member(:max_spend_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Amount, name: "maxSpendAmount", traits: {"smithy.api#required" => {}}))
    SessionLimits.type = Types::SessionLimits
    SessionMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionMetadataShape, name: "member"))
    SessionMetadataShape.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionId", traits: {"smithy.api#required" => {}}))
    SessionMetadataShape.add_member(:test_scenario_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "testScenarioId"))
    SessionMetadataShape.add_member(:ground_truth, ::Smithy::Schema::Shapes::MemberShape.new(target: GroundTruthSource, name: "groundTruth"))
    SessionMetadataShape.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "metadata"))
    SessionMetadataShape.type = Types::SessionMetadataShape
    SessionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    SessionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SessionSummary.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:actor_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorId, name: "actorId", traits: {"smithy.api#required" => {}}))
    SessionSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    SessionSummary.type = Types::SessionSummary
    SessionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionSummary, name: "member"))
    SessionTraceIds.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionId", traits: {"smithy.api#required" => {}}))
    SessionTraceIds.add_member(:trace_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceIdList, name: "traceIds", traits: {"smithy.api#required" => {}}))
    SessionTraceIds.type = Types::SessionTraceIds
    SessionTraceIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTraceIds, name: "member"))
    SkillDefinition.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersion, name: "schemaVersion"))
    SkillDefinition.add_member(:inline_content, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineContent, name: "inlineContent"))
    SkillDefinition.type = Types::SkillDefinition
    SkillMdDefinition.add_member(:inline_content, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineContent, name: "inlineContent"))
    SkillMdDefinition.type = Types::SkillMdDefinition
    SpanContext.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionId", traits: {"smithy.api#required" => {}}))
    SpanContext.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceId"))
    SpanContext.add_member(:span_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "spanId"))
    SpanContext.type = Types::SpanContext
    SpanIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SpanId, name: "member"))
    Spans.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Span, name: "member"))
    StartBatchEvaluationRequest.add_member(:batch_evaluation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationName, name: "batchEvaluationName", traits: {"smithy.api#required" => {}}))
    StartBatchEvaluationRequest.add_member(:evaluators, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatorList, name: "evaluators", traits: {"smithy.api#length" => {"max" => 10}}))
    StartBatchEvaluationRequest.add_member(:insights, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightList, name: "insights", traits: {"smithy.api#length" => {"max" => 10}}))
    StartBatchEvaluationRequest.add_member(:data_source_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceConfig, name: "dataSourceConfig", traits: {"smithy.api#required" => {}}))
    StartBatchEvaluationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartBatchEvaluationRequest.add_member(:evaluation_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationMetadata, name: "evaluationMetadata"))
    StartBatchEvaluationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    StartBatchEvaluationRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    StartBatchEvaluationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationDescription, name: "description"))
    StartBatchEvaluationRequest.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfig, name: "outputConfig"))
    StartBatchEvaluationRequest.type = Types::StartBatchEvaluationRequest
    StartBatchEvaluationResponse.add_member(:batch_evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationId, name: "batchEvaluationId", traits: {"smithy.api#required" => {}}))
    StartBatchEvaluationResponse.add_member(:batch_evaluation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationArn, name: "batchEvaluationArn", traits: {"smithy.api#required" => {}}))
    StartBatchEvaluationResponse.add_member(:batch_evaluation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationName, name: "batchEvaluationName", traits: {"smithy.api#required" => {}}))
    StartBatchEvaluationResponse.add_member(:evaluators, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatorList, name: "evaluators"))
    StartBatchEvaluationResponse.add_member(:insights, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightList, name: "insights"))
    StartBatchEvaluationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    StartBatchEvaluationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartBatchEvaluationResponse.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfig, name: "outputConfig"))
    StartBatchEvaluationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    StartBatchEvaluationResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    StartBatchEvaluationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationDescription, name: "description"))
    StartBatchEvaluationResponse.type = Types::StartBatchEvaluationResponse
    StartBrowserSessionRequest.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceId", traits: {"smithy.api#httpHeader" => "X-Amzn-Trace-Id", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    StartBrowserSessionRequest.add_member(:trace_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceParent", traits: {"smithy.api#httpHeader" => "traceparent", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    StartBrowserSessionRequest.add_member(:browser_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "browserIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartBrowserSessionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    StartBrowserSessionRequest.add_member(:session_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionTimeout, name: "sessionTimeoutSeconds", traits: {"smithy.api#default" => 3600}))
    StartBrowserSessionRequest.add_member(:view_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewPort, name: "viewPort"))
    StartBrowserSessionRequest.add_member(:extensions, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserExtensions, name: "extensions"))
    StartBrowserSessionRequest.add_member(:profile_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserProfileConfiguration, name: "profileConfiguration"))
    StartBrowserSessionRequest.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, name: "proxyConfiguration"))
    StartBrowserSessionRequest.add_member(:enterprise_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserEnterprisePolicies, name: "enterprisePolicies"))
    StartBrowserSessionRequest.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificates, name: "certificates"))
    StartBrowserSessionRequest.add_member(:filesystem_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolsFileSystemConfigurations, name: "filesystemConfigurations"))
    StartBrowserSessionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartBrowserSessionRequest.type = Types::StartBrowserSessionRequest
    StartBrowserSessionResponse.add_member(:browser_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "browserIdentifier", traits: {"smithy.api#required" => {}}))
    StartBrowserSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    StartBrowserSessionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    StartBrowserSessionResponse.add_member(:streams, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionStream, name: "streams"))
    StartBrowserSessionResponse.type = Types::StartBrowserSessionResponse
    StartCodeInterpreterSessionRequest.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceId", traits: {"smithy.api#httpHeader" => "X-Amzn-Trace-Id", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    StartCodeInterpreterSessionRequest.add_member(:trace_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceParent", traits: {"smithy.api#httpHeader" => "traceparent", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    StartCodeInterpreterSessionRequest.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeInterpreterIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartCodeInterpreterSessionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    StartCodeInterpreterSessionRequest.add_member(:session_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterSessionTimeout, name: "sessionTimeoutSeconds", traits: {"smithy.api#default" => 900}))
    StartCodeInterpreterSessionRequest.add_member(:certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificates, name: "certificates"))
    StartCodeInterpreterSessionRequest.add_member(:filesystem_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolsFileSystemConfigurations, name: "filesystemConfigurations"))
    StartCodeInterpreterSessionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartCodeInterpreterSessionRequest.type = Types::StartCodeInterpreterSessionRequest
    StartCodeInterpreterSessionResponse.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeInterpreterIdentifier", traits: {"smithy.api#required" => {}}))
    StartCodeInterpreterSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterSessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    StartCodeInterpreterSessionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    StartCodeInterpreterSessionResponse.type = Types::StartCodeInterpreterSessionResponse
    StartMemoryExtractionJobInput.add_member(:memory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryId, name: "memoryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartMemoryExtractionJobInput.add_member(:extraction_job, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtractionJob, name: "extractionJob", traits: {"smithy.api#required" => {}}))
    StartMemoryExtractionJobInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartMemoryExtractionJobInput.type = Types::StartMemoryExtractionJobInput
    StartMemoryExtractionJobOutput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "jobId", traits: {"smithy.api#required" => {}}))
    StartMemoryExtractionJobOutput.type = Types::StartMemoryExtractionJobOutput
    StartRecommendationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationName, name: "name", traits: {"smithy.api#required" => {}}))
    StartRecommendationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationDescription, name: "description"))
    StartRecommendationRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, name: "type", traits: {"smithy.api#required" => {}}))
    StartRecommendationRequest.add_member(:recommendation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationConfig, name: "recommendationConfig", traits: {"smithy.api#required" => {}}))
    StartRecommendationRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    StartRecommendationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartRecommendationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    StartRecommendationRequest.type = Types::StartRecommendationRequest
    StartRecommendationResponse.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, name: "recommendationId", traits: {"smithy.api#required" => {}}))
    StartRecommendationResponse.add_member(:recommendation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationArn, name: "recommendationArn", traits: {"smithy.api#required" => {}}))
    StartRecommendationResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationName, name: "name", traits: {"smithy.api#required" => {}}))
    StartRecommendationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationDescription, name: "description"))
    StartRecommendationResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, name: "type", traits: {"smithy.api#required" => {}}))
    StartRecommendationResponse.add_member(:recommendation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationConfig, name: "recommendationConfig", traits: {"smithy.api#required" => {}}))
    StartRecommendationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    StartRecommendationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartRecommendationResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartRecommendationResponse.type = Types::StartRecommendationResponse
    StopBatchEvaluationRequest.add_member(:batch_evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationId, name: "batchEvaluationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopBatchEvaluationRequest.type = Types::StopBatchEvaluationRequest
    StopBatchEvaluationResponse.add_member(:batch_evaluation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationId, name: "batchEvaluationId", traits: {"smithy.api#required" => {}}))
    StopBatchEvaluationResponse.add_member(:batch_evaluation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationArn, name: "batchEvaluationArn", traits: {"smithy.api#required" => {}}))
    StopBatchEvaluationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    StopBatchEvaluationResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchEvaluationDescription, name: "description"))
    StopBatchEvaluationResponse.type = Types::StopBatchEvaluationResponse
    StopBrowserSessionRequest.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceId", traits: {"smithy.api#httpHeader" => "X-Amzn-Trace-Id", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    StopBrowserSessionRequest.add_member(:trace_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceParent", traits: {"smithy.api#httpHeader" => "traceparent", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    StopBrowserSessionRequest.add_member(:browser_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "browserIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopBrowserSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionId, name: "sessionId", traits: {"smithy.api#httpQuery" => "sessionId", "smithy.api#required" => {}}))
    StopBrowserSessionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StopBrowserSessionRequest.type = Types::StopBrowserSessionRequest
    StopBrowserSessionResponse.add_member(:browser_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "browserIdentifier", traits: {"smithy.api#required" => {}}))
    StopBrowserSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    StopBrowserSessionResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    StopBrowserSessionResponse.type = Types::StopBrowserSessionResponse
    StopCodeInterpreterSessionRequest.add_member(:trace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceId", traits: {"smithy.api#httpHeader" => "X-Amzn-Trace-Id", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    StopCodeInterpreterSessionRequest.add_member(:trace_parent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "traceParent", traits: {"smithy.api#httpHeader" => "traceparent", "smithy.api#length" => {"min" => 0, "max" => 1024}}))
    StopCodeInterpreterSessionRequest.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeInterpreterIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopCodeInterpreterSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterSessionId, name: "sessionId", traits: {"smithy.api#httpQuery" => "sessionId", "smithy.api#required" => {}}))
    StopCodeInterpreterSessionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StopCodeInterpreterSessionRequest.type = Types::StopCodeInterpreterSessionRequest
    StopCodeInterpreterSessionResponse.add_member(:code_interpreter_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeInterpreterIdentifier", traits: {"smithy.api#required" => {}}))
    StopCodeInterpreterSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeInterpreterSessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    StopCodeInterpreterSessionResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    StopCodeInterpreterSessionResponse.type = Types::StopCodeInterpreterSessionResponse
    StopRuntimeSessionRequest.add_member(:runtime_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionType, name: "runtimeSessionId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id", "smithy.api#required" => {}}))
    StopRuntimeSessionRequest.add_member(:agent_runtime_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentRuntimeArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopRuntimeSessionRequest.add_member(:qualifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "qualifier", traits: {"smithy.api#httpQuery" => "qualifier"}))
    StopRuntimeSessionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StopRuntimeSessionRequest.type = Types::StopRuntimeSessionRequest
    StopRuntimeSessionResponse.add_member(:runtime_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "runtimeSessionId", traits: {"smithy.api#httpHeader" => "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id"}))
    StopRuntimeSessionResponse.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpResponseCode, name: "statusCode", traits: {"smithy.api#httpResponseCode" => {}}))
    StopRuntimeSessionResponse.type = Types::StopRuntimeSessionResponse
    StreamUpdate.add_member(:automation_stream_update, Types::StreamUpdate::AutomationStreamUpdate, ::Smithy::Schema::Shapes::MemberShape.new(target: AutomationStreamUpdate, name: "automationStreamUpdate"))
    StreamUpdate.add_member(:unknown, Types::StreamUpdate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    StreamUpdate.type = Types::StreamUpdate
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLenString, name: "member"))
    StringMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    StringMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    StringValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringListMemberValue, name: "member"))
    StripePrivyTokenRequestInput.add_member(:request_host, ::Smithy::Schema::Shapes::MemberShape.new(target: StripePrivyRequestHostType, name: "requestHost"))
    StripePrivyTokenRequestInput.add_member(:request_path, ::Smithy::Schema::Shapes::MemberShape.new(target: StripePrivyRequestPathType, name: "requestPath", traits: {"smithy.api#required" => {}}))
    StripePrivyTokenRequestInput.add_member(:request_body, ::Smithy::Schema::Shapes::MemberShape.new(target: StripePrivyRequestBodyType, name: "requestBody", traits: {"smithy.api#required" => {}}))
    StripePrivyTokenRequestInput.add_member(:include_authorization_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includeAuthorizationSignature", traits: {"smithy.api#default" => false}))
    StripePrivyTokenRequestInput.type = Types::StripePrivyTokenRequestInput
    StripePrivyTokenResponseOutput.add_member(:authorization_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: StripePrivyAuthorizationSignatureType, name: "authorizationSignature"))
    StripePrivyTokenResponseOutput.add_member(:request_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "requestExpiry"))
    StripePrivyTokenResponseOutput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StripePrivyAppIdType, name: "appId", traits: {"smithy.api#required" => {}}))
    StripePrivyTokenResponseOutput.add_member(:basic_auth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StripePrivyBasicAuthTokenType, name: "basicAuthToken", traits: {"smithy.api#required" => {}}))
    StripePrivyTokenResponseOutput.type = Types::StripePrivyTokenResponseOutput
    SubscriptionRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    SubscriptionRequiredException.add_member(:subscription_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "subscriptionUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    SubscriptionRequiredException.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "productName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}}))
    SubscriptionRequiredException.type = Types::SubscriptionRequiredException
    SystemPromptConfig.add_member(:text, Types::SystemPromptConfig::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemPromptText, name: "text"))
    SystemPromptConfig.add_member(:configuration_bundle, Types::SystemPromptConfig::ConfigurationBundle, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemPromptConfigurationBundle, name: "configurationBundle"))
    SystemPromptConfig.add_member(:unknown, Types::SystemPromptConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SystemPromptConfig.type = Types::SystemPromptConfig
    SystemPromptConfigurationBundle.add_member(:bundle_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationBundleArn, name: "bundleArn", traits: {"smithy.api#required" => {}}))
    SystemPromptConfigurationBundle.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationBundleVersionId, name: "versionId", traits: {"smithy.api#required" => {}}))
    SystemPromptConfigurationBundle.add_member(:system_prompt_json_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "systemPromptJsonPath", traits: {"smithy.api#required" => {}}))
    SystemPromptConfigurationBundle.type = Types::SystemPromptConfigurationBundle
    SystemPromptRecommendationConfig.add_member(:system_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemPromptConfig, name: "systemPrompt", traits: {"smithy.api#required" => {}}))
    SystemPromptRecommendationConfig.add_member(:agent_traces, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentTracesConfig, name: "agentTraces", traits: {"smithy.api#required" => {}}))
    SystemPromptRecommendationConfig.add_member(:evaluation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationEvaluationConfig, name: "evaluationConfig"))
    SystemPromptRecommendationConfig.type = Types::SystemPromptRecommendationConfig
    SystemPromptRecommendationResult.add_member(:recommended_system_prompt, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemPromptText, name: "recommendedSystemPrompt"))
    SystemPromptRecommendationResult.add_member(:configuration_bundle, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationResultConfigurationBundle, name: "configurationBundle"))
    SystemPromptRecommendationResult.add_member(:explanation, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationExplanation, name: "explanation"))
    SystemPromptRecommendationResult.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationErrorCode, name: "errorCode"))
    SystemPromptRecommendationResult.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationErrorMessage, name: "errorMessage"))
    SystemPromptRecommendationResult.type = Types::SystemPromptRecommendationResult
    TagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TargetPathList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PathPattern, name: "member"))
    TargetRef.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetName, name: "name", traits: {"smithy.api#required" => {}}))
    TargetRef.type = Types::TargetRef
    TaskStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "submitted"}))
    TaskStatus.add_member(:working, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKING", traits: {"smithy.api#enumValue" => "working"}))
    TaskStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "completed"}))
    TaskStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "canceled"}))
    TaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "failed"}))
    ThrottledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottledException.type = Types::ThrottledException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TokenBalance.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "amount", traits: {"smithy.api#required" => {}}))
    TokenBalance.add_member(:decimals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "decimals", traits: {"smithy.api#required" => {}}))
    TokenBalance.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: InstrumentBalanceToken, name: "token", traits: {"smithy.api#required" => {}}))
    TokenBalance.add_member(:network, ::Smithy::Schema::Shapes::MemberShape.new(target: CryptoWalletNetwork, name: "network", traits: {"smithy.api#required" => {}}))
    TokenBalance.add_member(:chain, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockchainChainId, name: "chain", traits: {"smithy.api#required" => {}}))
    TokenBalance.type = Types::TokenBalance
    TokenUsage.add_member(:input_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "inputTokens"))
    TokenUsage.add_member(:output_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "outputTokens"))
    TokenUsage.add_member(:total_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalTokens"))
    TokenUsage.type = Types::TokenUsage
    ToolArguments.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLenString, name: "code"))
    ToolArguments.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgrammingLanguage, name: "language"))
    ToolArguments.add_member(:clear_context, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "clearContext"))
    ToolArguments.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLenString, name: "command"))
    ToolArguments.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLenString, name: "path"))
    ToolArguments.add_member(:paths, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "paths"))
    ToolArguments.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: InputContentBlockList, name: "content"))
    ToolArguments.add_member(:directory_path, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLenString, name: "directoryPath"))
    ToolArguments.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLenString, name: "taskId"))
    ToolArguments.add_member(:runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageRuntime, name: "runtime"))
    ToolArguments.type = Types::ToolArguments
    ToolDescriptionConfig.add_member(:text, Types::ToolDescriptionConfig::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolDescriptionText, name: "text"))
    ToolDescriptionConfig.add_member(:unknown, Types::ToolDescriptionConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ToolDescriptionConfig.type = Types::ToolDescriptionConfig
    ToolDescriptionConfigurationBundle.add_member(:bundle_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationBundleArn, name: "bundleArn", traits: {"smithy.api#required" => {}}))
    ToolDescriptionConfigurationBundle.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationBundleVersionId, name: "versionId", traits: {"smithy.api#required" => {}}))
    ToolDescriptionConfigurationBundle.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationBundleToolEntryList, name: "tools", traits: {"smithy.api#required" => {}}))
    ToolDescriptionConfigurationBundle.type = Types::ToolDescriptionConfigurationBundle
    ToolDescriptionInput.add_member(:tool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationToolName, name: "toolName", traits: {"smithy.api#required" => {}}))
    ToolDescriptionInput.add_member(:tool_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolDescriptionConfig, name: "toolDescription", traits: {"smithy.api#required" => {}}))
    ToolDescriptionInput.type = Types::ToolDescriptionInput
    ToolDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolDescriptionInput, name: "member"))
    ToolDescriptionOutput.add_member(:tool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationToolName, name: "toolName", traits: {"smithy.api#required" => {}}))
    ToolDescriptionOutput.add_member(:recommended_tool_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolDescriptionText, name: "recommendedToolDescription"))
    ToolDescriptionOutput.add_member(:explanation, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationExplanation, name: "explanation"))
    ToolDescriptionOutput.type = Types::ToolDescriptionOutput
    ToolDescriptionRecommendationConfig.add_member(:tool_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolDescriptionSource, name: "toolDescription", traits: {"smithy.api#required" => {}}))
    ToolDescriptionRecommendationConfig.add_member(:agent_traces, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentTracesConfig, name: "agentTraces", traits: {"smithy.api#required" => {}}))
    ToolDescriptionRecommendationConfig.type = Types::ToolDescriptionRecommendationConfig
    ToolDescriptionRecommendationResult.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolDescriptionResultList, name: "tools"))
    ToolDescriptionRecommendationResult.add_member(:configuration_bundle, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationResultConfigurationBundle, name: "configurationBundle"))
    ToolDescriptionRecommendationResult.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationErrorCode, name: "errorCode"))
    ToolDescriptionRecommendationResult.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationErrorMessage, name: "errorMessage"))
    ToolDescriptionRecommendationResult.type = Types::ToolDescriptionRecommendationResult
    ToolDescriptionResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolDescriptionOutput, name: "member"))
    ToolDescriptionSource.add_member(:tool_description_text, Types::ToolDescriptionSource::ToolDescriptionText, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolDescriptionTextInput, name: "toolDescriptionText"))
    ToolDescriptionSource.add_member(:configuration_bundle, Types::ToolDescriptionSource::ConfigurationBundle, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolDescriptionConfigurationBundle, name: "configurationBundle"))
    ToolDescriptionSource.add_member(:unknown, Types::ToolDescriptionSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ToolDescriptionSource.type = Types::ToolDescriptionSource
    ToolDescriptionTextInput.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolDescriptionList, name: "tools", traits: {"smithy.api#required" => {}}))
    ToolDescriptionTextInput.type = Types::ToolDescriptionTextInput
    ToolName.add_member(:execute_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTE_CODE", traits: {"smithy.api#enumValue" => "executeCode"}))
    ToolName.add_member(:execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTE_COMMAND", traits: {"smithy.api#enumValue" => "executeCommand"}))
    ToolName.add_member(:read_files, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_FILES", traits: {"smithy.api#enumValue" => "readFiles"}))
    ToolName.add_member(:list_files, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIST_FILES", traits: {"smithy.api#enumValue" => "listFiles"}))
    ToolName.add_member(:remove_files, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVE_FILES", traits: {"smithy.api#enumValue" => "removeFiles"}))
    ToolName.add_member(:write_files, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRITE_FILES", traits: {"smithy.api#enumValue" => "writeFiles"}))
    ToolName.add_member(:start_command_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_COMMAND_EXECUTION", traits: {"smithy.api#enumValue" => "startCommandExecution"}))
    ToolName.add_member(:get_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GET_TASK", traits: {"smithy.api#enumValue" => "getTask"}))
    ToolName.add_member(:stop_task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_TASK", traits: {"smithy.api#enumValue" => "stopTask"}))
    ToolResultStructuredContent.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "taskId"))
    ToolResultStructuredContent.add_member(:task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, name: "taskStatus"))
    ToolResultStructuredContent.add_member(:stdout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stdout"))
    ToolResultStructuredContent.add_member(:stderr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "stderr"))
    ToolResultStructuredContent.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "exitCode"))
    ToolResultStructuredContent.add_member(:execution_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "executionTime"))
    ToolResultStructuredContent.type = Types::ToolResultStructuredContent
    ToolsDefinition.add_member(:protocol_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaVersion, name: "protocolVersion"))
    ToolsDefinition.add_member(:inline_content, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineContent, name: "inlineContent"))
    ToolsDefinition.type = Types::ToolsDefinition
    ToolsFileSystemConfiguration.add_member(:s3_files_configuration, Types::ToolsFileSystemConfiguration::S3FilesConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3FilesConfiguration, name: "s3FilesConfiguration"))
    ToolsFileSystemConfiguration.add_member(:efs_configuration, Types::ToolsFileSystemConfiguration::EfsConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: EfsConfiguration, name: "efsConfiguration"))
    ToolsFileSystemConfiguration.add_member(:unknown, Types::ToolsFileSystemConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ToolsFileSystemConfiguration.type = Types::ToolsFileSystemConfiguration
    ToolsFileSystemConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ToolsFileSystemConfiguration, name: "member"))
    TraceIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "member"))
    TraceIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TraceId, name: "member"))
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    UnauthorizedException.type = Types::UnauthorizedException
    UpdateABTestRequest.add_member(:ab_test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestId, name: "abTestId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateABTestRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateABTestRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestName, name: "name"))
    UpdateABTestRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestDescription, name: "description"))
    UpdateABTestRequest.add_member(:variants, ::Smithy::Schema::Shapes::MemberShape.new(target: VariantList, name: "variants"))
    UpdateABTestRequest.add_member(:gateway_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayFilter, name: "gatewayFilter"))
    UpdateABTestRequest.add_member(:evaluation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestEvaluationConfig, name: "evaluationConfig"))
    UpdateABTestRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    UpdateABTestRequest.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestExecutionStatus, name: "executionStatus"))
    UpdateABTestRequest.type = Types::UpdateABTestRequest
    UpdateABTestResponse.add_member(:ab_test_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestId, name: "abTestId", traits: {"smithy.api#required" => {}}))
    UpdateABTestResponse.add_member(:ab_test_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestArn, name: "abTestArn", traits: {"smithy.api#required" => {}}))
    UpdateABTestResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateABTestResponse.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ABTestExecutionStatus, name: "executionStatus", traits: {"smithy.api#required" => {}}))
    UpdateABTestResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateABTestResponse.type = Types::UpdateABTestResponse
    UpdateBrowserStreamRequest.add_member(:browser_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "browserIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBrowserStreamRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionId, name: "sessionId", traits: {"smithy.api#httpQuery" => "sessionId", "smithy.api#required" => {}}))
    UpdateBrowserStreamRequest.add_member(:stream_update, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamUpdate, name: "streamUpdate", traits: {"smithy.api#required" => {}}))
    UpdateBrowserStreamRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateBrowserStreamRequest.type = Types::UpdateBrowserStreamRequest
    UpdateBrowserStreamResponse.add_member(:browser_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "browserIdentifier", traits: {"smithy.api#required" => {}}))
    UpdateBrowserStreamResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionId, name: "sessionId", traits: {"smithy.api#required" => {}}))
    UpdateBrowserStreamResponse.add_member(:streams, ::Smithy::Schema::Shapes::MemberShape.new(target: BrowserSessionStream, name: "streams", traits: {"smithy.api#required" => {}}))
    UpdateBrowserStreamResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateBrowserStreamResponse.type = Types::UpdateBrowserStreamResponse
    UserIdentifier.add_member(:user_token, Types::UserIdentifier::UserToken, ::Smithy::Schema::Shapes::MemberShape.new(target: UserTokenType, name: "userToken"))
    UserIdentifier.add_member(:user_id, Types::UserIdentifier::UserId, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdType, name: "userId"))
    UserIdentifier.add_member(:unknown, Types::UserIdentifier::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    UserIdentifier.type = Types::UserIdentifier
    UserIntentAffectedSession.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sessionId", traits: {"smithy.api#required" => {}}))
    UserIntentAffectedSession.add_member(:user_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIntentList, name: "userMessages", traits: {"smithy.api#required" => {}}))
    UserIntentAffectedSession.type = Types::UserIntentAffectedSession
    UserIntentAffectedSessionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIntentAffectedSession, name: "member"))
    UserIntentCluster.add_member(:cluster_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "clusterId", traits: {"smithy.api#required" => {}}))
    UserIntentCluster.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    UserIntentCluster.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    UserIntentCluster.add_member(:affected_session_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "affectedSessionCount", traits: {"smithy.api#required" => {}}))
    UserIntentCluster.add_member(:affected_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIntentAffectedSessionList, name: "affectedSessions", traits: {"smithy.api#required" => {}}))
    UserIntentCluster.type = Types::UserIntentCluster
    UserIntentClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIntentCluster, name: "member"))
    UserIntentClusteringResultContent.add_member(:user_intents, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIntentClusterList, name: "userIntents", traits: {"smithy.api#required" => {}}))
    UserIntentClusteringResultContent.type = Types::UserIntentClusteringResultContent
    UserIntentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FieldValidationFailed"}))
    ValidationExceptionReason.add_member(:idempotent_parameter_mismatch_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDEMPOTENT_PARAMETER_MISMATCH_EXCEPTION", traits: {"smithy.api#enumValue" => "IdempotentParameterMismatchException"}))
    ValidationExceptionReason.add_member(:root_event_in_other_session, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROOT_EVENT_IN_OTHER_SESSION", traits: {"smithy.api#enumValue" => "EventInOtherSession"}))
    ValidationExceptionReason.add_member(:resource_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_CONFLICT", traits: {"smithy.api#enumValue" => "ResourceConflict"}))
    Variant.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: VariantName, name: "name", traits: {"smithy.api#required" => {}}))
    Variant.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "weight", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    Variant.add_member(:variant_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VariantConfiguration, name: "variantConfiguration", traits: {"smithy.api#required" => {}}))
    Variant.type = Types::Variant
    VariantConfiguration.add_member(:configuration_bundle, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationBundleRef, name: "configurationBundle"))
    VariantConfiguration.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetRef, name: "target"))
    VariantConfiguration.type = Types::VariantConfiguration
    VariantList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Variant, name: "member"))
    VariantResult.add_member(:variant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "variantName", traits: {"smithy.api#required" => {}}))
    VariantResult.add_member(:sample_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "sampleSize", traits: {"smithy.api#required" => {}}))
    VariantResult.add_member(:mean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "mean", traits: {"smithy.api#required" => {}}))
    VariantResult.add_member(:absolute_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "absoluteChange"))
    VariantResult.add_member(:percent_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "percentChange"))
    VariantResult.add_member(:p_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "pValue"))
    VariantResult.add_member(:confidence_interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceInterval, name: "confidenceInterval"))
    VariantResult.add_member(:is_significant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isSignificant", traits: {"smithy.api#required" => {}}))
    VariantResult.type = Types::VariantResult
    VariantResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VariantResult, name: "member"))
    ViewPort.add_member(:width, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewPortWidth, name: "width", traits: {"smithy.api#required" => {}}))
    ViewPort.add_member(:height, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewPortHeight, name: "height", traits: {"smithy.api#required" => {}}))
    ViewPort.type = Types::ViewPort
    WwwAuthenticateHeaderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WwwAuthenticateHeader, name: "member"))

    AmazonBedrockAgentCore = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.bedrockagentcore#AmazonBedrockAgentCore"
      service.name = "AmazonBedrockAgentCore"
      service.version = "2024-02-28"
      service.traits = {"aws.api#service" => {"sdkId" => "Bedrock AgentCore", "arnNamespace" => "bedrock-agentcore", "endpointPrefix" => "bedrock-agentcore"}, "aws.auth#sigv4" => {"name" => "bedrock-agentcore"}, "aws.protocols#restJson1" => {"http" => ["http/1.1"], "eventStreamHttp" => ["http/1.1"]}, "smithy.api#title" => "Amazon Bedrock AgentCore", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://bedrock-agentcore-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://bedrock-agentcore-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://bedrock-agentcore.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://bedrock-agentcore.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:batch_create_memory_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#BatchCreateMemoryRecords"
        operation.name = "BatchCreateMemoryRecords"
        operation.input = BatchCreateMemoryRecordsInput
        operation.output = BatchCreateMemoryRecordsOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/memories/{memoryId}/memoryRecords/batchCreate"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:batch_delete_memory_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#BatchDeleteMemoryRecords"
        operation.name = "BatchDeleteMemoryRecords"
        operation.input = BatchDeleteMemoryRecordsInput
        operation.output = BatchDeleteMemoryRecordsOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/{memoryId}/memoryRecords/batchDelete"}}
      end)
      service.add_operation(:batch_update_memory_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#BatchUpdateMemoryRecords"
        operation.name = "BatchUpdateMemoryRecords"
        operation.input = BatchUpdateMemoryRecordsInput
        operation.output = BatchUpdateMemoryRecordsOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/{memoryId}/memoryRecords/batchUpdate"}}
      end)
      service.add_operation(:complete_resource_token_auth, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#CompleteResourceTokenAuth"
        operation.name = "CompleteResourceTokenAuth"
        operation.input = CompleteResourceTokenAuthRequest
        operation.output = CompleteResourceTokenAuthResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/identities/CompleteResourceTokenAuth", "method" => "POST"}}
      end)
      service.add_operation(:create_ab_test, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#CreateABTest"
        operation.name = "CreateABTest"
        operation.input = CreateABTestRequest
        operation.output = CreateABTestResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ab-tests", "code" => 202}}
      end)
      service.add_operation(:create_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#CreateEvent"
        operation.name = "CreateEvent"
        operation.input = CreateEventInput
        operation.output = CreateEventOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/memories/{memoryId}/events"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_payment_instrument, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#CreatePaymentInstrument"
        operation.name = "CreatePaymentInstrument"
        operation.input = CreatePaymentInstrumentRequest
        operation.output = CreatePaymentInstrumentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << SubscriptionRequiredException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/payments/createPaymentInstrument"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_payment_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#CreatePaymentSession"
        operation.name = "CreatePaymentSession"
        operation.input = CreatePaymentSessionRequest
        operation.output = CreatePaymentSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << SubscriptionRequiredException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/payments/createPaymentSession"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_ab_test, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#DeleteABTest"
        operation.name = "DeleteABTest"
        operation.input = DeleteABTestRequest
        operation.output = DeleteABTestResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ab-tests/{abTestId}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_batch_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#DeleteBatchEvaluation"
        operation.name = "DeleteBatchEvaluation"
        operation.input = DeleteBatchEvaluationRequest
        operation.output = DeleteBatchEvaluationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/evaluations/batch-evaluate/{batchEvaluationId}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_capacity_provider_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#DeleteCapacityProviderSession"
        operation.name = "DeleteCapacityProviderSession"
        operation.input = DeleteCapacityProviderSessionRequest
        operation.output = DeleteCapacityProviderSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/capacity-providers/{capacityProviderId}/sessions/{sessionId}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#DeleteEvent"
        operation.name = "DeleteEvent"
        operation.input = DeleteEventInput
        operation.output = DeleteEventOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}/events/{eventId}"}}
      end)
      service.add_operation(:delete_memory_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#DeleteMemoryRecord"
        operation.name = "DeleteMemoryRecord"
        operation.input = DeleteMemoryRecordInput
        operation.output = DeleteMemoryRecordOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/memories/{memoryId}/memoryRecords/{memoryRecordId}"}}
      end)
      service.add_operation(:delete_payment_instrument, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#DeletePaymentInstrument"
        operation.name = "DeletePaymentInstrument"
        operation.input = DeletePaymentInstrumentRequest
        operation.output = DeletePaymentInstrumentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/payments/deletePaymentInstrument"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_payment_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#DeletePaymentSession"
        operation.name = "DeletePaymentSession"
        operation.input = DeletePaymentSessionRequest
        operation.output = DeletePaymentSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/payments/deletePaymentSession"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#DeleteRecommendation"
        operation.name = "DeleteRecommendation"
        operation.input = DeleteRecommendationRequest
        operation.output = DeleteRecommendationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/recommendations/{recommendationId}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:evaluate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#Evaluate"
        operation.name = "Evaluate"
        operation.input = EvaluateRequest
        operation.output = EvaluateResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DuplicateIdException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/evaluations/evaluate/{evaluatorId}"}}
      end)
      service.add_operation(:get_ab_test, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetABTest"
        operation.name = "GetABTest"
        operation.input = GetABTestRequest
        operation.output = GetABTestResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ab-tests/{abTestId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_agent_card, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetAgentCard"
        operation.name = "GetAgentCard"
        operation.input = GetAgentCardRequest
        operation.output = GetAgentCardResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << RuntimeClientError
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/runtimes/{agentRuntimeArn}/invocations/.well-known/agent-card.json", "code" => 200}}
      end)
      service.add_operation(:get_batch_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetBatchEvaluation"
        operation.name = "GetBatchEvaluation"
        operation.input = GetBatchEvaluationRequest
        operation.output = GetBatchEvaluationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/evaluations/batch-evaluate/{batchEvaluationId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_browser_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetBrowserSession"
        operation.name = "GetBrowserSession"
        operation.input = GetBrowserSessionRequest
        operation.output = GetBrowserSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/browsers/{browserIdentifier}/sessions/get", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_code_interpreter_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetCodeInterpreterSession"
        operation.name = "GetCodeInterpreterSession"
        operation.input = GetCodeInterpreterSessionRequest
        operation.output = GetCodeInterpreterSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/code-interpreters/{codeInterpreterIdentifier}/sessions/get", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetEvent"
        operation.name = "GetEvent"
        operation.input = GetEventInput
        operation.output = GetEventOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}/events/{eventId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_memory_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetMemoryRecord"
        operation.name = "GetMemoryRecord"
        operation.input = GetMemoryRecordInput
        operation.output = GetMemoryRecordOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/memories/{memoryId}/memoryRecord/{memoryRecordId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_payment_instrument, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetPaymentInstrument"
        operation.name = "GetPaymentInstrument"
        operation.input = GetPaymentInstrumentRequest
        operation.output = GetPaymentInstrumentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/payments/getPaymentInstrument"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_payment_instrument_balance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetPaymentInstrumentBalance"
        operation.name = "GetPaymentInstrumentBalance"
        operation.input = GetPaymentInstrumentBalanceRequest
        operation.output = GetPaymentInstrumentBalanceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/payments/getPaymentInstrumentBalance"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_payment_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetPaymentSession"
        operation.name = "GetPaymentSession"
        operation.input = GetPaymentSessionRequest
        operation.output = GetPaymentSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/payments/getPaymentSession"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetRecommendation"
        operation.name = "GetRecommendation"
        operation.input = GetRecommendationRequest
        operation.output = GetRecommendationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/recommendations/{recommendationId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetResourceApiKey"
        operation.name = "GetResourceApiKey"
        operation.input = GetResourceApiKeyRequest
        operation.output = GetResourceApiKeyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/identities/api-key", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_oauth2_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetResourceOauth2Token"
        operation.name = "GetResourceOauth2Token"
        operation.input = GetResourceOauth2TokenRequest
        operation.output = GetResourceOauth2TokenResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/identities/oauth2/token", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_payment_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetResourcePaymentToken"
        operation.name = "GetResourcePaymentToken"
        operation.input = GetResourcePaymentTokenRequest
        operation.output = GetResourcePaymentTokenResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/identities/payment/token", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workload_access_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetWorkloadAccessToken"
        operation.name = "GetWorkloadAccessToken"
        operation.input = GetWorkloadAccessTokenRequest
        operation.output = GetWorkloadAccessTokenResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/identities/GetWorkloadAccessToken", "method" => "POST"}}
      end)
      service.add_operation(:get_workload_access_token_for_jwt, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenForJWT"
        operation.name = "GetWorkloadAccessTokenForJWT"
        operation.input = GetWorkloadAccessTokenForJWTRequest
        operation.output = GetWorkloadAccessTokenForJWTResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/identities/GetWorkloadAccessTokenForJWT", "method" => "POST"}}
      end)
      service.add_operation(:get_workload_access_token_for_user_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#GetWorkloadAccessTokenForUserId"
        operation.name = "GetWorkloadAccessTokenForUserId"
        operation.input = GetWorkloadAccessTokenForUserIdRequest
        operation.output = GetWorkloadAccessTokenForUserIdResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "smithy.api#http" => {"uri" => "/identities/GetWorkloadAccessTokenForUserId", "method" => "POST"}}
      end)
      service.add_operation(:ingest_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#IngestData"
        operation.name = "IngestData"
        operation.input = IngestDataInput
        operation.output = IngestDataOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/memories/{memoryId}/ingest"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:invoke_agent_runtime, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#InvokeAgentRuntime"
        operation.name = "InvokeAgentRuntime"
        operation.input = InvokeAgentRuntimeRequest
        operation.output = InvokeAgentRuntimeResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << RuntimeClientError
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/runtimes/{agentRuntimeArn}/invocations", "code" => 200}}
      end)
      service.add_operation(:invoke_agent_runtime_command, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#InvokeAgentRuntimeCommand"
        operation.name = "InvokeAgentRuntimeCommand"
        operation.input = InvokeAgentRuntimeCommandRequest
        operation.output = InvokeAgentRuntimeCommandResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << RuntimeClientError
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/runtimes/{agentRuntimeArn}/commands", "code" => 200}}
      end)
      service.add_operation(:invoke_browser, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#InvokeBrowser"
        operation.name = "InvokeBrowser"
        operation.input = InvokeBrowserRequest
        operation.output = InvokeBrowserResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/browsers/{browserIdentifier}/sessions/invoke", "code" => 200}}
      end)
      service.add_operation(:invoke_code_interpreter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#InvokeCodeInterpreter"
        operation.name = "InvokeCodeInterpreter"
        operation.input = InvokeCodeInterpreterRequest
        operation.output = InvokeCodeInterpreterResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/code-interpreters/{codeInterpreterIdentifier}/tools/invoke", "code" => 200}}
      end)
      service.add_operation(:invoke_harness, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#InvokeHarness"
        operation.name = "InvokeHarness"
        operation.input = InvokeHarnessRequest
        operation.output = InvokeHarnessResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << RuntimeClientError
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/harnesses/invoke"}}
      end)
      service.add_operation(:list_ab_tests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListABTests"
        operation.name = "ListABTests"
        operation.input = ListABTestsRequest
        operation.output = ListABTestsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ab-tests"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListABTests.new
      end)
      service.add_operation(:list_actors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListActors"
        operation.name = "ListActors"
        operation.input = ListActorsInput
        operation.output = ListActorsOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/{memoryId}/actors"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListActors.new
      end)
      service.add_operation(:list_batch_evaluations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListBatchEvaluations"
        operation.name = "ListBatchEvaluations"
        operation.input = ListBatchEvaluationsRequest
        operation.output = ListBatchEvaluationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/evaluations/batch-evaluate"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBatchEvaluations.new
      end)
      service.add_operation(:list_browser_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListBrowserSessions"
        operation.name = "ListBrowserSessions"
        operation.input = ListBrowserSessionsRequest
        operation.output = ListBrowserSessionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/browsers/{browserIdentifier}/sessions/list", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_code_interpreter_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListCodeInterpreterSessions"
        operation.name = "ListCodeInterpreterSessions"
        operation.input = ListCodeInterpreterSessionsRequest
        operation.output = ListCodeInterpreterSessionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/code-interpreters/{codeInterpreterIdentifier}/sessions/list", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListEvents"
        operation.name = "ListEvents"
        operation.input = ListEventsInput
        operation.output = ListEventsOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEvents.new
      end)
      service.add_operation(:list_memory_extraction_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListMemoryExtractionJobs"
        operation.name = "ListMemoryExtractionJobs"
        operation.input = ListMemoryExtractionJobsInput
        operation.output = ListMemoryExtractionJobsOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/{memoryId}/extractionJobs"}}
        operation[:paginator] = Paginators::ListMemoryExtractionJobs.new
      end)
      service.add_operation(:list_memory_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListMemoryRecords"
        operation.name = "ListMemoryRecords"
        operation.input = ListMemoryRecordsInput
        operation.output = ListMemoryRecordsOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/{memoryId}/memoryRecords"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMemoryRecords.new
      end)
      service.add_operation(:list_payment_instruments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListPaymentInstruments"
        operation.name = "ListPaymentInstruments"
        operation.input = ListPaymentInstrumentsRequest
        operation.output = ListPaymentInstrumentsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/payments/listPaymentInstruments"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPaymentInstruments.new
      end)
      service.add_operation(:list_payment_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListPaymentSessions"
        operation.name = "ListPaymentSessions"
        operation.input = ListPaymentSessionsRequest
        operation.output = ListPaymentSessionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/payments/listPaymentSessions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPaymentSessions.new
      end)
      service.add_operation(:list_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListRecommendations"
        operation.name = "ListRecommendations"
        operation.input = ListRecommendationsRequest
        operation.output = ListRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/recommendations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRecommendations.new
      end)
      service.add_operation(:list_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ListSessions"
        operation.name = "ListSessions"
        operation.input = ListSessionsInput
        operation.output = ListSessionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/{memoryId}/actor/{actorId}/sessions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessions.new
      end)
      service.add_operation(:process_payment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#ProcessPayment"
        operation.name = "ProcessPayment"
        operation.input = ProcessPaymentRequest
        operation.output = ProcessPaymentResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << SubscriptionRequiredException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/payments/processPayment"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:retrieve_memory_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#RetrieveMemoryRecords"
        operation.name = "RetrieveMemoryRecords"
        operation.input = RetrieveMemoryRecordsInput
        operation.output = RetrieveMemoryRecordsOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/{memoryId}/retrieve"}}
        operation[:paginator] = Paginators::RetrieveMemoryRecords.new
      end)
      service.add_operation(:save_browser_session_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#SaveBrowserSessionProfile"
        operation.name = "SaveBrowserSessionProfile"
        operation.input = SaveBrowserSessionProfileRequest
        operation.output = SaveBrowserSessionProfileResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/browser-profiles/{profileIdentifier}/save", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:search_registry_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#SearchRegistryRecords"
        operation.name = "SearchRegistryRecords"
        operation.input = SearchRegistryRecordsRequest
        operation.output = SearchRegistryRecordsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/registry-records/search", "code" => 200}}
      end)
      service.add_operation(:start_batch_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#StartBatchEvaluation"
        operation.name = "StartBatchEvaluation"
        operation.input = StartBatchEvaluationRequest
        operation.output = StartBatchEvaluationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/evaluations/batch-evaluate", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_browser_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#StartBrowserSession"
        operation.name = "StartBrowserSession"
        operation.input = StartBrowserSessionRequest
        operation.output = StartBrowserSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/browsers/{browserIdentifier}/sessions/start", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_code_interpreter_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#StartCodeInterpreterSession"
        operation.name = "StartCodeInterpreterSession"
        operation.input = StartCodeInterpreterSessionRequest
        operation.output = StartCodeInterpreterSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/code-interpreters/{codeInterpreterIdentifier}/sessions/start", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_memory_extraction_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#StartMemoryExtractionJob"
        operation.name = "StartMemoryExtractionJob"
        operation.input = StartMemoryExtractionJobInput
        operation.output = StartMemoryExtractionJobOutput
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottledException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/{memoryId}/extractionJobs/start"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#StartRecommendation"
        operation.name = "StartRecommendation"
        operation.input = StartRecommendationRequest
        operation.output = StartRecommendationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/recommendations", "code" => 202}}
      end)
      service.add_operation(:stop_batch_evaluation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#StopBatchEvaluation"
        operation.name = "StopBatchEvaluation"
        operation.input = StopBatchEvaluationRequest
        operation.output = StopBatchEvaluationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/evaluations/batch-evaluate/{batchEvaluationId}/stop", "code" => 202}}
      end)
      service.add_operation(:stop_browser_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#StopBrowserSession"
        operation.name = "StopBrowserSession"
        operation.input = StopBrowserSessionRequest
        operation.output = StopBrowserSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/browsers/{browserIdentifier}/sessions/stop", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_code_interpreter_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#StopCodeInterpreterSession"
        operation.name = "StopCodeInterpreterSession"
        operation.input = StopCodeInterpreterSessionRequest
        operation.output = StopCodeInterpreterSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/code-interpreters/{codeInterpreterIdentifier}/sessions/stop", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_runtime_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#StopRuntimeSession"
        operation.name = "StopRuntimeSession"
        operation.input = StopRuntimeSessionRequest
        operation.output = StopRuntimeSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryableConflictException
        operation.errors << RuntimeClientError
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/runtimes/{agentRuntimeArn}/stopruntimesession", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_ab_test, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#UpdateABTest"
        operation.name = "UpdateABTest"
        operation.input = UpdateABTestRequest
        operation.output = UpdateABTestResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/ab-tests/{abTestId}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_browser_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcore#UpdateBrowserStream"
        operation.name = "UpdateBrowserStream"
        operation.input = UpdateBrowserStreamRequest
        operation.output = UpdateBrowserStreamResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/browsers/{browserIdentifier}/sessions/streams/update", "code" => 200}, "smithy.api#idempotent" => {}}
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
