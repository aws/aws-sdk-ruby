# frozen_string_literal: true

# This is generated code!

module Aws::AmplifyUIBuilder
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActionParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ActionParameters", name: "ActionParameters")
    ApiConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.amplifyuibuilder#ApiConfiguration", name: "ApiConfiguration")
    AppId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplifyuibuilder#AppId", name: "AppId", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^d[a-z0-9]+$"})
    AssociatedFieldsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#AssociatedFieldsList", name: "AssociatedFieldsList")
    CodegenDependencies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenDependencies", name: "CodegenDependencies")
    CodegenDependency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenDependency", name: "CodegenDependency")
    CodegenFeatureFlags = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenFeatureFlags", name: "CodegenFeatureFlags")
    CodegenGenericDataEnum = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenGenericDataEnum", name: "CodegenGenericDataEnum")
    CodegenGenericDataEnumValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenGenericDataEnumValuesList", name: "CodegenGenericDataEnumValuesList")
    CodegenGenericDataEnums = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenGenericDataEnums", name: "CodegenGenericDataEnums")
    CodegenGenericDataField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenGenericDataField", name: "CodegenGenericDataField")
    CodegenGenericDataFieldDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenGenericDataFieldDataType", name: "CodegenGenericDataFieldDataType")
    CodegenGenericDataFields = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenGenericDataFields", name: "CodegenGenericDataFields")
    CodegenGenericDataModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenGenericDataModel", name: "CodegenGenericDataModel")
    CodegenGenericDataModels = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenGenericDataModels", name: "CodegenGenericDataModels")
    CodegenGenericDataNonModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenGenericDataNonModel", name: "CodegenGenericDataNonModel")
    CodegenGenericDataNonModelFields = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenGenericDataNonModelFields", name: "CodegenGenericDataNonModelFields")
    CodegenGenericDataNonModels = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenGenericDataNonModels", name: "CodegenGenericDataNonModels")
    CodegenGenericDataRelationshipType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenGenericDataRelationshipType", name: "CodegenGenericDataRelationshipType")
    CodegenJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenJob", name: "CodegenJob", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amplifyuibuilder#CodegenJobResource"}]})
    CodegenJobAsset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenJobAsset", name: "CodegenJobAsset")
    CodegenJobGenericDataSchema = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenJobGenericDataSchema", name: "CodegenJobGenericDataSchema")
    CodegenJobGenericDataSourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenJobGenericDataSourceType", name: "CodegenJobGenericDataSourceType")
    CodegenJobRenderConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenJobRenderConfig", name: "CodegenJobRenderConfig")
    CodegenJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenJobStatus", name: "CodegenJobStatus")
    CodegenJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenJobSummary", name: "CodegenJobSummary")
    CodegenJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenJobSummaryList", name: "CodegenJobSummaryList")
    CodegenPrimaryKeysList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#CodegenPrimaryKeysList", name: "CodegenPrimaryKeysList")
    Component = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#Component", name: "Component", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amplifyuibuilder#ComponentResource"}]})
    ComponentBindingProperties = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentBindingProperties", name: "ComponentBindingProperties")
    ComponentBindingPropertiesValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentBindingPropertiesValue", name: "ComponentBindingPropertiesValue")
    ComponentBindingPropertiesValueProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentBindingPropertiesValueProperties", name: "ComponentBindingPropertiesValueProperties")
    ComponentChild = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentChild", name: "ComponentChild")
    ComponentChildList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentChildList", name: "ComponentChildList")
    ComponentCollectionProperties = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentCollectionProperties", name: "ComponentCollectionProperties")
    ComponentConditionProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentConditionProperty", name: "ComponentConditionProperty")
    ComponentDataConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentDataConfiguration", name: "ComponentDataConfiguration")
    ComponentEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentEvent", name: "ComponentEvent")
    ComponentEvents = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentEvents", name: "ComponentEvents")
    ComponentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentList", name: "ComponentList")
    ComponentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentName", name: "ComponentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ComponentOverrides = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentOverrides", name: "ComponentOverrides")
    ComponentOverridesValue = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentOverridesValue", name: "ComponentOverridesValue")
    ComponentProperties = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentProperties", name: "ComponentProperties")
    ComponentProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentProperty", name: "ComponentProperty")
    ComponentPropertyBindingProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentPropertyBindingProperties", name: "ComponentPropertyBindingProperties")
    ComponentPropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentPropertyList", name: "ComponentPropertyList")
    ComponentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentSummary", name: "ComponentSummary")
    ComponentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentSummaryList", name: "ComponentSummaryList")
    ComponentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentType", name: "ComponentType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ComponentVariant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentVariant", name: "ComponentVariant")
    ComponentVariantValues = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentVariantValues", name: "ComponentVariantValues")
    ComponentVariants = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#ComponentVariants", name: "ComponentVariants")
    CreateComponentData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CreateComponentData", name: "CreateComponentData")
    CreateComponentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CreateComponentInput", name: "CreateComponentInput")
    CreateComponentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CreateComponentOutput", name: "CreateComponentOutput")
    CreateFormData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CreateFormData", name: "CreateFormData")
    CreateFormInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CreateFormInput", name: "CreateFormInput")
    CreateFormOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CreateFormOutput", name: "CreateFormOutput")
    CreateThemeData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CreateThemeData", name: "CreateThemeData")
    CreateThemeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CreateThemeInput", name: "CreateThemeInput")
    CreateThemeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#CreateThemeOutput", name: "CreateThemeOutput")
    DataStoreRenderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#DataStoreRenderConfig", name: "DataStoreRenderConfig")
    DeleteComponentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#DeleteComponentInput", name: "DeleteComponentInput")
    DeleteFormInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#DeleteFormInput", name: "DeleteFormInput")
    DeleteThemeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#DeleteThemeInput", name: "DeleteThemeInput")
    ExchangeCodeForTokenInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ExchangeCodeForTokenInput", name: "ExchangeCodeForTokenInput")
    ExchangeCodeForTokenOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ExchangeCodeForTokenOutput", name: "ExchangeCodeForTokenOutput")
    ExchangeCodeForTokenRequestBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ExchangeCodeForTokenRequestBody", name: "ExchangeCodeForTokenRequestBody")
    ExportComponentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ExportComponentsInput", name: "ExportComponentsInput")
    ExportComponentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ExportComponentsOutput", name: "ExportComponentsOutput")
    ExportFormsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ExportFormsInput", name: "ExportFormsInput")
    ExportFormsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ExportFormsOutput", name: "ExportFormsOutput")
    ExportThemesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ExportThemesInput", name: "ExportThemesInput")
    ExportThemesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ExportThemesOutput", name: "ExportThemesOutput")
    FeaturesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#FeaturesMap", name: "FeaturesMap")
    FieldConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#FieldConfig", name: "FieldConfig")
    FieldInputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#FieldInputConfig", name: "FieldInputConfig")
    FieldPosition = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.amplifyuibuilder#FieldPosition", name: "FieldPosition")
    FieldValidationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#FieldValidationConfiguration", name: "FieldValidationConfiguration")
    FieldsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#FieldsMap", name: "FieldsMap")
    FileUploaderFieldConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#FileUploaderFieldConfig", name: "FileUploaderFieldConfig")
    FixedPosition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplifyuibuilder#FixedPosition", name: "FixedPosition")
    Form = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#Form", name: "Form", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amplifyuibuilder#FormResource"}]})
    FormActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplifyuibuilder#FormActionType", name: "FormActionType")
    FormBindingElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#FormBindingElement", name: "FormBindingElement")
    FormBindings = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#FormBindings", name: "FormBindings")
    FormButton = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#FormButton", name: "FormButton")
    FormButtonsPosition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplifyuibuilder#FormButtonsPosition", name: "FormButtonsPosition")
    FormCTA = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#FormCTA", name: "FormCTA")
    FormDataSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplifyuibuilder#FormDataSourceType", name: "FormDataSourceType", traits: {"smithy.api#enum" => [{"value" => "DataStore", "name" => "DATASTORE", "documentation" => "Will use a provided Amplify DataStore enabled API"}, {"value" => "Custom", "name" => "CUSTOM", "documentation" => "Will use passed in hooks to use when creating a form from scratch"}]})
    FormDataTypeConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#FormDataTypeConfig", name: "FormDataTypeConfig")
    FormInputBindingProperties = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#FormInputBindingProperties", name: "FormInputBindingProperties")
    FormInputBindingPropertiesValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#FormInputBindingPropertiesValue", name: "FormInputBindingPropertiesValue")
    FormInputBindingPropertiesValueProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#FormInputBindingPropertiesValueProperties", name: "FormInputBindingPropertiesValueProperties")
    FormInputValueProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#FormInputValueProperty", name: "FormInputValueProperty")
    FormInputValuePropertyBindingProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#FormInputValuePropertyBindingProperties", name: "FormInputValuePropertyBindingProperties")
    FormInputValuePropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#FormInputValuePropertyList", name: "FormInputValuePropertyList")
    FormList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#FormList", name: "FormList")
    FormName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplifyuibuilder#FormName", name: "FormName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    FormStyle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#FormStyle", name: "FormStyle")
    FormStyleConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.amplifyuibuilder#FormStyleConfig", name: "FormStyleConfig")
    FormSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#FormSummary", name: "FormSummary")
    FormSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#FormSummaryList", name: "FormSummaryList")
    GenericDataRelationshipType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplifyuibuilder#GenericDataRelationshipType", name: "GenericDataRelationshipType")
    GetCodegenJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#GetCodegenJobRequest", name: "GetCodegenJobRequest")
    GetCodegenJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#GetCodegenJobResponse", name: "GetCodegenJobResponse")
    GetComponentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#GetComponentInput", name: "GetComponentInput")
    GetComponentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#GetComponentOutput", name: "GetComponentOutput")
    GetFormInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#GetFormInput", name: "GetFormInput")
    GetFormOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#GetFormOutput", name: "GetFormOutput")
    GetMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#GetMetadataInput", name: "GetMetadataInput")
    GetMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#GetMetadataOutput", name: "GetMetadataOutput")
    GetThemeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#GetThemeInput", name: "GetThemeInput")
    GetThemeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#GetThemeOutput", name: "GetThemeOutput")
    GraphQLRenderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#GraphQLRenderConfig", name: "GraphQLRenderConfig")
    IdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#IdentifierList", name: "IdentifierList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JSModule = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplifyuibuilder#JSModule", name: "JSModule")
    JSScript = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplifyuibuilder#JSScript", name: "JSScript")
    JSTarget = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplifyuibuilder#JSTarget", name: "JSTarget")
    LabelDecorator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplifyuibuilder#LabelDecorator", name: "LabelDecorator", traits: {"smithy.api#enum" => [{"value" => "required", "name" => "REQUIRED"}, {"value" => "optional", "name" => "OPTIONAL"}, {"value" => "none", "name" => "NONE"}]})
    ListCodegenJobsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.amplifyuibuilder#ListCodegenJobsLimit", name: "ListCodegenJobsLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListCodegenJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ListCodegenJobsRequest", name: "ListCodegenJobsRequest")
    ListCodegenJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ListCodegenJobsResponse", name: "ListCodegenJobsResponse")
    ListComponentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ListComponentsInput", name: "ListComponentsInput")
    ListComponentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ListComponentsOutput", name: "ListComponentsOutput")
    ListEntityLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.amplifyuibuilder#ListEntityLimit", name: "ListEntityLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListFormsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ListFormsInput", name: "ListFormsInput")
    ListFormsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ListFormsOutput", name: "ListFormsOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListThemesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ListThemesInput", name: "ListThemesInput")
    ListThemesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ListThemesOutput", name: "ListThemesOutput")
    MutationActionSetStateParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#MutationActionSetStateParameter", name: "MutationActionSetStateParameter")
    NoApiRenderConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#NoApiRenderConfig", name: "NoApiRenderConfig")
    NumValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#NumValues", name: "NumValues")
    OperandType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplifyuibuilder#OperandType", name: "OperandType", traits: {"smithy.api#pattern" => "^boolean|string|number$"})
    Predicate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#Predicate", name: "Predicate")
    PredicateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#PredicateList", name: "PredicateList")
    PutMetadataFlagBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#PutMetadataFlagBody", name: "PutMetadataFlagBody")
    PutMetadataFlagInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#PutMetadataFlagInput", name: "PutMetadataFlagInput")
    ReactCodegenDependencies = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#ReactCodegenDependencies", name: "ReactCodegenDependencies")
    ReactStartCodegenJobData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ReactStartCodegenJobData", name: "ReactStartCodegenJobData")
    RefreshTokenInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#RefreshTokenInput", name: "RefreshTokenInput")
    RefreshTokenOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#RefreshTokenOutput", name: "RefreshTokenOutput")
    RefreshTokenRequestBody = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#RefreshTokenRequestBody", name: "RefreshTokenRequestBody")
    RelatedModelFieldsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#RelatedModelFieldsList", name: "RelatedModelFieldsList")
    ResourceConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ResourceConflictException", name: "ResourceConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SectionalElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#SectionalElement", name: "SectionalElement")
    SectionalElementMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#SectionalElementMap", name: "SectionalElementMap")
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplifyuibuilder#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SortDirection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplifyuibuilder#SortDirection", name: "SortDirection")
    SortProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#SortProperty", name: "SortProperty")
    SortPropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#SortPropertyList", name: "SortPropertyList")
    StartCodegenJobData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#StartCodegenJobData", name: "StartCodegenJobData")
    StartCodegenJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#StartCodegenJobRequest", name: "StartCodegenJobRequest")
    StartCodegenJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#StartCodegenJobResponse", name: "StartCodegenJobResponse")
    StorageAccessLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplifyuibuilder#StorageAccessLevel", name: "StorageAccessLevel")
    StrValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#StrValues", name: "StrValues")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplifyuibuilder#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplifyuibuilder#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplifyuibuilder#Tags", name: "Tags")
    Theme = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#Theme", name: "Theme", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amplifyuibuilder#ThemeResource"}]})
    ThemeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#ThemeList", name: "ThemeList")
    ThemeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplifyuibuilder#ThemeName", name: "ThemeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ThemeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ThemeSummary", name: "ThemeSummary")
    ThemeSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#ThemeSummaryList", name: "ThemeSummaryList")
    ThemeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ThemeValue", name: "ThemeValue")
    ThemeValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ThemeValues", name: "ThemeValues")
    ThemeValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#ThemeValuesList", name: "ThemeValuesList")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TokenProviders = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplifyuibuilder#TokenProviders", name: "TokenProviders", traits: {"smithy.api#enum" => [{"value" => "figma", "name" => "FIGMA", "documentation" => "The figma token provider."}]})
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateComponentData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#UpdateComponentData", name: "UpdateComponentData")
    UpdateComponentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#UpdateComponentInput", name: "UpdateComponentInput")
    UpdateComponentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#UpdateComponentOutput", name: "UpdateComponentOutput")
    UpdateFormData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#UpdateFormData", name: "UpdateFormData")
    UpdateFormInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#UpdateFormInput", name: "UpdateFormInput")
    UpdateFormOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#UpdateFormOutput", name: "UpdateFormOutput")
    UpdateThemeData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#UpdateThemeData", name: "UpdateThemeData")
    UpdateThemeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#UpdateThemeInput", name: "UpdateThemeInput")
    UpdateThemeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#UpdateThemeOutput", name: "UpdateThemeOutput")
    Uuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplifyuibuilder#Uuid", name: "Uuid")
    ValidationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#ValidationsList", name: "ValidationsList")
    ValueMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ValueMapping", name: "ValueMapping")
    ValueMappingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplifyuibuilder#ValueMappingList", name: "ValueMappingList")
    ValueMappings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplifyuibuilder#ValueMappings", name: "ValueMappings")

    ActionParameters.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperty, name: "type"))
    ActionParameters.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperty, name: "url"))
    ActionParameters.add_member(:anchor, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperty, name: "anchor"))
    ActionParameters.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperty, name: "target"))
    ActionParameters.add_member(:global, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperty, name: "global"))
    ActionParameters.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "model"))
    ActionParameters.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperty, name: "id"))
    ActionParameters.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperties, name: "fields"))
    ActionParameters.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: MutationActionSetStateParameter, name: "state"))
    ActionParameters.type = Types::ActionParameters
    ApiConfiguration.add_member(:graph_ql_config, Types::ApiConfiguration::GraphQLConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: GraphQLRenderConfig, name: "graphQLConfig"))
    ApiConfiguration.add_member(:data_store_config, Types::ApiConfiguration::DataStoreConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: DataStoreRenderConfig, name: "dataStoreConfig"))
    ApiConfiguration.add_member(:no_api_config, Types::ApiConfiguration::NoApiConfig, ::Smithy::Schema::Shapes::MemberShape.new(target: NoApiRenderConfig, name: "noApiConfig"))
    ApiConfiguration.add_member(:unknown, Types::ApiConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ApiConfiguration.type = Types::ApiConfiguration
    AssociatedFieldsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    CodegenDependencies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenDependency, name: "member")
    CodegenDependency.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    CodegenDependency.add_member(:supported_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "supportedVersion"))
    CodegenDependency.add_member(:is_sem_ver, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isSemVer"))
    CodegenDependency.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reason"))
    CodegenDependency.type = Types::CodegenDependency
    CodegenFeatureFlags.add_member(:is_relationship_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isRelationshipSupported"))
    CodegenFeatureFlags.add_member(:is_non_model_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isNonModelSupported"))
    CodegenFeatureFlags.type = Types::CodegenFeatureFlags
    CodegenGenericDataEnum.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenGenericDataEnumValuesList, name: "values", traits: {"smithy.api#required" => {}}))
    CodegenGenericDataEnum.type = Types::CodegenGenericDataEnum
    CodegenGenericDataEnumValuesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    CodegenGenericDataEnums.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    CodegenGenericDataEnums.value = ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenGenericDataEnum, name: "value")
    CodegenGenericDataField.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenGenericDataFieldDataType, name: "dataType", traits: {"smithy.api#required" => {}}))
    CodegenGenericDataField.add_member(:data_type_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dataTypeValue", traits: {"smithy.api#required" => {}}))
    CodegenGenericDataField.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "required", traits: {"smithy.api#required" => {}}))
    CodegenGenericDataField.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "readOnly", traits: {"smithy.api#required" => {}}))
    CodegenGenericDataField.add_member(:is_array, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArray", traits: {"smithy.api#required" => {}}))
    CodegenGenericDataField.add_member(:relationship, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenGenericDataRelationshipType, name: "relationship"))
    CodegenGenericDataField.type = Types::CodegenGenericDataField
    CodegenGenericDataFieldDataType.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ID", traits: {"smithy.api#enumValue" => "ID"}))
    CodegenGenericDataFieldDataType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "String"}))
    CodegenGenericDataFieldDataType.add_member(:int, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INT", traits: {"smithy.api#enumValue" => "Int"}))
    CodegenGenericDataFieldDataType.add_member(:float, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLOAT", traits: {"smithy.api#enumValue" => "Float"}))
    CodegenGenericDataFieldDataType.add_member(:aws_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_DATE", traits: {"smithy.api#enumValue" => "AWSDate"}))
    CodegenGenericDataFieldDataType.add_member(:aws_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_TIME", traits: {"smithy.api#enumValue" => "AWSTime"}))
    CodegenGenericDataFieldDataType.add_member(:aws_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_DATE_TIME", traits: {"smithy.api#enumValue" => "AWSDateTime"}))
    CodegenGenericDataFieldDataType.add_member(:aws_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_TIMESTAMP", traits: {"smithy.api#enumValue" => "AWSTimestamp"}))
    CodegenGenericDataFieldDataType.add_member(:aws_email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_EMAIL", traits: {"smithy.api#enumValue" => "AWSEmail"}))
    CodegenGenericDataFieldDataType.add_member(:aws_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_URL", traits: {"smithy.api#enumValue" => "AWSURL"}))
    CodegenGenericDataFieldDataType.add_member(:aws_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_IP_ADDRESS", traits: {"smithy.api#enumValue" => "AWSIPAddress"}))
    CodegenGenericDataFieldDataType.add_member(:boolean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOOLEAN", traits: {"smithy.api#enumValue" => "Boolean"}))
    CodegenGenericDataFieldDataType.add_member(:aws_json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_JSON", traits: {"smithy.api#enumValue" => "AWSJSON"}))
    CodegenGenericDataFieldDataType.add_member(:aws_phone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_PHONE", traits: {"smithy.api#enumValue" => "AWSPhone"}))
    CodegenGenericDataFieldDataType.add_member(:enum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENUM", traits: {"smithy.api#enumValue" => "Enum"}))
    CodegenGenericDataFieldDataType.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODEL", traits: {"smithy.api#enumValue" => "Model"}))
    CodegenGenericDataFieldDataType.add_member(:non_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_MODEL", traits: {"smithy.api#enumValue" => "NonModel"}))
    CodegenGenericDataFields.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    CodegenGenericDataFields.value = ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenGenericDataField, name: "value")
    CodegenGenericDataModel.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenGenericDataFields, name: "fields", traits: {"smithy.api#required" => {}}))
    CodegenGenericDataModel.add_member(:is_join_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isJoinTable"))
    CodegenGenericDataModel.add_member(:primary_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenPrimaryKeysList, name: "primaryKeys", traits: {"smithy.api#required" => {}}))
    CodegenGenericDataModel.type = Types::CodegenGenericDataModel
    CodegenGenericDataModels.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    CodegenGenericDataModels.value = ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenGenericDataModel, name: "value")
    CodegenGenericDataNonModel.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenGenericDataNonModelFields, name: "fields", traits: {"smithy.api#required" => {}}))
    CodegenGenericDataNonModel.type = Types::CodegenGenericDataNonModel
    CodegenGenericDataNonModelFields.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    CodegenGenericDataNonModelFields.value = ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenGenericDataField, name: "value")
    CodegenGenericDataNonModels.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    CodegenGenericDataNonModels.value = ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenGenericDataNonModel, name: "value")
    CodegenGenericDataRelationshipType.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericDataRelationshipType, name: "type", traits: {"smithy.api#required" => {}}))
    CodegenGenericDataRelationshipType.add_member(:related_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "relatedModelName", traits: {"smithy.api#required" => {}}))
    CodegenGenericDataRelationshipType.add_member(:related_model_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedModelFieldsList, name: "relatedModelFields"))
    CodegenGenericDataRelationshipType.add_member(:can_unlink_associated_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "canUnlinkAssociatedModel"))
    CodegenGenericDataRelationshipType.add_member(:related_join_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "relatedJoinFieldName"))
    CodegenGenericDataRelationshipType.add_member(:related_join_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "relatedJoinTableName"))
    CodegenGenericDataRelationshipType.add_member(:belongs_to_field_on_related_model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "belongsToFieldOnRelatedModel"))
    CodegenGenericDataRelationshipType.add_member(:associated_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedFieldsList, name: "associatedFields"))
    CodegenGenericDataRelationshipType.add_member(:is_has_many_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isHasManyIndex"))
    CodegenGenericDataRelationshipType.type = Types::CodegenGenericDataRelationshipType
    CodegenJob.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#required" => {}}))
    CodegenJob.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, name: "appId", traits: {"smithy.api#required" => {}}))
    CodegenJob.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#required" => {}}))
    CodegenJob.add_member(:render_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenJobRenderConfig, name: "renderConfig", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CodegenJob.add_member(:generic_data_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenJobGenericDataSchema, name: "genericDataSchema", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CodegenJob.add_member(:auto_generate_forms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "autoGenerateForms", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CodegenJob.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenFeatureFlags, name: "features", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CodegenJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenJobStatus, name: "status", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CodegenJob.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusMessage", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CodegenJob.add_member(:asset, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenJobAsset, name: "asset", traits: {"aws.cloudformation#cfnMutability" => "read"}))
    CodegenJob.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CodegenJob.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CodegenJob.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CodegenJob.add_member(:dependencies, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenDependencies, name: "dependencies"))
    CodegenJob.type = Types::CodegenJob
    CodegenJobAsset.add_member(:download_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "downloadUrl"))
    CodegenJobAsset.type = Types::CodegenJobAsset
    CodegenJobGenericDataSchema.add_member(:data_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenJobGenericDataSourceType, name: "dataSourceType", traits: {"smithy.api#required" => {}}))
    CodegenJobGenericDataSchema.add_member(:models, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenGenericDataModels, name: "models", traits: {"smithy.api#required" => {}}))
    CodegenJobGenericDataSchema.add_member(:enums, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenGenericDataEnums, name: "enums", traits: {"smithy.api#required" => {}}))
    CodegenJobGenericDataSchema.add_member(:non_models, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenGenericDataNonModels, name: "nonModels", traits: {"smithy.api#required" => {}}))
    CodegenJobGenericDataSchema.type = Types::CodegenJobGenericDataSchema
    CodegenJobGenericDataSourceType.add_member(:data_store, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_STORE", traits: {"smithy.api#enumValue" => "DataStore"}))
    CodegenJobRenderConfig.add_member(:react, Types::CodegenJobRenderConfig::React, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactStartCodegenJobData, name: "react"))
    CodegenJobRenderConfig.add_member(:unknown, Types::CodegenJobRenderConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CodegenJobRenderConfig.type = Types::CodegenJobRenderConfig
    CodegenJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "in_progress"}))
    CodegenJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "failed"}))
    CodegenJobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "succeeded"}))
    CodegenJobSummary.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, name: "appId", traits: {"smithy.api#required" => {}}))
    CodegenJobSummary.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#required" => {}}))
    CodegenJobSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#required" => {}}))
    CodegenJobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CodegenJobSummary.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedAt", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CodegenJobSummary.type = Types::CodegenJobSummary
    CodegenJobSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenJobSummary, name: "member")
    CodegenPrimaryKeysList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    Component.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#required" => {}}))
    Component.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#required" => {}}))
    Component.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceId"))
    Component.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#required" => {}}))
    Component.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentName, name: "name", traits: {"smithy.api#required" => {}}))
    Component.add_member(:component_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, name: "componentType", traits: {"smithy.api#required" => {}}))
    Component.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperties, name: "properties", traits: {"smithy.api#required" => {}}))
    Component.add_member(:children, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentChildList, name: "children"))
    Component.add_member(:variants, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVariants, name: "variants", traits: {"smithy.api#required" => {}}))
    Component.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentOverrides, name: "overrides", traits: {"smithy.api#required" => {}}))
    Component.add_member(:binding_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBindingProperties, name: "bindingProperties", traits: {"smithy.api#required" => {}}))
    Component.add_member(:collection_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentCollectionProperties, name: "collectionProperties"))
    Component.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Component.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedAt", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#timestampFormat" => "date-time"}))
    Component.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    Component.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentEvents, name: "events"))
    Component.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "schemaVersion"))
    Component.type = Types::Component
    ComponentBindingProperties.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    ComponentBindingProperties.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBindingPropertiesValue, name: "value")
    ComponentBindingPropertiesValue.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type"))
    ComponentBindingPropertiesValue.add_member(:binding_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBindingPropertiesValueProperties, name: "bindingProperties"))
    ComponentBindingPropertiesValue.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "defaultValue"))
    ComponentBindingPropertiesValue.type = Types::ComponentBindingPropertiesValue
    ComponentBindingPropertiesValueProperties.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "model"))
    ComponentBindingPropertiesValueProperties.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "field"))
    ComponentBindingPropertiesValueProperties.add_member(:predicates, ::Smithy::Schema::Shapes::MemberShape.new(target: PredicateList, name: "predicates"))
    ComponentBindingPropertiesValueProperties.add_member(:user_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "userAttribute"))
    ComponentBindingPropertiesValueProperties.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "bucket"))
    ComponentBindingPropertiesValueProperties.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    ComponentBindingPropertiesValueProperties.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "defaultValue"))
    ComponentBindingPropertiesValueProperties.add_member(:slot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "slotName"))
    ComponentBindingPropertiesValueProperties.type = Types::ComponentBindingPropertiesValueProperties
    ComponentChild.add_member(:component_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "componentType", traits: {"smithy.api#required" => {}}))
    ComponentChild.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ComponentChild.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperties, name: "properties", traits: {"smithy.api#required" => {}}))
    ComponentChild.add_member(:children, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentChildList, name: "children"))
    ComponentChild.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentEvents, name: "events"))
    ComponentChild.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceId"))
    ComponentChild.type = Types::ComponentChild
    ComponentChildList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentChild, name: "member")
    ComponentCollectionProperties.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    ComponentCollectionProperties.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentDataConfiguration, name: "value")
    ComponentConditionProperty.add_member(:property, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "property"))
    ComponentConditionProperty.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "field"))
    ComponentConditionProperty.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operator"))
    ComponentConditionProperty.add_member(:operand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operand"))
    ComponentConditionProperty.add_member(:then, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperty, name: "then"))
    ComponentConditionProperty.add_member(:else, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperty, name: "else"))
    ComponentConditionProperty.add_member(:operand_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operandType"))
    ComponentConditionProperty.type = Types::ComponentConditionProperty
    ComponentDataConfiguration.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "model", traits: {"smithy.api#required" => {}}))
    ComponentDataConfiguration.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: SortPropertyList, name: "sort"))
    ComponentDataConfiguration.add_member(:predicate, ::Smithy::Schema::Shapes::MemberShape.new(target: Predicate, name: "predicate"))
    ComponentDataConfiguration.add_member(:identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentifierList, name: "identifiers"))
    ComponentDataConfiguration.type = Types::ComponentDataConfiguration
    ComponentEvent.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "action"))
    ComponentEvent.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionParameters, name: "parameters"))
    ComponentEvent.add_member(:binding_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "bindingEvent"))
    ComponentEvent.type = Types::ComponentEvent
    ComponentEvents.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    ComponentEvents.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentEvent, name: "value")
    ComponentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Component, name: "member")
    ComponentOverrides.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    ComponentOverrides.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentOverridesValue, name: "value")
    ComponentOverridesValue.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    ComponentOverridesValue.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value")
    ComponentProperties.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    ComponentProperties.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperty, name: "value")
    ComponentProperty.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    ComponentProperty.add_member(:binding_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPropertyBindingProperties, name: "bindingProperties"))
    ComponentProperty.add_member(:collection_binding_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPropertyBindingProperties, name: "collectionBindingProperties"))
    ComponentProperty.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "defaultValue"))
    ComponentProperty.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "model"))
    ComponentProperty.add_member(:bindings, ::Smithy::Schema::Shapes::MemberShape.new(target: FormBindings, name: "bindings"))
    ComponentProperty.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "event"))
    ComponentProperty.add_member(:user_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "userAttribute"))
    ComponentProperty.add_member(:concat, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentPropertyList, name: "concat"))
    ComponentProperty.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentConditionProperty, name: "condition"))
    ComponentProperty.add_member(:configured, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "configured"))
    ComponentProperty.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type"))
    ComponentProperty.add_member(:imported_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "importedValue"))
    ComponentProperty.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "componentName"))
    ComponentProperty.add_member(:property, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "property"))
    ComponentProperty.type = Types::ComponentProperty
    ComponentPropertyBindingProperties.add_member(:property, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "property", traits: {"smithy.api#required" => {}}))
    ComponentPropertyBindingProperties.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "field"))
    ComponentPropertyBindingProperties.type = Types::ComponentPropertyBindingProperties
    ComponentPropertyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperty, name: "member")
    ComponentSummary.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentName, name: "name", traits: {"smithy.api#required" => {}}))
    ComponentSummary.add_member(:component_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, name: "componentType", traits: {"smithy.api#required" => {}}))
    ComponentSummary.type = Types::ComponentSummary
    ComponentSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentSummary, name: "member")
    ComponentVariant.add_member(:variant_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVariantValues, name: "variantValues"))
    ComponentVariant.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentOverrides, name: "overrides"))
    ComponentVariant.type = Types::ComponentVariant
    ComponentVariantValues.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    ComponentVariantValues.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value")
    ComponentVariants.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVariant, name: "member")
    CreateComponentData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateComponentData.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceId"))
    CreateComponentData.add_member(:component_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, name: "componentType", traits: {"smithy.api#required" => {}}))
    CreateComponentData.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperties, name: "properties", traits: {"smithy.api#required" => {}}))
    CreateComponentData.add_member(:children, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentChildList, name: "children"))
    CreateComponentData.add_member(:variants, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVariants, name: "variants", traits: {"smithy.api#required" => {}}))
    CreateComponentData.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentOverrides, name: "overrides", traits: {"smithy.api#required" => {}}))
    CreateComponentData.add_member(:binding_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBindingProperties, name: "bindingProperties", traits: {"smithy.api#required" => {}}))
    CreateComponentData.add_member(:collection_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentCollectionProperties, name: "collectionProperties"))
    CreateComponentData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateComponentData.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentEvents, name: "events"))
    CreateComponentData.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "schemaVersion"))
    CreateComponentData.type = Types::CreateComponentData
    CreateComponentInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateComponentInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateComponentInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    CreateComponentInput.add_member(:component_to_create, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateComponentData, name: "componentToCreate", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateComponentInput[:http_payload] = :component_to_create
    CreateComponentInput[:http_payload_member] = CreateComponentInput.member(:component_to_create)
    CreateComponentInput.type = Types::CreateComponentInput
    CreateComponentOutput.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Component, name: "entity", traits: {"smithy.api#httpPayload" => {}}))
    CreateComponentOutput[:http_payload] = :entity
    CreateComponentOutput[:http_payload_member] = CreateComponentOutput.member(:entity)
    CreateComponentOutput.type = Types::CreateComponentOutput
    CreateFormData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FormName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateFormData.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FormDataTypeConfig, name: "dataType", traits: {"smithy.api#required" => {}}))
    CreateFormData.add_member(:form_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FormActionType, name: "formActionType", traits: {"smithy.api#required" => {}}))
    CreateFormData.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldsMap, name: "fields", traits: {"smithy.api#required" => {}}))
    CreateFormData.add_member(:style, ::Smithy::Schema::Shapes::MemberShape.new(target: FormStyle, name: "style", traits: {"smithy.api#required" => {}}))
    CreateFormData.add_member(:sectional_elements, ::Smithy::Schema::Shapes::MemberShape.new(target: SectionalElementMap, name: "sectionalElements", traits: {"smithy.api#required" => {}}))
    CreateFormData.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "schemaVersion", traits: {"smithy.api#required" => {}}))
    CreateFormData.add_member(:cta, ::Smithy::Schema::Shapes::MemberShape.new(target: FormCTA, name: "cta"))
    CreateFormData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateFormData.add_member(:label_decorator, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelDecorator, name: "labelDecorator"))
    CreateFormData.type = Types::CreateFormData
    CreateFormInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFormInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFormInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    CreateFormInput.add_member(:form_to_create, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateFormData, name: "formToCreate", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateFormInput[:http_payload] = :form_to_create
    CreateFormInput[:http_payload_member] = CreateFormInput.member(:form_to_create)
    CreateFormInput.type = Types::CreateFormInput
    CreateFormOutput.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Form, name: "entity", traits: {"smithy.api#httpPayload" => {}}))
    CreateFormOutput[:http_payload] = :entity
    CreateFormOutput[:http_payload_member] = CreateFormOutput.member(:entity)
    CreateFormOutput.type = Types::CreateFormOutput
    CreateThemeData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateThemeData.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeValuesList, name: "values", traits: {"smithy.api#required" => {}}))
    CreateThemeData.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeValuesList, name: "overrides"))
    CreateThemeData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateThemeData.type = Types::CreateThemeData
    CreateThemeInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateThemeInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateThemeInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    CreateThemeInput.add_member(:theme_to_create, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateThemeData, name: "themeToCreate", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateThemeInput[:http_payload] = :theme_to_create
    CreateThemeInput[:http_payload_member] = CreateThemeInput.member(:theme_to_create)
    CreateThemeInput.type = Types::CreateThemeInput
    CreateThemeOutput.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Theme, name: "entity", traits: {"smithy.api#httpPayload" => {}}))
    CreateThemeOutput[:http_payload] = :entity
    CreateThemeOutput[:http_payload_member] = CreateThemeOutput.member(:entity)
    CreateThemeOutput.type = Types::CreateThemeOutput
    DataStoreRenderConfig.type = Types::DataStoreRenderConfig
    DeleteComponentInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteComponentInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteComponentInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteComponentInput.type = Types::DeleteComponentInput
    DeleteFormInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFormInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFormInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFormInput.type = Types::DeleteFormInput
    DeleteThemeInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteThemeInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteThemeInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteThemeInput.type = Types::DeleteThemeInput
    ExchangeCodeForTokenInput.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenProviders, name: "provider", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExchangeCodeForTokenInput.add_member(:request, ::Smithy::Schema::Shapes::MemberShape.new(target: ExchangeCodeForTokenRequestBody, name: "request", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ExchangeCodeForTokenInput[:http_payload] = :request
    ExchangeCodeForTokenInput[:http_payload_member] = ExchangeCodeForTokenInput.member(:request)
    ExchangeCodeForTokenInput.type = Types::ExchangeCodeForTokenInput
    ExchangeCodeForTokenOutput.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "accessToken", traits: {"smithy.api#required" => {}}))
    ExchangeCodeForTokenOutput.add_member(:expires_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "expiresIn", traits: {"smithy.api#required" => {}}))
    ExchangeCodeForTokenOutput.add_member(:refresh_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "refreshToken", traits: {"smithy.api#required" => {}}))
    ExchangeCodeForTokenOutput.type = Types::ExchangeCodeForTokenOutput
    ExchangeCodeForTokenRequestBody.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "code", traits: {"smithy.api#required" => {}}))
    ExchangeCodeForTokenRequestBody.add_member(:redirect_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "redirectUri", traits: {"smithy.api#required" => {}}))
    ExchangeCodeForTokenRequestBody.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "clientId"))
    ExchangeCodeForTokenRequestBody.type = Types::ExchangeCodeForTokenRequestBody
    ExportComponentsInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportComponentsInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportComponentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ExportComponentsInput.type = Types::ExportComponentsInput
    ExportComponentsOutput.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentList, name: "entities", traits: {"smithy.api#required" => {}}))
    ExportComponentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ExportComponentsOutput.type = Types::ExportComponentsOutput
    ExportFormsInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportFormsInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportFormsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ExportFormsInput.type = Types::ExportFormsInput
    ExportFormsOutput.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: FormList, name: "entities", traits: {"smithy.api#required" => {}}))
    ExportFormsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ExportFormsOutput.type = Types::ExportFormsOutput
    ExportThemesInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportThemesInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportThemesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ExportThemesInput.type = Types::ExportThemesInput
    ExportThemesOutput.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeList, name: "entities", traits: {"smithy.api#required" => {}}))
    ExportThemesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ExportThemesOutput.type = Types::ExportThemesOutput
    FeaturesMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    FeaturesMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value")
    FieldConfig.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "label"))
    FieldConfig.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldPosition, name: "position"))
    FieldConfig.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "excluded"))
    FieldConfig.add_member(:input_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldInputConfig, name: "inputType"))
    FieldConfig.add_member(:validations, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationsList, name: "validations"))
    FieldConfig.type = Types::FieldConfig
    FieldInputConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type", traits: {"smithy.api#required" => {}}))
    FieldInputConfig.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "required"))
    FieldInputConfig.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "readOnly"))
    FieldInputConfig.add_member(:placeholder, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "placeholder"))
    FieldInputConfig.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "defaultValue"))
    FieldInputConfig.add_member(:descriptive_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "descriptiveText"))
    FieldInputConfig.add_member(:default_checked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "defaultChecked"))
    FieldInputConfig.add_member(:default_country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "defaultCountryCode"))
    FieldInputConfig.add_member(:value_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueMappings, name: "valueMappings"))
    FieldInputConfig.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    FieldInputConfig.add_member(:min_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "minValue"))
    FieldInputConfig.add_member(:max_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "maxValue"))
    FieldInputConfig.add_member(:step, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Float, name: "step"))
    FieldInputConfig.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    FieldInputConfig.add_member(:is_array, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isArray"))
    FieldInputConfig.add_member(:file_uploader_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FileUploaderFieldConfig, name: "fileUploaderConfig"))
    FieldInputConfig.type = Types::FieldInputConfig
    FieldPosition.add_member(:fixed, Types::FieldPosition::Fixed, ::Smithy::Schema::Shapes::MemberShape.new(target: FixedPosition, name: "fixed"))
    FieldPosition.add_member(:right_of, Types::FieldPosition::RightOf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "rightOf"))
    FieldPosition.add_member(:below, Types::FieldPosition::Below, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "below"))
    FieldPosition.add_member(:unknown, Types::FieldPosition::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FieldPosition.type = Types::FieldPosition
    FieldValidationConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type", traits: {"smithy.api#required" => {}}))
    FieldValidationConfiguration.add_member(:str_values, ::Smithy::Schema::Shapes::MemberShape.new(target: StrValues, name: "strValues"))
    FieldValidationConfiguration.add_member(:num_values, ::Smithy::Schema::Shapes::MemberShape.new(target: NumValues, name: "numValues"))
    FieldValidationConfiguration.add_member(:validation_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "validationMessage"))
    FieldValidationConfiguration.type = Types::FieldValidationConfiguration
    FieldsMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    FieldsMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: FieldConfig, name: "value")
    FileUploaderFieldConfig.add_member(:access_level, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageAccessLevel, name: "accessLevel", traits: {"smithy.api#required" => {}}))
    FileUploaderFieldConfig.add_member(:accepted_file_types, ::Smithy::Schema::Shapes::MemberShape.new(target: StrValues, name: "acceptedFileTypes", traits: {"smithy.api#required" => {}}))
    FileUploaderFieldConfig.add_member(:show_thumbnails, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "showThumbnails"))
    FileUploaderFieldConfig.add_member(:is_resumable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isResumable"))
    FileUploaderFieldConfig.add_member(:max_file_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxFileCount"))
    FileUploaderFieldConfig.add_member(:max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxSize"))
    FileUploaderFieldConfig.type = Types::FileUploaderFieldConfig
    FixedPosition.add_member(:first, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIRST", traits: {"smithy.api#enumValue" => "first"}))
    Form.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#required" => {}}))
    Form.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#required" => {}}))
    Form.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#required" => {}}))
    Form.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FormName, name: "name", traits: {"smithy.api#required" => {}}))
    Form.add_member(:form_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FormActionType, name: "formActionType", traits: {"smithy.api#required" => {}}))
    Form.add_member(:style, ::Smithy::Schema::Shapes::MemberShape.new(target: FormStyle, name: "style", traits: {"smithy.api#required" => {}}))
    Form.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FormDataTypeConfig, name: "dataType", traits: {"smithy.api#required" => {}}))
    Form.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldsMap, name: "fields", traits: {"smithy.api#required" => {}}))
    Form.add_member(:sectional_elements, ::Smithy::Schema::Shapes::MemberShape.new(target: SectionalElementMap, name: "sectionalElements", traits: {"smithy.api#required" => {}}))
    Form.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "schemaVersion", traits: {"smithy.api#required" => {}}))
    Form.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    Form.add_member(:cta, ::Smithy::Schema::Shapes::MemberShape.new(target: FormCTA, name: "cta"))
    Form.add_member(:label_decorator, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelDecorator, name: "labelDecorator"))
    Form.type = Types::Form
    FormActionType.add_member(:create, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE", traits: {"smithy.api#enumValue" => "create"}))
    FormActionType.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE", traits: {"smithy.api#enumValue" => "update"}))
    FormBindingElement.add_member(:element, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "element", traits: {"smithy.api#required" => {}}))
    FormBindingElement.add_member(:property, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "property", traits: {"smithy.api#required" => {}}))
    FormBindingElement.type = Types::FormBindingElement
    FormBindings.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    FormBindings.value = ::Smithy::Schema::Shapes::MemberShape.new(target: FormBindingElement, name: "value")
    FormButton.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "excluded"))
    FormButton.add_member(:children, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "children"))
    FormButton.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldPosition, name: "position"))
    FormButton.type = Types::FormButton
    FormButtonsPosition.add_member(:top, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOP", traits: {"smithy.api#enumValue" => "top"}))
    FormButtonsPosition.add_member(:bottom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOTTOM", traits: {"smithy.api#enumValue" => "bottom"}))
    FormButtonsPosition.add_member(:top_and_bottom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOP_AND_BOTTOM", traits: {"smithy.api#enumValue" => "top_and_bottom"}))
    FormCTA.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: FormButtonsPosition, name: "position"))
    FormCTA.add_member(:clear, ::Smithy::Schema::Shapes::MemberShape.new(target: FormButton, name: "clear"))
    FormCTA.add_member(:cancel, ::Smithy::Schema::Shapes::MemberShape.new(target: FormButton, name: "cancel"))
    FormCTA.add_member(:submit, ::Smithy::Schema::Shapes::MemberShape.new(target: FormButton, name: "submit"))
    FormCTA.type = Types::FormCTA
    FormDataTypeConfig.add_member(:data_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FormDataSourceType, name: "dataSourceType", traits: {"smithy.api#required" => {}}))
    FormDataTypeConfig.add_member(:data_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dataTypeName", traits: {"smithy.api#required" => {}}))
    FormDataTypeConfig.type = Types::FormDataTypeConfig
    FormInputBindingProperties.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    FormInputBindingProperties.value = ::Smithy::Schema::Shapes::MemberShape.new(target: FormInputBindingPropertiesValue, name: "value")
    FormInputBindingPropertiesValue.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type"))
    FormInputBindingPropertiesValue.add_member(:binding_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: FormInputBindingPropertiesValueProperties, name: "bindingProperties"))
    FormInputBindingPropertiesValue.type = Types::FormInputBindingPropertiesValue
    FormInputBindingPropertiesValueProperties.add_member(:model, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "model"))
    FormInputBindingPropertiesValueProperties.type = Types::FormInputBindingPropertiesValueProperties
    FormInputValueProperty.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    FormInputValueProperty.add_member(:binding_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: FormInputValuePropertyBindingProperties, name: "bindingProperties"))
    FormInputValueProperty.add_member(:concat, ::Smithy::Schema::Shapes::MemberShape.new(target: FormInputValuePropertyList, name: "concat"))
    FormInputValueProperty.type = Types::FormInputValueProperty
    FormInputValuePropertyBindingProperties.add_member(:property, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "property", traits: {"smithy.api#required" => {}}))
    FormInputValuePropertyBindingProperties.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "field"))
    FormInputValuePropertyBindingProperties.type = Types::FormInputValuePropertyBindingProperties
    FormInputValuePropertyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FormInputValueProperty, name: "member")
    FormList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Form, name: "member")
    FormStyle.add_member(:horizontal_gap, ::Smithy::Schema::Shapes::MemberShape.new(target: FormStyleConfig, name: "horizontalGap"))
    FormStyle.add_member(:vertical_gap, ::Smithy::Schema::Shapes::MemberShape.new(target: FormStyleConfig, name: "verticalGap"))
    FormStyle.add_member(:outer_padding, ::Smithy::Schema::Shapes::MemberShape.new(target: FormStyleConfig, name: "outerPadding"))
    FormStyle.type = Types::FormStyle
    FormStyleConfig.add_member(:token_reference, Types::FormStyleConfig::TokenReference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tokenReference"))
    FormStyleConfig.add_member(:value, Types::FormStyleConfig::Value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    FormStyleConfig.add_member(:unknown, Types::FormStyleConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FormStyleConfig.type = Types::FormStyleConfig
    FormSummary.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#required" => {}}))
    FormSummary.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FormDataTypeConfig, name: "dataType", traits: {"smithy.api#required" => {}}))
    FormSummary.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#required" => {}}))
    FormSummary.add_member(:form_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FormActionType, name: "formActionType", traits: {"smithy.api#required" => {}}))
    FormSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#required" => {}}))
    FormSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FormName, name: "name", traits: {"smithy.api#required" => {}}))
    FormSummary.type = Types::FormSummary
    FormSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FormSummary, name: "member")
    GenericDataRelationshipType.add_member(:has_many, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HAS_MANY", traits: {"smithy.api#enumValue" => "HAS_MANY"}))
    GenericDataRelationshipType.add_member(:has_one, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HAS_ONE", traits: {"smithy.api#enumValue" => "HAS_ONE"}))
    GenericDataRelationshipType.add_member(:belongs_to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BELONGS_TO", traits: {"smithy.api#enumValue" => "BELONGS_TO"}))
    GetCodegenJobRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCodegenJobRequest.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCodegenJobRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCodegenJobRequest.type = Types::GetCodegenJobRequest
    GetCodegenJobResponse.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenJob, name: "job", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpPayload" => {}}))
    GetCodegenJobResponse[:http_payload] = :job
    GetCodegenJobResponse[:http_payload_member] = GetCodegenJobResponse.member(:job)
    GetCodegenJobResponse.type = Types::GetCodegenJobResponse
    GetComponentInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentInput.type = Types::GetComponentInput
    GetComponentOutput.add_member(:component, ::Smithy::Schema::Shapes::MemberShape.new(target: Component, name: "component", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpPayload" => {}}))
    GetComponentOutput[:http_payload] = :component
    GetComponentOutput[:http_payload_member] = GetComponentOutput.member(:component)
    GetComponentOutput.type = Types::GetComponentOutput
    GetFormInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFormInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFormInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFormInput.type = Types::GetFormInput
    GetFormOutput.add_member(:form, ::Smithy::Schema::Shapes::MemberShape.new(target: Form, name: "form", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpPayload" => {}}))
    GetFormOutput[:http_payload] = :form
    GetFormOutput[:http_payload_member] = GetFormOutput.member(:form)
    GetFormOutput.type = Types::GetFormOutput
    GetMetadataInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMetadataInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMetadataInput.type = Types::GetMetadataInput
    GetMetadataOutput.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: FeaturesMap, name: "features", traits: {"smithy.api#required" => {}}))
    GetMetadataOutput.type = Types::GetMetadataOutput
    GetThemeInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetThemeInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetThemeInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetThemeInput.type = Types::GetThemeInput
    GetThemeOutput.add_member(:theme, ::Smithy::Schema::Shapes::MemberShape.new(target: Theme, name: "theme", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpPayload" => {}}))
    GetThemeOutput[:http_payload] = :theme
    GetThemeOutput[:http_payload_member] = GetThemeOutput.member(:theme)
    GetThemeOutput.type = Types::GetThemeOutput
    GraphQLRenderConfig.add_member(:types_file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "typesFilePath", traits: {"smithy.api#required" => {}}))
    GraphQLRenderConfig.add_member(:queries_file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "queriesFilePath", traits: {"smithy.api#required" => {}}))
    GraphQLRenderConfig.add_member(:mutations_file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "mutationsFilePath", traits: {"smithy.api#required" => {}}))
    GraphQLRenderConfig.add_member(:subscriptions_file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "subscriptionsFilePath", traits: {"smithy.api#required" => {}}))
    GraphQLRenderConfig.add_member(:fragments_file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fragmentsFilePath", traits: {"smithy.api#required" => {}}))
    GraphQLRenderConfig.type = Types::GraphQLRenderConfig
    IdentifierList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InvalidParameterException.type = Types::InvalidParameterException
    JSModule.add_member(:es2020, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES2020", traits: {"smithy.api#enumValue" => "es2020"}))
    JSModule.add_member(:esnext, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ESNEXT", traits: {"smithy.api#enumValue" => "esnext"}))
    JSScript.add_member(:jsx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSX", traits: {"smithy.api#enumValue" => "jsx"}))
    JSScript.add_member(:tsx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TSX", traits: {"smithy.api#enumValue" => "tsx"}))
    JSScript.add_member(:js, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JS", traits: {"smithy.api#enumValue" => "js"}))
    JSTarget.add_member(:es2015, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES2015", traits: {"smithy.api#enumValue" => "es2015"}))
    JSTarget.add_member(:es2020, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES2020", traits: {"smithy.api#enumValue" => "es2020"}))
    ListCodegenJobsRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCodegenJobsRequest.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCodegenJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCodegenJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCodegenJobsLimit, name: "maxResults", traits: {"smithy.api#default" => 100, "smithy.api#httpQuery" => "maxResults"}))
    ListCodegenJobsRequest.type = Types::ListCodegenJobsRequest
    ListCodegenJobsResponse.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenJobSummaryList, name: "entities", traits: {"smithy.api#required" => {}}))
    ListCodegenJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListCodegenJobsResponse.type = Types::ListCodegenJobsResponse
    ListComponentsInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListComponentsInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListComponentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListComponentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEntityLimit, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListComponentsInput.type = Types::ListComponentsInput
    ListComponentsOutput.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentSummaryList, name: "entities", traits: {"smithy.api#required" => {}}))
    ListComponentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListComponentsOutput.type = Types::ListComponentsOutput
    ListFormsInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFormsInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFormsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFormsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEntityLimit, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListFormsInput.type = Types::ListFormsInput
    ListFormsOutput.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: FormSummaryList, name: "entities", traits: {"smithy.api#required" => {}}))
    ListFormsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListFormsOutput.type = Types::ListFormsOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListThemesInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListThemesInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListThemesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListThemesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEntityLimit, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListThemesInput.type = Types::ListThemesInput
    ListThemesOutput.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeSummaryList, name: "entities", traits: {"smithy.api#required" => {}}))
    ListThemesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListThemesOutput.type = Types::ListThemesOutput
    MutationActionSetStateParameter.add_member(:component_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "componentName", traits: {"smithy.api#required" => {}}))
    MutationActionSetStateParameter.add_member(:property, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "property", traits: {"smithy.api#required" => {}}))
    MutationActionSetStateParameter.add_member(:set, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperty, name: "set", traits: {"smithy.api#required" => {}}))
    MutationActionSetStateParameter.type = Types::MutationActionSetStateParameter
    NoApiRenderConfig.type = Types::NoApiRenderConfig
    NumValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "member")
    Predicate.add_member(:or, ::Smithy::Schema::Shapes::MemberShape.new(target: PredicateList, name: "or"))
    Predicate.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: PredicateList, name: "and"))
    Predicate.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "field"))
    Predicate.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operator"))
    Predicate.add_member(:operand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operand"))
    Predicate.add_member(:operand_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperandType, name: "operandType"))
    Predicate.type = Types::Predicate
    PredicateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Predicate, name: "member")
    PutMetadataFlagBody.add_member(:new_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "newValue", traits: {"smithy.api#required" => {}}))
    PutMetadataFlagBody.type = Types::PutMetadataFlagBody
    PutMetadataFlagInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMetadataFlagInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMetadataFlagInput.add_member(:feature_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "featureName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMetadataFlagInput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: PutMetadataFlagBody, name: "body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutMetadataFlagInput[:http_payload] = :body
    PutMetadataFlagInput[:http_payload_member] = PutMetadataFlagInput.member(:body)
    PutMetadataFlagInput.type = Types::PutMetadataFlagInput
    ReactCodegenDependencies.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    ReactCodegenDependencies.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value")
    ReactStartCodegenJobData.add_member(:module, ::Smithy::Schema::Shapes::MemberShape.new(target: JSModule, name: "module"))
    ReactStartCodegenJobData.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: JSTarget, name: "target"))
    ReactStartCodegenJobData.add_member(:script, ::Smithy::Schema::Shapes::MemberShape.new(target: JSScript, name: "script"))
    ReactStartCodegenJobData.add_member(:render_type_declarations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "renderTypeDeclarations", traits: {"smithy.api#default" => false}))
    ReactStartCodegenJobData.add_member(:inline_source_map, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "inlineSourceMap", traits: {"smithy.api#default" => false}))
    ReactStartCodegenJobData.add_member(:api_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiConfiguration, name: "apiConfiguration"))
    ReactStartCodegenJobData.add_member(:dependencies, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactCodegenDependencies, name: "dependencies"))
    ReactStartCodegenJobData.type = Types::ReactStartCodegenJobData
    RefreshTokenInput.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: TokenProviders, name: "provider", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RefreshTokenInput.add_member(:refresh_token_body, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshTokenRequestBody, name: "refreshTokenBody", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    RefreshTokenInput[:http_payload] = :refresh_token_body
    RefreshTokenInput[:http_payload_member] = RefreshTokenInput.member(:refresh_token_body)
    RefreshTokenInput.type = Types::RefreshTokenInput
    RefreshTokenOutput.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "accessToken", traits: {"smithy.api#required" => {}}))
    RefreshTokenOutput.add_member(:expires_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "expiresIn", traits: {"smithy.api#required" => {}}))
    RefreshTokenOutput.type = Types::RefreshTokenOutput
    RefreshTokenRequestBody.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "token", traits: {"smithy.api#required" => {}}))
    RefreshTokenRequestBody.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "clientId"))
    RefreshTokenRequestBody.type = Types::RefreshTokenRequestBody
    RelatedModelFieldsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    ResourceConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceConflictException.type = Types::ResourceConflictException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SectionalElement.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "type", traits: {"smithy.api#required" => {}}))
    SectionalElement.add_member(:position, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldPosition, name: "position"))
    SectionalElement.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "text"))
    SectionalElement.add_member(:level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "level"))
    SectionalElement.add_member(:orientation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "orientation"))
    SectionalElement.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "excluded"))
    SectionalElement.type = Types::SectionalElement
    SectionalElementMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key")
    SectionalElementMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: SectionalElement, name: "value")
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SortDirection.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    SortDirection.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    SortProperty.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "field", traits: {"smithy.api#required" => {}}))
    SortProperty.add_member(:direction, ::Smithy::Schema::Shapes::MemberShape.new(target: SortDirection, name: "direction", traits: {"smithy.api#required" => {}}))
    SortProperty.type = Types::SortProperty
    SortPropertyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SortProperty, name: "member")
    StartCodegenJobData.add_member(:render_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenJobRenderConfig, name: "renderConfig", traits: {"smithy.api#required" => {}}))
    StartCodegenJobData.add_member(:generic_data_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenJobGenericDataSchema, name: "genericDataSchema"))
    StartCodegenJobData.add_member(:auto_generate_forms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "autoGenerateForms"))
    StartCodegenJobData.add_member(:features, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenFeatureFlags, name: "features"))
    StartCodegenJobData.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    StartCodegenJobData.type = Types::StartCodegenJobData
    StartCodegenJobRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartCodegenJobRequest.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartCodegenJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    StartCodegenJobRequest.add_member(:codegen_job_to_create, ::Smithy::Schema::Shapes::MemberShape.new(target: StartCodegenJobData, name: "codegenJobToCreate", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    StartCodegenJobRequest[:http_payload] = :codegen_job_to_create
    StartCodegenJobRequest[:http_payload_member] = StartCodegenJobRequest.member(:codegen_job_to_create)
    StartCodegenJobRequest.type = Types::StartCodegenJobRequest
    StartCodegenJobResponse.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: CodegenJob, name: "entity", traits: {"smithy.api#httpPayload" => {}}))
    StartCodegenJobResponse[:http_payload] = :entity
    StartCodegenJobResponse[:http_payload_member] = StartCodegenJobResponse.member(:entity)
    StartCodegenJobResponse.type = Types::StartCodegenJobResponse
    StorageAccessLevel.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC", traits: {"smithy.api#enumValue" => "public"}))
    StorageAccessLevel.add_member(:protected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROTECTED", traits: {"smithy.api#enumValue" => "protected"}))
    StorageAccessLevel.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "private"}))
    StrValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key")
    Tags.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value")
    Theme.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#required" => {}}))
    Theme.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#required" => {}}))
    Theme.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#required" => {}}))
    Theme.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeName, name: "name", traits: {"smithy.api#required" => {}}))
    Theme.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Theme.add_member(:modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modifiedAt", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#timestampFormat" => "date-time"}))
    Theme.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeValuesList, name: "values", traits: {"smithy.api#required" => {}}))
    Theme.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeValuesList, name: "overrides"))
    Theme.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    Theme.type = Types::Theme
    ThemeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Theme, name: "member")
    ThemeSummary.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#required" => {}}))
    ThemeSummary.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#required" => {}}))
    ThemeSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#required" => {}}))
    ThemeSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeName, name: "name", traits: {"smithy.api#required" => {}}))
    ThemeSummary.type = Types::ThemeSummary
    ThemeSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeSummary, name: "member")
    ThemeValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    ThemeValue.add_member(:children, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeValuesList, name: "children"))
    ThemeValue.type = Types::ThemeValue
    ThemeValues.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    ThemeValues.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeValue, name: "value"))
    ThemeValues.type = Types::ThemeValues
    ThemeValuesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeValues, name: "member")
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateComponentData.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id"))
    UpdateComponentData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentName, name: "name"))
    UpdateComponentData.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sourceId"))
    UpdateComponentData.add_member(:component_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, name: "componentType"))
    UpdateComponentData.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentProperties, name: "properties"))
    UpdateComponentData.add_member(:children, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentChildList, name: "children"))
    UpdateComponentData.add_member(:variants, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVariants, name: "variants"))
    UpdateComponentData.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentOverrides, name: "overrides"))
    UpdateComponentData.add_member(:binding_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBindingProperties, name: "bindingProperties"))
    UpdateComponentData.add_member(:collection_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentCollectionProperties, name: "collectionProperties"))
    UpdateComponentData.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentEvents, name: "events"))
    UpdateComponentData.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "schemaVersion"))
    UpdateComponentData.type = Types::UpdateComponentData
    UpdateComponentInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateComponentInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateComponentInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateComponentInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    UpdateComponentInput.add_member(:updated_component, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateComponentData, name: "updatedComponent", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateComponentInput[:http_payload] = :updated_component
    UpdateComponentInput[:http_payload_member] = UpdateComponentInput.member(:updated_component)
    UpdateComponentInput.type = Types::UpdateComponentInput
    UpdateComponentOutput.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Component, name: "entity", traits: {"smithy.api#httpPayload" => {}}))
    UpdateComponentOutput[:http_payload] = :entity
    UpdateComponentOutput[:http_payload_member] = UpdateComponentOutput.member(:entity)
    UpdateComponentOutput.type = Types::UpdateComponentOutput
    UpdateFormData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FormName, name: "name"))
    UpdateFormData.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FormDataTypeConfig, name: "dataType"))
    UpdateFormData.add_member(:form_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FormActionType, name: "formActionType"))
    UpdateFormData.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldsMap, name: "fields"))
    UpdateFormData.add_member(:style, ::Smithy::Schema::Shapes::MemberShape.new(target: FormStyle, name: "style"))
    UpdateFormData.add_member(:sectional_elements, ::Smithy::Schema::Shapes::MemberShape.new(target: SectionalElementMap, name: "sectionalElements"))
    UpdateFormData.add_member(:schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "schemaVersion"))
    UpdateFormData.add_member(:cta, ::Smithy::Schema::Shapes::MemberShape.new(target: FormCTA, name: "cta"))
    UpdateFormData.add_member(:label_decorator, ::Smithy::Schema::Shapes::MemberShape.new(target: LabelDecorator, name: "labelDecorator"))
    UpdateFormData.type = Types::UpdateFormData
    UpdateFormInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFormInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFormInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFormInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    UpdateFormInput.add_member(:updated_form, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateFormData, name: "updatedForm", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateFormInput[:http_payload] = :updated_form
    UpdateFormInput[:http_payload_member] = UpdateFormInput.member(:updated_form)
    UpdateFormInput.type = Types::UpdateFormInput
    UpdateFormOutput.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Form, name: "entity", traits: {"smithy.api#httpPayload" => {}}))
    UpdateFormOutput[:http_payload] = :entity
    UpdateFormOutput[:http_payload_member] = UpdateFormOutput.member(:entity)
    UpdateFormOutput.type = Types::UpdateFormOutput
    UpdateThemeData.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id"))
    UpdateThemeData.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeName, name: "name"))
    UpdateThemeData.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeValuesList, name: "values", traits: {"smithy.api#required" => {}}))
    UpdateThemeData.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeValuesList, name: "overrides"))
    UpdateThemeData.type = Types::UpdateThemeData
    UpdateThemeInput.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateThemeInput.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateThemeInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Uuid, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateThemeInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    UpdateThemeInput.add_member(:updated_theme, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateThemeData, name: "updatedTheme", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateThemeInput[:http_payload] = :updated_theme
    UpdateThemeInput[:http_payload_member] = UpdateThemeInput.member(:updated_theme)
    UpdateThemeInput.type = Types::UpdateThemeInput
    UpdateThemeOutput.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: Theme, name: "entity", traits: {"smithy.api#httpPayload" => {}}))
    UpdateThemeOutput[:http_payload] = :entity
    UpdateThemeOutput[:http_payload_member] = UpdateThemeOutput.member(:entity)
    UpdateThemeOutput.type = Types::UpdateThemeOutput
    ValidationsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FieldValidationConfiguration, name: "member")
    ValueMapping.add_member(:display_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FormInputValueProperty, name: "displayValue"))
    ValueMapping.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FormInputValueProperty, name: "value", traits: {"smithy.api#required" => {}}))
    ValueMapping.type = Types::ValueMapping
    ValueMappingList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValueMapping, name: "member")
    ValueMappings.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueMappingList, name: "values", traits: {"smithy.api#required" => {}}))
    ValueMappings.add_member(:binding_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: FormInputBindingProperties, name: "bindingProperties"))
    ValueMappings.type = Types::ValueMappings

    AmplifyUIBuilder = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.amplifyuibuilder#AmplifyUIBuilder"
      service.name = "AmplifyUIBuilder"
      service.version = "2021-08-11"
      service.traits = {"aws.api#service" => {"sdkId" => "AmplifyUIBuilder", "arnNamespace" => "amplifyuibuilder", "cloudFormationName" => "AmplifyUIBuilder", "cloudTrailEventSource" => "amplifyuibuilder.amazonaws.com"}, "aws.api#tagEnabled" => {"tagOnCreate" => true}, "aws.auth#sigv4" => {"name" => "amplifyuibuilder"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access based on the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "AWS Amplify UI Builder"}
      service.add_operation(:create_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#CreateComponent"
        operation.name = "CreateComponent"
        operation.input = CreateComponentInput
        operation.output = CreateComponentOutput
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceConflictException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#requiredActions" => ["amplify:GetApp", "amplifyuibuilder:GetComponent", "amplifyuibuilder:TagResource"], "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/components", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_form, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#CreateForm"
        operation.name = "CreateForm"
        operation.input = CreateFormInput
        operation.output = CreateFormOutput
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceConflictException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp", "amplifyuibuilder:GetForm", "amplifyuibuilder:TagResource", "amplifyuibuilder:UntagResource"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/forms", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_theme, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#CreateTheme"
        operation.name = "CreateTheme"
        operation.input = CreateThemeInput
        operation.output = CreateThemeOutput
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceConflictException
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp", "amplifyuibuilder:GetTheme", "amplifyuibuilder:TagResource"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/themes", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#DeleteComponent"
        operation.name = "DeleteComponent"
        operation.input = DeleteComponentInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#requiredActions" => ["amplify:GetApp", "amplifyuibuilder:UntagResource"], "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/components/{id}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_form, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#DeleteForm"
        operation.name = "DeleteForm"
        operation.input = DeleteFormInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp", "amplifyuibuilder:TagResource", "amplifyuibuilder:UntagResource"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/forms/{id}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_theme, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#DeleteTheme"
        operation.name = "DeleteTheme"
        operation.input = DeleteThemeInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp", "amplifyuibuilder:UntagResource"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/themes/{id}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:exchange_code_for_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ExchangeCodeForToken"
        operation.name = "ExchangeCodeForToken"
        operation.input = ExchangeCodeForTokenInput
        operation.output = ExchangeCodeForTokenOutput
        operation.errors << InvalidParameterException
        operation.traits = {"smithy.api#http" => {"uri" => "/tokens/{provider}", "method" => "POST"}}
      end)
      service.add_operation(:export_components, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ExportComponents"
        operation.name = "ExportComponents"
        operation.input = ExportComponentsInput
        operation.output = ExportComponentsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.traits = {"smithy.api#http" => {"uri" => "/export/app/{appId}/environment/{environmentName}/components", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ExportComponents.new
      end)
      service.add_operation(:export_forms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ExportForms"
        operation.name = "ExportForms"
        operation.input = ExportFormsInput
        operation.output = ExportFormsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.traits = {"smithy.api#http" => {"uri" => "/export/app/{appId}/environment/{environmentName}/forms", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ExportForms.new
      end)
      service.add_operation(:export_themes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ExportThemes"
        operation.name = "ExportThemes"
        operation.input = ExportThemesInput
        operation.output = ExportThemesOutput
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.traits = {"smithy.api#http" => {"uri" => "/export/app/{appId}/environment/{environmentName}/themes", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ExportThemes.new
      end)
      service.add_operation(:get_codegen_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#GetCodegenJob"
        operation.name = "GetCodegenJob"
        operation.input = GetCodegenJobRequest
        operation.output = GetCodegenJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/codegen-jobs/{id}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#GetComponent"
        operation.name = "GetComponent"
        operation.input = GetComponentInput
        operation.output = GetComponentOutput
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#requiredActions" => ["amplify:GetApp"], "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/components/{id}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_form, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#GetForm"
        operation.name = "GetForm"
        operation.input = GetFormInput
        operation.output = GetFormOutput
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/forms/{id}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#GetMetadata"
        operation.name = "GetMetadata"
        operation.input = GetMetadataInput
        operation.output = GetMetadataOutput
        operation.errors << InvalidParameterException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/metadata", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_theme, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#GetTheme"
        operation.name = "GetTheme"
        operation.input = GetThemeInput
        operation.output = GetThemeOutput
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/themes/{id}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_codegen_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ListCodegenJobs"
        operation.name = "ListCodegenJobs"
        operation.input = ListCodegenJobsRequest
        operation.output = ListCodegenJobsResponse
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/codegen-jobs", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCodegenJobs.new
      end)
      service.add_operation(:list_components, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ListComponents"
        operation.name = "ListComponents"
        operation.input = ListComponentsInput
        operation.output = ListComponentsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.traits = {"aws.iam#requiredActions" => ["amplify:GetApp"], "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/components", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListComponents.new
      end)
      service.add_operation(:list_forms, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ListForms"
        operation.name = "ListForms"
        operation.input = ListFormsInput
        operation.output = ListFormsOutput
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/forms", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListForms.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_themes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ListThemes"
        operation.name = "ListThemes"
        operation.input = ListThemesInput
        operation.output = ListThemesOutput
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/themes", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListThemes.new
      end)
      service.add_operation(:put_metadata_flag, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#PutMetadataFlag"
        operation.name = "PutMetadataFlag"
        operation.input = PutMetadataFlagInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/metadata/features/{featureName}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:refresh_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#RefreshToken"
        operation.name = "RefreshToken"
        operation.input = RefreshTokenInput
        operation.output = RefreshTokenOutput
        operation.errors << InvalidParameterException
        operation.traits = {"smithy.api#http" => {"uri" => "/tokens/{provider}/refresh", "method" => "POST"}}
      end)
      service.add_operation(:start_codegen_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#StartCodegenJob"
        operation.name = "StartCodegenJob"
        operation.input = StartCodegenJobRequest
        operation.output = StartCodegenJobResponse
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ThrottlingException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/codegen-jobs", "method" => "POST"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#UpdateComponent"
        operation.name = "UpdateComponent"
        operation.input = UpdateComponentInput
        operation.output = UpdateComponentOutput
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceConflictException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp", "amplifyuibuilder:TagResource", "amplifyuibuilder:UntagResource"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/components/{id}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_form, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#UpdateForm"
        operation.name = "UpdateForm"
        operation.input = UpdateFormInput
        operation.output = UpdateFormOutput
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceConflictException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp", "amplifyuibuilder:GetForm", "amplifyuibuilder:TagResource", "amplifyuibuilder:UntagResource"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/forms/{id}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_theme, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#UpdateTheme"
        operation.name = "UpdateTheme"
        operation.input = UpdateThemeInput
        operation.output = UpdateThemeOutput
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ResourceConflictException
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp", "amplifyuibuilder:GetTheme", "amplifyuibuilder:TagResource", "amplifyuibuilder:UntagResource"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/themes/{id}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
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
