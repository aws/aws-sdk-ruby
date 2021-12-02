# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AmplifyUIBuilder
  # @api private
  module ClientApi

    include Seahorse::Model

    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Component = Shapes::StructureShape.new(name: 'Component')
    ComponentBindingProperties = Shapes::MapShape.new(name: 'ComponentBindingProperties')
    ComponentBindingPropertiesValue = Shapes::StructureShape.new(name: 'ComponentBindingPropertiesValue')
    ComponentBindingPropertiesValueProperties = Shapes::StructureShape.new(name: 'ComponentBindingPropertiesValueProperties')
    ComponentChild = Shapes::StructureShape.new(name: 'ComponentChild')
    ComponentChildList = Shapes::ListShape.new(name: 'ComponentChildList')
    ComponentCollectionProperties = Shapes::MapShape.new(name: 'ComponentCollectionProperties')
    ComponentConditionProperty = Shapes::StructureShape.new(name: 'ComponentConditionProperty')
    ComponentDataConfiguration = Shapes::StructureShape.new(name: 'ComponentDataConfiguration')
    ComponentList = Shapes::ListShape.new(name: 'ComponentList')
    ComponentName = Shapes::StringShape.new(name: 'ComponentName')
    ComponentOverrides = Shapes::MapShape.new(name: 'ComponentOverrides')
    ComponentOverridesValue = Shapes::MapShape.new(name: 'ComponentOverridesValue')
    ComponentProperties = Shapes::MapShape.new(name: 'ComponentProperties')
    ComponentProperty = Shapes::StructureShape.new(name: 'ComponentProperty')
    ComponentPropertyBindingProperties = Shapes::StructureShape.new(name: 'ComponentPropertyBindingProperties')
    ComponentPropertyList = Shapes::ListShape.new(name: 'ComponentPropertyList')
    ComponentSummary = Shapes::StructureShape.new(name: 'ComponentSummary')
    ComponentSummaryList = Shapes::ListShape.new(name: 'ComponentSummaryList')
    ComponentType = Shapes::StringShape.new(name: 'ComponentType')
    ComponentVariant = Shapes::StructureShape.new(name: 'ComponentVariant')
    ComponentVariantValues = Shapes::MapShape.new(name: 'ComponentVariantValues')
    ComponentVariants = Shapes::ListShape.new(name: 'ComponentVariants')
    CreateComponentData = Shapes::StructureShape.new(name: 'CreateComponentData')
    CreateComponentRequest = Shapes::StructureShape.new(name: 'CreateComponentRequest')
    CreateComponentResponse = Shapes::StructureShape.new(name: 'CreateComponentResponse')
    CreateThemeData = Shapes::StructureShape.new(name: 'CreateThemeData')
    CreateThemeRequest = Shapes::StructureShape.new(name: 'CreateThemeRequest')
    CreateThemeResponse = Shapes::StructureShape.new(name: 'CreateThemeResponse')
    DeleteComponentRequest = Shapes::StructureShape.new(name: 'DeleteComponentRequest')
    DeleteThemeRequest = Shapes::StructureShape.new(name: 'DeleteThemeRequest')
    ExchangeCodeForTokenRequest = Shapes::StructureShape.new(name: 'ExchangeCodeForTokenRequest')
    ExchangeCodeForTokenRequestBody = Shapes::StructureShape.new(name: 'ExchangeCodeForTokenRequestBody')
    ExchangeCodeForTokenResponse = Shapes::StructureShape.new(name: 'ExchangeCodeForTokenResponse')
    ExportComponentsRequest = Shapes::StructureShape.new(name: 'ExportComponentsRequest')
    ExportComponentsResponse = Shapes::StructureShape.new(name: 'ExportComponentsResponse')
    ExportThemesRequest = Shapes::StructureShape.new(name: 'ExportThemesRequest')
    ExportThemesResponse = Shapes::StructureShape.new(name: 'ExportThemesResponse')
    FormBindingElement = Shapes::StructureShape.new(name: 'FormBindingElement')
    FormBindings = Shapes::MapShape.new(name: 'FormBindings')
    GetComponentRequest = Shapes::StructureShape.new(name: 'GetComponentRequest')
    GetComponentResponse = Shapes::StructureShape.new(name: 'GetComponentResponse')
    GetThemeRequest = Shapes::StructureShape.new(name: 'GetThemeRequest')
    GetThemeResponse = Shapes::StructureShape.new(name: 'GetThemeResponse')
    IdentifierList = Shapes::ListShape.new(name: 'IdentifierList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    ListComponentsLimit = Shapes::IntegerShape.new(name: 'ListComponentsLimit')
    ListComponentsRequest = Shapes::StructureShape.new(name: 'ListComponentsRequest')
    ListComponentsResponse = Shapes::StructureShape.new(name: 'ListComponentsResponse')
    ListThemesLimit = Shapes::IntegerShape.new(name: 'ListThemesLimit')
    ListThemesRequest = Shapes::StructureShape.new(name: 'ListThemesRequest')
    ListThemesResponse = Shapes::StructureShape.new(name: 'ListThemesResponse')
    Predicate = Shapes::StructureShape.new(name: 'Predicate')
    PredicateList = Shapes::ListShape.new(name: 'PredicateList')
    RefreshTokenRequest = Shapes::StructureShape.new(name: 'RefreshTokenRequest')
    RefreshTokenRequestBody = Shapes::StructureShape.new(name: 'RefreshTokenRequestBody')
    RefreshTokenResponse = Shapes::StructureShape.new(name: 'RefreshTokenResponse')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SortDirection = Shapes::StringShape.new(name: 'SortDirection')
    SortProperty = Shapes::StructureShape.new(name: 'SortProperty')
    SortPropertyList = Shapes::ListShape.new(name: 'SortPropertyList')
    String = Shapes::StringShape.new(name: 'String')
    SyntheticExchangeCodeForTokenRequestBodyString = Shapes::StringShape.new(name: 'SyntheticExchangeCodeForTokenRequestBodyString')
    SyntheticExchangeCodeForTokenResponseString = Shapes::StringShape.new(name: 'SyntheticExchangeCodeForTokenResponseString')
    SyntheticRefreshTokenRequestBodyString = Shapes::StringShape.new(name: 'SyntheticRefreshTokenRequestBodyString')
    SyntheticRefreshTokenResponseString = Shapes::StringShape.new(name: 'SyntheticRefreshTokenResponseString')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    Theme = Shapes::StructureShape.new(name: 'Theme')
    ThemeList = Shapes::ListShape.new(name: 'ThemeList')
    ThemeName = Shapes::StringShape.new(name: 'ThemeName')
    ThemeSummary = Shapes::StructureShape.new(name: 'ThemeSummary')
    ThemeSummaryList = Shapes::ListShape.new(name: 'ThemeSummaryList')
    ThemeValue = Shapes::StructureShape.new(name: 'ThemeValue')
    ThemeValues = Shapes::StructureShape.new(name: 'ThemeValues')
    ThemeValuesList = Shapes::ListShape.new(name: 'ThemeValuesList')
    TokenProviders = Shapes::StringShape.new(name: 'TokenProviders')
    UpdateComponentData = Shapes::StructureShape.new(name: 'UpdateComponentData')
    UpdateComponentRequest = Shapes::StructureShape.new(name: 'UpdateComponentRequest')
    UpdateComponentResponse = Shapes::StructureShape.new(name: 'UpdateComponentResponse')
    UpdateThemeData = Shapes::StructureShape.new(name: 'UpdateThemeData')
    UpdateThemeRequest = Shapes::StructureShape.new(name: 'UpdateThemeRequest')
    UpdateThemeResponse = Shapes::StructureShape.new(name: 'UpdateThemeResponse')
    Uuid = Shapes::StringShape.new(name: 'Uuid')

    Component.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "appId"))
    Component.add_member(:binding_properties, Shapes::ShapeRef.new(shape: ComponentBindingProperties, required: true, location_name: "bindingProperties"))
    Component.add_member(:children, Shapes::ShapeRef.new(shape: ComponentChildList, location_name: "children"))
    Component.add_member(:collection_properties, Shapes::ShapeRef.new(shape: ComponentCollectionProperties, location_name: "collectionProperties"))
    Component.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentType, required: true, location_name: "componentType"))
    Component.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    Component.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "environmentName"))
    Component.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    Component.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "modifiedAt"))
    Component.add_member(:name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "name"))
    Component.add_member(:overrides, Shapes::ShapeRef.new(shape: ComponentOverrides, required: true, location_name: "overrides"))
    Component.add_member(:properties, Shapes::ShapeRef.new(shape: ComponentProperties, required: true, location_name: "properties"))
    Component.add_member(:source_id, Shapes::ShapeRef.new(shape: String, location_name: "sourceId"))
    Component.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Component.add_member(:variants, Shapes::ShapeRef.new(shape: ComponentVariants, required: true, location_name: "variants"))
    Component.struct_class = Types::Component

    ComponentBindingProperties.key = Shapes::ShapeRef.new(shape: String)
    ComponentBindingProperties.value = Shapes::ShapeRef.new(shape: ComponentBindingPropertiesValue)

    ComponentBindingPropertiesValue.add_member(:binding_properties, Shapes::ShapeRef.new(shape: ComponentBindingPropertiesValueProperties, location_name: "bindingProperties"))
    ComponentBindingPropertiesValue.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "defaultValue"))
    ComponentBindingPropertiesValue.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    ComponentBindingPropertiesValue.struct_class = Types::ComponentBindingPropertiesValue

    ComponentBindingPropertiesValueProperties.add_member(:bucket, Shapes::ShapeRef.new(shape: String, location_name: "bucket"))
    ComponentBindingPropertiesValueProperties.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "defaultValue"))
    ComponentBindingPropertiesValueProperties.add_member(:field, Shapes::ShapeRef.new(shape: String, location_name: "field"))
    ComponentBindingPropertiesValueProperties.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "key"))
    ComponentBindingPropertiesValueProperties.add_member(:model, Shapes::ShapeRef.new(shape: String, location_name: "model"))
    ComponentBindingPropertiesValueProperties.add_member(:predicates, Shapes::ShapeRef.new(shape: PredicateList, location_name: "predicates"))
    ComponentBindingPropertiesValueProperties.add_member(:user_attribute, Shapes::ShapeRef.new(shape: String, location_name: "userAttribute"))
    ComponentBindingPropertiesValueProperties.struct_class = Types::ComponentBindingPropertiesValueProperties

    ComponentChild.add_member(:children, Shapes::ShapeRef.new(shape: ComponentChildList, location_name: "children"))
    ComponentChild.add_member(:component_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "componentType"))
    ComponentChild.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ComponentChild.add_member(:properties, Shapes::ShapeRef.new(shape: ComponentProperties, required: true, location_name: "properties"))
    ComponentChild.struct_class = Types::ComponentChild

    ComponentChildList.member = Shapes::ShapeRef.new(shape: ComponentChild)

    ComponentCollectionProperties.key = Shapes::ShapeRef.new(shape: String)
    ComponentCollectionProperties.value = Shapes::ShapeRef.new(shape: ComponentDataConfiguration)

    ComponentConditionProperty.add_member(:else, Shapes::ShapeRef.new(shape: ComponentProperty, location_name: "else"))
    ComponentConditionProperty.add_member(:field, Shapes::ShapeRef.new(shape: String, location_name: "field"))
    ComponentConditionProperty.add_member(:operand, Shapes::ShapeRef.new(shape: String, location_name: "operand"))
    ComponentConditionProperty.add_member(:operator, Shapes::ShapeRef.new(shape: String, location_name: "operator"))
    ComponentConditionProperty.add_member(:property, Shapes::ShapeRef.new(shape: String, location_name: "property"))
    ComponentConditionProperty.add_member(:then, Shapes::ShapeRef.new(shape: ComponentProperty, location_name: "then"))
    ComponentConditionProperty.struct_class = Types::ComponentConditionProperty

    ComponentDataConfiguration.add_member(:identifiers, Shapes::ShapeRef.new(shape: IdentifierList, location_name: "identifiers"))
    ComponentDataConfiguration.add_member(:model, Shapes::ShapeRef.new(shape: String, required: true, location_name: "model"))
    ComponentDataConfiguration.add_member(:predicate, Shapes::ShapeRef.new(shape: Predicate, location_name: "predicate"))
    ComponentDataConfiguration.add_member(:sort, Shapes::ShapeRef.new(shape: SortPropertyList, location_name: "sort"))
    ComponentDataConfiguration.struct_class = Types::ComponentDataConfiguration

    ComponentList.member = Shapes::ShapeRef.new(shape: Component)

    ComponentOverrides.key = Shapes::ShapeRef.new(shape: String)
    ComponentOverrides.value = Shapes::ShapeRef.new(shape: ComponentOverridesValue)

    ComponentOverridesValue.key = Shapes::ShapeRef.new(shape: String)
    ComponentOverridesValue.value = Shapes::ShapeRef.new(shape: String)

    ComponentProperties.key = Shapes::ShapeRef.new(shape: String)
    ComponentProperties.value = Shapes::ShapeRef.new(shape: ComponentProperty)

    ComponentProperty.add_member(:binding_properties, Shapes::ShapeRef.new(shape: ComponentPropertyBindingProperties, location_name: "bindingProperties"))
    ComponentProperty.add_member(:bindings, Shapes::ShapeRef.new(shape: FormBindings, location_name: "bindings"))
    ComponentProperty.add_member(:collection_binding_properties, Shapes::ShapeRef.new(shape: ComponentPropertyBindingProperties, location_name: "collectionBindingProperties"))
    ComponentProperty.add_member(:concat, Shapes::ShapeRef.new(shape: ComponentPropertyList, location_name: "concat"))
    ComponentProperty.add_member(:condition, Shapes::ShapeRef.new(shape: ComponentConditionProperty, location_name: "condition"))
    ComponentProperty.add_member(:configured, Shapes::ShapeRef.new(shape: Boolean, location_name: "configured"))
    ComponentProperty.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "defaultValue"))
    ComponentProperty.add_member(:event, Shapes::ShapeRef.new(shape: String, location_name: "event"))
    ComponentProperty.add_member(:imported_value, Shapes::ShapeRef.new(shape: String, location_name: "importedValue"))
    ComponentProperty.add_member(:model, Shapes::ShapeRef.new(shape: String, location_name: "model"))
    ComponentProperty.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    ComponentProperty.add_member(:user_attribute, Shapes::ShapeRef.new(shape: String, location_name: "userAttribute"))
    ComponentProperty.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    ComponentProperty.struct_class = Types::ComponentProperty

    ComponentPropertyBindingProperties.add_member(:field, Shapes::ShapeRef.new(shape: String, location_name: "field"))
    ComponentPropertyBindingProperties.add_member(:property, Shapes::ShapeRef.new(shape: String, required: true, location_name: "property"))
    ComponentPropertyBindingProperties.struct_class = Types::ComponentPropertyBindingProperties

    ComponentPropertyList.member = Shapes::ShapeRef.new(shape: ComponentProperty)

    ComponentSummary.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "appId"))
    ComponentSummary.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentType, required: true, location_name: "componentType"))
    ComponentSummary.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "environmentName"))
    ComponentSummary.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    ComponentSummary.add_member(:name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "name"))
    ComponentSummary.struct_class = Types::ComponentSummary

    ComponentSummaryList.member = Shapes::ShapeRef.new(shape: ComponentSummary)

    ComponentVariant.add_member(:overrides, Shapes::ShapeRef.new(shape: ComponentOverrides, location_name: "overrides"))
    ComponentVariant.add_member(:variant_values, Shapes::ShapeRef.new(shape: ComponentVariantValues, location_name: "variantValues"))
    ComponentVariant.struct_class = Types::ComponentVariant

    ComponentVariantValues.key = Shapes::ShapeRef.new(shape: String)
    ComponentVariantValues.value = Shapes::ShapeRef.new(shape: String)

    ComponentVariants.member = Shapes::ShapeRef.new(shape: ComponentVariant)

    CreateComponentData.add_member(:binding_properties, Shapes::ShapeRef.new(shape: ComponentBindingProperties, required: true, location_name: "bindingProperties"))
    CreateComponentData.add_member(:children, Shapes::ShapeRef.new(shape: ComponentChildList, location_name: "children"))
    CreateComponentData.add_member(:collection_properties, Shapes::ShapeRef.new(shape: ComponentCollectionProperties, location_name: "collectionProperties"))
    CreateComponentData.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentType, required: true, location_name: "componentType"))
    CreateComponentData.add_member(:name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "name"))
    CreateComponentData.add_member(:overrides, Shapes::ShapeRef.new(shape: ComponentOverrides, required: true, location_name: "overrides"))
    CreateComponentData.add_member(:properties, Shapes::ShapeRef.new(shape: ComponentProperties, required: true, location_name: "properties"))
    CreateComponentData.add_member(:source_id, Shapes::ShapeRef.new(shape: String, location_name: "sourceId"))
    CreateComponentData.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateComponentData.add_member(:variants, Shapes::ShapeRef.new(shape: ComponentVariants, required: true, location_name: "variants"))
    CreateComponentData.struct_class = Types::CreateComponentData

    CreateComponentRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    CreateComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateComponentRequest.add_member(:component_to_create, Shapes::ShapeRef.new(shape: CreateComponentData, required: true, location_name: "componentToCreate"))
    CreateComponentRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    CreateComponentRequest.struct_class = Types::CreateComponentRequest
    CreateComponentRequest[:payload] = :component_to_create
    CreateComponentRequest[:payload_member] = CreateComponentRequest.member(:component_to_create)

    CreateComponentResponse.add_member(:entity, Shapes::ShapeRef.new(shape: Component, location_name: "entity"))
    CreateComponentResponse.struct_class = Types::CreateComponentResponse
    CreateComponentResponse[:payload] = :entity
    CreateComponentResponse[:payload_member] = CreateComponentResponse.member(:entity)

    CreateThemeData.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, required: true, location_name: "name"))
    CreateThemeData.add_member(:overrides, Shapes::ShapeRef.new(shape: ThemeValuesList, location_name: "overrides"))
    CreateThemeData.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateThemeData.add_member(:values, Shapes::ShapeRef.new(shape: ThemeValuesList, required: true, location_name: "values"))
    CreateThemeData.struct_class = Types::CreateThemeData

    CreateThemeRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    CreateThemeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateThemeRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    CreateThemeRequest.add_member(:theme_to_create, Shapes::ShapeRef.new(shape: CreateThemeData, required: true, location_name: "themeToCreate"))
    CreateThemeRequest.struct_class = Types::CreateThemeRequest
    CreateThemeRequest[:payload] = :theme_to_create
    CreateThemeRequest[:payload_member] = CreateThemeRequest.member(:theme_to_create)

    CreateThemeResponse.add_member(:entity, Shapes::ShapeRef.new(shape: Theme, location_name: "entity"))
    CreateThemeResponse.struct_class = Types::CreateThemeResponse
    CreateThemeResponse[:payload] = :entity
    CreateThemeResponse[:payload_member] = CreateThemeResponse.member(:entity)

    DeleteComponentRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    DeleteComponentRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    DeleteComponentRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    DeleteComponentRequest.struct_class = Types::DeleteComponentRequest

    DeleteThemeRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    DeleteThemeRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    DeleteThemeRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    DeleteThemeRequest.struct_class = Types::DeleteThemeRequest

    ExchangeCodeForTokenRequest.add_member(:provider, Shapes::ShapeRef.new(shape: TokenProviders, required: true, location: "uri", location_name: "provider"))
    ExchangeCodeForTokenRequest.add_member(:request, Shapes::ShapeRef.new(shape: ExchangeCodeForTokenRequestBody, required: true, location_name: "request"))
    ExchangeCodeForTokenRequest.struct_class = Types::ExchangeCodeForTokenRequest
    ExchangeCodeForTokenRequest[:payload] = :request
    ExchangeCodeForTokenRequest[:payload_member] = ExchangeCodeForTokenRequest.member(:request)

    ExchangeCodeForTokenRequestBody.add_member(:code, Shapes::ShapeRef.new(shape: SyntheticExchangeCodeForTokenRequestBodyString, required: true, location_name: "code"))
    ExchangeCodeForTokenRequestBody.add_member(:redirect_uri, Shapes::ShapeRef.new(shape: String, required: true, location_name: "redirectUri"))
    ExchangeCodeForTokenRequestBody.struct_class = Types::ExchangeCodeForTokenRequestBody

    ExchangeCodeForTokenResponse.add_member(:access_token, Shapes::ShapeRef.new(shape: SyntheticExchangeCodeForTokenResponseString, required: true, location_name: "accessToken"))
    ExchangeCodeForTokenResponse.add_member(:expires_in, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "expiresIn"))
    ExchangeCodeForTokenResponse.add_member(:refresh_token, Shapes::ShapeRef.new(shape: SyntheticExchangeCodeForTokenResponseString, required: true, location_name: "refreshToken"))
    ExchangeCodeForTokenResponse.struct_class = Types::ExchangeCodeForTokenResponse

    ExportComponentsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    ExportComponentsRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    ExportComponentsRequest.struct_class = Types::ExportComponentsRequest

    ExportComponentsResponse.add_member(:entities, Shapes::ShapeRef.new(shape: ComponentList, required: true, location_name: "entities"))
    ExportComponentsResponse.struct_class = Types::ExportComponentsResponse

    ExportThemesRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    ExportThemesRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    ExportThemesRequest.struct_class = Types::ExportThemesRequest

    ExportThemesResponse.add_member(:entities, Shapes::ShapeRef.new(shape: ThemeList, required: true, location_name: "entities"))
    ExportThemesResponse.struct_class = Types::ExportThemesResponse

    FormBindingElement.add_member(:element, Shapes::ShapeRef.new(shape: String, required: true, location_name: "element"))
    FormBindingElement.add_member(:property, Shapes::ShapeRef.new(shape: String, required: true, location_name: "property"))
    FormBindingElement.struct_class = Types::FormBindingElement

    FormBindings.key = Shapes::ShapeRef.new(shape: String)
    FormBindings.value = Shapes::ShapeRef.new(shape: FormBindingElement)

    GetComponentRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    GetComponentRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    GetComponentRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    GetComponentRequest.struct_class = Types::GetComponentRequest

    GetComponentResponse.add_member(:component, Shapes::ShapeRef.new(shape: Component, location_name: "component"))
    GetComponentResponse.struct_class = Types::GetComponentResponse
    GetComponentResponse[:payload] = :component
    GetComponentResponse[:payload_member] = GetComponentResponse.member(:component)

    GetThemeRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    GetThemeRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    GetThemeRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    GetThemeRequest.struct_class = Types::GetThemeRequest

    GetThemeResponse.add_member(:theme, Shapes::ShapeRef.new(shape: Theme, location_name: "theme"))
    GetThemeResponse.struct_class = Types::GetThemeResponse
    GetThemeResponse[:payload] = :theme
    GetThemeResponse[:payload_member] = GetThemeResponse.member(:theme)

    IdentifierList.member = Shapes::ShapeRef.new(shape: String)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    ListComponentsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    ListComponentsRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    ListComponentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListComponentsLimit, location: "querystring", location_name: "maxResults"))
    ListComponentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListComponentsRequest.struct_class = Types::ListComponentsRequest

    ListComponentsResponse.add_member(:entities, Shapes::ShapeRef.new(shape: ComponentSummaryList, required: true, location_name: "entities"))
    ListComponentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListComponentsResponse.struct_class = Types::ListComponentsResponse

    ListThemesRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    ListThemesRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    ListThemesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListThemesLimit, location: "querystring", location_name: "maxResults"))
    ListThemesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListThemesRequest.struct_class = Types::ListThemesRequest

    ListThemesResponse.add_member(:entities, Shapes::ShapeRef.new(shape: ThemeSummaryList, required: true, location_name: "entities"))
    ListThemesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListThemesResponse.struct_class = Types::ListThemesResponse

    Predicate.add_member(:and, Shapes::ShapeRef.new(shape: PredicateList, location_name: "and"))
    Predicate.add_member(:field, Shapes::ShapeRef.new(shape: String, location_name: "field"))
    Predicate.add_member(:operand, Shapes::ShapeRef.new(shape: String, location_name: "operand"))
    Predicate.add_member(:operator, Shapes::ShapeRef.new(shape: String, location_name: "operator"))
    Predicate.add_member(:or, Shapes::ShapeRef.new(shape: PredicateList, location_name: "or"))
    Predicate.struct_class = Types::Predicate

    PredicateList.member = Shapes::ShapeRef.new(shape: Predicate)

    RefreshTokenRequest.add_member(:provider, Shapes::ShapeRef.new(shape: TokenProviders, required: true, location: "uri", location_name: "provider"))
    RefreshTokenRequest.add_member(:refresh_token_body, Shapes::ShapeRef.new(shape: RefreshTokenRequestBody, required: true, location_name: "refreshTokenBody"))
    RefreshTokenRequest.struct_class = Types::RefreshTokenRequest
    RefreshTokenRequest[:payload] = :refresh_token_body
    RefreshTokenRequest[:payload_member] = RefreshTokenRequest.member(:refresh_token_body)

    RefreshTokenRequestBody.add_member(:token, Shapes::ShapeRef.new(shape: SyntheticRefreshTokenRequestBodyString, required: true, location_name: "token"))
    RefreshTokenRequestBody.struct_class = Types::RefreshTokenRequestBody

    RefreshTokenResponse.add_member(:access_token, Shapes::ShapeRef.new(shape: SyntheticRefreshTokenResponseString, required: true, location_name: "accessToken"))
    RefreshTokenResponse.add_member(:expires_in, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "expiresIn"))
    RefreshTokenResponse.struct_class = Types::RefreshTokenResponse

    ResourceConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceConflictException.struct_class = Types::ResourceConflictException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SortProperty.add_member(:direction, Shapes::ShapeRef.new(shape: SortDirection, required: true, location_name: "direction"))
    SortProperty.add_member(:field, Shapes::ShapeRef.new(shape: String, required: true, location_name: "field"))
    SortProperty.struct_class = Types::SortProperty

    SortPropertyList.member = Shapes::ShapeRef.new(shape: SortProperty)

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    Theme.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "appId"))
    Theme.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    Theme.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "environmentName"))
    Theme.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    Theme.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "modifiedAt"))
    Theme.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, required: true, location_name: "name"))
    Theme.add_member(:overrides, Shapes::ShapeRef.new(shape: ThemeValuesList, location_name: "overrides"))
    Theme.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Theme.add_member(:values, Shapes::ShapeRef.new(shape: ThemeValuesList, required: true, location_name: "values"))
    Theme.struct_class = Types::Theme

    ThemeList.member = Shapes::ShapeRef.new(shape: Theme)

    ThemeSummary.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "appId"))
    ThemeSummary.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "environmentName"))
    ThemeSummary.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    ThemeSummary.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, required: true, location_name: "name"))
    ThemeSummary.struct_class = Types::ThemeSummary

    ThemeSummaryList.member = Shapes::ShapeRef.new(shape: ThemeSummary)

    ThemeValue.add_member(:children, Shapes::ShapeRef.new(shape: ThemeValuesList, location_name: "children"))
    ThemeValue.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    ThemeValue.struct_class = Types::ThemeValue

    ThemeValues.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "key"))
    ThemeValues.add_member(:value, Shapes::ShapeRef.new(shape: ThemeValue, location_name: "value"))
    ThemeValues.struct_class = Types::ThemeValues

    ThemeValuesList.member = Shapes::ShapeRef.new(shape: ThemeValues)

    UpdateComponentData.add_member(:binding_properties, Shapes::ShapeRef.new(shape: ComponentBindingProperties, location_name: "bindingProperties"))
    UpdateComponentData.add_member(:children, Shapes::ShapeRef.new(shape: ComponentChildList, location_name: "children"))
    UpdateComponentData.add_member(:collection_properties, Shapes::ShapeRef.new(shape: ComponentCollectionProperties, location_name: "collectionProperties"))
    UpdateComponentData.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentType, location_name: "componentType"))
    UpdateComponentData.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, location_name: "id"))
    UpdateComponentData.add_member(:name, Shapes::ShapeRef.new(shape: ComponentName, location_name: "name"))
    UpdateComponentData.add_member(:overrides, Shapes::ShapeRef.new(shape: ComponentOverrides, location_name: "overrides"))
    UpdateComponentData.add_member(:properties, Shapes::ShapeRef.new(shape: ComponentProperties, location_name: "properties"))
    UpdateComponentData.add_member(:source_id, Shapes::ShapeRef.new(shape: String, location_name: "sourceId"))
    UpdateComponentData.add_member(:variants, Shapes::ShapeRef.new(shape: ComponentVariants, location_name: "variants"))
    UpdateComponentData.struct_class = Types::UpdateComponentData

    UpdateComponentRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    UpdateComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateComponentRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    UpdateComponentRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    UpdateComponentRequest.add_member(:updated_component, Shapes::ShapeRef.new(shape: UpdateComponentData, required: true, location_name: "updatedComponent"))
    UpdateComponentRequest.struct_class = Types::UpdateComponentRequest
    UpdateComponentRequest[:payload] = :updated_component
    UpdateComponentRequest[:payload_member] = UpdateComponentRequest.member(:updated_component)

    UpdateComponentResponse.add_member(:entity, Shapes::ShapeRef.new(shape: Component, location_name: "entity"))
    UpdateComponentResponse.struct_class = Types::UpdateComponentResponse
    UpdateComponentResponse[:payload] = :entity
    UpdateComponentResponse[:payload_member] = UpdateComponentResponse.member(:entity)

    UpdateThemeData.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, location_name: "id"))
    UpdateThemeData.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, location_name: "name"))
    UpdateThemeData.add_member(:overrides, Shapes::ShapeRef.new(shape: ThemeValuesList, location_name: "overrides"))
    UpdateThemeData.add_member(:values, Shapes::ShapeRef.new(shape: ThemeValuesList, required: true, location_name: "values"))
    UpdateThemeData.struct_class = Types::UpdateThemeData

    UpdateThemeRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    UpdateThemeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateThemeRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    UpdateThemeRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    UpdateThemeRequest.add_member(:updated_theme, Shapes::ShapeRef.new(shape: UpdateThemeData, required: true, location_name: "updatedTheme"))
    UpdateThemeRequest.struct_class = Types::UpdateThemeRequest
    UpdateThemeRequest[:payload] = :updated_theme
    UpdateThemeRequest[:payload_member] = UpdateThemeRequest.member(:updated_theme)

    UpdateThemeResponse.add_member(:entity, Shapes::ShapeRef.new(shape: Theme, location_name: "entity"))
    UpdateThemeResponse.struct_class = Types::UpdateThemeResponse
    UpdateThemeResponse[:payload] = :entity
    UpdateThemeResponse[:payload_member] = UpdateThemeResponse.member(:entity)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-08-11"

      api.metadata = {
        "apiVersion" => "2021-08-11",
        "endpointPrefix" => "amplifyuibuilder",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Amplify UI Builder",
        "serviceId" => "AmplifyUIBuilder",
        "signatureVersion" => "v4",
        "signingName" => "amplifyuibuilder",
        "uid" => "amplifyuibuilder-2021-08-11",
      }

      api.add_operation(:create_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateComponent"
        o.http_method = "POST"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/components"
        o.input = Shapes::ShapeRef.new(shape: CreateComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:create_theme, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTheme"
        o.http_method = "POST"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/themes"
        o.input = Shapes::ShapeRef.new(shape: CreateThemeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateThemeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:delete_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteComponent"
        o.http_method = "DELETE"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/components/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_theme, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTheme"
        o.http_method = "DELETE"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/themes/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteThemeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:exchange_code_for_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExchangeCodeForToken"
        o.http_method = "POST"
        o.http_request_uri = "/tokens/{provider}"
        o.input = Shapes::ShapeRef.new(shape: ExchangeCodeForTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: ExchangeCodeForTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:export_components, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportComponents"
        o.http_method = "GET"
        o.http_request_uri = "/export/app/{appId}/environment/{environmentName}/components"
        o.input = Shapes::ShapeRef.new(shape: ExportComponentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportComponentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:export_themes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportThemes"
        o.http_method = "GET"
        o.http_request_uri = "/export/app/{appId}/environment/{environmentName}/themes"
        o.input = Shapes::ShapeRef.new(shape: ExportThemesRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportThemesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:get_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComponent"
        o.http_method = "GET"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/components/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_theme, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTheme"
        o.http_method = "GET"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/themes/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetThemeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetThemeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_components, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComponents"
        o.http_method = "GET"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/components"
        o.input = Shapes::ShapeRef.new(shape: ListComponentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComponentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_themes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThemes"
        o.http_method = "GET"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/themes"
        o.input = Shapes::ShapeRef.new(shape: ListThemesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThemesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:refresh_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RefreshToken"
        o.http_method = "POST"
        o.http_request_uri = "/tokens/{provider}/refresh"
        o.input = Shapes::ShapeRef.new(shape: RefreshTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: RefreshTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:update_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateComponent"
        o.http_method = "PATCH"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/components/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:update_theme, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTheme"
        o.http_method = "PATCH"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/themes/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateThemeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateThemeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)
    end

  end
end
