# frozen_string_literal: true

# This is generated code!

module Aws::BedrockAgentCoreControl
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Agent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#Agent', name: 'Agent')
    AgentArtifact = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AgentArtifact', name: 'AgentArtifact')
    AgentEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AgentEndpoint', name: 'AgentEndpoint')
    AgentEndpointDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AgentEndpointDescription', name: 'AgentEndpointDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AgentEndpointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AgentEndpointStatus', name: 'AgentEndpointStatus')
    AgentEndpoints = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AgentEndpoints', name: 'AgentEndpoints')
    AgentRuntimeArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AgentRuntimeArn', name: 'AgentRuntimeArn', traits: {"aws.api#arnReference" => {"type" => "AWS::BedrockAgentCore::Runtime"}, "smithy.api#pattern" => "^arn:(-[^:]+)?:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:agent/[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}:([0-9]{0,4}[1-9][0-9]{0,4})$"})
    AgentRuntimeEndpointArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AgentRuntimeEndpointArn', name: 'AgentRuntimeEndpointArn', traits: {"aws.api#arnReference" => {"type" => "AWS::BedrockAgentCore::RuntimeEndpoint"}, "smithy.api#pattern" => "^arn:(-[^:]+)?:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:agentEndpoint/[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    AgentRuntimeEndpointId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AgentRuntimeEndpointId', name: 'AgentRuntimeEndpointId', traits: {"smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]{0,99}-[a-zA-Z0-9]{10}$"})
    AgentRuntimeId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AgentRuntimeId', name: 'AgentRuntimeId', traits: {"smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]{0,99}-[a-zA-Z0-9]{10}$"})
    AgentRuntimeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AgentRuntimeName', name: 'AgentRuntimeName', traits: {"smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]{0,47}$"})
    AgentRuntimeVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AgentRuntimeVersion', name: 'AgentRuntimeVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}, "smithy.api#pattern" => "^([1-9][0-9]{0,4})$"})
    AgentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AgentStatus', name: 'AgentStatus')
    Agents = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#Agents', name: 'Agents')
    AllowedAudience = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AllowedAudience', name: 'AllowedAudience')
    AllowedAudienceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AllowedAudienceList', name: 'AllowedAudienceList', traits: {"smithy.api#length" => {"min" => 1}})
    AllowedClient = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AllowedClient', name: 'AllowedClient')
    AllowedClientsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AllowedClientsList', name: 'AllowedClientsList', traits: {"smithy.api#length" => {"min" => 1}})
    ApiKeyCredentialLocation = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ApiKeyCredentialLocation', name: 'ApiKeyCredentialLocation')
    ApiKeyCredentialParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ApiKeyCredentialParameterName', name: 'ApiKeyCredentialParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ApiKeyCredentialPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ApiKeyCredentialPrefix', name: 'ApiKeyCredentialPrefix', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ApiKeyCredentialProviderArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ApiKeyCredentialProviderArn', name: 'ApiKeyCredentialProviderArn', traits: {"smithy.api#pattern" => "^arn:([^:]*):([^:]*):([^:]*):([0-9]{12})?:(.+)$"})
    ApiKeyCredentialProviderArnType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ApiKeyCredentialProviderArnType', name: 'ApiKeyCredentialProviderArnType', traits: {"smithy.api#pattern" => "^arn:(aws|aws-us-gov):acps:[A-Za-z0-9-]{1,64}:[0-9]{12}:token-vault/[a-zA-Z0-9-.]+/apikeycredentialprovider/[a-zA-Z0-9-.]+$"})
    ApiKeyCredentialProviderItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ApiKeyCredentialProviderItem', name: 'ApiKeyCredentialProviderItem')
    ApiKeyCredentialProviders = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ApiKeyCredentialProviders', name: 'ApiKeyCredentialProviders')
    ApiKeyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ApiKeyType', name: 'ApiKeyType', traits: {"smithy.api#length" => {"min" => 1, "max" => 65536}, "smithy.api#sensitive" => {}})
    ApiSchemaConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ApiSchemaConfiguration', name: 'ApiSchemaConfiguration')
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#Arn', name: 'Arn', traits: {"smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    AuthorizationEndpointType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AuthorizationEndpointType', name: 'AuthorizationEndpointType')
    AuthorizerConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AuthorizerConfiguration', name: 'AuthorizerConfiguration')
    AuthorizerType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AuthorizerType', name: 'AuthorizerType')
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    BrowserArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#BrowserArn', name: 'BrowserArn', traits: {"aws.api#arnReference" => {"type" => "AWS::BedrockAgentCore::BrowserCustom"}, "smithy.api#pattern" => "^arn:(-[^:]+)?:bedrock-agentcore:[a-z0-9-]+:(aws|[0-9]{12}):browser(-custom)?/(aws\\.browser\\.v1|[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10})$"})
    BrowserId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#BrowserId', name: 'BrowserId', traits: {"smithy.api#pattern" => "^(aws\\.browser\\.v1|[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10})$"})
    BrowserNetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#BrowserNetworkConfiguration', name: 'BrowserNetworkConfiguration')
    BrowserNetworkMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#BrowserNetworkMode', name: 'BrowserNetworkMode')
    BrowserStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#BrowserStatus', name: 'BrowserStatus')
    BrowserSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#BrowserSummaries', name: 'BrowserSummaries')
    BrowserSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#BrowserSummary', name: 'BrowserSummary')
    ClientIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ClientIdType', name: 'ClientIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ClientSecretType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ClientSecretType', name: 'ClientSecretType', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 33, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,256}$"})
    CodeInterpreterArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CodeInterpreterArn', name: 'CodeInterpreterArn', traits: {"aws.api#arnReference" => {"type" => "AWS::BedrockAgentCore::CodeInterpreterCustom"}, "smithy.api#pattern" => "^arn:(-[^:]+)?:bedrock-agentcore:[a-z0-9-]+:(aws|[0-9]{12}):code-interpreter(-custom)?/(aws\\.codeinterpreter\\.v1|[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10})$"})
    CodeInterpreterId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CodeInterpreterId', name: 'CodeInterpreterId', traits: {"smithy.api#pattern" => "^(aws\\.codeinterpreter\\.v1|[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10})$"})
    CodeInterpreterNetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CodeInterpreterNetworkConfiguration', name: 'CodeInterpreterNetworkConfiguration')
    CodeInterpreterNetworkMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CodeInterpreterNetworkMode', name: 'CodeInterpreterNetworkMode')
    CodeInterpreterStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CodeInterpreterStatus', name: 'CodeInterpreterStatus')
    CodeInterpreterSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CodeInterpreterSummaries', name: 'CodeInterpreterSummaries')
    CodeInterpreterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CodeInterpreterSummary', name: 'CodeInterpreterSummary')
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConsolidationConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ConsolidationConfiguration', name: 'ConsolidationConfiguration')
    ContainerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ContainerConfiguration', name: 'ContainerConfiguration')
    CreateAgentRuntimeEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateAgentRuntimeEndpointRequest', name: 'CreateAgentRuntimeEndpointRequest')
    CreateAgentRuntimeEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateAgentRuntimeEndpointResponse', name: 'CreateAgentRuntimeEndpointResponse')
    CreateAgentRuntimeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateAgentRuntimeRequest', name: 'CreateAgentRuntimeRequest')
    CreateAgentRuntimeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateAgentRuntimeResponse', name: 'CreateAgentRuntimeResponse')
    CreateApiKeyCredentialProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateApiKeyCredentialProviderRequest', name: 'CreateApiKeyCredentialProviderRequest')
    CreateApiKeyCredentialProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateApiKeyCredentialProviderResponse', name: 'CreateApiKeyCredentialProviderResponse')
    CreateBrowserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateBrowserRequest', name: 'CreateBrowserRequest')
    CreateBrowserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateBrowserResponse', name: 'CreateBrowserResponse')
    CreateCodeInterpreterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateCodeInterpreterRequest', name: 'CreateCodeInterpreterRequest')
    CreateCodeInterpreterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateCodeInterpreterResponse', name: 'CreateCodeInterpreterResponse')
    CreateGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateGatewayRequest', name: 'CreateGatewayRequest')
    CreateGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateGatewayResponse', name: 'CreateGatewayResponse')
    CreateGatewayTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateGatewayTargetRequest', name: 'CreateGatewayTargetRequest')
    CreateGatewayTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateGatewayTargetResponse', name: 'CreateGatewayTargetResponse')
    CreateMemoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateMemoryInput', name: 'CreateMemoryInput')
    CreateMemoryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateMemoryOutput', name: 'CreateMemoryOutput')
    CreateOauth2CredentialProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateOauth2CredentialProviderRequest', name: 'CreateOauth2CredentialProviderRequest')
    CreateOauth2CredentialProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateOauth2CredentialProviderResponse', name: 'CreateOauth2CredentialProviderResponse')
    CreateWorkloadIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateWorkloadIdentityRequest', name: 'CreateWorkloadIdentityRequest')
    CreateWorkloadIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CreateWorkloadIdentityResponse', name: 'CreateWorkloadIdentityResponse')
    CredentialProvider = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CredentialProvider', name: 'CredentialProvider')
    CredentialProviderArnType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CredentialProviderArnType', name: 'CredentialProviderArnType', traits: {"smithy.api#pattern" => "^arn:(aws|aws-us-gov):acps:[A-Za-z0-9-]{1,64}:[0-9]{12}:token-vault/[a-zA-Z0-9-.]+/oauth2credentialprovider/[a-zA-Z0-9-.]+$"})
    CredentialProviderConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CredentialProviderConfiguration', name: 'CredentialProviderConfiguration')
    CredentialProviderConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CredentialProviderConfigurations', name: 'CredentialProviderConfigurations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CredentialProviderName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CredentialProviderName', name: 'CredentialProviderName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_]+$"})
    CredentialProviderType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CredentialProviderType', name: 'CredentialProviderType')
    CredentialProviderVendorType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CredentialProviderVendorType', name: 'CredentialProviderVendorType')
    CustomConfigurationInput = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CustomConfigurationInput', name: 'CustomConfigurationInput')
    CustomConsolidationConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CustomConsolidationConfiguration', name: 'CustomConsolidationConfiguration')
    CustomConsolidationConfigurationInput = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CustomConsolidationConfigurationInput', name: 'CustomConsolidationConfigurationInput')
    CustomExtractionConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CustomExtractionConfiguration', name: 'CustomExtractionConfiguration')
    CustomExtractionConfigurationInput = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CustomExtractionConfigurationInput', name: 'CustomExtractionConfigurationInput')
    CustomJWTAuthorizerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CustomJWTAuthorizerConfiguration', name: 'CustomJWTAuthorizerConfiguration')
    CustomMemoryStrategyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CustomMemoryStrategyInput', name: 'CustomMemoryStrategyInput')
    CustomOauth2ProviderConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CustomOauth2ProviderConfigInput', name: 'CustomOauth2ProviderConfigInput')
    CustomOauth2ProviderConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#CustomOauth2ProviderConfigOutput', name: 'CustomOauth2ProviderConfigOutput')
    DateTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DateTimestamp', name: 'DateTimestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    DecryptionFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DecryptionFailure', name: 'DecryptionFailure', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeleteAgentRuntimeEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteAgentRuntimeEndpointRequest', name: 'DeleteAgentRuntimeEndpointRequest')
    DeleteAgentRuntimeEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteAgentRuntimeEndpointResponse', name: 'DeleteAgentRuntimeEndpointResponse')
    DeleteAgentRuntimeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteAgentRuntimeRequest', name: 'DeleteAgentRuntimeRequest')
    DeleteAgentRuntimeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteAgentRuntimeResponse', name: 'DeleteAgentRuntimeResponse')
    DeleteApiKeyCredentialProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteApiKeyCredentialProviderRequest', name: 'DeleteApiKeyCredentialProviderRequest')
    DeleteApiKeyCredentialProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteApiKeyCredentialProviderResponse', name: 'DeleteApiKeyCredentialProviderResponse')
    DeleteBrowserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteBrowserRequest', name: 'DeleteBrowserRequest')
    DeleteBrowserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteBrowserResponse', name: 'DeleteBrowserResponse')
    DeleteCodeInterpreterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteCodeInterpreterRequest', name: 'DeleteCodeInterpreterRequest')
    DeleteCodeInterpreterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteCodeInterpreterResponse', name: 'DeleteCodeInterpreterResponse')
    DeleteGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteGatewayRequest', name: 'DeleteGatewayRequest')
    DeleteGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteGatewayResponse', name: 'DeleteGatewayResponse')
    DeleteGatewayTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteGatewayTargetRequest', name: 'DeleteGatewayTargetRequest')
    DeleteGatewayTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteGatewayTargetResponse', name: 'DeleteGatewayTargetResponse')
    DeleteMemoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteMemoryInput', name: 'DeleteMemoryInput')
    DeleteMemoryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteMemoryOutput', name: 'DeleteMemoryOutput')
    DeleteMemoryStrategiesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteMemoryStrategiesList', name: 'DeleteMemoryStrategiesList')
    DeleteMemoryStrategyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteMemoryStrategyInput', name: 'DeleteMemoryStrategyInput')
    DeleteOauth2CredentialProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteOauth2CredentialProviderRequest', name: 'DeleteOauth2CredentialProviderRequest')
    DeleteOauth2CredentialProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteOauth2CredentialProviderResponse', name: 'DeleteOauth2CredentialProviderResponse')
    DeleteWorkloadIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteWorkloadIdentityRequest', name: 'DeleteWorkloadIdentityRequest')
    DeleteWorkloadIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DeleteWorkloadIdentityResponse', name: 'DeleteWorkloadIdentityResponse')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    DiscoveryUrl = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DiscoveryUrl', name: 'DiscoveryUrl', traits: {"smithy.api#pattern" => "^.+/\\.well-known/openid-configuration$"})
    DiscoveryUrlType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#DiscoveryUrlType', name: 'DiscoveryUrlType', traits: {"smithy.api#pattern" => "^.+/\\.well-known/openid-configuration$"})
    EncryptionFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#EncryptionFailure', name: 'EncryptionFailure', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#EndpointName', name: 'EndpointName', traits: {"smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]{0,47}$", "smithy.api#sensitive" => {}})
    EnvironmentVariableKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#EnvironmentVariableKey', name: 'EnvironmentVariableKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    EnvironmentVariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#EnvironmentVariableValue', name: 'EnvironmentVariableValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 5000}})
    EnvironmentVariablesMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#EnvironmentVariablesMap', name: 'EnvironmentVariablesMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    ExceptionLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ExceptionLevel', name: 'ExceptionLevel')
    ExtractionConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ExtractionConfiguration', name: 'ExtractionConfiguration')
    GatewayApiKeyCredentialProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GatewayApiKeyCredentialProvider', name: 'GatewayApiKeyCredentialProvider')
    GatewayArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GatewayArn', name: 'GatewayArn', traits: {"aws.api#arnReference" => {"type" => "AWS::BedrockAgentCore::Gateway"}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):bedrock-agentcore:[a-z0-9-]{1,20}:[0-9]{12}:gateway/[0-9a-zA-Z]{10}$"})
    GatewayDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GatewayDescription', name: 'GatewayDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    GatewayId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GatewayId', name: 'GatewayId', traits: {"smithy.api#pattern" => "^([0-9a-z][-]?){1,100}-[0-9a-z]{10}$"})
    GatewayIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GatewayIdentifier', name: 'GatewayIdentifier', traits: {"smithy.api#pattern" => "^([0-9a-z][-]?){1,100}-[0-9a-z]{10}$"})
    GatewayMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GatewayMaxResults', name: 'GatewayMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    GatewayName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GatewayName', name: 'GatewayName', traits: {"smithy.api#pattern" => "^([0-9a-zA-Z][-]?){1,100}$", "smithy.api#sensitive" => {}})
    GatewayNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GatewayNextToken', name: 'GatewayNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S*$"})
    GatewayProtocolConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GatewayProtocolConfiguration', name: 'GatewayProtocolConfiguration')
    GatewayProtocolType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GatewayProtocolType', name: 'GatewayProtocolType')
    GatewayStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GatewayStatus', name: 'GatewayStatus')
    GatewaySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GatewaySummaries', name: 'GatewaySummaries')
    GatewaySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GatewaySummary', name: 'GatewaySummary')
    GatewayUrl = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GatewayUrl', name: 'GatewayUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    GetAgentRuntimeEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetAgentRuntimeEndpointRequest', name: 'GetAgentRuntimeEndpointRequest')
    GetAgentRuntimeEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetAgentRuntimeEndpointResponse', name: 'GetAgentRuntimeEndpointResponse')
    GetAgentRuntimeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetAgentRuntimeRequest', name: 'GetAgentRuntimeRequest')
    GetAgentRuntimeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetAgentRuntimeResponse', name: 'GetAgentRuntimeResponse')
    GetApiKeyCredentialProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetApiKeyCredentialProviderRequest', name: 'GetApiKeyCredentialProviderRequest')
    GetApiKeyCredentialProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetApiKeyCredentialProviderResponse', name: 'GetApiKeyCredentialProviderResponse')
    GetBrowserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetBrowserRequest', name: 'GetBrowserRequest')
    GetBrowserResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetBrowserResponse', name: 'GetBrowserResponse')
    GetCodeInterpreterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetCodeInterpreterRequest', name: 'GetCodeInterpreterRequest')
    GetCodeInterpreterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetCodeInterpreterResponse', name: 'GetCodeInterpreterResponse')
    GetGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetGatewayRequest', name: 'GetGatewayRequest')
    GetGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetGatewayResponse', name: 'GetGatewayResponse')
    GetGatewayTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetGatewayTargetRequest', name: 'GetGatewayTargetRequest')
    GetGatewayTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetGatewayTargetResponse', name: 'GetGatewayTargetResponse')
    GetMemoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetMemoryInput', name: 'GetMemoryInput')
    GetMemoryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetMemoryOutput', name: 'GetMemoryOutput')
    GetOauth2CredentialProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetOauth2CredentialProviderRequest', name: 'GetOauth2CredentialProviderRequest')
    GetOauth2CredentialProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetOauth2CredentialProviderResponse', name: 'GetOauth2CredentialProviderResponse')
    GetTokenVaultRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetTokenVaultRequest', name: 'GetTokenVaultRequest')
    GetTokenVaultResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetTokenVaultResponse', name: 'GetTokenVaultResponse')
    GetWorkloadIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetWorkloadIdentityRequest', name: 'GetWorkloadIdentityRequest')
    GetWorkloadIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GetWorkloadIdentityResponse', name: 'GetWorkloadIdentityResponse')
    GithubOauth2ProviderConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GithubOauth2ProviderConfigInput', name: 'GithubOauth2ProviderConfigInput')
    GithubOauth2ProviderConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GithubOauth2ProviderConfigOutput', name: 'GithubOauth2ProviderConfigOutput')
    GoogleOauth2ProviderConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GoogleOauth2ProviderConfigInput', name: 'GoogleOauth2ProviderConfigInput')
    GoogleOauth2ProviderConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#GoogleOauth2ProviderConfigOutput', name: 'GoogleOauth2ProviderConfigOutput')
    InlinePayload = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#InlinePayload', name: 'InlinePayload', traits: {"smithy.api#sensitive" => {}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IssuerUrlType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#IssuerUrlType', name: 'IssuerUrlType')
    KeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#KeyType', name: 'KeyType')
    KmsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#KmsConfiguration', name: 'KmsConfiguration')
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$"})
    LambdaFunctionArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#LambdaFunctionArn', name: 'LambdaFunctionArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 170}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:([a-z]{2}(-gov)?-[a-z]+-\\d{1}):(\\d{12}):function:([a-zA-Z0-9-_.]+)(:(\\$LATEST|[a-zA-Z0-9-]+))?$"})
    ListAgentRuntimeEndpointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListAgentRuntimeEndpointsRequest', name: 'ListAgentRuntimeEndpointsRequest')
    ListAgentRuntimeEndpointsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListAgentRuntimeEndpointsResponse', name: 'ListAgentRuntimeEndpointsResponse')
    ListAgentRuntimeVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListAgentRuntimeVersionsRequest', name: 'ListAgentRuntimeVersionsRequest')
    ListAgentRuntimeVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListAgentRuntimeVersionsResponse', name: 'ListAgentRuntimeVersionsResponse')
    ListAgentRuntimesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListAgentRuntimesRequest', name: 'ListAgentRuntimesRequest')
    ListAgentRuntimesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListAgentRuntimesResponse', name: 'ListAgentRuntimesResponse')
    ListApiKeyCredentialProvidersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListApiKeyCredentialProvidersRequest', name: 'ListApiKeyCredentialProvidersRequest')
    ListApiKeyCredentialProvidersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListApiKeyCredentialProvidersResponse', name: 'ListApiKeyCredentialProvidersResponse')
    ListBrowsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListBrowsersRequest', name: 'ListBrowsersRequest')
    ListBrowsersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListBrowsersResponse', name: 'ListBrowsersResponse')
    ListCodeInterpretersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListCodeInterpretersRequest', name: 'ListCodeInterpretersRequest')
    ListCodeInterpretersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListCodeInterpretersResponse', name: 'ListCodeInterpretersResponse')
    ListGatewayTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListGatewayTargetsRequest', name: 'ListGatewayTargetsRequest')
    ListGatewayTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListGatewayTargetsResponse', name: 'ListGatewayTargetsResponse')
    ListGatewaysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListGatewaysRequest', name: 'ListGatewaysRequest')
    ListGatewaysResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListGatewaysResponse', name: 'ListGatewaysResponse')
    ListMemoriesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListMemoriesInput', name: 'ListMemoriesInput')
    ListMemoriesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListMemoriesOutput', name: 'ListMemoriesOutput')
    ListOauth2CredentialProvidersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListOauth2CredentialProvidersRequest', name: 'ListOauth2CredentialProvidersRequest')
    ListOauth2CredentialProvidersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListOauth2CredentialProvidersResponse', name: 'ListOauth2CredentialProvidersResponse')
    ListWorkloadIdentitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListWorkloadIdentitiesRequest', name: 'ListWorkloadIdentitiesRequest')
    ListWorkloadIdentitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ListWorkloadIdentitiesResponse', name: 'ListWorkloadIdentitiesResponse')
    MCPGatewayConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MCPGatewayConfiguration', name: 'MCPGatewayConfiguration')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    McpInstructions = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#McpInstructions', name: 'McpInstructions', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    McpLambdaTargetConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#McpLambdaTargetConfiguration', name: 'McpLambdaTargetConfiguration')
    McpSupportedVersions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#McpSupportedVersions', name: 'McpSupportedVersions')
    McpTargetConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#McpTargetConfiguration', name: 'McpTargetConfiguration')
    McpVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#McpVersion', name: 'McpVersion', traits: {"smithy.api#default" => "2025-03-26"})
    Memory = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#Memory', name: 'Memory')
    MemoryArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MemoryArn', name: 'MemoryArn', traits: {"aws.api#arnReference" => {"type" => "AWS::BedrockAgentCore::Memory"}, "smithy.api#pattern" => "^arn:aws:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:memory\\/[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"})
    MemoryId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MemoryId', name: 'MemoryId', traits: {"smithy.api#length" => {"min" => 12}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"})
    MemoryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MemoryStatus', name: 'MemoryStatus')
    MemoryStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MemoryStrategy', name: 'MemoryStrategy')
    MemoryStrategyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MemoryStrategyId', name: 'MemoryStrategyId', traits: {"smithy.api#length" => {"min" => 12}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"})
    MemoryStrategyInput = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MemoryStrategyInput', name: 'MemoryStrategyInput')
    MemoryStrategyInputList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MemoryStrategyInputList', name: 'MemoryStrategyInputList')
    MemoryStrategyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MemoryStrategyList', name: 'MemoryStrategyList')
    MemoryStrategyStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MemoryStrategyStatus', name: 'MemoryStrategyStatus')
    MemoryStrategyType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MemoryStrategyType', name: 'MemoryStrategyType')
    MemorySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MemorySummary', name: 'MemorySummary')
    MemorySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MemorySummaryList', name: 'MemorySummaryList')
    MicrosoftOauth2ProviderConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MicrosoftOauth2ProviderConfigInput', name: 'MicrosoftOauth2ProviderConfigInput')
    MicrosoftOauth2ProviderConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#MicrosoftOauth2ProviderConfigOutput', name: 'MicrosoftOauth2ProviderConfigOutput')
    ModifyConsolidationConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ModifyConsolidationConfiguration', name: 'ModifyConsolidationConfiguration')
    ModifyExtractionConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ModifyExtractionConfiguration', name: 'ModifyExtractionConfiguration')
    ModifyMemoryStrategies = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ModifyMemoryStrategies', name: 'ModifyMemoryStrategies')
    ModifyMemoryStrategiesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ModifyMemoryStrategiesList', name: 'ModifyMemoryStrategiesList')
    ModifyMemoryStrategyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ModifyMemoryStrategyInput', name: 'ModifyMemoryStrategyInput')
    ModifyStrategyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ModifyStrategyConfiguration', name: 'ModifyStrategyConfiguration')
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#Name', name: 'Name', traits: {"smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]{0,47}$"})
    Namespace = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#Namespace', name: 'Namespace', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_\\/]*(\\{(actorId|sessionId|memoryStrategyId)\\}[a-zA-Z0-9\\-_\\/]*)*$"})
    NamespacesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#NamespacesList', name: 'NamespacesList', traits: {"smithy.api#length" => {"min" => 1}})
    NetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#NetworkConfiguration', name: 'NetworkConfiguration')
    NetworkMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#NetworkMode', name: 'NetworkMode')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S*$"})
    NonBlankString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#NonBlankString', name: 'NonBlankString', traits: {"smithy.api#pattern" => "^[\\s\\S]+$"})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1}})
    OAuthCredentialProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#OAuthCredentialProvider', name: 'OAuthCredentialProvider')
    OAuthCredentialProviderArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#OAuthCredentialProviderArn', name: 'OAuthCredentialProviderArn', traits: {"smithy.api#pattern" => "^arn:([^:]*):([^:]*):([^:]*):([0-9]{12})?:(.+)$"})
    OAuthCustomParameters = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#OAuthCustomParameters', name: 'OAuthCustomParameters', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OAuthCustomParametersKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#OAuthCustomParametersKey', name: 'OAuthCustomParametersKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    OAuthCustomParametersValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#OAuthCustomParametersValue', name: 'OAuthCustomParametersValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    OAuthScope = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#OAuthScope', name: 'OAuthScope', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    OAuthScopes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#OAuthScopes', name: 'OAuthScopes', traits: {"smithy.api#length" => {"max" => 100}})
    Oauth2AuthorizationServerMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#Oauth2AuthorizationServerMetadata', name: 'Oauth2AuthorizationServerMetadata')
    Oauth2CredentialProviderItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#Oauth2CredentialProviderItem', name: 'Oauth2CredentialProviderItem')
    Oauth2CredentialProviders = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#Oauth2CredentialProviders', name: 'Oauth2CredentialProviders')
    Oauth2Discovery = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#Oauth2Discovery', name: 'Oauth2Discovery')
    Oauth2ProviderConfigInput = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#Oauth2ProviderConfigInput', name: 'Oauth2ProviderConfigInput')
    Oauth2ProviderConfigOutput = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#Oauth2ProviderConfigOutput', name: 'Oauth2ProviderConfigOutput')
    OverrideType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#OverrideType', name: 'OverrideType')
    Prompt = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#Prompt', name: 'Prompt', traits: {"smithy.api#length" => {"min" => 1, "max" => 30000}, "smithy.api#sensitive" => {}})
    ProtocolConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ProtocolConfiguration', name: 'ProtocolConfiguration')
    RecordingConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#RecordingConfig', name: 'RecordingConfig')
    RequiredProperties = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#RequiredProperties', name: 'RequiredProperties')
    ResourceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ResourceLimitExceededException', name: 'ResourceLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceOauth2ReturnUrlListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ResourceOauth2ReturnUrlListType', name: 'ResourceOauth2ReturnUrlListType')
    ResourceOauth2ReturnUrlType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ResourceOauth2ReturnUrlType', name: 'ResourceOauth2ReturnUrlType', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\w+:(\\/?\\/?)[^\\s]+$"})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ResourceType', name: 'ResourceType')
    ResponseListType = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ResponseListType', name: 'ResponseListType')
    ResponseType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ResponseType', name: 'ResponseType')
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::([0-9]{12})?:role/.+$"})
    RuntimeContainerUri = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#RuntimeContainerUri', name: 'RuntimeContainerUri', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\d{12}\\.dkr\\.ecr\\.([a-z0-9-]+)\\.amazonaws\\.com/((?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*)([:@]\\S+)$"})
    S3BucketUri = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#S3BucketUri', name: 'S3BucketUri', traits: {"smithy.api#pattern" => "^s3://.{1,2043}$"})
    S3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#S3Configuration', name: 'S3Configuration')
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#S3Location', name: 'S3Location')
    SalesforceOauth2ProviderConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SalesforceOauth2ProviderConfigInput', name: 'SalesforceOauth2ProviderConfigInput')
    SalesforceOauth2ProviderConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SalesforceOauth2ProviderConfigOutput', name: 'SalesforceOauth2ProviderConfigOutput')
    SandboxName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SandboxName', name: 'SandboxName', traits: {"smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9_]{0,47}$"})
    SchemaDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SchemaDefinition', name: 'SchemaDefinition')
    SchemaProperties = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SchemaProperties', name: 'SchemaProperties')
    SchemaType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SchemaType', name: 'SchemaType')
    SearchType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SearchType', name: 'SearchType')
    Secret = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#Secret', name: 'Secret')
    SecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SecretArn', name: 'SecretArn', traits: {"smithy.api#pattern" => "^arn:(aws|aws-us-gov):secretsmanager:[A-Za-z0-9-]{1,64}:[0-9]{12}:secret:[a-zA-Z0-9-_/+=.@!]+$"})
    SemanticConsolidationOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SemanticConsolidationOverride', name: 'SemanticConsolidationOverride')
    SemanticExtractionOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SemanticExtractionOverride', name: 'SemanticExtractionOverride')
    SemanticMemoryStrategyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SemanticMemoryStrategyInput', name: 'SemanticMemoryStrategyInput')
    SemanticOverrideConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SemanticOverrideConfigurationInput', name: 'SemanticOverrideConfigurationInput')
    SemanticOverrideConsolidationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SemanticOverrideConsolidationConfigurationInput', name: 'SemanticOverrideConsolidationConfigurationInput')
    SemanticOverrideExtractionConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SemanticOverrideExtractionConfigurationInput', name: 'SemanticOverrideExtractionConfigurationInput')
    ServerProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ServerProtocol', name: 'ServerProtocol')
    ServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ServiceException', name: 'ServiceException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SetTokenVaultCMKRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SetTokenVaultCMKRequest', name: 'SetTokenVaultCMKRequest')
    SetTokenVaultCMKResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SetTokenVaultCMKResponse', name: 'SetTokenVaultCMKResponse')
    SlackOauth2ProviderConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SlackOauth2ProviderConfigInput', name: 'SlackOauth2ProviderConfigInput')
    SlackOauth2ProviderConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SlackOauth2ProviderConfigOutput', name: 'SlackOauth2ProviderConfigOutput')
    StatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#StatusReason', name: 'StatusReason', traits: {"smithy.api#length" => {"max" => 2048}})
    StatusReasons = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#StatusReasons', name: 'StatusReasons', traits: {"smithy.api#length" => {"max" => 100}})
    StrategyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#StrategyConfiguration', name: 'StrategyConfiguration')
    SummaryConsolidationOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SummaryConsolidationOverride', name: 'SummaryConsolidationOverride')
    SummaryMemoryStrategyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SummaryMemoryStrategyInput', name: 'SummaryMemoryStrategyInput')
    SummaryOverrideConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SummaryOverrideConfigurationInput', name: 'SummaryOverrideConfigurationInput')
    SummaryOverrideConsolidationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#SummaryOverrideConsolidationConfigurationInput', name: 'SummaryOverrideConsolidationConfigurationInput')
    TargetConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#TargetConfiguration', name: 'TargetConfiguration')
    TargetDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#TargetDescription', name: 'TargetDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#sensitive" => {}})
    TargetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#TargetId', name: 'TargetId', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z]{10}$"})
    TargetMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#TargetMaxResults', name: 'TargetMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    TargetName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#TargetName', name: 'TargetName', traits: {"smithy.api#pattern" => "^([0-9a-zA-Z][-]?){1,100}$", "smithy.api#sensitive" => {}})
    TargetNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#TargetNextToken', name: 'TargetNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S*$"})
    TargetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#TargetStatus', name: 'TargetStatus')
    TargetSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#TargetSummaries', name: 'TargetSummaries')
    TargetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#TargetSummary', name: 'TargetSummary')
    ThrottledException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ThrottledException', name: 'ThrottledException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TokenEndpointType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#TokenEndpointType', name: 'TokenEndpointType')
    TokenVaultIdType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#TokenVaultIdType', name: 'TokenVaultIdType', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_]+$"})
    ToolDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ToolDefinition', name: 'ToolDefinition')
    ToolDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ToolDefinitions', name: 'ToolDefinitions')
    ToolSchema = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ToolSchema', name: 'ToolSchema')
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UpdateAgentRuntimeEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateAgentRuntimeEndpointRequest', name: 'UpdateAgentRuntimeEndpointRequest')
    UpdateAgentRuntimeEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateAgentRuntimeEndpointResponse', name: 'UpdateAgentRuntimeEndpointResponse')
    UpdateAgentRuntimeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateAgentRuntimeRequest', name: 'UpdateAgentRuntimeRequest')
    UpdateAgentRuntimeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateAgentRuntimeResponse', name: 'UpdateAgentRuntimeResponse')
    UpdateApiKeyCredentialProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateApiKeyCredentialProviderRequest', name: 'UpdateApiKeyCredentialProviderRequest')
    UpdateApiKeyCredentialProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateApiKeyCredentialProviderResponse', name: 'UpdateApiKeyCredentialProviderResponse')
    UpdateGatewayRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateGatewayRequest', name: 'UpdateGatewayRequest')
    UpdateGatewayResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateGatewayResponse', name: 'UpdateGatewayResponse')
    UpdateGatewayTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateGatewayTargetRequest', name: 'UpdateGatewayTargetRequest')
    UpdateGatewayTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateGatewayTargetResponse', name: 'UpdateGatewayTargetResponse')
    UpdateMemoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateMemoryInput', name: 'UpdateMemoryInput')
    UpdateMemoryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateMemoryOutput', name: 'UpdateMemoryOutput')
    UpdateOauth2CredentialProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateOauth2CredentialProviderRequest', name: 'UpdateOauth2CredentialProviderRequest')
    UpdateOauth2CredentialProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateOauth2CredentialProviderResponse', name: 'UpdateOauth2CredentialProviderResponse')
    UpdateWorkloadIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateWorkloadIdentityRequest', name: 'UpdateWorkloadIdentityRequest')
    UpdateWorkloadIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UpdateWorkloadIdentityResponse', name: 'UpdateWorkloadIdentityResponse')
    UserPreferenceConsolidationOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UserPreferenceConsolidationOverride', name: 'UserPreferenceConsolidationOverride')
    UserPreferenceExtractionOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UserPreferenceExtractionOverride', name: 'UserPreferenceExtractionOverride')
    UserPreferenceMemoryStrategyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UserPreferenceMemoryStrategyInput', name: 'UserPreferenceMemoryStrategyInput')
    UserPreferenceOverrideConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UserPreferenceOverrideConfigurationInput', name: 'UserPreferenceOverrideConfigurationInput')
    UserPreferenceOverrideConsolidationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UserPreferenceOverrideConsolidationConfigurationInput', name: 'UserPreferenceOverrideConsolidationConfigurationInput')
    UserPreferenceOverrideExtractionConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#UserPreferenceOverrideExtractionConfigurationInput', name: 'UserPreferenceOverrideExtractionConfigurationInput')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#ValidationExceptionReason', name: 'ValidationExceptionReason')
    WorkloadIdentityArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#WorkloadIdentityArn', name: 'WorkloadIdentityArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    WorkloadIdentityArnType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#WorkloadIdentityArnType', name: 'WorkloadIdentityArnType', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    WorkloadIdentityDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#WorkloadIdentityDetails', name: 'WorkloadIdentityDetails')
    WorkloadIdentityList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#WorkloadIdentityList', name: 'WorkloadIdentityList')
    WorkloadIdentityNameType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#WorkloadIdentityNameType', name: 'WorkloadIdentityNameType', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9_.-]+$"})
    WorkloadIdentityType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.bedrockagentcorecontrol#WorkloadIdentityType', name: 'WorkloadIdentityType')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    Agent.add_member(:agent_runtime_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeArn, location_name: 'agentRuntimeArn', traits: {"smithy.api#required" => {}}))
    Agent.add_member(:agent_runtime_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: 'agentRuntimeId', traits: {"smithy.api#required" => {}}))
    Agent.add_member(:agent_runtime_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: 'agentRuntimeVersion', traits: {"smithy.api#required" => {}}))
    Agent.add_member(:agent_runtime_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeName, location_name: 'agentRuntimeName', traits: {"smithy.api#required" => {}}))
    Agent.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#required" => {}}))
    Agent.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#required" => {}}))
    Agent.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    Agent.type = Types::Agent
    AgentArtifact.add_member(:container_configuration, Types::AgentArtifact::ContainerConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerConfiguration, location_name: 'containerConfiguration'))
    AgentArtifact.add_member(:unknown, Types::AgentArtifact::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AgentArtifact.type = Types::AgentArtifact
    AgentEndpoint.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AgentEndpoint.add_member(:live_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: 'liveVersion'))
    AgentEndpoint.add_member(:target_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: 'targetVersion'))
    AgentEndpoint.add_member(:agent_runtime_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeEndpointArn, location_name: 'agentRuntimeEndpointArn', traits: {"smithy.api#required" => {}}))
    AgentEndpoint.add_member(:agent_runtime_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeArn, location_name: 'agentRuntimeArn', traits: {"smithy.api#required" => {}}))
    AgentEndpoint.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentEndpointStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    AgentEndpoint.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeEndpointId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    AgentEndpoint.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentEndpointDescription, location_name: 'description'))
    AgentEndpoint.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    AgentEndpoint.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#required" => {}}))
    AgentEndpoint.type = Types::AgentEndpoint
    AgentEndpointStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    AgentEndpointStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    AgentEndpointStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    AgentEndpointStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    AgentEndpointStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    AgentEndpointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    AgentEndpoints.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentEndpoint)
    AgentStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    AgentStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    AgentStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    AgentStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    AgentStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    AgentStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    Agents.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Agent)
    AllowedAudienceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedAudience)
    AllowedClientsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedClient)
    ApiKeyCredentialLocation.add_member(:header, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEADER', traits: {"smithy.api#enumValue" => "HEADER"}))
    ApiKeyCredentialLocation.add_member(:query_parameter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUERY_PARAMETER', traits: {"smithy.api#enumValue" => "QUERY_PARAMETER"}))
    ApiKeyCredentialProviderItem.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ApiKeyCredentialProviderItem.add_member(:credential_provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyCredentialProviderArnType, location_name: 'credentialProviderArn', traits: {"smithy.api#required" => {}}))
    ApiKeyCredentialProviderItem.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    ApiKeyCredentialProviderItem.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#required" => {}}))
    ApiKeyCredentialProviderItem.type = Types::ApiKeyCredentialProviderItem
    ApiKeyCredentialProviders.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyCredentialProviderItem)
    ApiSchemaConfiguration.add_member(:s3, Types::ApiSchemaConfiguration::S3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Configuration, location_name: 's3'))
    ApiSchemaConfiguration.add_member(:inline_payload, Types::ApiSchemaConfiguration::InlinePayload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InlinePayload, location_name: 'inlinePayload'))
    ApiSchemaConfiguration.add_member(:unknown, Types::ApiSchemaConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ApiSchemaConfiguration.type = Types::ApiSchemaConfiguration
    AuthorizerConfiguration.add_member(:custom_jwt_authorizer, Types::AuthorizerConfiguration::CustomJWTAuthorizer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomJWTAuthorizerConfiguration, location_name: 'customJWTAuthorizer'))
    AuthorizerConfiguration.add_member(:unknown, Types::AuthorizerConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AuthorizerConfiguration.type = Types::AuthorizerConfiguration
    AuthorizerType.add_member(:custom_jwt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_JWT', traits: {"smithy.api#enumValue" => "CUSTOM_JWT"}))
    BrowserNetworkConfiguration.add_member(:network_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserNetworkMode, location_name: 'networkMode', traits: {"smithy.api#default" => "PUBLIC", "smithy.api#required" => {}}))
    BrowserNetworkConfiguration.type = Types::BrowserNetworkConfiguration
    BrowserNetworkMode.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC', traits: {"smithy.api#enumValue" => "PUBLIC"}))
    BrowserStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    BrowserStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    BrowserStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    BrowserStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    BrowserStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    BrowserStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    BrowserSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSummary)
    BrowserSummary.add_member(:browser_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserId, location_name: 'browserId', traits: {"smithy.api#required" => {}}))
    BrowserSummary.add_member(:browser_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserArn, location_name: 'browserArn', traits: {"smithy.api#required" => {}}))
    BrowserSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SandboxName, location_name: 'name'))
    BrowserSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    BrowserSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    BrowserSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    BrowserSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt'))
    BrowserSummary.type = Types::BrowserSummary
    CodeInterpreterNetworkConfiguration.add_member(:network_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterNetworkMode, location_name: 'networkMode', traits: {"smithy.api#default" => "SANDBOX", "smithy.api#required" => {}}))
    CodeInterpreterNetworkConfiguration.type = Types::CodeInterpreterNetworkConfiguration
    CodeInterpreterNetworkMode.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC', traits: {"smithy.api#enumValue" => "PUBLIC"}))
    CodeInterpreterNetworkMode.add_member(:sandbox, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SANDBOX', traits: {"smithy.api#enumValue" => "SANDBOX"}))
    CodeInterpreterStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    CodeInterpreterStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    CodeInterpreterStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    CodeInterpreterStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    CodeInterpreterStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    CodeInterpreterStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    CodeInterpreterSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSummary)
    CodeInterpreterSummary.add_member(:code_interpreter_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterId, location_name: 'codeInterpreterId', traits: {"smithy.api#required" => {}}))
    CodeInterpreterSummary.add_member(:code_interpreter_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterArn, location_name: 'codeInterpreterArn', traits: {"smithy.api#required" => {}}))
    CodeInterpreterSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SandboxName, location_name: 'name'))
    CodeInterpreterSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CodeInterpreterSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CodeInterpreterSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    CodeInterpreterSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt'))
    CodeInterpreterSummary.type = Types::CodeInterpreterSummary
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    ConsolidationConfiguration.add_member(:custom_consolidation_configuration, Types::ConsolidationConfiguration::CustomConsolidationConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomConsolidationConfiguration, location_name: 'customConsolidationConfiguration'))
    ConsolidationConfiguration.add_member(:unknown, Types::ConsolidationConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConsolidationConfiguration.type = Types::ConsolidationConfiguration
    ContainerConfiguration.add_member(:container_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeContainerUri, location_name: 'containerUri', traits: {"smithy.api#required" => {}}))
    ContainerConfiguration.type = Types::ContainerConfiguration
    CreateAgentRuntimeEndpointRequest.add_member(:agent_runtime_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: 'agentRuntimeId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAgentRuntimeEndpointRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateAgentRuntimeEndpointRequest.add_member(:agent_runtime_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: 'agentRuntimeVersion'))
    CreateAgentRuntimeEndpointRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentEndpointDescription, location_name: 'description'))
    CreateAgentRuntimeEndpointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAgentRuntimeEndpointRequest.type = Types::CreateAgentRuntimeEndpointRequest
    CreateAgentRuntimeEndpointResponse.add_member(:target_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: 'targetVersion', traits: {"smithy.api#required" => {}}))
    CreateAgentRuntimeEndpointResponse.add_member(:agent_runtime_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeEndpointArn, location_name: 'agentRuntimeEndpointArn', traits: {"smithy.api#required" => {}}))
    CreateAgentRuntimeEndpointResponse.add_member(:agent_runtime_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeArn, location_name: 'agentRuntimeArn', traits: {"smithy.api#required" => {}}))
    CreateAgentRuntimeEndpointResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentEndpointStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateAgentRuntimeEndpointResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    CreateAgentRuntimeEndpointResponse.type = Types::CreateAgentRuntimeEndpointResponse
    CreateAgentRuntimeRequest.add_member(:agent_runtime_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeName, location_name: 'agentRuntimeName', traits: {"smithy.api#required" => {}}))
    CreateAgentRuntimeRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateAgentRuntimeRequest.add_member(:agent_runtime_artifact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArtifact, location_name: 'agentRuntimeArtifact', traits: {"smithy.api#required" => {}}))
    CreateAgentRuntimeRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    CreateAgentRuntimeRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'networkConfiguration', traits: {"smithy.api#required" => {}}))
    CreateAgentRuntimeRequest.add_member(:protocol_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolConfiguration, location_name: 'protocolConfiguration'))
    CreateAgentRuntimeRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAgentRuntimeRequest.add_member(:environment_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: 'environmentVariables'))
    CreateAgentRuntimeRequest.add_member(:authorizer_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: 'authorizerConfiguration'))
    CreateAgentRuntimeRequest.type = Types::CreateAgentRuntimeRequest
    CreateAgentRuntimeResponse.add_member(:agent_runtime_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeArn, location_name: 'agentRuntimeArn', traits: {"smithy.api#required" => {}}))
    CreateAgentRuntimeResponse.add_member(:workload_identity_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: 'workloadIdentityDetails'))
    CreateAgentRuntimeResponse.add_member(:agent_runtime_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: 'agentRuntimeId', traits: {"smithy.api#required" => {}}))
    CreateAgentRuntimeResponse.add_member(:agent_runtime_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: 'agentRuntimeVersion', traits: {"smithy.api#required" => {}}))
    CreateAgentRuntimeResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    CreateAgentRuntimeResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateAgentRuntimeResponse.type = Types::CreateAgentRuntimeResponse
    CreateApiKeyCredentialProviderRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateApiKeyCredentialProviderRequest.add_member(:api_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyType, location_name: 'apiKey', traits: {"smithy.api#required" => {}}))
    CreateApiKeyCredentialProviderRequest.type = Types::CreateApiKeyCredentialProviderRequest
    CreateApiKeyCredentialProviderResponse.add_member(:api_key_secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Secret, location_name: 'apiKeySecretArn', traits: {"smithy.api#property" => {}, "smithy.api#required" => {}}))
    CreateApiKeyCredentialProviderResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateApiKeyCredentialProviderResponse.add_member(:credential_provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyCredentialProviderArnType, location_name: 'credentialProviderArn', traits: {"smithy.api#required" => {}}))
    CreateApiKeyCredentialProviderResponse.type = Types::CreateApiKeyCredentialProviderResponse
    CreateBrowserRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SandboxName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateBrowserRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateBrowserRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'executionRoleArn'))
    CreateBrowserRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserNetworkConfiguration, location_name: 'networkConfiguration', traits: {"smithy.api#required" => {}}))
    CreateBrowserRequest.add_member(:recording, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfig, location_name: 'recording'))
    CreateBrowserRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBrowserRequest.type = Types::CreateBrowserRequest
    CreateBrowserResponse.add_member(:browser_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserId, location_name: 'browserId', traits: {"smithy.api#required" => {}}))
    CreateBrowserResponse.add_member(:browser_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserArn, location_name: 'browserArn', traits: {"smithy.api#required" => {}}))
    CreateBrowserResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    CreateBrowserResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateBrowserResponse.type = Types::CreateBrowserResponse
    CreateCodeInterpreterRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SandboxName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateCodeInterpreterRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateCodeInterpreterRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'executionRoleArn'))
    CreateCodeInterpreterRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterNetworkConfiguration, location_name: 'networkConfiguration', traits: {"smithy.api#required" => {}}))
    CreateCodeInterpreterRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateCodeInterpreterRequest.type = Types::CreateCodeInterpreterRequest
    CreateCodeInterpreterResponse.add_member(:code_interpreter_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterId, location_name: 'codeInterpreterId', traits: {"smithy.api#required" => {}}))
    CreateCodeInterpreterResponse.add_member(:code_interpreter_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterArn, location_name: 'codeInterpreterArn', traits: {"smithy.api#required" => {}}))
    CreateCodeInterpreterResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    CreateCodeInterpreterResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateCodeInterpreterResponse.type = Types::CreateCodeInterpreterResponse
    CreateGatewayRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateGatewayRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayDescription, location_name: 'description'))
    CreateGatewayRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateGatewayRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    CreateGatewayRequest.add_member(:protocol_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayProtocolType, location_name: 'protocolType', traits: {"smithy.api#required" => {}}))
    CreateGatewayRequest.add_member(:protocol_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayProtocolConfiguration, location_name: 'protocolConfiguration'))
    CreateGatewayRequest.add_member(:authorizer_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerType, location_name: 'authorizerType', traits: {"smithy.api#required" => {}}))
    CreateGatewayRequest.add_member(:authorizer_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: 'authorizerConfiguration', traits: {"smithy.api#required" => {}}))
    CreateGatewayRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    CreateGatewayRequest.add_member(:exception_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionLevel, location_name: 'exceptionLevel'))
    CreateGatewayRequest.type = Types::CreateGatewayRequest
    CreateGatewayResponse.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'gatewayArn', traits: {"smithy.api#required" => {}}))
    CreateGatewayResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayId, location_name: 'gatewayId', traits: {"smithy.api#required" => {}}))
    CreateGatewayResponse.add_member(:gateway_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayUrl, location_name: 'gatewayUrl'))
    CreateGatewayResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    CreateGatewayResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    CreateGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateGatewayResponse.add_member(:status_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReasons, location_name: 'statusReasons'))
    CreateGatewayResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateGatewayResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayDescription, location_name: 'description'))
    CreateGatewayResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn'))
    CreateGatewayResponse.add_member(:protocol_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayProtocolType, location_name: 'protocolType', traits: {"smithy.api#required" => {}}))
    CreateGatewayResponse.add_member(:protocol_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayProtocolConfiguration, location_name: 'protocolConfiguration'))
    CreateGatewayResponse.add_member(:authorizer_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerType, location_name: 'authorizerType', traits: {"smithy.api#required" => {}}))
    CreateGatewayResponse.add_member(:authorizer_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: 'authorizerConfiguration'))
    CreateGatewayResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    CreateGatewayResponse.add_member(:workload_identity_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: 'workloadIdentityDetails'))
    CreateGatewayResponse.add_member(:exception_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionLevel, location_name: 'exceptionLevel'))
    CreateGatewayResponse.type = Types::CreateGatewayResponse
    CreateGatewayTargetRequest.add_member(:gateway_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayIdentifier, location_name: 'gatewayIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateGatewayTargetRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateGatewayTargetRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDescription, location_name: 'description'))
    CreateGatewayTargetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateGatewayTargetRequest.add_member(:target_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetConfiguration, location_name: 'targetConfiguration', traits: {"smithy.api#required" => {}}))
    CreateGatewayTargetRequest.add_member(:credential_provider_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderConfigurations, location_name: 'credentialProviderConfigurations', traits: {"smithy.api#required" => {}}))
    CreateGatewayTargetRequest.type = Types::CreateGatewayTargetRequest
    CreateGatewayTargetResponse.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'gatewayArn', traits: {"smithy.api#required" => {}}))
    CreateGatewayTargetResponse.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'targetId', traits: {"smithy.api#required" => {}}))
    CreateGatewayTargetResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    CreateGatewayTargetResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    CreateGatewayTargetResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    CreateGatewayTargetResponse.add_member(:status_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReasons, location_name: 'statusReasons'))
    CreateGatewayTargetResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateGatewayTargetResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDescription, location_name: 'description'))
    CreateGatewayTargetResponse.add_member(:target_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetConfiguration, location_name: 'targetConfiguration', traits: {"smithy.api#required" => {}}))
    CreateGatewayTargetResponse.add_member(:credential_provider_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderConfigurations, location_name: 'credentialProviderConfigurations', traits: {"smithy.api#required" => {}}))
    CreateGatewayTargetResponse.type = Types::CreateGatewayTargetResponse
    CreateMemoryInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"max" => 500}}))
    CreateMemoryInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateMemoryInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CreateMemoryInput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKeyArn'))
    CreateMemoryInput.add_member(:memory_execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'memoryExecutionRoleArn'))
    CreateMemoryInput.add_member(:event_expiry_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'eventExpiryDuration', traits: {"smithy.api#range" => {"min" => 7, "max" => 365}, "smithy.api#required" => {}}))
    CreateMemoryInput.add_member(:memory_strategies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStrategyInputList, location_name: 'memoryStrategies'))
    CreateMemoryInput.type = Types::CreateMemoryInput
    CreateMemoryOutput.add_member(:memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Memory, location_name: 'memory'))
    CreateMemoryOutput.type = Types::CreateMemoryOutput
    CreateOauth2CredentialProviderRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateOauth2CredentialProviderRequest.add_member(:credential_provider_vendor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderVendorType, location_name: 'credentialProviderVendor', traits: {"smithy.api#required" => {}}))
    CreateOauth2CredentialProviderRequest.add_member(:oauth2_provider_config_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2ProviderConfigInput, location_name: 'oauth2ProviderConfigInput', traits: {"smithy.api#required" => {}}))
    CreateOauth2CredentialProviderRequest.type = Types::CreateOauth2CredentialProviderRequest
    CreateOauth2CredentialProviderResponse.add_member(:client_secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Secret, location_name: 'clientSecretArn', traits: {"smithy.api#property" => {}, "smithy.api#required" => {}}))
    CreateOauth2CredentialProviderResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateOauth2CredentialProviderResponse.add_member(:credential_provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderArnType, location_name: 'credentialProviderArn', traits: {"smithy.api#required" => {}}))
    CreateOauth2CredentialProviderResponse.type = Types::CreateOauth2CredentialProviderResponse
    CreateWorkloadIdentityRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateWorkloadIdentityRequest.add_member(:allowed_resource_oauth2_return_urls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlListType, location_name: 'allowedResourceOauth2ReturnUrls'))
    CreateWorkloadIdentityRequest.type = Types::CreateWorkloadIdentityRequest
    CreateWorkloadIdentityResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateWorkloadIdentityResponse.add_member(:workload_identity_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityArnType, location_name: 'workloadIdentityArn', traits: {"smithy.api#required" => {}}))
    CreateWorkloadIdentityResponse.add_member(:allowed_resource_oauth2_return_urls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlListType, location_name: 'allowedResourceOauth2ReturnUrls'))
    CreateWorkloadIdentityResponse.type = Types::CreateWorkloadIdentityResponse
    CredentialProvider.add_member(:oauth_credential_provider, Types::CredentialProvider::OauthCredentialProvider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthCredentialProvider, location_name: 'oauthCredentialProvider'))
    CredentialProvider.add_member(:api_key_credential_provider, Types::CredentialProvider::ApiKeyCredentialProvider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayApiKeyCredentialProvider, location_name: 'apiKeyCredentialProvider'))
    CredentialProvider.add_member(:unknown, Types::CredentialProvider::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    CredentialProvider.type = Types::CredentialProvider
    CredentialProviderConfiguration.add_member(:credential_provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderType, location_name: 'credentialProviderType', traits: {"smithy.api#required" => {}}))
    CredentialProviderConfiguration.add_member(:credential_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProvider, location_name: 'credentialProvider'))
    CredentialProviderConfiguration.type = Types::CredentialProviderConfiguration
    CredentialProviderConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderConfiguration)
    CredentialProviderType.add_member(:gateway_iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GATEWAY_IAM_ROLE', traits: {"smithy.api#enumValue" => "GATEWAY_IAM_ROLE"}))
    CredentialProviderType.add_member(:oauth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OAUTH', traits: {"smithy.api#enumValue" => "OAUTH"}))
    CredentialProviderType.add_member(:api_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API_KEY', traits: {"smithy.api#enumValue" => "API_KEY"}))
    CredentialProviderVendorType.add_member(:google_oauth2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GoogleOauth2', traits: {"smithy.api#enumValue" => "GoogleOauth2"}))
    CredentialProviderVendorType.add_member(:github_oauth2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GithubOauth2', traits: {"smithy.api#enumValue" => "GithubOauth2"}))
    CredentialProviderVendorType.add_member(:slack_oauth2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SlackOauth2', traits: {"smithy.api#enumValue" => "SlackOauth2"}))
    CredentialProviderVendorType.add_member(:salesforce_oauth2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SalesforceOauth2', traits: {"smithy.api#enumValue" => "SalesforceOauth2"}))
    CredentialProviderVendorType.add_member(:microsoft_oauth2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MicrosoftOauth2', traits: {"smithy.api#enumValue" => "MicrosoftOauth2"}))
    CredentialProviderVendorType.add_member(:custom_oauth2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CustomOauth2', traits: {"smithy.api#enumValue" => "CustomOauth2"}))
    CustomConfigurationInput.add_member(:semantic_override, Types::CustomConfigurationInput::SemanticOverride, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SemanticOverrideConfigurationInput, location_name: 'semanticOverride'))
    CustomConfigurationInput.add_member(:summary_override, Types::CustomConfigurationInput::SummaryOverride, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummaryOverrideConfigurationInput, location_name: 'summaryOverride'))
    CustomConfigurationInput.add_member(:user_preference_override, Types::CustomConfigurationInput::UserPreferenceOverride, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPreferenceOverrideConfigurationInput, location_name: 'userPreferenceOverride'))
    CustomConfigurationInput.add_member(:unknown, Types::CustomConfigurationInput::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    CustomConfigurationInput.type = Types::CustomConfigurationInput
    CustomConsolidationConfiguration.add_member(:semantic_consolidation_override, Types::CustomConsolidationConfiguration::SemanticConsolidationOverride, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SemanticConsolidationOverride, location_name: 'semanticConsolidationOverride'))
    CustomConsolidationConfiguration.add_member(:summary_consolidation_override, Types::CustomConsolidationConfiguration::SummaryConsolidationOverride, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummaryConsolidationOverride, location_name: 'summaryConsolidationOverride'))
    CustomConsolidationConfiguration.add_member(:user_preference_consolidation_override, Types::CustomConsolidationConfiguration::UserPreferenceConsolidationOverride, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPreferenceConsolidationOverride, location_name: 'userPreferenceConsolidationOverride'))
    CustomConsolidationConfiguration.add_member(:unknown, Types::CustomConsolidationConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    CustomConsolidationConfiguration.type = Types::CustomConsolidationConfiguration
    CustomConsolidationConfigurationInput.add_member(:semantic_consolidation_override, Types::CustomConsolidationConfigurationInput::SemanticConsolidationOverride, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SemanticOverrideConsolidationConfigurationInput, location_name: 'semanticConsolidationOverride'))
    CustomConsolidationConfigurationInput.add_member(:summary_consolidation_override, Types::CustomConsolidationConfigurationInput::SummaryConsolidationOverride, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummaryOverrideConsolidationConfigurationInput, location_name: 'summaryConsolidationOverride'))
    CustomConsolidationConfigurationInput.add_member(:user_preference_consolidation_override, Types::CustomConsolidationConfigurationInput::UserPreferenceConsolidationOverride, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPreferenceOverrideConsolidationConfigurationInput, location_name: 'userPreferenceConsolidationOverride'))
    CustomConsolidationConfigurationInput.add_member(:unknown, Types::CustomConsolidationConfigurationInput::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    CustomConsolidationConfigurationInput.type = Types::CustomConsolidationConfigurationInput
    CustomExtractionConfiguration.add_member(:semantic_extraction_override, Types::CustomExtractionConfiguration::SemanticExtractionOverride, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SemanticExtractionOverride, location_name: 'semanticExtractionOverride'))
    CustomExtractionConfiguration.add_member(:user_preference_extraction_override, Types::CustomExtractionConfiguration::UserPreferenceExtractionOverride, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPreferenceExtractionOverride, location_name: 'userPreferenceExtractionOverride'))
    CustomExtractionConfiguration.add_member(:unknown, Types::CustomExtractionConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    CustomExtractionConfiguration.type = Types::CustomExtractionConfiguration
    CustomExtractionConfigurationInput.add_member(:semantic_extraction_override, Types::CustomExtractionConfigurationInput::SemanticExtractionOverride, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SemanticOverrideExtractionConfigurationInput, location_name: 'semanticExtractionOverride'))
    CustomExtractionConfigurationInput.add_member(:user_preference_extraction_override, Types::CustomExtractionConfigurationInput::UserPreferenceExtractionOverride, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPreferenceOverrideExtractionConfigurationInput, location_name: 'userPreferenceExtractionOverride'))
    CustomExtractionConfigurationInput.add_member(:unknown, Types::CustomExtractionConfigurationInput::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    CustomExtractionConfigurationInput.type = Types::CustomExtractionConfigurationInput
    CustomJWTAuthorizerConfiguration.add_member(:discovery_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoveryUrl, location_name: 'discoveryUrl', traits: {"smithy.api#required" => {}}))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_audience, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedAudienceList, location_name: 'allowedAudience'))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_clients, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedClientsList, location_name: 'allowedClients'))
    CustomJWTAuthorizerConfiguration.type = Types::CustomJWTAuthorizerConfiguration
    CustomMemoryStrategyInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CustomMemoryStrategyInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    CustomMemoryStrategyInput.add_member(:namespaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespacesList, location_name: 'namespaces'))
    CustomMemoryStrategyInput.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomConfigurationInput, location_name: 'configuration'))
    CustomMemoryStrategyInput.type = Types::CustomMemoryStrategyInput
    CustomOauth2ProviderConfigInput.add_member(:oauth_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2Discovery, location_name: 'oauthDiscovery', traits: {"smithy.api#required" => {}}))
    CustomOauth2ProviderConfigInput.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'clientId', traits: {"smithy.api#required" => {}}))
    CustomOauth2ProviderConfigInput.add_member(:client_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSecretType, location_name: 'clientSecret', traits: {"smithy.api#required" => {}}))
    CustomOauth2ProviderConfigInput.type = Types::CustomOauth2ProviderConfigInput
    CustomOauth2ProviderConfigOutput.add_member(:oauth_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2Discovery, location_name: 'oauthDiscovery', traits: {"smithy.api#required" => {}}))
    CustomOauth2ProviderConfigOutput.type = Types::CustomOauth2ProviderConfigOutput
    DecryptionFailure.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    DecryptionFailure.type = Types::DecryptionFailure
    DeleteAgentRuntimeEndpointRequest.add_member(:agent_runtime_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: 'agentRuntimeId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAgentRuntimeEndpointRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'endpointName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAgentRuntimeEndpointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAgentRuntimeEndpointRequest.type = Types::DeleteAgentRuntimeEndpointRequest
    DeleteAgentRuntimeEndpointResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentEndpointStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    DeleteAgentRuntimeEndpointResponse.type = Types::DeleteAgentRuntimeEndpointResponse
    DeleteAgentRuntimeRequest.add_member(:agent_runtime_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: 'agentRuntimeId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAgentRuntimeRequest.type = Types::DeleteAgentRuntimeRequest
    DeleteAgentRuntimeResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    DeleteAgentRuntimeResponse.type = Types::DeleteAgentRuntimeResponse
    DeleteApiKeyCredentialProviderRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteApiKeyCredentialProviderRequest.type = Types::DeleteApiKeyCredentialProviderRequest
    DeleteApiKeyCredentialProviderResponse.type = Types::DeleteApiKeyCredentialProviderResponse
    DeleteBrowserRequest.add_member(:browser_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserId, location_name: 'browserId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBrowserRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteBrowserRequest.type = Types::DeleteBrowserRequest
    DeleteBrowserResponse.add_member(:browser_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserId, location_name: 'browserId', traits: {"smithy.api#required" => {}}))
    DeleteBrowserResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    DeleteBrowserResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#required" => {}}))
    DeleteBrowserResponse.type = Types::DeleteBrowserResponse
    DeleteCodeInterpreterRequest.add_member(:code_interpreter_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterId, location_name: 'codeInterpreterId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCodeInterpreterRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteCodeInterpreterRequest.type = Types::DeleteCodeInterpreterRequest
    DeleteCodeInterpreterResponse.add_member(:code_interpreter_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterId, location_name: 'codeInterpreterId', traits: {"smithy.api#required" => {}}))
    DeleteCodeInterpreterResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    DeleteCodeInterpreterResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#required" => {}}))
    DeleteCodeInterpreterResponse.type = Types::DeleteCodeInterpreterResponse
    DeleteGatewayRequest.add_member(:gateway_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayIdentifier, location_name: 'gatewayIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGatewayRequest.type = Types::DeleteGatewayRequest
    DeleteGatewayResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayId, location_name: 'gatewayId', traits: {"smithy.api#required" => {}}))
    DeleteGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    DeleteGatewayResponse.add_member(:status_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReasons, location_name: 'statusReasons'))
    DeleteGatewayResponse.type = Types::DeleteGatewayResponse
    DeleteGatewayTargetRequest.add_member(:gateway_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayIdentifier, location_name: 'gatewayIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGatewayTargetRequest.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'targetId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGatewayTargetRequest.type = Types::DeleteGatewayTargetRequest
    DeleteGatewayTargetResponse.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'gatewayArn', traits: {"smithy.api#required" => {}}))
    DeleteGatewayTargetResponse.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'targetId', traits: {"smithy.api#required" => {}}))
    DeleteGatewayTargetResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    DeleteGatewayTargetResponse.add_member(:status_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReasons, location_name: 'statusReasons'))
    DeleteGatewayTargetResponse.type = Types::DeleteGatewayTargetResponse
    DeleteMemoryInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"max" => 500}}))
    DeleteMemoryInput.add_member(:memory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'memoryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMemoryInput.type = Types::DeleteMemoryInput
    DeleteMemoryOutput.add_member(:memory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'memoryId', traits: {"smithy.api#required" => {}}))
    DeleteMemoryOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStatus, location_name: 'status'))
    DeleteMemoryOutput.type = Types::DeleteMemoryOutput
    DeleteMemoryStrategiesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMemoryStrategyInput)
    DeleteMemoryStrategyInput.add_member(:memory_strategy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'memoryStrategyId', traits: {"smithy.api#required" => {}}))
    DeleteMemoryStrategyInput.type = Types::DeleteMemoryStrategyInput
    DeleteOauth2CredentialProviderRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteOauth2CredentialProviderRequest.type = Types::DeleteOauth2CredentialProviderRequest
    DeleteOauth2CredentialProviderResponse.type = Types::DeleteOauth2CredentialProviderResponse
    DeleteWorkloadIdentityRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, location_name: 'name', traits: {"smithy.api#required" => {}}))
    DeleteWorkloadIdentityRequest.type = Types::DeleteWorkloadIdentityRequest
    DeleteWorkloadIdentityResponse.type = Types::DeleteWorkloadIdentityResponse
    EncryptionFailure.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    EncryptionFailure.type = Types::EncryptionFailure
    EnvironmentVariablesMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableKey)
    EnvironmentVariablesMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableValue)
    ExceptionLevel.add_member(:debug, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEBUG', traits: {"smithy.api#enumValue" => "DEBUG"}))
    ExtractionConfiguration.add_member(:custom_extraction_configuration, Types::ExtractionConfiguration::CustomExtractionConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomExtractionConfiguration, location_name: 'customExtractionConfiguration'))
    ExtractionConfiguration.add_member(:unknown, Types::ExtractionConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ExtractionConfiguration.type = Types::ExtractionConfiguration
    GatewayApiKeyCredentialProvider.add_member(:provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyCredentialProviderArn, location_name: 'providerArn', traits: {"smithy.api#required" => {}}))
    GatewayApiKeyCredentialProvider.add_member(:credential_parameter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyCredentialParameterName, location_name: 'credentialParameterName'))
    GatewayApiKeyCredentialProvider.add_member(:credential_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyCredentialPrefix, location_name: 'credentialPrefix'))
    GatewayApiKeyCredentialProvider.add_member(:credential_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyCredentialLocation, location_name: 'credentialLocation'))
    GatewayApiKeyCredentialProvider.type = Types::GatewayApiKeyCredentialProvider
    GatewayProtocolConfiguration.add_member(:mcp, Types::GatewayProtocolConfiguration::Mcp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MCPGatewayConfiguration, location_name: 'mcp'))
    GatewayProtocolConfiguration.add_member(:unknown, Types::GatewayProtocolConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    GatewayProtocolConfiguration.type = Types::GatewayProtocolConfiguration
    GatewayProtocolType.add_member(:mcp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MCP', traits: {"smithy.api#enumValue" => "MCP"}))
    GatewayStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    GatewayStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    GatewayStatus.add_member(:update_unsuccessful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_UNSUCCESSFUL', traits: {"smithy.api#enumValue" => "UPDATE_UNSUCCESSFUL"}))
    GatewayStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    GatewayStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    GatewayStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    GatewaySummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewaySummary)
    GatewaySummary.add_member(:gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayId, location_name: 'gatewayId', traits: {"smithy.api#required" => {}}))
    GatewaySummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GatewaySummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GatewaySummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayDescription, location_name: 'description'))
    GatewaySummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GatewaySummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    GatewaySummary.add_member(:authorizer_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerType, location_name: 'authorizerType', traits: {"smithy.api#required" => {}}))
    GatewaySummary.add_member(:protocol_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayProtocolType, location_name: 'protocolType', traits: {"smithy.api#required" => {}}))
    GatewaySummary.type = Types::GatewaySummary
    GetAgentRuntimeEndpointRequest.add_member(:agent_runtime_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: 'agentRuntimeId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentRuntimeEndpointRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'endpointName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentRuntimeEndpointRequest.type = Types::GetAgentRuntimeEndpointRequest
    GetAgentRuntimeEndpointResponse.add_member(:live_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: 'liveVersion'))
    GetAgentRuntimeEndpointResponse.add_member(:target_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: 'targetVersion'))
    GetAgentRuntimeEndpointResponse.add_member(:agent_runtime_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeEndpointArn, location_name: 'agentRuntimeEndpointArn', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeEndpointResponse.add_member(:agent_runtime_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeArn, location_name: 'agentRuntimeArn', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeEndpointResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentEndpointDescription, location_name: 'description'))
    GetAgentRuntimeEndpointResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentEndpointStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeEndpointResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeEndpointResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeEndpointResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'failureReason'))
    GetAgentRuntimeEndpointResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeEndpointResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeEndpointId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeEndpointResponse.type = Types::GetAgentRuntimeEndpointResponse
    GetAgentRuntimeRequest.add_member(:agent_runtime_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: 'agentRuntimeId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAgentRuntimeRequest.add_member(:agent_runtime_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: 'agentRuntimeVersion', traits: {"smithy.api#httpQuery" => "version"}))
    GetAgentRuntimeRequest.type = Types::GetAgentRuntimeRequest
    GetAgentRuntimeResponse.add_member(:agent_runtime_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeArn, location_name: 'agentRuntimeArn', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeResponse.add_member(:workload_identity_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: 'workloadIdentityDetails'))
    GetAgentRuntimeResponse.add_member(:agent_runtime_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeName, location_name: 'agentRuntimeName', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    GetAgentRuntimeResponse.add_member(:agent_runtime_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: 'agentRuntimeId', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeResponse.add_member(:agent_runtime_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: 'agentRuntimeVersion', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeResponse.add_member(:agent_runtime_artifact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArtifact, location_name: 'agentRuntimeArtifact'))
    GetAgentRuntimeResponse.add_member(:network_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'networkConfiguration', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeResponse.add_member(:protocol_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolConfiguration, location_name: 'protocolConfiguration'))
    GetAgentRuntimeResponse.add_member(:environment_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: 'environmentVariables'))
    GetAgentRuntimeResponse.add_member(:authorizer_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: 'authorizerConfiguration'))
    GetAgentRuntimeResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetAgentRuntimeResponse.type = Types::GetAgentRuntimeResponse
    GetApiKeyCredentialProviderRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetApiKeyCredentialProviderRequest.type = Types::GetApiKeyCredentialProviderRequest
    GetApiKeyCredentialProviderResponse.add_member(:api_key_secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Secret, location_name: 'apiKeySecretArn', traits: {"smithy.api#property" => {}, "smithy.api#required" => {}}))
    GetApiKeyCredentialProviderResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetApiKeyCredentialProviderResponse.add_member(:credential_provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyCredentialProviderArnType, location_name: 'credentialProviderArn', traits: {"smithy.api#required" => {}}))
    GetApiKeyCredentialProviderResponse.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    GetApiKeyCredentialProviderResponse.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#required" => {}}))
    GetApiKeyCredentialProviderResponse.type = Types::GetApiKeyCredentialProviderResponse
    GetBrowserRequest.add_member(:browser_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserId, location_name: 'browserId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBrowserRequest.type = Types::GetBrowserRequest
    GetBrowserResponse.add_member(:browser_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserId, location_name: 'browserId', traits: {"smithy.api#required" => {}}))
    GetBrowserResponse.add_member(:browser_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserArn, location_name: 'browserArn', traits: {"smithy.api#required" => {}}))
    GetBrowserResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SandboxName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetBrowserResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    GetBrowserResponse.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'executionRoleArn'))
    GetBrowserResponse.add_member(:network_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserNetworkConfiguration, location_name: 'networkConfiguration', traits: {"smithy.api#required" => {}}))
    GetBrowserResponse.add_member(:recording, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecordingConfig, location_name: 'recording'))
    GetBrowserResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetBrowserResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetBrowserResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#required" => {}}))
    GetBrowserResponse.type = Types::GetBrowserResponse
    GetCodeInterpreterRequest.add_member(:code_interpreter_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterId, location_name: 'codeInterpreterId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCodeInterpreterRequest.type = Types::GetCodeInterpreterRequest
    GetCodeInterpreterResponse.add_member(:code_interpreter_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterId, location_name: 'codeInterpreterId', traits: {"smithy.api#required" => {}}))
    GetCodeInterpreterResponse.add_member(:code_interpreter_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterArn, location_name: 'codeInterpreterArn', traits: {"smithy.api#required" => {}}))
    GetCodeInterpreterResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SandboxName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetCodeInterpreterResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    GetCodeInterpreterResponse.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'executionRoleArn'))
    GetCodeInterpreterResponse.add_member(:network_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterNetworkConfiguration, location_name: 'networkConfiguration', traits: {"smithy.api#required" => {}}))
    GetCodeInterpreterResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetCodeInterpreterResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetCodeInterpreterResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#required" => {}}))
    GetCodeInterpreterResponse.type = Types::GetCodeInterpreterResponse
    GetGatewayRequest.add_member(:gateway_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayIdentifier, location_name: 'gatewayIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGatewayRequest.type = Types::GetGatewayRequest
    GetGatewayResponse.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'gatewayArn', traits: {"smithy.api#required" => {}}))
    GetGatewayResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayId, location_name: 'gatewayId', traits: {"smithy.api#required" => {}}))
    GetGatewayResponse.add_member(:gateway_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayUrl, location_name: 'gatewayUrl'))
    GetGatewayResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetGatewayResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    GetGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetGatewayResponse.add_member(:status_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReasons, location_name: 'statusReasons'))
    GetGatewayResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetGatewayResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayDescription, location_name: 'description'))
    GetGatewayResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn'))
    GetGatewayResponse.add_member(:protocol_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayProtocolType, location_name: 'protocolType', traits: {"smithy.api#required" => {}}))
    GetGatewayResponse.add_member(:protocol_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayProtocolConfiguration, location_name: 'protocolConfiguration'))
    GetGatewayResponse.add_member(:authorizer_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerType, location_name: 'authorizerType', traits: {"smithy.api#required" => {}}))
    GetGatewayResponse.add_member(:authorizer_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: 'authorizerConfiguration'))
    GetGatewayResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    GetGatewayResponse.add_member(:workload_identity_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: 'workloadIdentityDetails'))
    GetGatewayResponse.add_member(:exception_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionLevel, location_name: 'exceptionLevel'))
    GetGatewayResponse.type = Types::GetGatewayResponse
    GetGatewayTargetRequest.add_member(:gateway_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayIdentifier, location_name: 'gatewayIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGatewayTargetRequest.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'targetId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGatewayTargetRequest.type = Types::GetGatewayTargetRequest
    GetGatewayTargetResponse.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'gatewayArn', traits: {"smithy.api#required" => {}}))
    GetGatewayTargetResponse.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'targetId', traits: {"smithy.api#required" => {}}))
    GetGatewayTargetResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetGatewayTargetResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    GetGatewayTargetResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetGatewayTargetResponse.add_member(:status_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReasons, location_name: 'statusReasons'))
    GetGatewayTargetResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetGatewayTargetResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDescription, location_name: 'description'))
    GetGatewayTargetResponse.add_member(:target_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetConfiguration, location_name: 'targetConfiguration', traits: {"smithy.api#required" => {}}))
    GetGatewayTargetResponse.add_member(:credential_provider_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderConfigurations, location_name: 'credentialProviderConfigurations', traits: {"smithy.api#required" => {}}))
    GetGatewayTargetResponse.type = Types::GetGatewayTargetResponse
    GetMemoryInput.add_member(:memory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'memoryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMemoryInput.type = Types::GetMemoryInput
    GetMemoryOutput.add_member(:memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Memory, location_name: 'memory', traits: {"smithy.api#required" => {}}))
    GetMemoryOutput.type = Types::GetMemoryOutput
    GetOauth2CredentialProviderRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetOauth2CredentialProviderRequest.type = Types::GetOauth2CredentialProviderRequest
    GetOauth2CredentialProviderResponse.add_member(:client_secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Secret, location_name: 'clientSecretArn', traits: {"smithy.api#property" => {}, "smithy.api#required" => {}}))
    GetOauth2CredentialProviderResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetOauth2CredentialProviderResponse.add_member(:credential_provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderArnType, location_name: 'credentialProviderArn', traits: {"smithy.api#required" => {}}))
    GetOauth2CredentialProviderResponse.add_member(:credential_provider_vendor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderVendorType, location_name: 'credentialProviderVendor', traits: {"smithy.api#required" => {}}))
    GetOauth2CredentialProviderResponse.add_member(:oauth2_provider_config_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2ProviderConfigOutput, location_name: 'oauth2ProviderConfigOutput', traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    GetOauth2CredentialProviderResponse.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    GetOauth2CredentialProviderResponse.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#required" => {}}))
    GetOauth2CredentialProviderResponse.type = Types::GetOauth2CredentialProviderResponse
    GetTokenVaultRequest.add_member(:token_vault_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenVaultIdType, location_name: 'tokenVaultId'))
    GetTokenVaultRequest.type = Types::GetTokenVaultRequest
    GetTokenVaultResponse.add_member(:token_vault_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenVaultIdType, location_name: 'tokenVaultId', traits: {"smithy.api#required" => {}}))
    GetTokenVaultResponse.add_member(:kms_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsConfiguration, location_name: 'kmsConfiguration', traits: {"smithy.api#required" => {}}))
    GetTokenVaultResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedDate', traits: {"smithy.api#required" => {}}))
    GetTokenVaultResponse.type = Types::GetTokenVaultResponse
    GetWorkloadIdentityRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetWorkloadIdentityRequest.type = Types::GetWorkloadIdentityRequest
    GetWorkloadIdentityResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, location_name: 'name', traits: {"smithy.api#required" => {}}))
    GetWorkloadIdentityResponse.add_member(:workload_identity_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityArnType, location_name: 'workloadIdentityArn', traits: {"smithy.api#required" => {}}))
    GetWorkloadIdentityResponse.add_member(:allowed_resource_oauth2_return_urls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlListType, location_name: 'allowedResourceOauth2ReturnUrls'))
    GetWorkloadIdentityResponse.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    GetWorkloadIdentityResponse.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#required" => {}}))
    GetWorkloadIdentityResponse.type = Types::GetWorkloadIdentityResponse
    GithubOauth2ProviderConfigInput.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'clientId', traits: {"smithy.api#required" => {}}))
    GithubOauth2ProviderConfigInput.add_member(:client_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSecretType, location_name: 'clientSecret', traits: {"smithy.api#required" => {}}))
    GithubOauth2ProviderConfigInput.type = Types::GithubOauth2ProviderConfigInput
    GithubOauth2ProviderConfigOutput.add_member(:oauth_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2Discovery, location_name: 'oauthDiscovery', traits: {"smithy.api#required" => {}}))
    GithubOauth2ProviderConfigOutput.type = Types::GithubOauth2ProviderConfigOutput
    GoogleOauth2ProviderConfigInput.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'clientId', traits: {"smithy.api#required" => {}}))
    GoogleOauth2ProviderConfigInput.add_member(:client_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSecretType, location_name: 'clientSecret', traits: {"smithy.api#required" => {}}))
    GoogleOauth2ProviderConfigInput.type = Types::GoogleOauth2ProviderConfigInput
    GoogleOauth2ProviderConfigOutput.add_member(:oauth_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2Discovery, location_name: 'oauthDiscovery', traits: {"smithy.api#required" => {}}))
    GoogleOauth2ProviderConfigOutput.type = Types::GoogleOauth2ProviderConfigOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    KeyType.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CustomerManagedKey', traits: {"smithy.api#enumValue" => "CustomerManagedKey"}))
    KeyType.add_member(:service_managed_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ServiceManagedKey', traits: {"smithy.api#enumValue" => "ServiceManagedKey"}))
    KmsConfiguration.add_member(:key_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyType, location_name: 'keyType', traits: {"smithy.api#required" => {}}))
    KmsConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    KmsConfiguration.type = Types::KmsConfiguration
    ListAgentRuntimeEndpointsRequest.add_member(:agent_runtime_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: 'agentRuntimeId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAgentRuntimeEndpointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAgentRuntimeEndpointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAgentRuntimeEndpointsRequest.type = Types::ListAgentRuntimeEndpointsRequest
    ListAgentRuntimeEndpointsResponse.add_member(:runtime_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentEndpoints, location_name: 'runtimeEndpoints', traits: {"smithy.api#required" => {}}))
    ListAgentRuntimeEndpointsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAgentRuntimeEndpointsResponse.type = Types::ListAgentRuntimeEndpointsResponse
    ListAgentRuntimeVersionsRequest.add_member(:agent_runtime_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: 'agentRuntimeId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAgentRuntimeVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAgentRuntimeVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAgentRuntimeVersionsRequest.type = Types::ListAgentRuntimeVersionsRequest
    ListAgentRuntimeVersionsResponse.add_member(:agent_runtimes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Agents, location_name: 'agentRuntimes', traits: {"smithy.api#required" => {}}))
    ListAgentRuntimeVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAgentRuntimeVersionsResponse.type = Types::ListAgentRuntimeVersionsResponse
    ListAgentRuntimesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAgentRuntimesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAgentRuntimesRequest.type = Types::ListAgentRuntimesRequest
    ListAgentRuntimesResponse.add_member(:agent_runtimes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Agents, location_name: 'agentRuntimes', traits: {"smithy.api#required" => {}}))
    ListAgentRuntimesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListAgentRuntimesResponse.type = Types::ListAgentRuntimesResponse
    ListApiKeyCredentialProvidersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListApiKeyCredentialProvidersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 10}))
    ListApiKeyCredentialProvidersRequest.type = Types::ListApiKeyCredentialProvidersRequest
    ListApiKeyCredentialProvidersResponse.add_member(:credential_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyCredentialProviders, location_name: 'credentialProviders', traits: {"smithy.api#required" => {}}))
    ListApiKeyCredentialProvidersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListApiKeyCredentialProvidersResponse.type = Types::ListApiKeyCredentialProvidersResponse
    ListBrowsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListBrowsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBrowsersRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'type', traits: {"smithy.api#httpQuery" => "type"}))
    ListBrowsersRequest.type = Types::ListBrowsersRequest
    ListBrowsersResponse.add_member(:browser_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserSummaries, location_name: 'browserSummaries', traits: {"smithy.api#required" => {}}))
    ListBrowsersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListBrowsersResponse.type = Types::ListBrowsersResponse
    ListCodeInterpretersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCodeInterpretersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCodeInterpretersRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'type', traits: {"smithy.api#httpQuery" => "type"}))
    ListCodeInterpretersRequest.type = Types::ListCodeInterpretersRequest
    ListCodeInterpretersResponse.add_member(:code_interpreter_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeInterpreterSummaries, location_name: 'codeInterpreterSummaries', traits: {"smithy.api#required" => {}}))
    ListCodeInterpretersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListCodeInterpretersResponse.type = Types::ListCodeInterpretersResponse
    ListGatewayTargetsRequest.add_member(:gateway_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayIdentifier, location_name: 'gatewayIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGatewayTargetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetMaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListGatewayTargetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGatewayTargetsRequest.type = Types::ListGatewayTargetsRequest
    ListGatewayTargetsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetSummaries, location_name: 'items', traits: {"smithy.api#required" => {}}))
    ListGatewayTargetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetNextToken, location_name: 'nextToken'))
    ListGatewayTargetsResponse.type = Types::ListGatewayTargetsResponse
    ListGatewaysRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayMaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListGatewaysRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayNextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGatewaysRequest.type = Types::ListGatewaysRequest
    ListGatewaysResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewaySummaries, location_name: 'items', traits: {"smithy.api#required" => {}}))
    ListGatewaysResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayNextToken, location_name: 'nextToken'))
    ListGatewaysResponse.type = Types::ListGatewaysResponse
    ListMemoriesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListMemoriesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListMemoriesInput.type = Types::ListMemoriesInput
    ListMemoriesOutput.add_member(:memories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemorySummaryList, location_name: 'memories', traits: {"smithy.api#required" => {}}))
    ListMemoriesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListMemoriesOutput.type = Types::ListMemoriesOutput
    ListOauth2CredentialProvidersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListOauth2CredentialProvidersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 20}}))
    ListOauth2CredentialProvidersRequest.type = Types::ListOauth2CredentialProvidersRequest
    ListOauth2CredentialProvidersResponse.add_member(:credential_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2CredentialProviders, location_name: 'credentialProviders', traits: {"smithy.api#required" => {}}))
    ListOauth2CredentialProvidersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListOauth2CredentialProvidersResponse.type = Types::ListOauth2CredentialProvidersResponse
    ListWorkloadIdentitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListWorkloadIdentitiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#default" => 10, "smithy.api#range" => {"min" => 1, "max" => 20}}))
    ListWorkloadIdentitiesRequest.type = Types::ListWorkloadIdentitiesRequest
    ListWorkloadIdentitiesResponse.add_member(:workload_identities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityList, location_name: 'workloadIdentities', traits: {"smithy.api#required" => {}}))
    ListWorkloadIdentitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListWorkloadIdentitiesResponse.type = Types::ListWorkloadIdentitiesResponse
    MCPGatewayConfiguration.add_member(:supported_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: McpSupportedVersions, location_name: 'supportedVersions'))
    MCPGatewayConfiguration.add_member(:instructions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: McpInstructions, location_name: 'instructions'))
    MCPGatewayConfiguration.add_member(:search_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchType, location_name: 'searchType'))
    MCPGatewayConfiguration.type = Types::MCPGatewayConfiguration
    McpLambdaTargetConfiguration.add_member(:lambda_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaFunctionArn, location_name: 'lambdaArn', traits: {"smithy.api#required" => {}}))
    McpLambdaTargetConfiguration.add_member(:tool_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToolSchema, location_name: 'toolSchema', traits: {"smithy.api#required" => {}}))
    McpLambdaTargetConfiguration.type = Types::McpLambdaTargetConfiguration
    McpSupportedVersions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: McpVersion)
    McpTargetConfiguration.add_member(:open_api_schema, Types::McpTargetConfiguration::OpenApiSchema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiSchemaConfiguration, location_name: 'openApiSchema'))
    McpTargetConfiguration.add_member(:smithy_model, Types::McpTargetConfiguration::SmithyModel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiSchemaConfiguration, location_name: 'smithyModel'))
    McpTargetConfiguration.add_member(:lambda, Types::McpTargetConfiguration::Lambda, ::Smithy::Schema::Shapes::ShapeRef.new(shape: McpLambdaTargetConfiguration, location_name: 'lambda'))
    McpTargetConfiguration.add_member(:unknown, Types::McpTargetConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    McpTargetConfiguration.type = Types::McpTargetConfiguration
    Memory.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Memory.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    Memory.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Memory.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Memory.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKeyArn'))
    Memory.add_member(:memory_execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'memoryExecutionRoleArn'))
    Memory.add_member(:event_expiry_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'eventExpiryDuration', traits: {"smithy.api#range" => {"min" => 1, "max" => 365}, "smithy.api#required" => {}}))
    Memory.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    Memory.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'failureReason'))
    Memory.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    Memory.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    Memory.add_member(:strategies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStrategyList, location_name: 'strategies'))
    Memory.type = Types::Memory
    MemoryStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    MemoryStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    MemoryStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    MemoryStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    MemoryStrategy.add_member(:strategy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStrategyId, location_name: 'strategyId', traits: {"smithy.api#required" => {}}))
    MemoryStrategy.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    MemoryStrategy.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    MemoryStrategy.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StrategyConfiguration, location_name: 'configuration'))
    MemoryStrategy.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStrategyType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    MemoryStrategy.add_member(:namespaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespacesList, location_name: 'namespaces', traits: {"smithy.api#required" => {}}))
    MemoryStrategy.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt'))
    MemoryStrategy.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt'))
    MemoryStrategy.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStrategyStatus, location_name: 'status'))
    MemoryStrategy.type = Types::MemoryStrategy
    MemoryStrategyInput.add_member(:semantic_memory_strategy, Types::MemoryStrategyInput::SemanticMemoryStrategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SemanticMemoryStrategyInput, location_name: 'semanticMemoryStrategy'))
    MemoryStrategyInput.add_member(:summary_memory_strategy, Types::MemoryStrategyInput::SummaryMemoryStrategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummaryMemoryStrategyInput, location_name: 'summaryMemoryStrategy'))
    MemoryStrategyInput.add_member(:user_preference_memory_strategy, Types::MemoryStrategyInput::UserPreferenceMemoryStrategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPreferenceMemoryStrategyInput, location_name: 'userPreferenceMemoryStrategy'))
    MemoryStrategyInput.add_member(:custom_memory_strategy, Types::MemoryStrategyInput::CustomMemoryStrategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomMemoryStrategyInput, location_name: 'customMemoryStrategy'))
    MemoryStrategyInput.add_member(:unknown, Types::MemoryStrategyInput::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    MemoryStrategyInput.type = Types::MemoryStrategyInput
    MemoryStrategyInputList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStrategyInput)
    MemoryStrategyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStrategy)
    MemoryStrategyStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    MemoryStrategyStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    MemoryStrategyStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    MemoryStrategyStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    MemoryStrategyType.add_member(:semantic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEMANTIC', traits: {"smithy.api#enumValue" => "SEMANTIC"}))
    MemoryStrategyType.add_member(:summarization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUMMARIZATION', traits: {"smithy.api#enumValue" => "SUMMARIZATION"}))
    MemoryStrategyType.add_member(:user_preference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_PREFERENCE', traits: {"smithy.api#enumValue" => "USER_PREFERENCE"}))
    MemoryStrategyType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    MemorySummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryArn, location_name: 'arn'))
    MemorySummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'id'))
    MemorySummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStatus, location_name: 'status'))
    MemorySummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    MemorySummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    MemorySummary.type = Types::MemorySummary
    MemorySummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemorySummary)
    MicrosoftOauth2ProviderConfigInput.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'clientId', traits: {"smithy.api#required" => {}}))
    MicrosoftOauth2ProviderConfigInput.add_member(:client_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSecretType, location_name: 'clientSecret', traits: {"smithy.api#required" => {}}))
    MicrosoftOauth2ProviderConfigInput.type = Types::MicrosoftOauth2ProviderConfigInput
    MicrosoftOauth2ProviderConfigOutput.add_member(:oauth_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2Discovery, location_name: 'oauthDiscovery', traits: {"smithy.api#required" => {}}))
    MicrosoftOauth2ProviderConfigOutput.type = Types::MicrosoftOauth2ProviderConfigOutput
    ModifyConsolidationConfiguration.add_member(:custom_consolidation_configuration, Types::ModifyConsolidationConfiguration::CustomConsolidationConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomConsolidationConfigurationInput, location_name: 'customConsolidationConfiguration'))
    ModifyConsolidationConfiguration.add_member(:unknown, Types::ModifyConsolidationConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ModifyConsolidationConfiguration.type = Types::ModifyConsolidationConfiguration
    ModifyExtractionConfiguration.add_member(:custom_extraction_configuration, Types::ModifyExtractionConfiguration::CustomExtractionConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomExtractionConfigurationInput, location_name: 'customExtractionConfiguration'))
    ModifyExtractionConfiguration.add_member(:unknown, Types::ModifyExtractionConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ModifyExtractionConfiguration.type = Types::ModifyExtractionConfiguration
    ModifyMemoryStrategies.add_member(:add_memory_strategies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryStrategyInputList, location_name: 'addMemoryStrategies'))
    ModifyMemoryStrategies.add_member(:modify_memory_strategies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyMemoryStrategiesList, location_name: 'modifyMemoryStrategies'))
    ModifyMemoryStrategies.add_member(:delete_memory_strategies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMemoryStrategiesList, location_name: 'deleteMemoryStrategies'))
    ModifyMemoryStrategies.type = Types::ModifyMemoryStrategies
    ModifyMemoryStrategiesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyMemoryStrategyInput)
    ModifyMemoryStrategyInput.add_member(:memory_strategy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'memoryStrategyId', traits: {"smithy.api#required" => {}}))
    ModifyMemoryStrategyInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    ModifyMemoryStrategyInput.add_member(:namespaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespacesList, location_name: 'namespaces'))
    ModifyMemoryStrategyInput.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyStrategyConfiguration, location_name: 'configuration'))
    ModifyMemoryStrategyInput.type = Types::ModifyMemoryStrategyInput
    ModifyStrategyConfiguration.add_member(:extraction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyExtractionConfiguration, location_name: 'extraction'))
    ModifyStrategyConfiguration.add_member(:consolidation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyConsolidationConfiguration, location_name: 'consolidation'))
    ModifyStrategyConfiguration.type = Types::ModifyStrategyConfiguration
    NamespacesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Namespace)
    NetworkConfiguration.add_member(:network_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkMode, location_name: 'networkMode', traits: {"smithy.api#required" => {}}))
    NetworkConfiguration.type = Types::NetworkConfiguration
    NetworkMode.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC', traits: {"smithy.api#enumValue" => "PUBLIC"}))
    OAuthCredentialProvider.add_member(:provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthCredentialProviderArn, location_name: 'providerArn', traits: {"smithy.api#required" => {}}))
    OAuthCredentialProvider.add_member(:scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthScopes, location_name: 'scopes', traits: {"smithy.api#required" => {}}))
    OAuthCredentialProvider.add_member(:custom_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthCustomParameters, location_name: 'customParameters'))
    OAuthCredentialProvider.type = Types::OAuthCredentialProvider
    OAuthCustomParameters.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthCustomParametersKey)
    OAuthCustomParameters.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthCustomParametersValue)
    OAuthScopes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthScope)
    Oauth2AuthorizationServerMetadata.add_member(:issuer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IssuerUrlType, location_name: 'issuer', traits: {"smithy.api#required" => {}}))
    Oauth2AuthorizationServerMetadata.add_member(:authorization_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationEndpointType, location_name: 'authorizationEndpoint', traits: {"smithy.api#required" => {}}))
    Oauth2AuthorizationServerMetadata.add_member(:token_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenEndpointType, location_name: 'tokenEndpoint', traits: {"smithy.api#required" => {}}))
    Oauth2AuthorizationServerMetadata.add_member(:response_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseListType, location_name: 'responseTypes'))
    Oauth2AuthorizationServerMetadata.type = Types::Oauth2AuthorizationServerMetadata
    Oauth2CredentialProviderItem.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    Oauth2CredentialProviderItem.add_member(:credential_provider_vendor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderVendorType, location_name: 'credentialProviderVendor', traits: {"smithy.api#required" => {}}))
    Oauth2CredentialProviderItem.add_member(:credential_provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderArnType, location_name: 'credentialProviderArn', traits: {"smithy.api#required" => {}}))
    Oauth2CredentialProviderItem.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    Oauth2CredentialProviderItem.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#required" => {}}))
    Oauth2CredentialProviderItem.type = Types::Oauth2CredentialProviderItem
    Oauth2CredentialProviders.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2CredentialProviderItem)
    Oauth2Discovery.add_member(:discovery_url, Types::Oauth2Discovery::DiscoveryUrl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoveryUrlType, location_name: 'discoveryUrl'))
    Oauth2Discovery.add_member(:authorization_server_metadata, Types::Oauth2Discovery::AuthorizationServerMetadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2AuthorizationServerMetadata, location_name: 'authorizationServerMetadata'))
    Oauth2Discovery.add_member(:unknown, Types::Oauth2Discovery::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Oauth2Discovery.type = Types::Oauth2Discovery
    Oauth2ProviderConfigInput.add_member(:custom_oauth2_provider_config, Types::Oauth2ProviderConfigInput::CustomOauth2ProviderConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOauth2ProviderConfigInput, location_name: 'customOauth2ProviderConfig'))
    Oauth2ProviderConfigInput.add_member(:google_oauth2_provider_config, Types::Oauth2ProviderConfigInput::GoogleOauth2ProviderConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GoogleOauth2ProviderConfigInput, location_name: 'googleOauth2ProviderConfig'))
    Oauth2ProviderConfigInput.add_member(:github_oauth2_provider_config, Types::Oauth2ProviderConfigInput::GithubOauth2ProviderConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GithubOauth2ProviderConfigInput, location_name: 'githubOauth2ProviderConfig'))
    Oauth2ProviderConfigInput.add_member(:slack_oauth2_provider_config, Types::Oauth2ProviderConfigInput::SlackOauth2ProviderConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlackOauth2ProviderConfigInput, location_name: 'slackOauth2ProviderConfig'))
    Oauth2ProviderConfigInput.add_member(:salesforce_oauth2_provider_config, Types::Oauth2ProviderConfigInput::SalesforceOauth2ProviderConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SalesforceOauth2ProviderConfigInput, location_name: 'salesforceOauth2ProviderConfig'))
    Oauth2ProviderConfigInput.add_member(:microsoft_oauth2_provider_config, Types::Oauth2ProviderConfigInput::MicrosoftOauth2ProviderConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MicrosoftOauth2ProviderConfigInput, location_name: 'microsoftOauth2ProviderConfig'))
    Oauth2ProviderConfigInput.add_member(:unknown, Types::Oauth2ProviderConfigInput::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Oauth2ProviderConfigInput.type = Types::Oauth2ProviderConfigInput
    Oauth2ProviderConfigOutput.add_member(:custom_oauth2_provider_config, Types::Oauth2ProviderConfigOutput::CustomOauth2ProviderConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomOauth2ProviderConfigOutput, location_name: 'customOauth2ProviderConfig'))
    Oauth2ProviderConfigOutput.add_member(:google_oauth2_provider_config, Types::Oauth2ProviderConfigOutput::GoogleOauth2ProviderConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GoogleOauth2ProviderConfigOutput, location_name: 'googleOauth2ProviderConfig'))
    Oauth2ProviderConfigOutput.add_member(:github_oauth2_provider_config, Types::Oauth2ProviderConfigOutput::GithubOauth2ProviderConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GithubOauth2ProviderConfigOutput, location_name: 'githubOauth2ProviderConfig'))
    Oauth2ProviderConfigOutput.add_member(:slack_oauth2_provider_config, Types::Oauth2ProviderConfigOutput::SlackOauth2ProviderConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SlackOauth2ProviderConfigOutput, location_name: 'slackOauth2ProviderConfig'))
    Oauth2ProviderConfigOutput.add_member(:salesforce_oauth2_provider_config, Types::Oauth2ProviderConfigOutput::SalesforceOauth2ProviderConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SalesforceOauth2ProviderConfigOutput, location_name: 'salesforceOauth2ProviderConfig'))
    Oauth2ProviderConfigOutput.add_member(:microsoft_oauth2_provider_config, Types::Oauth2ProviderConfigOutput::MicrosoftOauth2ProviderConfig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MicrosoftOauth2ProviderConfigOutput, location_name: 'microsoftOauth2ProviderConfig'))
    Oauth2ProviderConfigOutput.add_member(:unknown, Types::Oauth2ProviderConfigOutput::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Oauth2ProviderConfigOutput.type = Types::Oauth2ProviderConfigOutput
    OverrideType.add_member(:semantic_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEMANTIC_OVERRIDE', traits: {"smithy.api#enumValue" => "SEMANTIC_OVERRIDE"}))
    OverrideType.add_member(:summary_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUMMARY_OVERRIDE', traits: {"smithy.api#enumValue" => "SUMMARY_OVERRIDE"}))
    OverrideType.add_member(:user_preference_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_PREFERENCE_OVERRIDE', traits: {"smithy.api#enumValue" => "USER_PREFERENCE_OVERRIDE"}))
    ProtocolConfiguration.add_member(:server_protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerProtocol, location_name: 'serverProtocol', traits: {"smithy.api#required" => {}}))
    ProtocolConfiguration.type = Types::ProtocolConfiguration
    RecordingConfig.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'enabled', traits: {"smithy.api#default" => false}))
    RecordingConfig.add_member(:s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 's3Location'))
    RecordingConfig.type = Types::RecordingConfig
    RequiredProperties.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ResourceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceOauth2ReturnUrlListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlType)
    ResourceType.add_member(:system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM', traits: {"smithy.api#enumValue" => "SYSTEM"}))
    ResourceType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    ResponseListType.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseType)
    S3Configuration.add_member(:uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketUri, location_name: 'uri'))
    S3Configuration.add_member(:bucket_owner_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'bucketOwnerAccountId'))
    S3Configuration.type = Types::S3Configuration
    S3Location.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'bucket', traits: {"smithy.api#pattern" => "^[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]$", "smithy.api#required" => {}}))
    S3Location.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'prefix', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    S3Location.type = Types::S3Location
    SalesforceOauth2ProviderConfigInput.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'clientId', traits: {"smithy.api#required" => {}}))
    SalesforceOauth2ProviderConfigInput.add_member(:client_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSecretType, location_name: 'clientSecret', traits: {"smithy.api#required" => {}}))
    SalesforceOauth2ProviderConfigInput.type = Types::SalesforceOauth2ProviderConfigInput
    SalesforceOauth2ProviderConfigOutput.add_member(:oauth_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2Discovery, location_name: 'oauthDiscovery', traits: {"smithy.api#required" => {}}))
    SalesforceOauth2ProviderConfigOutput.type = Types::SalesforceOauth2ProviderConfigOutput
    SchemaDefinition.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    SchemaDefinition.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaProperties, location_name: 'properties'))
    SchemaDefinition.add_member(:required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequiredProperties, location_name: 'required'))
    SchemaDefinition.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaDefinition, location_name: 'items'))
    SchemaDefinition.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description'))
    SchemaDefinition.type = Types::SchemaDefinition
    SchemaProperties.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    SchemaProperties.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaDefinition)
    SchemaType.add_member(:string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "string"}))
    SchemaType.add_member(:number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUMBER', traits: {"smithy.api#enumValue" => "number"}))
    SchemaType.add_member(:object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBJECT', traits: {"smithy.api#enumValue" => "object"}))
    SchemaType.add_member(:array, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARRAY', traits: {"smithy.api#enumValue" => "array"}))
    SchemaType.add_member(:boolean, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "boolean"}))
    SchemaType.add_member(:integer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTEGER', traits: {"smithy.api#enumValue" => "integer"}))
    SearchType.add_member(:semantic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEMANTIC', traits: {"smithy.api#enumValue" => "SEMANTIC"}))
    Secret.add_member(:secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretArn, location_name: 'secretArn', traits: {"smithy.api#required" => {}}))
    Secret.type = Types::Secret
    SemanticConsolidationOverride.add_member(:append_to_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'appendToPrompt', traits: {"smithy.api#required" => {}}))
    SemanticConsolidationOverride.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    SemanticConsolidationOverride.type = Types::SemanticConsolidationOverride
    SemanticExtractionOverride.add_member(:append_to_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'appendToPrompt', traits: {"smithy.api#required" => {}}))
    SemanticExtractionOverride.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    SemanticExtractionOverride.type = Types::SemanticExtractionOverride
    SemanticMemoryStrategyInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    SemanticMemoryStrategyInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    SemanticMemoryStrategyInput.add_member(:namespaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespacesList, location_name: 'namespaces'))
    SemanticMemoryStrategyInput.type = Types::SemanticMemoryStrategyInput
    SemanticOverrideConfigurationInput.add_member(:extraction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SemanticOverrideExtractionConfigurationInput, location_name: 'extraction'))
    SemanticOverrideConfigurationInput.add_member(:consolidation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SemanticOverrideConsolidationConfigurationInput, location_name: 'consolidation'))
    SemanticOverrideConfigurationInput.type = Types::SemanticOverrideConfigurationInput
    SemanticOverrideConsolidationConfigurationInput.add_member(:append_to_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'appendToPrompt', traits: {"smithy.api#required" => {}}))
    SemanticOverrideConsolidationConfigurationInput.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    SemanticOverrideConsolidationConfigurationInput.type = Types::SemanticOverrideConsolidationConfigurationInput
    SemanticOverrideExtractionConfigurationInput.add_member(:append_to_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'appendToPrompt', traits: {"smithy.api#required" => {}}))
    SemanticOverrideExtractionConfigurationInput.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    SemanticOverrideExtractionConfigurationInput.type = Types::SemanticOverrideExtractionConfigurationInput
    ServerProtocol.add_member(:mcp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MCP', traits: {"smithy.api#enumValue" => "MCP"}))
    ServerProtocol.add_member(:http, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HTTP', traits: {"smithy.api#enumValue" => "HTTP"}))
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ServiceException.type = Types::ServiceException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SetTokenVaultCMKRequest.add_member(:token_vault_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenVaultIdType, location_name: 'tokenVaultId'))
    SetTokenVaultCMKRequest.add_member(:kms_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsConfiguration, location_name: 'kmsConfiguration', traits: {"smithy.api#required" => {}}))
    SetTokenVaultCMKRequest.type = Types::SetTokenVaultCMKRequest
    SetTokenVaultCMKResponse.add_member(:token_vault_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TokenVaultIdType, location_name: 'tokenVaultId', traits: {"smithy.api#required" => {}}))
    SetTokenVaultCMKResponse.add_member(:kms_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsConfiguration, location_name: 'kmsConfiguration', traits: {"smithy.api#required" => {}}))
    SetTokenVaultCMKResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastModifiedDate', traits: {"smithy.api#required" => {}}))
    SetTokenVaultCMKResponse.type = Types::SetTokenVaultCMKResponse
    SlackOauth2ProviderConfigInput.add_member(:client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientIdType, location_name: 'clientId', traits: {"smithy.api#required" => {}}))
    SlackOauth2ProviderConfigInput.add_member(:client_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientSecretType, location_name: 'clientSecret', traits: {"smithy.api#required" => {}}))
    SlackOauth2ProviderConfigInput.type = Types::SlackOauth2ProviderConfigInput
    SlackOauth2ProviderConfigOutput.add_member(:oauth_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2Discovery, location_name: 'oauthDiscovery', traits: {"smithy.api#required" => {}}))
    SlackOauth2ProviderConfigOutput.type = Types::SlackOauth2ProviderConfigOutput
    StatusReasons.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason)
    StrategyConfiguration.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideType, location_name: 'type'))
    StrategyConfiguration.add_member(:extraction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExtractionConfiguration, location_name: 'extraction'))
    StrategyConfiguration.add_member(:consolidation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsolidationConfiguration, location_name: 'consolidation'))
    StrategyConfiguration.type = Types::StrategyConfiguration
    SummaryConsolidationOverride.add_member(:append_to_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'appendToPrompt', traits: {"smithy.api#required" => {}}))
    SummaryConsolidationOverride.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    SummaryConsolidationOverride.type = Types::SummaryConsolidationOverride
    SummaryMemoryStrategyInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    SummaryMemoryStrategyInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    SummaryMemoryStrategyInput.add_member(:namespaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespacesList, location_name: 'namespaces'))
    SummaryMemoryStrategyInput.type = Types::SummaryMemoryStrategyInput
    SummaryOverrideConfigurationInput.add_member(:consolidation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SummaryOverrideConsolidationConfigurationInput, location_name: 'consolidation'))
    SummaryOverrideConfigurationInput.type = Types::SummaryOverrideConfigurationInput
    SummaryOverrideConsolidationConfigurationInput.add_member(:append_to_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'appendToPrompt', traits: {"smithy.api#required" => {}}))
    SummaryOverrideConsolidationConfigurationInput.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    SummaryOverrideConsolidationConfigurationInput.type = Types::SummaryOverrideConsolidationConfigurationInput
    TargetConfiguration.add_member(:mcp, Types::TargetConfiguration::Mcp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: McpTargetConfiguration, location_name: 'mcp'))
    TargetConfiguration.add_member(:unknown, Types::TargetConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    TargetConfiguration.type = Types::TargetConfiguration
    TargetStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    TargetStatus.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    TargetStatus.add_member(:update_unsuccessful, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_UNSUCCESSFUL', traits: {"smithy.api#enumValue" => "UPDATE_UNSUCCESSFUL"}))
    TargetStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    TargetStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    TargetStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    TargetSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetSummary)
    TargetSummary.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'targetId', traits: {"smithy.api#required" => {}}))
    TargetSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    TargetSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    TargetSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDescription, location_name: 'description'))
    TargetSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    TargetSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    TargetSummary.type = Types::TargetSummary
    ThrottledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottledException.type = Types::ThrottledException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    ToolDefinition.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ToolDefinition.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"smithy.api#required" => {}}))
    ToolDefinition.add_member(:input_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaDefinition, location_name: 'inputSchema', traits: {"smithy.api#required" => {}}))
    ToolDefinition.add_member(:output_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaDefinition, location_name: 'outputSchema'))
    ToolDefinition.type = Types::ToolDefinition
    ToolDefinitions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToolDefinition)
    ToolSchema.add_member(:s3, Types::ToolSchema::S3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Configuration, location_name: 's3'))
    ToolSchema.add_member(:inline_payload, Types::ToolSchema::InlinePayload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToolDefinitions, location_name: 'inlinePayload'))
    ToolSchema.add_member(:unknown, Types::ToolSchema::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ToolSchema.type = Types::ToolSchema
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonBlankString, location_name: 'message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UpdateAgentRuntimeEndpointRequest.add_member(:agent_runtime_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: 'agentRuntimeId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentRuntimeEndpointRequest.add_member(:endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointName, location_name: 'endpointName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentRuntimeEndpointRequest.add_member(:agent_runtime_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: 'agentRuntimeVersion'))
    UpdateAgentRuntimeEndpointRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentEndpointDescription, location_name: 'description'))
    UpdateAgentRuntimeEndpointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAgentRuntimeEndpointRequest.type = Types::UpdateAgentRuntimeEndpointRequest
    UpdateAgentRuntimeEndpointResponse.add_member(:live_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: 'liveVersion'))
    UpdateAgentRuntimeEndpointResponse.add_member(:target_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: 'targetVersion'))
    UpdateAgentRuntimeEndpointResponse.add_member(:agent_runtime_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeEndpointArn, location_name: 'agentRuntimeEndpointArn', traits: {"smithy.api#required" => {}}))
    UpdateAgentRuntimeEndpointResponse.add_member(:agent_runtime_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeArn, location_name: 'agentRuntimeArn', traits: {"smithy.api#required" => {}}))
    UpdateAgentRuntimeEndpointResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentEndpointStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateAgentRuntimeEndpointResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    UpdateAgentRuntimeEndpointResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#required" => {}}))
    UpdateAgentRuntimeEndpointResponse.type = Types::UpdateAgentRuntimeEndpointResponse
    UpdateAgentRuntimeRequest.add_member(:agent_runtime_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: 'agentRuntimeId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAgentRuntimeRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateAgentRuntimeRequest.add_member(:agent_runtime_artifact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentArtifact, location_name: 'agentRuntimeArtifact', traits: {"smithy.api#required" => {}}))
    UpdateAgentRuntimeRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    UpdateAgentRuntimeRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: 'networkConfiguration', traits: {"smithy.api#required" => {}}))
    UpdateAgentRuntimeRequest.add_member(:protocol_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolConfiguration, location_name: 'protocolConfiguration'))
    UpdateAgentRuntimeRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateAgentRuntimeRequest.add_member(:environment_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: 'environmentVariables'))
    UpdateAgentRuntimeRequest.add_member(:authorizer_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: 'authorizerConfiguration'))
    UpdateAgentRuntimeRequest.type = Types::UpdateAgentRuntimeRequest
    UpdateAgentRuntimeResponse.add_member(:agent_runtime_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeArn, location_name: 'agentRuntimeArn', traits: {"smithy.api#required" => {}}))
    UpdateAgentRuntimeResponse.add_member(:agent_runtime_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeId, location_name: 'agentRuntimeId', traits: {"smithy.api#required" => {}}))
    UpdateAgentRuntimeResponse.add_member(:workload_identity_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: 'workloadIdentityDetails'))
    UpdateAgentRuntimeResponse.add_member(:agent_runtime_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentRuntimeVersion, location_name: 'agentRuntimeVersion', traits: {"smithy.api#required" => {}}))
    UpdateAgentRuntimeResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    UpdateAgentRuntimeResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#required" => {}}))
    UpdateAgentRuntimeResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateAgentRuntimeResponse.type = Types::UpdateAgentRuntimeResponse
    UpdateApiKeyCredentialProviderRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateApiKeyCredentialProviderRequest.add_member(:api_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyType, location_name: 'apiKey', traits: {"smithy.api#required" => {}}))
    UpdateApiKeyCredentialProviderRequest.type = Types::UpdateApiKeyCredentialProviderRequest
    UpdateApiKeyCredentialProviderResponse.add_member(:api_key_secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Secret, location_name: 'apiKeySecretArn', traits: {"smithy.api#property" => {}, "smithy.api#required" => {}}))
    UpdateApiKeyCredentialProviderResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateApiKeyCredentialProviderResponse.add_member(:credential_provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyCredentialProviderArnType, location_name: 'credentialProviderArn', traits: {"smithy.api#required" => {}}))
    UpdateApiKeyCredentialProviderResponse.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    UpdateApiKeyCredentialProviderResponse.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#required" => {}}))
    UpdateApiKeyCredentialProviderResponse.type = Types::UpdateApiKeyCredentialProviderResponse
    UpdateGatewayRequest.add_member(:gateway_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayIdentifier, location_name: 'gatewayIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGatewayRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateGatewayRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayDescription, location_name: 'description'))
    UpdateGatewayRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    UpdateGatewayRequest.add_member(:protocol_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayProtocolType, location_name: 'protocolType', traits: {"smithy.api#required" => {}}))
    UpdateGatewayRequest.add_member(:protocol_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayProtocolConfiguration, location_name: 'protocolConfiguration'))
    UpdateGatewayRequest.add_member(:authorizer_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerType, location_name: 'authorizerType', traits: {"smithy.api#required" => {}}))
    UpdateGatewayRequest.add_member(:authorizer_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: 'authorizerConfiguration', traits: {"smithy.api#required" => {}}))
    UpdateGatewayRequest.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    UpdateGatewayRequest.add_member(:exception_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionLevel, location_name: 'exceptionLevel'))
    UpdateGatewayRequest.type = Types::UpdateGatewayRequest
    UpdateGatewayResponse.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'gatewayArn', traits: {"smithy.api#required" => {}}))
    UpdateGatewayResponse.add_member(:gateway_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayId, location_name: 'gatewayId', traits: {"smithy.api#required" => {}}))
    UpdateGatewayResponse.add_member(:gateway_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayUrl, location_name: 'gatewayUrl'))
    UpdateGatewayResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    UpdateGatewayResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    UpdateGatewayResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateGatewayResponse.add_member(:status_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReasons, location_name: 'statusReasons'))
    UpdateGatewayResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateGatewayResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayDescription, location_name: 'description'))
    UpdateGatewayResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn'))
    UpdateGatewayResponse.add_member(:protocol_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayProtocolType, location_name: 'protocolType', traits: {"smithy.api#required" => {}}))
    UpdateGatewayResponse.add_member(:protocol_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayProtocolConfiguration, location_name: 'protocolConfiguration'))
    UpdateGatewayResponse.add_member(:authorizer_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerType, location_name: 'authorizerType', traits: {"smithy.api#required" => {}}))
    UpdateGatewayResponse.add_member(:authorizer_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: 'authorizerConfiguration'))
    UpdateGatewayResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'kmsKeyArn'))
    UpdateGatewayResponse.add_member(:workload_identity_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: 'workloadIdentityDetails'))
    UpdateGatewayResponse.add_member(:exception_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionLevel, location_name: 'exceptionLevel'))
    UpdateGatewayResponse.type = Types::UpdateGatewayResponse
    UpdateGatewayTargetRequest.add_member(:gateway_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayIdentifier, location_name: 'gatewayIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGatewayTargetRequest.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'targetId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGatewayTargetRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateGatewayTargetRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDescription, location_name: 'description'))
    UpdateGatewayTargetRequest.add_member(:target_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetConfiguration, location_name: 'targetConfiguration', traits: {"smithy.api#required" => {}}))
    UpdateGatewayTargetRequest.add_member(:credential_provider_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderConfigurations, location_name: 'credentialProviderConfigurations', traits: {"smithy.api#required" => {}}))
    UpdateGatewayTargetRequest.type = Types::UpdateGatewayTargetRequest
    UpdateGatewayTargetResponse.add_member(:gateway_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GatewayArn, location_name: 'gatewayArn', traits: {"smithy.api#required" => {}}))
    UpdateGatewayTargetResponse.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'targetId', traits: {"smithy.api#required" => {}}))
    UpdateGatewayTargetResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    UpdateGatewayTargetResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTimestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    UpdateGatewayTargetResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateGatewayTargetResponse.add_member(:status_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReasons, location_name: 'statusReasons'))
    UpdateGatewayTargetResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateGatewayTargetResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDescription, location_name: 'description'))
    UpdateGatewayTargetResponse.add_member(:target_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetConfiguration, location_name: 'targetConfiguration', traits: {"smithy.api#required" => {}}))
    UpdateGatewayTargetResponse.add_member(:credential_provider_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderConfigurations, location_name: 'credentialProviderConfigurations', traits: {"smithy.api#required" => {}}))
    UpdateGatewayTargetResponse.type = Types::UpdateGatewayTargetResponse
    UpdateMemoryInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"max" => 500}}))
    UpdateMemoryInput.add_member(:memory_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemoryId, location_name: 'memoryId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMemoryInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UpdateMemoryInput.add_member(:event_expiry_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'eventExpiryDuration', traits: {"smithy.api#range" => {"min" => 7, "max" => 365}}))
    UpdateMemoryInput.add_member(:memory_execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'memoryExecutionRoleArn'))
    UpdateMemoryInput.add_member(:memory_strategies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyMemoryStrategies, location_name: 'memoryStrategies'))
    UpdateMemoryInput.type = Types::UpdateMemoryInput
    UpdateMemoryOutput.add_member(:memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Memory, location_name: 'memory'))
    UpdateMemoryOutput.type = Types::UpdateMemoryOutput
    UpdateOauth2CredentialProviderRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateOauth2CredentialProviderRequest.add_member(:credential_provider_vendor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderVendorType, location_name: 'credentialProviderVendor', traits: {"smithy.api#required" => {}}))
    UpdateOauth2CredentialProviderRequest.add_member(:oauth2_provider_config_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2ProviderConfigInput, location_name: 'oauth2ProviderConfigInput', traits: {"smithy.api#required" => {}}))
    UpdateOauth2CredentialProviderRequest.type = Types::UpdateOauth2CredentialProviderRequest
    UpdateOauth2CredentialProviderResponse.add_member(:client_secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Secret, location_name: 'clientSecretArn', traits: {"smithy.api#property" => {}, "smithy.api#required" => {}}))
    UpdateOauth2CredentialProviderResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateOauth2CredentialProviderResponse.add_member(:credential_provider_vendor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderVendorType, location_name: 'credentialProviderVendor', traits: {"smithy.api#required" => {}}))
    UpdateOauth2CredentialProviderResponse.add_member(:credential_provider_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderArnType, location_name: 'credentialProviderArn', traits: {"smithy.api#required" => {}}))
    UpdateOauth2CredentialProviderResponse.add_member(:oauth2_provider_config_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Oauth2ProviderConfigOutput, location_name: 'oauth2ProviderConfigOutput', traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateOauth2CredentialProviderResponse.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    UpdateOauth2CredentialProviderResponse.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#required" => {}}))
    UpdateOauth2CredentialProviderResponse.type = Types::UpdateOauth2CredentialProviderResponse
    UpdateWorkloadIdentityRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateWorkloadIdentityRequest.add_member(:allowed_resource_oauth2_return_urls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlListType, location_name: 'allowedResourceOauth2ReturnUrls'))
    UpdateWorkloadIdentityRequest.type = Types::UpdateWorkloadIdentityRequest
    UpdateWorkloadIdentityResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UpdateWorkloadIdentityResponse.add_member(:workload_identity_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityArnType, location_name: 'workloadIdentityArn', traits: {"smithy.api#required" => {}}))
    UpdateWorkloadIdentityResponse.add_member(:allowed_resource_oauth2_return_urls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOauth2ReturnUrlListType, location_name: 'allowedResourceOauth2ReturnUrls'))
    UpdateWorkloadIdentityResponse.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdTime', traits: {"smithy.api#required" => {}}))
    UpdateWorkloadIdentityResponse.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#required" => {}}))
    UpdateWorkloadIdentityResponse.type = Types::UpdateWorkloadIdentityResponse
    UserPreferenceConsolidationOverride.add_member(:append_to_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'appendToPrompt', traits: {"smithy.api#required" => {}}))
    UserPreferenceConsolidationOverride.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    UserPreferenceConsolidationOverride.type = Types::UserPreferenceConsolidationOverride
    UserPreferenceExtractionOverride.add_member(:append_to_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'appendToPrompt', traits: {"smithy.api#required" => {}}))
    UserPreferenceExtractionOverride.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    UserPreferenceExtractionOverride.type = Types::UserPreferenceExtractionOverride
    UserPreferenceMemoryStrategyInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    UserPreferenceMemoryStrategyInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    UserPreferenceMemoryStrategyInput.add_member(:namespaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespacesList, location_name: 'namespaces'))
    UserPreferenceMemoryStrategyInput.type = Types::UserPreferenceMemoryStrategyInput
    UserPreferenceOverrideConfigurationInput.add_member(:extraction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPreferenceOverrideExtractionConfigurationInput, location_name: 'extraction'))
    UserPreferenceOverrideConfigurationInput.add_member(:consolidation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPreferenceOverrideConsolidationConfigurationInput, location_name: 'consolidation'))
    UserPreferenceOverrideConfigurationInput.type = Types::UserPreferenceOverrideConfigurationInput
    UserPreferenceOverrideConsolidationConfigurationInput.add_member(:append_to_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'appendToPrompt', traits: {"smithy.api#required" => {}}))
    UserPreferenceOverrideConsolidationConfigurationInput.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    UserPreferenceOverrideConsolidationConfigurationInput.type = Types::UserPreferenceOverrideConsolidationConfigurationInput
    UserPreferenceOverrideExtractionConfigurationInput.add_member(:append_to_prompt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prompt, location_name: 'appendToPrompt', traits: {"smithy.api#required" => {}}))
    UserPreferenceOverrideExtractionConfigurationInput.add_member(:model_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'modelId', traits: {"smithy.api#required" => {}}))
    UserPreferenceOverrideExtractionConfigurationInput.type = Types::UserPreferenceOverrideExtractionConfigurationInput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "CannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FieldValidationFailed"}))
    ValidationExceptionReason.add_member(:idempotent_parameter_mismatch_exception, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDEMPOTENT_PARAMETER_MISMATCH_EXCEPTION', traits: {"smithy.api#enumValue" => "IdempotentParameterMismatchException"}))
    ValidationExceptionReason.add_member(:root_event_in_other_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOT_EVENT_IN_OTHER_SESSION', traits: {"smithy.api#enumValue" => "EventInOtherSession"}))
    ValidationExceptionReason.add_member(:resource_conflict, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_CONFLICT', traits: {"smithy.api#enumValue" => "ResourceConflict"}))
    WorkloadIdentityDetails.add_member(:workload_identity_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityArn, location_name: 'workloadIdentityArn', traits: {"smithy.api#required" => {}}))
    WorkloadIdentityDetails.type = Types::WorkloadIdentityDetails
    WorkloadIdentityList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityType)
    WorkloadIdentityType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityNameType, location_name: 'name', traits: {"smithy.api#required" => {}}))
    WorkloadIdentityType.add_member(:workload_identity_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkloadIdentityArnType, location_name: 'workloadIdentityArn', traits: {"smithy.api#required" => {}}))
    WorkloadIdentityType.type = Types::WorkloadIdentityType

    AmazonBedrockAgentCoreControl = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.bedrockagentcorecontrol#AmazonBedrockAgentCoreControl"
      service.name = "AmazonBedrockAgentCoreControl"
      service.version = "2023-06-05"
      service.traits = {"aws.api#service" => {"sdkId" => "Bedrock AgentCore Control", "arnNamespace" => "bedrock-agentcore", "endpointPrefix" => "bedrock-agentcore-control", "cloudTrailEventSource" => "bedrock-agentcore.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "bedrock-agentcore"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "Amazon Bedrock Agent Core Control Plane Fronting Layer"}
      service.add_operation(:create_agent_runtime, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#CreateAgentRuntime"
        operation.name = "CreateAgentRuntime"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAgentRuntimeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAgentRuntimeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "PUT", "uri" => "/runtimes/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_agent_runtime_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#CreateAgentRuntimeEndpoint"
        operation.name = "CreateAgentRuntimeEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAgentRuntimeEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAgentRuntimeEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/runtimes/{agentRuntimeId}/runtime-endpoints/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_api_key_credential_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#CreateApiKeyCredentialProvider"
        operation.name = "CreateApiKeyCredentialProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiKeyCredentialProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApiKeyCredentialProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DecryptionFailure)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionFailure)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/CreateApiKeyCredentialProvider", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_browser, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#CreateBrowser"
        operation.name = "CreateBrowser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBrowserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBrowserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "PUT", "uri" => "/browsers"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_code_interpreter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#CreateCodeInterpreter"
        operation.name = "CreateCodeInterpreter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCodeInterpreterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCodeInterpreterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "PUT", "uri" => "/code-interpreters"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#CreateGateway"
        operation.name = "CreateGateway"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGatewayRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGatewayResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/gateways/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_gateway_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#CreateGatewayTarget"
        operation.name = "CreateGatewayTarget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGatewayTargetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGatewayTargetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/gateways/{gatewayIdentifier}/targets/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_memory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#CreateMemory"
        operation.name = "CreateMemory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMemoryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMemoryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/create"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_oauth2_credential_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#CreateOauth2CredentialProvider"
        operation.name = "CreateOauth2CredentialProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOauth2CredentialProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateOauth2CredentialProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DecryptionFailure)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionFailure)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/CreateOauth2CredentialProvider", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_workload_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#CreateWorkloadIdentity"
        operation.name = "CreateWorkloadIdentity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkloadIdentityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkloadIdentityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/CreateWorkloadIdentity", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_agent_runtime, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#DeleteAgentRuntime"
        operation.name = "DeleteAgentRuntime"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgentRuntimeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgentRuntimeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/runtimes/{agentRuntimeId}/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_agent_runtime_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#DeleteAgentRuntimeEndpoint"
        operation.name = "DeleteAgentRuntimeEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgentRuntimeEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAgentRuntimeEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/runtimes/{agentRuntimeId}/runtime-endpoints/{endpointName}/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_api_key_credential_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#DeleteApiKeyCredentialProvider"
        operation.name = "DeleteApiKeyCredentialProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiKeyCredentialProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApiKeyCredentialProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/DeleteApiKeyCredentialProvider", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_browser, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#DeleteBrowser"
        operation.name = "DeleteBrowser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBrowserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBrowserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/browsers/{browserId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_code_interpreter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#DeleteCodeInterpreter"
        operation.name = "DeleteCodeInterpreter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCodeInterpreterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCodeInterpreterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/code-interpreters/{codeInterpreterId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#DeleteGateway"
        operation.name = "DeleteGateway"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGatewayRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGatewayResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/gateways/{gatewayIdentifier}/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_gateway_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#DeleteGatewayTarget"
        operation.name = "DeleteGatewayTarget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGatewayTargetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGatewayTargetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/gateways/{gatewayIdentifier}/targets/{targetId}/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_memory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#DeleteMemory"
        operation.name = "DeleteMemory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMemoryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMemoryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/memories/{memoryId}/delete"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_oauth2_credential_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#DeleteOauth2CredentialProvider"
        operation.name = "DeleteOauth2CredentialProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOauth2CredentialProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteOauth2CredentialProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/DeleteOauth2CredentialProvider", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workload_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#DeleteWorkloadIdentity"
        operation.name = "DeleteWorkloadIdentity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkloadIdentityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkloadIdentityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/DeleteWorkloadIdentity", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_agent_runtime, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#GetAgentRuntime"
        operation.name = "GetAgentRuntime"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentRuntimeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentRuntimeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/runtimes/{agentRuntimeId}/"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_agent_runtime_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#GetAgentRuntimeEndpoint"
        operation.name = "GetAgentRuntimeEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentRuntimeEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAgentRuntimeEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/runtimes/{agentRuntimeId}/runtime-endpoints/{endpointName}/"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_api_key_credential_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#GetApiKeyCredentialProvider"
        operation.name = "GetApiKeyCredentialProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiKeyCredentialProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApiKeyCredentialProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DecryptionFailure)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/GetApiKeyCredentialProvider", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_browser, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#GetBrowser"
        operation.name = "GetBrowser"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBrowserRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBrowserResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/browsers/{browserId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_code_interpreter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#GetCodeInterpreter"
        operation.name = "GetCodeInterpreter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCodeInterpreterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCodeInterpreterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/code-interpreters/{codeInterpreterId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#GetGateway"
        operation.name = "GetGateway"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGatewayRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGatewayResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/gateways/{gatewayIdentifier}/"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_gateway_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#GetGatewayTarget"
        operation.name = "GetGatewayTarget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGatewayTargetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGatewayTargetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/gateways/{gatewayIdentifier}/targets/{targetId}/"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_memory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#GetMemory"
        operation.name = "GetMemory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMemoryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMemoryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/memories/{memoryId}/details"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_oauth2_credential_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#GetOauth2CredentialProvider"
        operation.name = "GetOauth2CredentialProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOauth2CredentialProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetOauth2CredentialProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DecryptionFailure)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/GetOauth2CredentialProvider", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_token_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#GetTokenVault"
        operation.name = "GetTokenVault"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTokenVaultRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTokenVaultResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/get-token-vault", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workload_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#GetWorkloadIdentity"
        operation.name = "GetWorkloadIdentity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadIdentityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkloadIdentityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/GetWorkloadIdentity", "method" => "POST"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_agent_runtime_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#ListAgentRuntimeEndpoints"
        operation.name = "ListAgentRuntimeEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentRuntimeEndpointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentRuntimeEndpointsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/runtimes/{agentRuntimeId}/runtime-endpoints/"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAgentRuntimeEndpoints.new
      end)
      service.add_operation(:list_agent_runtime_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#ListAgentRuntimeVersions"
        operation.name = "ListAgentRuntimeVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentRuntimeVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentRuntimeVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/runtimes/{agentRuntimeId}/versions/"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAgentRuntimeVersions.new
      end)
      service.add_operation(:list_agent_runtimes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#ListAgentRuntimes"
        operation.name = "ListAgentRuntimes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentRuntimesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAgentRuntimesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/runtimes/"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAgentRuntimes.new
      end)
      service.add_operation(:list_api_key_credential_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#ListApiKeyCredentialProviders"
        operation.name = "ListApiKeyCredentialProviders"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApiKeyCredentialProvidersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApiKeyCredentialProvidersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/ListApiKeyCredentialProviders", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApiKeyCredentialProviders.new
      end)
      service.add_operation(:list_browsers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#ListBrowsers"
        operation.name = "ListBrowsers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBrowsersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBrowsersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/browsers"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBrowsers.new
      end)
      service.add_operation(:list_code_interpreters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#ListCodeInterpreters"
        operation.name = "ListCodeInterpreters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCodeInterpretersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCodeInterpretersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/code-interpreters"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCodeInterpreters.new
      end)
      service.add_operation(:list_gateway_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#ListGatewayTargets"
        operation.name = "ListGatewayTargets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGatewayTargetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGatewayTargetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/gateways/{gatewayIdentifier}/targets/"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGatewayTargets.new
      end)
      service.add_operation(:list_gateways, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#ListGateways"
        operation.name = "ListGateways"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGatewaysRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGatewaysResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/gateways/"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGateways.new
      end)
      service.add_operation(:list_memories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#ListMemories"
        operation.name = "ListMemories"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMemoriesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMemoriesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/memories/"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMemories.new
      end)
      service.add_operation(:list_oauth2_credential_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#ListOauth2CredentialProviders"
        operation.name = "ListOauth2CredentialProviders"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOauth2CredentialProvidersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOauth2CredentialProvidersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/ListOauth2CredentialProviders", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListOauth2CredentialProviders.new
      end)
      service.add_operation(:list_workload_identities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#ListWorkloadIdentities"
        operation.name = "ListWorkloadIdentities"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadIdentitiesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkloadIdentitiesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/ListWorkloadIdentities", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkloadIdentities.new
      end)
      service.add_operation(:set_token_vault_cmk, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#SetTokenVaultCMK"
        operation.name = "SetTokenVaultCMK"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetTokenVaultCMKRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetTokenVaultCMKResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/set-token-vault-cmk", "method" => "POST"}}
      end)
      service.add_operation(:update_agent_runtime, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#UpdateAgentRuntime"
        operation.name = "UpdateAgentRuntime"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentRuntimeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentRuntimeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "PUT", "uri" => "/runtimes/{agentRuntimeId}/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_agent_runtime_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#UpdateAgentRuntimeEndpoint"
        operation.name = "UpdateAgentRuntimeEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentRuntimeEndpointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAgentRuntimeEndpointResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/runtimes/{agentRuntimeId}/runtime-endpoints/{endpointName}/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_api_key_credential_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#UpdateApiKeyCredentialProvider"
        operation.name = "UpdateApiKeyCredentialProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiKeyCredentialProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApiKeyCredentialProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DecryptionFailure)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionFailure)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/UpdateApiKeyCredentialProvider", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#UpdateGateway"
        operation.name = "UpdateGateway"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewayRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewayResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/gateways/{gatewayIdentifier}/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_gateway_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#UpdateGatewayTarget"
        operation.name = "UpdateGatewayTarget"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewayTargetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGatewayTargetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/gateways/{gatewayIdentifier}/targets/{targetId}/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_memory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#UpdateMemory"
        operation.name = "UpdateMemory"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMemoryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMemoryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/memories/{memoryId}/update"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_oauth2_credential_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#UpdateOauth2CredentialProvider"
        operation.name = "UpdateOauth2CredentialProvider"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOauth2CredentialProviderRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOauth2CredentialProviderResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DecryptionFailure)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionFailure)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/UpdateOauth2CredentialProvider", "method" => "POST"}}
      end)
      service.add_operation(:update_workload_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockagentcorecontrol#UpdateWorkloadIdentity"
        operation.name = "UpdateWorkloadIdentity"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkloadIdentityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkloadIdentityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "smithy.api#http" => {"uri" => "/identities/UpdateWorkloadIdentity", "method" => "POST"}, "smithy.api#idempotent" => {}}
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
