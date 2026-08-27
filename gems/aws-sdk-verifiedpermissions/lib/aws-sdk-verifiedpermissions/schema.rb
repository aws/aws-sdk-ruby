# frozen_string_literal: true

# This is generated code!

module Aws::VerifiedPermissions
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#ActionId", name: "ActionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^.*$", "smithy.api#sensitive" => {}})
    ActionIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ActionIdentifier", name: "ActionIdentifier")
    ActionIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#ActionIdentifierList", name: "ActionIdentifierList")
    ActionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#ActionType", name: "ActionType", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^Action$|^.+::Action$", "smithy.api#sensitive" => {}})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AttributeValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#AttributeValue", name: "AttributeValue")
    Audience = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#Audience", name: "Audience", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    Audiences = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#Audiences", name: "Audiences", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    BatchGetPolicyErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.verifiedpermissions#BatchGetPolicyErrorCode", name: "BatchGetPolicyErrorCode")
    BatchGetPolicyErrorItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#BatchGetPolicyErrorItem", name: "BatchGetPolicyErrorItem")
    BatchGetPolicyErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#BatchGetPolicyErrorList", name: "BatchGetPolicyErrorList")
    BatchGetPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#BatchGetPolicyInput", name: "BatchGetPolicyInput")
    BatchGetPolicyInputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#BatchGetPolicyInputItem", name: "BatchGetPolicyInputItem", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.verifiedpermissions#PolicyStore"}, {"resource" => "com.amazonaws.verifiedpermissions#Policy"}]})
    BatchGetPolicyInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#BatchGetPolicyInputList", name: "BatchGetPolicyInputList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    BatchGetPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#BatchGetPolicyOutput", name: "BatchGetPolicyOutput")
    BatchGetPolicyOutputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#BatchGetPolicyOutputItem", name: "BatchGetPolicyOutputItem")
    BatchGetPolicyOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#BatchGetPolicyOutputList", name: "BatchGetPolicyOutputList")
    BatchIsAuthorizedInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#BatchIsAuthorizedInput", name: "BatchIsAuthorizedInput")
    BatchIsAuthorizedInputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#BatchIsAuthorizedInputItem", name: "BatchIsAuthorizedInputItem")
    BatchIsAuthorizedInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#BatchIsAuthorizedInputList", name: "BatchIsAuthorizedInputList", traits: {"smithy.api#length" => {"min" => 1}})
    BatchIsAuthorizedOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#BatchIsAuthorizedOutput", name: "BatchIsAuthorizedOutput")
    BatchIsAuthorizedOutputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#BatchIsAuthorizedOutputItem", name: "BatchIsAuthorizedOutputItem")
    BatchIsAuthorizedOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#BatchIsAuthorizedOutputList", name: "BatchIsAuthorizedOutputList")
    BatchIsAuthorizedWithTokenInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#BatchIsAuthorizedWithTokenInput", name: "BatchIsAuthorizedWithTokenInput")
    BatchIsAuthorizedWithTokenInputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#BatchIsAuthorizedWithTokenInputItem", name: "BatchIsAuthorizedWithTokenInputItem")
    BatchIsAuthorizedWithTokenInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#BatchIsAuthorizedWithTokenInputList", name: "BatchIsAuthorizedWithTokenInputList", traits: {"smithy.api#length" => {"min" => 1}})
    BatchIsAuthorizedWithTokenOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#BatchIsAuthorizedWithTokenOutput", name: "BatchIsAuthorizedWithTokenOutput")
    BatchIsAuthorizedWithTokenOutputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#BatchIsAuthorizedWithTokenOutputItem", name: "BatchIsAuthorizedWithTokenOutputItem")
    BatchIsAuthorizedWithTokenOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#BatchIsAuthorizedWithTokenOutputList", name: "BatchIsAuthorizedWithTokenOutputList")
    BooleanAttribute = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.verifiedpermissions#BooleanAttribute", name: "BooleanAttribute", traits: {"smithy.api#sensitive" => {}})
    CedarJson = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#CedarJson", name: "CedarJson", traits: {"smithy.api#sensitive" => {}})
    CedarVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.verifiedpermissions#CedarVersion", name: "CedarVersion")
    Claim = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#Claim", name: "Claim", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    ClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#ClientId", name: "ClientId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.*$", "smithy.api#sensitive" => {}})
    ClientIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#ClientIds", name: "ClientIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    CognitoGroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#CognitoGroupConfiguration", name: "CognitoGroupConfiguration")
    CognitoGroupConfigurationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#CognitoGroupConfigurationDetail", name: "CognitoGroupConfigurationDetail")
    CognitoGroupConfigurationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#CognitoGroupConfigurationItem", name: "CognitoGroupConfigurationItem")
    CognitoUserPoolConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#CognitoUserPoolConfiguration", name: "CognitoUserPoolConfiguration")
    CognitoUserPoolConfigurationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#CognitoUserPoolConfigurationDetail", name: "CognitoUserPoolConfigurationDetail")
    CognitoUserPoolConfigurationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#CognitoUserPoolConfigurationItem", name: "CognitoUserPoolConfigurationItem")
    Configuration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#Configuration", name: "Configuration")
    ConfigurationDetail = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#ConfigurationDetail", name: "ConfigurationDetail")
    ConfigurationItem = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#ConfigurationItem", name: "ConfigurationItem")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContextDefinition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#ContextDefinition", name: "ContextDefinition")
    ContextMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.verifiedpermissions#ContextMap", name: "ContextMap", traits: {"smithy.api#sensitive" => {}})
    CreateIdentitySourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#CreateIdentitySourceInput", name: "CreateIdentitySourceInput")
    CreateIdentitySourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#CreateIdentitySourceOutput", name: "CreateIdentitySourceOutput")
    CreatePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#CreatePolicyInput", name: "CreatePolicyInput")
    CreatePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#CreatePolicyOutput", name: "CreatePolicyOutput")
    CreatePolicyStoreInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#CreatePolicyStoreInput", name: "CreatePolicyStoreInput")
    CreatePolicyStoreOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#CreatePolicyStoreOutput", name: "CreatePolicyStoreOutput")
    CreatePolicyTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#CreatePolicyTemplateInput", name: "CreatePolicyTemplateInput")
    CreatePolicyTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#CreatePolicyTemplateOutput", name: "CreatePolicyTemplateOutput")
    DatetimeAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#DatetimeAttribute", name: "DatetimeAttribute", traits: {"smithy.api#length" => {"min" => 10, "max" => 28}, "smithy.api#pattern" => "^\\d{4}-\\d{2}-\\d{2}(T\\d{2}:\\d{2}:\\d{2}(\\.\\d{3})?(Z|[+-]\\d{4}))?$", "smithy.api#sensitive" => {}})
    Decimal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#Decimal", name: "Decimal", traits: {"smithy.api#length" => {"min" => 3, "max" => 23}, "smithy.api#pattern" => "^-?\\d{1,15}\\.\\d{1,4}$", "smithy.api#sensitive" => {}})
    Decision = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.verifiedpermissions#Decision", name: "Decision")
    DeleteIdentitySourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#DeleteIdentitySourceInput", name: "DeleteIdentitySourceInput")
    DeleteIdentitySourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#DeleteIdentitySourceOutput", name: "DeleteIdentitySourceOutput")
    DeletePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#DeletePolicyInput", name: "DeletePolicyInput")
    DeletePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#DeletePolicyOutput", name: "DeletePolicyOutput")
    DeletePolicyStoreInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#DeletePolicyStoreInput", name: "DeletePolicyStoreInput")
    DeletePolicyStoreOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#DeletePolicyStoreOutput", name: "DeletePolicyStoreOutput")
    DeletePolicyTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#DeletePolicyTemplateInput", name: "DeletePolicyTemplateInput")
    DeletePolicyTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#DeletePolicyTemplateOutput", name: "DeletePolicyTemplateOutput")
    DeletionProtection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.verifiedpermissions#DeletionProtection", name: "DeletionProtection")
    DeterminingPolicyItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#DeterminingPolicyItem", name: "DeterminingPolicyItem")
    DeterminingPolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#DeterminingPolicyList", name: "DeterminingPolicyList", traits: {"smithy.api#uniqueItems" => {}})
    DiscoveryUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#DiscoveryUrl", name: "DiscoveryUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^https://.*$"})
    Duration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#Duration", name: "Duration", traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^-?(\\d+d)?(\\d+h)?(\\d+m)?(\\d+s)?(\\d+ms)?$", "smithy.api#sensitive" => {}})
    EntitiesDefinition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#EntitiesDefinition", name: "EntitiesDefinition")
    EntityAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.verifiedpermissions#EntityAttributes", name: "EntityAttributes")
    EntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#EntityId", name: "EntityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^.*$", "smithy.api#sensitive" => {}})
    EntityIdPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#EntityIdPrefix", name: "EntityIdPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#sensitive" => {}})
    EntityIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#EntityIdentifier", name: "EntityIdentifier")
    EntityItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#EntityItem", name: "EntityItem")
    EntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#EntityList", name: "EntityList")
    EntityReference = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#EntityReference", name: "EntityReference")
    EntityType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#EntityType", name: "EntityType", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^.*$", "smithy.api#sensitive" => {}})
    EvaluationErrorItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#EvaluationErrorItem", name: "EvaluationErrorItem", traits: {"smithy.api#sensitive" => {}})
    EvaluationErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#EvaluationErrorList", name: "EvaluationErrorList", traits: {"smithy.api#uniqueItems" => {}})
    GetIdentitySourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#GetIdentitySourceInput", name: "GetIdentitySourceInput")
    GetIdentitySourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#GetIdentitySourceOutput", name: "GetIdentitySourceOutput")
    GetPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#GetPolicyInput", name: "GetPolicyInput")
    GetPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#GetPolicyOutput", name: "GetPolicyOutput")
    GetPolicyStoreInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#GetPolicyStoreInput", name: "GetPolicyStoreInput")
    GetPolicyStoreOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#GetPolicyStoreOutput", name: "GetPolicyStoreOutput")
    GetPolicyTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#GetPolicyTemplateInput", name: "GetPolicyTemplateInput")
    GetPolicyTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#GetPolicyTemplateOutput", name: "GetPolicyTemplateOutput")
    GetSchemaInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#GetSchemaInput", name: "GetSchemaInput")
    GetSchemaOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#GetSchemaOutput", name: "GetSchemaOutput")
    GroupEntityType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#GroupEntityType", name: "GroupEntityType", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^([_a-zA-Z][_a-zA-Z0-9]*::)*[_a-zA-Z][_a-zA-Z0-9]*$", "smithy.api#sensitive" => {}})
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-]*$"})
    IdentitySourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#IdentitySourceDetails", name: "IdentitySourceDetails", traits: {"smithy.api#deprecated" => {"message" => "This shape has been replaced by ConfigurationDetail"}})
    IdentitySourceFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#IdentitySourceFilter", name: "IdentitySourceFilter")
    IdentitySourceFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#IdentitySourceFilters", name: "IdentitySourceFilters", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    IdentitySourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#IdentitySourceId", name: "IdentitySourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9-]*$"})
    IdentitySourceItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#IdentitySourceItem", name: "IdentitySourceItem")
    IdentitySourceItemDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#IdentitySourceItemDetails", name: "IdentitySourceItemDetails", traits: {"smithy.api#deprecated" => {"message" => "This shape has been replaced by ConfigurationItem"}})
    IdentitySources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#IdentitySources", name: "IdentitySources")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#InvalidStateException", name: "InvalidStateException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 406})
    IpAddr = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#IpAddr", name: "IpAddr", traits: {"smithy.api#length" => {"min" => 1, "max" => 44}, "smithy.api#pattern" => "^[0-9a-fA-F\\.:\\/]*$", "smithy.api#sensitive" => {}})
    IsAuthorizedInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#IsAuthorizedInput", name: "IsAuthorizedInput")
    IsAuthorizedOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#IsAuthorizedOutput", name: "IsAuthorizedOutput")
    IsAuthorizedWithTokenInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#IsAuthorizedWithTokenInput", name: "IsAuthorizedWithTokenInput")
    IsAuthorizedWithTokenOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#IsAuthorizedWithTokenOutput", name: "IsAuthorizedWithTokenOutput")
    Issuer = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#Issuer", name: "Issuer", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^https://.*$"})
    ListIdentitySourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ListIdentitySourcesInput", name: "ListIdentitySourcesInput")
    ListIdentitySourcesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.verifiedpermissions#ListIdentitySourcesMaxResults", name: "ListIdentitySourcesMaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    ListIdentitySourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ListIdentitySourcesOutput", name: "ListIdentitySourcesOutput")
    ListPoliciesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ListPoliciesInput", name: "ListPoliciesInput")
    ListPoliciesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ListPoliciesOutput", name: "ListPoliciesOutput")
    ListPolicyStoresInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ListPolicyStoresInput", name: "ListPolicyStoresInput")
    ListPolicyStoresOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ListPolicyStoresOutput", name: "ListPolicyStoresOutput")
    ListPolicyTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ListPolicyTemplatesInput", name: "ListPolicyTemplatesInput")
    ListPolicyTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ListPolicyTemplatesOutput", name: "ListPolicyTemplatesOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ListTagsForResourceInput", name: "ListTagsForResourceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.verifiedpermissions#PolicyStore", "ids" => {"policyStoreId" => "resourceArn"}}]})
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    LongAttribute = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.verifiedpermissions#LongAttribute", name: "LongAttribute", traits: {"smithy.api#sensitive" => {}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.verifiedpermissions#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    Namespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#Namespace", name: "Namespace", traits: {"smithy.api#length" => {"max" => 100}, "smithy.api#pattern" => "^.*$", "smithy.api#sensitive" => {}})
    NamespaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#NamespaceList", name: "NamespaceList")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 8000}, "smithy.api#pattern" => "^[A-Za-z0-9-_=+/\\.]*$"})
    OpenIdConnectAccessTokenConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdConnectAccessTokenConfiguration", name: "OpenIdConnectAccessTokenConfiguration")
    OpenIdConnectAccessTokenConfigurationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdConnectAccessTokenConfigurationDetail", name: "OpenIdConnectAccessTokenConfigurationDetail")
    OpenIdConnectAccessTokenConfigurationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdConnectAccessTokenConfigurationItem", name: "OpenIdConnectAccessTokenConfigurationItem")
    OpenIdConnectConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdConnectConfiguration", name: "OpenIdConnectConfiguration")
    OpenIdConnectConfigurationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdConnectConfigurationDetail", name: "OpenIdConnectConfigurationDetail")
    OpenIdConnectConfigurationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdConnectConfigurationItem", name: "OpenIdConnectConfigurationItem")
    OpenIdConnectGroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdConnectGroupConfiguration", name: "OpenIdConnectGroupConfiguration")
    OpenIdConnectGroupConfigurationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdConnectGroupConfigurationDetail", name: "OpenIdConnectGroupConfigurationDetail")
    OpenIdConnectGroupConfigurationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdConnectGroupConfigurationItem", name: "OpenIdConnectGroupConfigurationItem")
    OpenIdConnectIdentityTokenConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdConnectIdentityTokenConfiguration", name: "OpenIdConnectIdentityTokenConfiguration")
    OpenIdConnectIdentityTokenConfigurationDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdConnectIdentityTokenConfigurationDetail", name: "OpenIdConnectIdentityTokenConfigurationDetail")
    OpenIdConnectIdentityTokenConfigurationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdConnectIdentityTokenConfigurationItem", name: "OpenIdConnectIdentityTokenConfigurationItem")
    OpenIdConnectTokenSelection = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdConnectTokenSelection", name: "OpenIdConnectTokenSelection")
    OpenIdConnectTokenSelectionDetail = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdConnectTokenSelectionDetail", name: "OpenIdConnectTokenSelectionDetail")
    OpenIdConnectTokenSelectionItem = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdConnectTokenSelectionItem", name: "OpenIdConnectTokenSelectionItem")
    OpenIdIssuer = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.verifiedpermissions#OpenIdIssuer", name: "OpenIdIssuer")
    ParentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#ParentList", name: "ParentList", traits: {"smithy.api#uniqueItems" => {}})
    PolicyDefinition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#PolicyDefinition", name: "PolicyDefinition")
    PolicyDefinitionDetail = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#PolicyDefinitionDetail", name: "PolicyDefinitionDetail")
    PolicyDefinitionItem = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#PolicyDefinitionItem", name: "PolicyDefinitionItem")
    PolicyEffect = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.verifiedpermissions#PolicyEffect", name: "PolicyEffect")
    PolicyFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#PolicyFilter", name: "PolicyFilter")
    PolicyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#PolicyId", name: "PolicyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9-]*$"})
    PolicyItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#PolicyItem", name: "PolicyItem")
    PolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#PolicyList", name: "PolicyList")
    PolicyStatement = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#PolicyStatement", name: "PolicyStatement", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}, "smithy.api#sensitive" => {}})
    PolicyStoreDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#PolicyStoreDescription", name: "PolicyStoreDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 150}, "smithy.api#sensitive" => {}})
    PolicyStoreId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#PolicyStoreId", name: "PolicyStoreId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9-/_]*$"})
    PolicyStoreItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#PolicyStoreItem", name: "PolicyStoreItem")
    PolicyStoreList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#PolicyStoreList", name: "PolicyStoreList")
    PolicyTemplateDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#PolicyTemplateDescription", name: "PolicyTemplateDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 150}, "smithy.api#sensitive" => {}})
    PolicyTemplateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#PolicyTemplateId", name: "PolicyTemplateId", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9-/_]*$"})
    PolicyTemplateItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#PolicyTemplateItem", name: "PolicyTemplateItem")
    PolicyTemplatesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#PolicyTemplatesList", name: "PolicyTemplatesList")
    PolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.verifiedpermissions#PolicyType", name: "PolicyType")
    PrincipalEntityType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#PrincipalEntityType", name: "PrincipalEntityType", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^.*$", "smithy.api#sensitive" => {}})
    PutSchemaInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#PutSchemaInput", name: "PutSchemaInput")
    PutSchemaOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#PutSchemaOutput", name: "PutSchemaOutput")
    RecordAttribute = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.verifiedpermissions#RecordAttribute", name: "RecordAttribute")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2500}, "smithy.api#pattern" => "^arn:[^:]*:[^:]*:[^:]*:[^:]*:.*$"})
    ResourceConflict = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ResourceConflict", name: "ResourceConflict")
    ResourceConflictList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#ResourceConflictList", name: "ResourceConflictList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.verifiedpermissions#ResourceType", name: "ResourceType")
    SchemaDefinition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#SchemaDefinition", name: "SchemaDefinition")
    SchemaJson = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#SchemaJson", name: "SchemaJson", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SetAttribute = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#SetAttribute", name: "SetAttribute")
    StaticPolicyDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#StaticPolicyDefinition", name: "StaticPolicyDefinition")
    StaticPolicyDefinitionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#StaticPolicyDefinitionDetail", name: "StaticPolicyDefinitionDetail")
    StaticPolicyDefinitionItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#StaticPolicyDefinitionItem", name: "StaticPolicyDefinitionItem")
    StaticPolicyDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#StaticPolicyDescription", name: "StaticPolicyDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 150}, "smithy.api#sensitive" => {}})
    StringAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#StringAttribute", name: "StringAttribute", traits: {"smithy.api#sensitive" => {}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.verifiedpermissions#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#TagResourceInput", name: "TagResourceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.verifiedpermissions#PolicyStore", "ids" => {"policyStoreId" => "resourceArn"}}]})
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TemplateLinkedPolicyDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#TemplateLinkedPolicyDefinition", name: "TemplateLinkedPolicyDefinition")
    TemplateLinkedPolicyDefinitionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#TemplateLinkedPolicyDefinitionDetail", name: "TemplateLinkedPolicyDefinitionDetail")
    TemplateLinkedPolicyDefinitionItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#TemplateLinkedPolicyDefinitionItem", name: "TemplateLinkedPolicyDefinitionItem")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TimestampFormat = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.verifiedpermissions#TimestampFormat", name: "TimestampFormat", traits: {"smithy.api#timestampFormat" => "date-time"})
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#Token", name: "Token", traits: {"smithy.api#length" => {"min" => 1, "max" => 131072}, "smithy.api#pattern" => "^[A-Za-z0-9-_=]+.[A-Za-z0-9-_=]+.[A-Za-z0-9-_=]+$", "smithy.api#sensitive" => {}})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UntagResourceInput", name: "UntagResourceInput", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.verifiedpermissions#PolicyStore", "ids" => {"policyStoreId" => "resourceArn"}}]})
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateCognitoGroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UpdateCognitoGroupConfiguration", name: "UpdateCognitoGroupConfiguration")
    UpdateCognitoUserPoolConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UpdateCognitoUserPoolConfiguration", name: "UpdateCognitoUserPoolConfiguration")
    UpdateConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#UpdateConfiguration", name: "UpdateConfiguration")
    UpdateIdentitySourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UpdateIdentitySourceInput", name: "UpdateIdentitySourceInput")
    UpdateIdentitySourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UpdateIdentitySourceOutput", name: "UpdateIdentitySourceOutput")
    UpdateOpenIdConnectAccessTokenConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UpdateOpenIdConnectAccessTokenConfiguration", name: "UpdateOpenIdConnectAccessTokenConfiguration")
    UpdateOpenIdConnectConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UpdateOpenIdConnectConfiguration", name: "UpdateOpenIdConnectConfiguration")
    UpdateOpenIdConnectGroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UpdateOpenIdConnectGroupConfiguration", name: "UpdateOpenIdConnectGroupConfiguration")
    UpdateOpenIdConnectIdentityTokenConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UpdateOpenIdConnectIdentityTokenConfiguration", name: "UpdateOpenIdConnectIdentityTokenConfiguration")
    UpdateOpenIdConnectTokenSelection = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#UpdateOpenIdConnectTokenSelection", name: "UpdateOpenIdConnectTokenSelection")
    UpdatePolicyDefinition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.verifiedpermissions#UpdatePolicyDefinition", name: "UpdatePolicyDefinition")
    UpdatePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UpdatePolicyInput", name: "UpdatePolicyInput")
    UpdatePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UpdatePolicyOutput", name: "UpdatePolicyOutput")
    UpdatePolicyStoreInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UpdatePolicyStoreInput", name: "UpdatePolicyStoreInput")
    UpdatePolicyStoreOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UpdatePolicyStoreOutput", name: "UpdatePolicyStoreOutput")
    UpdatePolicyTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UpdatePolicyTemplateInput", name: "UpdatePolicyTemplateInput")
    UpdatePolicyTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UpdatePolicyTemplateOutput", name: "UpdatePolicyTemplateOutput")
    UpdateStaticPolicyDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#UpdateStaticPolicyDefinition", name: "UpdateStaticPolicyDefinition")
    UserPoolArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.verifiedpermissions#UserPoolArn", name: "UserPoolArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:[a-zA-Z0-9-]+:cognito-idp:(([a-zA-Z0-9-]+:\\d{12}:userpool/[\\w-]+_[0-9a-zA-Z]+))$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.verifiedpermissions#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.verifiedpermissions#ValidationMode", name: "ValidationMode")
    ValidationSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.verifiedpermissions#ValidationSettings", name: "ValidationSettings")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActionIdentifier.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionType, name: "actionType", traits: {"smithy.api#required" => {}}))
    ActionIdentifier.add_member(:action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionId, name: "actionId", traits: {"smithy.api#required" => {}}))
    ActionIdentifier.type = Types::ActionIdentifier
    ActionIdentifierList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ActionIdentifier, name: "member")
    AttributeValue.add_member(:boolean, Types::AttributeValue::Boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanAttribute, name: "boolean"))
    AttributeValue.add_member(:entity_identifier, Types::AttributeValue::EntityIdentifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "entityIdentifier"))
    AttributeValue.add_member(:long, Types::AttributeValue::Long, ::Smithy::Schema::Shapes::MemberShape.new(target: LongAttribute, name: "long"))
    AttributeValue.add_member(:string, Types::AttributeValue::String, ::Smithy::Schema::Shapes::MemberShape.new(target: StringAttribute, name: "string"))
    AttributeValue.add_member(:set, Types::AttributeValue::Set, ::Smithy::Schema::Shapes::MemberShape.new(target: SetAttribute, name: "set"))
    AttributeValue.add_member(:record, Types::AttributeValue::Record, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordAttribute, name: "record"))
    AttributeValue.add_member(:ipaddr, Types::AttributeValue::Ipaddr, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddr, name: "ipaddr"))
    AttributeValue.add_member(:decimal, Types::AttributeValue::Decimal, ::Smithy::Schema::Shapes::MemberShape.new(target: Decimal, name: "decimal"))
    AttributeValue.add_member(:datetime, Types::AttributeValue::Datetime, ::Smithy::Schema::Shapes::MemberShape.new(target: DatetimeAttribute, name: "datetime"))
    AttributeValue.add_member(:duration, Types::AttributeValue::Duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "duration"))
    AttributeValue.add_member(:unknown, Types::AttributeValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AttributeValue.type = Types::AttributeValue
    Audiences.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Audience, name: "member")
    BatchGetPolicyErrorCode.add_member(:policy_store_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_STORE_NOT_FOUND", traits: {"smithy.api#enumValue" => "POLICY_STORE_NOT_FOUND"}))
    BatchGetPolicyErrorCode.add_member(:policy_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_NOT_FOUND", traits: {"smithy.api#enumValue" => "POLICY_NOT_FOUND"}))
    BatchGetPolicyErrorItem.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetPolicyErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    BatchGetPolicyErrorItem.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    BatchGetPolicyErrorItem.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policyId", traits: {"smithy.api#required" => {}}))
    BatchGetPolicyErrorItem.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    BatchGetPolicyErrorItem.type = Types::BatchGetPolicyErrorItem
    BatchGetPolicyErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetPolicyErrorItem, name: "member")
    BatchGetPolicyInput.add_member(:requests, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetPolicyInputList, name: "requests", traits: {"smithy.api#required" => {}}))
    BatchGetPolicyInput.type = Types::BatchGetPolicyInput
    BatchGetPolicyInputItem.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    BatchGetPolicyInputItem.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "policyId", traits: {"smithy.api#required" => {}}))
    BatchGetPolicyInputItem.type = Types::BatchGetPolicyInputItem
    BatchGetPolicyInputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetPolicyInputItem, name: "member")
    BatchGetPolicyOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetPolicyOutputList, name: "results", traits: {"smithy.api#required" => {}}))
    BatchGetPolicyOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetPolicyErrorList, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchGetPolicyOutput.type = Types::BatchGetPolicyOutput
    BatchGetPolicyOutputItem.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    BatchGetPolicyOutputItem.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "policyId", traits: {"smithy.api#required" => {}}))
    BatchGetPolicyOutputItem.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "policyType", traits: {"smithy.api#required" => {}}))
    BatchGetPolicyOutputItem.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDefinitionDetail, name: "definition", traits: {"smithy.api#required" => {}}))
    BatchGetPolicyOutputItem.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"smithy.api#required" => {}}))
    BatchGetPolicyOutputItem.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"smithy.api#required" => {}}))
    BatchGetPolicyOutputItem.type = Types::BatchGetPolicyOutputItem
    BatchGetPolicyOutputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetPolicyOutputItem, name: "member")
    BatchIsAuthorizedInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    BatchIsAuthorizedInput.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitiesDefinition, name: "entities"))
    BatchIsAuthorizedInput.add_member(:requests, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchIsAuthorizedInputList, name: "requests", traits: {"smithy.api#required" => {}}))
    BatchIsAuthorizedInput.type = Types::BatchIsAuthorizedInput
    BatchIsAuthorizedInputItem.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "principal"))
    BatchIsAuthorizedInputItem.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionIdentifier, name: "action"))
    BatchIsAuthorizedInputItem.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "resource"))
    BatchIsAuthorizedInputItem.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextDefinition, name: "context"))
    BatchIsAuthorizedInputItem.type = Types::BatchIsAuthorizedInputItem
    BatchIsAuthorizedInputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchIsAuthorizedInputItem, name: "member")
    BatchIsAuthorizedOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchIsAuthorizedOutputList, name: "results", traits: {"smithy.api#required" => {}}))
    BatchIsAuthorizedOutput.type = Types::BatchIsAuthorizedOutput
    BatchIsAuthorizedOutputItem.add_member(:request, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchIsAuthorizedInputItem, name: "request", traits: {"smithy.api#required" => {}}))
    BatchIsAuthorizedOutputItem.add_member(:decision, ::Smithy::Schema::Shapes::MemberShape.new(target: Decision, name: "decision", traits: {"smithy.api#required" => {}}))
    BatchIsAuthorizedOutputItem.add_member(:determining_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: DeterminingPolicyList, name: "determiningPolicies", traits: {"smithy.api#required" => {}}))
    BatchIsAuthorizedOutputItem.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationErrorList, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchIsAuthorizedOutputItem.type = Types::BatchIsAuthorizedOutputItem
    BatchIsAuthorizedOutputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchIsAuthorizedOutputItem, name: "member")
    BatchIsAuthorizedWithTokenInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    BatchIsAuthorizedWithTokenInput.add_member(:identity_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "identityToken"))
    BatchIsAuthorizedWithTokenInput.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "accessToken"))
    BatchIsAuthorizedWithTokenInput.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitiesDefinition, name: "entities"))
    BatchIsAuthorizedWithTokenInput.add_member(:requests, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchIsAuthorizedWithTokenInputList, name: "requests", traits: {"smithy.api#required" => {}}))
    BatchIsAuthorizedWithTokenInput.type = Types::BatchIsAuthorizedWithTokenInput
    BatchIsAuthorizedWithTokenInputItem.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionIdentifier, name: "action"))
    BatchIsAuthorizedWithTokenInputItem.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "resource"))
    BatchIsAuthorizedWithTokenInputItem.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextDefinition, name: "context"))
    BatchIsAuthorizedWithTokenInputItem.type = Types::BatchIsAuthorizedWithTokenInputItem
    BatchIsAuthorizedWithTokenInputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchIsAuthorizedWithTokenInputItem, name: "member")
    BatchIsAuthorizedWithTokenOutput.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "principal"))
    BatchIsAuthorizedWithTokenOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchIsAuthorizedWithTokenOutputList, name: "results", traits: {"smithy.api#required" => {}}))
    BatchIsAuthorizedWithTokenOutput.type = Types::BatchIsAuthorizedWithTokenOutput
    BatchIsAuthorizedWithTokenOutputItem.add_member(:request, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchIsAuthorizedWithTokenInputItem, name: "request", traits: {"smithy.api#required" => {}}))
    BatchIsAuthorizedWithTokenOutputItem.add_member(:decision, ::Smithy::Schema::Shapes::MemberShape.new(target: Decision, name: "decision", traits: {"smithy.api#required" => {}}))
    BatchIsAuthorizedWithTokenOutputItem.add_member(:determining_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: DeterminingPolicyList, name: "determiningPolicies", traits: {"smithy.api#required" => {}}))
    BatchIsAuthorizedWithTokenOutputItem.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationErrorList, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchIsAuthorizedWithTokenOutputItem.type = Types::BatchIsAuthorizedWithTokenOutputItem
    BatchIsAuthorizedWithTokenOutputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BatchIsAuthorizedWithTokenOutputItem, name: "member")
    CedarVersion.add_member(:cedar_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CEDAR_2", traits: {"smithy.api#enumValue" => "CEDAR_2"}))
    CedarVersion.add_member(:cedar_4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CEDAR_4", traits: {"smithy.api#enumValue" => "CEDAR_4"}))
    ClientIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "member")
    CognitoGroupConfiguration.add_member(:group_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupEntityType, name: "groupEntityType", traits: {"smithy.api#required" => {}}))
    CognitoGroupConfiguration.type = Types::CognitoGroupConfiguration
    CognitoGroupConfigurationDetail.add_member(:group_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupEntityType, name: "groupEntityType"))
    CognitoGroupConfigurationDetail.type = Types::CognitoGroupConfigurationDetail
    CognitoGroupConfigurationItem.add_member(:group_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupEntityType, name: "groupEntityType"))
    CognitoGroupConfigurationItem.type = Types::CognitoGroupConfigurationItem
    CognitoUserPoolConfiguration.add_member(:user_pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolArn, name: "userPoolArn", traits: {"smithy.api#required" => {}}))
    CognitoUserPoolConfiguration.add_member(:client_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIds, name: "clientIds"))
    CognitoUserPoolConfiguration.add_member(:group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CognitoGroupConfiguration, name: "groupConfiguration"))
    CognitoUserPoolConfiguration.type = Types::CognitoUserPoolConfiguration
    CognitoUserPoolConfigurationDetail.add_member(:user_pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolArn, name: "userPoolArn", traits: {"smithy.api#required" => {}}))
    CognitoUserPoolConfigurationDetail.add_member(:client_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIds, name: "clientIds", traits: {"smithy.api#required" => {}}))
    CognitoUserPoolConfigurationDetail.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: Issuer, name: "issuer", traits: {"smithy.api#required" => {}}))
    CognitoUserPoolConfigurationDetail.add_member(:group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CognitoGroupConfigurationDetail, name: "groupConfiguration"))
    CognitoUserPoolConfigurationDetail.type = Types::CognitoUserPoolConfigurationDetail
    CognitoUserPoolConfigurationItem.add_member(:user_pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolArn, name: "userPoolArn", traits: {"smithy.api#required" => {}}))
    CognitoUserPoolConfigurationItem.add_member(:client_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIds, name: "clientIds", traits: {"smithy.api#required" => {}}))
    CognitoUserPoolConfigurationItem.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: Issuer, name: "issuer", traits: {"smithy.api#required" => {}}))
    CognitoUserPoolConfigurationItem.add_member(:group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CognitoGroupConfigurationItem, name: "groupConfiguration"))
    CognitoUserPoolConfigurationItem.type = Types::CognitoUserPoolConfigurationItem
    Configuration.add_member(:cognito_user_pool_configuration, Types::Configuration::CognitoUserPoolConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: CognitoUserPoolConfiguration, name: "cognitoUserPoolConfiguration"))
    Configuration.add_member(:open_id_connect_configuration, Types::Configuration::OpenIdConnectConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdConnectConfiguration, name: "openIdConnectConfiguration"))
    Configuration.add_member(:unknown, Types::Configuration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Configuration.type = Types::Configuration
    ConfigurationDetail.add_member(:cognito_user_pool_configuration, Types::ConfigurationDetail::CognitoUserPoolConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: CognitoUserPoolConfigurationDetail, name: "cognitoUserPoolConfiguration"))
    ConfigurationDetail.add_member(:open_id_connect_configuration, Types::ConfigurationDetail::OpenIdConnectConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdConnectConfigurationDetail, name: "openIdConnectConfiguration"))
    ConfigurationDetail.add_member(:unknown, Types::ConfigurationDetail::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConfigurationDetail.type = Types::ConfigurationDetail
    ConfigurationItem.add_member(:cognito_user_pool_configuration, Types::ConfigurationItem::CognitoUserPoolConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: CognitoUserPoolConfigurationItem, name: "cognitoUserPoolConfiguration"))
    ConfigurationItem.add_member(:open_id_connect_configuration, Types::ConfigurationItem::OpenIdConnectConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdConnectConfigurationItem, name: "openIdConnectConfiguration"))
    ConfigurationItem.add_member(:unknown, Types::ConfigurationItem::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ConfigurationItem.type = Types::ConfigurationItem
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConflictList, name: "resources", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ContextDefinition.add_member(:context_map, Types::ContextDefinition::ContextMap, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextMap, name: "contextMap"))
    ContextDefinition.add_member(:cedar_json, Types::ContextDefinition::CedarJson, ::Smithy::Schema::Shapes::MemberShape.new(target: CedarJson, name: "cedarJson"))
    ContextDefinition.add_member(:unknown, Types::ContextDefinition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ContextDefinition.type = Types::ContextDefinition
    ContextMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    ContextMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value")
    CreateIdentitySourceInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateIdentitySourceInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    CreateIdentitySourceInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "configuration", traits: {"smithy.api#required" => {}}))
    CreateIdentitySourceInput.add_member(:principal_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalEntityType, name: "principalEntityType"))
    CreateIdentitySourceInput.type = Types::CreateIdentitySourceInput
    CreateIdentitySourceOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"smithy.api#required" => {}}))
    CreateIdentitySourceOutput.add_member(:identity_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceId, name: "identitySourceId", traits: {"smithy.api#required" => {}}))
    CreateIdentitySourceOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"smithy.api#required" => {}}))
    CreateIdentitySourceOutput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    CreateIdentitySourceOutput.type = Types::CreateIdentitySourceOutput
    CreatePolicyInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePolicyInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    CreatePolicyInput.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDefinition, name: "definition", traits: {"smithy.api#required" => {}}))
    CreatePolicyInput.type = Types::CreatePolicyInput
    CreatePolicyOutput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    CreatePolicyOutput.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "policyId", traits: {"smithy.api#required" => {}}))
    CreatePolicyOutput.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "policyType", traits: {"smithy.api#required" => {}}))
    CreatePolicyOutput.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "principal"))
    CreatePolicyOutput.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "resource"))
    CreatePolicyOutput.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionIdentifierList, name: "actions"))
    CreatePolicyOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"smithy.api#required" => {}}))
    CreatePolicyOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"smithy.api#required" => {}}))
    CreatePolicyOutput.add_member(:effect, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyEffect, name: "effect"))
    CreatePolicyOutput.type = Types::CreatePolicyOutput
    CreatePolicyStoreInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePolicyStoreInput.add_member(:validation_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationSettings, name: "validationSettings", traits: {"smithy.api#required" => {}}))
    CreatePolicyStoreInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreDescription, name: "description"))
    CreatePolicyStoreInput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "deletionProtection"))
    CreatePolicyStoreInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreatePolicyStoreInput.type = Types::CreatePolicyStoreInput
    CreatePolicyStoreOutput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    CreatePolicyStoreOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreatePolicyStoreOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"smithy.api#required" => {}}))
    CreatePolicyStoreOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"smithy.api#required" => {}}))
    CreatePolicyStoreOutput.type = Types::CreatePolicyStoreOutput
    CreatePolicyTemplateInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePolicyTemplateInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    CreatePolicyTemplateInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateDescription, name: "description"))
    CreatePolicyTemplateInput.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatement, name: "statement", traits: {"smithy.api#required" => {}}))
    CreatePolicyTemplateInput.type = Types::CreatePolicyTemplateInput
    CreatePolicyTemplateOutput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    CreatePolicyTemplateOutput.add_member(:policy_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateId, name: "policyTemplateId", traits: {"smithy.api#required" => {}}))
    CreatePolicyTemplateOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"smithy.api#required" => {}}))
    CreatePolicyTemplateOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"smithy.api#required" => {}}))
    CreatePolicyTemplateOutput.type = Types::CreatePolicyTemplateOutput
    Decision.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    Decision.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    DeleteIdentitySourceInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    DeleteIdentitySourceInput.add_member(:identity_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceId, name: "identitySourceId", traits: {"smithy.api#required" => {}}))
    DeleteIdentitySourceInput.type = Types::DeleteIdentitySourceInput
    DeleteIdentitySourceOutput.type = Types::DeleteIdentitySourceOutput
    DeletePolicyInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    DeletePolicyInput.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "policyId", traits: {"smithy.api#required" => {}}))
    DeletePolicyInput.type = Types::DeletePolicyInput
    DeletePolicyOutput.type = Types::DeletePolicyOutput
    DeletePolicyStoreInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    DeletePolicyStoreInput.type = Types::DeletePolicyStoreInput
    DeletePolicyStoreOutput.type = Types::DeletePolicyStoreOutput
    DeletePolicyTemplateInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    DeletePolicyTemplateInput.add_member(:policy_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateId, name: "policyTemplateId", traits: {"smithy.api#required" => {}}))
    DeletePolicyTemplateInput.type = Types::DeletePolicyTemplateInput
    DeletePolicyTemplateOutput.type = Types::DeletePolicyTemplateOutput
    DeletionProtection.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DeletionProtection.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DeterminingPolicyItem.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "policyId", traits: {"smithy.api#required" => {}}))
    DeterminingPolicyItem.type = Types::DeterminingPolicyItem
    DeterminingPolicyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeterminingPolicyItem, name: "member")
    EntitiesDefinition.add_member(:entity_list, Types::EntitiesDefinition::EntityList, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityList, name: "entityList"))
    EntitiesDefinition.add_member(:cedar_json, Types::EntitiesDefinition::CedarJson, ::Smithy::Schema::Shapes::MemberShape.new(target: CedarJson, name: "cedarJson"))
    EntitiesDefinition.add_member(:unknown, Types::EntitiesDefinition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EntitiesDefinition.type = Types::EntitiesDefinition
    EntityAttributes.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    EntityAttributes.value = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value")
    EntityIdentifier.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "entityType", traits: {"smithy.api#required" => {}}))
    EntityIdentifier.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId", traits: {"smithy.api#required" => {}}))
    EntityIdentifier.type = Types::EntityIdentifier
    EntityItem.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "identifier", traits: {"smithy.api#required" => {}}))
    EntityItem.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityAttributes, name: "attributes"))
    EntityItem.add_member(:parents, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentList, name: "parents"))
    EntityItem.type = Types::EntityItem
    EntityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityItem, name: "member")
    EntityReference.add_member(:unspecified, Types::EntityReference::Unspecified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "unspecified"))
    EntityReference.add_member(:identifier, Types::EntityReference::Identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "identifier"))
    EntityReference.add_member(:unknown, Types::EntityReference::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EntityReference.type = Types::EntityReference
    EvaluationErrorItem.add_member(:error_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorDescription", traits: {"smithy.api#required" => {}}))
    EvaluationErrorItem.type = Types::EvaluationErrorItem
    EvaluationErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationErrorItem, name: "member")
    GetIdentitySourceInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    GetIdentitySourceInput.add_member(:identity_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceId, name: "identitySourceId", traits: {"smithy.api#required" => {}}))
    GetIdentitySourceInput.type = Types::GetIdentitySourceInput
    GetIdentitySourceOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    GetIdentitySourceOutput.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceDetails, name: "details", traits: {"smithy.api#deprecated" => {"message" => "This attribute has been replaced by configuration.cognitoUserPoolConfiguration"}}))
    GetIdentitySourceOutput.add_member(:identity_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceId, name: "identitySourceId", traits: {"smithy.api#required" => {}}))
    GetIdentitySourceOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    GetIdentitySourceOutput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    GetIdentitySourceOutput.add_member(:principal_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalEntityType, name: "principalEntityType", traits: {"smithy.api#required" => {}}))
    GetIdentitySourceOutput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationDetail, name: "configuration", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetIdentitySourceOutput.type = Types::GetIdentitySourceOutput
    GetPolicyInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    GetPolicyInput.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "policyId", traits: {"smithy.api#required" => {}}))
    GetPolicyInput.type = Types::GetPolicyInput
    GetPolicyOutput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "policyId", traits: {"smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "policyType", traits: {"smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "principal", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetPolicyOutput.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "resource", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetPolicyOutput.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionIdentifierList, name: "actions", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetPolicyOutput.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDefinitionDetail, name: "definition", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:effect, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyEffect, name: "effect", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetPolicyOutput.type = Types::GetPolicyOutput
    GetPolicyStoreInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    GetPolicyStoreInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "tags", traits: {"smithy.api#default" => false}))
    GetPolicyStoreInput.type = Types::GetPolicyStoreInput
    GetPolicyStoreOutput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    GetPolicyStoreOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetPolicyStoreOutput.add_member(:validation_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationSettings, name: "validationSettings", traits: {"smithy.api#required" => {}}))
    GetPolicyStoreOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    GetPolicyStoreOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    GetPolicyStoreOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreDescription, name: "description"))
    GetPolicyStoreOutput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "deletionProtection"))
    GetPolicyStoreOutput.add_member(:cedar_version, ::Smithy::Schema::Shapes::MemberShape.new(target: CedarVersion, name: "cedarVersion"))
    GetPolicyStoreOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    GetPolicyStoreOutput.type = Types::GetPolicyStoreOutput
    GetPolicyTemplateInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    GetPolicyTemplateInput.add_member(:policy_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateId, name: "policyTemplateId", traits: {"smithy.api#required" => {}}))
    GetPolicyTemplateInput.type = Types::GetPolicyTemplateInput
    GetPolicyTemplateOutput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    GetPolicyTemplateOutput.add_member(:policy_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateId, name: "policyTemplateId", traits: {"smithy.api#required" => {}}))
    GetPolicyTemplateOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateDescription, name: "description"))
    GetPolicyTemplateOutput.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatement, name: "statement", traits: {"smithy.api#required" => {}}))
    GetPolicyTemplateOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    GetPolicyTemplateOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    GetPolicyTemplateOutput.type = Types::GetPolicyTemplateOutput
    GetSchemaInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    GetSchemaInput.type = Types::GetSchemaInput
    GetSchemaOutput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    GetSchemaOutput.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaJson, name: "schema", traits: {"smithy.api#required" => {}}))
    GetSchemaOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"smithy.api#required" => {}}))
    GetSchemaOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"smithy.api#required" => {}}))
    GetSchemaOutput.add_member(:namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceList, name: "namespaces"))
    GetSchemaOutput.type = Types::GetSchemaOutput
    IdentitySourceDetails.add_member(:client_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIds, name: "clientIds", traits: {"smithy.api#deprecated" => {"message" => "This attribute has been replaced by configuration.cognitoUserPoolConfiguration.clientIds"}}))
    IdentitySourceDetails.add_member(:user_pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolArn, name: "userPoolArn", traits: {"smithy.api#deprecated" => {"message" => "This attribute has been replaced by configuration.cognitoUserPoolConfiguration.userPoolArn"}}))
    IdentitySourceDetails.add_member(:discovery_url, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryUrl, name: "discoveryUrl", traits: {"smithy.api#deprecated" => {"message" => "This attribute has been replaced by configuration.cognitoUserPoolConfiguration.issuer"}}))
    IdentitySourceDetails.add_member(:open_id_issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdIssuer, name: "openIdIssuer", traits: {"smithy.api#deprecated" => {"message" => "This attribute has been replaced by configuration"}}))
    IdentitySourceDetails.type = Types::IdentitySourceDetails
    IdentitySourceFilter.add_member(:principal_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalEntityType, name: "principalEntityType"))
    IdentitySourceFilter.type = Types::IdentitySourceFilter
    IdentitySourceFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceFilter, name: "member")
    IdentitySourceItem.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"smithy.api#required" => {}}))
    IdentitySourceItem.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceItemDetails, name: "details", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#deprecated" => {"message" => "This attribute has been replaced by configuration.cognitoUserPoolConfiguration"}}))
    IdentitySourceItem.add_member(:identity_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceId, name: "identitySourceId", traits: {"smithy.api#required" => {}}))
    IdentitySourceItem.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"smithy.api#required" => {}}))
    IdentitySourceItem.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    IdentitySourceItem.add_member(:principal_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalEntityType, name: "principalEntityType", traits: {"smithy.api#required" => {}}))
    IdentitySourceItem.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationItem, name: "configuration"))
    IdentitySourceItem.type = Types::IdentitySourceItem
    IdentitySourceItemDetails.add_member(:client_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIds, name: "clientIds", traits: {"smithy.api#deprecated" => {"message" => "This attribute has been replaced by configuration.cognitoUserPoolConfiguration.clientIds"}}))
    IdentitySourceItemDetails.add_member(:user_pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolArn, name: "userPoolArn", traits: {"smithy.api#deprecated" => {"message" => "This attribute has been replaced by configuration.cognitoUserPoolConfiguration.userPoolArn"}}))
    IdentitySourceItemDetails.add_member(:discovery_url, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveryUrl, name: "discoveryUrl", traits: {"smithy.api#deprecated" => {"message" => "This attribute has been replaced by configuration.cognitoUserPoolConfiguration.issuer"}}))
    IdentitySourceItemDetails.add_member(:open_id_issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdIssuer, name: "openIdIssuer", traits: {"smithy.api#deprecated" => {"message" => "This attribute has been replaced by configuration"}}))
    IdentitySourceItemDetails.type = Types::IdentitySourceItemDetails
    IdentitySources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceItem, name: "member")
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    InvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InvalidStateException.type = Types::InvalidStateException
    IsAuthorizedInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    IsAuthorizedInput.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "principal"))
    IsAuthorizedInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionIdentifier, name: "action"))
    IsAuthorizedInput.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "resource"))
    IsAuthorizedInput.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextDefinition, name: "context"))
    IsAuthorizedInput.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitiesDefinition, name: "entities"))
    IsAuthorizedInput.type = Types::IsAuthorizedInput
    IsAuthorizedOutput.add_member(:decision, ::Smithy::Schema::Shapes::MemberShape.new(target: Decision, name: "decision", traits: {"smithy.api#required" => {}}))
    IsAuthorizedOutput.add_member(:determining_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: DeterminingPolicyList, name: "determiningPolicies", traits: {"smithy.api#required" => {}}))
    IsAuthorizedOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationErrorList, name: "errors", traits: {"smithy.api#required" => {}}))
    IsAuthorizedOutput.type = Types::IsAuthorizedOutput
    IsAuthorizedWithTokenInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    IsAuthorizedWithTokenInput.add_member(:identity_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "identityToken"))
    IsAuthorizedWithTokenInput.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "accessToken"))
    IsAuthorizedWithTokenInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionIdentifier, name: "action"))
    IsAuthorizedWithTokenInput.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "resource"))
    IsAuthorizedWithTokenInput.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextDefinition, name: "context"))
    IsAuthorizedWithTokenInput.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitiesDefinition, name: "entities"))
    IsAuthorizedWithTokenInput.type = Types::IsAuthorizedWithTokenInput
    IsAuthorizedWithTokenOutput.add_member(:decision, ::Smithy::Schema::Shapes::MemberShape.new(target: Decision, name: "decision", traits: {"smithy.api#required" => {}}))
    IsAuthorizedWithTokenOutput.add_member(:determining_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: DeterminingPolicyList, name: "determiningPolicies", traits: {"smithy.api#required" => {}}))
    IsAuthorizedWithTokenOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationErrorList, name: "errors", traits: {"smithy.api#required" => {}}))
    IsAuthorizedWithTokenOutput.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "principal"))
    IsAuthorizedWithTokenOutput.type = Types::IsAuthorizedWithTokenOutput
    ListIdentitySourcesInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    ListIdentitySourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListIdentitySourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListIdentitySourcesMaxResults, name: "maxResults"))
    ListIdentitySourcesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceFilters, name: "filters"))
    ListIdentitySourcesInput.type = Types::ListIdentitySourcesInput
    ListIdentitySourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListIdentitySourcesOutput.add_member(:identity_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySources, name: "identitySources", traits: {"smithy.api#required" => {}}))
    ListIdentitySourcesOutput.type = Types::ListIdentitySourcesOutput
    ListPoliciesInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    ListPoliciesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPoliciesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListPoliciesInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyFilter, name: "filter"))
    ListPoliciesInput.type = Types::ListPoliciesInput
    ListPoliciesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPoliciesOutput.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyList, name: "policies", traits: {"smithy.api#required" => {}}))
    ListPoliciesOutput.type = Types::ListPoliciesOutput
    ListPolicyStoresInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPolicyStoresInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListPolicyStoresInput.type = Types::ListPolicyStoresInput
    ListPolicyStoresOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPolicyStoresOutput.add_member(:policy_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreList, name: "policyStores", traits: {"smithy.api#required" => {}}))
    ListPolicyStoresOutput.type = Types::ListPolicyStoresOutput
    ListPolicyTemplatesInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    ListPolicyTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPolicyTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListPolicyTemplatesInput.type = Types::ListPolicyTemplatesInput
    ListPolicyTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPolicyTemplatesOutput.add_member(:policy_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplatesList, name: "policyTemplates", traits: {"smithy.api#required" => {}}))
    ListPolicyTemplatesOutput.type = Types::ListPolicyTemplatesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    NamespaceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "member")
    OpenIdConnectAccessTokenConfiguration.add_member(:principal_id_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: Claim, name: "principalIdClaim", traits: {"smithy.api#default" => "sub"}))
    OpenIdConnectAccessTokenConfiguration.add_member(:audiences, ::Smithy::Schema::Shapes::MemberShape.new(target: Audiences, name: "audiences"))
    OpenIdConnectAccessTokenConfiguration.type = Types::OpenIdConnectAccessTokenConfiguration
    OpenIdConnectAccessTokenConfigurationDetail.add_member(:principal_id_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: Claim, name: "principalIdClaim", traits: {"smithy.api#default" => "sub"}))
    OpenIdConnectAccessTokenConfigurationDetail.add_member(:audiences, ::Smithy::Schema::Shapes::MemberShape.new(target: Audiences, name: "audiences"))
    OpenIdConnectAccessTokenConfigurationDetail.type = Types::OpenIdConnectAccessTokenConfigurationDetail
    OpenIdConnectAccessTokenConfigurationItem.add_member(:principal_id_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: Claim, name: "principalIdClaim", traits: {"smithy.api#default" => "sub"}))
    OpenIdConnectAccessTokenConfigurationItem.add_member(:audiences, ::Smithy::Schema::Shapes::MemberShape.new(target: Audiences, name: "audiences"))
    OpenIdConnectAccessTokenConfigurationItem.type = Types::OpenIdConnectAccessTokenConfigurationItem
    OpenIdConnectConfiguration.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: Issuer, name: "issuer", traits: {"smithy.api#required" => {}}))
    OpenIdConnectConfiguration.add_member(:entity_id_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdPrefix, name: "entityIdPrefix"))
    OpenIdConnectConfiguration.add_member(:group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdConnectGroupConfiguration, name: "groupConfiguration"))
    OpenIdConnectConfiguration.add_member(:token_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdConnectTokenSelection, name: "tokenSelection", traits: {"smithy.api#required" => {}}))
    OpenIdConnectConfiguration.type = Types::OpenIdConnectConfiguration
    OpenIdConnectConfigurationDetail.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: Issuer, name: "issuer", traits: {"smithy.api#required" => {}}))
    OpenIdConnectConfigurationDetail.add_member(:entity_id_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdPrefix, name: "entityIdPrefix"))
    OpenIdConnectConfigurationDetail.add_member(:group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdConnectGroupConfigurationDetail, name: "groupConfiguration"))
    OpenIdConnectConfigurationDetail.add_member(:token_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdConnectTokenSelectionDetail, name: "tokenSelection", traits: {"smithy.api#required" => {}}))
    OpenIdConnectConfigurationDetail.type = Types::OpenIdConnectConfigurationDetail
    OpenIdConnectConfigurationItem.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: Issuer, name: "issuer", traits: {"smithy.api#required" => {}}))
    OpenIdConnectConfigurationItem.add_member(:entity_id_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdPrefix, name: "entityIdPrefix"))
    OpenIdConnectConfigurationItem.add_member(:group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdConnectGroupConfigurationItem, name: "groupConfiguration"))
    OpenIdConnectConfigurationItem.add_member(:token_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdConnectTokenSelectionItem, name: "tokenSelection", traits: {"smithy.api#required" => {}}))
    OpenIdConnectConfigurationItem.type = Types::OpenIdConnectConfigurationItem
    OpenIdConnectGroupConfiguration.add_member(:group_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: Claim, name: "groupClaim", traits: {"smithy.api#required" => {}}))
    OpenIdConnectGroupConfiguration.add_member(:group_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupEntityType, name: "groupEntityType", traits: {"smithy.api#required" => {}}))
    OpenIdConnectGroupConfiguration.type = Types::OpenIdConnectGroupConfiguration
    OpenIdConnectGroupConfigurationDetail.add_member(:group_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: Claim, name: "groupClaim", traits: {"smithy.api#required" => {}}))
    OpenIdConnectGroupConfigurationDetail.add_member(:group_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupEntityType, name: "groupEntityType", traits: {"smithy.api#required" => {}}))
    OpenIdConnectGroupConfigurationDetail.type = Types::OpenIdConnectGroupConfigurationDetail
    OpenIdConnectGroupConfigurationItem.add_member(:group_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: Claim, name: "groupClaim", traits: {"smithy.api#required" => {}}))
    OpenIdConnectGroupConfigurationItem.add_member(:group_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupEntityType, name: "groupEntityType", traits: {"smithy.api#required" => {}}))
    OpenIdConnectGroupConfigurationItem.type = Types::OpenIdConnectGroupConfigurationItem
    OpenIdConnectIdentityTokenConfiguration.add_member(:principal_id_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: Claim, name: "principalIdClaim", traits: {"smithy.api#default" => "sub"}))
    OpenIdConnectIdentityTokenConfiguration.add_member(:client_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIds, name: "clientIds"))
    OpenIdConnectIdentityTokenConfiguration.type = Types::OpenIdConnectIdentityTokenConfiguration
    OpenIdConnectIdentityTokenConfigurationDetail.add_member(:principal_id_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: Claim, name: "principalIdClaim", traits: {"smithy.api#default" => "sub"}))
    OpenIdConnectIdentityTokenConfigurationDetail.add_member(:client_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIds, name: "clientIds"))
    OpenIdConnectIdentityTokenConfigurationDetail.type = Types::OpenIdConnectIdentityTokenConfigurationDetail
    OpenIdConnectIdentityTokenConfigurationItem.add_member(:principal_id_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: Claim, name: "principalIdClaim", traits: {"smithy.api#default" => "sub"}))
    OpenIdConnectIdentityTokenConfigurationItem.add_member(:client_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIds, name: "clientIds"))
    OpenIdConnectIdentityTokenConfigurationItem.type = Types::OpenIdConnectIdentityTokenConfigurationItem
    OpenIdConnectTokenSelection.add_member(:access_token_only, Types::OpenIdConnectTokenSelection::AccessTokenOnly, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdConnectAccessTokenConfiguration, name: "accessTokenOnly"))
    OpenIdConnectTokenSelection.add_member(:identity_token_only, Types::OpenIdConnectTokenSelection::IdentityTokenOnly, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdConnectIdentityTokenConfiguration, name: "identityTokenOnly"))
    OpenIdConnectTokenSelection.add_member(:unknown, Types::OpenIdConnectTokenSelection::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OpenIdConnectTokenSelection.type = Types::OpenIdConnectTokenSelection
    OpenIdConnectTokenSelectionDetail.add_member(:access_token_only, Types::OpenIdConnectTokenSelectionDetail::AccessTokenOnly, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdConnectAccessTokenConfigurationDetail, name: "accessTokenOnly"))
    OpenIdConnectTokenSelectionDetail.add_member(:identity_token_only, Types::OpenIdConnectTokenSelectionDetail::IdentityTokenOnly, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdConnectIdentityTokenConfigurationDetail, name: "identityTokenOnly"))
    OpenIdConnectTokenSelectionDetail.add_member(:unknown, Types::OpenIdConnectTokenSelectionDetail::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OpenIdConnectTokenSelectionDetail.type = Types::OpenIdConnectTokenSelectionDetail
    OpenIdConnectTokenSelectionItem.add_member(:access_token_only, Types::OpenIdConnectTokenSelectionItem::AccessTokenOnly, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdConnectAccessTokenConfigurationItem, name: "accessTokenOnly"))
    OpenIdConnectTokenSelectionItem.add_member(:identity_token_only, Types::OpenIdConnectTokenSelectionItem::IdentityTokenOnly, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenIdConnectIdentityTokenConfigurationItem, name: "identityTokenOnly"))
    OpenIdConnectTokenSelectionItem.add_member(:unknown, Types::OpenIdConnectTokenSelectionItem::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    OpenIdConnectTokenSelectionItem.type = Types::OpenIdConnectTokenSelectionItem
    OpenIdIssuer.add_member(:cognito, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COGNITO", traits: {"smithy.api#enumValue" => "COGNITO"}))
    ParentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "member")
    PolicyDefinition.add_member(:static, Types::PolicyDefinition::Static, ::Smithy::Schema::Shapes::MemberShape.new(target: StaticPolicyDefinition, name: "static"))
    PolicyDefinition.add_member(:template_linked, Types::PolicyDefinition::TemplateLinked, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateLinkedPolicyDefinition, name: "templateLinked"))
    PolicyDefinition.add_member(:unknown, Types::PolicyDefinition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PolicyDefinition.type = Types::PolicyDefinition
    PolicyDefinitionDetail.add_member(:static, Types::PolicyDefinitionDetail::Static, ::Smithy::Schema::Shapes::MemberShape.new(target: StaticPolicyDefinitionDetail, name: "static"))
    PolicyDefinitionDetail.add_member(:template_linked, Types::PolicyDefinitionDetail::TemplateLinked, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateLinkedPolicyDefinitionDetail, name: "templateLinked"))
    PolicyDefinitionDetail.add_member(:unknown, Types::PolicyDefinitionDetail::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PolicyDefinitionDetail.type = Types::PolicyDefinitionDetail
    PolicyDefinitionItem.add_member(:static, Types::PolicyDefinitionItem::Static, ::Smithy::Schema::Shapes::MemberShape.new(target: StaticPolicyDefinitionItem, name: "static"))
    PolicyDefinitionItem.add_member(:template_linked, Types::PolicyDefinitionItem::TemplateLinked, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateLinkedPolicyDefinitionItem, name: "templateLinked"))
    PolicyDefinitionItem.add_member(:unknown, Types::PolicyDefinitionItem::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PolicyDefinitionItem.type = Types::PolicyDefinitionItem
    PolicyEffect.add_member(:permit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERMIT", traits: {"smithy.api#enumValue" => "Permit"}))
    PolicyEffect.add_member(:forbid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORBID", traits: {"smithy.api#enumValue" => "Forbid"}))
    PolicyFilter.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityReference, name: "principal"))
    PolicyFilter.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityReference, name: "resource"))
    PolicyFilter.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "policyType"))
    PolicyFilter.add_member(:policy_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateId, name: "policyTemplateId"))
    PolicyFilter.type = Types::PolicyFilter
    PolicyItem.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    PolicyItem.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "policyId", traits: {"smithy.api#required" => {}}))
    PolicyItem.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "policyType", traits: {"smithy.api#required" => {}}))
    PolicyItem.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "principal"))
    PolicyItem.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "resource"))
    PolicyItem.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionIdentifierList, name: "actions"))
    PolicyItem.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDefinitionItem, name: "definition", traits: {"smithy.api#required" => {}}))
    PolicyItem.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"smithy.api#required" => {}}))
    PolicyItem.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"smithy.api#required" => {}}))
    PolicyItem.add_member(:effect, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyEffect, name: "effect"))
    PolicyItem.type = Types::PolicyItem
    PolicyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyItem, name: "member")
    PolicyStoreItem.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    PolicyStoreItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    PolicyStoreItem.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"smithy.api#required" => {}}))
    PolicyStoreItem.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate"))
    PolicyStoreItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreDescription, name: "description"))
    PolicyStoreItem.type = Types::PolicyStoreItem
    PolicyStoreList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreItem, name: "member")
    PolicyTemplateItem.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    PolicyTemplateItem.add_member(:policy_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateId, name: "policyTemplateId", traits: {"smithy.api#required" => {}}))
    PolicyTemplateItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateDescription, name: "description"))
    PolicyTemplateItem.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"smithy.api#required" => {}}))
    PolicyTemplateItem.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"smithy.api#required" => {}}))
    PolicyTemplateItem.type = Types::PolicyTemplateItem
    PolicyTemplatesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateItem, name: "member")
    PolicyType.add_member(:static, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATIC", traits: {"smithy.api#enumValue" => "STATIC"}))
    PolicyType.add_member(:template_linked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEMPLATE_LINKED", traits: {"smithy.api#enumValue" => "TEMPLATE_LINKED"}))
    PutSchemaInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    PutSchemaInput.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaDefinition, name: "definition", traits: {"smithy.api#required" => {}}))
    PutSchemaInput.type = Types::PutSchemaInput
    PutSchemaOutput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    PutSchemaOutput.add_member(:namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceList, name: "namespaces", traits: {"smithy.api#required" => {}}))
    PutSchemaOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"smithy.api#required" => {}}))
    PutSchemaOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"smithy.api#required" => {}}))
    PutSchemaOutput.type = Types::PutSchemaOutput
    RecordAttribute.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    RecordAttribute.value = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value")
    ResourceConflict.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceConflict.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceConflict.type = Types::ResourceConflict
    ResourceConflictList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConflict, name: "member")
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:identity_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDENTITY_SOURCE", traits: {"smithy.api#enumValue" => "IDENTITY_SOURCE"}))
    ResourceType.add_member(:policy_store, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_STORE", traits: {"smithy.api#enumValue" => "POLICY_STORE"}))
    ResourceType.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY", traits: {"smithy.api#enumValue" => "POLICY"}))
    ResourceType.add_member(:policy_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POLICY_TEMPLATE", traits: {"smithy.api#enumValue" => "POLICY_TEMPLATE"}))
    ResourceType.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEMA", traits: {"smithy.api#enumValue" => "SCHEMA"}))
    SchemaDefinition.add_member(:cedar_json, Types::SchemaDefinition::CedarJson, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaJson, name: "cedarJson"))
    SchemaDefinition.add_member(:unknown, Types::SchemaDefinition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SchemaDefinition.type = Types::SchemaDefinition
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SetAttribute.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "member")
    StaticPolicyDefinition.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StaticPolicyDescription, name: "description"))
    StaticPolicyDefinition.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatement, name: "statement", traits: {"smithy.api#required" => {}}))
    StaticPolicyDefinition.type = Types::StaticPolicyDefinition
    StaticPolicyDefinitionDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StaticPolicyDescription, name: "description"))
    StaticPolicyDefinitionDetail.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatement, name: "statement", traits: {"smithy.api#required" => {}}))
    StaticPolicyDefinitionDetail.type = Types::StaticPolicyDefinitionDetail
    StaticPolicyDefinitionItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StaticPolicyDescription, name: "description"))
    StaticPolicyDefinitionItem.type = Types::StaticPolicyDefinitionItem
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key")
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value")
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TemplateLinkedPolicyDefinition.add_member(:policy_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateId, name: "policyTemplateId", traits: {"smithy.api#required" => {}}))
    TemplateLinkedPolicyDefinition.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "principal"))
    TemplateLinkedPolicyDefinition.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "resource"))
    TemplateLinkedPolicyDefinition.type = Types::TemplateLinkedPolicyDefinition
    TemplateLinkedPolicyDefinitionDetail.add_member(:policy_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateId, name: "policyTemplateId", traits: {"smithy.api#required" => {}}))
    TemplateLinkedPolicyDefinitionDetail.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "principal"))
    TemplateLinkedPolicyDefinitionDetail.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "resource"))
    TemplateLinkedPolicyDefinitionDetail.type = Types::TemplateLinkedPolicyDefinitionDetail
    TemplateLinkedPolicyDefinitionItem.add_member(:policy_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateId, name: "policyTemplateId", traits: {"smithy.api#required" => {}}))
    TemplateLinkedPolicyDefinitionItem.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "principal"))
    TemplateLinkedPolicyDefinitionItem.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "resource"))
    TemplateLinkedPolicyDefinitionItem.type = Types::TemplateLinkedPolicyDefinitionItem
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceName"))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"aws.iam#conditionKeyValue" => "aws:TagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateCognitoGroupConfiguration.add_member(:group_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupEntityType, name: "groupEntityType", traits: {"smithy.api#required" => {}}))
    UpdateCognitoGroupConfiguration.type = Types::UpdateCognitoGroupConfiguration
    UpdateCognitoUserPoolConfiguration.add_member(:user_pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPoolArn, name: "userPoolArn", traits: {"smithy.api#required" => {}}))
    UpdateCognitoUserPoolConfiguration.add_member(:client_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIds, name: "clientIds"))
    UpdateCognitoUserPoolConfiguration.add_member(:group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateCognitoGroupConfiguration, name: "groupConfiguration"))
    UpdateCognitoUserPoolConfiguration.type = Types::UpdateCognitoUserPoolConfiguration
    UpdateConfiguration.add_member(:cognito_user_pool_configuration, Types::UpdateConfiguration::CognitoUserPoolConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateCognitoUserPoolConfiguration, name: "cognitoUserPoolConfiguration"))
    UpdateConfiguration.add_member(:open_id_connect_configuration, Types::UpdateConfiguration::OpenIdConnectConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateOpenIdConnectConfiguration, name: "openIdConnectConfiguration"))
    UpdateConfiguration.add_member(:unknown, Types::UpdateConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    UpdateConfiguration.type = Types::UpdateConfiguration
    UpdateIdentitySourceInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    UpdateIdentitySourceInput.add_member(:identity_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceId, name: "identitySourceId", traits: {"smithy.api#required" => {}}))
    UpdateIdentitySourceInput.add_member(:update_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateConfiguration, name: "updateConfiguration", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    UpdateIdentitySourceInput.add_member(:principal_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalEntityType, name: "principalEntityType"))
    UpdateIdentitySourceInput.type = Types::UpdateIdentitySourceInput
    UpdateIdentitySourceOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"smithy.api#required" => {}}))
    UpdateIdentitySourceOutput.add_member(:identity_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceId, name: "identitySourceId", traits: {"smithy.api#required" => {}}))
    UpdateIdentitySourceOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"smithy.api#required" => {}}))
    UpdateIdentitySourceOutput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    UpdateIdentitySourceOutput.type = Types::UpdateIdentitySourceOutput
    UpdateOpenIdConnectAccessTokenConfiguration.add_member(:principal_id_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: Claim, name: "principalIdClaim", traits: {"smithy.api#default" => "sub"}))
    UpdateOpenIdConnectAccessTokenConfiguration.add_member(:audiences, ::Smithy::Schema::Shapes::MemberShape.new(target: Audiences, name: "audiences"))
    UpdateOpenIdConnectAccessTokenConfiguration.type = Types::UpdateOpenIdConnectAccessTokenConfiguration
    UpdateOpenIdConnectConfiguration.add_member(:issuer, ::Smithy::Schema::Shapes::MemberShape.new(target: Issuer, name: "issuer", traits: {"smithy.api#required" => {}}))
    UpdateOpenIdConnectConfiguration.add_member(:entity_id_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdPrefix, name: "entityIdPrefix"))
    UpdateOpenIdConnectConfiguration.add_member(:group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateOpenIdConnectGroupConfiguration, name: "groupConfiguration"))
    UpdateOpenIdConnectConfiguration.add_member(:token_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateOpenIdConnectTokenSelection, name: "tokenSelection", traits: {"smithy.api#required" => {}}))
    UpdateOpenIdConnectConfiguration.type = Types::UpdateOpenIdConnectConfiguration
    UpdateOpenIdConnectGroupConfiguration.add_member(:group_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: Claim, name: "groupClaim", traits: {"smithy.api#required" => {}}))
    UpdateOpenIdConnectGroupConfiguration.add_member(:group_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupEntityType, name: "groupEntityType", traits: {"smithy.api#required" => {}}))
    UpdateOpenIdConnectGroupConfiguration.type = Types::UpdateOpenIdConnectGroupConfiguration
    UpdateOpenIdConnectIdentityTokenConfiguration.add_member(:principal_id_claim, ::Smithy::Schema::Shapes::MemberShape.new(target: Claim, name: "principalIdClaim", traits: {"smithy.api#default" => "sub"}))
    UpdateOpenIdConnectIdentityTokenConfiguration.add_member(:client_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientIds, name: "clientIds"))
    UpdateOpenIdConnectIdentityTokenConfiguration.type = Types::UpdateOpenIdConnectIdentityTokenConfiguration
    UpdateOpenIdConnectTokenSelection.add_member(:access_token_only, Types::UpdateOpenIdConnectTokenSelection::AccessTokenOnly, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateOpenIdConnectAccessTokenConfiguration, name: "accessTokenOnly"))
    UpdateOpenIdConnectTokenSelection.add_member(:identity_token_only, Types::UpdateOpenIdConnectTokenSelection::IdentityTokenOnly, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateOpenIdConnectIdentityTokenConfiguration, name: "identityTokenOnly"))
    UpdateOpenIdConnectTokenSelection.add_member(:unknown, Types::UpdateOpenIdConnectTokenSelection::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    UpdateOpenIdConnectTokenSelection.type = Types::UpdateOpenIdConnectTokenSelection
    UpdatePolicyDefinition.add_member(:static, Types::UpdatePolicyDefinition::Static, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateStaticPolicyDefinition, name: "static"))
    UpdatePolicyDefinition.add_member(:unknown, Types::UpdatePolicyDefinition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    UpdatePolicyDefinition.type = Types::UpdatePolicyDefinition
    UpdatePolicyInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    UpdatePolicyInput.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "policyId", traits: {"smithy.api#required" => {}}))
    UpdatePolicyInput.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatePolicyDefinition, name: "definition", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    UpdatePolicyInput.type = Types::UpdatePolicyInput
    UpdatePolicyOutput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    UpdatePolicyOutput.add_member(:policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyId, name: "policyId", traits: {"smithy.api#required" => {}}))
    UpdatePolicyOutput.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "policyType", traits: {"smithy.api#required" => {}}))
    UpdatePolicyOutput.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "principal"))
    UpdatePolicyOutput.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdentifier, name: "resource"))
    UpdatePolicyOutput.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionIdentifierList, name: "actions"))
    UpdatePolicyOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"smithy.api#required" => {}}))
    UpdatePolicyOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"smithy.api#required" => {}}))
    UpdatePolicyOutput.add_member(:effect, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyEffect, name: "effect"))
    UpdatePolicyOutput.type = Types::UpdatePolicyOutput
    UpdatePolicyStoreInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    UpdatePolicyStoreInput.add_member(:validation_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationSettings, name: "validationSettings", traits: {"smithy.api#required" => {}}))
    UpdatePolicyStoreInput.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "deletionProtection"))
    UpdatePolicyStoreInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreDescription, name: "description"))
    UpdatePolicyStoreInput.type = Types::UpdatePolicyStoreInput
    UpdatePolicyStoreOutput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    UpdatePolicyStoreOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdatePolicyStoreOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"smithy.api#required" => {}}))
    UpdatePolicyStoreOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"smithy.api#required" => {}}))
    UpdatePolicyStoreOutput.type = Types::UpdatePolicyStoreOutput
    UpdatePolicyTemplateInput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    UpdatePolicyTemplateInput.add_member(:policy_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateId, name: "policyTemplateId", traits: {"smithy.api#required" => {}}))
    UpdatePolicyTemplateInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateDescription, name: "description"))
    UpdatePolicyTemplateInput.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatement, name: "statement", traits: {"smithy.api#required" => {}}))
    UpdatePolicyTemplateInput.type = Types::UpdatePolicyTemplateInput
    UpdatePolicyTemplateOutput.add_member(:policy_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStoreId, name: "policyStoreId", traits: {"smithy.api#required" => {}}))
    UpdatePolicyTemplateOutput.add_member(:policy_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyTemplateId, name: "policyTemplateId", traits: {"smithy.api#required" => {}}))
    UpdatePolicyTemplateOutput.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "createdDate", traits: {"smithy.api#required" => {}}))
    UpdatePolicyTemplateOutput.add_member(:last_updated_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampFormat, name: "lastUpdatedDate", traits: {"smithy.api#required" => {}}))
    UpdatePolicyTemplateOutput.type = Types::UpdatePolicyTemplateOutput
    UpdateStaticPolicyDefinition.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: StaticPolicyDescription, name: "description"))
    UpdateStaticPolicyDefinition.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatement, name: "statement", traits: {"smithy.api#required" => {}}))
    UpdateStaticPolicyDefinition.type = Types::UpdateStaticPolicyDefinition
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "path", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member")
    ValidationMode.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFF", traits: {"smithy.api#enumValue" => "OFF"}))
    ValidationMode.add_member(:strict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRICT", traits: {"smithy.api#enumValue" => "STRICT"}))
    ValidationSettings.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMode, name: "mode", traits: {"smithy.api#required" => {}}))
    ValidationSettings.type = Types::ValidationSettings

    VerifiedPermissions = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.verifiedpermissions#VerifiedPermissions"
      service.name = "VerifiedPermissions"
      service.version = "2021-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "VerifiedPermissions", "arnNamespace" => "verifiedpermissions", "endpointPrefix" => "verifiedpermissions"}, "aws.auth#sigv4" => {"name" => "verifiedpermissions"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Verified Permissions"}
      service.add_operation(:batch_get_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#BatchGetPolicy"
        operation.name = "BatchGetPolicy"
        operation.input = BatchGetPolicyInput
        operation.output = BatchGetPolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetPolicy", "documentation" => "Grants permission to retrieve information about the specified policy", "relativeDocumentation" => "API_GetPolicy.html", "resources" => {"required" => {"policy-store" => {}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_is_authorized, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#BatchIsAuthorized"
        operation.name = "BatchIsAuthorized"
        operation.input = BatchIsAuthorizedInput
        operation.output = BatchIsAuthorizedOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to make authorization decisions about the service requests described in the parameters", "name" => "IsAuthorized", "relativeDocumentation" => "API_IsAuthorized.html", "resources" => {"required" => {"policy-store" => {}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_is_authorized_with_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#BatchIsAuthorizedWithToken"
        operation.name = "BatchIsAuthorizedWithToken"
        operation.input = BatchIsAuthorizedWithTokenInput
        operation.output = BatchIsAuthorizedWithTokenOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to make authorization decisions about the service requests described in the parameters. The principal in this request comes from an external identity source", "name" => "IsAuthorizedWithToken", "relativeDocumentation" => "API_IsAuthorizedWithToken.html", "resources" => {"required" => {"policy-store" => {}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:create_identity_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#CreateIdentitySource"
        operation.name = "CreateIdentitySource"
        operation.input = CreateIdentitySourceInput
        operation.output = CreateIdentitySourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a reference to an external identity provider (IdP) that is compatible with OpenID Connect (OIDC) authentication protocol, such as Amazon Cognito"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#CreatePolicy"
        operation.name = "CreatePolicy"
        operation.input = CreatePolicyInput
        operation.output = CreatePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a Cedar policy and save it in the specified policy store"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_policy_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#CreatePolicyStore"
        operation.name = "CreatePolicyStore"
        operation.input = CreatePolicyStoreInput
        operation.output = CreatePolicyStoreOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a Cedar policy and save it in the specified policy store"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_policy_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#CreatePolicyTemplate"
        operation.name = "CreatePolicyTemplate"
        operation.input = CreatePolicyTemplateInput
        operation.output = CreatePolicyTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a policy template"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_identity_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#DeleteIdentitySource"
        operation.name = "DeleteIdentitySource"
        operation.input = DeleteIdentitySourceInput
        operation.output = DeleteIdentitySourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an identity source that references an identity provider (IdP) such as Amazon Cognito"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#DeletePolicy"
        operation.name = "DeletePolicy"
        operation.input = DeletePolicyInput
        operation.output = DeletePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the specified policy from the policy store"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_policy_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#DeletePolicyStore"
        operation.name = "DeletePolicyStore"
        operation.input = DeletePolicyStoreInput
        operation.output = DeletePolicyStoreOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << InvalidStateException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the specified policy store"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_policy_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#DeletePolicyTemplate"
        operation.name = "DeletePolicyTemplate"
        operation.input = DeletePolicyTemplateInput
        operation.output = DeletePolicyTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the specified policy template from the policy store"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_identity_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#GetIdentitySource"
        operation.name = "GetIdentitySource"
        operation.input = GetIdentitySourceInput
        operation.output = GetIdentitySourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the details about the specified identity source"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#GetPolicy"
        operation.name = "GetPolicy"
        operation.input = GetPolicyInput
        operation.output = GetPolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetPolicy", "documentation" => "Grants permission to retrieve information about the specified policy", "relativeDocumentation" => "API_GetPolicy.html", "resources" => {"required" => {"policy-store" => {}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_policy_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#GetPolicyStore"
        operation.name = "GetPolicyStore"
        operation.input = GetPolicyStoreInput
        operation.output = GetPolicyStoreOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve details about a policy store"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_policy_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#GetPolicyTemplate"
        operation.name = "GetPolicyTemplate"
        operation.input = GetPolicyTemplateInput
        operation.output = GetPolicyTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the details for the specified policy template in the specified policy store"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#GetSchema"
        operation.name = "GetSchema"
        operation.input = GetSchemaInput
        operation.output = GetSchemaOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the details for the specified schema in the specified policy store"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:is_authorized, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#IsAuthorized"
        operation.name = "IsAuthorized"
        operation.input = IsAuthorizedInput
        operation.output = IsAuthorizedOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to make authorization decisions about the service requests described in the parameters"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:is_authorized_with_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#IsAuthorizedWithToken"
        operation.name = "IsAuthorizedWithToken"
        operation.input = IsAuthorizedWithTokenInput
        operation.output = IsAuthorizedWithTokenOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to make authorization decisions about the service requests described in the parameters. The principal in this request comes from an external identity source"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_identity_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#ListIdentitySources"
        operation.name = "ListIdentitySources"
        operation.input = ListIdentitySourcesInput
        operation.output = ListIdentitySourcesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to return a paginated list of all of the identity sources defined in the specified policy store"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIdentitySources.new
      end)
      service.add_operation(:list_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#ListPolicies"
        operation.name = "ListPolicies"
        operation.input = ListPoliciesInput
        operation.output = ListPoliciesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to return a paginated list of all policies stored in the specified policy store"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPolicies.new
      end)
      service.add_operation(:list_policy_stores, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#ListPolicyStores"
        operation.name = "ListPolicyStores"
        operation.input = ListPolicyStoresInput
        operation.output = ListPolicyStoresOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to return a paginated list of all policy stores in the calling Amazon Web Services account"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPolicyStores.new
      end)
      service.add_operation(:list_policy_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#ListPolicyTemplates"
        operation.name = "ListPolicyTemplates"
        operation.input = ListPolicyTemplatesInput
        operation.output = ListPolicyTemplatesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to return a paginated list of all policy templates in the specified policy store"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPolicyTemplates.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_schema, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#PutSchema"
        operation.name = "PutSchema"
        operation.input = PutSchemaInput
        operation.output = PutSchemaOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create or update the policy schema in the specified policy store"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"]}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"]}
      end)
      service.add_operation(:update_identity_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#UpdateIdentitySource"
        operation.name = "UpdateIdentitySource"
        operation.input = UpdateIdentitySourceInput
        operation.output = UpdateIdentitySourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the specified identity source to use a new identity provider (IdP) source, or to change the mapping of identities from the IdP to a different principal entity type"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#UpdatePolicy"
        operation.name = "UpdatePolicy"
        operation.input = UpdatePolicyInput
        operation.output = UpdatePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to modify the specified Cedar static policy in the specified policy store"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_policy_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#UpdatePolicyStore"
        operation.name = "UpdatePolicyStore"
        operation.input = UpdatePolicyStoreInput
        operation.output = UpdatePolicyStoreOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to modify the validation setting for a policy store"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_policy_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.verifiedpermissions#UpdatePolicyTemplate"
        operation.name = "UpdatePolicyTemplate"
        operation.input = UpdatePolicyTemplateInput
        operation.output = UpdatePolicyTemplateOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update the specified policy template"}, "smithy.api#idempotent" => {}}
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
