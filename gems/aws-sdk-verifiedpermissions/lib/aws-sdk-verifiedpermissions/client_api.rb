# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::VerifiedPermissions
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActionId = Shapes::StringShape.new(name: 'ActionId')
    ActionIdentifier = Shapes::StructureShape.new(name: 'ActionIdentifier')
    ActionType = Shapes::StringShape.new(name: 'ActionType')
    AttributeValue = Shapes::UnionShape.new(name: 'AttributeValue')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanAttribute = Shapes::BooleanShape.new(name: 'BooleanAttribute')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    ClientIds = Shapes::ListShape.new(name: 'ClientIds')
    CognitoUserPoolConfiguration = Shapes::StructureShape.new(name: 'CognitoUserPoolConfiguration')
    Configuration = Shapes::UnionShape.new(name: 'Configuration')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContextDefinition = Shapes::UnionShape.new(name: 'ContextDefinition')
    ContextMap = Shapes::MapShape.new(name: 'ContextMap')
    CreateIdentitySourceInput = Shapes::StructureShape.new(name: 'CreateIdentitySourceInput')
    CreateIdentitySourceOutput = Shapes::StructureShape.new(name: 'CreateIdentitySourceOutput')
    CreatePolicyInput = Shapes::StructureShape.new(name: 'CreatePolicyInput')
    CreatePolicyOutput = Shapes::StructureShape.new(name: 'CreatePolicyOutput')
    CreatePolicyStoreInput = Shapes::StructureShape.new(name: 'CreatePolicyStoreInput')
    CreatePolicyStoreOutput = Shapes::StructureShape.new(name: 'CreatePolicyStoreOutput')
    CreatePolicyTemplateInput = Shapes::StructureShape.new(name: 'CreatePolicyTemplateInput')
    CreatePolicyTemplateOutput = Shapes::StructureShape.new(name: 'CreatePolicyTemplateOutput')
    Decision = Shapes::StringShape.new(name: 'Decision')
    DeleteIdentitySourceInput = Shapes::StructureShape.new(name: 'DeleteIdentitySourceInput')
    DeleteIdentitySourceOutput = Shapes::StructureShape.new(name: 'DeleteIdentitySourceOutput')
    DeletePolicyInput = Shapes::StructureShape.new(name: 'DeletePolicyInput')
    DeletePolicyOutput = Shapes::StructureShape.new(name: 'DeletePolicyOutput')
    DeletePolicyStoreInput = Shapes::StructureShape.new(name: 'DeletePolicyStoreInput')
    DeletePolicyStoreOutput = Shapes::StructureShape.new(name: 'DeletePolicyStoreOutput')
    DeletePolicyTemplateInput = Shapes::StructureShape.new(name: 'DeletePolicyTemplateInput')
    DeletePolicyTemplateOutput = Shapes::StructureShape.new(name: 'DeletePolicyTemplateOutput')
    DeterminingPolicyItem = Shapes::StructureShape.new(name: 'DeterminingPolicyItem')
    DeterminingPolicyList = Shapes::ListShape.new(name: 'DeterminingPolicyList')
    DiscoveryUrl = Shapes::StringShape.new(name: 'DiscoveryUrl')
    EntitiesDefinition = Shapes::UnionShape.new(name: 'EntitiesDefinition')
    EntityAttributes = Shapes::MapShape.new(name: 'EntityAttributes')
    EntityId = Shapes::StringShape.new(name: 'EntityId')
    EntityIdentifier = Shapes::StructureShape.new(name: 'EntityIdentifier')
    EntityItem = Shapes::StructureShape.new(name: 'EntityItem')
    EntityList = Shapes::ListShape.new(name: 'EntityList')
    EntityReference = Shapes::UnionShape.new(name: 'EntityReference')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    EvaluationErrorItem = Shapes::StructureShape.new(name: 'EvaluationErrorItem')
    EvaluationErrorList = Shapes::ListShape.new(name: 'EvaluationErrorList')
    GetIdentitySourceInput = Shapes::StructureShape.new(name: 'GetIdentitySourceInput')
    GetIdentitySourceOutput = Shapes::StructureShape.new(name: 'GetIdentitySourceOutput')
    GetPolicyInput = Shapes::StructureShape.new(name: 'GetPolicyInput')
    GetPolicyOutput = Shapes::StructureShape.new(name: 'GetPolicyOutput')
    GetPolicyStoreInput = Shapes::StructureShape.new(name: 'GetPolicyStoreInput')
    GetPolicyStoreOutput = Shapes::StructureShape.new(name: 'GetPolicyStoreOutput')
    GetPolicyTemplateInput = Shapes::StructureShape.new(name: 'GetPolicyTemplateInput')
    GetPolicyTemplateOutput = Shapes::StructureShape.new(name: 'GetPolicyTemplateOutput')
    GetSchemaInput = Shapes::StructureShape.new(name: 'GetSchemaInput')
    GetSchemaOutput = Shapes::StructureShape.new(name: 'GetSchemaOutput')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    IdentitySourceDetails = Shapes::StructureShape.new(name: 'IdentitySourceDetails')
    IdentitySourceFilter = Shapes::StructureShape.new(name: 'IdentitySourceFilter')
    IdentitySourceFilters = Shapes::ListShape.new(name: 'IdentitySourceFilters')
    IdentitySourceId = Shapes::StringShape.new(name: 'IdentitySourceId')
    IdentitySourceItem = Shapes::StructureShape.new(name: 'IdentitySourceItem')
    IdentitySourceItemDetails = Shapes::StructureShape.new(name: 'IdentitySourceItemDetails')
    IdentitySources = Shapes::ListShape.new(name: 'IdentitySources')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IsAuthorizedInput = Shapes::StructureShape.new(name: 'IsAuthorizedInput')
    IsAuthorizedOutput = Shapes::StructureShape.new(name: 'IsAuthorizedOutput')
    IsAuthorizedWithTokenInput = Shapes::StructureShape.new(name: 'IsAuthorizedWithTokenInput')
    IsAuthorizedWithTokenOutput = Shapes::StructureShape.new(name: 'IsAuthorizedWithTokenOutput')
    ListIdentitySourcesInput = Shapes::StructureShape.new(name: 'ListIdentitySourcesInput')
    ListIdentitySourcesMaxResults = Shapes::IntegerShape.new(name: 'ListIdentitySourcesMaxResults')
    ListIdentitySourcesOutput = Shapes::StructureShape.new(name: 'ListIdentitySourcesOutput')
    ListPoliciesInput = Shapes::StructureShape.new(name: 'ListPoliciesInput')
    ListPoliciesOutput = Shapes::StructureShape.new(name: 'ListPoliciesOutput')
    ListPolicyStoresInput = Shapes::StructureShape.new(name: 'ListPolicyStoresInput')
    ListPolicyStoresOutput = Shapes::StructureShape.new(name: 'ListPolicyStoresOutput')
    ListPolicyTemplatesInput = Shapes::StructureShape.new(name: 'ListPolicyTemplatesInput')
    ListPolicyTemplatesOutput = Shapes::StructureShape.new(name: 'ListPolicyTemplatesOutput')
    LongAttribute = Shapes::IntegerShape.new(name: 'LongAttribute')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NamespaceList = Shapes::ListShape.new(name: 'NamespaceList')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OpenIdIssuer = Shapes::StringShape.new(name: 'OpenIdIssuer')
    ParentList = Shapes::ListShape.new(name: 'ParentList')
    PolicyDefinition = Shapes::UnionShape.new(name: 'PolicyDefinition')
    PolicyDefinitionDetail = Shapes::UnionShape.new(name: 'PolicyDefinitionDetail')
    PolicyDefinitionItem = Shapes::UnionShape.new(name: 'PolicyDefinitionItem')
    PolicyFilter = Shapes::StructureShape.new(name: 'PolicyFilter')
    PolicyId = Shapes::StringShape.new(name: 'PolicyId')
    PolicyItem = Shapes::StructureShape.new(name: 'PolicyItem')
    PolicyList = Shapes::ListShape.new(name: 'PolicyList')
    PolicyStatement = Shapes::StringShape.new(name: 'PolicyStatement')
    PolicyStoreId = Shapes::StringShape.new(name: 'PolicyStoreId')
    PolicyStoreItem = Shapes::StructureShape.new(name: 'PolicyStoreItem')
    PolicyStoreList = Shapes::ListShape.new(name: 'PolicyStoreList')
    PolicyTemplateDescription = Shapes::StringShape.new(name: 'PolicyTemplateDescription')
    PolicyTemplateId = Shapes::StringShape.new(name: 'PolicyTemplateId')
    PolicyTemplateItem = Shapes::StructureShape.new(name: 'PolicyTemplateItem')
    PolicyTemplatesList = Shapes::ListShape.new(name: 'PolicyTemplatesList')
    PolicyType = Shapes::StringShape.new(name: 'PolicyType')
    PrincipalEntityType = Shapes::StringShape.new(name: 'PrincipalEntityType')
    PutSchemaInput = Shapes::StructureShape.new(name: 'PutSchemaInput')
    PutSchemaOutput = Shapes::StructureShape.new(name: 'PutSchemaOutput')
    RecordAttribute = Shapes::MapShape.new(name: 'RecordAttribute')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceConflict = Shapes::StructureShape.new(name: 'ResourceConflict')
    ResourceConflictList = Shapes::ListShape.new(name: 'ResourceConflictList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    SchemaDefinition = Shapes::UnionShape.new(name: 'SchemaDefinition')
    SchemaJson = Shapes::StringShape.new(name: 'SchemaJson')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SetAttribute = Shapes::ListShape.new(name: 'SetAttribute')
    StaticPolicyDefinition = Shapes::StructureShape.new(name: 'StaticPolicyDefinition')
    StaticPolicyDefinitionDetail = Shapes::StructureShape.new(name: 'StaticPolicyDefinitionDetail')
    StaticPolicyDefinitionItem = Shapes::StructureShape.new(name: 'StaticPolicyDefinitionItem')
    StaticPolicyDescription = Shapes::StringShape.new(name: 'StaticPolicyDescription')
    String = Shapes::StringShape.new(name: 'String')
    StringAttribute = Shapes::StringShape.new(name: 'StringAttribute')
    TemplateLinkedPolicyDefinition = Shapes::StructureShape.new(name: 'TemplateLinkedPolicyDefinition')
    TemplateLinkedPolicyDefinitionDetail = Shapes::StructureShape.new(name: 'TemplateLinkedPolicyDefinitionDetail')
    TemplateLinkedPolicyDefinitionItem = Shapes::StructureShape.new(name: 'TemplateLinkedPolicyDefinitionItem')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimestampFormat = Shapes::TimestampShape.new(name: 'TimestampFormat', timestampFormat: "iso8601")
    Token = Shapes::StringShape.new(name: 'Token')
    UpdateCognitoUserPoolConfiguration = Shapes::StructureShape.new(name: 'UpdateCognitoUserPoolConfiguration')
    UpdateConfiguration = Shapes::UnionShape.new(name: 'UpdateConfiguration')
    UpdateIdentitySourceInput = Shapes::StructureShape.new(name: 'UpdateIdentitySourceInput')
    UpdateIdentitySourceOutput = Shapes::StructureShape.new(name: 'UpdateIdentitySourceOutput')
    UpdatePolicyDefinition = Shapes::UnionShape.new(name: 'UpdatePolicyDefinition')
    UpdatePolicyInput = Shapes::StructureShape.new(name: 'UpdatePolicyInput')
    UpdatePolicyOutput = Shapes::StructureShape.new(name: 'UpdatePolicyOutput')
    UpdatePolicyStoreInput = Shapes::StructureShape.new(name: 'UpdatePolicyStoreInput')
    UpdatePolicyStoreOutput = Shapes::StructureShape.new(name: 'UpdatePolicyStoreOutput')
    UpdatePolicyTemplateInput = Shapes::StructureShape.new(name: 'UpdatePolicyTemplateInput')
    UpdatePolicyTemplateOutput = Shapes::StructureShape.new(name: 'UpdatePolicyTemplateOutput')
    UpdateStaticPolicyDefinition = Shapes::StructureShape.new(name: 'UpdateStaticPolicyDefinition')
    UserPoolArn = Shapes::StringShape.new(name: 'UserPoolArn')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationMode = Shapes::StringShape.new(name: 'ValidationMode')
    ValidationSettings = Shapes::StructureShape.new(name: 'ValidationSettings')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActionIdentifier.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, required: true, location_name: "actionType"))
    ActionIdentifier.add_member(:action_id, Shapes::ShapeRef.new(shape: ActionId, required: true, location_name: "actionId"))
    ActionIdentifier.struct_class = Types::ActionIdentifier

    AttributeValue.add_member(:boolean, Shapes::ShapeRef.new(shape: BooleanAttribute, location_name: "boolean"))
    AttributeValue.add_member(:entity_identifier, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "entityIdentifier"))
    AttributeValue.add_member(:long, Shapes::ShapeRef.new(shape: LongAttribute, location_name: "long"))
    AttributeValue.add_member(:string, Shapes::ShapeRef.new(shape: StringAttribute, location_name: "string"))
    AttributeValue.add_member(:set, Shapes::ShapeRef.new(shape: SetAttribute, location_name: "set"))
    AttributeValue.add_member(:record, Shapes::ShapeRef.new(shape: RecordAttribute, location_name: "record"))
    AttributeValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AttributeValue.add_member_subclass(:boolean, Types::AttributeValue::Boolean)
    AttributeValue.add_member_subclass(:entity_identifier, Types::AttributeValue::EntityIdentifier)
    AttributeValue.add_member_subclass(:long, Types::AttributeValue::Long)
    AttributeValue.add_member_subclass(:string, Types::AttributeValue::String)
    AttributeValue.add_member_subclass(:set, Types::AttributeValue::Set)
    AttributeValue.add_member_subclass(:record, Types::AttributeValue::Record)
    AttributeValue.add_member_subclass(:unknown, Types::AttributeValue::Unknown)
    AttributeValue.struct_class = Types::AttributeValue

    ClientIds.member = Shapes::ShapeRef.new(shape: ClientId)

    CognitoUserPoolConfiguration.add_member(:user_pool_arn, Shapes::ShapeRef.new(shape: UserPoolArn, required: true, location_name: "userPoolArn"))
    CognitoUserPoolConfiguration.add_member(:client_ids, Shapes::ShapeRef.new(shape: ClientIds, location_name: "clientIds"))
    CognitoUserPoolConfiguration.struct_class = Types::CognitoUserPoolConfiguration

    Configuration.add_member(:cognito_user_pool_configuration, Shapes::ShapeRef.new(shape: CognitoUserPoolConfiguration, location_name: "cognitoUserPoolConfiguration"))
    Configuration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Configuration.add_member_subclass(:cognito_user_pool_configuration, Types::Configuration::CognitoUserPoolConfiguration)
    Configuration.add_member_subclass(:unknown, Types::Configuration::Unknown)
    Configuration.struct_class = Types::Configuration

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceConflictList, required: true, location_name: "resources"))
    ConflictException.struct_class = Types::ConflictException

    ContextDefinition.add_member(:context_map, Shapes::ShapeRef.new(shape: ContextMap, location_name: "contextMap"))
    ContextDefinition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ContextDefinition.add_member_subclass(:context_map, Types::ContextDefinition::ContextMap)
    ContextDefinition.add_member_subclass(:unknown, Types::ContextDefinition::Unknown)
    ContextDefinition.struct_class = Types::ContextDefinition

    ContextMap.key = Shapes::ShapeRef.new(shape: String)
    ContextMap.value = Shapes::ShapeRef.new(shape: AttributeValue)

    CreateIdentitySourceInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateIdentitySourceInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    CreateIdentitySourceInput.add_member(:configuration, Shapes::ShapeRef.new(shape: Configuration, required: true, location_name: "configuration"))
    CreateIdentitySourceInput.add_member(:principal_entity_type, Shapes::ShapeRef.new(shape: PrincipalEntityType, location_name: "principalEntityType"))
    CreateIdentitySourceInput.struct_class = Types::CreateIdentitySourceInput

    CreateIdentitySourceOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    CreateIdentitySourceOutput.add_member(:identity_source_id, Shapes::ShapeRef.new(shape: IdentitySourceId, required: true, location_name: "identitySourceId"))
    CreateIdentitySourceOutput.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    CreateIdentitySourceOutput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    CreateIdentitySourceOutput.struct_class = Types::CreateIdentitySourceOutput

    CreatePolicyInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreatePolicyInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    CreatePolicyInput.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinition, required: true, location_name: "definition"))
    CreatePolicyInput.struct_class = Types::CreatePolicyInput

    CreatePolicyOutput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    CreatePolicyOutput.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    CreatePolicyOutput.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "policyType"))
    CreatePolicyOutput.add_member(:principal, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "principal"))
    CreatePolicyOutput.add_member(:resource, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "resource"))
    CreatePolicyOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    CreatePolicyOutput.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    CreatePolicyOutput.struct_class = Types::CreatePolicyOutput

    CreatePolicyStoreInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreatePolicyStoreInput.add_member(:validation_settings, Shapes::ShapeRef.new(shape: ValidationSettings, required: true, location_name: "validationSettings"))
    CreatePolicyStoreInput.struct_class = Types::CreatePolicyStoreInput

    CreatePolicyStoreOutput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    CreatePolicyStoreOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    CreatePolicyStoreOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    CreatePolicyStoreOutput.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    CreatePolicyStoreOutput.struct_class = Types::CreatePolicyStoreOutput

    CreatePolicyTemplateInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreatePolicyTemplateInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    CreatePolicyTemplateInput.add_member(:description, Shapes::ShapeRef.new(shape: PolicyTemplateDescription, location_name: "description"))
    CreatePolicyTemplateInput.add_member(:statement, Shapes::ShapeRef.new(shape: PolicyStatement, required: true, location_name: "statement"))
    CreatePolicyTemplateInput.struct_class = Types::CreatePolicyTemplateInput

    CreatePolicyTemplateOutput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    CreatePolicyTemplateOutput.add_member(:policy_template_id, Shapes::ShapeRef.new(shape: PolicyTemplateId, required: true, location_name: "policyTemplateId"))
    CreatePolicyTemplateOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    CreatePolicyTemplateOutput.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    CreatePolicyTemplateOutput.struct_class = Types::CreatePolicyTemplateOutput

    DeleteIdentitySourceInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    DeleteIdentitySourceInput.add_member(:identity_source_id, Shapes::ShapeRef.new(shape: IdentitySourceId, required: true, location_name: "identitySourceId"))
    DeleteIdentitySourceInput.struct_class = Types::DeleteIdentitySourceInput

    DeleteIdentitySourceOutput.struct_class = Types::DeleteIdentitySourceOutput

    DeletePolicyInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    DeletePolicyInput.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    DeletePolicyInput.struct_class = Types::DeletePolicyInput

    DeletePolicyOutput.struct_class = Types::DeletePolicyOutput

    DeletePolicyStoreInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    DeletePolicyStoreInput.struct_class = Types::DeletePolicyStoreInput

    DeletePolicyStoreOutput.struct_class = Types::DeletePolicyStoreOutput

    DeletePolicyTemplateInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    DeletePolicyTemplateInput.add_member(:policy_template_id, Shapes::ShapeRef.new(shape: PolicyTemplateId, required: true, location_name: "policyTemplateId"))
    DeletePolicyTemplateInput.struct_class = Types::DeletePolicyTemplateInput

    DeletePolicyTemplateOutput.struct_class = Types::DeletePolicyTemplateOutput

    DeterminingPolicyItem.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    DeterminingPolicyItem.struct_class = Types::DeterminingPolicyItem

    DeterminingPolicyList.member = Shapes::ShapeRef.new(shape: DeterminingPolicyItem)

    EntitiesDefinition.add_member(:entity_list, Shapes::ShapeRef.new(shape: EntityList, location_name: "entityList"))
    EntitiesDefinition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EntitiesDefinition.add_member_subclass(:entity_list, Types::EntitiesDefinition::EntityList)
    EntitiesDefinition.add_member_subclass(:unknown, Types::EntitiesDefinition::Unknown)
    EntitiesDefinition.struct_class = Types::EntitiesDefinition

    EntityAttributes.key = Shapes::ShapeRef.new(shape: String)
    EntityAttributes.value = Shapes::ShapeRef.new(shape: AttributeValue)

    EntityIdentifier.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, required: true, location_name: "entityType"))
    EntityIdentifier.add_member(:entity_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "entityId"))
    EntityIdentifier.struct_class = Types::EntityIdentifier

    EntityItem.add_member(:identifier, Shapes::ShapeRef.new(shape: EntityIdentifier, required: true, location_name: "identifier"))
    EntityItem.add_member(:attributes, Shapes::ShapeRef.new(shape: EntityAttributes, location_name: "attributes"))
    EntityItem.add_member(:parents, Shapes::ShapeRef.new(shape: ParentList, location_name: "parents"))
    EntityItem.struct_class = Types::EntityItem

    EntityList.member = Shapes::ShapeRef.new(shape: EntityItem)

    EntityReference.add_member(:unspecified, Shapes::ShapeRef.new(shape: Boolean, location_name: "unspecified"))
    EntityReference.add_member(:identifier, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "identifier"))
    EntityReference.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EntityReference.add_member_subclass(:unspecified, Types::EntityReference::Unspecified)
    EntityReference.add_member_subclass(:identifier, Types::EntityReference::Identifier)
    EntityReference.add_member_subclass(:unknown, Types::EntityReference::Unknown)
    EntityReference.struct_class = Types::EntityReference

    EvaluationErrorItem.add_member(:error_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "errorDescription"))
    EvaluationErrorItem.struct_class = Types::EvaluationErrorItem

    EvaluationErrorList.member = Shapes::ShapeRef.new(shape: EvaluationErrorItem)

    GetIdentitySourceInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    GetIdentitySourceInput.add_member(:identity_source_id, Shapes::ShapeRef.new(shape: IdentitySourceId, required: true, location_name: "identitySourceId"))
    GetIdentitySourceInput.struct_class = Types::GetIdentitySourceInput

    GetIdentitySourceOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    GetIdentitySourceOutput.add_member(:details, Shapes::ShapeRef.new(shape: IdentitySourceDetails, required: true, location_name: "details"))
    GetIdentitySourceOutput.add_member(:identity_source_id, Shapes::ShapeRef.new(shape: IdentitySourceId, required: true, location_name: "identitySourceId"))
    GetIdentitySourceOutput.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    GetIdentitySourceOutput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    GetIdentitySourceOutput.add_member(:principal_entity_type, Shapes::ShapeRef.new(shape: PrincipalEntityType, required: true, location_name: "principalEntityType"))
    GetIdentitySourceOutput.struct_class = Types::GetIdentitySourceOutput

    GetPolicyInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    GetPolicyInput.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    GetPolicyInput.struct_class = Types::GetPolicyInput

    GetPolicyOutput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    GetPolicyOutput.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    GetPolicyOutput.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "policyType"))
    GetPolicyOutput.add_member(:principal, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "principal"))
    GetPolicyOutput.add_member(:resource, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "resource"))
    GetPolicyOutput.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinitionDetail, required: true, location_name: "definition"))
    GetPolicyOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    GetPolicyOutput.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    GetPolicyOutput.struct_class = Types::GetPolicyOutput

    GetPolicyStoreInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    GetPolicyStoreInput.struct_class = Types::GetPolicyStoreInput

    GetPolicyStoreOutput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    GetPolicyStoreOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    GetPolicyStoreOutput.add_member(:validation_settings, Shapes::ShapeRef.new(shape: ValidationSettings, required: true, location_name: "validationSettings"))
    GetPolicyStoreOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    GetPolicyStoreOutput.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    GetPolicyStoreOutput.struct_class = Types::GetPolicyStoreOutput

    GetPolicyTemplateInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    GetPolicyTemplateInput.add_member(:policy_template_id, Shapes::ShapeRef.new(shape: PolicyTemplateId, required: true, location_name: "policyTemplateId"))
    GetPolicyTemplateInput.struct_class = Types::GetPolicyTemplateInput

    GetPolicyTemplateOutput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    GetPolicyTemplateOutput.add_member(:policy_template_id, Shapes::ShapeRef.new(shape: PolicyTemplateId, required: true, location_name: "policyTemplateId"))
    GetPolicyTemplateOutput.add_member(:description, Shapes::ShapeRef.new(shape: PolicyTemplateDescription, location_name: "description"))
    GetPolicyTemplateOutput.add_member(:statement, Shapes::ShapeRef.new(shape: PolicyStatement, required: true, location_name: "statement"))
    GetPolicyTemplateOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    GetPolicyTemplateOutput.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    GetPolicyTemplateOutput.struct_class = Types::GetPolicyTemplateOutput

    GetSchemaInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    GetSchemaInput.struct_class = Types::GetSchemaInput

    GetSchemaOutput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    GetSchemaOutput.add_member(:schema, Shapes::ShapeRef.new(shape: SchemaJson, required: true, location_name: "schema"))
    GetSchemaOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    GetSchemaOutput.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    GetSchemaOutput.struct_class = Types::GetSchemaOutput

    IdentitySourceDetails.add_member(:client_ids, Shapes::ShapeRef.new(shape: ClientIds, location_name: "clientIds"))
    IdentitySourceDetails.add_member(:user_pool_arn, Shapes::ShapeRef.new(shape: UserPoolArn, location_name: "userPoolArn"))
    IdentitySourceDetails.add_member(:discovery_url, Shapes::ShapeRef.new(shape: DiscoveryUrl, location_name: "discoveryUrl"))
    IdentitySourceDetails.add_member(:open_id_issuer, Shapes::ShapeRef.new(shape: OpenIdIssuer, location_name: "openIdIssuer"))
    IdentitySourceDetails.struct_class = Types::IdentitySourceDetails

    IdentitySourceFilter.add_member(:principal_entity_type, Shapes::ShapeRef.new(shape: PrincipalEntityType, location_name: "principalEntityType"))
    IdentitySourceFilter.struct_class = Types::IdentitySourceFilter

    IdentitySourceFilters.member = Shapes::ShapeRef.new(shape: IdentitySourceFilter)

    IdentitySourceItem.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    IdentitySourceItem.add_member(:details, Shapes::ShapeRef.new(shape: IdentitySourceItemDetails, required: true, location_name: "details"))
    IdentitySourceItem.add_member(:identity_source_id, Shapes::ShapeRef.new(shape: IdentitySourceId, required: true, location_name: "identitySourceId"))
    IdentitySourceItem.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    IdentitySourceItem.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    IdentitySourceItem.add_member(:principal_entity_type, Shapes::ShapeRef.new(shape: PrincipalEntityType, required: true, location_name: "principalEntityType"))
    IdentitySourceItem.struct_class = Types::IdentitySourceItem

    IdentitySourceItemDetails.add_member(:client_ids, Shapes::ShapeRef.new(shape: ClientIds, location_name: "clientIds"))
    IdentitySourceItemDetails.add_member(:user_pool_arn, Shapes::ShapeRef.new(shape: UserPoolArn, location_name: "userPoolArn"))
    IdentitySourceItemDetails.add_member(:discovery_url, Shapes::ShapeRef.new(shape: DiscoveryUrl, location_name: "discoveryUrl"))
    IdentitySourceItemDetails.add_member(:open_id_issuer, Shapes::ShapeRef.new(shape: OpenIdIssuer, location_name: "openIdIssuer"))
    IdentitySourceItemDetails.struct_class = Types::IdentitySourceItemDetails

    IdentitySources.member = Shapes::ShapeRef.new(shape: IdentitySourceItem)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    IsAuthorizedInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    IsAuthorizedInput.add_member(:principal, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "principal"))
    IsAuthorizedInput.add_member(:action, Shapes::ShapeRef.new(shape: ActionIdentifier, location_name: "action"))
    IsAuthorizedInput.add_member(:resource, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "resource"))
    IsAuthorizedInput.add_member(:context, Shapes::ShapeRef.new(shape: ContextDefinition, location_name: "context"))
    IsAuthorizedInput.add_member(:entities, Shapes::ShapeRef.new(shape: EntitiesDefinition, location_name: "entities"))
    IsAuthorizedInput.struct_class = Types::IsAuthorizedInput

    IsAuthorizedOutput.add_member(:decision, Shapes::ShapeRef.new(shape: Decision, required: true, location_name: "decision"))
    IsAuthorizedOutput.add_member(:determining_policies, Shapes::ShapeRef.new(shape: DeterminingPolicyList, required: true, location_name: "determiningPolicies"))
    IsAuthorizedOutput.add_member(:errors, Shapes::ShapeRef.new(shape: EvaluationErrorList, required: true, location_name: "errors"))
    IsAuthorizedOutput.struct_class = Types::IsAuthorizedOutput

    IsAuthorizedWithTokenInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    IsAuthorizedWithTokenInput.add_member(:identity_token, Shapes::ShapeRef.new(shape: Token, location_name: "identityToken"))
    IsAuthorizedWithTokenInput.add_member(:access_token, Shapes::ShapeRef.new(shape: Token, location_name: "accessToken"))
    IsAuthorizedWithTokenInput.add_member(:action, Shapes::ShapeRef.new(shape: ActionIdentifier, location_name: "action"))
    IsAuthorizedWithTokenInput.add_member(:resource, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "resource"))
    IsAuthorizedWithTokenInput.add_member(:context, Shapes::ShapeRef.new(shape: ContextDefinition, location_name: "context"))
    IsAuthorizedWithTokenInput.add_member(:entities, Shapes::ShapeRef.new(shape: EntitiesDefinition, location_name: "entities"))
    IsAuthorizedWithTokenInput.struct_class = Types::IsAuthorizedWithTokenInput

    IsAuthorizedWithTokenOutput.add_member(:decision, Shapes::ShapeRef.new(shape: Decision, required: true, location_name: "decision"))
    IsAuthorizedWithTokenOutput.add_member(:determining_policies, Shapes::ShapeRef.new(shape: DeterminingPolicyList, required: true, location_name: "determiningPolicies"))
    IsAuthorizedWithTokenOutput.add_member(:errors, Shapes::ShapeRef.new(shape: EvaluationErrorList, required: true, location_name: "errors"))
    IsAuthorizedWithTokenOutput.struct_class = Types::IsAuthorizedWithTokenOutput

    ListIdentitySourcesInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    ListIdentitySourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIdentitySourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListIdentitySourcesMaxResults, location_name: "maxResults"))
    ListIdentitySourcesInput.add_member(:filters, Shapes::ShapeRef.new(shape: IdentitySourceFilters, location_name: "filters"))
    ListIdentitySourcesInput.struct_class = Types::ListIdentitySourcesInput

    ListIdentitySourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIdentitySourcesOutput.add_member(:identity_sources, Shapes::ShapeRef.new(shape: IdentitySources, required: true, location_name: "identitySources"))
    ListIdentitySourcesOutput.struct_class = Types::ListIdentitySourcesOutput

    ListPoliciesInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    ListPoliciesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPoliciesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPoliciesInput.add_member(:filter, Shapes::ShapeRef.new(shape: PolicyFilter, location_name: "filter"))
    ListPoliciesInput.struct_class = Types::ListPoliciesInput

    ListPoliciesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPoliciesOutput.add_member(:policies, Shapes::ShapeRef.new(shape: PolicyList, required: true, location_name: "policies"))
    ListPoliciesOutput.struct_class = Types::ListPoliciesOutput

    ListPolicyStoresInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPolicyStoresInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPolicyStoresInput.struct_class = Types::ListPolicyStoresInput

    ListPolicyStoresOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPolicyStoresOutput.add_member(:policy_stores, Shapes::ShapeRef.new(shape: PolicyStoreList, required: true, location_name: "policyStores"))
    ListPolicyStoresOutput.struct_class = Types::ListPolicyStoresOutput

    ListPolicyTemplatesInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    ListPolicyTemplatesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPolicyTemplatesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPolicyTemplatesInput.struct_class = Types::ListPolicyTemplatesInput

    ListPolicyTemplatesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPolicyTemplatesOutput.add_member(:policy_templates, Shapes::ShapeRef.new(shape: PolicyTemplatesList, required: true, location_name: "policyTemplates"))
    ListPolicyTemplatesOutput.struct_class = Types::ListPolicyTemplatesOutput

    NamespaceList.member = Shapes::ShapeRef.new(shape: Namespace)

    ParentList.member = Shapes::ShapeRef.new(shape: EntityIdentifier)

    PolicyDefinition.add_member(:static, Shapes::ShapeRef.new(shape: StaticPolicyDefinition, location_name: "static"))
    PolicyDefinition.add_member(:template_linked, Shapes::ShapeRef.new(shape: TemplateLinkedPolicyDefinition, location_name: "templateLinked"))
    PolicyDefinition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PolicyDefinition.add_member_subclass(:static, Types::PolicyDefinition::Static)
    PolicyDefinition.add_member_subclass(:template_linked, Types::PolicyDefinition::TemplateLinked)
    PolicyDefinition.add_member_subclass(:unknown, Types::PolicyDefinition::Unknown)
    PolicyDefinition.struct_class = Types::PolicyDefinition

    PolicyDefinitionDetail.add_member(:static, Shapes::ShapeRef.new(shape: StaticPolicyDefinitionDetail, location_name: "static"))
    PolicyDefinitionDetail.add_member(:template_linked, Shapes::ShapeRef.new(shape: TemplateLinkedPolicyDefinitionDetail, location_name: "templateLinked"))
    PolicyDefinitionDetail.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PolicyDefinitionDetail.add_member_subclass(:static, Types::PolicyDefinitionDetail::Static)
    PolicyDefinitionDetail.add_member_subclass(:template_linked, Types::PolicyDefinitionDetail::TemplateLinked)
    PolicyDefinitionDetail.add_member_subclass(:unknown, Types::PolicyDefinitionDetail::Unknown)
    PolicyDefinitionDetail.struct_class = Types::PolicyDefinitionDetail

    PolicyDefinitionItem.add_member(:static, Shapes::ShapeRef.new(shape: StaticPolicyDefinitionItem, location_name: "static"))
    PolicyDefinitionItem.add_member(:template_linked, Shapes::ShapeRef.new(shape: TemplateLinkedPolicyDefinitionItem, location_name: "templateLinked"))
    PolicyDefinitionItem.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PolicyDefinitionItem.add_member_subclass(:static, Types::PolicyDefinitionItem::Static)
    PolicyDefinitionItem.add_member_subclass(:template_linked, Types::PolicyDefinitionItem::TemplateLinked)
    PolicyDefinitionItem.add_member_subclass(:unknown, Types::PolicyDefinitionItem::Unknown)
    PolicyDefinitionItem.struct_class = Types::PolicyDefinitionItem

    PolicyFilter.add_member(:principal, Shapes::ShapeRef.new(shape: EntityReference, location_name: "principal"))
    PolicyFilter.add_member(:resource, Shapes::ShapeRef.new(shape: EntityReference, location_name: "resource"))
    PolicyFilter.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, location_name: "policyType"))
    PolicyFilter.add_member(:policy_template_id, Shapes::ShapeRef.new(shape: PolicyTemplateId, location_name: "policyTemplateId"))
    PolicyFilter.struct_class = Types::PolicyFilter

    PolicyItem.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    PolicyItem.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    PolicyItem.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "policyType"))
    PolicyItem.add_member(:principal, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "principal"))
    PolicyItem.add_member(:resource, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "resource"))
    PolicyItem.add_member(:definition, Shapes::ShapeRef.new(shape: PolicyDefinitionItem, required: true, location_name: "definition"))
    PolicyItem.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    PolicyItem.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    PolicyItem.struct_class = Types::PolicyItem

    PolicyList.member = Shapes::ShapeRef.new(shape: PolicyItem)

    PolicyStoreItem.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    PolicyStoreItem.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    PolicyStoreItem.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    PolicyStoreItem.struct_class = Types::PolicyStoreItem

    PolicyStoreList.member = Shapes::ShapeRef.new(shape: PolicyStoreItem)

    PolicyTemplateItem.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    PolicyTemplateItem.add_member(:policy_template_id, Shapes::ShapeRef.new(shape: PolicyTemplateId, required: true, location_name: "policyTemplateId"))
    PolicyTemplateItem.add_member(:description, Shapes::ShapeRef.new(shape: PolicyTemplateDescription, location_name: "description"))
    PolicyTemplateItem.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    PolicyTemplateItem.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    PolicyTemplateItem.struct_class = Types::PolicyTemplateItem

    PolicyTemplatesList.member = Shapes::ShapeRef.new(shape: PolicyTemplateItem)

    PutSchemaInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    PutSchemaInput.add_member(:definition, Shapes::ShapeRef.new(shape: SchemaDefinition, required: true, location_name: "definition"))
    PutSchemaInput.struct_class = Types::PutSchemaInput

    PutSchemaOutput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    PutSchemaOutput.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespaceList, required: true, location_name: "namespaces"))
    PutSchemaOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    PutSchemaOutput.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    PutSchemaOutput.struct_class = Types::PutSchemaOutput

    RecordAttribute.key = Shapes::ShapeRef.new(shape: String)
    RecordAttribute.value = Shapes::ShapeRef.new(shape: AttributeValue)

    ResourceConflict.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceConflict.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ResourceConflict.struct_class = Types::ResourceConflict

    ResourceConflictList.member = Shapes::ShapeRef.new(shape: ResourceConflict)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SchemaDefinition.add_member(:cedar_json, Shapes::ShapeRef.new(shape: SchemaJson, location_name: "cedarJson"))
    SchemaDefinition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SchemaDefinition.add_member_subclass(:cedar_json, Types::SchemaDefinition::CedarJson)
    SchemaDefinition.add_member_subclass(:unknown, Types::SchemaDefinition::Unknown)
    SchemaDefinition.struct_class = Types::SchemaDefinition

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SetAttribute.member = Shapes::ShapeRef.new(shape: AttributeValue)

    StaticPolicyDefinition.add_member(:description, Shapes::ShapeRef.new(shape: StaticPolicyDescription, location_name: "description"))
    StaticPolicyDefinition.add_member(:statement, Shapes::ShapeRef.new(shape: PolicyStatement, required: true, location_name: "statement"))
    StaticPolicyDefinition.struct_class = Types::StaticPolicyDefinition

    StaticPolicyDefinitionDetail.add_member(:description, Shapes::ShapeRef.new(shape: StaticPolicyDescription, location_name: "description"))
    StaticPolicyDefinitionDetail.add_member(:statement, Shapes::ShapeRef.new(shape: PolicyStatement, required: true, location_name: "statement"))
    StaticPolicyDefinitionDetail.struct_class = Types::StaticPolicyDefinitionDetail

    StaticPolicyDefinitionItem.add_member(:description, Shapes::ShapeRef.new(shape: StaticPolicyDescription, location_name: "description"))
    StaticPolicyDefinitionItem.struct_class = Types::StaticPolicyDefinitionItem

    TemplateLinkedPolicyDefinition.add_member(:policy_template_id, Shapes::ShapeRef.new(shape: PolicyTemplateId, required: true, location_name: "policyTemplateId"))
    TemplateLinkedPolicyDefinition.add_member(:principal, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "principal"))
    TemplateLinkedPolicyDefinition.add_member(:resource, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "resource"))
    TemplateLinkedPolicyDefinition.struct_class = Types::TemplateLinkedPolicyDefinition

    TemplateLinkedPolicyDefinitionDetail.add_member(:policy_template_id, Shapes::ShapeRef.new(shape: PolicyTemplateId, required: true, location_name: "policyTemplateId"))
    TemplateLinkedPolicyDefinitionDetail.add_member(:principal, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "principal"))
    TemplateLinkedPolicyDefinitionDetail.add_member(:resource, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "resource"))
    TemplateLinkedPolicyDefinitionDetail.struct_class = Types::TemplateLinkedPolicyDefinitionDetail

    TemplateLinkedPolicyDefinitionItem.add_member(:policy_template_id, Shapes::ShapeRef.new(shape: PolicyTemplateId, required: true, location_name: "policyTemplateId"))
    TemplateLinkedPolicyDefinitionItem.add_member(:principal, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "principal"))
    TemplateLinkedPolicyDefinitionItem.add_member(:resource, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "resource"))
    TemplateLinkedPolicyDefinitionItem.struct_class = Types::TemplateLinkedPolicyDefinitionItem

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateCognitoUserPoolConfiguration.add_member(:user_pool_arn, Shapes::ShapeRef.new(shape: UserPoolArn, required: true, location_name: "userPoolArn"))
    UpdateCognitoUserPoolConfiguration.add_member(:client_ids, Shapes::ShapeRef.new(shape: ClientIds, location_name: "clientIds"))
    UpdateCognitoUserPoolConfiguration.struct_class = Types::UpdateCognitoUserPoolConfiguration

    UpdateConfiguration.add_member(:cognito_user_pool_configuration, Shapes::ShapeRef.new(shape: UpdateCognitoUserPoolConfiguration, location_name: "cognitoUserPoolConfiguration"))
    UpdateConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    UpdateConfiguration.add_member_subclass(:cognito_user_pool_configuration, Types::UpdateConfiguration::CognitoUserPoolConfiguration)
    UpdateConfiguration.add_member_subclass(:unknown, Types::UpdateConfiguration::Unknown)
    UpdateConfiguration.struct_class = Types::UpdateConfiguration

    UpdateIdentitySourceInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    UpdateIdentitySourceInput.add_member(:identity_source_id, Shapes::ShapeRef.new(shape: IdentitySourceId, required: true, location_name: "identitySourceId"))
    UpdateIdentitySourceInput.add_member(:update_configuration, Shapes::ShapeRef.new(shape: UpdateConfiguration, required: true, location_name: "updateConfiguration"))
    UpdateIdentitySourceInput.add_member(:principal_entity_type, Shapes::ShapeRef.new(shape: PrincipalEntityType, location_name: "principalEntityType"))
    UpdateIdentitySourceInput.struct_class = Types::UpdateIdentitySourceInput

    UpdateIdentitySourceOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    UpdateIdentitySourceOutput.add_member(:identity_source_id, Shapes::ShapeRef.new(shape: IdentitySourceId, required: true, location_name: "identitySourceId"))
    UpdateIdentitySourceOutput.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    UpdateIdentitySourceOutput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    UpdateIdentitySourceOutput.struct_class = Types::UpdateIdentitySourceOutput

    UpdatePolicyDefinition.add_member(:static, Shapes::ShapeRef.new(shape: UpdateStaticPolicyDefinition, location_name: "static"))
    UpdatePolicyDefinition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    UpdatePolicyDefinition.add_member_subclass(:static, Types::UpdatePolicyDefinition::Static)
    UpdatePolicyDefinition.add_member_subclass(:unknown, Types::UpdatePolicyDefinition::Unknown)
    UpdatePolicyDefinition.struct_class = Types::UpdatePolicyDefinition

    UpdatePolicyInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    UpdatePolicyInput.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    UpdatePolicyInput.add_member(:definition, Shapes::ShapeRef.new(shape: UpdatePolicyDefinition, required: true, location_name: "definition"))
    UpdatePolicyInput.struct_class = Types::UpdatePolicyInput

    UpdatePolicyOutput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    UpdatePolicyOutput.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "policyId"))
    UpdatePolicyOutput.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "policyType"))
    UpdatePolicyOutput.add_member(:principal, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "principal"))
    UpdatePolicyOutput.add_member(:resource, Shapes::ShapeRef.new(shape: EntityIdentifier, location_name: "resource"))
    UpdatePolicyOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    UpdatePolicyOutput.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    UpdatePolicyOutput.struct_class = Types::UpdatePolicyOutput

    UpdatePolicyStoreInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    UpdatePolicyStoreInput.add_member(:validation_settings, Shapes::ShapeRef.new(shape: ValidationSettings, required: true, location_name: "validationSettings"))
    UpdatePolicyStoreInput.struct_class = Types::UpdatePolicyStoreInput

    UpdatePolicyStoreOutput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    UpdatePolicyStoreOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "arn"))
    UpdatePolicyStoreOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    UpdatePolicyStoreOutput.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    UpdatePolicyStoreOutput.struct_class = Types::UpdatePolicyStoreOutput

    UpdatePolicyTemplateInput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    UpdatePolicyTemplateInput.add_member(:policy_template_id, Shapes::ShapeRef.new(shape: PolicyTemplateId, required: true, location_name: "policyTemplateId"))
    UpdatePolicyTemplateInput.add_member(:description, Shapes::ShapeRef.new(shape: PolicyTemplateDescription, location_name: "description"))
    UpdatePolicyTemplateInput.add_member(:statement, Shapes::ShapeRef.new(shape: PolicyStatement, required: true, location_name: "statement"))
    UpdatePolicyTemplateInput.struct_class = Types::UpdatePolicyTemplateInput

    UpdatePolicyTemplateOutput.add_member(:policy_store_id, Shapes::ShapeRef.new(shape: PolicyStoreId, required: true, location_name: "policyStoreId"))
    UpdatePolicyTemplateOutput.add_member(:policy_template_id, Shapes::ShapeRef.new(shape: PolicyTemplateId, required: true, location_name: "policyTemplateId"))
    UpdatePolicyTemplateOutput.add_member(:created_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "createdDate"))
    UpdatePolicyTemplateOutput.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: TimestampFormat, required: true, location_name: "lastUpdatedDate"))
    UpdatePolicyTemplateOutput.struct_class = Types::UpdatePolicyTemplateOutput

    UpdateStaticPolicyDefinition.add_member(:description, Shapes::ShapeRef.new(shape: StaticPolicyDescription, location_name: "description"))
    UpdateStaticPolicyDefinition.add_member(:statement, Shapes::ShapeRef.new(shape: PolicyStatement, required: true, location_name: "statement"))
    UpdateStaticPolicyDefinition.struct_class = Types::UpdateStaticPolicyDefinition

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "path"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    ValidationSettings.add_member(:mode, Shapes::ShapeRef.new(shape: ValidationMode, required: true, location_name: "mode"))
    ValidationSettings.struct_class = Types::ValidationSettings


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-12-01"

      api.metadata = {
        "apiVersion" => "2021-12-01",
        "endpointPrefix" => "verifiedpermissions",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceFullName" => "Amazon Verified Permissions",
        "serviceId" => "VerifiedPermissions",
        "signatureVersion" => "v4",
        "signingName" => "verifiedpermissions",
        "targetPrefix" => "VerifiedPermissions",
        "uid" => "verifiedpermissions-2021-12-01",
      }

      api.add_operation(:create_identity_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIdentitySource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateIdentitySourceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateIdentitySourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_policy_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePolicyStore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePolicyStoreInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePolicyStoreOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_policy_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePolicyTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePolicyTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePolicyTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_identity_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIdentitySource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIdentitySourceInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteIdentitySourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: DeletePolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_policy_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicyStore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyStoreInput)
        o.output = Shapes::ShapeRef.new(shape: DeletePolicyStoreOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_policy_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicyTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: DeletePolicyTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_identity_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIdentitySource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetIdentitySourceInput)
        o.output = Shapes::ShapeRef.new(shape: GetIdentitySourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_policy_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicyStore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyStoreInput)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyStoreOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_policy_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicyTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSchema"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSchemaInput)
        o.output = Shapes::ShapeRef.new(shape: GetSchemaOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:is_authorized, Seahorse::Model::Operation.new.tap do |o|
        o.name = "IsAuthorized"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: IsAuthorizedInput)
        o.output = Shapes::ShapeRef.new(shape: IsAuthorizedOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:is_authorized_with_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "IsAuthorizedWithToken"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: IsAuthorizedWithTokenInput)
        o.output = Shapes::ShapeRef.new(shape: IsAuthorizedWithTokenOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_identity_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIdentitySources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListIdentitySourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListIdentitySourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPoliciesInput)
        o.output = Shapes::ShapeRef.new(shape: ListPoliciesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_policy_stores, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicyStores"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPolicyStoresInput)
        o.output = Shapes::ShapeRef.new(shape: ListPolicyStoresOutput)
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

      api.add_operation(:list_policy_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicyTemplates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPolicyTemplatesInput)
        o.output = Shapes::ShapeRef.new(shape: ListPolicyTemplatesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSchema"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutSchemaInput)
        o.output = Shapes::ShapeRef.new(shape: PutSchemaOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_identity_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIdentitySource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateIdentitySourceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateIdentitySourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_policy_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePolicyStore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePolicyStoreInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePolicyStoreOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_policy_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePolicyTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePolicyTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePolicyTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
