# frozen_string_literal: true

# This is generated code!

module Aws::AgentRegistryControl
  # This module contains a schema composed of shapes used by the client.
  module Schema

    A2aAgentCardDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#A2aAgentCardDescriptor", name: "A2aAgentCardDescriptor")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AgUiDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#AgUiDescriptor", name: "AgUiDescriptor")
    AgentCoreGatewayProtocolType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#AgentCoreGatewayProtocolType", name: "AgentCoreGatewayProtocolType")
    AgentCoreGatewaySourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#AgentCoreGatewaySourceDetails", name: "AgentCoreGatewaySourceDetails")
    AgentCoreRuntimeProtocolConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#AgentCoreRuntimeProtocolConfiguration", name: "AgentCoreRuntimeProtocolConfiguration")
    AgentCoreRuntimeServerProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#AgentCoreRuntimeServerProtocol", name: "AgentCoreRuntimeServerProtocol")
    AgentCoreRuntimeSourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#AgentCoreRuntimeSourceDetails", name: "AgentCoreRuntimeSourceDetails")
    AgentSkillsAdditionalData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#AgentSkillsAdditionalData", name: "AgentSkillsAdditionalData")
    AgentSkillsDefinitionDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#AgentSkillsDefinitionDescriptor", name: "AgentSkillsDefinitionDescriptor")
    AgentSkillsMdDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#AgentSkillsMdDescriptor", name: "AgentSkillsMdDescriptor")
    AllowedAudience = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#AllowedAudience", name: "AllowedAudience", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    AllowedAudienceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#AllowedAudienceList", name: "AllowedAudienceList", traits: {"smithy.api#length" => {"min" => 1}})
    AllowedClient = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#AllowedClient", name: "AllowedClient", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    AllowedClientsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#AllowedClientsList", name: "AllowedClientsList", traits: {"smithy.api#length" => {"min" => 1}})
    AllowedScopeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#AllowedScopeType", name: "AllowedScopeType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\x21\\x23-\\x5B\\x5D-\\x7E]+$"})
    AllowedScopesType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#AllowedScopesType", name: "AllowedScopesType", traits: {"smithy.api#length" => {"min" => 1}})
    ApprovalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#ApprovalConfiguration", name: "ApprovalConfiguration")
    AuthorizerConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.agentregistrycontrol#AuthorizerConfiguration", name: "AuthorizerConfiguration")
    AuthorizingClaimMatchValueType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#AuthorizingClaimMatchValueType", name: "AuthorizingClaimMatchValueType")
    AutoApprovalRule = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#AutoApprovalRule", name: "AutoApprovalRule")
    AutoApprovalRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#AutoApprovalRuleList", name: "AutoApprovalRuleList", traits: {"smithy.api#length" => {"max" => 10}})
    AutoDetection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#AutoDetection", name: "AutoDetection")
    AutoDetectionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#AutoDetectionConfiguration", name: "AutoDetectionConfiguration")
    AutoDetectionScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#AutoDetectionScope", name: "AutoDetectionScope")
    AutoDetectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#AutoDetectionStatus", name: "AutoDetectionStatus")
    ClaimMatchOperatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#ClaimMatchOperatorType", name: "ClaimMatchOperatorType")
    ClaimMatchValueType = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.agentregistrycontrol#ClaimMatchValueType", name: "ClaimMatchValueType")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 33, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,256}$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateRegistryRecordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#CreateRegistryRecordRequest", name: "CreateRegistryRecordRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.agentregistrycontrol#RegistryResource"}]})
    CreateRegistryRecordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#CreateRegistryRecordResponse", name: "CreateRegistryRecordResponse")
    CreateRegistryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#CreateRegistryRequest", name: "CreateRegistryRequest")
    CreateRegistryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#CreateRegistryResponse", name: "CreateRegistryResponse")
    CreatorAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#CreatorAccountId", name: "CreatorAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    CredentialProviderArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#CredentialProviderArn", name: "CredentialProviderArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:.*$"})
    CustomClaimValidationType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#CustomClaimValidationType", name: "CustomClaimValidationType")
    CustomClaimValidationsType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#CustomClaimValidationsType", name: "CustomClaimValidationsType", traits: {"smithy.api#length" => {"min" => 1}})
    CustomDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#CustomDescriptor", name: "CustomDescriptor")
    CustomJWTAuthorizerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#CustomJWTAuthorizerConfiguration", name: "CustomJWTAuthorizerConfiguration")
    CustomMetadataDocument = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.agentregistrycontrol#CustomMetadataDocument", name: "CustomMetadataDocument", traits: {"smithy.api#sensitive" => {}})
    CustomMetadataSchemaComplianceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#CustomMetadataSchemaComplianceStatus", name: "CustomMetadataSchemaComplianceStatus")
    CustomMetadataSchemaConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#CustomMetadataSchemaConfiguration", name: "CustomMetadataSchemaConfiguration", traits: {"smithy.api#sensitive" => {}})
    CustomMetadataSchemaDefinition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#CustomMetadataSchemaDefinition", name: "CustomMetadataSchemaDefinition", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}, "smithy.api#sensitive" => {}})
    CustomParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.agentregistrycontrol#CustomParameterMap", name: "CustomParameterMap")
    DataSchemaVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#DataSchemaVersion", name: "DataSchemaVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DateTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.agentregistrycontrol#DateTimestamp", name: "DateTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteRegistryRecordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#DeleteRegistryRecordRequest", name: "DeleteRegistryRecordRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.agentregistrycontrol#RegistryResource"}]})
    DeleteRegistryRecordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#DeleteRegistryRecordResponse", name: "DeleteRegistryRecordResponse")
    DeleteRegistryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#DeleteRegistryRequest", name: "DeleteRegistryRequest")
    DeleteRegistryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#DeleteRegistryResponse", name: "DeleteRegistryResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#sensitive" => {}})
    DescriptorData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#DescriptorData", name: "DescriptorData", traits: {"smithy.api#length" => {"min" => 1, "max" => 102400}, "smithy.api#sensitive" => {}})
    DescriptorSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#DescriptorSource", name: "DescriptorSource")
    DescriptorSourceFromUrl = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#DescriptorSourceFromUrl", name: "DescriptorSourceFromUrl")
    DescriptorSourceUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#DescriptorSourceUrl", name: "DescriptorSourceUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^https://.*$"})
    Descriptors = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#Descriptors", name: "Descriptors")
    DiscoveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#DiscoveryConfiguration", name: "DiscoveryConfiguration")
    DiscoveryUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#DiscoveryUrl", name: "DiscoveryUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.+/\\.well-known/openid-configuration$"})
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#EncryptionConfiguration", name: "EncryptionConfiguration")
    EndpointIpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#EndpointIpAddressType", name: "EndpointIpAddressType")
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#FilterValues", name: "FilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    GetRegistryRecordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#GetRegistryRecordRequest", name: "GetRegistryRecordRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.agentregistrycontrol#RegistryResource"}]})
    GetRegistryRecordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#GetRegistryRecordResponse", name: "GetRegistryRecordResponse")
    GetRegistryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#GetRegistryRequest", name: "GetRegistryRequest")
    GetRegistryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#GetRegistryResponse", name: "GetRegistryResponse")
    HttpDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#HttpDescriptor", name: "HttpDescriptor")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    IamSigningRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#IamSigningRegion", name: "IamSigningRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z0-9-]+$"})
    IamSigningServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#IamSigningServiceName", name: "IamSigningServiceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    InboundTokenClaimNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#InboundTokenClaimNameType", name: "InboundTokenClaimNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9_.-:]+$"})
    InboundTokenClaimValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#InboundTokenClaimValueType", name: "InboundTokenClaimValueType")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$"})
    ListRegistriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#ListRegistriesRequest", name: "ListRegistriesRequest")
    ListRegistriesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#ListRegistriesResponse", name: "ListRegistriesResponse")
    ListRegistryRecordsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#ListRegistryRecordsRequest", name: "ListRegistryRecordsRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.agentregistrycontrol#RegistryResource"}]})
    ListRegistryRecordsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#ListRegistryRecordsResponse", name: "ListRegistryRecordsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ManagedVpcResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#ManagedVpcResource", name: "ManagedVpcResource")
    MatchValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#MatchValueString", name: "MatchValueString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9_.:/-]+$"})
    MatchValueStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#MatchValueStringList", name: "MatchValueStringList", traits: {"smithy.api#length" => {"min" => 1}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.agentregistrycontrol#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    McpServerAdditionalData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#McpServerAdditionalData", name: "McpServerAdditionalData")
    McpServerDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#McpServerDescriptor", name: "McpServerDescriptor")
    McpToolsDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#McpToolsDescriptor", name: "McpToolsDescriptor")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S*$"})
    NonBlankString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#NonBlankString", name: "NonBlankString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    PrivateEndpoint = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.agentregistrycontrol#PrivateEndpoint", name: "PrivateEndpoint")
    PrivateEndpointOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#PrivateEndpointOverride", name: "PrivateEndpointOverride")
    PrivateEndpointOverrideDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#PrivateEndpointOverrideDomain", name: "PrivateEndpointOverrideDomain", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}})
    PrivateEndpointOverrides = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#PrivateEndpointOverrides", name: "PrivateEndpointOverrides", traits: {"smithy.api#length" => {"max" => 5}})
    Provenance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#Provenance", name: "Provenance")
    ProvenanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#ProvenanceList", name: "ProvenanceList", traits: {"smithy.api#length" => {"max" => 1}})
    ProvenanceRelation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#ProvenanceRelation", name: "ProvenanceRelation")
    ProvenanceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#ProvenanceSummary", name: "ProvenanceSummary")
    ProvenanceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#ProvenanceSummaryList", name: "ProvenanceSummaryList", traits: {"smithy.api#length" => {"max" => 1}})
    RecordIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#RecordIdentifier", name: "RecordIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:agent-registry:[a-z0-9-]+:[0-9]{12}:registry/[a-zA-Z0-9]{12,16}/record/)?[a-zA-Z0-9]{12}$"})
    RecordType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#RecordType", name: "RecordType")
    RecordTypeSchemaOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#RecordTypeSchemaOverride", name: "RecordTypeSchemaOverride")
    RecordTypeSchemaOverrideList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#RecordTypeSchemaOverrideList", name: "RecordTypeSchemaOverrideList", traits: {"smithy.api#length" => {"max" => 10}})
    RegistryArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryArn", name: "RegistryArn", traits: {"aws.api#arnReference" => {"type" => "AWS::AgentRegistry::Registry"}, "smithy.api#length" => {"min" => 46, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:agent-registry:[a-z0-9-]+:[0-9]{12}:registry/[a-zA-Z0-9]{12,16}$"})
    RegistryAuthorizerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryAuthorizerType", name: "RegistryAuthorizerType")
    RegistryFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryFilter", name: "RegistryFilter")
    RegistryFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryFilterList", name: "RegistryFilterList", traits: {"smithy.api#length" => {"max" => 10}})
    RegistryFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryFilterName", name: "RegistryFilterName")
    RegistryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryId", name: "RegistryId", traits: {"smithy.api#length" => {"min" => 12, "max" => 16}, "smithy.api#pattern" => "^[a-zA-Z0-9]{12,16}$"})
    RegistryIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryIdentifier", name: "RegistryIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn:aws(-[^:]+)?:agent-registry:[a-z0-9-]+:[0-9]{12}:registry/)?[a-zA-Z0-9]{12,16}$"})
    RegistryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryName", name: "RegistryName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_\\-\\.\\/]*$"})
    RegistryRecordArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordArn", name: "RegistryRecordArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:agent-registry:[a-z0-9-]+:[0-9]{12}:registry/[a-zA-Z0-9]{12,16}/record/[a-zA-Z0-9]{12}$"})
    RegistryRecordCredentialProviderConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordCredentialProviderConfiguration", name: "RegistryRecordCredentialProviderConfiguration")
    RegistryRecordCredentialProviderConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordCredentialProviderConfigurationList", name: "RegistryRecordCredentialProviderConfigurationList", traits: {"smithy.api#length" => {"max" => 1}})
    RegistryRecordCredentialProviderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordCredentialProviderType", name: "RegistryRecordCredentialProviderType")
    RegistryRecordCredentialProviderUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordCredentialProviderUnion", name: "RegistryRecordCredentialProviderUnion")
    RegistryRecordDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordDisplayName", name: "RegistryRecordDisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    RegistryRecordFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordFilter", name: "RegistryRecordFilter")
    RegistryRecordFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordFilterList", name: "RegistryRecordFilterList", traits: {"smithy.api#length" => {"max" => 10}})
    RegistryRecordFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordFilterName", name: "RegistryRecordFilterName")
    RegistryRecordIamCredentialProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordIamCredentialProvider", name: "RegistryRecordIamCredentialProvider")
    RegistryRecordId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordId", name: "RegistryRecordId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[a-zA-Z0-9]{12}$"})
    RegistryRecordName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordName", name: "RegistryRecordName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_\\-\\.\\/]*$"})
    RegistryRecordOAuthCredentialProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordOAuthCredentialProvider", name: "RegistryRecordOAuthCredentialProvider")
    RegistryRecordOAuthGrantType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordOAuthGrantType", name: "RegistryRecordOAuthGrantType")
    RegistryRecordStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordStatus", name: "RegistryRecordStatus")
    RegistryRecordSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordSummary", name: "RegistryRecordSummary")
    RegistryRecordSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordSummaryList", name: "RegistryRecordSummaryList")
    RegistryRecordVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryRecordVersion", name: "RegistryRecordVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9.-]+$"})
    RegistryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#RegistryStatus", name: "RegistryStatus")
    RegistrySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#RegistrySummary", name: "RegistrySummary")
    RegistrySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#RegistrySummaryList", name: "RegistrySummaryList")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    ResourceConfigurationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#ResourceConfigurationIdentifier", name: "ResourceConfigurationIdentifier", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^((rcfg-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceconfiguration/rcfg-[0-9a-z]{17}))$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceTagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.agentregistrycontrol#ResourceTagsMap", name: "ResourceTagsMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    RoutingDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#RoutingDomain", name: "RoutingDomain", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}})
    ScopeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#ScopeList", name: "ScopeList")
    SecurityGroupIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#SecurityGroupIdentifier", name: "SecurityGroupIdentifier", traits: {"smithy.api#length" => {"min" => 10, "max" => 48}, "smithy.api#pattern" => "^sg-(([0-9a-z]{8})|([0-9a-z]{17}))$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    SelfManagedLatticeResource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.agentregistrycontrol#SelfManagedLatticeResource", name: "SelfManagedLatticeResource")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SourceDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.agentregistrycontrol#SourceDetails", name: "SourceDetails")
    SourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#SourceId", name: "SourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:[a-zA-Z0-9-]+:[a-z0-9-]*:[0-9]{12}:.+$"})
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#SourceType", name: "SourceType")
    SubmitRegistryRecordForApprovalRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#SubmitRegistryRecordForApprovalRequest", name: "SubmitRegistryRecordForApprovalRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.agentregistrycontrol#RegistryResource"}]})
    SubmitRegistryRecordForApprovalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#SubmitRegistryRecordForApprovalResponse", name: "SubmitRegistryRecordForApprovalResponse")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 15, "max" => 24}, "smithy.api#pattern" => "^subnet-[0-9a-zA-Z]{8,17}$"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#SubnetIds", name: "SubnetIds")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s._:/=+@-]*$"})
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.agentregistrycontrol#TagsMap", name: "TagsMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateRegistryRecordRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdateRegistryRecordRequest", name: "UpdateRegistryRecordRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.agentregistrycontrol#RegistryResource"}]})
    UpdateRegistryRecordResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdateRegistryRecordResponse", name: "UpdateRegistryRecordResponse")
    UpdateRegistryRecordStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdateRegistryRecordStatusRequest", name: "UpdateRegistryRecordStatusRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.agentregistrycontrol#RegistryResource"}]})
    UpdateRegistryRecordStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdateRegistryRecordStatusResponse", name: "UpdateRegistryRecordStatusResponse")
    UpdateRegistryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdateRegistryRequest", name: "UpdateRegistryRequest")
    UpdateRegistryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdateRegistryResponse", name: "UpdateRegistryResponse")
    UpdatedA2aAgentCardDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedA2aAgentCardDescriptor", name: "UpdatedA2aAgentCardDescriptor")
    UpdatedA2aAgentCardDescriptorFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedA2aAgentCardDescriptorFields", name: "UpdatedA2aAgentCardDescriptorFields")
    UpdatedAgUiDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedAgUiDescriptor", name: "UpdatedAgUiDescriptor")
    UpdatedAgUiDescriptorFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedAgUiDescriptorFields", name: "UpdatedAgUiDescriptorFields")
    UpdatedAgentSkillsAdditionalData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedAgentSkillsAdditionalData", name: "UpdatedAgentSkillsAdditionalData")
    UpdatedAgentSkillsAdditionalDataFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedAgentSkillsAdditionalDataFields", name: "UpdatedAgentSkillsAdditionalDataFields")
    UpdatedAgentSkillsDefinitionDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedAgentSkillsDefinitionDescriptor", name: "UpdatedAgentSkillsDefinitionDescriptor")
    UpdatedAgentSkillsDefinitionDescriptorFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedAgentSkillsDefinitionDescriptorFields", name: "UpdatedAgentSkillsDefinitionDescriptorFields")
    UpdatedAgentSkillsMdDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedAgentSkillsMdDescriptor", name: "UpdatedAgentSkillsMdDescriptor")
    UpdatedAgentSkillsMdDescriptorFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedAgentSkillsMdDescriptorFields", name: "UpdatedAgentSkillsMdDescriptorFields")
    UpdatedApprovalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedApprovalConfiguration", name: "UpdatedApprovalConfiguration")
    UpdatedAuthorizerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedAuthorizerConfiguration", name: "UpdatedAuthorizerConfiguration")
    UpdatedAutoDetectionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedAutoDetectionConfiguration", name: "UpdatedAutoDetectionConfiguration")
    UpdatedCustomDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedCustomDescriptor", name: "UpdatedCustomDescriptor")
    UpdatedCustomDescriptorFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedCustomDescriptorFields", name: "UpdatedCustomDescriptorFields")
    UpdatedCustomMetadataMap = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedCustomMetadataMap", name: "UpdatedCustomMetadataMap")
    UpdatedCustomMetadataSchemaConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedCustomMetadataSchemaConfiguration", name: "UpdatedCustomMetadataSchemaConfiguration")
    UpdatedDataSchemaVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedDataSchemaVersion", name: "UpdatedDataSchemaVersion")
    UpdatedDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedDescription", name: "UpdatedDescription")
    UpdatedDescriptorData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedDescriptorData", name: "UpdatedDescriptorData")
    UpdatedDescriptorSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedDescriptorSource", name: "UpdatedDescriptorSource")
    UpdatedDescriptors = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedDescriptors", name: "UpdatedDescriptors")
    UpdatedDescriptorsFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedDescriptorsFields", name: "UpdatedDescriptorsFields")
    UpdatedDiscoveryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedDiscoveryConfiguration", name: "UpdatedDiscoveryConfiguration")
    UpdatedDisplayName = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedDisplayName", name: "UpdatedDisplayName")
    UpdatedHttpDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedHttpDescriptor", name: "UpdatedHttpDescriptor")
    UpdatedHttpDescriptorFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedHttpDescriptorFields", name: "UpdatedHttpDescriptorFields")
    UpdatedMcpServerAdditionalData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedMcpServerAdditionalData", name: "UpdatedMcpServerAdditionalData")
    UpdatedMcpServerAdditionalDataFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedMcpServerAdditionalDataFields", name: "UpdatedMcpServerAdditionalDataFields")
    UpdatedMcpServerDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedMcpServerDescriptor", name: "UpdatedMcpServerDescriptor")
    UpdatedMcpServerDescriptorFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedMcpServerDescriptorFields", name: "UpdatedMcpServerDescriptorFields")
    UpdatedMcpToolsDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedMcpToolsDescriptor", name: "UpdatedMcpToolsDescriptor")
    UpdatedMcpToolsDescriptorFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#UpdatedMcpToolsDescriptorFields", name: "UpdatedMcpToolsDescriptorFields")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.agentregistrycontrol#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.agentregistrycontrol#ValidationExceptionReason", name: "ValidationExceptionReason")
    VpcIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.agentregistrycontrol#VpcIdentifier", name: "VpcIdentifier", traits: {"smithy.api#length" => {"min" => 10, "max" => 48}, "smithy.api#pattern" => "^vpc-(([0-9a-z]{8})|([0-9a-z]{17}))$"})
    WorkloadIdentityDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.agentregistrycontrol#WorkloadIdentityDetails", name: "WorkloadIdentityDetails")

    A2aAgentCardDescriptor.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorData, name: "data"))
    A2aAgentCardDescriptor.add_member(:data_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchemaVersion, name: "dataSchemaVersion"))
    A2aAgentCardDescriptor.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorSource, name: "source"))
    A2aAgentCardDescriptor.type = Types::A2aAgentCardDescriptor
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AgUiDescriptor.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorSource, name: "source"))
    AgUiDescriptor.type = Types::AgUiDescriptor
    AgentCoreGatewayProtocolType.add_member(:mcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP", traits: {"smithy.api#enumValue" => "MCP"}))
    AgentCoreGatewaySourceDetails.add_member(:protocol_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCoreGatewayProtocolType, name: "protocolType"))
    AgentCoreGatewaySourceDetails.add_member(:authorizer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "authorizerType"))
    AgentCoreGatewaySourceDetails.add_member(:authorizer_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerConfiguration, name: "authorizerConfiguration"))
    AgentCoreGatewaySourceDetails.add_member(:workload_identity_details, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIdentityDetails, name: "workloadIdentityDetails"))
    AgentCoreGatewaySourceDetails.type = Types::AgentCoreGatewaySourceDetails
    AgentCoreRuntimeProtocolConfiguration.add_member(:server_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCoreRuntimeServerProtocol, name: "serverProtocol"))
    AgentCoreRuntimeProtocolConfiguration.type = Types::AgentCoreRuntimeProtocolConfiguration
    AgentCoreRuntimeServerProtocol.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    AgentCoreRuntimeServerProtocol.add_member(:a2_a, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "A2A", traits: {"smithy.api#enumValue" => "A2A"}))
    AgentCoreRuntimeServerProtocol.add_member(:mcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP", traits: {"smithy.api#enumValue" => "MCP"}))
    AgentCoreRuntimeServerProtocol.add_member(:agui, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGUI", traits: {"smithy.api#enumValue" => "AGUI"}))
    AgentCoreRuntimeSourceDetails.add_member(:protocol_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCoreRuntimeProtocolConfiguration, name: "protocolConfiguration"))
    AgentCoreRuntimeSourceDetails.add_member(:authorizer_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerConfiguration, name: "authorizerConfiguration"))
    AgentCoreRuntimeSourceDetails.add_member(:workload_identity_details, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkloadIdentityDetails, name: "workloadIdentityDetails"))
    AgentCoreRuntimeSourceDetails.type = Types::AgentCoreRuntimeSourceDetails
    AgentSkillsAdditionalData.add_member(:skill_md, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSkillsMdDescriptor, name: "skillMd"))
    AgentSkillsAdditionalData.type = Types::AgentSkillsAdditionalData
    AgentSkillsDefinitionDescriptor.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorData, name: "data"))
    AgentSkillsDefinitionDescriptor.add_member(:data_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchemaVersion, name: "dataSchemaVersion"))
    AgentSkillsDefinitionDescriptor.add_member(:additional_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSkillsAdditionalData, name: "additionalData"))
    AgentSkillsDefinitionDescriptor.type = Types::AgentSkillsDefinitionDescriptor
    AgentSkillsMdDescriptor.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorData, name: "data"))
    AgentSkillsMdDescriptor.add_member(:data_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchemaVersion, name: "dataSchemaVersion"))
    AgentSkillsMdDescriptor.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorSource, name: "source"))
    AgentSkillsMdDescriptor.type = Types::AgentSkillsMdDescriptor
    AllowedAudienceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedAudience, name: "member"))
    AllowedClientsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedClient, name: "member"))
    AllowedScopesType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedScopeType, name: "member"))
    ApprovalConfiguration.add_member(:auto_approval_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoApprovalRuleList, name: "autoApprovalRules"))
    ApprovalConfiguration.type = Types::ApprovalConfiguration
    AuthorizerConfiguration.add_member(:custom_jwt_authorizer, Types::AuthorizerConfiguration::CustomJWTAuthorizer, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomJWTAuthorizerConfiguration, name: "customJWTAuthorizer"))
    AuthorizerConfiguration.add_member(:unknown, Types::AuthorizerConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AuthorizerConfiguration.type = Types::AuthorizerConfiguration
    AuthorizingClaimMatchValueType.add_member(:claim_match_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ClaimMatchValueType, name: "claimMatchValue", traits: {"smithy.api#required" => {}}))
    AuthorizingClaimMatchValueType.add_member(:claim_match_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ClaimMatchOperatorType, name: "claimMatchOperator", traits: {"smithy.api#required" => {}}))
    AuthorizingClaimMatchValueType.type = Types::AuthorizingClaimMatchValueType
    AutoApprovalRule.add_member(:approve_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVE_ALL", traits: {"smithy.api#enumValue" => "APPROVE_ALL"}))
    AutoApprovalRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoApprovalRule, name: "member"))
    AutoDetection.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDetectionConfiguration, name: "configuration", traits: {"smithy.api#required" => {}}))
    AutoDetection.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDetectionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AutoDetection.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    AutoDetection.type = Types::AutoDetection
    AutoDetectionConfiguration.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDetectionScope, name: "scope", traits: {"smithy.api#required" => {}}))
    AutoDetectionConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled", traits: {"smithy.api#required" => {}}))
    AutoDetectionConfiguration.type = Types::AutoDetectionConfiguration
    AutoDetectionScope.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION", traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    AutoDetectionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AutoDetectionStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ClaimMatchOperatorType.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    ClaimMatchOperatorType.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    ClaimMatchOperatorType.add_member(:contains_any, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINS_ANY", traits: {"smithy.api#enumValue" => "CONTAINS_ANY"}))
    ClaimMatchValueType.add_member(:match_value_string, Types::ClaimMatchValueType::MatchValueString, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchValueString, name: "matchValueString"))
    ClaimMatchValueType.add_member(:match_value_string_list, Types::ClaimMatchValueType::MatchValueStringList, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchValueStringList, name: "matchValueStringList"))
    ClaimMatchValueType.add_member(:unknown, Types::ClaimMatchValueType::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ClaimMatchValueType.type = Types::ClaimMatchValueType
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateRegistryRecordRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdentifier, name: "registryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRegistryRecordRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateRegistryRecordRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordDisplayName, name: "displayName"))
    CreateRegistryRecordRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateRegistryRecordRequest.add_member(:record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordType, name: "recordType", traits: {"smithy.api#required" => {}}))
    CreateRegistryRecordRequest.add_member(:descriptors, ::Smithy::Schema::Shapes::MemberShape.new(target: Descriptors, name: "descriptors", traits: {"smithy.api#required" => {}}))
    CreateRegistryRecordRequest.add_member(:record_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordVersion, name: "recordVersion"))
    CreateRegistryRecordRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRegistryRecordRequest.add_member(:provenance, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvenanceList, name: "provenance"))
    CreateRegistryRecordRequest.add_member(:custom_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataDocument, name: "customMetadata"))
    CreateRegistryRecordRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateRegistryRecordRequest.type = Types::CreateRegistryRecordRequest
    CreateRegistryRecordResponse.add_member(:record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordArn, name: "recordArn", traits: {"smithy.api#required" => {}}))
    CreateRegistryRecordResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateRegistryRecordResponse.type = Types::CreateRegistryRecordResponse
    CreateRegistryRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateRegistryRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateRegistryRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    CreateRegistryRequest.add_member(:discovery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryConfiguration, name: "discoveryConfiguration"))
    CreateRegistryRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRegistryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateRegistryRequest.add_member(:approval_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalConfiguration, name: "approvalConfiguration"))
    CreateRegistryRequest.add_member(:custom_metadata_schema_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataSchemaConfiguration, name: "customMetadataSchemaConfiguration"))
    CreateRegistryRequest.add_member(:auto_detection_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDetectionConfiguration, name: "autoDetectionConfiguration"))
    CreateRegistryRequest.type = Types::CreateRegistryRequest
    CreateRegistryResponse.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryArn, name: "registryArn", traits: {"smithy.api#required" => {}}))
    CreateRegistryResponse.type = Types::CreateRegistryResponse
    CustomClaimValidationType.add_member(:inbound_token_claim_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InboundTokenClaimNameType, name: "inboundTokenClaimName", traits: {"smithy.api#required" => {}}))
    CustomClaimValidationType.add_member(:inbound_token_claim_value_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InboundTokenClaimValueType, name: "inboundTokenClaimValueType", traits: {"smithy.api#required" => {}}))
    CustomClaimValidationType.add_member(:authorizing_claim_match_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizingClaimMatchValueType, name: "authorizingClaimMatchValue", traits: {"smithy.api#required" => {}}))
    CustomClaimValidationType.type = Types::CustomClaimValidationType
    CustomClaimValidationsType.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomClaimValidationType, name: "member"))
    CustomDescriptor.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorData, name: "data"))
    CustomDescriptor.type = Types::CustomDescriptor
    CustomJWTAuthorizerConfiguration.add_member(:discovery_url, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryUrl, name: "discoveryUrl", traits: {"smithy.api#required" => {}}))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_audience, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedAudienceList, name: "allowedAudience"))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_clients, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedClientsList, name: "allowedClients"))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedScopesType, name: "allowedScopes"))
    CustomJWTAuthorizerConfiguration.add_member(:custom_claims, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomClaimValidationsType, name: "customClaims"))
    CustomJWTAuthorizerConfiguration.add_member(:private_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateEndpoint, name: "privateEndpoint"))
    CustomJWTAuthorizerConfiguration.add_member(:private_endpoint_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateEndpointOverrides, name: "privateEndpointOverrides"))
    CustomJWTAuthorizerConfiguration.type = Types::CustomJWTAuthorizerConfiguration
    CustomMetadataSchemaComplianceStatus.add_member(:compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLIANT", traits: {"smithy.api#enumValue" => "COMPLIANT"}))
    CustomMetadataSchemaComplianceStatus.add_member(:non_compliant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_COMPLIANT", traits: {"smithy.api#enumValue" => "NON_COMPLIANT"}))
    CustomMetadataSchemaConfiguration.add_member(:default_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataSchemaDefinition, name: "defaultSchema"))
    CustomMetadataSchemaConfiguration.add_member(:record_type_schema_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordTypeSchemaOverrideList, name: "recordTypeSchemaOverrides"))
    CustomMetadataSchemaConfiguration.type = Types::CustomMetadataSchemaConfiguration
    CustomParameterMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    CustomParameterMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    DeleteRegistryRecordRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdentifier, name: "registryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRegistryRecordRequest.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordIdentifier, name: "recordId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRegistryRecordRequest.type = Types::DeleteRegistryRecordRequest
    DeleteRegistryRecordResponse.type = Types::DeleteRegistryRecordResponse
    DeleteRegistryRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdentifier, name: "registryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    DeleteRegistryRequest.type = Types::DeleteRegistryRequest
    DeleteRegistryResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteRegistryResponse.type = Types::DeleteRegistryResponse
    DescriptorSource.add_member(:from_url, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorSourceFromUrl, name: "fromUrl"))
    DescriptorSource.type = Types::DescriptorSource
    DescriptorSourceFromUrl.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorSourceUrl, name: "url", traits: {"smithy.api#required" => {}}))
    DescriptorSourceFromUrl.add_member(:credential_provider_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordCredentialProviderConfigurationList, name: "credentialProviderConfigurations"))
    DescriptorSourceFromUrl.type = Types::DescriptorSourceFromUrl
    Descriptors.add_member(:mcp_server, ::Smithy::Schema::Shapes::MemberShape.new(target: McpServerDescriptor, name: "mcpServer"))
    Descriptors.add_member(:a2a_agent_card, ::Smithy::Schema::Shapes::MemberShape.new(target: A2aAgentCardDescriptor, name: "a2aAgentCard"))
    Descriptors.add_member(:agent_skills_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSkillsDefinitionDescriptor, name: "agentSkillsDefinition"))
    Descriptors.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDescriptor, name: "custom"))
    Descriptors.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpDescriptor, name: "http"))
    Descriptors.add_member(:agui, ::Smithy::Schema::Shapes::MemberShape.new(target: AgUiDescriptor, name: "agui"))
    Descriptors.type = Types::Descriptors
    DiscoveryConfiguration.add_member(:authorizer_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerConfiguration, name: "authorizerConfiguration"))
    DiscoveryConfiguration.add_member(:authorizer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryAuthorizerType, name: "authorizerType"))
    DiscoveryConfiguration.type = Types::DiscoveryConfiguration
    EncryptionConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn", traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EndpointIpAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    EndpointIpAddressType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "IPV6"}))
    FilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member"))
    GetRegistryRecordRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdentifier, name: "registryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRegistryRecordRequest.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordIdentifier, name: "recordId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRegistryRecordRequest.type = Types::GetRegistryRecordRequest
    GetRegistryRecordResponse.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryArn, name: "registryArn", traits: {"smithy.api#required" => {}}))
    GetRegistryRecordResponse.add_member(:record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordArn, name: "recordArn", traits: {"smithy.api#required" => {}}))
    GetRegistryRecordResponse.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordId, name: "recordId", traits: {"smithy.api#required" => {}}))
    GetRegistryRecordResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordName, name: "name", traits: {"smithy.api#required" => {}}))
    GetRegistryRecordResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordDisplayName, name: "displayName"))
    GetRegistryRecordResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetRegistryRecordResponse.add_member(:record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordType, name: "recordType", traits: {"smithy.api#required" => {}}))
    GetRegistryRecordResponse.add_member(:descriptors, ::Smithy::Schema::Shapes::MemberShape.new(target: Descriptors, name: "descriptors"))
    GetRegistryRecordResponse.add_member(:record_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordVersion, name: "recordVersion"))
    GetRegistryRecordResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetRegistryRecordResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetRegistryRecordResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetRegistryRecordResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    GetRegistryRecordResponse.add_member(:provenance, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvenanceList, name: "provenance"))
    GetRegistryRecordResponse.add_member(:created_by_auto_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createdByAutoDetection"))
    GetRegistryRecordResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorAccountId, name: "createdBy"))
    GetRegistryRecordResponse.add_member(:custom_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataDocument, name: "customMetadata"))
    GetRegistryRecordResponse.add_member(:custom_metadata_schema_compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataSchemaComplianceStatus, name: "customMetadataSchemaComplianceStatus"))
    GetRegistryRecordResponse.type = Types::GetRegistryRecordResponse
    GetRegistryRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdentifier, name: "registryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    GetRegistryRequest.type = Types::GetRegistryRequest
    GetRegistryResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryName, name: "name", traits: {"smithy.api#required" => {}}))
    GetRegistryResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    GetRegistryResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId", traits: {"smithy.api#required" => {}}))
    GetRegistryResponse.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryArn, name: "registryArn", traits: {"smithy.api#required" => {}}))
    GetRegistryResponse.add_member(:discovery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryConfiguration, name: "discoveryConfiguration"))
    GetRegistryResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    GetRegistryResponse.add_member(:approval_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalConfiguration, name: "approvalConfiguration"))
    GetRegistryResponse.add_member(:custom_metadata_schema_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataSchemaConfiguration, name: "customMetadataSchemaConfiguration"))
    GetRegistryResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetRegistryResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    GetRegistryResponse.add_member(:auto_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDetection, name: "autoDetection"))
    GetRegistryResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetRegistryResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetRegistryResponse.type = Types::GetRegistryResponse
    HttpDescriptor.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorSource, name: "source"))
    HttpDescriptor.type = Types::HttpDescriptor
    InboundTokenClaimValueType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    InboundTokenClaimValueType.add_member(:string_array, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING_ARRAY", traits: {"smithy.api#enumValue" => "STRING_ARRAY"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    InternalServerException.type = Types::InternalServerException
    ListRegistriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListRegistriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRegistriesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryFilterList, name: "filters"))
    ListRegistriesRequest.type = Types::ListRegistriesRequest
    ListRegistriesResponse.add_member(:registries, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrySummaryList, name: "registries", traits: {"smithy.api#required" => {}}))
    ListRegistriesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRegistriesResponse.type = Types::ListRegistriesResponse
    ListRegistryRecordsRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdentifier, name: "registryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRegistryRecordsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListRegistryRecordsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRegistryRecordsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordFilterList, name: "filters"))
    ListRegistryRecordsRequest.type = Types::ListRegistryRecordsRequest
    ListRegistryRecordsResponse.add_member(:registry_records, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordSummaryList, name: "registryRecords", traits: {"smithy.api#required" => {}}))
    ListRegistryRecordsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRegistryRecordsResponse.type = Types::ListRegistryRecordsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagsMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ManagedVpcResource.add_member(:vpc_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIdentifier, name: "vpcIdentifier", traits: {"smithy.api#required" => {}}))
    ManagedVpcResource.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "subnetIds", traits: {"smithy.api#required" => {}}))
    ManagedVpcResource.add_member(:endpoint_ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointIpAddressType, name: "endpointIpAddressType", traits: {"smithy.api#required" => {}}))
    ManagedVpcResource.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "securityGroupIds"))
    ManagedVpcResource.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ManagedVpcResource.add_member(:routing_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingDomain, name: "routingDomain"))
    ManagedVpcResource.type = Types::ManagedVpcResource
    MatchValueStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchValueString, name: "member"))
    McpServerAdditionalData.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: McpToolsDescriptor, name: "tools"))
    McpServerAdditionalData.type = Types::McpServerAdditionalData
    McpServerDescriptor.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorData, name: "data"))
    McpServerDescriptor.add_member(:data_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchemaVersion, name: "dataSchemaVersion"))
    McpServerDescriptor.add_member(:additional_data, ::Smithy::Schema::Shapes::MemberShape.new(target: McpServerAdditionalData, name: "additionalData"))
    McpServerDescriptor.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorSource, name: "source"))
    McpServerDescriptor.type = Types::McpServerDescriptor
    McpToolsDescriptor.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorData, name: "data"))
    McpToolsDescriptor.add_member(:data_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchemaVersion, name: "dataSchemaVersion"))
    McpToolsDescriptor.type = Types::McpToolsDescriptor
    PrivateEndpoint.add_member(:self_managed_lattice_resource, Types::PrivateEndpoint::SelfManagedLatticeResource, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedLatticeResource, name: "selfManagedLatticeResource"))
    PrivateEndpoint.add_member(:managed_vpc_resource, Types::PrivateEndpoint::ManagedVpcResource, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedVpcResource, name: "managedVpcResource"))
    PrivateEndpoint.add_member(:unknown, Types::PrivateEndpoint::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PrivateEndpoint.type = Types::PrivateEndpoint
    PrivateEndpointOverride.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateEndpointOverrideDomain, name: "domain", traits: {"smithy.api#required" => {}}))
    PrivateEndpointOverride.add_member(:private_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateEndpoint, name: "privateEndpoint", traits: {"smithy.api#required" => {}}))
    PrivateEndpointOverride.type = Types::PrivateEndpointOverride
    PrivateEndpointOverrides.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateEndpointOverride, name: "member"))
    Provenance.add_member(:relation, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvenanceRelation, name: "relation", traits: {"smithy.api#required" => {}}))
    Provenance.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceId, name: "sourceId", traits: {"smithy.api#required" => {}}))
    Provenance.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "sourceType"))
    Provenance.add_member(:source_details, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceDetails, name: "sourceDetails"))
    Provenance.type = Types::Provenance
    ProvenanceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Provenance, name: "member"))
    ProvenanceRelation.add_member(:detected_from, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETECTED_FROM", traits: {"smithy.api#enumValue" => "DETECTED_FROM"}))
    ProvenanceSummary.add_member(:relation, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvenanceRelation, name: "relation", traits: {"smithy.api#required" => {}}))
    ProvenanceSummary.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceId, name: "sourceId", traits: {"smithy.api#required" => {}}))
    ProvenanceSummary.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "sourceType"))
    ProvenanceSummary.type = Types::ProvenanceSummary
    ProvenanceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvenanceSummary, name: "member"))
    RecordType.add_member(:mcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MCP", traits: {"smithy.api#enumValue" => "MCP"}))
    RecordType.add_member(:agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT", traits: {"smithy.api#enumValue" => "AGENT"}))
    RecordType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    RecordType.add_member(:skill, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKILL", traits: {"smithy.api#enumValue" => "SKILL"}))
    RecordType.add_member(:gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GATEWAY", traits: {"smithy.api#enumValue" => "GATEWAY"}))
    RecordTypeSchemaOverride.add_member(:record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordType, name: "recordType", traits: {"smithy.api#required" => {}}))
    RecordTypeSchemaOverride.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataSchemaDefinition, name: "schema", traits: {"smithy.api#required" => {}}))
    RecordTypeSchemaOverride.type = Types::RecordTypeSchemaOverride
    RecordTypeSchemaOverrideList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordTypeSchemaOverride, name: "member"))
    RegistryAuthorizerType.add_member(:custom_jwt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_JWT", traits: {"smithy.api#enumValue" => "CUSTOM_JWT"}))
    RegistryAuthorizerType.add_member(:aws_iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_IAM", traits: {"smithy.api#enumValue" => "AWS_IAM"}))
    RegistryFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    RegistryFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    RegistryFilter.type = Types::RegistryFilter
    RegistryFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryFilter, name: "member"))
    RegistryFilterName.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "status"}))
    RegistryFilterName.add_member(:discovery_configuration_authorizer_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISCOVERY_CONFIGURATION_AUTHORIZER_TYPE", traits: {"smithy.api#enumValue" => "discoveryConfiguration.authorizerType"}))
    RegistryRecordCredentialProviderConfiguration.add_member(:credential_provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordCredentialProviderType, name: "credentialProviderType", traits: {"smithy.api#required" => {}}))
    RegistryRecordCredentialProviderConfiguration.add_member(:credential_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordCredentialProviderUnion, name: "credentialProvider", traits: {"smithy.api#required" => {}}))
    RegistryRecordCredentialProviderConfiguration.type = Types::RegistryRecordCredentialProviderConfiguration
    RegistryRecordCredentialProviderConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordCredentialProviderConfiguration, name: "member"))
    RegistryRecordCredentialProviderType.add_member(:oauth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTH", traits: {"smithy.api#enumValue" => "OAUTH"}))
    RegistryRecordCredentialProviderType.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM", traits: {"smithy.api#enumValue" => "IAM"}))
    RegistryRecordCredentialProviderUnion.add_member(:oauth_credential_provider, Types::RegistryRecordCredentialProviderUnion::OauthCredentialProvider, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordOAuthCredentialProvider, name: "oauthCredentialProvider"))
    RegistryRecordCredentialProviderUnion.add_member(:iam_credential_provider, Types::RegistryRecordCredentialProviderUnion::IamCredentialProvider, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordIamCredentialProvider, name: "iamCredentialProvider"))
    RegistryRecordCredentialProviderUnion.add_member(:unknown, Types::RegistryRecordCredentialProviderUnion::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RegistryRecordCredentialProviderUnion.type = Types::RegistryRecordCredentialProviderUnion
    RegistryRecordFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordFilterName, name: "name", traits: {"smithy.api#required" => {}}))
    RegistryRecordFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values", traits: {"smithy.api#required" => {}}))
    RegistryRecordFilter.type = Types::RegistryRecordFilter
    RegistryRecordFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordFilter, name: "member"))
    RegistryRecordFilterName.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "name"}))
    RegistryRecordFilterName.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "status"}))
    RegistryRecordFilterName.add_member(:record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECORD_TYPE", traits: {"smithy.api#enumValue" => "recordType"}))
    RegistryRecordIamCredentialProvider.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "roleArn"))
    RegistryRecordIamCredentialProvider.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: IamSigningServiceName, name: "service"))
    RegistryRecordIamCredentialProvider.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: IamSigningRegion, name: "region"))
    RegistryRecordIamCredentialProvider.type = Types::RegistryRecordIamCredentialProvider
    RegistryRecordOAuthCredentialProvider.add_member(:provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialProviderArn, name: "providerArn", traits: {"smithy.api#required" => {}}))
    RegistryRecordOAuthCredentialProvider.add_member(:grant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordOAuthGrantType, name: "grantType"))
    RegistryRecordOAuthCredentialProvider.add_member(:scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeList, name: "scopes"))
    RegistryRecordOAuthCredentialProvider.add_member(:custom_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomParameterMap, name: "customParameters"))
    RegistryRecordOAuthCredentialProvider.type = Types::RegistryRecordOAuthCredentialProvider
    RegistryRecordOAuthGrantType.add_member(:client_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIENT_CREDENTIALS", traits: {"smithy.api#enumValue" => "CLIENT_CREDENTIALS"}))
    RegistryRecordStatus.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRAFT", traits: {"smithy.api#enumValue" => "DRAFT"}))
    RegistryRecordStatus.add_member(:pending_approval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_APPROVAL", traits: {"smithy.api#enumValue" => "PENDING_APPROVAL"}))
    RegistryRecordStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    RegistryRecordStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    RegistryRecordStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    RegistryRecordStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    RegistryRecordStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    RegistryRecordStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    RegistryRecordStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    RegistryRecordSummary.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryArn, name: "registryArn", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordArn, name: "recordArn", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordId, name: "recordId", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordName, name: "name", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordDisplayName, name: "displayName"))
    RegistryRecordSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    RegistryRecordSummary.add_member(:record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordType, name: "recordType", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:record_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordVersion, name: "recordVersion", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordStatus, name: "status", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    RegistryRecordSummary.add_member(:created_by_auto_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createdByAutoDetection"))
    RegistryRecordSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorAccountId, name: "createdBy"))
    RegistryRecordSummary.add_member(:provenance_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvenanceSummaryList, name: "provenanceSummaryList"))
    RegistryRecordSummary.add_member(:custom_metadata_schema_compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataSchemaComplianceStatus, name: "customMetadataSchemaComplianceStatus"))
    RegistryRecordSummary.type = Types::RegistryRecordSummary
    RegistryRecordSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordSummary, name: "member"))
    RegistryStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    RegistryStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    RegistryStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    RegistryStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    RegistryStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    RegistryStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    RegistryStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    RegistrySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryName, name: "name", traits: {"smithy.api#required" => {}}))
    RegistrySummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    RegistrySummary.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId", traits: {"smithy.api#required" => {}}))
    RegistrySummary.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryArn, name: "registryArn", traits: {"smithy.api#required" => {}}))
    RegistrySummary.add_member(:discovery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryConfiguration, name: "discoveryConfiguration"))
    RegistrySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    RegistrySummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    RegistrySummary.add_member(:auto_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDetection, name: "autoDetection"))
    RegistrySummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    RegistrySummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    RegistrySummary.type = Types::RegistrySummary
    RegistrySummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrySummary, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    ResourceTagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    ScopeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdentifier, name: "member"))
    SelfManagedLatticeResource.add_member(:resource_configuration_identifier, Types::SelfManagedLatticeResource::ResourceConfigurationIdentifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationIdentifier, name: "resourceConfigurationIdentifier"))
    SelfManagedLatticeResource.add_member(:unknown, Types::SelfManagedLatticeResource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SelfManagedLatticeResource.type = Types::SelfManagedLatticeResource
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceDetails.add_member(:agentcore_runtime, Types::SourceDetails::AgentcoreRuntime, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCoreRuntimeSourceDetails, name: "agentcoreRuntime"))
    SourceDetails.add_member(:agentcore_gateway, Types::SourceDetails::AgentcoreGateway, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentCoreGatewaySourceDetails, name: "agentcoreGateway"))
    SourceDetails.add_member(:unknown, Types::SourceDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SourceDetails.type = Types::SourceDetails
    SourceType.add_member(:aws_bedrock_agentcore_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_BEDROCK_AGENTCORE_RUNTIME", traits: {"smithy.api#enumValue" => "AWS::BedrockAgentCore::Runtime"}))
    SourceType.add_member(:aws_bedrock_agentcore_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_BEDROCK_AGENTCORE_GATEWAY", traits: {"smithy.api#enumValue" => "AWS::BedrockAgentCore::Gateway"}))
    SubmitRegistryRecordForApprovalRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdentifier, name: "registryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SubmitRegistryRecordForApprovalRequest.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordIdentifier, name: "recordId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SubmitRegistryRecordForApprovalRequest.type = Types::SubmitRegistryRecordForApprovalRequest
    SubmitRegistryRecordForApprovalResponse.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryArn, name: "registryArn", traits: {"smithy.api#required" => {}}))
    SubmitRegistryRecordForApprovalResponse.add_member(:record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordArn, name: "recordArn", traits: {"smithy.api#required" => {}}))
    SubmitRegistryRecordForApprovalResponse.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordId, name: "recordId", traits: {"smithy.api#required" => {}}))
    SubmitRegistryRecordForApprovalResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordStatus, name: "status", traits: {"smithy.api#required" => {}}))
    SubmitRegistryRecordForApprovalResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    SubmitRegistryRecordForApprovalResponse.type = Types::SubmitRegistryRecordForApprovalResponse
    SubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateRegistryRecordRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdentifier, name: "registryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRegistryRecordRequest.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordIdentifier, name: "recordId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRegistryRecordRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordName, name: "name"))
    UpdateRegistryRecordRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDisplayName, name: "displayName"))
    UpdateRegistryRecordRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDescription, name: "description"))
    UpdateRegistryRecordRequest.add_member(:record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordType, name: "recordType"))
    UpdateRegistryRecordRequest.add_member(:descriptors, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDescriptors, name: "descriptors"))
    UpdateRegistryRecordRequest.add_member(:record_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordVersion, name: "recordVersion"))
    UpdateRegistryRecordRequest.add_member(:custom_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedCustomMetadataMap, name: "customMetadata"))
    UpdateRegistryRecordRequest.add_member(:trigger_synchronization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "triggerSynchronization"))
    UpdateRegistryRecordRequest.add_member(:provenance, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvenanceList, name: "provenance"))
    UpdateRegistryRecordRequest.type = Types::UpdateRegistryRecordRequest
    UpdateRegistryRecordResponse.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryArn, name: "registryArn", traits: {"smithy.api#required" => {}}))
    UpdateRegistryRecordResponse.add_member(:record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordArn, name: "recordArn", traits: {"smithy.api#required" => {}}))
    UpdateRegistryRecordResponse.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordId, name: "recordId", traits: {"smithy.api#required" => {}}))
    UpdateRegistryRecordResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateRegistryRecordResponse.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordDisplayName, name: "displayName"))
    UpdateRegistryRecordResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateRegistryRecordResponse.add_member(:record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordType, name: "recordType", traits: {"smithy.api#required" => {}}))
    UpdateRegistryRecordResponse.add_member(:descriptors, ::Smithy::Schema::Shapes::MemberShape.new(target: Descriptors, name: "descriptors"))
    UpdateRegistryRecordResponse.add_member(:record_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordVersion, name: "recordVersion"))
    UpdateRegistryRecordResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateRegistryRecordResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateRegistryRecordResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateRegistryRecordResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    UpdateRegistryRecordResponse.add_member(:provenance, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvenanceList, name: "provenance"))
    UpdateRegistryRecordResponse.add_member(:created_by_auto_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createdByAutoDetection"))
    UpdateRegistryRecordResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatorAccountId, name: "createdBy"))
    UpdateRegistryRecordResponse.add_member(:custom_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataDocument, name: "customMetadata"))
    UpdateRegistryRecordResponse.add_member(:custom_metadata_schema_compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataSchemaComplianceStatus, name: "customMetadataSchemaComplianceStatus"))
    UpdateRegistryRecordResponse.type = Types::UpdateRegistryRecordResponse
    UpdateRegistryRecordStatusRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdentifier, name: "registryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRegistryRecordStatusRequest.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordIdentifier, name: "recordId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRegistryRecordStatusRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateRegistryRecordStatusRequest.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#required" => {}}))
    UpdateRegistryRecordStatusRequest.type = Types::UpdateRegistryRecordStatusRequest
    UpdateRegistryRecordStatusResponse.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryArn, name: "registryArn", traits: {"smithy.api#required" => {}}))
    UpdateRegistryRecordStatusResponse.add_member(:record_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordArn, name: "recordArn", traits: {"smithy.api#required" => {}}))
    UpdateRegistryRecordStatusResponse.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordId, name: "recordId", traits: {"smithy.api#required" => {}}))
    UpdateRegistryRecordStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateRegistryRecordStatusResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason", traits: {"smithy.api#required" => {}}))
    UpdateRegistryRecordStatusResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateRegistryRecordStatusResponse.type = Types::UpdateRegistryRecordStatusResponse
    UpdateRegistryRequest.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryIdentifier, name: "registryId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#suppress" => ["MemberShouldReferenceResource"]}))
    UpdateRegistryRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryName, name: "name"))
    UpdateRegistryRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDescription, name: "description"))
    UpdateRegistryRequest.add_member(:discovery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDiscoveryConfiguration, name: "discoveryConfiguration"))
    UpdateRegistryRequest.add_member(:approval_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedApprovalConfiguration, name: "approvalConfiguration"))
    UpdateRegistryRequest.add_member(:custom_metadata_schema_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedCustomMetadataSchemaConfiguration, name: "customMetadataSchemaConfiguration"))
    UpdateRegistryRequest.add_member(:auto_detection_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAutoDetectionConfiguration, name: "autoDetectionConfiguration"))
    UpdateRegistryRequest.type = Types::UpdateRegistryRequest
    UpdateRegistryResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateRegistryResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateRegistryResponse.add_member(:registry_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryId, name: "registryId", traits: {"smithy.api#required" => {}}))
    UpdateRegistryResponse.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryArn, name: "registryArn", traits: {"smithy.api#required" => {}}))
    UpdateRegistryResponse.add_member(:discovery_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryConfiguration, name: "discoveryConfiguration"))
    UpdateRegistryResponse.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    UpdateRegistryResponse.add_member(:approval_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalConfiguration, name: "approvalConfiguration"))
    UpdateRegistryResponse.add_member(:custom_metadata_schema_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataSchemaConfiguration, name: "customMetadataSchemaConfiguration"))
    UpdateRegistryResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateRegistryResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    UpdateRegistryResponse.add_member(:auto_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDetection, name: "autoDetection"))
    UpdateRegistryResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    UpdateRegistryResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    UpdateRegistryResponse.type = Types::UpdateRegistryResponse
    UpdatedA2aAgentCardDescriptor.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedA2aAgentCardDescriptorFields, name: "optionalValue"))
    UpdatedA2aAgentCardDescriptor.type = Types::UpdatedA2aAgentCardDescriptor
    UpdatedA2aAgentCardDescriptorFields.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDescriptorData, name: "data"))
    UpdatedA2aAgentCardDescriptorFields.add_member(:data_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDataSchemaVersion, name: "dataSchemaVersion"))
    UpdatedA2aAgentCardDescriptorFields.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDescriptorSource, name: "source"))
    UpdatedA2aAgentCardDescriptorFields.type = Types::UpdatedA2aAgentCardDescriptorFields
    UpdatedAgUiDescriptor.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAgUiDescriptorFields, name: "optionalValue"))
    UpdatedAgUiDescriptor.type = Types::UpdatedAgUiDescriptor
    UpdatedAgUiDescriptorFields.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDescriptorSource, name: "source"))
    UpdatedAgUiDescriptorFields.type = Types::UpdatedAgUiDescriptorFields
    UpdatedAgentSkillsAdditionalData.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAgentSkillsAdditionalDataFields, name: "optionalValue"))
    UpdatedAgentSkillsAdditionalData.type = Types::UpdatedAgentSkillsAdditionalData
    UpdatedAgentSkillsAdditionalDataFields.add_member(:skill_md, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAgentSkillsMdDescriptor, name: "skillMd"))
    UpdatedAgentSkillsAdditionalDataFields.type = Types::UpdatedAgentSkillsAdditionalDataFields
    UpdatedAgentSkillsDefinitionDescriptor.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAgentSkillsDefinitionDescriptorFields, name: "optionalValue"))
    UpdatedAgentSkillsDefinitionDescriptor.type = Types::UpdatedAgentSkillsDefinitionDescriptor
    UpdatedAgentSkillsDefinitionDescriptorFields.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDescriptorData, name: "data"))
    UpdatedAgentSkillsDefinitionDescriptorFields.add_member(:data_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDataSchemaVersion, name: "dataSchemaVersion"))
    UpdatedAgentSkillsDefinitionDescriptorFields.add_member(:additional_data, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAgentSkillsAdditionalData, name: "additionalData"))
    UpdatedAgentSkillsDefinitionDescriptorFields.type = Types::UpdatedAgentSkillsDefinitionDescriptorFields
    UpdatedAgentSkillsMdDescriptor.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAgentSkillsMdDescriptorFields, name: "optionalValue"))
    UpdatedAgentSkillsMdDescriptor.type = Types::UpdatedAgentSkillsMdDescriptor
    UpdatedAgentSkillsMdDescriptorFields.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDescriptorData, name: "data"))
    UpdatedAgentSkillsMdDescriptorFields.add_member(:data_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDataSchemaVersion, name: "dataSchemaVersion"))
    UpdatedAgentSkillsMdDescriptorFields.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDescriptorSource, name: "source"))
    UpdatedAgentSkillsMdDescriptorFields.type = Types::UpdatedAgentSkillsMdDescriptorFields
    UpdatedApprovalConfiguration.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalConfiguration, name: "optionalValue"))
    UpdatedApprovalConfiguration.type = Types::UpdatedApprovalConfiguration
    UpdatedAuthorizerConfiguration.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizerConfiguration, name: "optionalValue"))
    UpdatedAuthorizerConfiguration.type = Types::UpdatedAuthorizerConfiguration
    UpdatedAutoDetectionConfiguration.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDetectionConfiguration, name: "optionalValue"))
    UpdatedAutoDetectionConfiguration.type = Types::UpdatedAutoDetectionConfiguration
    UpdatedCustomDescriptor.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedCustomDescriptorFields, name: "optionalValue"))
    UpdatedCustomDescriptor.type = Types::UpdatedCustomDescriptor
    UpdatedCustomDescriptorFields.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDescriptorData, name: "data"))
    UpdatedCustomDescriptorFields.type = Types::UpdatedCustomDescriptorFields
    UpdatedCustomMetadataMap.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataDocument, name: "optionalValue"))
    UpdatedCustomMetadataMap.type = Types::UpdatedCustomMetadataMap
    UpdatedCustomMetadataSchemaConfiguration.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomMetadataSchemaConfiguration, name: "optionalValue"))
    UpdatedCustomMetadataSchemaConfiguration.type = Types::UpdatedCustomMetadataSchemaConfiguration
    UpdatedDataSchemaVersion.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSchemaVersion, name: "optionalValue"))
    UpdatedDataSchemaVersion.type = Types::UpdatedDataSchemaVersion
    UpdatedDescription.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "optionalValue"))
    UpdatedDescription.type = Types::UpdatedDescription
    UpdatedDescriptorData.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorData, name: "optionalValue"))
    UpdatedDescriptorData.type = Types::UpdatedDescriptorData
    UpdatedDescriptorSource.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorSource, name: "optionalValue"))
    UpdatedDescriptorSource.type = Types::UpdatedDescriptorSource
    UpdatedDescriptors.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDescriptorsFields, name: "optionalValue"))
    UpdatedDescriptors.type = Types::UpdatedDescriptors
    UpdatedDescriptorsFields.add_member(:mcp_server, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedMcpServerDescriptor, name: "mcpServer"))
    UpdatedDescriptorsFields.add_member(:a2a_agent_card, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedA2aAgentCardDescriptor, name: "a2aAgentCard"))
    UpdatedDescriptorsFields.add_member(:agent_skills_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAgentSkillsDefinitionDescriptor, name: "agentSkillsDefinition"))
    UpdatedDescriptorsFields.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedCustomDescriptor, name: "custom"))
    UpdatedDescriptorsFields.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedHttpDescriptor, name: "http"))
    UpdatedDescriptorsFields.add_member(:agui, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAgUiDescriptor, name: "agui"))
    UpdatedDescriptorsFields.type = Types::UpdatedDescriptorsFields
    UpdatedDiscoveryConfiguration.add_member(:authorizer_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedAuthorizerConfiguration, name: "authorizerConfiguration"))
    UpdatedDiscoveryConfiguration.type = Types::UpdatedDiscoveryConfiguration
    UpdatedDisplayName.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryRecordDisplayName, name: "optionalValue"))
    UpdatedDisplayName.type = Types::UpdatedDisplayName
    UpdatedHttpDescriptor.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedHttpDescriptorFields, name: "optionalValue"))
    UpdatedHttpDescriptor.type = Types::UpdatedHttpDescriptor
    UpdatedHttpDescriptorFields.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDescriptorSource, name: "source"))
    UpdatedHttpDescriptorFields.type = Types::UpdatedHttpDescriptorFields
    UpdatedMcpServerAdditionalData.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedMcpServerAdditionalDataFields, name: "optionalValue"))
    UpdatedMcpServerAdditionalData.type = Types::UpdatedMcpServerAdditionalData
    UpdatedMcpServerAdditionalDataFields.add_member(:tools, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedMcpToolsDescriptor, name: "tools"))
    UpdatedMcpServerAdditionalDataFields.type = Types::UpdatedMcpServerAdditionalDataFields
    UpdatedMcpServerDescriptor.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedMcpServerDescriptorFields, name: "optionalValue"))
    UpdatedMcpServerDescriptor.type = Types::UpdatedMcpServerDescriptor
    UpdatedMcpServerDescriptorFields.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDescriptorData, name: "data"))
    UpdatedMcpServerDescriptorFields.add_member(:data_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDataSchemaVersion, name: "dataSchemaVersion"))
    UpdatedMcpServerDescriptorFields.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDescriptorSource, name: "source"))
    UpdatedMcpServerDescriptorFields.add_member(:additional_data, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedMcpServerAdditionalData, name: "additionalData"))
    UpdatedMcpServerDescriptorFields.type = Types::UpdatedMcpServerDescriptorFields
    UpdatedMcpToolsDescriptor.add_member(:optional_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedMcpToolsDescriptorFields, name: "optionalValue"))
    UpdatedMcpToolsDescriptor.type = Types::UpdatedMcpToolsDescriptor
    UpdatedMcpToolsDescriptorFields.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDescriptorData, name: "data"))
    UpdatedMcpToolsDescriptorFields.add_member(:data_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedDataSchemaVersion, name: "dataSchemaVersion"))
    UpdatedMcpToolsDescriptorFields.type = Types::UpdatedMcpToolsDescriptorFields
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => "FieldValidationFailed", "smithy.api#required" => {}}))
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
    WorkloadIdentityDetails.add_member(:workload_identity_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "workloadIdentityArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#required" => {}}))
    WorkloadIdentityDetails.type = Types::WorkloadIdentityDetails

    AgentRegistryControl = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.agentregistrycontrol#AgentRegistryControl"
      service.name = "AgentRegistryControl"
      service.version = "2025-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Agent Registry Control", "arnNamespace" => "agent-registry", "endpointPrefix" => "agent-registry-control", "cloudTrailEventSource" => "agent-registry.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "agent-registry"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "Agent Registry Control", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region of the service.", "type" => "string"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send requests.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}], "results" => [{"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://agent-registry-control.{Region}.api.aws", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"documentation" => "Region is required to resolve an endpoint.", "conditions" => [], "error" => "Unable to resolve an Agent Registry Control endpoint: Region was not set and no explicit Endpoint override was provided.", "type" => "error"}], "root" => 2, "nodeCount" => 3, "nodes" => "/////wAAAAH/////AAAAAAX14QEAAAADAAAAAQX14QIF9eED"}}
      service.add_operation(:create_registry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistrycontrol#CreateRegistry"
        operation.name = "CreateRegistry"
        operation.input = CreateRegistryRequest
        operation.output = CreateRegistryResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/registries"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_registry_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistrycontrol#CreateRegistryRecord"
        operation.name = "CreateRegistryRecord"
        operation.input = CreateRegistryRecordRequest
        operation.output = CreateRegistryRecordResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/registries/{registryId}/records", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_registry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistrycontrol#DeleteRegistry"
        operation.name = "DeleteRegistry"
        operation.input = DeleteRegistryRequest
        operation.output = DeleteRegistryResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/registries/{registryId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_registry_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistrycontrol#DeleteRegistryRecord"
        operation.name = "DeleteRegistryRecord"
        operation.input = DeleteRegistryRecordRequest
        operation.output = DeleteRegistryRecordResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/registries/{registryId}/records/{recordId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_registry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistrycontrol#GetRegistry"
        operation.name = "GetRegistry"
        operation.input = GetRegistryRequest
        operation.output = GetRegistryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/registries/{registryId}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetRegistryFailure", "params" => {"registryId" => "000000000000"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.agentregistrycontrol#ResourceNotFoundException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_registry_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistrycontrol#GetRegistryRecord"
        operation.name = "GetRegistryRecord"
        operation.input = GetRegistryRecordRequest
        operation.output = GetRegistryRecordResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/registries/{registryId}/records/{recordId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_registries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistrycontrol#ListRegistries"
        operation.name = "ListRegistries"
        operation.input = ListRegistriesRequest
        operation.output = ListRegistriesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/registries-list"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListRegistriesSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListRegistries.new
      end)
      service.add_operation(:list_registry_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistrycontrol#ListRegistryRecords"
        operation.name = "ListRegistryRecords"
        operation.input = ListRegistryRecordsRequest
        operation.output = ListRegistryRecordsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/registries/{registryId}/records-list"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRegistryRecords.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistrycontrol#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tags/{resourceArn+}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:submit_registry_record_for_approval, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistrycontrol#SubmitRegistryRecordForApproval"
        operation.name = "SubmitRegistryRecordForApproval"
        operation.input = SubmitRegistryRecordForApprovalRequest
        operation.output = SubmitRegistryRecordForApprovalResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/registries/{registryId}/records/{recordId}/submit-for-approval", "code" => 202}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistrycontrol#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "POST", "uri" => "/tags/{resourceArn+}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistrycontrol#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 204, "method" => "DELETE", "uri" => "/tags/{resourceArn+}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_registry, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistrycontrol#UpdateRegistry"
        operation.name = "UpdateRegistry"
        operation.input = UpdateRegistryRequest
        operation.output = UpdateRegistryResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PATCH", "uri" => "/registries/{registryId}"}}
      end)
      service.add_operation(:update_registry_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistrycontrol#UpdateRegistryRecord"
        operation.name = "UpdateRegistryRecord"
        operation.input = UpdateRegistryRecordRequest
        operation.output = UpdateRegistryRecordResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/registries/{registryId}/records/{recordId}", "code" => 202}}
      end)
      service.add_operation(:update_registry_record_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.agentregistrycontrol#UpdateRegistryRecordStatus"
        operation.name = "UpdateRegistryRecordStatus"
        operation.input = UpdateRegistryRecordStatusRequest
        operation.output = UpdateRegistryRecordStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/registries/{registryId}/records/{recordId}/status", "code" => 202}}
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
