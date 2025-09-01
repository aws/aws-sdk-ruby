# frozen_string_literal: true

# This is generated code!

module Aws::AmplifyUIBuilder
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActionParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ActionParameters', name: 'ActionParameters')
    ApiConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.amplifyuibuilder#ApiConfiguration', name: 'ApiConfiguration')
    AppId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplifyuibuilder#AppId', name: 'AppId', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^d[a-z0-9]+$"})
    AssociatedFieldsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#AssociatedFieldsList', name: 'AssociatedFieldsList')
    CodegenDependencies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenDependencies', name: 'CodegenDependencies')
    CodegenDependency = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenDependency', name: 'CodegenDependency')
    CodegenFeatureFlags = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenFeatureFlags', name: 'CodegenFeatureFlags')
    CodegenGenericDataEnum = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenGenericDataEnum', name: 'CodegenGenericDataEnum')
    CodegenGenericDataEnumValuesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenGenericDataEnumValuesList', name: 'CodegenGenericDataEnumValuesList')
    CodegenGenericDataEnums = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenGenericDataEnums', name: 'CodegenGenericDataEnums')
    CodegenGenericDataField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenGenericDataField', name: 'CodegenGenericDataField')
    CodegenGenericDataFieldDataType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenGenericDataFieldDataType', name: 'CodegenGenericDataFieldDataType')
    CodegenGenericDataFields = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenGenericDataFields', name: 'CodegenGenericDataFields')
    CodegenGenericDataModel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenGenericDataModel', name: 'CodegenGenericDataModel')
    CodegenGenericDataModels = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenGenericDataModels', name: 'CodegenGenericDataModels')
    CodegenGenericDataNonModel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenGenericDataNonModel', name: 'CodegenGenericDataNonModel')
    CodegenGenericDataNonModelFields = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenGenericDataNonModelFields', name: 'CodegenGenericDataNonModelFields')
    CodegenGenericDataNonModels = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenGenericDataNonModels', name: 'CodegenGenericDataNonModels')
    CodegenGenericDataRelationshipType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenGenericDataRelationshipType', name: 'CodegenGenericDataRelationshipType')
    CodegenJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenJob', name: 'CodegenJob', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amplifyuibuilder#CodegenJobResource"}]})
    CodegenJobAsset = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenJobAsset', name: 'CodegenJobAsset')
    CodegenJobGenericDataSchema = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenJobGenericDataSchema', name: 'CodegenJobGenericDataSchema')
    CodegenJobGenericDataSourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenJobGenericDataSourceType', name: 'CodegenJobGenericDataSourceType')
    CodegenJobRenderConfig = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenJobRenderConfig', name: 'CodegenJobRenderConfig')
    CodegenJobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenJobStatus', name: 'CodegenJobStatus')
    CodegenJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenJobSummary', name: 'CodegenJobSummary')
    CodegenJobSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenJobSummaryList', name: 'CodegenJobSummaryList')
    CodegenPrimaryKeysList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#CodegenPrimaryKeysList', name: 'CodegenPrimaryKeysList')
    Component = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#Component', name: 'Component', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amplifyuibuilder#ComponentResource"}]})
    ComponentBindingProperties = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentBindingProperties', name: 'ComponentBindingProperties')
    ComponentBindingPropertiesValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentBindingPropertiesValue', name: 'ComponentBindingPropertiesValue')
    ComponentBindingPropertiesValueProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentBindingPropertiesValueProperties', name: 'ComponentBindingPropertiesValueProperties')
    ComponentChild = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentChild', name: 'ComponentChild')
    ComponentChildList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentChildList', name: 'ComponentChildList')
    ComponentCollectionProperties = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentCollectionProperties', name: 'ComponentCollectionProperties')
    ComponentConditionProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentConditionProperty', name: 'ComponentConditionProperty')
    ComponentDataConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentDataConfiguration', name: 'ComponentDataConfiguration')
    ComponentEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentEvent', name: 'ComponentEvent')
    ComponentEvents = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentEvents', name: 'ComponentEvents')
    ComponentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentList', name: 'ComponentList')
    ComponentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentName', name: 'ComponentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ComponentOverrides = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentOverrides', name: 'ComponentOverrides')
    ComponentOverridesValue = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentOverridesValue', name: 'ComponentOverridesValue')
    ComponentProperties = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentProperties', name: 'ComponentProperties')
    ComponentProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentProperty', name: 'ComponentProperty')
    ComponentPropertyBindingProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentPropertyBindingProperties', name: 'ComponentPropertyBindingProperties')
    ComponentPropertyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentPropertyList', name: 'ComponentPropertyList')
    ComponentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentSummary', name: 'ComponentSummary')
    ComponentSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentSummaryList', name: 'ComponentSummaryList')
    ComponentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentType', name: 'ComponentType', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ComponentVariant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentVariant', name: 'ComponentVariant')
    ComponentVariantValues = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentVariantValues', name: 'ComponentVariantValues')
    ComponentVariants = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#ComponentVariants', name: 'ComponentVariants')
    CreateComponentData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CreateComponentData', name: 'CreateComponentData')
    CreateComponentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CreateComponentInput', name: 'CreateComponentInput')
    CreateComponentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CreateComponentOutput', name: 'CreateComponentOutput')
    CreateFormData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CreateFormData', name: 'CreateFormData')
    CreateFormInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CreateFormInput', name: 'CreateFormInput')
    CreateFormOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CreateFormOutput', name: 'CreateFormOutput')
    CreateThemeData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CreateThemeData', name: 'CreateThemeData')
    CreateThemeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CreateThemeInput', name: 'CreateThemeInput')
    CreateThemeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#CreateThemeOutput', name: 'CreateThemeOutput')
    DataStoreRenderConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#DataStoreRenderConfig', name: 'DataStoreRenderConfig')
    DeleteComponentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#DeleteComponentInput', name: 'DeleteComponentInput')
    DeleteFormInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#DeleteFormInput', name: 'DeleteFormInput')
    DeleteThemeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#DeleteThemeInput', name: 'DeleteThemeInput')
    ExchangeCodeForTokenInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ExchangeCodeForTokenInput', name: 'ExchangeCodeForTokenInput')
    ExchangeCodeForTokenOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ExchangeCodeForTokenOutput', name: 'ExchangeCodeForTokenOutput')
    ExchangeCodeForTokenRequestBody = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ExchangeCodeForTokenRequestBody', name: 'ExchangeCodeForTokenRequestBody')
    ExportComponentsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ExportComponentsInput', name: 'ExportComponentsInput')
    ExportComponentsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ExportComponentsOutput', name: 'ExportComponentsOutput')
    ExportFormsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ExportFormsInput', name: 'ExportFormsInput')
    ExportFormsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ExportFormsOutput', name: 'ExportFormsOutput')
    ExportThemesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ExportThemesInput', name: 'ExportThemesInput')
    ExportThemesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ExportThemesOutput', name: 'ExportThemesOutput')
    FeaturesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#FeaturesMap', name: 'FeaturesMap')
    FieldConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#FieldConfig', name: 'FieldConfig')
    FieldInputConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#FieldInputConfig', name: 'FieldInputConfig')
    FieldPosition = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.amplifyuibuilder#FieldPosition', name: 'FieldPosition')
    FieldValidationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#FieldValidationConfiguration', name: 'FieldValidationConfiguration')
    FieldsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#FieldsMap', name: 'FieldsMap')
    FileUploaderFieldConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#FileUploaderFieldConfig', name: 'FileUploaderFieldConfig')
    FixedPosition = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifyuibuilder#FixedPosition', name: 'FixedPosition')
    Form = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#Form', name: 'Form', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amplifyuibuilder#FormResource"}]})
    FormActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifyuibuilder#FormActionType', name: 'FormActionType')
    FormBindingElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#FormBindingElement', name: 'FormBindingElement')
    FormBindings = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#FormBindings', name: 'FormBindings')
    FormButton = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#FormButton', name: 'FormButton')
    FormButtonsPosition = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifyuibuilder#FormButtonsPosition', name: 'FormButtonsPosition')
    FormCTA = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#FormCTA', name: 'FormCTA')
    FormDataSourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplifyuibuilder#FormDataSourceType', name: 'FormDataSourceType', traits: {"smithy.api#enum" => [{"value" => "DataStore", "name" => "DATASTORE", "documentation" => "Will use a provided Amplify DataStore enabled API"}, {"value" => "Custom", "name" => "CUSTOM", "documentation" => "Will use passed in hooks to use when creating a form from scratch"}]})
    FormDataTypeConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#FormDataTypeConfig', name: 'FormDataTypeConfig')
    FormInputBindingProperties = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#FormInputBindingProperties', name: 'FormInputBindingProperties')
    FormInputBindingPropertiesValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#FormInputBindingPropertiesValue', name: 'FormInputBindingPropertiesValue')
    FormInputBindingPropertiesValueProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#FormInputBindingPropertiesValueProperties', name: 'FormInputBindingPropertiesValueProperties')
    FormInputValueProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#FormInputValueProperty', name: 'FormInputValueProperty')
    FormInputValuePropertyBindingProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#FormInputValuePropertyBindingProperties', name: 'FormInputValuePropertyBindingProperties')
    FormInputValuePropertyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#FormInputValuePropertyList', name: 'FormInputValuePropertyList')
    FormList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#FormList', name: 'FormList')
    FormName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplifyuibuilder#FormName', name: 'FormName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    FormStyle = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#FormStyle', name: 'FormStyle')
    FormStyleConfig = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.amplifyuibuilder#FormStyleConfig', name: 'FormStyleConfig')
    FormSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#FormSummary', name: 'FormSummary')
    FormSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#FormSummaryList', name: 'FormSummaryList')
    GenericDataRelationshipType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifyuibuilder#GenericDataRelationshipType', name: 'GenericDataRelationshipType')
    GetCodegenJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#GetCodegenJobRequest', name: 'GetCodegenJobRequest')
    GetCodegenJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#GetCodegenJobResponse', name: 'GetCodegenJobResponse')
    GetComponentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#GetComponentInput', name: 'GetComponentInput')
    GetComponentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#GetComponentOutput', name: 'GetComponentOutput')
    GetFormInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#GetFormInput', name: 'GetFormInput')
    GetFormOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#GetFormOutput', name: 'GetFormOutput')
    GetMetadataInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#GetMetadataInput', name: 'GetMetadataInput')
    GetMetadataOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#GetMetadataOutput', name: 'GetMetadataOutput')
    GetThemeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#GetThemeInput', name: 'GetThemeInput')
    GetThemeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#GetThemeOutput', name: 'GetThemeOutput')
    GraphQLRenderConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#GraphQLRenderConfig', name: 'GraphQLRenderConfig')
    IdentifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#IdentifierList', name: 'IdentifierList')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JSModule = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifyuibuilder#JSModule', name: 'JSModule')
    JSScript = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifyuibuilder#JSScript', name: 'JSScript')
    JSTarget = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifyuibuilder#JSTarget', name: 'JSTarget')
    LabelDecorator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplifyuibuilder#LabelDecorator', name: 'LabelDecorator', traits: {"smithy.api#enum" => [{"value" => "required", "name" => "REQUIRED"}, {"value" => "optional", "name" => "OPTIONAL"}, {"value" => "none", "name" => "NONE"}]})
    ListCodegenJobsLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.amplifyuibuilder#ListCodegenJobsLimit', name: 'ListCodegenJobsLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListCodegenJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ListCodegenJobsRequest', name: 'ListCodegenJobsRequest')
    ListCodegenJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ListCodegenJobsResponse', name: 'ListCodegenJobsResponse')
    ListComponentsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ListComponentsInput', name: 'ListComponentsInput')
    ListComponentsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ListComponentsOutput', name: 'ListComponentsOutput')
    ListEntityLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.amplifyuibuilder#ListEntityLimit', name: 'ListEntityLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListFormsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ListFormsInput', name: 'ListFormsInput')
    ListFormsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ListFormsOutput', name: 'ListFormsOutput')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListThemesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ListThemesInput', name: 'ListThemesInput')
    ListThemesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ListThemesOutput', name: 'ListThemesOutput')
    MutationActionSetStateParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#MutationActionSetStateParameter', name: 'MutationActionSetStateParameter')
    NoApiRenderConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#NoApiRenderConfig', name: 'NoApiRenderConfig')
    NumValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#NumValues', name: 'NumValues')
    OperandType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplifyuibuilder#OperandType', name: 'OperandType', traits: {"smithy.api#pattern" => "^boolean|string|number$"})
    Predicate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#Predicate', name: 'Predicate')
    PredicateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#PredicateList', name: 'PredicateList')
    PutMetadataFlagBody = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#PutMetadataFlagBody', name: 'PutMetadataFlagBody')
    PutMetadataFlagInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#PutMetadataFlagInput', name: 'PutMetadataFlagInput')
    ReactCodegenDependencies = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#ReactCodegenDependencies', name: 'ReactCodegenDependencies')
    ReactStartCodegenJobData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ReactStartCodegenJobData', name: 'ReactStartCodegenJobData')
    RefreshTokenInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#RefreshTokenInput', name: 'RefreshTokenInput')
    RefreshTokenOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#RefreshTokenOutput', name: 'RefreshTokenOutput')
    RefreshTokenRequestBody = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#RefreshTokenRequestBody', name: 'RefreshTokenRequestBody')
    RelatedModelFieldsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#RelatedModelFieldsList', name: 'RelatedModelFieldsList')
    ResourceConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ResourceConflictException', name: 'ResourceConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SectionalElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#SectionalElement', name: 'SectionalElement')
    SectionalElementMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#SectionalElementMap', name: 'SectionalElementMap')
    SensitiveString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplifyuibuilder#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SortDirection = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifyuibuilder#SortDirection', name: 'SortDirection')
    SortProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#SortProperty', name: 'SortProperty')
    SortPropertyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#SortPropertyList', name: 'SortPropertyList')
    StartCodegenJobData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#StartCodegenJobData', name: 'StartCodegenJobData')
    StartCodegenJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#StartCodegenJobRequest', name: 'StartCodegenJobRequest')
    StartCodegenJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#StartCodegenJobResponse', name: 'StartCodegenJobResponse')
    StorageAccessLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplifyuibuilder#StorageAccessLevel', name: 'StorageAccessLevel')
    StrValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#StrValues', name: 'StrValues')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplifyuibuilder#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplifyuibuilder#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplifyuibuilder#Tags', name: 'Tags')
    Theme = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#Theme', name: 'Theme', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.amplifyuibuilder#ThemeResource"}]})
    ThemeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#ThemeList', name: 'ThemeList')
    ThemeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplifyuibuilder#ThemeName', name: 'ThemeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ThemeSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ThemeSummary', name: 'ThemeSummary')
    ThemeSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#ThemeSummaryList', name: 'ThemeSummaryList')
    ThemeValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ThemeValue', name: 'ThemeValue')
    ThemeValues = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ThemeValues', name: 'ThemeValues')
    ThemeValuesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#ThemeValuesList', name: 'ThemeValuesList')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TokenProviders = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplifyuibuilder#TokenProviders', name: 'TokenProviders', traits: {"smithy.api#enum" => [{"value" => "figma", "name" => "FIGMA", "documentation" => "The figma token provider."}]})
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateComponentData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#UpdateComponentData', name: 'UpdateComponentData')
    UpdateComponentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#UpdateComponentInput', name: 'UpdateComponentInput')
    UpdateComponentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#UpdateComponentOutput', name: 'UpdateComponentOutput')
    UpdateFormData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#UpdateFormData', name: 'UpdateFormData')
    UpdateFormInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#UpdateFormInput', name: 'UpdateFormInput')
    UpdateFormOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#UpdateFormOutput', name: 'UpdateFormOutput')
    UpdateThemeData = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#UpdateThemeData', name: 'UpdateThemeData')
    UpdateThemeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#UpdateThemeInput', name: 'UpdateThemeInput')
    UpdateThemeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#UpdateThemeOutput', name: 'UpdateThemeOutput')
    Uuid = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplifyuibuilder#Uuid', name: 'Uuid')
    ValidationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#ValidationsList', name: 'ValidationsList')
    ValueMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ValueMapping', name: 'ValueMapping')
    ValueMappingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplifyuibuilder#ValueMappingList', name: 'ValueMappingList')
    ValueMappings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplifyuibuilder#ValueMappings', name: 'ValueMappings')

    ActionParameters.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperty, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of navigation action. Valid values are <code>url</code> and <code>anchor</code>.\n      This value is required for a navigation action.</p>"}))
    ActionParameters.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperty, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The URL to the location to open. Specify this value for a navigation action.</p>"}))
    ActionParameters.add_member(:anchor, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperty, location_name: 'anchor', traits: {"smithy.api#documentation" => "<p>The HTML anchor link to the location to open. Specify this value for a navigation\n      action.</p>"}))
    ActionParameters.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperty, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The element within the same component to modify when the action occurs.</p>"}))
    ActionParameters.add_member(:global, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperty, location_name: 'global', traits: {"smithy.api#documentation" => "<p>Specifies whether the user should be signed out globally. Specify this value for an auth\n      sign out action.</p>"}))
    ActionParameters.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'model', traits: {"smithy.api#documentation" => "<p>The name of the data model. Use when the action performs an operation on an Amplify DataStore model.</p>"}))
    ActionParameters.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperty, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the component that the <code>ActionParameters</code> apply to.</p>"}))
    ActionParameters.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperties, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>A dictionary of key-value pairs mapping Amplify Studio properties to fields\n      in a data model. Use when the action performs an operation on an Amplify\n      DataStore model.</p>"}))
    ActionParameters.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: MutationActionSetStateParameter, location_name: 'state', traits: {"smithy.api#documentation" => "<p>A key-value pair that specifies the state property name and its initial value.</p>"}))
    ActionParameters.type = Types::ActionParameters
    ApiConfiguration.add_member(:graph_ql_config, Types::ApiConfiguration::GraphQlConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: GraphQLRenderConfig, location_name: 'graphQLConfig', traits: {"smithy.api#documentation" => "<p>The configuration for an application using GraphQL APIs.</p>"}))
    ApiConfiguration.add_member(:data_store_config, Types::ApiConfiguration::DataStoreConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: DataStoreRenderConfig, location_name: 'dataStoreConfig', traits: {"smithy.api#documentation" => "<p>The configuration for an application using DataStore APIs.</p>"}))
    ApiConfiguration.add_member(:no_api_config, Types::ApiConfiguration::NoApiConfig, Smithy::Schema::Shapes::ShapeRef.new(shape: NoApiRenderConfig, location_name: 'noApiConfig', traits: {"smithy.api#documentation" => "<p>The configuration for an application with no API being used.</p>"}))
    ApiConfiguration.add_member(:unknown, Types::ApiConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ApiConfiguration.type = Types::ApiConfiguration
    AssociatedFieldsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    CodegenDependencies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenDependency)
    CodegenDependency.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of the dependency package.</p>"}))
    CodegenDependency.add_member(:supported_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'supportedVersion', traits: {"smithy.api#documentation" => "<p>Indicates the version of the supported dependency package.</p>"}))
    CodegenDependency.add_member(:is_sem_ver, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isSemVer', traits: {"smithy.api#documentation" => "<p>Determines if the dependency package is using Semantic versioning. If set to true, it indicates that the dependency package uses Semantic versioning.</p>"}))
    CodegenDependency.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>Indicates the reason to include the dependency package in your project code.</p>"}))
    CodegenDependency.type = Types::CodegenDependency
    CodegenFeatureFlags.add_member(:is_relationship_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isRelationshipSupported', traits: {"smithy.api#documentation" => "<p>Specifes whether a code generation job supports data relationships.</p>"}))
    CodegenFeatureFlags.add_member(:is_non_model_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isNonModelSupported', traits: {"smithy.api#documentation" => "<p>Specifies whether a code generation job supports non models.</p>"}))
    CodegenFeatureFlags.type = Types::CodegenFeatureFlags
    CodegenGenericDataEnum.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenGenericDataEnumValuesList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The list of enum values in the generic data schema.</p>", "smithy.api#required" => {}}))
    CodegenGenericDataEnum.type = Types::CodegenGenericDataEnum
    CodegenGenericDataEnumValuesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    CodegenGenericDataEnums.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    CodegenGenericDataEnums.value = Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenGenericDataEnum)
    CodegenGenericDataField.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenGenericDataFieldDataType, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The data type for the generic data field.</p>", "smithy.api#required" => {}}))
    CodegenGenericDataField.add_member(:data_type_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'dataTypeValue', traits: {"smithy.api#documentation" => "<p>The value of the data type for the generic data field.</p>", "smithy.api#required" => {}}))
    CodegenGenericDataField.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'required', traits: {"smithy.api#documentation" => "<p>Specifies whether the generic data field is required.</p>", "smithy.api#required" => {}}))
    CodegenGenericDataField.add_member(:read_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'readOnly', traits: {"smithy.api#documentation" => "<p>Specifies whether the generic data field is read-only.</p>", "smithy.api#required" => {}}))
    CodegenGenericDataField.add_member(:is_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArray', traits: {"smithy.api#documentation" => "<p>Specifies whether the generic data field is an array.</p>", "smithy.api#required" => {}}))
    CodegenGenericDataField.add_member(:relationship, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenGenericDataRelationshipType, location_name: 'relationship', traits: {"smithy.api#documentation" => "<p>The relationship of the generic data schema.</p>"}))
    CodegenGenericDataField.type = Types::CodegenGenericDataField
    CodegenGenericDataFieldDataType.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ID', traits: {"smithy.api#enumValue" => "ID"}))
    CodegenGenericDataFieldDataType.add_member(:string, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRING', traits: {"smithy.api#enumValue" => "String"}))
    CodegenGenericDataFieldDataType.add_member(:int, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INT', traits: {"smithy.api#enumValue" => "Int"}))
    CodegenGenericDataFieldDataType.add_member(:float, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLOAT', traits: {"smithy.api#enumValue" => "Float"}))
    CodegenGenericDataFieldDataType.add_member(:aws_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_DATE', traits: {"smithy.api#enumValue" => "AWSDate"}))
    CodegenGenericDataFieldDataType.add_member(:aws_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_TIME', traits: {"smithy.api#enumValue" => "AWSTime"}))
    CodegenGenericDataFieldDataType.add_member(:aws_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_DATE_TIME', traits: {"smithy.api#enumValue" => "AWSDateTime"}))
    CodegenGenericDataFieldDataType.add_member(:aws_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_TIMESTAMP', traits: {"smithy.api#enumValue" => "AWSTimestamp"}))
    CodegenGenericDataFieldDataType.add_member(:aws_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_EMAIL', traits: {"smithy.api#enumValue" => "AWSEmail"}))
    CodegenGenericDataFieldDataType.add_member(:aws_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_URL', traits: {"smithy.api#enumValue" => "AWSURL"}))
    CodegenGenericDataFieldDataType.add_member(:aws_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_IP_ADDRESS', traits: {"smithy.api#enumValue" => "AWSIPAddress"}))
    CodegenGenericDataFieldDataType.add_member(:boolean, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOOLEAN', traits: {"smithy.api#enumValue" => "Boolean"}))
    CodegenGenericDataFieldDataType.add_member(:aws_json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_JSON', traits: {"smithy.api#enumValue" => "AWSJSON"}))
    CodegenGenericDataFieldDataType.add_member(:aws_phone, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_PHONE', traits: {"smithy.api#enumValue" => "AWSPhone"}))
    CodegenGenericDataFieldDataType.add_member(:enum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENUM', traits: {"smithy.api#enumValue" => "Enum"}))
    CodegenGenericDataFieldDataType.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODEL', traits: {"smithy.api#enumValue" => "Model"}))
    CodegenGenericDataFieldDataType.add_member(:non_model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NON_MODEL', traits: {"smithy.api#enumValue" => "NonModel"}))
    CodegenGenericDataFields.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    CodegenGenericDataFields.value = Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenGenericDataField)
    CodegenGenericDataModel.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenGenericDataFields, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>The fields in the generic data model.</p>", "smithy.api#required" => {}}))
    CodegenGenericDataModel.add_member(:is_join_table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isJoinTable', traits: {"smithy.api#documentation" => "<p>Specifies whether the generic data model is a join table.</p>"}))
    CodegenGenericDataModel.add_member(:primary_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenPrimaryKeysList, location_name: 'primaryKeys', traits: {"smithy.api#documentation" => "<p>The primary keys of the generic data model.</p>", "smithy.api#required" => {}}))
    CodegenGenericDataModel.type = Types::CodegenGenericDataModel
    CodegenGenericDataModels.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    CodegenGenericDataModels.value = Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenGenericDataModel)
    CodegenGenericDataNonModel.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenGenericDataNonModelFields, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>The fields in a generic data schema non model.</p>", "smithy.api#required" => {}}))
    CodegenGenericDataNonModel.type = Types::CodegenGenericDataNonModel
    CodegenGenericDataNonModelFields.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    CodegenGenericDataNonModelFields.value = Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenGenericDataField)
    CodegenGenericDataNonModels.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    CodegenGenericDataNonModels.value = Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenGenericDataNonModel)
    CodegenGenericDataRelationshipType.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: GenericDataRelationshipType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The data relationship type.</p>", "smithy.api#required" => {}}))
    CodegenGenericDataRelationshipType.add_member(:related_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'relatedModelName', traits: {"smithy.api#documentation" => "<p>The name of the related model in the data relationship.</p>", "smithy.api#required" => {}}))
    CodegenGenericDataRelationshipType.add_member(:related_model_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedModelFieldsList, location_name: 'relatedModelFields', traits: {"smithy.api#documentation" => "<p>The related model fields in the data relationship.</p>"}))
    CodegenGenericDataRelationshipType.add_member(:can_unlink_associated_model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'canUnlinkAssociatedModel', traits: {"smithy.api#documentation" => "<p>Specifies whether the relationship can unlink the associated model.</p>"}))
    CodegenGenericDataRelationshipType.add_member(:related_join_field_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'relatedJoinFieldName', traits: {"smithy.api#documentation" => "<p>The name of the related join field in the data relationship.</p>"}))
    CodegenGenericDataRelationshipType.add_member(:related_join_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'relatedJoinTableName', traits: {"smithy.api#documentation" => "<p>The name of the related join table in the data relationship.</p>"}))
    CodegenGenericDataRelationshipType.add_member(:belongs_to_field_on_related_model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'belongsToFieldOnRelatedModel', traits: {"smithy.api#documentation" => "<p>The value of the <code>belongsTo</code> field on the related data model. </p>"}))
    CodegenGenericDataRelationshipType.add_member(:associated_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedFieldsList, location_name: 'associatedFields', traits: {"smithy.api#documentation" => "<p>The associated fields of the data relationship.</p>"}))
    CodegenGenericDataRelationshipType.add_member(:is_has_many_index, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isHasManyIndex', traits: {"smithy.api#documentation" => "<p>Specifies whether the <code>@index</code> directive is supported for a <code>hasMany</code> data relationship.</p>"}))
    CodegenGenericDataRelationshipType.type = Types::CodegenGenericDataRelationshipType
    CodegenJob.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the code generation job.</p>", "smithy.api#required" => {}}))
    CodegenJob.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The ID of the Amplify app associated with the code generation job.</p>", "smithy.api#required" => {}}))
    CodegenJob.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment associated with the code generation job.</p>", "smithy.api#required" => {}}))
    CodegenJob.add_member(:render_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenJobRenderConfig, location_name: 'renderConfig', traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CodegenJob.add_member(:generic_data_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenJobGenericDataSchema, location_name: 'genericDataSchema', traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CodegenJob.add_member(:auto_generate_forms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'autoGenerateForms', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#documentation" => "<p>Specifies whether to autogenerate forms in the code generation job.</p>"}))
    CodegenJob.add_member(:features, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenFeatureFlags, location_name: 'features', traits: {"aws.cloudformation#cfnMutability" => "create-and-read"}))
    CodegenJob.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenJobStatus, location_name: 'status', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#documentation" => "<p>The status of the code generation job.</p>"}))
    CodegenJob.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statusMessage', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#documentation" => "<p>The customized status message for the code generation job.</p>"}))
    CodegenJob.add_member(:asset, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenJobAsset, location_name: 'asset', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#documentation" => "<p>The <code>CodegenJobAsset</code> to use for the code generation job.</p>"}))
    CodegenJob.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"aws.cloudformation#cfnMutability" => "create-and-read", "smithy.api#documentation" => "<p>One or more key-value pairs to use when tagging the code generation job.</p>"}))
    CodegenJob.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The time that the code generation job was created.</p>", "smithy.api#timestampFormat" => "date-time"}))
    CodegenJob.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The time that the code generation job was modified.</p>", "smithy.api#timestampFormat" => "date-time"}))
    CodegenJob.add_member(:dependencies, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenDependencies, location_name: 'dependencies', traits: {"smithy.api#documentation" => "<p>Lists the dependency packages that may be required for the project code to run.</p>"}))
    CodegenJob.type = Types::CodegenJob
    CodegenJobAsset.add_member(:download_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'downloadUrl', traits: {"smithy.api#documentation" => "<p>The URL to use to access the asset.</p>"}))
    CodegenJobAsset.type = Types::CodegenJobAsset
    CodegenJobGenericDataSchema.add_member(:data_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenJobGenericDataSourceType, location_name: 'dataSourceType', traits: {"smithy.api#documentation" => "<p>The type of the data source for the schema. Currently, the only valid value is an Amplify <code>DataStore</code>.</p>", "smithy.api#required" => {}}))
    CodegenJobGenericDataSchema.add_member(:models, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenGenericDataModels, location_name: 'models', traits: {"smithy.api#documentation" => "<p>The name of a <code>CodegenGenericDataModel</code>.</p>", "smithy.api#required" => {}}))
    CodegenJobGenericDataSchema.add_member(:enums, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenGenericDataEnums, location_name: 'enums', traits: {"smithy.api#documentation" => "<p>The name of a <code>CodegenGenericDataEnum</code>.</p>", "smithy.api#required" => {}}))
    CodegenJobGenericDataSchema.add_member(:non_models, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenGenericDataNonModels, location_name: 'nonModels', traits: {"smithy.api#documentation" => "<p>The name of a <code>CodegenGenericDataNonModel</code>.</p>", "smithy.api#required" => {}}))
    CodegenJobGenericDataSchema.type = Types::CodegenJobGenericDataSchema
    CodegenJobGenericDataSourceType.add_member(:data_store, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_STORE', traits: {"smithy.api#enumValue" => "DataStore"}))
    CodegenJobRenderConfig.add_member(:react, Types::CodegenJobRenderConfig::React, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactStartCodegenJobData, location_name: 'react', traits: {"smithy.api#documentation" => "<p>The name of the <code>ReactStartCodegenJobData</code> object.</p>"}))
    CodegenJobRenderConfig.add_member(:unknown, Types::CodegenJobRenderConfig::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    CodegenJobRenderConfig.type = Types::CodegenJobRenderConfig
    CodegenJobStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "in_progress"}))
    CodegenJobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "failed"}))
    CodegenJobStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "succeeded"}))
    CodegenJobSummary.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app associated with the code generation job.</p>", "smithy.api#required" => {}}))
    CodegenJobSummary.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment associated with the code generation job.</p>", "smithy.api#required" => {}}))
    CodegenJobSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the code generation job summary.</p>", "smithy.api#required" => {}}))
    CodegenJobSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The time that the code generation job summary was created.</p>", "smithy.api#timestampFormat" => "date-time"}))
    CodegenJobSummary.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The time that the code generation job summary was modified.</p>", "smithy.api#timestampFormat" => "date-time"}))
    CodegenJobSummary.type = Types::CodegenJobSummary
    CodegenJobSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenJobSummary)
    CodegenPrimaryKeysList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    Component.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app associated with the component.</p>", "smithy.api#required" => {}}))
    Component.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify\n      app.</p>", "smithy.api#required" => {}}))
    Component.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceId', traits: {"smithy.api#documentation" => "<p>The unique ID of the component in its original source system, such as Figma.</p>"}))
    Component.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the component.</p>", "smithy.api#required" => {}}))
    Component.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    Component.add_member(:component_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentType, location_name: 'componentType', traits: {"smithy.api#documentation" => "<p>The type of the component. This can be an Amplify custom UI component or\n      another custom component.</p>", "smithy.api#required" => {}}))
    Component.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperties, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>Describes the component's properties. You can't specify <code>tags</code> as a valid\n      property for <code>properties</code>.</p>", "smithy.api#required" => {}}))
    Component.add_member(:children, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentChildList, location_name: 'children', traits: {"smithy.api#documentation" => "<p>A list of the component's <code>ComponentChild</code> instances.</p>"}))
    Component.add_member(:variants, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVariants, location_name: 'variants', traits: {"smithy.api#documentation" => "<p>A list of the component's variants. A variant is a unique style configuration of a main\n      component.</p>", "smithy.api#required" => {}}))
    Component.add_member(:overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentOverrides, location_name: 'overrides', traits: {"smithy.api#documentation" => "<p>Describes the component's properties that can be overriden in a customized instance of the\n      component. You can't specify <code>tags</code> as a valid property for\n      <code>overrides</code>.</p>", "smithy.api#required" => {}}))
    Component.add_member(:binding_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentBindingProperties, location_name: 'bindingProperties', traits: {"smithy.api#documentation" => "<p>The information to connect a component's properties to data at runtime. You can't specify\n        <code>tags</code> as a valid property for <code>bindingProperties</code>.</p>\n         <p/>", "smithy.api#required" => {}}))
    Component.add_member(:collection_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentCollectionProperties, location_name: 'collectionProperties', traits: {"smithy.api#documentation" => "<p>The data binding configuration for the component's properties. Use this for a collection\n      component. You can't specify <code>tags</code> as a valid property for\n        <code>collectionProperties</code>.</p>"}))
    Component.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#documentation" => "<p>The time that the component was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Component.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#documentation" => "<p>The time that the component was modified.</p>", "smithy.api#timestampFormat" => "date-time"}))
    Component.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>One or more key-value pairs to use when tagging the component.</p>"}))
    Component.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentEvents, location_name: 'events', traits: {"smithy.api#documentation" => "<p>Describes the events that can be raised on the component. Use for the workflow feature in\n        Amplify Studio that allows you to bind events and actions to\n      components.</p>"}))
    Component.add_member(:schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'schemaVersion', traits: {"smithy.api#documentation" => "<p>The schema version of the component when it was imported.</p>"}))
    Component.type = Types::Component
    ComponentBindingProperties.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ComponentBindingProperties.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentBindingPropertiesValue)
    ComponentBindingPropertiesValue.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The property type.</p>"}))
    ComponentBindingPropertiesValue.add_member(:binding_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentBindingPropertiesValueProperties, location_name: 'bindingProperties', traits: {"smithy.api#documentation" => "<p>Describes the properties to customize with data at runtime.</p>"}))
    ComponentBindingPropertiesValue.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'defaultValue', traits: {"smithy.api#documentation" => "<p>The default value of the property.</p>"}))
    ComponentBindingPropertiesValue.type = Types::ComponentBindingPropertiesValue
    ComponentBindingPropertiesValueProperties.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'model', traits: {"smithy.api#documentation" => "<p>An Amplify DataStore model.</p>"}))
    ComponentBindingPropertiesValueProperties.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'field', traits: {"smithy.api#documentation" => "<p>The field to bind the data to.</p>"}))
    ComponentBindingPropertiesValueProperties.add_member(:predicates, Smithy::Schema::Shapes::ShapeRef.new(shape: PredicateList, location_name: 'predicates', traits: {"smithy.api#documentation" => "<p>A list of predicates for binding a component's properties to data.</p>"}))
    ComponentBindingPropertiesValueProperties.add_member(:user_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'userAttribute', traits: {"smithy.api#documentation" => "<p>An authenticated user attribute.</p>"}))
    ComponentBindingPropertiesValueProperties.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'bucket', traits: {"smithy.api#documentation" => "<p>An Amazon S3 bucket.</p>"}))
    ComponentBindingPropertiesValueProperties.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The storage key for an Amazon S3 bucket.</p>"}))
    ComponentBindingPropertiesValueProperties.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'defaultValue', traits: {"smithy.api#documentation" => "<p>The default value to assign to the property.</p>"}))
    ComponentBindingPropertiesValueProperties.add_member(:slot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'slotName', traits: {"smithy.api#documentation" => "<p>The name of a component slot.</p>"}))
    ComponentBindingPropertiesValueProperties.type = Types::ComponentBindingPropertiesValueProperties
    ComponentChild.add_member(:component_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'componentType', traits: {"smithy.api#documentation" => "<p>The type of the child component. </p>", "smithy.api#required" => {}}))
    ComponentChild.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the child component.</p>", "smithy.api#required" => {}}))
    ComponentChild.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperties, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>Describes the properties of the child component. You can't specify <code>tags</code> as a\n      valid property for <code>properties</code>.</p>", "smithy.api#required" => {}}))
    ComponentChild.add_member(:children, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentChildList, location_name: 'children', traits: {"smithy.api#documentation" => "<p>The list of <code>ComponentChild</code> instances for this component.</p>"}))
    ComponentChild.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentEvents, location_name: 'events', traits: {"smithy.api#documentation" => "<p>Describes the events that can be raised on the child component. Use for the workflow\n      feature in Amplify Studio that allows you to bind events and actions to\n      components.</p>"}))
    ComponentChild.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceId', traits: {"smithy.api#documentation" => "<p>The unique ID of the child component in its original source system, such as Figma.</p>"}))
    ComponentChild.type = Types::ComponentChild
    ComponentChildList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentChild)
    ComponentCollectionProperties.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ComponentCollectionProperties.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentDataConfiguration)
    ComponentConditionProperty.add_member(:property, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'property', traits: {"smithy.api#documentation" => "<p>The name of the conditional property.</p>"}))
    ComponentConditionProperty.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'field', traits: {"smithy.api#documentation" => "<p>The name of a field. Specify this when the property is a data model.</p>"}))
    ComponentConditionProperty.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The operator to use to perform the evaluation, such as <code>eq</code> to represent\n      equals.</p>"}))
    ComponentConditionProperty.add_member(:operand, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'operand', traits: {"smithy.api#documentation" => "<p>The value of the property to evaluate.</p>"}))
    ComponentConditionProperty.add_member(:then, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperty, location_name: 'then', traits: {"smithy.api#documentation" => "<p>The value to assign to the property if the condition is met.</p>"}))
    ComponentConditionProperty.add_member(:else, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperty, location_name: 'else', traits: {"smithy.api#documentation" => "<p>The value to assign to the property if the condition is not met.</p>"}))
    ComponentConditionProperty.add_member(:operand_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'operandType', traits: {"smithy.api#documentation" => "<p>The type of the property to evaluate.</p>"}))
    ComponentConditionProperty.type = Types::ComponentConditionProperty
    ComponentDataConfiguration.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'model', traits: {"smithy.api#documentation" => "<p>The name of the data model to use to bind data to a component.</p>", "smithy.api#required" => {}}))
    ComponentDataConfiguration.add_member(:sort, Smithy::Schema::Shapes::ShapeRef.new(shape: SortPropertyList, location_name: 'sort', traits: {"smithy.api#documentation" => "<p>Describes how to sort the component's properties.</p>"}))
    ComponentDataConfiguration.add_member(:predicate, Smithy::Schema::Shapes::ShapeRef.new(shape: Predicate, location_name: 'predicate', traits: {"smithy.api#documentation" => "<p>Represents the conditional logic to use when binding data to a component. Use this\n      property to retrieve only a subset of the data in a collection.</p>"}))
    ComponentDataConfiguration.add_member(:identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentifierList, location_name: 'identifiers', traits: {"smithy.api#documentation" => "<p>A list of IDs to use to bind data to a component. Use this property to bind specifically\n      chosen data, rather than data retrieved from a query.</p>"}))
    ComponentDataConfiguration.type = Types::ComponentDataConfiguration
    ComponentEvent.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action to perform when a specific event is raised.</p>"}))
    ComponentEvent.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>Describes information about the action.</p>"}))
    ComponentEvent.add_member(:binding_event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'bindingEvent', traits: {"smithy.api#documentation" => "<p>Binds an event to an action on a component. When you specify a <code>bindingEvent</code>,\n      the event is called when the action is performed.</p>"}))
    ComponentEvent.type = Types::ComponentEvent
    ComponentEvents.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ComponentEvents.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentEvent)
    ComponentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Component)
    ComponentOverrides.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ComponentOverrides.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentOverridesValue)
    ComponentOverridesValue.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ComponentOverridesValue.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ComponentProperties.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ComponentProperties.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperty)
    ComponentProperty.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value to assign to the component property.</p>"}))
    ComponentProperty.add_member(:binding_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPropertyBindingProperties, location_name: 'bindingProperties', traits: {"smithy.api#documentation" => "<p>The information to bind the component property to data at runtime.</p>"}))
    ComponentProperty.add_member(:collection_binding_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPropertyBindingProperties, location_name: 'collectionBindingProperties', traits: {"smithy.api#documentation" => "<p>The information to bind the component property to data at runtime. Use this for collection\n      components.</p>"}))
    ComponentProperty.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'defaultValue', traits: {"smithy.api#documentation" => "<p>The default value to assign to the component property.</p>"}))
    ComponentProperty.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'model', traits: {"smithy.api#documentation" => "<p>The data model to use to assign a value to the component property.</p>"}))
    ComponentProperty.add_member(:bindings, Smithy::Schema::Shapes::ShapeRef.new(shape: FormBindings, location_name: 'bindings', traits: {"smithy.api#documentation" => "<p>The information to bind the component property to form data.</p>"}))
    ComponentProperty.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'event', traits: {"smithy.api#documentation" => "<p>An event that occurs in your app. Use this for workflow data binding.</p>"}))
    ComponentProperty.add_member(:user_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'userAttribute', traits: {"smithy.api#documentation" => "<p>An authenticated user attribute to use to assign a value to the component property.</p>"}))
    ComponentProperty.add_member(:concat, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentPropertyList, location_name: 'concat', traits: {"smithy.api#documentation" => "<p>A list of component properties to concatenate to create the value to assign to this\n      component property.</p>"}))
    ComponentProperty.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentConditionProperty, location_name: 'condition', traits: {"smithy.api#documentation" => "<p>The conditional expression to use to assign a value to the component property.</p>"}))
    ComponentProperty.add_member(:configured, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'configured', traits: {"smithy.api#documentation" => "<p>Specifies whether the user configured the property in Amplify Studio after\n      importing it.</p>"}))
    ComponentProperty.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The component type.</p>"}))
    ComponentProperty.add_member(:imported_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'importedValue', traits: {"smithy.api#documentation" => "<p>The default value assigned to the property when the component is imported into an\n      app.</p>"}))
    ComponentProperty.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of the component that is affected by an event.</p>"}))
    ComponentProperty.add_member(:property, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'property', traits: {"smithy.api#documentation" => "<p>The name of the component's property that is affected by an event.</p>"}))
    ComponentProperty.type = Types::ComponentProperty
    ComponentPropertyBindingProperties.add_member(:property, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'property', traits: {"smithy.api#documentation" => "<p>The component property to bind to the data field.</p>", "smithy.api#required" => {}}))
    ComponentPropertyBindingProperties.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'field', traits: {"smithy.api#documentation" => "<p>The data field to bind the property to.</p>"}))
    ComponentPropertyBindingProperties.type = Types::ComponentPropertyBindingProperties
    ComponentPropertyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperty)
    ComponentSummary.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app associated with the component.</p>", "smithy.api#required" => {}}))
    ComponentSummary.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify\n      app.</p>", "smithy.api#required" => {}}))
    ComponentSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the component.</p>", "smithy.api#required" => {}}))
    ComponentSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the component.</p>", "smithy.api#required" => {}}))
    ComponentSummary.add_member(:component_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentType, location_name: 'componentType', traits: {"smithy.api#documentation" => "<p>The component type.</p>", "smithy.api#required" => {}}))
    ComponentSummary.type = Types::ComponentSummary
    ComponentSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentSummary)
    ComponentVariant.add_member(:variant_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVariantValues, location_name: 'variantValues', traits: {"smithy.api#documentation" => "<p>The combination of variants that comprise this variant. You can't specify\n        <code>tags</code> as a valid property for <code>variantValues</code>.</p>"}))
    ComponentVariant.add_member(:overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentOverrides, location_name: 'overrides', traits: {"smithy.api#documentation" => "<p>The properties of the component variant that can be overriden when customizing an instance\n      of the component. You can't specify <code>tags</code> as a valid property for\n        <code>overrides</code>.</p>"}))
    ComponentVariant.type = Types::ComponentVariant
    ComponentVariantValues.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ComponentVariantValues.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ComponentVariants.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVariant)
    CreateComponentData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the component</p>", "smithy.api#required" => {}}))
    CreateComponentData.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceId', traits: {"smithy.api#documentation" => "<p>The unique ID of the component in its original source system, such as Figma.</p>"}))
    CreateComponentData.add_member(:component_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentType, location_name: 'componentType', traits: {"smithy.api#documentation" => "<p>The component type. This can be an Amplify custom UI component or another\n      custom component.</p>", "smithy.api#required" => {}}))
    CreateComponentData.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperties, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>Describes the component's properties.</p>", "smithy.api#required" => {}}))
    CreateComponentData.add_member(:children, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentChildList, location_name: 'children', traits: {"smithy.api#documentation" => "<p>A list of child components that are instances of the main component.</p>"}))
    CreateComponentData.add_member(:variants, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVariants, location_name: 'variants', traits: {"smithy.api#documentation" => "<p>A list of the unique variants of this component.</p>", "smithy.api#required" => {}}))
    CreateComponentData.add_member(:overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentOverrides, location_name: 'overrides', traits: {"smithy.api#documentation" => "<p>Describes the component properties that can be overriden to customize an instance of the\n      component.</p>", "smithy.api#required" => {}}))
    CreateComponentData.add_member(:binding_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentBindingProperties, location_name: 'bindingProperties', traits: {"smithy.api#documentation" => "<p>The data binding information for the component's properties.</p>", "smithy.api#required" => {}}))
    CreateComponentData.add_member(:collection_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentCollectionProperties, location_name: 'collectionProperties', traits: {"smithy.api#documentation" => "<p>The data binding configuration for customizing a component's properties. Use this for a\n      collection component.</p>"}))
    CreateComponentData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>One or more key-value pairs to use when tagging the component data.</p>"}))
    CreateComponentData.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentEvents, location_name: 'events', traits: {"smithy.api#documentation" => "<p>The event configuration for the component. Use for the workflow feature in Amplify Studio that allows you to bind events and actions to components.</p>"}))
    CreateComponentData.add_member(:schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'schemaVersion', traits: {"smithy.api#documentation" => "<p>The schema version of the component when it was imported.</p>"}))
    CreateComponentData.type = Types::CreateComponentData
    CreateComponentInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app to associate with the component.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateComponentInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify\n      app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateComponentInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The unique client token.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    CreateComponentInput.add_member(:component_to_create, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentData, location_name: 'componentToCreate', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>Represents the configuration of the component to create.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateComponentInput[:http_payload] = :component_to_create
    CreateComponentInput[:http_payload_member] = CreateComponentInput.member(:component_to_create)
    CreateComponentInput.type = Types::CreateComponentInput
    CreateComponentOutput.add_member(:entity, Smithy::Schema::Shapes::ShapeRef.new(shape: Component, location_name: 'entity', traits: {"smithy.api#documentation" => "<p>Describes the configuration of the new component.</p>", "smithy.api#httpPayload" => {}}))
    CreateComponentOutput[:http_payload] = :entity
    CreateComponentOutput[:http_payload_member] = CreateComponentOutput.member(:entity)
    CreateComponentOutput.type = Types::CreateComponentOutput
    CreateFormData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FormName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the form.</p>", "smithy.api#required" => {}}))
    CreateFormData.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FormDataTypeConfig, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The type of data source to use to create the form.</p>", "smithy.api#required" => {}}))
    CreateFormData.add_member(:form_action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FormActionType, location_name: 'formActionType', traits: {"smithy.api#documentation" => "<p>Specifies whether to perform a create or update action on the form.</p>", "smithy.api#required" => {}}))
    CreateFormData.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldsMap, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>The configuration information for the form's fields.</p>", "smithy.api#required" => {}}))
    CreateFormData.add_member(:style, Smithy::Schema::Shapes::ShapeRef.new(shape: FormStyle, location_name: 'style', traits: {"smithy.api#documentation" => "<p>The configuration for the form's style.</p>", "smithy.api#required" => {}}))
    CreateFormData.add_member(:sectional_elements, Smithy::Schema::Shapes::ShapeRef.new(shape: SectionalElementMap, location_name: 'sectionalElements', traits: {"smithy.api#documentation" => "<p>The configuration information for the visual helper elements for the form. These elements\n      are not associated with any data.</p>", "smithy.api#required" => {}}))
    CreateFormData.add_member(:schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'schemaVersion', traits: {"smithy.api#documentation" => "<p>The schema version of the form.</p>", "smithy.api#required" => {}}))
    CreateFormData.add_member(:cta, Smithy::Schema::Shapes::ShapeRef.new(shape: FormCTA, location_name: 'cta', traits: {"smithy.api#documentation" => "<p>The <code>FormCTA</code> object that stores the call to action configuration for the\n      form.</p>"}))
    CreateFormData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>One or more key-value pairs to use when tagging the form data.</p>"}))
    CreateFormData.add_member(:label_decorator, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDecorator, location_name: 'labelDecorator', traits: {"smithy.api#documentation" => "<p>Specifies an icon or decoration to display on the form.</p>"}))
    CreateFormData.type = Types::CreateFormData
    CreateFormInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app to associate with the form.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFormInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateFormInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The unique client token.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    CreateFormInput.add_member(:form_to_create, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFormData, location_name: 'formToCreate', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>Represents the configuration of the form to create.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateFormInput[:http_payload] = :form_to_create
    CreateFormInput[:http_payload_member] = CreateFormInput.member(:form_to_create)
    CreateFormInput.type = Types::CreateFormInput
    CreateFormOutput.add_member(:entity, Smithy::Schema::Shapes::ShapeRef.new(shape: Form, location_name: 'entity', traits: {"smithy.api#documentation" => "<p>Describes the configuration of the new form.</p>", "smithy.api#httpPayload" => {}}))
    CreateFormOutput[:http_payload] = :entity
    CreateFormOutput[:http_payload_member] = CreateFormOutput.member(:entity)
    CreateFormOutput.type = Types::CreateFormOutput
    CreateThemeData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the theme.</p>", "smithy.api#required" => {}}))
    CreateThemeData.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeValuesList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that deﬁnes the properties of the theme.</p>", "smithy.api#required" => {}}))
    CreateThemeData.add_member(:overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeValuesList, location_name: 'overrides', traits: {"smithy.api#documentation" => "<p>Describes the properties that can be overriden to customize an instance of the\n      theme.</p>"}))
    CreateThemeData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>One or more key-value pairs to use when tagging the theme data.</p>"}))
    CreateThemeData.type = Types::CreateThemeData
    CreateThemeInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app associated with the theme.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateThemeInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify\n      app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateThemeInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The unique client token.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    CreateThemeInput.add_member(:theme_to_create, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateThemeData, location_name: 'themeToCreate', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>Represents the configuration of the theme to create.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateThemeInput[:http_payload] = :theme_to_create
    CreateThemeInput[:http_payload_member] = CreateThemeInput.member(:theme_to_create)
    CreateThemeInput.type = Types::CreateThemeInput
    CreateThemeOutput.add_member(:entity, Smithy::Schema::Shapes::ShapeRef.new(shape: Theme, location_name: 'entity', traits: {"smithy.api#documentation" => "<p>Describes the configuration of the new theme.</p>", "smithy.api#httpPayload" => {}}))
    CreateThemeOutput[:http_payload] = :entity
    CreateThemeOutput[:http_payload_member] = CreateThemeOutput.member(:entity)
    CreateThemeOutput.type = Types::CreateThemeOutput
    DataStoreRenderConfig.type = Types::DataStoreRenderConfig
    DeleteComponentInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app associated with the component to\n      delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteComponentInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify\n      app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteComponentInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the component to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteComponentInput.type = Types::DeleteComponentInput
    DeleteFormInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app associated with the form to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFormInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFormInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the form to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFormInput.type = Types::DeleteFormInput
    DeleteThemeInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app associated with the theme to\n      delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteThemeInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify\n      app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteThemeInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the theme to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteThemeInput.type = Types::DeleteThemeInput
    ExchangeCodeForTokenInput.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenProviders, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The third-party provider for the token. The only valid value is <code>figma</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExchangeCodeForTokenInput.add_member(:request, Smithy::Schema::Shapes::ShapeRef.new(shape: ExchangeCodeForTokenRequestBody, location_name: 'request', traits: {"smithy.api#documentation" => "<p>Describes the configuration of the request.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ExchangeCodeForTokenInput[:http_payload] = :request
    ExchangeCodeForTokenInput[:http_payload_member] = ExchangeCodeForTokenInput.member(:request)
    ExchangeCodeForTokenInput.type = Types::ExchangeCodeForTokenInput
    ExchangeCodeForTokenOutput.add_member(:access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'accessToken', traits: {"smithy.api#documentation" => "<p>The access token.</p>", "smithy.api#required" => {}}))
    ExchangeCodeForTokenOutput.add_member(:expires_in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'expiresIn', traits: {"smithy.api#documentation" => "<p>The date and time when the new access token expires.</p>", "smithy.api#required" => {}}))
    ExchangeCodeForTokenOutput.add_member(:refresh_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'refreshToken', traits: {"smithy.api#documentation" => "<p>The token to use to refresh a previously issued access token that might have\n      expired.</p>", "smithy.api#required" => {}}))
    ExchangeCodeForTokenOutput.type = Types::ExchangeCodeForTokenOutput
    ExchangeCodeForTokenRequestBody.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The access code to send in the request.</p>", "smithy.api#required" => {}}))
    ExchangeCodeForTokenRequestBody.add_member(:redirect_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'redirectUri', traits: {"smithy.api#documentation" => "<p>The location of the application that will receive the access code.</p>", "smithy.api#required" => {}}))
    ExchangeCodeForTokenRequestBody.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'clientId', traits: {"smithy.api#documentation" => "<p>The ID of the client to request the token from.</p>"}))
    ExchangeCodeForTokenRequestBody.type = Types::ExchangeCodeForTokenRequestBody
    ExportComponentsInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app to export components to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportComponentsInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify\n      app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportComponentsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ExportComponentsInput.type = Types::ExportComponentsInput
    ExportComponentsOutput.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentList, location_name: 'entities', traits: {"smithy.api#documentation" => "<p>Represents the configuration of the exported components.</p>", "smithy.api#required" => {}}))
    ExportComponentsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's included if more results are available.</p>"}))
    ExportComponentsOutput.type = Types::ExportComponentsOutput
    ExportFormsInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app to export forms to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportFormsInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportFormsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ExportFormsInput.type = Types::ExportFormsInput
    ExportFormsOutput.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: FormList, location_name: 'entities', traits: {"smithy.api#documentation" => "<p>Represents the configuration of the exported forms.</p>", "smithy.api#required" => {}}))
    ExportFormsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's included if more results are available.</p>"}))
    ExportFormsOutput.type = Types::ExportFormsOutput
    ExportThemesInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app to export the themes to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportThemesInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is part of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportThemesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ExportThemesInput.type = Types::ExportThemesInput
    ExportThemesOutput.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeList, location_name: 'entities', traits: {"smithy.api#documentation" => "<p>Represents the configuration of the exported themes.</p>", "smithy.api#required" => {}}))
    ExportThemesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's included if more results are available.</p>"}))
    ExportThemesOutput.type = Types::ExportThemesOutput
    FeaturesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    FeaturesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    FieldConfig.add_member(:label, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'label', traits: {"smithy.api#documentation" => "<p>The label for the field.</p>"}))
    FieldConfig.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldPosition, location_name: 'position', traits: {"smithy.api#documentation" => "<p>Specifies the field position.</p>"}))
    FieldConfig.add_member(:excluded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'excluded', traits: {"smithy.api#documentation" => "<p>Specifies whether to hide a field.</p>"}))
    FieldConfig.add_member(:input_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldInputConfig, location_name: 'inputType', traits: {"smithy.api#documentation" => "<p>Describes the configuration for the default input value to display for a field.</p>"}))
    FieldConfig.add_member(:validations, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationsList, location_name: 'validations', traits: {"smithy.api#documentation" => "<p>The validations to perform on the value in the field.</p>"}))
    FieldConfig.type = Types::FieldConfig
    FieldInputConfig.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The input type for the field. </p>", "smithy.api#required" => {}}))
    FieldInputConfig.add_member(:required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'required', traits: {"smithy.api#documentation" => "<p>Specifies a field that requires input.</p>"}))
    FieldInputConfig.add_member(:read_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'readOnly', traits: {"smithy.api#documentation" => "<p>Specifies a read only field.</p>"}))
    FieldInputConfig.add_member(:placeholder, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'placeholder', traits: {"smithy.api#documentation" => "<p>The text to display as a placeholder for the field.</p>"}))
    FieldInputConfig.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'defaultValue', traits: {"smithy.api#documentation" => "<p>The default value for the field.</p>"}))
    FieldInputConfig.add_member(:descriptive_text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'descriptiveText', traits: {"smithy.api#documentation" => "<p>The text to display to describe the field.</p>"}))
    FieldInputConfig.add_member(:default_checked, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'defaultChecked', traits: {"smithy.api#documentation" => "<p>Specifies whether a field has a default value.</p>"}))
    FieldInputConfig.add_member(:default_country_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'defaultCountryCode', traits: {"smithy.api#documentation" => "<p>The default country code for a phone number.</p>"}))
    FieldInputConfig.add_member(:value_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueMappings, location_name: 'valueMappings', traits: {"smithy.api#documentation" => "<p>The information to use to customize the input fields with data at runtime.</p>"}))
    FieldInputConfig.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the field.</p>"}))
    FieldInputConfig.add_member(:min_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Float, location_name: 'minValue', traits: {"smithy.api#documentation" => "<p>The minimum value to display for the field.</p>"}))
    FieldInputConfig.add_member(:max_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Float, location_name: 'maxValue', traits: {"smithy.api#documentation" => "<p>The maximum value to display for the field.</p>"}))
    FieldInputConfig.add_member(:step, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Float, location_name: 'step', traits: {"smithy.api#documentation" => "<p>The stepping increment for a numeric value in a field.</p>"}))
    FieldInputConfig.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value for the field.</p>"}))
    FieldInputConfig.add_member(:is_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isArray', traits: {"smithy.api#documentation" => "<p>Specifies whether to render the field as an array. This property is ignored if the\n        <code>dataSourceType</code> for the form is a Data Store.</p>"}))
    FieldInputConfig.add_member(:file_uploader_config, Smithy::Schema::Shapes::ShapeRef.new(shape: FileUploaderFieldConfig, location_name: 'fileUploaderConfig', traits: {"smithy.api#documentation" => "<p>The configuration for the file uploader field.</p>"}))
    FieldInputConfig.type = Types::FieldInputConfig
    FieldPosition.add_member(:fixed, Types::FieldPosition::Fixed, Smithy::Schema::Shapes::ShapeRef.new(shape: FixedPosition, location_name: 'fixed', traits: {"smithy.api#documentation" => "<p>The field position is fixed and doesn't change in relation to other fields.</p>"}))
    FieldPosition.add_member(:right_of, Types::FieldPosition::RightOf, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'rightOf', traits: {"smithy.api#documentation" => "<p>The field position is to the right of the field specified by the string.</p>"}))
    FieldPosition.add_member(:below, Types::FieldPosition::Below, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'below', traits: {"smithy.api#documentation" => "<p>The field position is below the field specified by the string.</p>"}))
    FieldPosition.add_member(:unknown, Types::FieldPosition::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    FieldPosition.type = Types::FieldPosition
    FieldValidationConfiguration.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The validation to perform on an object type.<code/>\n         </p>", "smithy.api#required" => {}}))
    FieldValidationConfiguration.add_member(:str_values, Smithy::Schema::Shapes::ShapeRef.new(shape: StrValues, location_name: 'strValues', traits: {"smithy.api#documentation" => "<p>The validation to perform on a string value.</p>"}))
    FieldValidationConfiguration.add_member(:num_values, Smithy::Schema::Shapes::ShapeRef.new(shape: NumValues, location_name: 'numValues', traits: {"smithy.api#documentation" => "<p>The validation to perform on a number value.</p>"}))
    FieldValidationConfiguration.add_member(:validation_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'validationMessage', traits: {"smithy.api#documentation" => "<p>The validation message to display.</p>"}))
    FieldValidationConfiguration.type = Types::FieldValidationConfiguration
    FieldsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    FieldsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: FieldConfig)
    FileUploaderFieldConfig.add_member(:access_level, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageAccessLevel, location_name: 'accessLevel', traits: {"smithy.api#documentation" => "<p>The access level to assign to the uploaded files in the Amazon S3 bucket where\n      they are stored. The valid values for this property are <code>private</code>,\n        <code>protected</code>, or <code>public</code>. For detailed information about the\n      permissions associated with each access level, see <a href=\"https://docs.amplify.aws/lib/storage/configureaccess/q/platform/js/\">File access\n        levels</a> in the <i>Amplify documentation</i>.</p>", "smithy.api#required" => {}}))
    FileUploaderFieldConfig.add_member(:accepted_file_types, Smithy::Schema::Shapes::ShapeRef.new(shape: StrValues, location_name: 'acceptedFileTypes', traits: {"smithy.api#documentation" => "<p>The file types that are allowed to be uploaded by the file uploader. Provide this\n      information in an array of strings specifying the valid file extensions.</p>", "smithy.api#required" => {}}))
    FileUploaderFieldConfig.add_member(:show_thumbnails, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'showThumbnails', traits: {"smithy.api#documentation" => "<p>Specifies whether to display or hide the image preview after selecting a file for upload.\n      The default value is <code>true</code> to display the image preview.</p>"}))
    FileUploaderFieldConfig.add_member(:is_resumable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isResumable', traits: {"smithy.api#documentation" => "<p>Allows the file upload operation to be paused and resumed. The default value is\n        <code>false</code>.</p>\n         <p>When <code>isResumable</code> is set to <code>true</code>, the file uploader uses a\n      multipart upload to break the files into chunks before upload. The progress of the upload\n      isn't continuous, because the file uploader uploads a chunk at a time.</p>"}))
    FileUploaderFieldConfig.add_member(:max_file_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxFileCount', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of files that can be selected to upload. The default value is\n      an unlimited number of files.</p>"}))
    FileUploaderFieldConfig.add_member(:max_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxSize', traits: {"smithy.api#documentation" => "<p>The maximum file size in bytes that the file uploader will accept. The default value is an\n      unlimited file size.</p>"}))
    FileUploaderFieldConfig.type = Types::FileUploaderFieldConfig
    FixedPosition.add_member(:first, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIRST', traits: {"smithy.api#enumValue" => "first"}))
    Form.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app associated with the form.</p>", "smithy.api#required" => {}}))
    Form.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify app.</p>", "smithy.api#required" => {}}))
    Form.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the form.</p>", "smithy.api#required" => {}}))
    Form.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FormName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the form.</p>", "smithy.api#required" => {}}))
    Form.add_member(:form_action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FormActionType, location_name: 'formActionType', traits: {"smithy.api#documentation" => "<p>The operation to perform on the specified form.</p>", "smithy.api#required" => {}}))
    Form.add_member(:style, Smithy::Schema::Shapes::ShapeRef.new(shape: FormStyle, location_name: 'style', traits: {"smithy.api#documentation" => "<p>Stores the configuration for the form's style.</p>", "smithy.api#required" => {}}))
    Form.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FormDataTypeConfig, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The type of data source to use to create the form.</p>", "smithy.api#required" => {}}))
    Form.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldsMap, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>Stores the information about the form's fields.</p>", "smithy.api#required" => {}}))
    Form.add_member(:sectional_elements, Smithy::Schema::Shapes::ShapeRef.new(shape: SectionalElementMap, location_name: 'sectionalElements', traits: {"smithy.api#documentation" => "<p>Stores the visual helper elements for the form that are not associated with any\n      data.</p>", "smithy.api#required" => {}}))
    Form.add_member(:schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'schemaVersion', traits: {"smithy.api#documentation" => "<p>The schema version of the form when it was imported.</p>", "smithy.api#required" => {}}))
    Form.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>One or more key-value pairs to use when tagging the form.</p>"}))
    Form.add_member(:cta, Smithy::Schema::Shapes::ShapeRef.new(shape: FormCTA, location_name: 'cta', traits: {"smithy.api#documentation" => "<p>Stores the call to action configuration for the form.</p>"}))
    Form.add_member(:label_decorator, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDecorator, location_name: 'labelDecorator', traits: {"smithy.api#documentation" => "<p>Specifies an icon or decoration to display on the form.</p>"}))
    Form.type = Types::Form
    FormActionType.add_member(:create, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE', traits: {"smithy.api#enumValue" => "create"}))
    FormActionType.add_member(:update, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE', traits: {"smithy.api#enumValue" => "update"}))
    FormBindingElement.add_member(:element, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'element', traits: {"smithy.api#documentation" => "<p>The name of the component to retrieve a value from.</p>", "smithy.api#required" => {}}))
    FormBindingElement.add_member(:property, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'property', traits: {"smithy.api#documentation" => "<p>The property to retrieve a value from.</p>", "smithy.api#required" => {}}))
    FormBindingElement.type = Types::FormBindingElement
    FormBindings.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    FormBindings.value = Smithy::Schema::Shapes::ShapeRef.new(shape: FormBindingElement)
    FormButton.add_member(:excluded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'excluded', traits: {"smithy.api#documentation" => "<p>Specifies whether the button is visible on the form.</p>"}))
    FormButton.add_member(:children, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'children', traits: {"smithy.api#documentation" => "<p>Describes the button's properties.</p>"}))
    FormButton.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldPosition, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The position of the button.</p>"}))
    FormButton.type = Types::FormButton
    FormButtonsPosition.add_member(:top, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOP', traits: {"smithy.api#enumValue" => "top"}))
    FormButtonsPosition.add_member(:bottom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOTTOM', traits: {"smithy.api#enumValue" => "bottom"}))
    FormButtonsPosition.add_member(:top_and_bottom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOP_AND_BOTTOM', traits: {"smithy.api#enumValue" => "top_and_bottom"}))
    FormCTA.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: FormButtonsPosition, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The position of the button.</p>"}))
    FormCTA.add_member(:clear, Smithy::Schema::Shapes::ShapeRef.new(shape: FormButton, location_name: 'clear', traits: {"smithy.api#documentation" => "<p>Displays a clear button.</p>"}))
    FormCTA.add_member(:cancel, Smithy::Schema::Shapes::ShapeRef.new(shape: FormButton, location_name: 'cancel', traits: {"smithy.api#documentation" => "<p>Displays a cancel button.</p>"}))
    FormCTA.add_member(:submit, Smithy::Schema::Shapes::ShapeRef.new(shape: FormButton, location_name: 'submit', traits: {"smithy.api#documentation" => "<p>Displays a submit button.</p>"}))
    FormCTA.type = Types::FormCTA
    FormDataTypeConfig.add_member(:data_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FormDataSourceType, location_name: 'dataSourceType', traits: {"smithy.api#documentation" => "<p>The data source type, either an Amplify DataStore model or a custom data type.</p>", "smithy.api#required" => {}}))
    FormDataTypeConfig.add_member(:data_type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'dataTypeName', traits: {"smithy.api#documentation" => "<p>The unique name of the data type you are using as the data source for the form.</p>", "smithy.api#required" => {}}))
    FormDataTypeConfig.type = Types::FormDataTypeConfig
    FormInputBindingProperties.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    FormInputBindingProperties.value = Smithy::Schema::Shapes::ShapeRef.new(shape: FormInputBindingPropertiesValue)
    FormInputBindingPropertiesValue.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The property type.</p>"}))
    FormInputBindingPropertiesValue.add_member(:binding_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: FormInputBindingPropertiesValueProperties, location_name: 'bindingProperties', traits: {"smithy.api#documentation" => "<p>Describes the properties to customize with data at runtime.</p>"}))
    FormInputBindingPropertiesValue.type = Types::FormInputBindingPropertiesValue
    FormInputBindingPropertiesValueProperties.add_member(:model, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'model', traits: {"smithy.api#documentation" => "<p>An Amplify DataStore model.</p>"}))
    FormInputBindingPropertiesValueProperties.type = Types::FormInputBindingPropertiesValueProperties
    FormInputValueProperty.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value to assign to the input field.</p>"}))
    FormInputValueProperty.add_member(:binding_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: FormInputValuePropertyBindingProperties, location_name: 'bindingProperties', traits: {"smithy.api#documentation" => "<p>The information to bind fields to data at runtime.</p>"}))
    FormInputValueProperty.add_member(:concat, Smithy::Schema::Shapes::ShapeRef.new(shape: FormInputValuePropertyList, location_name: 'concat', traits: {"smithy.api#documentation" => "<p>A list of form properties to concatenate to create the value to assign to this field\n      property.</p>"}))
    FormInputValueProperty.type = Types::FormInputValueProperty
    FormInputValuePropertyBindingProperties.add_member(:property, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'property', traits: {"smithy.api#documentation" => "<p>The form property to bind to the data field.</p>", "smithy.api#required" => {}}))
    FormInputValuePropertyBindingProperties.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'field', traits: {"smithy.api#documentation" => "<p>The data field to bind the property to.</p>"}))
    FormInputValuePropertyBindingProperties.type = Types::FormInputValuePropertyBindingProperties
    FormInputValuePropertyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FormInputValueProperty)
    FormList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Form)
    FormStyle.add_member(:horizontal_gap, Smithy::Schema::Shapes::ShapeRef.new(shape: FormStyleConfig, location_name: 'horizontalGap', traits: {"smithy.api#documentation" => "<p>The spacing for the horizontal gap.</p>"}))
    FormStyle.add_member(:vertical_gap, Smithy::Schema::Shapes::ShapeRef.new(shape: FormStyleConfig, location_name: 'verticalGap', traits: {"smithy.api#documentation" => "<p>The spacing for the vertical gap.</p>"}))
    FormStyle.add_member(:outer_padding, Smithy::Schema::Shapes::ShapeRef.new(shape: FormStyleConfig, location_name: 'outerPadding', traits: {"smithy.api#documentation" => "<p>The size of the outer padding for the form.</p>"}))
    FormStyle.type = Types::FormStyle
    FormStyleConfig.add_member(:token_reference, Types::FormStyleConfig::TokenReference, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'tokenReference', traits: {"smithy.api#documentation" => "<p>A reference to a design token to use to bind the form's style properties to an existing\n      theme.</p>"}))
    FormStyleConfig.add_member(:value, Types::FormStyleConfig::Value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the style setting.</p>"}))
    FormStyleConfig.add_member(:unknown, Types::FormStyleConfig::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    FormStyleConfig.type = Types::FormStyleConfig
    FormSummary.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for the app associated with the form summary.</p>", "smithy.api#required" => {}}))
    FormSummary.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FormDataTypeConfig, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The form's data source type.</p>", "smithy.api#required" => {}}))
    FormSummary.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is part of the Amplify app.</p>", "smithy.api#required" => {}}))
    FormSummary.add_member(:form_action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FormActionType, location_name: 'formActionType', traits: {"smithy.api#documentation" => "<p>The type of operation to perform on the form.</p>", "smithy.api#required" => {}}))
    FormSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the form.</p>", "smithy.api#required" => {}}))
    FormSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FormName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the form.</p>", "smithy.api#required" => {}}))
    FormSummary.type = Types::FormSummary
    FormSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FormSummary)
    GenericDataRelationshipType.add_member(:has_many, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HAS_MANY', traits: {"smithy.api#enumValue" => "HAS_MANY"}))
    GenericDataRelationshipType.add_member(:has_one, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HAS_ONE', traits: {"smithy.api#enumValue" => "HAS_ONE"}))
    GenericDataRelationshipType.add_member(:belongs_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BELONGS_TO', traits: {"smithy.api#enumValue" => "BELONGS_TO"}))
    GetCodegenJobRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app associated with the code generation job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCodegenJobRequest.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify app associated with the code generation job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCodegenJobRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the code generation job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCodegenJobRequest.type = Types::GetCodegenJobRequest
    GetCodegenJobResponse.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenJob, location_name: 'job', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The configuration settings for the code generation job.</p>", "smithy.api#httpPayload" => {}}))
    GetCodegenJobResponse[:http_payload] = :job
    GetCodegenJobResponse[:http_payload_member] = GetCodegenJobResponse.member(:job)
    GetCodegenJobResponse.type = Types::GetCodegenJobResponse
    GetComponentInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is part of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the component.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetComponentInput.type = Types::GetComponentInput
    GetComponentOutput.add_member(:component, Smithy::Schema::Shapes::ShapeRef.new(shape: Component, location_name: 'component', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>Represents the configuration settings for the component.</p>", "smithy.api#httpPayload" => {}}))
    GetComponentOutput[:http_payload] = :component
    GetComponentOutput[:http_payload_member] = GetComponentOutput.member(:component)
    GetComponentOutput.type = Types::GetComponentOutput
    GetFormInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFormInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is part of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFormInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the form.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFormInput.type = Types::GetFormInput
    GetFormOutput.add_member(:form, Smithy::Schema::Shapes::ShapeRef.new(shape: Form, location_name: 'form', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>Represents the configuration settings for the form.</p>", "smithy.api#httpPayload" => {}}))
    GetFormOutput[:http_payload] = :form
    GetFormOutput[:http_payload_member] = GetFormOutput.member(:form)
    GetFormOutput.type = Types::GetFormOutput
    GetMetadataInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMetadataInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is part of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMetadataInput.type = Types::GetMetadataInput
    GetMetadataOutput.add_member(:features, Smithy::Schema::Shapes::ShapeRef.new(shape: FeaturesMap, location_name: 'features', traits: {"smithy.api#documentation" => "<p>Represents the configuration settings for the features metadata.</p>", "smithy.api#required" => {}}))
    GetMetadataOutput.type = Types::GetMetadataOutput
    GetThemeInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetThemeInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is part of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetThemeInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the theme.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetThemeInput.type = Types::GetThemeInput
    GetThemeOutput.add_member(:theme, Smithy::Schema::Shapes::ShapeRef.new(shape: Theme, location_name: 'theme', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>Represents the configuration settings for the theme.</p>", "smithy.api#httpPayload" => {}}))
    GetThemeOutput[:http_payload] = :theme
    GetThemeOutput[:http_payload_member] = GetThemeOutput.member(:theme)
    GetThemeOutput.type = Types::GetThemeOutput
    GraphQLRenderConfig.add_member(:types_file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'typesFilePath', traits: {"smithy.api#documentation" => "<p>The path to the GraphQL types file, relative to the component output directory.</p>", "smithy.api#required" => {}}))
    GraphQLRenderConfig.add_member(:queries_file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'queriesFilePath', traits: {"smithy.api#documentation" => "<p>The path to the GraphQL queries file, relative to the component output directory.</p>", "smithy.api#required" => {}}))
    GraphQLRenderConfig.add_member(:mutations_file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'mutationsFilePath', traits: {"smithy.api#documentation" => "<p>The path to the GraphQL mutations file, relative to the component output directory.</p>", "smithy.api#required" => {}}))
    GraphQLRenderConfig.add_member(:subscriptions_file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'subscriptionsFilePath', traits: {"smithy.api#documentation" => "<p>The path to the GraphQL subscriptions file, relative to the component output directory.</p>", "smithy.api#required" => {}}))
    GraphQLRenderConfig.add_member(:fragments_file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'fragmentsFilePath', traits: {"smithy.api#documentation" => "<p>The path to the GraphQL fragments file, relative to the component output directory.</p>", "smithy.api#required" => {}}))
    GraphQLRenderConfig.type = Types::GraphQLRenderConfig
    IdentifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InvalidParameterException.type = Types::InvalidParameterException
    JSModule.add_member(:es2020, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES2020', traits: {"smithy.api#enumValue" => "es2020"}))
    JSModule.add_member(:esnext, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ESNEXT', traits: {"smithy.api#enumValue" => "esnext"}))
    JSScript.add_member(:jsx, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSX', traits: {"smithy.api#enumValue" => "jsx"}))
    JSScript.add_member(:tsx, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TSX', traits: {"smithy.api#enumValue" => "tsx"}))
    JSScript.add_member(:js, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JS', traits: {"smithy.api#enumValue" => "js"}))
    JSTarget.add_member(:es2015, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES2015', traits: {"smithy.api#enumValue" => "es2015"}))
    JSTarget.add_member(:es2020, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES2020', traits: {"smithy.api#enumValue" => "es2020"}))
    ListCodegenJobsRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCodegenJobsRequest.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListCodegenJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCodegenJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListCodegenJobsLimit, location_name: 'maxResults', traits: {"smithy.api#default" => 100, "smithy.api#documentation" => "<p>The maximum number of jobs to retrieve.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListCodegenJobsRequest.type = Types::ListCodegenJobsRequest
    ListCodegenJobsResponse.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenJobSummaryList, location_name: 'entities', traits: {"smithy.api#documentation" => "<p>The list of code generation jobs for the Amplify app.</p>", "smithy.api#required" => {}}))
    ListCodegenJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's included if more results are available.</p>"}))
    ListCodegenJobsResponse.type = Types::ListCodegenJobsResponse
    ListComponentsInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListComponentsInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify\n      app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListComponentsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListComponentsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntityLimit, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of components to retrieve.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListComponentsInput.type = Types::ListComponentsInput
    ListComponentsOutput.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentSummaryList, location_name: 'entities', traits: {"smithy.api#documentation" => "<p>The list of components for the Amplify app.</p>", "smithy.api#required" => {}}))
    ListComponentsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's included if more results are available.</p>"}))
    ListComponentsOutput.type = Types::ListComponentsOutput
    ListFormsInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFormsInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFormsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListFormsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntityLimit, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of forms to retrieve.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListFormsInput.type = Types::ListFormsInput
    ListFormsOutput.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: FormSummaryList, location_name: 'entities', traits: {"smithy.api#documentation" => "<p>The list of forms for the Amplify app.</p>", "smithy.api#required" => {}}))
    ListFormsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's included if more results are available.</p>"}))
    ListFormsOutput.type = Types::ListFormsOutput
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) to use to list tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tag key value pairs for a specified Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListThemesInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListThemesInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify\n      app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListThemesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to request the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListThemesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntityLimit, location_name: 'maxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of theme results to return in the response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListThemesInput.type = Types::ListThemesInput
    ListThemesOutput.add_member(:entities, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeSummaryList, location_name: 'entities', traits: {"smithy.api#documentation" => "<p>The list of themes for the Amplify app.</p>", "smithy.api#required" => {}}))
    ListThemesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The pagination token that's returned if more results are available.</p>"}))
    ListThemesOutput.type = Types::ListThemesOutput
    MutationActionSetStateParameter.add_member(:component_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'componentName', traits: {"smithy.api#documentation" => "<p>The name of the component that is being modified.</p>", "smithy.api#required" => {}}))
    MutationActionSetStateParameter.add_member(:property, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'property', traits: {"smithy.api#documentation" => "<p>The name of the component property to apply the state configuration to.</p>", "smithy.api#required" => {}}))
    MutationActionSetStateParameter.add_member(:set, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperty, location_name: 'set', traits: {"smithy.api#documentation" => "<p>The state configuration to assign to the property.</p>", "smithy.api#required" => {}}))
    MutationActionSetStateParameter.type = Types::MutationActionSetStateParameter
    NoApiRenderConfig.type = Types::NoApiRenderConfig
    NumValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer)
    Predicate.add_member(:or, Smithy::Schema::Shapes::ShapeRef.new(shape: PredicateList, location_name: 'or', traits: {"smithy.api#documentation" => "<p>A list of predicates to combine logically.</p>"}))
    Predicate.add_member(:and, Smithy::Schema::Shapes::ShapeRef.new(shape: PredicateList, location_name: 'and', traits: {"smithy.api#documentation" => "<p>A list of predicates to combine logically.</p>"}))
    Predicate.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'field', traits: {"smithy.api#documentation" => "<p>The field to query.</p>"}))
    Predicate.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'operator', traits: {"smithy.api#documentation" => "<p>The operator to use to perform the evaluation.</p>"}))
    Predicate.add_member(:operand, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'operand', traits: {"smithy.api#documentation" => "<p>The value to use when performing the evaluation.</p>"}))
    Predicate.add_member(:operand_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OperandType, location_name: 'operandType', traits: {"smithy.api#documentation" => "<p>The type of value to use when performing the evaluation.</p>"}))
    Predicate.type = Types::Predicate
    PredicateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Predicate)
    PutMetadataFlagBody.add_member(:new_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'newValue', traits: {"smithy.api#documentation" => "<p>The new information to store.</p>", "smithy.api#required" => {}}))
    PutMetadataFlagBody.type = Types::PutMetadataFlagBody
    PutMetadataFlagInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMetadataFlagInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is part of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMetadataFlagInput.add_member(:feature_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'featureName', traits: {"smithy.api#documentation" => "<p>The name of the feature associated with the metadata.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutMetadataFlagInput.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: PutMetadataFlagBody, location_name: 'body', traits: {"smithy.api#documentation" => "<p>The metadata information to store.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutMetadataFlagInput[:http_payload] = :body
    PutMetadataFlagInput[:http_payload_member] = PutMetadataFlagInput.member(:body)
    PutMetadataFlagInput.type = Types::PutMetadataFlagInput
    ReactCodegenDependencies.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ReactCodegenDependencies.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ReactStartCodegenJobData.add_member(:module, Smithy::Schema::Shapes::ShapeRef.new(shape: JSModule, location_name: 'module', traits: {"smithy.api#documentation" => "<p>The JavaScript module type.</p>"}))
    ReactStartCodegenJobData.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: JSTarget, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The ECMAScript specification to use.</p>"}))
    ReactStartCodegenJobData.add_member(:script, Smithy::Schema::Shapes::ShapeRef.new(shape: JSScript, location_name: 'script', traits: {"smithy.api#documentation" => "<p>The file type to use for a JavaScript project.</p>"}))
    ReactStartCodegenJobData.add_member(:render_type_declarations, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'renderTypeDeclarations', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the code generation job should render type declaration files.</p>"}))
    ReactStartCodegenJobData.add_member(:inline_source_map, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'inlineSourceMap', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the code generation job should render inline source maps.</p>"}))
    ReactStartCodegenJobData.add_member(:api_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiConfiguration, location_name: 'apiConfiguration', traits: {"smithy.api#documentation" => "<p>The API configuration for the code generation job.</p>"}))
    ReactStartCodegenJobData.add_member(:dependencies, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactCodegenDependencies, location_name: 'dependencies', traits: {"smithy.api#documentation" => "<p>Lists the dependency packages that may be required for the project code to run.</p>"}))
    ReactStartCodegenJobData.type = Types::ReactStartCodegenJobData
    RefreshTokenInput.add_member(:provider, Smithy::Schema::Shapes::ShapeRef.new(shape: TokenProviders, location_name: 'provider', traits: {"smithy.api#documentation" => "<p>The third-party provider for the token. The only valid value is <code>figma</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RefreshTokenInput.add_member(:refresh_token_body, Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshTokenRequestBody, location_name: 'refreshTokenBody', traits: {"smithy.api#documentation" => "<p>Information about the refresh token request.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    RefreshTokenInput[:http_payload] = :refresh_token_body
    RefreshTokenInput[:http_payload_member] = RefreshTokenInput.member(:refresh_token_body)
    RefreshTokenInput.type = Types::RefreshTokenInput
    RefreshTokenOutput.add_member(:access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'accessToken', traits: {"smithy.api#documentation" => "<p>The access token.</p>", "smithy.api#required" => {}}))
    RefreshTokenOutput.add_member(:expires_in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'expiresIn', traits: {"smithy.api#documentation" => "<p>The date and time when the new access token expires.</p>", "smithy.api#required" => {}}))
    RefreshTokenOutput.type = Types::RefreshTokenOutput
    RefreshTokenRequestBody.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'token', traits: {"smithy.api#documentation" => "<p>The token to use to refresh a previously issued access token that might have\n      expired.</p>", "smithy.api#required" => {}}))
    RefreshTokenRequestBody.add_member(:client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'clientId', traits: {"smithy.api#documentation" => "<p>The ID of the client to request the token from.</p>"}))
    RefreshTokenRequestBody.type = Types::RefreshTokenRequestBody
    RelatedModelFieldsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ResourceConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceConflictException.type = Types::ResourceConflictException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SectionalElement.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of sectional element. Valid values are <code>Heading</code>, <code>Text</code>,\n      and <code>Divider</code>.</p>", "smithy.api#required" => {}}))
    SectionalElement.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldPosition, location_name: 'position', traits: {"smithy.api#documentation" => "<p>Specifies the position of the text in a field for a <code>Text</code> sectional\n      element.</p>"}))
    SectionalElement.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'text', traits: {"smithy.api#documentation" => "<p>The text for a <code>Text</code> sectional element.</p>"}))
    SectionalElement.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'level', traits: {"smithy.api#documentation" => "<p>Specifies the size of the font for a <code>Heading</code> sectional element. Valid values\n      are <code>1 | 2 | 3 | 4 | 5 | 6</code>.</p>"}))
    SectionalElement.add_member(:orientation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'orientation', traits: {"smithy.api#documentation" => "<p>Specifies the orientation for a <code>Divider</code> sectional element. Valid values are\n        <code>horizontal</code> or <code>vertical</code>.</p>"}))
    SectionalElement.add_member(:excluded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'excluded', traits: {"smithy.api#documentation" => "<p>Excludes a sectional element that was generated by default for a specified data\n      model.</p>"}))
    SectionalElement.type = Types::SectionalElement
    SectionalElementMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    SectionalElementMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: SectionalElement)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SortDirection.add_member(:asc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASC', traits: {"smithy.api#enumValue" => "ASC"}))
    SortDirection.add_member(:desc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESC', traits: {"smithy.api#enumValue" => "DESC"}))
    SortProperty.add_member(:field, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'field', traits: {"smithy.api#documentation" => "<p>The field to perform the sort on.</p>", "smithy.api#required" => {}}))
    SortProperty.add_member(:direction, Smithy::Schema::Shapes::ShapeRef.new(shape: SortDirection, location_name: 'direction', traits: {"smithy.api#documentation" => "<p>The direction of the sort, either ascending or descending.</p>", "smithy.api#required" => {}}))
    SortProperty.type = Types::SortProperty
    SortPropertyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SortProperty)
    StartCodegenJobData.add_member(:render_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenJobRenderConfig, location_name: 'renderConfig', traits: {"smithy.api#documentation" => "<p>The code generation configuration for the codegen job.</p>", "smithy.api#required" => {}}))
    StartCodegenJobData.add_member(:generic_data_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenJobGenericDataSchema, location_name: 'genericDataSchema', traits: {"smithy.api#documentation" => "<p>The data schema to use for a code generation job.</p>"}))
    StartCodegenJobData.add_member(:auto_generate_forms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'autoGenerateForms', traits: {"smithy.api#documentation" => "<p>Specifies whether to autogenerate forms in the code generation job.</p>"}))
    StartCodegenJobData.add_member(:features, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenFeatureFlags, location_name: 'features', traits: {"smithy.api#documentation" => "<p>The feature flags for a code generation job.</p>"}))
    StartCodegenJobData.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>One or more key-value pairs to use when tagging the code generation job data.</p>"}))
    StartCodegenJobData.type = Types::StartCodegenJobData
    StartCodegenJobRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartCodegenJobRequest.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartCodegenJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The idempotency token used to ensure that the code generation job request completes only once.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    StartCodegenJobRequest.add_member(:codegen_job_to_create, Smithy::Schema::Shapes::ShapeRef.new(shape: StartCodegenJobData, location_name: 'codegenJobToCreate', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The code generation job resource configuration.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    StartCodegenJobRequest[:http_payload] = :codegen_job_to_create
    StartCodegenJobRequest[:http_payload_member] = StartCodegenJobRequest.member(:codegen_job_to_create)
    StartCodegenJobRequest.type = Types::StartCodegenJobRequest
    StartCodegenJobResponse.add_member(:entity, Smithy::Schema::Shapes::ShapeRef.new(shape: CodegenJob, location_name: 'entity', traits: {"smithy.api#documentation" => "<p>The code generation job for a UI component that is associated with an Amplify app.</p>", "smithy.api#httpPayload" => {}}))
    StartCodegenJobResponse[:http_payload] = :entity
    StartCodegenJobResponse[:http_payload_member] = StartCodegenJobResponse.member(:entity)
    StartCodegenJobResponse.type = Types::StartCodegenJobResponse
    StorageAccessLevel.add_member(:public, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC', traits: {"smithy.api#enumValue" => "public"}))
    StorageAccessLevel.add_member(:protected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROTECTED', traits: {"smithy.api#enumValue" => "protected"}))
    StorageAccessLevel.add_member(:private, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "private"}))
    StrValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) to use to tag a resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tag key value pairs for a specified Amazon Resource Name (ARN).</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    Theme.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for the Amplify app associated with the theme.</p>", "smithy.api#required" => {}}))
    Theme.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is a part of the Amplify\n      app.</p>", "smithy.api#required" => {}}))
    Theme.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID for the theme.</p>", "smithy.api#required" => {}}))
    Theme.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the theme.</p>", "smithy.api#required" => {}}))
    Theme.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#documentation" => "<p>The time that the theme was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    Theme.add_member(:modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modifiedAt', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#documentation" => "<p>The time that the theme was modified.</p>", "smithy.api#timestampFormat" => "date-time"}))
    Theme.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeValuesList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that defines the properties of the theme.</p>", "smithy.api#required" => {}}))
    Theme.add_member(:overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeValuesList, location_name: 'overrides', traits: {"smithy.api#documentation" => "<p>Describes the properties that can be overriden to customize a theme.</p>"}))
    Theme.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>One or more key-value pairs to use when tagging the theme.</p>"}))
    Theme.type = Types::Theme
    ThemeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Theme)
    ThemeSummary.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for the app associated with the theme summary.</p>", "smithy.api#required" => {}}))
    ThemeSummary.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is part of the Amplify app.</p>", "smithy.api#required" => {}}))
    ThemeSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the theme.</p>", "smithy.api#required" => {}}))
    ThemeSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the theme.</p>", "smithy.api#required" => {}}))
    ThemeSummary.type = Types::ThemeSummary
    ThemeSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeSummary)
    ThemeValue.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of a theme property.</p>"}))
    ThemeValue.add_member(:children, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeValuesList, location_name: 'children', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that define the theme's properties.</p>"}))
    ThemeValue.type = Types::ThemeValue
    ThemeValues.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The name of the property.</p>"}))
    ThemeValues.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the property.</p>"}))
    ThemeValues.type = Types::ThemeValues
    ThemeValuesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeValues)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) to use to untag a resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys to use to untag a resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateComponentData.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the component to update.</p>"}))
    UpdateComponentData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the component to update.</p>"}))
    UpdateComponentData.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceId', traits: {"smithy.api#documentation" => "<p>The unique ID of the component in its original source system, such as Figma.</p>"}))
    UpdateComponentData.add_member(:component_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentType, location_name: 'componentType', traits: {"smithy.api#documentation" => "<p>The type of the component. This can be an Amplify custom UI component or\n      another custom component.</p>"}))
    UpdateComponentData.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentProperties, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>Describes the component's properties.</p>"}))
    UpdateComponentData.add_member(:children, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentChildList, location_name: 'children', traits: {"smithy.api#documentation" => "<p>The components that are instances of the main component.</p>"}))
    UpdateComponentData.add_member(:variants, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentVariants, location_name: 'variants', traits: {"smithy.api#documentation" => "<p>A list of the unique variants of the main component being updated.</p>"}))
    UpdateComponentData.add_member(:overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentOverrides, location_name: 'overrides', traits: {"smithy.api#documentation" => "<p>Describes the properties that can be overriden to customize the component.</p>"}))
    UpdateComponentData.add_member(:binding_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentBindingProperties, location_name: 'bindingProperties', traits: {"smithy.api#documentation" => "<p>The data binding information for the component's properties.</p>"}))
    UpdateComponentData.add_member(:collection_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentCollectionProperties, location_name: 'collectionProperties', traits: {"smithy.api#documentation" => "<p>The configuration for binding a component's properties to a data model. Use this for a\n      collection component.</p>"}))
    UpdateComponentData.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: ComponentEvents, location_name: 'events', traits: {"smithy.api#documentation" => "<p>The event configuration for the component. Use for the workflow feature in Amplify Studio that allows you to bind events and actions to components.</p>"}))
    UpdateComponentData.add_member(:schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'schemaVersion', traits: {"smithy.api#documentation" => "<p>The schema version of the component when it was imported.</p>"}))
    UpdateComponentData.type = Types::UpdateComponentData
    UpdateComponentInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateComponentInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is part of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateComponentInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the component.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateComponentInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The unique client token.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    UpdateComponentInput.add_member(:updated_component, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentData, location_name: 'updatedComponent', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The configuration of the updated component.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateComponentInput[:http_payload] = :updated_component
    UpdateComponentInput[:http_payload_member] = UpdateComponentInput.member(:updated_component)
    UpdateComponentInput.type = Types::UpdateComponentInput
    UpdateComponentOutput.add_member(:entity, Smithy::Schema::Shapes::ShapeRef.new(shape: Component, location_name: 'entity', traits: {"smithy.api#documentation" => "<p>Describes the configuration of the updated component.</p>", "smithy.api#httpPayload" => {}}))
    UpdateComponentOutput[:http_payload] = :entity
    UpdateComponentOutput[:http_payload_member] = UpdateComponentOutput.member(:entity)
    UpdateComponentOutput.type = Types::UpdateComponentOutput
    UpdateFormData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: FormName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the form.</p>"}))
    UpdateFormData.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FormDataTypeConfig, location_name: 'dataType', traits: {"smithy.api#documentation" => "<p>The type of data source to use to create the form.</p>"}))
    UpdateFormData.add_member(:form_action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FormActionType, location_name: 'formActionType', traits: {"smithy.api#documentation" => "<p>Specifies whether to perform a create or update action on the form.</p>"}))
    UpdateFormData.add_member(:fields, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldsMap, location_name: 'fields', traits: {"smithy.api#documentation" => "<p>The configuration information for the form's fields.</p>"}))
    UpdateFormData.add_member(:style, Smithy::Schema::Shapes::ShapeRef.new(shape: FormStyle, location_name: 'style', traits: {"smithy.api#documentation" => "<p>The configuration for the form's style.</p>"}))
    UpdateFormData.add_member(:sectional_elements, Smithy::Schema::Shapes::ShapeRef.new(shape: SectionalElementMap, location_name: 'sectionalElements', traits: {"smithy.api#documentation" => "<p>The configuration information for the visual helper elements for the form. These elements\n      are not associated with any data.</p>"}))
    UpdateFormData.add_member(:schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'schemaVersion', traits: {"smithy.api#documentation" => "<p>The schema version of the form.</p>"}))
    UpdateFormData.add_member(:cta, Smithy::Schema::Shapes::ShapeRef.new(shape: FormCTA, location_name: 'cta', traits: {"smithy.api#documentation" => "<p>The <code>FormCTA</code> object that stores the call to action configuration for the\n      form.</p>"}))
    UpdateFormData.add_member(:label_decorator, Smithy::Schema::Shapes::ShapeRef.new(shape: LabelDecorator, location_name: 'labelDecorator', traits: {"smithy.api#documentation" => "<p>Specifies an icon or decoration to display on the form.</p>"}))
    UpdateFormData.type = Types::UpdateFormData
    UpdateFormInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFormInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is part of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFormInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the form.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFormInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The unique client token.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    UpdateFormInput.add_member(:updated_form, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFormData, location_name: 'updatedForm', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The request accepts the following data in JSON format.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateFormInput[:http_payload] = :updated_form
    UpdateFormInput[:http_payload_member] = UpdateFormInput.member(:updated_form)
    UpdateFormInput.type = Types::UpdateFormInput
    UpdateFormOutput.add_member(:entity, Smithy::Schema::Shapes::ShapeRef.new(shape: Form, location_name: 'entity', traits: {"smithy.api#documentation" => "<p>Describes the configuration of the updated form.</p>", "smithy.api#httpPayload" => {}}))
    UpdateFormOutput[:http_payload] = :entity
    UpdateFormOutput[:http_payload_member] = UpdateFormOutput.member(:entity)
    UpdateFormOutput.type = Types::UpdateFormOutput
    UpdateThemeData.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the theme to update.</p>"}))
    UpdateThemeData.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the theme to update.</p>"}))
    UpdateThemeData.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeValuesList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that define the theme's properties.</p>", "smithy.api#required" => {}}))
    UpdateThemeData.add_member(:overrides, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeValuesList, location_name: 'overrides', traits: {"smithy.api#documentation" => "<p>Describes the properties that can be overriden to customize the theme.</p>"}))
    UpdateThemeData.type = Types::UpdateThemeData
    UpdateThemeInput.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateThemeInput.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment that is part of the Amplify app.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateThemeInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the theme.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateThemeInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The unique client token.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    UpdateThemeInput.add_member(:updated_theme, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateThemeData, location_name: 'updatedTheme', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The configuration of the updated theme.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateThemeInput[:http_payload] = :updated_theme
    UpdateThemeInput[:http_payload_member] = UpdateThemeInput.member(:updated_theme)
    UpdateThemeInput.type = Types::UpdateThemeInput
    UpdateThemeOutput.add_member(:entity, Smithy::Schema::Shapes::ShapeRef.new(shape: Theme, location_name: 'entity', traits: {"smithy.api#documentation" => "<p>Describes the configuration of the updated theme.</p>", "smithy.api#httpPayload" => {}}))
    UpdateThemeOutput[:http_payload] = :entity
    UpdateThemeOutput[:http_payload_member] = UpdateThemeOutput.member(:entity)
    UpdateThemeOutput.type = Types::UpdateThemeOutput
    ValidationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValidationConfiguration)
    ValueMapping.add_member(:display_value, Smithy::Schema::Shapes::ShapeRef.new(shape: FormInputValueProperty, location_name: 'displayValue', traits: {"smithy.api#documentation" => "<p>The value to display for the complex object.</p>"}))
    ValueMapping.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: FormInputValueProperty, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The complex object.</p>", "smithy.api#required" => {}}))
    ValueMapping.type = Types::ValueMapping
    ValueMappingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValueMapping)
    ValueMappings.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueMappingList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The value and display value pairs.</p>", "smithy.api#required" => {}}))
    ValueMappings.add_member(:binding_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: FormInputBindingProperties, location_name: 'bindingProperties', traits: {"smithy.api#documentation" => "<p>The information to bind fields to data at runtime.</p>"}))
    ValueMappings.type = Types::ValueMappings

    AmplifyUIBuilder = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.amplifyuibuilder#AmplifyUIBuilder"
      service.name = "AmplifyUIBuilder"
      service.version = "2021-08-11"
      service.traits = {"aws.api#service" => {"sdkId" => "AmplifyUIBuilder", "arnNamespace" => "amplifyuibuilder", "cloudFormationName" => "AmplifyUIBuilder", "cloudTrailEventSource" => "amplifyuibuilder.amazonaws.com"}, "aws.api#tagEnabled" => {"tagOnCreate" => true}, "aws.auth#sigv4" => {"name" => "amplifyuibuilder"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access based on the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access based on the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "AWS Amplify UI Builder"}
      service.add_operation(:create_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#CreateComponent"
        operation.name = "CreateComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateComponentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#requiredActions" => ["amplify:GetApp", "amplifyuibuilder:GetComponent", "amplifyuibuilder:TagResource"], "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/components", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_form, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#CreateForm"
        operation.name = "CreateForm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFormInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFormOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp", "amplifyuibuilder:GetForm", "amplifyuibuilder:TagResource", "amplifyuibuilder:UntagResource"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/forms", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_theme, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#CreateTheme"
        operation.name = "CreateTheme"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateThemeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateThemeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp", "amplifyuibuilder:GetTheme", "amplifyuibuilder:TagResource"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/themes", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#DeleteComponent"
        operation.name = "DeleteComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteComponentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#requiredActions" => ["amplify:GetApp", "amplifyuibuilder:UntagResource"], "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/components/{id}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_form, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#DeleteForm"
        operation.name = "DeleteForm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFormInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp", "amplifyuibuilder:TagResource", "amplifyuibuilder:UntagResource"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/forms/{id}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_theme, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#DeleteTheme"
        operation.name = "DeleteTheme"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteThemeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp", "amplifyuibuilder:UntagResource"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/themes/{id}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:exchange_code_for_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ExchangeCodeForToken"
        operation.name = "ExchangeCodeForToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExchangeCodeForTokenInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExchangeCodeForTokenOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tokens/{provider}", "method" => "POST"}}
      end)
      service.add_operation(:export_components, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ExportComponents"
        operation.name = "ExportComponents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportComponentsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportComponentsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.traits = {"smithy.api#http" => {"uri" => "/export/app/{appId}/environment/{environmentName}/components", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ExportComponents.new
      end)
      service.add_operation(:export_forms, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ExportForms"
        operation.name = "ExportForms"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFormsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportFormsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.traits = {"smithy.api#http" => {"uri" => "/export/app/{appId}/environment/{environmentName}/forms", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ExportForms.new
      end)
      service.add_operation(:export_themes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ExportThemes"
        operation.name = "ExportThemes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportThemesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportThemesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.traits = {"smithy.api#http" => {"uri" => "/export/app/{appId}/environment/{environmentName}/themes", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ExportThemes.new
      end)
      service.add_operation(:get_codegen_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#GetCodegenJob"
        operation.name = "GetCodegenJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCodegenJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCodegenJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/codegen-jobs/{id}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#GetComponent"
        operation.name = "GetComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetComponentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#requiredActions" => ["amplify:GetApp"], "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/components/{id}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_form, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#GetForm"
        operation.name = "GetForm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFormInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFormOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/forms/{id}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#GetMetadata"
        operation.name = "GetMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetadataInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetadataOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/metadata", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_theme, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#GetTheme"
        operation.name = "GetTheme"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetThemeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetThemeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/themes/{id}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_codegen_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ListCodegenJobs"
        operation.name = "ListCodegenJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCodegenJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCodegenJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/codegen-jobs", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCodegenJobs.new
      end)
      service.add_operation(:list_components, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ListComponents"
        operation.name = "ListComponents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListComponentsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.traits = {"aws.iam#requiredActions" => ["amplify:GetApp"], "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/components", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListComponents.new
      end)
      service.add_operation(:list_forms, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ListForms"
        operation.name = "ListForms"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFormsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFormsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/forms", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListForms.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_themes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#ListThemes"
        operation.name = "ListThemes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListThemesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListThemesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/themes", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListThemes.new
      end)
      service.add_operation(:put_metadata_flag, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#PutMetadataFlag"
        operation.name = "PutMetadataFlag"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMetadataFlagInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/metadata/features/{featureName}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:refresh_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#RefreshToken"
        operation.name = "RefreshToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshTokenInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RefreshTokenOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tokens/{provider}/refresh", "method" => "POST"}}
      end)
      service.add_operation(:start_codegen_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#StartCodegenJob"
        operation.name = "StartCodegenJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCodegenJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCodegenJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/codegen-jobs", "method" => "POST"}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_component, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#UpdateComponent"
        operation.name = "UpdateComponent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateComponentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp", "amplifyuibuilder:TagResource", "amplifyuibuilder:UntagResource"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/components/{id}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_form, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#UpdateForm"
        operation.name = "UpdateForm"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFormInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFormOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp", "amplifyuibuilder:GetForm", "amplifyuibuilder:TagResource", "amplifyuibuilder:UntagResource"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/forms/{id}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_theme, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplifyuibuilder#UpdateTheme"
        operation.name = "UpdateTheme"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateThemeInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateThemeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceConflictException)
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["amplify:GetApp", "amplifyuibuilder:GetTheme", "amplifyuibuilder:TagResource", "amplifyuibuilder:UntagResource"]}, "smithy.api#http" => {"uri" => "/app/{appId}/environment/{environmentName}/themes/{id}", "method" => "PATCH"}, "smithy.api#idempotent" => {}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
