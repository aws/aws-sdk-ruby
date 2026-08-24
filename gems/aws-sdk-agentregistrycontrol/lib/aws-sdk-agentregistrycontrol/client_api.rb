# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AgentRegistryControl
  # @api private
  module ClientApi

    include Seahorse::Model

    A2aAgentCardDescriptor = Shapes::StructureShape.new(name: 'A2aAgentCardDescriptor')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AgentSkillsAdditionalData = Shapes::StructureShape.new(name: 'AgentSkillsAdditionalData')
    AgentSkillsDefinitionDescriptor = Shapes::StructureShape.new(name: 'AgentSkillsDefinitionDescriptor')
    AgentSkillsMdDescriptor = Shapes::StructureShape.new(name: 'AgentSkillsMdDescriptor')
    AllowedAudience = Shapes::StringShape.new(name: 'AllowedAudience')
    AllowedAudienceList = Shapes::ListShape.new(name: 'AllowedAudienceList')
    AllowedClient = Shapes::StringShape.new(name: 'AllowedClient')
    AllowedClientsList = Shapes::ListShape.new(name: 'AllowedClientsList')
    AllowedScopeType = Shapes::StringShape.new(name: 'AllowedScopeType')
    AllowedScopesType = Shapes::ListShape.new(name: 'AllowedScopesType')
    ApprovalConfiguration = Shapes::StructureShape.new(name: 'ApprovalConfiguration')
    AuthorizerConfiguration = Shapes::UnionShape.new(name: 'AuthorizerConfiguration')
    AuthorizingClaimMatchValueType = Shapes::StructureShape.new(name: 'AuthorizingClaimMatchValueType')
    AutoApprovalRule = Shapes::StringShape.new(name: 'AutoApprovalRule')
    AutoApprovalRuleList = Shapes::ListShape.new(name: 'AutoApprovalRuleList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClaimMatchOperatorType = Shapes::StringShape.new(name: 'ClaimMatchOperatorType')
    ClaimMatchValueType = Shapes::UnionShape.new(name: 'ClaimMatchValueType')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateRegistryRecordRequest = Shapes::StructureShape.new(name: 'CreateRegistryRecordRequest')
    CreateRegistryRecordResponse = Shapes::StructureShape.new(name: 'CreateRegistryRecordResponse')
    CreateRegistryRequest = Shapes::StructureShape.new(name: 'CreateRegistryRequest')
    CreateRegistryResponse = Shapes::StructureShape.new(name: 'CreateRegistryResponse')
    CredentialProviderArn = Shapes::StringShape.new(name: 'CredentialProviderArn')
    CustomClaimValidationType = Shapes::StructureShape.new(name: 'CustomClaimValidationType')
    CustomClaimValidationsType = Shapes::ListShape.new(name: 'CustomClaimValidationsType')
    CustomDescriptor = Shapes::StructureShape.new(name: 'CustomDescriptor')
    CustomJWTAuthorizerConfiguration = Shapes::StructureShape.new(name: 'CustomJWTAuthorizerConfiguration')
    CustomParameterMap = Shapes::MapShape.new(name: 'CustomParameterMap')
    DataSchemaVersion = Shapes::StringShape.new(name: 'DataSchemaVersion')
    DateTimestamp = Shapes::TimestampShape.new(name: 'DateTimestamp', timestampFormat: "iso8601")
    DeleteRegistryRecordRequest = Shapes::StructureShape.new(name: 'DeleteRegistryRecordRequest')
    DeleteRegistryRecordResponse = Shapes::StructureShape.new(name: 'DeleteRegistryRecordResponse')
    DeleteRegistryRequest = Shapes::StructureShape.new(name: 'DeleteRegistryRequest')
    DeleteRegistryResponse = Shapes::StructureShape.new(name: 'DeleteRegistryResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DescriptorData = Shapes::StringShape.new(name: 'DescriptorData')
    DescriptorSource = Shapes::StructureShape.new(name: 'DescriptorSource')
    DescriptorSourceFromUrl = Shapes::StructureShape.new(name: 'DescriptorSourceFromUrl')
    DescriptorSourceUrl = Shapes::StringShape.new(name: 'DescriptorSourceUrl')
    Descriptors = Shapes::StructureShape.new(name: 'Descriptors')
    DiscoveryConfiguration = Shapes::StructureShape.new(name: 'DiscoveryConfiguration')
    DiscoveryUrl = Shapes::StringShape.new(name: 'DiscoveryUrl')
    EndpointIpAddressType = Shapes::StringShape.new(name: 'EndpointIpAddressType')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    GetRegistryRecordRequest = Shapes::StructureShape.new(name: 'GetRegistryRecordRequest')
    GetRegistryRecordResponse = Shapes::StructureShape.new(name: 'GetRegistryRecordResponse')
    GetRegistryRequest = Shapes::StructureShape.new(name: 'GetRegistryRequest')
    GetRegistryResponse = Shapes::StructureShape.new(name: 'GetRegistryResponse')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IamSigningRegion = Shapes::StringShape.new(name: 'IamSigningRegion')
    IamSigningServiceName = Shapes::StringShape.new(name: 'IamSigningServiceName')
    InboundTokenClaimNameType = Shapes::StringShape.new(name: 'InboundTokenClaimNameType')
    InboundTokenClaimValueType = Shapes::StringShape.new(name: 'InboundTokenClaimValueType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListRegistriesRequest = Shapes::StructureShape.new(name: 'ListRegistriesRequest')
    ListRegistriesResponse = Shapes::StructureShape.new(name: 'ListRegistriesResponse')
    ListRegistryRecordsRequest = Shapes::StructureShape.new(name: 'ListRegistryRecordsRequest')
    ListRegistryRecordsResponse = Shapes::StructureShape.new(name: 'ListRegistryRecordsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ManagedVpcResource = Shapes::StructureShape.new(name: 'ManagedVpcResource')
    MatchValueString = Shapes::StringShape.new(name: 'MatchValueString')
    MatchValueStringList = Shapes::ListShape.new(name: 'MatchValueStringList')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    McpServerAdditionalData = Shapes::StructureShape.new(name: 'McpServerAdditionalData')
    McpServerDescriptor = Shapes::StructureShape.new(name: 'McpServerDescriptor')
    McpToolsDescriptor = Shapes::StructureShape.new(name: 'McpToolsDescriptor')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    PrivateEndpoint = Shapes::UnionShape.new(name: 'PrivateEndpoint')
    PrivateEndpointOverride = Shapes::StructureShape.new(name: 'PrivateEndpointOverride')
    PrivateEndpointOverrideDomain = Shapes::StringShape.new(name: 'PrivateEndpointOverrideDomain')
    PrivateEndpointOverrides = Shapes::ListShape.new(name: 'PrivateEndpointOverrides')
    RecordIdentifier = Shapes::StringShape.new(name: 'RecordIdentifier')
    RecordType = Shapes::StringShape.new(name: 'RecordType')
    RegistryArn = Shapes::StringShape.new(name: 'RegistryArn')
    RegistryAuthorizerType = Shapes::StringShape.new(name: 'RegistryAuthorizerType')
    RegistryFilter = Shapes::StructureShape.new(name: 'RegistryFilter')
    RegistryFilterList = Shapes::ListShape.new(name: 'RegistryFilterList')
    RegistryFilterName = Shapes::StringShape.new(name: 'RegistryFilterName')
    RegistryId = Shapes::StringShape.new(name: 'RegistryId')
    RegistryIdentifier = Shapes::StringShape.new(name: 'RegistryIdentifier')
    RegistryName = Shapes::StringShape.new(name: 'RegistryName')
    RegistryRecordArn = Shapes::StringShape.new(name: 'RegistryRecordArn')
    RegistryRecordCredentialProviderConfiguration = Shapes::StructureShape.new(name: 'RegistryRecordCredentialProviderConfiguration')
    RegistryRecordCredentialProviderConfigurationList = Shapes::ListShape.new(name: 'RegistryRecordCredentialProviderConfigurationList')
    RegistryRecordCredentialProviderType = Shapes::StringShape.new(name: 'RegistryRecordCredentialProviderType')
    RegistryRecordCredentialProviderUnion = Shapes::UnionShape.new(name: 'RegistryRecordCredentialProviderUnion')
    RegistryRecordDisplayName = Shapes::StringShape.new(name: 'RegistryRecordDisplayName')
    RegistryRecordFilter = Shapes::StructureShape.new(name: 'RegistryRecordFilter')
    RegistryRecordFilterList = Shapes::ListShape.new(name: 'RegistryRecordFilterList')
    RegistryRecordFilterName = Shapes::StringShape.new(name: 'RegistryRecordFilterName')
    RegistryRecordIamCredentialProvider = Shapes::StructureShape.new(name: 'RegistryRecordIamCredentialProvider')
    RegistryRecordId = Shapes::StringShape.new(name: 'RegistryRecordId')
    RegistryRecordName = Shapes::StringShape.new(name: 'RegistryRecordName')
    RegistryRecordOAuthCredentialProvider = Shapes::StructureShape.new(name: 'RegistryRecordOAuthCredentialProvider')
    RegistryRecordOAuthGrantType = Shapes::StringShape.new(name: 'RegistryRecordOAuthGrantType')
    RegistryRecordStatus = Shapes::StringShape.new(name: 'RegistryRecordStatus')
    RegistryRecordSummary = Shapes::StructureShape.new(name: 'RegistryRecordSummary')
    RegistryRecordSummaryList = Shapes::ListShape.new(name: 'RegistryRecordSummaryList')
    RegistryRecordVersion = Shapes::StringShape.new(name: 'RegistryRecordVersion')
    RegistryStatus = Shapes::StringShape.new(name: 'RegistryStatus')
    RegistrySummary = Shapes::StructureShape.new(name: 'RegistrySummary')
    RegistrySummaryList = Shapes::ListShape.new(name: 'RegistrySummaryList')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceConfigurationIdentifier = Shapes::StringShape.new(name: 'ResourceConfigurationIdentifier')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTagsMap = Shapes::MapShape.new(name: 'ResourceTagsMap')
    RoutingDomain = Shapes::StringShape.new(name: 'RoutingDomain')
    ScopeList = Shapes::ListShape.new(name: 'ScopeList')
    SecurityGroupIdentifier = Shapes::StringShape.new(name: 'SecurityGroupIdentifier')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SelfManagedLatticeResource = Shapes::UnionShape.new(name: 'SelfManagedLatticeResource')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    SubmitRegistryRecordForApprovalRequest = Shapes::StructureShape.new(name: 'SubmitRegistryRecordForApprovalRequest')
    SubmitRegistryRecordForApprovalResponse = Shapes::StructureShape.new(name: 'SubmitRegistryRecordForApprovalResponse')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateRegistryRecordRequest = Shapes::StructureShape.new(name: 'UpdateRegistryRecordRequest')
    UpdateRegistryRecordResponse = Shapes::StructureShape.new(name: 'UpdateRegistryRecordResponse')
    UpdateRegistryRecordStatusRequest = Shapes::StructureShape.new(name: 'UpdateRegistryRecordStatusRequest')
    UpdateRegistryRecordStatusRequestStatusReasonString = Shapes::StringShape.new(name: 'UpdateRegistryRecordStatusRequestStatusReasonString')
    UpdateRegistryRecordStatusResponse = Shapes::StructureShape.new(name: 'UpdateRegistryRecordStatusResponse')
    UpdateRegistryRequest = Shapes::StructureShape.new(name: 'UpdateRegistryRequest')
    UpdateRegistryResponse = Shapes::StructureShape.new(name: 'UpdateRegistryResponse')
    UpdatedA2aAgentCardDescriptor = Shapes::StructureShape.new(name: 'UpdatedA2aAgentCardDescriptor')
    UpdatedA2aAgentCardDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedA2aAgentCardDescriptorFields')
    UpdatedAgentSkillsAdditionalData = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsAdditionalData')
    UpdatedAgentSkillsAdditionalDataFields = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsAdditionalDataFields')
    UpdatedAgentSkillsDefinitionDescriptor = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsDefinitionDescriptor')
    UpdatedAgentSkillsDefinitionDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsDefinitionDescriptorFields')
    UpdatedAgentSkillsMdDescriptor = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsMdDescriptor')
    UpdatedAgentSkillsMdDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsMdDescriptorFields')
    UpdatedApprovalConfiguration = Shapes::StructureShape.new(name: 'UpdatedApprovalConfiguration')
    UpdatedAuthorizerConfiguration = Shapes::StructureShape.new(name: 'UpdatedAuthorizerConfiguration')
    UpdatedCustomDescriptor = Shapes::StructureShape.new(name: 'UpdatedCustomDescriptor')
    UpdatedCustomDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedCustomDescriptorFields')
    UpdatedDataSchemaVersion = Shapes::StructureShape.new(name: 'UpdatedDataSchemaVersion')
    UpdatedDescription = Shapes::StructureShape.new(name: 'UpdatedDescription')
    UpdatedDescriptorData = Shapes::StructureShape.new(name: 'UpdatedDescriptorData')
    UpdatedDescriptorSource = Shapes::StructureShape.new(name: 'UpdatedDescriptorSource')
    UpdatedDescriptors = Shapes::StructureShape.new(name: 'UpdatedDescriptors')
    UpdatedDescriptorsFields = Shapes::StructureShape.new(name: 'UpdatedDescriptorsFields')
    UpdatedDiscoveryConfiguration = Shapes::StructureShape.new(name: 'UpdatedDiscoveryConfiguration')
    UpdatedDisplayName = Shapes::StructureShape.new(name: 'UpdatedDisplayName')
    UpdatedMcpServerAdditionalData = Shapes::StructureShape.new(name: 'UpdatedMcpServerAdditionalData')
    UpdatedMcpServerAdditionalDataFields = Shapes::StructureShape.new(name: 'UpdatedMcpServerAdditionalDataFields')
    UpdatedMcpServerDescriptor = Shapes::StructureShape.new(name: 'UpdatedMcpServerDescriptor')
    UpdatedMcpServerDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedMcpServerDescriptorFields')
    UpdatedMcpToolsDescriptor = Shapes::StructureShape.new(name: 'UpdatedMcpToolsDescriptor')
    UpdatedMcpToolsDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedMcpToolsDescriptorFields')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VpcIdentifier = Shapes::StringShape.new(name: 'VpcIdentifier')

    A2aAgentCardDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    A2aAgentCardDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    A2aAgentCardDescriptor.add_member(:source, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "source"))
    A2aAgentCardDescriptor.struct_class = Types::A2aAgentCardDescriptor

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AgentSkillsAdditionalData.add_member(:skill_md, Shapes::ShapeRef.new(shape: AgentSkillsMdDescriptor, location_name: "skillMd"))
    AgentSkillsAdditionalData.struct_class = Types::AgentSkillsAdditionalData

    AgentSkillsDefinitionDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    AgentSkillsDefinitionDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    AgentSkillsDefinitionDescriptor.add_member(:additional_data, Shapes::ShapeRef.new(shape: AgentSkillsAdditionalData, location_name: "additionalData"))
    AgentSkillsDefinitionDescriptor.struct_class = Types::AgentSkillsDefinitionDescriptor

    AgentSkillsMdDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    AgentSkillsMdDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    AgentSkillsMdDescriptor.add_member(:source, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "source"))
    AgentSkillsMdDescriptor.struct_class = Types::AgentSkillsMdDescriptor

    AllowedAudienceList.member = Shapes::ShapeRef.new(shape: AllowedAudience)

    AllowedClientsList.member = Shapes::ShapeRef.new(shape: AllowedClient)

    AllowedScopesType.member = Shapes::ShapeRef.new(shape: AllowedScopeType)

    ApprovalConfiguration.add_member(:auto_approval_rules, Shapes::ShapeRef.new(shape: AutoApprovalRuleList, location_name: "autoApprovalRules"))
    ApprovalConfiguration.struct_class = Types::ApprovalConfiguration

    AuthorizerConfiguration.add_member(:custom_jwt_authorizer, Shapes::ShapeRef.new(shape: CustomJWTAuthorizerConfiguration, location_name: "customJWTAuthorizer"))
    AuthorizerConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AuthorizerConfiguration.add_member_subclass(:custom_jwt_authorizer, Types::AuthorizerConfiguration::CustomJwtAuthorizer)
    AuthorizerConfiguration.add_member_subclass(:unknown, Types::AuthorizerConfiguration::Unknown)
    AuthorizerConfiguration.struct_class = Types::AuthorizerConfiguration

    AuthorizingClaimMatchValueType.add_member(:claim_match_value, Shapes::ShapeRef.new(shape: ClaimMatchValueType, required: true, location_name: "claimMatchValue"))
    AuthorizingClaimMatchValueType.add_member(:claim_match_operator, Shapes::ShapeRef.new(shape: ClaimMatchOperatorType, required: true, location_name: "claimMatchOperator"))
    AuthorizingClaimMatchValueType.struct_class = Types::AuthorizingClaimMatchValueType

    AutoApprovalRuleList.member = Shapes::ShapeRef.new(shape: AutoApprovalRule)

    ClaimMatchValueType.add_member(:match_value_string, Shapes::ShapeRef.new(shape: MatchValueString, location_name: "matchValueString"))
    ClaimMatchValueType.add_member(:match_value_string_list, Shapes::ShapeRef.new(shape: MatchValueStringList, location_name: "matchValueStringList"))
    ClaimMatchValueType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ClaimMatchValueType.add_member_subclass(:match_value_string, Types::ClaimMatchValueType::MatchValueString)
    ClaimMatchValueType.add_member_subclass(:match_value_string_list, Types::ClaimMatchValueType::MatchValueStringList)
    ClaimMatchValueType.add_member_subclass(:unknown, Types::ClaimMatchValueType::Unknown)
    ClaimMatchValueType.struct_class = Types::ClaimMatchValueType

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateRegistryRecordRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    CreateRegistryRecordRequest.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, required: true, location_name: "name"))
    CreateRegistryRecordRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: RegistryRecordDisplayName, location_name: "displayName"))
    CreateRegistryRecordRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateRegistryRecordRequest.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, required: true, location_name: "recordType"))
    CreateRegistryRecordRequest.add_member(:descriptors, Shapes::ShapeRef.new(shape: Descriptors, required: true, location_name: "descriptors"))
    CreateRegistryRecordRequest.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, location_name: "recordVersion"))
    CreateRegistryRecordRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRegistryRecordRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateRegistryRecordRequest.struct_class = Types::CreateRegistryRecordRequest

    CreateRegistryRecordResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    CreateRegistryRecordResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    CreateRegistryRecordResponse.struct_class = Types::CreateRegistryRecordResponse

    CreateRegistryRequest.add_member(:name, Shapes::ShapeRef.new(shape: RegistryName, required: true, location_name: "name"))
    CreateRegistryRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateRegistryRequest.add_member(:discovery_configuration, Shapes::ShapeRef.new(shape: DiscoveryConfiguration, location_name: "discoveryConfiguration"))
    CreateRegistryRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRegistryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateRegistryRequest.add_member(:approval_configuration, Shapes::ShapeRef.new(shape: ApprovalConfiguration, location_name: "approvalConfiguration"))
    CreateRegistryRequest.struct_class = Types::CreateRegistryRequest

    CreateRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    CreateRegistryResponse.struct_class = Types::CreateRegistryResponse

    CustomClaimValidationType.add_member(:inbound_token_claim_name, Shapes::ShapeRef.new(shape: InboundTokenClaimNameType, required: true, location_name: "inboundTokenClaimName"))
    CustomClaimValidationType.add_member(:inbound_token_claim_value_type, Shapes::ShapeRef.new(shape: InboundTokenClaimValueType, required: true, location_name: "inboundTokenClaimValueType"))
    CustomClaimValidationType.add_member(:authorizing_claim_match_value, Shapes::ShapeRef.new(shape: AuthorizingClaimMatchValueType, required: true, location_name: "authorizingClaimMatchValue"))
    CustomClaimValidationType.struct_class = Types::CustomClaimValidationType

    CustomClaimValidationsType.member = Shapes::ShapeRef.new(shape: CustomClaimValidationType)

    CustomDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    CustomDescriptor.struct_class = Types::CustomDescriptor

    CustomJWTAuthorizerConfiguration.add_member(:discovery_url, Shapes::ShapeRef.new(shape: DiscoveryUrl, required: true, location_name: "discoveryUrl"))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_audience, Shapes::ShapeRef.new(shape: AllowedAudienceList, location_name: "allowedAudience"))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_clients, Shapes::ShapeRef.new(shape: AllowedClientsList, location_name: "allowedClients"))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_scopes, Shapes::ShapeRef.new(shape: AllowedScopesType, location_name: "allowedScopes"))
    CustomJWTAuthorizerConfiguration.add_member(:custom_claims, Shapes::ShapeRef.new(shape: CustomClaimValidationsType, location_name: "customClaims"))
    CustomJWTAuthorizerConfiguration.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: PrivateEndpoint, location_name: "privateEndpoint"))
    CustomJWTAuthorizerConfiguration.add_member(:private_endpoint_overrides, Shapes::ShapeRef.new(shape: PrivateEndpointOverrides, location_name: "privateEndpointOverrides"))
    CustomJWTAuthorizerConfiguration.struct_class = Types::CustomJWTAuthorizerConfiguration

    CustomParameterMap.key = Shapes::ShapeRef.new(shape: String)
    CustomParameterMap.value = Shapes::ShapeRef.new(shape: String)

    DeleteRegistryRecordRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    DeleteRegistryRecordRequest.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location: "uri", location_name: "recordId"))
    DeleteRegistryRecordRequest.struct_class = Types::DeleteRegistryRecordRequest

    DeleteRegistryRecordResponse.struct_class = Types::DeleteRegistryRecordResponse

    DeleteRegistryRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    DeleteRegistryRequest.struct_class = Types::DeleteRegistryRequest

    DeleteRegistryResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, required: true, location_name: "status"))
    DeleteRegistryResponse.struct_class = Types::DeleteRegistryResponse

    DescriptorSource.add_member(:from_url, Shapes::ShapeRef.new(shape: DescriptorSourceFromUrl, location_name: "fromUrl"))
    DescriptorSource.struct_class = Types::DescriptorSource

    DescriptorSourceFromUrl.add_member(:url, Shapes::ShapeRef.new(shape: DescriptorSourceUrl, required: true, location_name: "url"))
    DescriptorSourceFromUrl.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: RegistryRecordCredentialProviderConfigurationList, location_name: "credentialProviderConfigurations"))
    DescriptorSourceFromUrl.struct_class = Types::DescriptorSourceFromUrl

    Descriptors.add_member(:mcp_server, Shapes::ShapeRef.new(shape: McpServerDescriptor, location_name: "mcpServer"))
    Descriptors.add_member(:a2a_agent_card, Shapes::ShapeRef.new(shape: A2aAgentCardDescriptor, location_name: "a2aAgentCard"))
    Descriptors.add_member(:agent_skills_definition, Shapes::ShapeRef.new(shape: AgentSkillsDefinitionDescriptor, location_name: "agentSkillsDefinition"))
    Descriptors.add_member(:custom, Shapes::ShapeRef.new(shape: CustomDescriptor, location_name: "custom"))
    Descriptors.struct_class = Types::Descriptors

    DiscoveryConfiguration.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    DiscoveryConfiguration.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: RegistryAuthorizerType, location_name: "authorizerType"))
    DiscoveryConfiguration.struct_class = Types::DiscoveryConfiguration

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    GetRegistryRecordRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    GetRegistryRecordRequest.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location: "uri", location_name: "recordId"))
    GetRegistryRecordRequest.struct_class = Types::GetRegistryRecordRequest

    GetRegistryRecordResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    GetRegistryRecordResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    GetRegistryRecordResponse.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    GetRegistryRecordResponse.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, required: true, location_name: "name"))
    GetRegistryRecordResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: RegistryRecordDisplayName, location_name: "displayName"))
    GetRegistryRecordResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetRegistryRecordResponse.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, required: true, location_name: "recordType"))
    GetRegistryRecordResponse.add_member(:descriptors, Shapes::ShapeRef.new(shape: Descriptors, location_name: "descriptors"))
    GetRegistryRecordResponse.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, location_name: "recordVersion"))
    GetRegistryRecordResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    GetRegistryRecordResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetRegistryRecordResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetRegistryRecordResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetRegistryRecordResponse.struct_class = Types::GetRegistryRecordResponse

    GetRegistryRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    GetRegistryRequest.struct_class = Types::GetRegistryRequest

    GetRegistryResponse.add_member(:name, Shapes::ShapeRef.new(shape: RegistryName, required: true, location_name: "name"))
    GetRegistryResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetRegistryResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, required: true, location_name: "registryId"))
    GetRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    GetRegistryResponse.add_member(:discovery_configuration, Shapes::ShapeRef.new(shape: DiscoveryConfiguration, location_name: "discoveryConfiguration"))
    GetRegistryResponse.add_member(:approval_configuration, Shapes::ShapeRef.new(shape: ApprovalConfiguration, location_name: "approvalConfiguration"))
    GetRegistryResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, required: true, location_name: "status"))
    GetRegistryResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetRegistryResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetRegistryResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetRegistryResponse.struct_class = Types::GetRegistryResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListRegistriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListRegistriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRegistriesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: RegistryFilterList, location_name: "filters"))
    ListRegistriesRequest.struct_class = Types::ListRegistriesRequest

    ListRegistriesResponse.add_member(:registries, Shapes::ShapeRef.new(shape: RegistrySummaryList, required: true, location_name: "registries"))
    ListRegistriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRegistriesResponse.struct_class = Types::ListRegistriesResponse

    ListRegistryRecordsRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    ListRegistryRecordsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListRegistryRecordsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRegistryRecordsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: RegistryRecordFilterList, location_name: "filters"))
    ListRegistryRecordsRequest.struct_class = Types::ListRegistryRecordsRequest

    ListRegistryRecordsResponse.add_member(:registry_records, Shapes::ShapeRef.new(shape: RegistryRecordSummaryList, required: true, location_name: "registryRecords"))
    ListRegistryRecordsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRegistryRecordsResponse.struct_class = Types::ListRegistryRecordsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: ResourceTagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ManagedVpcResource.add_member(:vpc_identifier, Shapes::ShapeRef.new(shape: VpcIdentifier, required: true, location_name: "vpcIdentifier"))
    ManagedVpcResource.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "subnetIds"))
    ManagedVpcResource.add_member(:endpoint_ip_address_type, Shapes::ShapeRef.new(shape: EndpointIpAddressType, required: true, location_name: "endpointIpAddressType"))
    ManagedVpcResource.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    ManagedVpcResource.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ManagedVpcResource.add_member(:routing_domain, Shapes::ShapeRef.new(shape: RoutingDomain, location_name: "routingDomain"))
    ManagedVpcResource.struct_class = Types::ManagedVpcResource

    MatchValueStringList.member = Shapes::ShapeRef.new(shape: MatchValueString)

    McpServerAdditionalData.add_member(:tools, Shapes::ShapeRef.new(shape: McpToolsDescriptor, location_name: "tools"))
    McpServerAdditionalData.struct_class = Types::McpServerAdditionalData

    McpServerDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    McpServerDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    McpServerDescriptor.add_member(:additional_data, Shapes::ShapeRef.new(shape: McpServerAdditionalData, location_name: "additionalData"))
    McpServerDescriptor.add_member(:source, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "source"))
    McpServerDescriptor.struct_class = Types::McpServerDescriptor

    McpToolsDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    McpToolsDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    McpToolsDescriptor.struct_class = Types::McpToolsDescriptor

    PrivateEndpoint.add_member(:self_managed_lattice_resource, Shapes::ShapeRef.new(shape: SelfManagedLatticeResource, location_name: "selfManagedLatticeResource"))
    PrivateEndpoint.add_member(:managed_vpc_resource, Shapes::ShapeRef.new(shape: ManagedVpcResource, location_name: "managedVpcResource"))
    PrivateEndpoint.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PrivateEndpoint.add_member_subclass(:self_managed_lattice_resource, Types::PrivateEndpoint::SelfManagedLatticeResource)
    PrivateEndpoint.add_member_subclass(:managed_vpc_resource, Types::PrivateEndpoint::ManagedVpcResource)
    PrivateEndpoint.add_member_subclass(:unknown, Types::PrivateEndpoint::Unknown)
    PrivateEndpoint.struct_class = Types::PrivateEndpoint

    PrivateEndpointOverride.add_member(:domain, Shapes::ShapeRef.new(shape: PrivateEndpointOverrideDomain, required: true, location_name: "domain"))
    PrivateEndpointOverride.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: PrivateEndpoint, required: true, location_name: "privateEndpoint"))
    PrivateEndpointOverride.struct_class = Types::PrivateEndpointOverride

    PrivateEndpointOverrides.member = Shapes::ShapeRef.new(shape: PrivateEndpointOverride)

    RegistryFilter.add_member(:name, Shapes::ShapeRef.new(shape: RegistryFilterName, required: true, location_name: "name"))
    RegistryFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    RegistryFilter.struct_class = Types::RegistryFilter

    RegistryFilterList.member = Shapes::ShapeRef.new(shape: RegistryFilter)

    RegistryRecordCredentialProviderConfiguration.add_member(:credential_provider_type, Shapes::ShapeRef.new(shape: RegistryRecordCredentialProviderType, required: true, location_name: "credentialProviderType"))
    RegistryRecordCredentialProviderConfiguration.add_member(:credential_provider, Shapes::ShapeRef.new(shape: RegistryRecordCredentialProviderUnion, required: true, location_name: "credentialProvider"))
    RegistryRecordCredentialProviderConfiguration.struct_class = Types::RegistryRecordCredentialProviderConfiguration

    RegistryRecordCredentialProviderConfigurationList.member = Shapes::ShapeRef.new(shape: RegistryRecordCredentialProviderConfiguration)

    RegistryRecordCredentialProviderUnion.add_member(:oauth_credential_provider, Shapes::ShapeRef.new(shape: RegistryRecordOAuthCredentialProvider, location_name: "oauthCredentialProvider"))
    RegistryRecordCredentialProviderUnion.add_member(:iam_credential_provider, Shapes::ShapeRef.new(shape: RegistryRecordIamCredentialProvider, location_name: "iamCredentialProvider"))
    RegistryRecordCredentialProviderUnion.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RegistryRecordCredentialProviderUnion.add_member_subclass(:oauth_credential_provider, Types::RegistryRecordCredentialProviderUnion::OauthCredentialProvider)
    RegistryRecordCredentialProviderUnion.add_member_subclass(:iam_credential_provider, Types::RegistryRecordCredentialProviderUnion::IamCredentialProvider)
    RegistryRecordCredentialProviderUnion.add_member_subclass(:unknown, Types::RegistryRecordCredentialProviderUnion::Unknown)
    RegistryRecordCredentialProviderUnion.struct_class = Types::RegistryRecordCredentialProviderUnion

    RegistryRecordFilter.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordFilterName, required: true, location_name: "name"))
    RegistryRecordFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    RegistryRecordFilter.struct_class = Types::RegistryRecordFilter

    RegistryRecordFilterList.member = Shapes::ShapeRef.new(shape: RegistryRecordFilter)

    RegistryRecordIamCredentialProvider.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "roleArn"))
    RegistryRecordIamCredentialProvider.add_member(:service, Shapes::ShapeRef.new(shape: IamSigningServiceName, location_name: "service"))
    RegistryRecordIamCredentialProvider.add_member(:region, Shapes::ShapeRef.new(shape: IamSigningRegion, location_name: "region"))
    RegistryRecordIamCredentialProvider.struct_class = Types::RegistryRecordIamCredentialProvider

    RegistryRecordOAuthCredentialProvider.add_member(:provider_arn, Shapes::ShapeRef.new(shape: CredentialProviderArn, required: true, location_name: "providerArn"))
    RegistryRecordOAuthCredentialProvider.add_member(:grant_type, Shapes::ShapeRef.new(shape: RegistryRecordOAuthGrantType, location_name: "grantType"))
    RegistryRecordOAuthCredentialProvider.add_member(:scopes, Shapes::ShapeRef.new(shape: ScopeList, location_name: "scopes"))
    RegistryRecordOAuthCredentialProvider.add_member(:custom_parameters, Shapes::ShapeRef.new(shape: CustomParameterMap, location_name: "customParameters"))
    RegistryRecordOAuthCredentialProvider.struct_class = Types::RegistryRecordOAuthCredentialProvider

    RegistryRecordSummary.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    RegistryRecordSummary.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    RegistryRecordSummary.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    RegistryRecordSummary.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, required: true, location_name: "name"))
    RegistryRecordSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: RegistryRecordDisplayName, location_name: "displayName"))
    RegistryRecordSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RegistryRecordSummary.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, required: true, location_name: "recordType"))
    RegistryRecordSummary.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, required: true, location_name: "recordVersion"))
    RegistryRecordSummary.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    RegistryRecordSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    RegistryRecordSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    RegistryRecordSummary.struct_class = Types::RegistryRecordSummary

    RegistryRecordSummaryList.member = Shapes::ShapeRef.new(shape: RegistryRecordSummary)

    RegistrySummary.add_member(:name, Shapes::ShapeRef.new(shape: RegistryName, required: true, location_name: "name"))
    RegistrySummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RegistrySummary.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, required: true, location_name: "registryId"))
    RegistrySummary.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    RegistrySummary.add_member(:discovery_configuration, Shapes::ShapeRef.new(shape: DiscoveryConfiguration, location_name: "discoveryConfiguration"))
    RegistrySummary.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, required: true, location_name: "status"))
    RegistrySummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    RegistrySummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    RegistrySummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    RegistrySummary.struct_class = Types::RegistrySummary

    RegistrySummaryList.member = Shapes::ShapeRef.new(shape: RegistrySummary)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    ResourceTagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    ScopeList.member = Shapes::ShapeRef.new(shape: String)

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupIdentifier)

    SelfManagedLatticeResource.add_member(:resource_configuration_identifier, Shapes::ShapeRef.new(shape: ResourceConfigurationIdentifier, location_name: "resourceConfigurationIdentifier"))
    SelfManagedLatticeResource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SelfManagedLatticeResource.add_member_subclass(:resource_configuration_identifier, Types::SelfManagedLatticeResource::ResourceConfigurationIdentifier)
    SelfManagedLatticeResource.add_member_subclass(:unknown, Types::SelfManagedLatticeResource::Unknown)
    SelfManagedLatticeResource.struct_class = Types::SelfManagedLatticeResource

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SubmitRegistryRecordForApprovalRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    SubmitRegistryRecordForApprovalRequest.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location: "uri", location_name: "recordId"))
    SubmitRegistryRecordForApprovalRequest.struct_class = Types::SubmitRegistryRecordForApprovalRequest

    SubmitRegistryRecordForApprovalResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    SubmitRegistryRecordForApprovalResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    SubmitRegistryRecordForApprovalResponse.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    SubmitRegistryRecordForApprovalResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    SubmitRegistryRecordForApprovalResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    SubmitRegistryRecordForApprovalResponse.struct_class = Types::SubmitRegistryRecordForApprovalResponse

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateRegistryRecordRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    UpdateRegistryRecordRequest.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location: "uri", location_name: "recordId"))
    UpdateRegistryRecordRequest.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, location_name: "name"))
    UpdateRegistryRecordRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: UpdatedDisplayName, location_name: "displayName"))
    UpdateRegistryRecordRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdatedDescription, location_name: "description"))
    UpdateRegistryRecordRequest.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, location_name: "recordType"))
    UpdateRegistryRecordRequest.add_member(:descriptors, Shapes::ShapeRef.new(shape: UpdatedDescriptors, location_name: "descriptors"))
    UpdateRegistryRecordRequest.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, location_name: "recordVersion"))
    UpdateRegistryRecordRequest.add_member(:trigger_synchronization, Shapes::ShapeRef.new(shape: Boolean, location_name: "triggerSynchronization"))
    UpdateRegistryRecordRequest.struct_class = Types::UpdateRegistryRecordRequest

    UpdateRegistryRecordResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    UpdateRegistryRecordResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    UpdateRegistryRecordResponse.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    UpdateRegistryRecordResponse.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, required: true, location_name: "name"))
    UpdateRegistryRecordResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: RegistryRecordDisplayName, location_name: "displayName"))
    UpdateRegistryRecordResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateRegistryRecordResponse.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, required: true, location_name: "recordType"))
    UpdateRegistryRecordResponse.add_member(:descriptors, Shapes::ShapeRef.new(shape: Descriptors, location_name: "descriptors"))
    UpdateRegistryRecordResponse.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, location_name: "recordVersion"))
    UpdateRegistryRecordResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    UpdateRegistryRecordResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateRegistryRecordResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateRegistryRecordResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateRegistryRecordResponse.struct_class = Types::UpdateRegistryRecordResponse

    UpdateRegistryRecordStatusRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    UpdateRegistryRecordStatusRequest.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location: "uri", location_name: "recordId"))
    UpdateRegistryRecordStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    UpdateRegistryRecordStatusRequest.add_member(:status_reason, Shapes::ShapeRef.new(shape: UpdateRegistryRecordStatusRequestStatusReasonString, required: true, location_name: "statusReason"))
    UpdateRegistryRecordStatusRequest.struct_class = Types::UpdateRegistryRecordStatusRequest

    UpdateRegistryRecordStatusResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    UpdateRegistryRecordStatusResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    UpdateRegistryRecordStatusResponse.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    UpdateRegistryRecordStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    UpdateRegistryRecordStatusResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "statusReason"))
    UpdateRegistryRecordStatusResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateRegistryRecordStatusResponse.struct_class = Types::UpdateRegistryRecordStatusResponse

    UpdateRegistryRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    UpdateRegistryRequest.add_member(:name, Shapes::ShapeRef.new(shape: RegistryName, location_name: "name"))
    UpdateRegistryRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdatedDescription, location_name: "description"))
    UpdateRegistryRequest.add_member(:discovery_configuration, Shapes::ShapeRef.new(shape: UpdatedDiscoveryConfiguration, location_name: "discoveryConfiguration"))
    UpdateRegistryRequest.add_member(:approval_configuration, Shapes::ShapeRef.new(shape: UpdatedApprovalConfiguration, location_name: "approvalConfiguration"))
    UpdateRegistryRequest.struct_class = Types::UpdateRegistryRequest

    UpdateRegistryResponse.add_member(:name, Shapes::ShapeRef.new(shape: RegistryName, required: true, location_name: "name"))
    UpdateRegistryResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateRegistryResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, required: true, location_name: "registryId"))
    UpdateRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    UpdateRegistryResponse.add_member(:discovery_configuration, Shapes::ShapeRef.new(shape: DiscoveryConfiguration, location_name: "discoveryConfiguration"))
    UpdateRegistryResponse.add_member(:approval_configuration, Shapes::ShapeRef.new(shape: ApprovalConfiguration, location_name: "approvalConfiguration"))
    UpdateRegistryResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, required: true, location_name: "status"))
    UpdateRegistryResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateRegistryResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateRegistryResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateRegistryResponse.struct_class = Types::UpdateRegistryResponse

    UpdatedA2aAgentCardDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedA2aAgentCardDescriptorFields, location_name: "optionalValue"))
    UpdatedA2aAgentCardDescriptor.struct_class = Types::UpdatedA2aAgentCardDescriptor

    UpdatedA2aAgentCardDescriptorFields.add_member(:data, Shapes::ShapeRef.new(shape: UpdatedDescriptorData, location_name: "data"))
    UpdatedA2aAgentCardDescriptorFields.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: UpdatedDataSchemaVersion, location_name: "dataSchemaVersion"))
    UpdatedA2aAgentCardDescriptorFields.add_member(:source, Shapes::ShapeRef.new(shape: UpdatedDescriptorSource, location_name: "source"))
    UpdatedA2aAgentCardDescriptorFields.struct_class = Types::UpdatedA2aAgentCardDescriptorFields

    UpdatedAgentSkillsAdditionalData.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsAdditionalDataFields, location_name: "optionalValue"))
    UpdatedAgentSkillsAdditionalData.struct_class = Types::UpdatedAgentSkillsAdditionalData

    UpdatedAgentSkillsAdditionalDataFields.add_member(:skill_md, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsMdDescriptor, location_name: "skillMd"))
    UpdatedAgentSkillsAdditionalDataFields.struct_class = Types::UpdatedAgentSkillsAdditionalDataFields

    UpdatedAgentSkillsDefinitionDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsDefinitionDescriptorFields, location_name: "optionalValue"))
    UpdatedAgentSkillsDefinitionDescriptor.struct_class = Types::UpdatedAgentSkillsDefinitionDescriptor

    UpdatedAgentSkillsDefinitionDescriptorFields.add_member(:data, Shapes::ShapeRef.new(shape: UpdatedDescriptorData, location_name: "data"))
    UpdatedAgentSkillsDefinitionDescriptorFields.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: UpdatedDataSchemaVersion, location_name: "dataSchemaVersion"))
    UpdatedAgentSkillsDefinitionDescriptorFields.add_member(:additional_data, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsAdditionalData, location_name: "additionalData"))
    UpdatedAgentSkillsDefinitionDescriptorFields.struct_class = Types::UpdatedAgentSkillsDefinitionDescriptorFields

    UpdatedAgentSkillsMdDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsMdDescriptorFields, location_name: "optionalValue"))
    UpdatedAgentSkillsMdDescriptor.struct_class = Types::UpdatedAgentSkillsMdDescriptor

    UpdatedAgentSkillsMdDescriptorFields.add_member(:data, Shapes::ShapeRef.new(shape: UpdatedDescriptorData, location_name: "data"))
    UpdatedAgentSkillsMdDescriptorFields.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: UpdatedDataSchemaVersion, location_name: "dataSchemaVersion"))
    UpdatedAgentSkillsMdDescriptorFields.add_member(:source, Shapes::ShapeRef.new(shape: UpdatedDescriptorSource, location_name: "source"))
    UpdatedAgentSkillsMdDescriptorFields.struct_class = Types::UpdatedAgentSkillsMdDescriptorFields

    UpdatedApprovalConfiguration.add_member(:optional_value, Shapes::ShapeRef.new(shape: ApprovalConfiguration, location_name: "optionalValue"))
    UpdatedApprovalConfiguration.struct_class = Types::UpdatedApprovalConfiguration

    UpdatedAuthorizerConfiguration.add_member(:optional_value, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "optionalValue"))
    UpdatedAuthorizerConfiguration.struct_class = Types::UpdatedAuthorizerConfiguration

    UpdatedCustomDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedCustomDescriptorFields, location_name: "optionalValue"))
    UpdatedCustomDescriptor.struct_class = Types::UpdatedCustomDescriptor

    UpdatedCustomDescriptorFields.add_member(:data, Shapes::ShapeRef.new(shape: UpdatedDescriptorData, location_name: "data"))
    UpdatedCustomDescriptorFields.struct_class = Types::UpdatedCustomDescriptorFields

    UpdatedDataSchemaVersion.add_member(:optional_value, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "optionalValue"))
    UpdatedDataSchemaVersion.struct_class = Types::UpdatedDataSchemaVersion

    UpdatedDescription.add_member(:optional_value, Shapes::ShapeRef.new(shape: Description, location_name: "optionalValue"))
    UpdatedDescription.struct_class = Types::UpdatedDescription

    UpdatedDescriptorData.add_member(:optional_value, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "optionalValue"))
    UpdatedDescriptorData.struct_class = Types::UpdatedDescriptorData

    UpdatedDescriptorSource.add_member(:optional_value, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "optionalValue"))
    UpdatedDescriptorSource.struct_class = Types::UpdatedDescriptorSource

    UpdatedDescriptors.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedDescriptorsFields, location_name: "optionalValue"))
    UpdatedDescriptors.struct_class = Types::UpdatedDescriptors

    UpdatedDescriptorsFields.add_member(:mcp_server, Shapes::ShapeRef.new(shape: UpdatedMcpServerDescriptor, location_name: "mcpServer"))
    UpdatedDescriptorsFields.add_member(:a2a_agent_card, Shapes::ShapeRef.new(shape: UpdatedA2aAgentCardDescriptor, location_name: "a2aAgentCard"))
    UpdatedDescriptorsFields.add_member(:agent_skills_definition, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsDefinitionDescriptor, location_name: "agentSkillsDefinition"))
    UpdatedDescriptorsFields.add_member(:custom, Shapes::ShapeRef.new(shape: UpdatedCustomDescriptor, location_name: "custom"))
    UpdatedDescriptorsFields.struct_class = Types::UpdatedDescriptorsFields

    UpdatedDiscoveryConfiguration.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: UpdatedAuthorizerConfiguration, location_name: "authorizerConfiguration"))
    UpdatedDiscoveryConfiguration.struct_class = Types::UpdatedDiscoveryConfiguration

    UpdatedDisplayName.add_member(:optional_value, Shapes::ShapeRef.new(shape: RegistryRecordDisplayName, location_name: "optionalValue"))
    UpdatedDisplayName.struct_class = Types::UpdatedDisplayName

    UpdatedMcpServerAdditionalData.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedMcpServerAdditionalDataFields, location_name: "optionalValue"))
    UpdatedMcpServerAdditionalData.struct_class = Types::UpdatedMcpServerAdditionalData

    UpdatedMcpServerAdditionalDataFields.add_member(:tools, Shapes::ShapeRef.new(shape: UpdatedMcpToolsDescriptor, location_name: "tools"))
    UpdatedMcpServerAdditionalDataFields.struct_class = Types::UpdatedMcpServerAdditionalDataFields

    UpdatedMcpServerDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedMcpServerDescriptorFields, location_name: "optionalValue"))
    UpdatedMcpServerDescriptor.struct_class = Types::UpdatedMcpServerDescriptor

    UpdatedMcpServerDescriptorFields.add_member(:data, Shapes::ShapeRef.new(shape: UpdatedDescriptorData, location_name: "data"))
    UpdatedMcpServerDescriptorFields.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: UpdatedDataSchemaVersion, location_name: "dataSchemaVersion"))
    UpdatedMcpServerDescriptorFields.add_member(:source, Shapes::ShapeRef.new(shape: UpdatedDescriptorSource, location_name: "source"))
    UpdatedMcpServerDescriptorFields.add_member(:additional_data, Shapes::ShapeRef.new(shape: UpdatedMcpServerAdditionalData, location_name: "additionalData"))
    UpdatedMcpServerDescriptorFields.struct_class = Types::UpdatedMcpServerDescriptorFields

    UpdatedMcpToolsDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedMcpToolsDescriptorFields, location_name: "optionalValue"))
    UpdatedMcpToolsDescriptor.struct_class = Types::UpdatedMcpToolsDescriptor

    UpdatedMcpToolsDescriptorFields.add_member(:data, Shapes::ShapeRef.new(shape: UpdatedDescriptorData, location_name: "data"))
    UpdatedMcpToolsDescriptorFields.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: UpdatedDataSchemaVersion, location_name: "dataSchemaVersion"))
    UpdatedMcpToolsDescriptorFields.struct_class = Types::UpdatedMcpToolsDescriptorFields

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-12-01"

      api.metadata = {
        "apiVersion" => "2025-12-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "agent-registry-control",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Agent Registry Control",
        "serviceId" => "Agent Registry Control",
        "signatureVersion" => "v4",
        "signingName" => "agent-registry",
        "uid" => "agent-registry-control-2025-12-01",
      }

      api.add_operation(:create_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegistry"
        o.http_method = "POST"
        o.http_request_uri = "/registries"
        o.input = Shapes::ShapeRef.new(shape: CreateRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_registry_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegistryRecord"
        o.http_method = "POST"
        o.http_request_uri = "/registries/{registryId}/records"
        o.input = Shapes::ShapeRef.new(shape: CreateRegistryRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRegistryRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRegistry"
        o.http_method = "DELETE"
        o.http_request_uri = "/registries/{registryId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_registry_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRegistryRecord"
        o.http_method = "DELETE"
        o.http_request_uri = "/registries/{registryId}/records/{recordId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRegistryRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRegistryRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegistry"
        o.http_method = "GET"
        o.http_request_uri = "/registries/{registryId}"
        o.input = Shapes::ShapeRef.new(shape: GetRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_registry_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegistryRecord"
        o.http_method = "GET"
        o.http_request_uri = "/registries/{registryId}/records/{recordId}"
        o.input = Shapes::ShapeRef.new(shape: GetRegistryRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRegistryRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:list_registries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegistries"
        o.http_method = "POST"
        o.http_request_uri = "/registries-list"
        o.input = Shapes::ShapeRef.new(shape: ListRegistriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRegistriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_registry_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegistryRecords"
        o.http_method = "POST"
        o.http_request_uri = "/registries/{registryId}/records-list"
        o.input = Shapes::ShapeRef.new(shape: ListRegistryRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRegistryRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn+}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:submit_registry_record_for_approval, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitRegistryRecordForApproval"
        o.http_method = "POST"
        o.http_request_uri = "/registries/{registryId}/records/{recordId}/submit-for-approval"
        o.input = Shapes::ShapeRef.new(shape: SubmitRegistryRecordForApprovalRequest)
        o.output = Shapes::ShapeRef.new(shape: SubmitRegistryRecordForApprovalResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn+}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn+}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegistry"
        o.http_method = "PATCH"
        o.http_request_uri = "/registries/{registryId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_registry_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegistryRecord"
        o.http_method = "PATCH"
        o.http_request_uri = "/registries/{registryId}/records/{recordId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegistryRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRegistryRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_registry_record_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegistryRecordStatus"
        o.http_method = "PATCH"
        o.http_request_uri = "/registries/{registryId}/records/{recordId}/status"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegistryRecordStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRegistryRecordStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
