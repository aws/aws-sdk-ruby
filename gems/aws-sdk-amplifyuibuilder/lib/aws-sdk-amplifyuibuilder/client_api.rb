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

    ActionParameters = Shapes::StructureShape.new(name: 'ActionParameters')
    AppId = Shapes::StringShape.new(name: 'AppId')
    AssociatedFieldsList = Shapes::ListShape.new(name: 'AssociatedFieldsList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CodegenFeatureFlags = Shapes::StructureShape.new(name: 'CodegenFeatureFlags')
    CodegenGenericDataEnum = Shapes::StructureShape.new(name: 'CodegenGenericDataEnum')
    CodegenGenericDataEnumValuesList = Shapes::ListShape.new(name: 'CodegenGenericDataEnumValuesList')
    CodegenGenericDataEnums = Shapes::MapShape.new(name: 'CodegenGenericDataEnums')
    CodegenGenericDataField = Shapes::StructureShape.new(name: 'CodegenGenericDataField')
    CodegenGenericDataFieldDataType = Shapes::StringShape.new(name: 'CodegenGenericDataFieldDataType')
    CodegenGenericDataFields = Shapes::MapShape.new(name: 'CodegenGenericDataFields')
    CodegenGenericDataModel = Shapes::StructureShape.new(name: 'CodegenGenericDataModel')
    CodegenGenericDataModels = Shapes::MapShape.new(name: 'CodegenGenericDataModels')
    CodegenGenericDataNonModel = Shapes::StructureShape.new(name: 'CodegenGenericDataNonModel')
    CodegenGenericDataNonModelFields = Shapes::MapShape.new(name: 'CodegenGenericDataNonModelFields')
    CodegenGenericDataNonModels = Shapes::MapShape.new(name: 'CodegenGenericDataNonModels')
    CodegenGenericDataRelationshipType = Shapes::StructureShape.new(name: 'CodegenGenericDataRelationshipType')
    CodegenJob = Shapes::StructureShape.new(name: 'CodegenJob')
    CodegenJobAsset = Shapes::StructureShape.new(name: 'CodegenJobAsset')
    CodegenJobGenericDataSchema = Shapes::StructureShape.new(name: 'CodegenJobGenericDataSchema')
    CodegenJobGenericDataSourceType = Shapes::StringShape.new(name: 'CodegenJobGenericDataSourceType')
    CodegenJobRenderConfig = Shapes::UnionShape.new(name: 'CodegenJobRenderConfig')
    CodegenJobStatus = Shapes::StringShape.new(name: 'CodegenJobStatus')
    CodegenJobSummary = Shapes::StructureShape.new(name: 'CodegenJobSummary')
    CodegenJobSummaryList = Shapes::ListShape.new(name: 'CodegenJobSummaryList')
    CodegenPrimaryKeysList = Shapes::ListShape.new(name: 'CodegenPrimaryKeysList')
    Component = Shapes::StructureShape.new(name: 'Component')
    ComponentBindingProperties = Shapes::MapShape.new(name: 'ComponentBindingProperties')
    ComponentBindingPropertiesValue = Shapes::StructureShape.new(name: 'ComponentBindingPropertiesValue')
    ComponentBindingPropertiesValueProperties = Shapes::StructureShape.new(name: 'ComponentBindingPropertiesValueProperties')
    ComponentChild = Shapes::StructureShape.new(name: 'ComponentChild')
    ComponentChildList = Shapes::ListShape.new(name: 'ComponentChildList')
    ComponentCollectionProperties = Shapes::MapShape.new(name: 'ComponentCollectionProperties')
    ComponentConditionProperty = Shapes::StructureShape.new(name: 'ComponentConditionProperty')
    ComponentDataConfiguration = Shapes::StructureShape.new(name: 'ComponentDataConfiguration')
    ComponentEvent = Shapes::StructureShape.new(name: 'ComponentEvent')
    ComponentEvents = Shapes::MapShape.new(name: 'ComponentEvents')
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
    CreateFormData = Shapes::StructureShape.new(name: 'CreateFormData')
    CreateFormRequest = Shapes::StructureShape.new(name: 'CreateFormRequest')
    CreateFormResponse = Shapes::StructureShape.new(name: 'CreateFormResponse')
    CreateThemeData = Shapes::StructureShape.new(name: 'CreateThemeData')
    CreateThemeRequest = Shapes::StructureShape.new(name: 'CreateThemeRequest')
    CreateThemeResponse = Shapes::StructureShape.new(name: 'CreateThemeResponse')
    DeleteComponentRequest = Shapes::StructureShape.new(name: 'DeleteComponentRequest')
    DeleteFormRequest = Shapes::StructureShape.new(name: 'DeleteFormRequest')
    DeleteThemeRequest = Shapes::StructureShape.new(name: 'DeleteThemeRequest')
    ExchangeCodeForTokenRequest = Shapes::StructureShape.new(name: 'ExchangeCodeForTokenRequest')
    ExchangeCodeForTokenRequestBody = Shapes::StructureShape.new(name: 'ExchangeCodeForTokenRequestBody')
    ExchangeCodeForTokenResponse = Shapes::StructureShape.new(name: 'ExchangeCodeForTokenResponse')
    ExportComponentsRequest = Shapes::StructureShape.new(name: 'ExportComponentsRequest')
    ExportComponentsResponse = Shapes::StructureShape.new(name: 'ExportComponentsResponse')
    ExportFormsRequest = Shapes::StructureShape.new(name: 'ExportFormsRequest')
    ExportFormsResponse = Shapes::StructureShape.new(name: 'ExportFormsResponse')
    ExportThemesRequest = Shapes::StructureShape.new(name: 'ExportThemesRequest')
    ExportThemesResponse = Shapes::StructureShape.new(name: 'ExportThemesResponse')
    FeaturesMap = Shapes::MapShape.new(name: 'FeaturesMap')
    FieldConfig = Shapes::StructureShape.new(name: 'FieldConfig')
    FieldInputConfig = Shapes::StructureShape.new(name: 'FieldInputConfig')
    FieldPosition = Shapes::UnionShape.new(name: 'FieldPosition')
    FieldValidationConfiguration = Shapes::StructureShape.new(name: 'FieldValidationConfiguration')
    FieldsMap = Shapes::MapShape.new(name: 'FieldsMap')
    FileUploaderFieldConfig = Shapes::StructureShape.new(name: 'FileUploaderFieldConfig')
    FixedPosition = Shapes::StringShape.new(name: 'FixedPosition')
    Float = Shapes::FloatShape.new(name: 'Float')
    Form = Shapes::StructureShape.new(name: 'Form')
    FormActionType = Shapes::StringShape.new(name: 'FormActionType')
    FormBindingElement = Shapes::StructureShape.new(name: 'FormBindingElement')
    FormBindings = Shapes::MapShape.new(name: 'FormBindings')
    FormButton = Shapes::StructureShape.new(name: 'FormButton')
    FormButtonsPosition = Shapes::StringShape.new(name: 'FormButtonsPosition')
    FormCTA = Shapes::StructureShape.new(name: 'FormCTA')
    FormDataSourceType = Shapes::StringShape.new(name: 'FormDataSourceType')
    FormDataTypeConfig = Shapes::StructureShape.new(name: 'FormDataTypeConfig')
    FormInputBindingProperties = Shapes::MapShape.new(name: 'FormInputBindingProperties')
    FormInputBindingPropertiesValue = Shapes::StructureShape.new(name: 'FormInputBindingPropertiesValue')
    FormInputBindingPropertiesValueProperties = Shapes::StructureShape.new(name: 'FormInputBindingPropertiesValueProperties')
    FormInputValueProperty = Shapes::StructureShape.new(name: 'FormInputValueProperty')
    FormInputValuePropertyBindingProperties = Shapes::StructureShape.new(name: 'FormInputValuePropertyBindingProperties')
    FormInputValuePropertyList = Shapes::ListShape.new(name: 'FormInputValuePropertyList')
    FormList = Shapes::ListShape.new(name: 'FormList')
    FormName = Shapes::StringShape.new(name: 'FormName')
    FormStyle = Shapes::StructureShape.new(name: 'FormStyle')
    FormStyleConfig = Shapes::UnionShape.new(name: 'FormStyleConfig')
    FormSummary = Shapes::StructureShape.new(name: 'FormSummary')
    FormSummaryList = Shapes::ListShape.new(name: 'FormSummaryList')
    GenericDataRelationshipType = Shapes::StringShape.new(name: 'GenericDataRelationshipType')
    GetCodegenJobRequest = Shapes::StructureShape.new(name: 'GetCodegenJobRequest')
    GetCodegenJobResponse = Shapes::StructureShape.new(name: 'GetCodegenJobResponse')
    GetComponentRequest = Shapes::StructureShape.new(name: 'GetComponentRequest')
    GetComponentResponse = Shapes::StructureShape.new(name: 'GetComponentResponse')
    GetFormRequest = Shapes::StructureShape.new(name: 'GetFormRequest')
    GetFormResponse = Shapes::StructureShape.new(name: 'GetFormResponse')
    GetMetadataRequest = Shapes::StructureShape.new(name: 'GetMetadataRequest')
    GetMetadataResponse = Shapes::StructureShape.new(name: 'GetMetadataResponse')
    GetThemeRequest = Shapes::StructureShape.new(name: 'GetThemeRequest')
    GetThemeResponse = Shapes::StructureShape.new(name: 'GetThemeResponse')
    IdentifierList = Shapes::ListShape.new(name: 'IdentifierList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    JSModule = Shapes::StringShape.new(name: 'JSModule')
    JSScript = Shapes::StringShape.new(name: 'JSScript')
    JSTarget = Shapes::StringShape.new(name: 'JSTarget')
    LabelDecorator = Shapes::StringShape.new(name: 'LabelDecorator')
    ListCodegenJobsLimit = Shapes::IntegerShape.new(name: 'ListCodegenJobsLimit')
    ListCodegenJobsRequest = Shapes::StructureShape.new(name: 'ListCodegenJobsRequest')
    ListCodegenJobsResponse = Shapes::StructureShape.new(name: 'ListCodegenJobsResponse')
    ListComponentsLimit = Shapes::IntegerShape.new(name: 'ListComponentsLimit')
    ListComponentsRequest = Shapes::StructureShape.new(name: 'ListComponentsRequest')
    ListComponentsResponse = Shapes::StructureShape.new(name: 'ListComponentsResponse')
    ListFormsLimit = Shapes::IntegerShape.new(name: 'ListFormsLimit')
    ListFormsRequest = Shapes::StructureShape.new(name: 'ListFormsRequest')
    ListFormsResponse = Shapes::StructureShape.new(name: 'ListFormsResponse')
    ListThemesLimit = Shapes::IntegerShape.new(name: 'ListThemesLimit')
    ListThemesRequest = Shapes::StructureShape.new(name: 'ListThemesRequest')
    ListThemesResponse = Shapes::StructureShape.new(name: 'ListThemesResponse')
    MutationActionSetStateParameter = Shapes::StructureShape.new(name: 'MutationActionSetStateParameter')
    NumValues = Shapes::ListShape.new(name: 'NumValues')
    OperandType = Shapes::StringShape.new(name: 'OperandType')
    Predicate = Shapes::StructureShape.new(name: 'Predicate')
    PredicateList = Shapes::ListShape.new(name: 'PredicateList')
    PutMetadataFlagBody = Shapes::StructureShape.new(name: 'PutMetadataFlagBody')
    PutMetadataFlagRequest = Shapes::StructureShape.new(name: 'PutMetadataFlagRequest')
    ReactStartCodegenJobData = Shapes::StructureShape.new(name: 'ReactStartCodegenJobData')
    RefreshTokenRequest = Shapes::StructureShape.new(name: 'RefreshTokenRequest')
    RefreshTokenRequestBody = Shapes::StructureShape.new(name: 'RefreshTokenRequestBody')
    RefreshTokenResponse = Shapes::StructureShape.new(name: 'RefreshTokenResponse')
    RelatedModelFieldsList = Shapes::ListShape.new(name: 'RelatedModelFieldsList')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SectionalElement = Shapes::StructureShape.new(name: 'SectionalElement')
    SectionalElementMap = Shapes::MapShape.new(name: 'SectionalElementMap')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SortDirection = Shapes::StringShape.new(name: 'SortDirection')
    SortProperty = Shapes::StructureShape.new(name: 'SortProperty')
    SortPropertyList = Shapes::ListShape.new(name: 'SortPropertyList')
    StartCodegenJobData = Shapes::StructureShape.new(name: 'StartCodegenJobData')
    StartCodegenJobRequest = Shapes::StructureShape.new(name: 'StartCodegenJobRequest')
    StartCodegenJobResponse = Shapes::StructureShape.new(name: 'StartCodegenJobResponse')
    StorageAccessLevel = Shapes::StringShape.new(name: 'StorageAccessLevel')
    StrValues = Shapes::ListShape.new(name: 'StrValues')
    String = Shapes::StringShape.new(name: 'String')
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
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TokenProviders = Shapes::StringShape.new(name: 'TokenProviders')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UpdateComponentData = Shapes::StructureShape.new(name: 'UpdateComponentData')
    UpdateComponentRequest = Shapes::StructureShape.new(name: 'UpdateComponentRequest')
    UpdateComponentResponse = Shapes::StructureShape.new(name: 'UpdateComponentResponse')
    UpdateFormData = Shapes::StructureShape.new(name: 'UpdateFormData')
    UpdateFormRequest = Shapes::StructureShape.new(name: 'UpdateFormRequest')
    UpdateFormResponse = Shapes::StructureShape.new(name: 'UpdateFormResponse')
    UpdateThemeData = Shapes::StructureShape.new(name: 'UpdateThemeData')
    UpdateThemeRequest = Shapes::StructureShape.new(name: 'UpdateThemeRequest')
    UpdateThemeResponse = Shapes::StructureShape.new(name: 'UpdateThemeResponse')
    Uuid = Shapes::StringShape.new(name: 'Uuid')
    ValidationsList = Shapes::ListShape.new(name: 'ValidationsList')
    ValueMapping = Shapes::StructureShape.new(name: 'ValueMapping')
    ValueMappingList = Shapes::ListShape.new(name: 'ValueMappingList')
    ValueMappings = Shapes::StructureShape.new(name: 'ValueMappings')

    ActionParameters.add_member(:type, Shapes::ShapeRef.new(shape: ComponentProperty, location_name: "type"))
    ActionParameters.add_member(:url, Shapes::ShapeRef.new(shape: ComponentProperty, location_name: "url"))
    ActionParameters.add_member(:anchor, Shapes::ShapeRef.new(shape: ComponentProperty, location_name: "anchor"))
    ActionParameters.add_member(:target, Shapes::ShapeRef.new(shape: ComponentProperty, location_name: "target"))
    ActionParameters.add_member(:global, Shapes::ShapeRef.new(shape: ComponentProperty, location_name: "global"))
    ActionParameters.add_member(:model, Shapes::ShapeRef.new(shape: String, location_name: "model"))
    ActionParameters.add_member(:id, Shapes::ShapeRef.new(shape: ComponentProperty, location_name: "id"))
    ActionParameters.add_member(:fields, Shapes::ShapeRef.new(shape: ComponentProperties, location_name: "fields"))
    ActionParameters.add_member(:state, Shapes::ShapeRef.new(shape: MutationActionSetStateParameter, location_name: "state"))
    ActionParameters.struct_class = Types::ActionParameters

    AssociatedFieldsList.member = Shapes::ShapeRef.new(shape: String)

    CodegenFeatureFlags.add_member(:is_relationship_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "isRelationshipSupported"))
    CodegenFeatureFlags.add_member(:is_non_model_supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "isNonModelSupported"))
    CodegenFeatureFlags.struct_class = Types::CodegenFeatureFlags

    CodegenGenericDataEnum.add_member(:values, Shapes::ShapeRef.new(shape: CodegenGenericDataEnumValuesList, required: true, location_name: "values"))
    CodegenGenericDataEnum.struct_class = Types::CodegenGenericDataEnum

    CodegenGenericDataEnumValuesList.member = Shapes::ShapeRef.new(shape: String)

    CodegenGenericDataEnums.key = Shapes::ShapeRef.new(shape: String)
    CodegenGenericDataEnums.value = Shapes::ShapeRef.new(shape: CodegenGenericDataEnum)

    CodegenGenericDataField.add_member(:data_type, Shapes::ShapeRef.new(shape: CodegenGenericDataFieldDataType, required: true, location_name: "dataType"))
    CodegenGenericDataField.add_member(:data_type_value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dataTypeValue"))
    CodegenGenericDataField.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "required"))
    CodegenGenericDataField.add_member(:read_only, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "readOnly"))
    CodegenGenericDataField.add_member(:is_array, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isArray"))
    CodegenGenericDataField.add_member(:relationship, Shapes::ShapeRef.new(shape: CodegenGenericDataRelationshipType, location_name: "relationship"))
    CodegenGenericDataField.struct_class = Types::CodegenGenericDataField

    CodegenGenericDataFields.key = Shapes::ShapeRef.new(shape: String)
    CodegenGenericDataFields.value = Shapes::ShapeRef.new(shape: CodegenGenericDataField)

    CodegenGenericDataModel.add_member(:fields, Shapes::ShapeRef.new(shape: CodegenGenericDataFields, required: true, location_name: "fields"))
    CodegenGenericDataModel.add_member(:is_join_table, Shapes::ShapeRef.new(shape: Boolean, location_name: "isJoinTable"))
    CodegenGenericDataModel.add_member(:primary_keys, Shapes::ShapeRef.new(shape: CodegenPrimaryKeysList, required: true, location_name: "primaryKeys"))
    CodegenGenericDataModel.struct_class = Types::CodegenGenericDataModel

    CodegenGenericDataModels.key = Shapes::ShapeRef.new(shape: String)
    CodegenGenericDataModels.value = Shapes::ShapeRef.new(shape: CodegenGenericDataModel)

    CodegenGenericDataNonModel.add_member(:fields, Shapes::ShapeRef.new(shape: CodegenGenericDataNonModelFields, required: true, location_name: "fields"))
    CodegenGenericDataNonModel.struct_class = Types::CodegenGenericDataNonModel

    CodegenGenericDataNonModelFields.key = Shapes::ShapeRef.new(shape: String)
    CodegenGenericDataNonModelFields.value = Shapes::ShapeRef.new(shape: CodegenGenericDataField)

    CodegenGenericDataNonModels.key = Shapes::ShapeRef.new(shape: String)
    CodegenGenericDataNonModels.value = Shapes::ShapeRef.new(shape: CodegenGenericDataNonModel)

    CodegenGenericDataRelationshipType.add_member(:type, Shapes::ShapeRef.new(shape: GenericDataRelationshipType, required: true, location_name: "type"))
    CodegenGenericDataRelationshipType.add_member(:related_model_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "relatedModelName"))
    CodegenGenericDataRelationshipType.add_member(:related_model_fields, Shapes::ShapeRef.new(shape: RelatedModelFieldsList, location_name: "relatedModelFields"))
    CodegenGenericDataRelationshipType.add_member(:can_unlink_associated_model, Shapes::ShapeRef.new(shape: Boolean, location_name: "canUnlinkAssociatedModel"))
    CodegenGenericDataRelationshipType.add_member(:related_join_field_name, Shapes::ShapeRef.new(shape: String, location_name: "relatedJoinFieldName"))
    CodegenGenericDataRelationshipType.add_member(:related_join_table_name, Shapes::ShapeRef.new(shape: String, location_name: "relatedJoinTableName"))
    CodegenGenericDataRelationshipType.add_member(:belongs_to_field_on_related_model, Shapes::ShapeRef.new(shape: String, location_name: "belongsToFieldOnRelatedModel"))
    CodegenGenericDataRelationshipType.add_member(:associated_fields, Shapes::ShapeRef.new(shape: AssociatedFieldsList, location_name: "associatedFields"))
    CodegenGenericDataRelationshipType.add_member(:is_has_many_index, Shapes::ShapeRef.new(shape: Boolean, location_name: "isHasManyIndex"))
    CodegenGenericDataRelationshipType.struct_class = Types::CodegenGenericDataRelationshipType

    CodegenJob.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    CodegenJob.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location_name: "appId"))
    CodegenJob.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "environmentName"))
    CodegenJob.add_member(:render_config, Shapes::ShapeRef.new(shape: CodegenJobRenderConfig, location_name: "renderConfig"))
    CodegenJob.add_member(:generic_data_schema, Shapes::ShapeRef.new(shape: CodegenJobGenericDataSchema, location_name: "genericDataSchema"))
    CodegenJob.add_member(:auto_generate_forms, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoGenerateForms"))
    CodegenJob.add_member(:features, Shapes::ShapeRef.new(shape: CodegenFeatureFlags, location_name: "features"))
    CodegenJob.add_member(:status, Shapes::ShapeRef.new(shape: CodegenJobStatus, location_name: "status"))
    CodegenJob.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    CodegenJob.add_member(:asset, Shapes::ShapeRef.new(shape: CodegenJobAsset, location_name: "asset"))
    CodegenJob.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CodegenJob.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CodegenJob.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "modifiedAt"))
    CodegenJob.struct_class = Types::CodegenJob

    CodegenJobAsset.add_member(:download_url, Shapes::ShapeRef.new(shape: String, location_name: "downloadUrl"))
    CodegenJobAsset.struct_class = Types::CodegenJobAsset

    CodegenJobGenericDataSchema.add_member(:data_source_type, Shapes::ShapeRef.new(shape: CodegenJobGenericDataSourceType, required: true, location_name: "dataSourceType"))
    CodegenJobGenericDataSchema.add_member(:models, Shapes::ShapeRef.new(shape: CodegenGenericDataModels, required: true, location_name: "models"))
    CodegenJobGenericDataSchema.add_member(:enums, Shapes::ShapeRef.new(shape: CodegenGenericDataEnums, required: true, location_name: "enums"))
    CodegenJobGenericDataSchema.add_member(:non_models, Shapes::ShapeRef.new(shape: CodegenGenericDataNonModels, required: true, location_name: "nonModels"))
    CodegenJobGenericDataSchema.struct_class = Types::CodegenJobGenericDataSchema

    CodegenJobRenderConfig.add_member(:react, Shapes::ShapeRef.new(shape: ReactStartCodegenJobData, location_name: "react"))
    CodegenJobRenderConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CodegenJobRenderConfig.add_member_subclass(:react, Types::CodegenJobRenderConfig::React)
    CodegenJobRenderConfig.add_member_subclass(:unknown, Types::CodegenJobRenderConfig::Unknown)
    CodegenJobRenderConfig.struct_class = Types::CodegenJobRenderConfig

    CodegenJobSummary.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location_name: "appId"))
    CodegenJobSummary.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "environmentName"))
    CodegenJobSummary.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    CodegenJobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CodegenJobSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "modifiedAt"))
    CodegenJobSummary.struct_class = Types::CodegenJobSummary

    CodegenJobSummaryList.member = Shapes::ShapeRef.new(shape: CodegenJobSummary)

    CodegenPrimaryKeysList.member = Shapes::ShapeRef.new(shape: String)

    Component.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "appId"))
    Component.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "environmentName"))
    Component.add_member(:source_id, Shapes::ShapeRef.new(shape: String, location_name: "sourceId"))
    Component.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    Component.add_member(:name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "name"))
    Component.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentType, required: true, location_name: "componentType"))
    Component.add_member(:properties, Shapes::ShapeRef.new(shape: ComponentProperties, required: true, location_name: "properties"))
    Component.add_member(:children, Shapes::ShapeRef.new(shape: ComponentChildList, location_name: "children"))
    Component.add_member(:variants, Shapes::ShapeRef.new(shape: ComponentVariants, required: true, location_name: "variants"))
    Component.add_member(:overrides, Shapes::ShapeRef.new(shape: ComponentOverrides, required: true, location_name: "overrides"))
    Component.add_member(:binding_properties, Shapes::ShapeRef.new(shape: ComponentBindingProperties, required: true, location_name: "bindingProperties"))
    Component.add_member(:collection_properties, Shapes::ShapeRef.new(shape: ComponentCollectionProperties, location_name: "collectionProperties"))
    Component.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    Component.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "modifiedAt"))
    Component.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Component.add_member(:events, Shapes::ShapeRef.new(shape: ComponentEvents, location_name: "events"))
    Component.add_member(:schema_version, Shapes::ShapeRef.new(shape: String, location_name: "schemaVersion"))
    Component.struct_class = Types::Component

    ComponentBindingProperties.key = Shapes::ShapeRef.new(shape: String)
    ComponentBindingProperties.value = Shapes::ShapeRef.new(shape: ComponentBindingPropertiesValue)

    ComponentBindingPropertiesValue.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    ComponentBindingPropertiesValue.add_member(:binding_properties, Shapes::ShapeRef.new(shape: ComponentBindingPropertiesValueProperties, location_name: "bindingProperties"))
    ComponentBindingPropertiesValue.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "defaultValue"))
    ComponentBindingPropertiesValue.struct_class = Types::ComponentBindingPropertiesValue

    ComponentBindingPropertiesValueProperties.add_member(:model, Shapes::ShapeRef.new(shape: String, location_name: "model"))
    ComponentBindingPropertiesValueProperties.add_member(:field, Shapes::ShapeRef.new(shape: String, location_name: "field"))
    ComponentBindingPropertiesValueProperties.add_member(:predicates, Shapes::ShapeRef.new(shape: PredicateList, location_name: "predicates"))
    ComponentBindingPropertiesValueProperties.add_member(:user_attribute, Shapes::ShapeRef.new(shape: String, location_name: "userAttribute"))
    ComponentBindingPropertiesValueProperties.add_member(:bucket, Shapes::ShapeRef.new(shape: String, location_name: "bucket"))
    ComponentBindingPropertiesValueProperties.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "key"))
    ComponentBindingPropertiesValueProperties.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "defaultValue"))
    ComponentBindingPropertiesValueProperties.add_member(:slot_name, Shapes::ShapeRef.new(shape: String, location_name: "slotName"))
    ComponentBindingPropertiesValueProperties.struct_class = Types::ComponentBindingPropertiesValueProperties

    ComponentChild.add_member(:component_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "componentType"))
    ComponentChild.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ComponentChild.add_member(:properties, Shapes::ShapeRef.new(shape: ComponentProperties, required: true, location_name: "properties"))
    ComponentChild.add_member(:children, Shapes::ShapeRef.new(shape: ComponentChildList, location_name: "children"))
    ComponentChild.add_member(:events, Shapes::ShapeRef.new(shape: ComponentEvents, location_name: "events"))
    ComponentChild.add_member(:source_id, Shapes::ShapeRef.new(shape: String, location_name: "sourceId"))
    ComponentChild.struct_class = Types::ComponentChild

    ComponentChildList.member = Shapes::ShapeRef.new(shape: ComponentChild)

    ComponentCollectionProperties.key = Shapes::ShapeRef.new(shape: String)
    ComponentCollectionProperties.value = Shapes::ShapeRef.new(shape: ComponentDataConfiguration)

    ComponentConditionProperty.add_member(:property, Shapes::ShapeRef.new(shape: String, location_name: "property"))
    ComponentConditionProperty.add_member(:field, Shapes::ShapeRef.new(shape: String, location_name: "field"))
    ComponentConditionProperty.add_member(:operator, Shapes::ShapeRef.new(shape: String, location_name: "operator"))
    ComponentConditionProperty.add_member(:operand, Shapes::ShapeRef.new(shape: String, location_name: "operand"))
    ComponentConditionProperty.add_member(:then, Shapes::ShapeRef.new(shape: ComponentProperty, location_name: "then"))
    ComponentConditionProperty.add_member(:else, Shapes::ShapeRef.new(shape: ComponentProperty, location_name: "else"))
    ComponentConditionProperty.add_member(:operand_type, Shapes::ShapeRef.new(shape: String, location_name: "operandType"))
    ComponentConditionProperty.struct_class = Types::ComponentConditionProperty

    ComponentDataConfiguration.add_member(:model, Shapes::ShapeRef.new(shape: String, required: true, location_name: "model"))
    ComponentDataConfiguration.add_member(:sort, Shapes::ShapeRef.new(shape: SortPropertyList, location_name: "sort"))
    ComponentDataConfiguration.add_member(:predicate, Shapes::ShapeRef.new(shape: Predicate, location_name: "predicate"))
    ComponentDataConfiguration.add_member(:identifiers, Shapes::ShapeRef.new(shape: IdentifierList, location_name: "identifiers"))
    ComponentDataConfiguration.struct_class = Types::ComponentDataConfiguration

    ComponentEvent.add_member(:action, Shapes::ShapeRef.new(shape: String, location_name: "action"))
    ComponentEvent.add_member(:parameters, Shapes::ShapeRef.new(shape: ActionParameters, location_name: "parameters"))
    ComponentEvent.add_member(:binding_event, Shapes::ShapeRef.new(shape: String, location_name: "bindingEvent"))
    ComponentEvent.struct_class = Types::ComponentEvent

    ComponentEvents.key = Shapes::ShapeRef.new(shape: String)
    ComponentEvents.value = Shapes::ShapeRef.new(shape: ComponentEvent)

    ComponentList.member = Shapes::ShapeRef.new(shape: Component)

    ComponentOverrides.key = Shapes::ShapeRef.new(shape: String)
    ComponentOverrides.value = Shapes::ShapeRef.new(shape: ComponentOverridesValue)

    ComponentOverridesValue.key = Shapes::ShapeRef.new(shape: String)
    ComponentOverridesValue.value = Shapes::ShapeRef.new(shape: String)

    ComponentProperties.key = Shapes::ShapeRef.new(shape: String)
    ComponentProperties.value = Shapes::ShapeRef.new(shape: ComponentProperty)

    ComponentProperty.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    ComponentProperty.add_member(:binding_properties, Shapes::ShapeRef.new(shape: ComponentPropertyBindingProperties, location_name: "bindingProperties"))
    ComponentProperty.add_member(:collection_binding_properties, Shapes::ShapeRef.new(shape: ComponentPropertyBindingProperties, location_name: "collectionBindingProperties"))
    ComponentProperty.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "defaultValue"))
    ComponentProperty.add_member(:model, Shapes::ShapeRef.new(shape: String, location_name: "model"))
    ComponentProperty.add_member(:bindings, Shapes::ShapeRef.new(shape: FormBindings, location_name: "bindings"))
    ComponentProperty.add_member(:event, Shapes::ShapeRef.new(shape: String, location_name: "event"))
    ComponentProperty.add_member(:user_attribute, Shapes::ShapeRef.new(shape: String, location_name: "userAttribute"))
    ComponentProperty.add_member(:concat, Shapes::ShapeRef.new(shape: ComponentPropertyList, location_name: "concat"))
    ComponentProperty.add_member(:condition, Shapes::ShapeRef.new(shape: ComponentConditionProperty, location_name: "condition"))
    ComponentProperty.add_member(:configured, Shapes::ShapeRef.new(shape: Boolean, location_name: "configured"))
    ComponentProperty.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    ComponentProperty.add_member(:imported_value, Shapes::ShapeRef.new(shape: String, location_name: "importedValue"))
    ComponentProperty.add_member(:component_name, Shapes::ShapeRef.new(shape: String, location_name: "componentName"))
    ComponentProperty.add_member(:property, Shapes::ShapeRef.new(shape: String, location_name: "property"))
    ComponentProperty.struct_class = Types::ComponentProperty

    ComponentPropertyBindingProperties.add_member(:property, Shapes::ShapeRef.new(shape: String, required: true, location_name: "property"))
    ComponentPropertyBindingProperties.add_member(:field, Shapes::ShapeRef.new(shape: String, location_name: "field"))
    ComponentPropertyBindingProperties.struct_class = Types::ComponentPropertyBindingProperties

    ComponentPropertyList.member = Shapes::ShapeRef.new(shape: ComponentProperty)

    ComponentSummary.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "appId"))
    ComponentSummary.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "environmentName"))
    ComponentSummary.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    ComponentSummary.add_member(:name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "name"))
    ComponentSummary.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentType, required: true, location_name: "componentType"))
    ComponentSummary.struct_class = Types::ComponentSummary

    ComponentSummaryList.member = Shapes::ShapeRef.new(shape: ComponentSummary)

    ComponentVariant.add_member(:variant_values, Shapes::ShapeRef.new(shape: ComponentVariantValues, location_name: "variantValues"))
    ComponentVariant.add_member(:overrides, Shapes::ShapeRef.new(shape: ComponentOverrides, location_name: "overrides"))
    ComponentVariant.struct_class = Types::ComponentVariant

    ComponentVariantValues.key = Shapes::ShapeRef.new(shape: String)
    ComponentVariantValues.value = Shapes::ShapeRef.new(shape: String)

    ComponentVariants.member = Shapes::ShapeRef.new(shape: ComponentVariant)

    CreateComponentData.add_member(:name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "name"))
    CreateComponentData.add_member(:source_id, Shapes::ShapeRef.new(shape: String, location_name: "sourceId"))
    CreateComponentData.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentType, required: true, location_name: "componentType"))
    CreateComponentData.add_member(:properties, Shapes::ShapeRef.new(shape: ComponentProperties, required: true, location_name: "properties"))
    CreateComponentData.add_member(:children, Shapes::ShapeRef.new(shape: ComponentChildList, location_name: "children"))
    CreateComponentData.add_member(:variants, Shapes::ShapeRef.new(shape: ComponentVariants, required: true, location_name: "variants"))
    CreateComponentData.add_member(:overrides, Shapes::ShapeRef.new(shape: ComponentOverrides, required: true, location_name: "overrides"))
    CreateComponentData.add_member(:binding_properties, Shapes::ShapeRef.new(shape: ComponentBindingProperties, required: true, location_name: "bindingProperties"))
    CreateComponentData.add_member(:collection_properties, Shapes::ShapeRef.new(shape: ComponentCollectionProperties, location_name: "collectionProperties"))
    CreateComponentData.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateComponentData.add_member(:events, Shapes::ShapeRef.new(shape: ComponentEvents, location_name: "events"))
    CreateComponentData.add_member(:schema_version, Shapes::ShapeRef.new(shape: String, location_name: "schemaVersion"))
    CreateComponentData.struct_class = Types::CreateComponentData

    CreateComponentRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    CreateComponentRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    CreateComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateComponentRequest.add_member(:component_to_create, Shapes::ShapeRef.new(shape: CreateComponentData, required: true, location_name: "componentToCreate"))
    CreateComponentRequest.struct_class = Types::CreateComponentRequest
    CreateComponentRequest[:payload] = :component_to_create
    CreateComponentRequest[:payload_member] = CreateComponentRequest.member(:component_to_create)

    CreateComponentResponse.add_member(:entity, Shapes::ShapeRef.new(shape: Component, location_name: "entity"))
    CreateComponentResponse.struct_class = Types::CreateComponentResponse
    CreateComponentResponse[:payload] = :entity
    CreateComponentResponse[:payload_member] = CreateComponentResponse.member(:entity)

    CreateFormData.add_member(:name, Shapes::ShapeRef.new(shape: FormName, required: true, location_name: "name"))
    CreateFormData.add_member(:data_type, Shapes::ShapeRef.new(shape: FormDataTypeConfig, required: true, location_name: "dataType"))
    CreateFormData.add_member(:form_action_type, Shapes::ShapeRef.new(shape: FormActionType, required: true, location_name: "formActionType"))
    CreateFormData.add_member(:fields, Shapes::ShapeRef.new(shape: FieldsMap, required: true, location_name: "fields"))
    CreateFormData.add_member(:style, Shapes::ShapeRef.new(shape: FormStyle, required: true, location_name: "style"))
    CreateFormData.add_member(:sectional_elements, Shapes::ShapeRef.new(shape: SectionalElementMap, required: true, location_name: "sectionalElements"))
    CreateFormData.add_member(:schema_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "schemaVersion"))
    CreateFormData.add_member(:cta, Shapes::ShapeRef.new(shape: FormCTA, location_name: "cta"))
    CreateFormData.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateFormData.add_member(:label_decorator, Shapes::ShapeRef.new(shape: LabelDecorator, location_name: "labelDecorator"))
    CreateFormData.struct_class = Types::CreateFormData

    CreateFormRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    CreateFormRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    CreateFormRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateFormRequest.add_member(:form_to_create, Shapes::ShapeRef.new(shape: CreateFormData, required: true, location_name: "formToCreate"))
    CreateFormRequest.struct_class = Types::CreateFormRequest
    CreateFormRequest[:payload] = :form_to_create
    CreateFormRequest[:payload_member] = CreateFormRequest.member(:form_to_create)

    CreateFormResponse.add_member(:entity, Shapes::ShapeRef.new(shape: Form, location_name: "entity"))
    CreateFormResponse.struct_class = Types::CreateFormResponse
    CreateFormResponse[:payload] = :entity
    CreateFormResponse[:payload_member] = CreateFormResponse.member(:entity)

    CreateThemeData.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, required: true, location_name: "name"))
    CreateThemeData.add_member(:values, Shapes::ShapeRef.new(shape: ThemeValuesList, required: true, location_name: "values"))
    CreateThemeData.add_member(:overrides, Shapes::ShapeRef.new(shape: ThemeValuesList, location_name: "overrides"))
    CreateThemeData.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateThemeData.struct_class = Types::CreateThemeData

    CreateThemeRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    CreateThemeRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    CreateThemeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
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

    DeleteFormRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    DeleteFormRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    DeleteFormRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    DeleteFormRequest.struct_class = Types::DeleteFormRequest

    DeleteThemeRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    DeleteThemeRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    DeleteThemeRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    DeleteThemeRequest.struct_class = Types::DeleteThemeRequest

    ExchangeCodeForTokenRequest.add_member(:provider, Shapes::ShapeRef.new(shape: TokenProviders, required: true, location: "uri", location_name: "provider"))
    ExchangeCodeForTokenRequest.add_member(:request, Shapes::ShapeRef.new(shape: ExchangeCodeForTokenRequestBody, required: true, location_name: "request"))
    ExchangeCodeForTokenRequest.struct_class = Types::ExchangeCodeForTokenRequest
    ExchangeCodeForTokenRequest[:payload] = :request
    ExchangeCodeForTokenRequest[:payload_member] = ExchangeCodeForTokenRequest.member(:request)

    ExchangeCodeForTokenRequestBody.add_member(:code, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "code"))
    ExchangeCodeForTokenRequestBody.add_member(:redirect_uri, Shapes::ShapeRef.new(shape: String, required: true, location_name: "redirectUri"))
    ExchangeCodeForTokenRequestBody.add_member(:client_id, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "clientId"))
    ExchangeCodeForTokenRequestBody.struct_class = Types::ExchangeCodeForTokenRequestBody

    ExchangeCodeForTokenResponse.add_member(:access_token, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "accessToken"))
    ExchangeCodeForTokenResponse.add_member(:expires_in, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "expiresIn"))
    ExchangeCodeForTokenResponse.add_member(:refresh_token, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "refreshToken"))
    ExchangeCodeForTokenResponse.struct_class = Types::ExchangeCodeForTokenResponse

    ExportComponentsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    ExportComponentsRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    ExportComponentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ExportComponentsRequest.struct_class = Types::ExportComponentsRequest

    ExportComponentsResponse.add_member(:entities, Shapes::ShapeRef.new(shape: ComponentList, required: true, location_name: "entities"))
    ExportComponentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ExportComponentsResponse.struct_class = Types::ExportComponentsResponse

    ExportFormsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    ExportFormsRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    ExportFormsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ExportFormsRequest.struct_class = Types::ExportFormsRequest

    ExportFormsResponse.add_member(:entities, Shapes::ShapeRef.new(shape: FormList, required: true, location_name: "entities"))
    ExportFormsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ExportFormsResponse.struct_class = Types::ExportFormsResponse

    ExportThemesRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    ExportThemesRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    ExportThemesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ExportThemesRequest.struct_class = Types::ExportThemesRequest

    ExportThemesResponse.add_member(:entities, Shapes::ShapeRef.new(shape: ThemeList, required: true, location_name: "entities"))
    ExportThemesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ExportThemesResponse.struct_class = Types::ExportThemesResponse

    FeaturesMap.key = Shapes::ShapeRef.new(shape: String)
    FeaturesMap.value = Shapes::ShapeRef.new(shape: String)

    FieldConfig.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "label"))
    FieldConfig.add_member(:position, Shapes::ShapeRef.new(shape: FieldPosition, location_name: "position"))
    FieldConfig.add_member(:excluded, Shapes::ShapeRef.new(shape: Boolean, location_name: "excluded"))
    FieldConfig.add_member(:input_type, Shapes::ShapeRef.new(shape: FieldInputConfig, location_name: "inputType"))
    FieldConfig.add_member(:validations, Shapes::ShapeRef.new(shape: ValidationsList, location_name: "validations"))
    FieldConfig.struct_class = Types::FieldConfig

    FieldInputConfig.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    FieldInputConfig.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, location_name: "required"))
    FieldInputConfig.add_member(:read_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "readOnly"))
    FieldInputConfig.add_member(:placeholder, Shapes::ShapeRef.new(shape: String, location_name: "placeholder"))
    FieldInputConfig.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "defaultValue"))
    FieldInputConfig.add_member(:descriptive_text, Shapes::ShapeRef.new(shape: String, location_name: "descriptiveText"))
    FieldInputConfig.add_member(:default_checked, Shapes::ShapeRef.new(shape: Boolean, location_name: "defaultChecked"))
    FieldInputConfig.add_member(:default_country_code, Shapes::ShapeRef.new(shape: String, location_name: "defaultCountryCode"))
    FieldInputConfig.add_member(:value_mappings, Shapes::ShapeRef.new(shape: ValueMappings, location_name: "valueMappings"))
    FieldInputConfig.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    FieldInputConfig.add_member(:min_value, Shapes::ShapeRef.new(shape: Float, location_name: "minValue"))
    FieldInputConfig.add_member(:max_value, Shapes::ShapeRef.new(shape: Float, location_name: "maxValue"))
    FieldInputConfig.add_member(:step, Shapes::ShapeRef.new(shape: Float, location_name: "step"))
    FieldInputConfig.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    FieldInputConfig.add_member(:is_array, Shapes::ShapeRef.new(shape: Boolean, location_name: "isArray"))
    FieldInputConfig.add_member(:file_uploader_config, Shapes::ShapeRef.new(shape: FileUploaderFieldConfig, location_name: "fileUploaderConfig"))
    FieldInputConfig.struct_class = Types::FieldInputConfig

    FieldPosition.add_member(:fixed, Shapes::ShapeRef.new(shape: FixedPosition, location_name: "fixed"))
    FieldPosition.add_member(:right_of, Shapes::ShapeRef.new(shape: String, location_name: "rightOf"))
    FieldPosition.add_member(:below, Shapes::ShapeRef.new(shape: String, location_name: "below"))
    FieldPosition.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FieldPosition.add_member_subclass(:fixed, Types::FieldPosition::Fixed)
    FieldPosition.add_member_subclass(:right_of, Types::FieldPosition::RightOf)
    FieldPosition.add_member_subclass(:below, Types::FieldPosition::Below)
    FieldPosition.add_member_subclass(:unknown, Types::FieldPosition::Unknown)
    FieldPosition.struct_class = Types::FieldPosition

    FieldValidationConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    FieldValidationConfiguration.add_member(:str_values, Shapes::ShapeRef.new(shape: StrValues, location_name: "strValues"))
    FieldValidationConfiguration.add_member(:num_values, Shapes::ShapeRef.new(shape: NumValues, location_name: "numValues"))
    FieldValidationConfiguration.add_member(:validation_message, Shapes::ShapeRef.new(shape: String, location_name: "validationMessage"))
    FieldValidationConfiguration.struct_class = Types::FieldValidationConfiguration

    FieldsMap.key = Shapes::ShapeRef.new(shape: String)
    FieldsMap.value = Shapes::ShapeRef.new(shape: FieldConfig)

    FileUploaderFieldConfig.add_member(:access_level, Shapes::ShapeRef.new(shape: StorageAccessLevel, required: true, location_name: "accessLevel"))
    FileUploaderFieldConfig.add_member(:accepted_file_types, Shapes::ShapeRef.new(shape: StrValues, required: true, location_name: "acceptedFileTypes"))
    FileUploaderFieldConfig.add_member(:show_thumbnails, Shapes::ShapeRef.new(shape: Boolean, location_name: "showThumbnails"))
    FileUploaderFieldConfig.add_member(:is_resumable, Shapes::ShapeRef.new(shape: Boolean, location_name: "isResumable"))
    FileUploaderFieldConfig.add_member(:max_file_count, Shapes::ShapeRef.new(shape: Integer, location_name: "maxFileCount"))
    FileUploaderFieldConfig.add_member(:max_size, Shapes::ShapeRef.new(shape: Integer, location_name: "maxSize"))
    FileUploaderFieldConfig.struct_class = Types::FileUploaderFieldConfig

    Form.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "appId"))
    Form.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "environmentName"))
    Form.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    Form.add_member(:name, Shapes::ShapeRef.new(shape: FormName, required: true, location_name: "name"))
    Form.add_member(:form_action_type, Shapes::ShapeRef.new(shape: FormActionType, required: true, location_name: "formActionType"))
    Form.add_member(:style, Shapes::ShapeRef.new(shape: FormStyle, required: true, location_name: "style"))
    Form.add_member(:data_type, Shapes::ShapeRef.new(shape: FormDataTypeConfig, required: true, location_name: "dataType"))
    Form.add_member(:fields, Shapes::ShapeRef.new(shape: FieldsMap, required: true, location_name: "fields"))
    Form.add_member(:sectional_elements, Shapes::ShapeRef.new(shape: SectionalElementMap, required: true, location_name: "sectionalElements"))
    Form.add_member(:schema_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "schemaVersion"))
    Form.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Form.add_member(:cta, Shapes::ShapeRef.new(shape: FormCTA, location_name: "cta"))
    Form.add_member(:label_decorator, Shapes::ShapeRef.new(shape: LabelDecorator, location_name: "labelDecorator"))
    Form.struct_class = Types::Form

    FormBindingElement.add_member(:element, Shapes::ShapeRef.new(shape: String, required: true, location_name: "element"))
    FormBindingElement.add_member(:property, Shapes::ShapeRef.new(shape: String, required: true, location_name: "property"))
    FormBindingElement.struct_class = Types::FormBindingElement

    FormBindings.key = Shapes::ShapeRef.new(shape: String)
    FormBindings.value = Shapes::ShapeRef.new(shape: FormBindingElement)

    FormButton.add_member(:excluded, Shapes::ShapeRef.new(shape: Boolean, location_name: "excluded"))
    FormButton.add_member(:children, Shapes::ShapeRef.new(shape: String, location_name: "children"))
    FormButton.add_member(:position, Shapes::ShapeRef.new(shape: FieldPosition, location_name: "position"))
    FormButton.struct_class = Types::FormButton

    FormCTA.add_member(:position, Shapes::ShapeRef.new(shape: FormButtonsPosition, location_name: "position"))
    FormCTA.add_member(:clear, Shapes::ShapeRef.new(shape: FormButton, location_name: "clear"))
    FormCTA.add_member(:cancel, Shapes::ShapeRef.new(shape: FormButton, location_name: "cancel"))
    FormCTA.add_member(:submit, Shapes::ShapeRef.new(shape: FormButton, location_name: "submit"))
    FormCTA.struct_class = Types::FormCTA

    FormDataTypeConfig.add_member(:data_source_type, Shapes::ShapeRef.new(shape: FormDataSourceType, required: true, location_name: "dataSourceType"))
    FormDataTypeConfig.add_member(:data_type_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dataTypeName"))
    FormDataTypeConfig.struct_class = Types::FormDataTypeConfig

    FormInputBindingProperties.key = Shapes::ShapeRef.new(shape: String)
    FormInputBindingProperties.value = Shapes::ShapeRef.new(shape: FormInputBindingPropertiesValue)

    FormInputBindingPropertiesValue.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    FormInputBindingPropertiesValue.add_member(:binding_properties, Shapes::ShapeRef.new(shape: FormInputBindingPropertiesValueProperties, location_name: "bindingProperties"))
    FormInputBindingPropertiesValue.struct_class = Types::FormInputBindingPropertiesValue

    FormInputBindingPropertiesValueProperties.add_member(:model, Shapes::ShapeRef.new(shape: String, location_name: "model"))
    FormInputBindingPropertiesValueProperties.struct_class = Types::FormInputBindingPropertiesValueProperties

    FormInputValueProperty.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    FormInputValueProperty.add_member(:binding_properties, Shapes::ShapeRef.new(shape: FormInputValuePropertyBindingProperties, location_name: "bindingProperties"))
    FormInputValueProperty.add_member(:concat, Shapes::ShapeRef.new(shape: FormInputValuePropertyList, location_name: "concat"))
    FormInputValueProperty.struct_class = Types::FormInputValueProperty

    FormInputValuePropertyBindingProperties.add_member(:property, Shapes::ShapeRef.new(shape: String, required: true, location_name: "property"))
    FormInputValuePropertyBindingProperties.add_member(:field, Shapes::ShapeRef.new(shape: String, location_name: "field"))
    FormInputValuePropertyBindingProperties.struct_class = Types::FormInputValuePropertyBindingProperties

    FormInputValuePropertyList.member = Shapes::ShapeRef.new(shape: FormInputValueProperty)

    FormList.member = Shapes::ShapeRef.new(shape: Form)

    FormStyle.add_member(:horizontal_gap, Shapes::ShapeRef.new(shape: FormStyleConfig, location_name: "horizontalGap"))
    FormStyle.add_member(:vertical_gap, Shapes::ShapeRef.new(shape: FormStyleConfig, location_name: "verticalGap"))
    FormStyle.add_member(:outer_padding, Shapes::ShapeRef.new(shape: FormStyleConfig, location_name: "outerPadding"))
    FormStyle.struct_class = Types::FormStyle

    FormStyleConfig.add_member(:token_reference, Shapes::ShapeRef.new(shape: String, location_name: "tokenReference"))
    FormStyleConfig.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    FormStyleConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FormStyleConfig.add_member_subclass(:token_reference, Types::FormStyleConfig::TokenReference)
    FormStyleConfig.add_member_subclass(:value, Types::FormStyleConfig::Value)
    FormStyleConfig.add_member_subclass(:unknown, Types::FormStyleConfig::Unknown)
    FormStyleConfig.struct_class = Types::FormStyleConfig

    FormSummary.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "appId"))
    FormSummary.add_member(:data_type, Shapes::ShapeRef.new(shape: FormDataTypeConfig, required: true, location_name: "dataType"))
    FormSummary.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "environmentName"))
    FormSummary.add_member(:form_action_type, Shapes::ShapeRef.new(shape: FormActionType, required: true, location_name: "formActionType"))
    FormSummary.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    FormSummary.add_member(:name, Shapes::ShapeRef.new(shape: FormName, required: true, location_name: "name"))
    FormSummary.struct_class = Types::FormSummary

    FormSummaryList.member = Shapes::ShapeRef.new(shape: FormSummary)

    GetCodegenJobRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    GetCodegenJobRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    GetCodegenJobRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    GetCodegenJobRequest.struct_class = Types::GetCodegenJobRequest

    GetCodegenJobResponse.add_member(:job, Shapes::ShapeRef.new(shape: CodegenJob, location_name: "job"))
    GetCodegenJobResponse.struct_class = Types::GetCodegenJobResponse
    GetCodegenJobResponse[:payload] = :job
    GetCodegenJobResponse[:payload_member] = GetCodegenJobResponse.member(:job)

    GetComponentRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    GetComponentRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    GetComponentRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    GetComponentRequest.struct_class = Types::GetComponentRequest

    GetComponentResponse.add_member(:component, Shapes::ShapeRef.new(shape: Component, location_name: "component"))
    GetComponentResponse.struct_class = Types::GetComponentResponse
    GetComponentResponse[:payload] = :component
    GetComponentResponse[:payload_member] = GetComponentResponse.member(:component)

    GetFormRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    GetFormRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    GetFormRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    GetFormRequest.struct_class = Types::GetFormRequest

    GetFormResponse.add_member(:form, Shapes::ShapeRef.new(shape: Form, location_name: "form"))
    GetFormResponse.struct_class = Types::GetFormResponse
    GetFormResponse[:payload] = :form
    GetFormResponse[:payload_member] = GetFormResponse.member(:form)

    GetMetadataRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    GetMetadataRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    GetMetadataRequest.struct_class = Types::GetMetadataRequest

    GetMetadataResponse.add_member(:features, Shapes::ShapeRef.new(shape: FeaturesMap, required: true, location_name: "features"))
    GetMetadataResponse.struct_class = Types::GetMetadataResponse

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

    ListCodegenJobsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    ListCodegenJobsRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    ListCodegenJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListCodegenJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCodegenJobsLimit, location: "querystring", location_name: "maxResults"))
    ListCodegenJobsRequest.struct_class = Types::ListCodegenJobsRequest

    ListCodegenJobsResponse.add_member(:entities, Shapes::ShapeRef.new(shape: CodegenJobSummaryList, required: true, location_name: "entities"))
    ListCodegenJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListCodegenJobsResponse.struct_class = Types::ListCodegenJobsResponse

    ListComponentsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    ListComponentsRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    ListComponentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListComponentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListComponentsLimit, location: "querystring", location_name: "maxResults"))
    ListComponentsRequest.struct_class = Types::ListComponentsRequest

    ListComponentsResponse.add_member(:entities, Shapes::ShapeRef.new(shape: ComponentSummaryList, required: true, location_name: "entities"))
    ListComponentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListComponentsResponse.struct_class = Types::ListComponentsResponse

    ListFormsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    ListFormsRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    ListFormsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListFormsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListFormsLimit, location: "querystring", location_name: "maxResults"))
    ListFormsRequest.struct_class = Types::ListFormsRequest

    ListFormsResponse.add_member(:entities, Shapes::ShapeRef.new(shape: FormSummaryList, required: true, location_name: "entities"))
    ListFormsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFormsResponse.struct_class = Types::ListFormsResponse

    ListThemesRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    ListThemesRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    ListThemesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListThemesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListThemesLimit, location: "querystring", location_name: "maxResults"))
    ListThemesRequest.struct_class = Types::ListThemesRequest

    ListThemesResponse.add_member(:entities, Shapes::ShapeRef.new(shape: ThemeSummaryList, required: true, location_name: "entities"))
    ListThemesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListThemesResponse.struct_class = Types::ListThemesResponse

    MutationActionSetStateParameter.add_member(:component_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "componentName"))
    MutationActionSetStateParameter.add_member(:property, Shapes::ShapeRef.new(shape: String, required: true, location_name: "property"))
    MutationActionSetStateParameter.add_member(:set, Shapes::ShapeRef.new(shape: ComponentProperty, required: true, location_name: "set"))
    MutationActionSetStateParameter.struct_class = Types::MutationActionSetStateParameter

    NumValues.member = Shapes::ShapeRef.new(shape: Integer)

    Predicate.add_member(:or, Shapes::ShapeRef.new(shape: PredicateList, location_name: "or"))
    Predicate.add_member(:and, Shapes::ShapeRef.new(shape: PredicateList, location_name: "and"))
    Predicate.add_member(:field, Shapes::ShapeRef.new(shape: String, location_name: "field"))
    Predicate.add_member(:operator, Shapes::ShapeRef.new(shape: String, location_name: "operator"))
    Predicate.add_member(:operand, Shapes::ShapeRef.new(shape: String, location_name: "operand"))
    Predicate.add_member(:operand_type, Shapes::ShapeRef.new(shape: OperandType, location_name: "operandType"))
    Predicate.struct_class = Types::Predicate

    PredicateList.member = Shapes::ShapeRef.new(shape: Predicate)

    PutMetadataFlagBody.add_member(:new_value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "newValue"))
    PutMetadataFlagBody.struct_class = Types::PutMetadataFlagBody

    PutMetadataFlagRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    PutMetadataFlagRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    PutMetadataFlagRequest.add_member(:feature_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "featureName"))
    PutMetadataFlagRequest.add_member(:body, Shapes::ShapeRef.new(shape: PutMetadataFlagBody, required: true, location_name: "body"))
    PutMetadataFlagRequest.struct_class = Types::PutMetadataFlagRequest
    PutMetadataFlagRequest[:payload] = :body
    PutMetadataFlagRequest[:payload_member] = PutMetadataFlagRequest.member(:body)

    ReactStartCodegenJobData.add_member(:module, Shapes::ShapeRef.new(shape: JSModule, location_name: "module"))
    ReactStartCodegenJobData.add_member(:target, Shapes::ShapeRef.new(shape: JSTarget, location_name: "target"))
    ReactStartCodegenJobData.add_member(:script, Shapes::ShapeRef.new(shape: JSScript, location_name: "script"))
    ReactStartCodegenJobData.add_member(:render_type_declarations, Shapes::ShapeRef.new(shape: Boolean, location_name: "renderTypeDeclarations"))
    ReactStartCodegenJobData.add_member(:inline_source_map, Shapes::ShapeRef.new(shape: Boolean, location_name: "inlineSourceMap"))
    ReactStartCodegenJobData.struct_class = Types::ReactStartCodegenJobData

    RefreshTokenRequest.add_member(:provider, Shapes::ShapeRef.new(shape: TokenProviders, required: true, location: "uri", location_name: "provider"))
    RefreshTokenRequest.add_member(:refresh_token_body, Shapes::ShapeRef.new(shape: RefreshTokenRequestBody, required: true, location_name: "refreshTokenBody"))
    RefreshTokenRequest.struct_class = Types::RefreshTokenRequest
    RefreshTokenRequest[:payload] = :refresh_token_body
    RefreshTokenRequest[:payload_member] = RefreshTokenRequest.member(:refresh_token_body)

    RefreshTokenRequestBody.add_member(:token, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "token"))
    RefreshTokenRequestBody.add_member(:client_id, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "clientId"))
    RefreshTokenRequestBody.struct_class = Types::RefreshTokenRequestBody

    RefreshTokenResponse.add_member(:access_token, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "accessToken"))
    RefreshTokenResponse.add_member(:expires_in, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "expiresIn"))
    RefreshTokenResponse.struct_class = Types::RefreshTokenResponse

    RelatedModelFieldsList.member = Shapes::ShapeRef.new(shape: String)

    ResourceConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceConflictException.struct_class = Types::ResourceConflictException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SectionalElement.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "type"))
    SectionalElement.add_member(:position, Shapes::ShapeRef.new(shape: FieldPosition, location_name: "position"))
    SectionalElement.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "text"))
    SectionalElement.add_member(:level, Shapes::ShapeRef.new(shape: Integer, location_name: "level"))
    SectionalElement.add_member(:orientation, Shapes::ShapeRef.new(shape: String, location_name: "orientation"))
    SectionalElement.add_member(:excluded, Shapes::ShapeRef.new(shape: Boolean, location_name: "excluded"))
    SectionalElement.struct_class = Types::SectionalElement

    SectionalElementMap.key = Shapes::ShapeRef.new(shape: String)
    SectionalElementMap.value = Shapes::ShapeRef.new(shape: SectionalElement)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SortProperty.add_member(:field, Shapes::ShapeRef.new(shape: String, required: true, location_name: "field"))
    SortProperty.add_member(:direction, Shapes::ShapeRef.new(shape: SortDirection, required: true, location_name: "direction"))
    SortProperty.struct_class = Types::SortProperty

    SortPropertyList.member = Shapes::ShapeRef.new(shape: SortProperty)

    StartCodegenJobData.add_member(:render_config, Shapes::ShapeRef.new(shape: CodegenJobRenderConfig, required: true, location_name: "renderConfig"))
    StartCodegenJobData.add_member(:generic_data_schema, Shapes::ShapeRef.new(shape: CodegenJobGenericDataSchema, location_name: "genericDataSchema"))
    StartCodegenJobData.add_member(:auto_generate_forms, Shapes::ShapeRef.new(shape: Boolean, location_name: "autoGenerateForms"))
    StartCodegenJobData.add_member(:features, Shapes::ShapeRef.new(shape: CodegenFeatureFlags, location_name: "features"))
    StartCodegenJobData.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StartCodegenJobData.struct_class = Types::StartCodegenJobData

    StartCodegenJobRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    StartCodegenJobRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    StartCodegenJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartCodegenJobRequest.add_member(:codegen_job_to_create, Shapes::ShapeRef.new(shape: StartCodegenJobData, required: true, location_name: "codegenJobToCreate"))
    StartCodegenJobRequest.struct_class = Types::StartCodegenJobRequest
    StartCodegenJobRequest[:payload] = :codegen_job_to_create
    StartCodegenJobRequest[:payload_member] = StartCodegenJobRequest.member(:codegen_job_to_create)

    StartCodegenJobResponse.add_member(:entity, Shapes::ShapeRef.new(shape: CodegenJob, location_name: "entity"))
    StartCodegenJobResponse.struct_class = Types::StartCodegenJobResponse
    StartCodegenJobResponse[:payload] = :entity
    StartCodegenJobResponse[:payload_member] = StartCodegenJobResponse.member(:entity)

    StrValues.member = Shapes::ShapeRef.new(shape: String)

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    Theme.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "appId"))
    Theme.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "environmentName"))
    Theme.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    Theme.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, required: true, location_name: "name"))
    Theme.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    Theme.add_member(:modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "modifiedAt"))
    Theme.add_member(:values, Shapes::ShapeRef.new(shape: ThemeValuesList, required: true, location_name: "values"))
    Theme.add_member(:overrides, Shapes::ShapeRef.new(shape: ThemeValuesList, location_name: "overrides"))
    Theme.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Theme.struct_class = Types::Theme

    ThemeList.member = Shapes::ShapeRef.new(shape: Theme)

    ThemeSummary.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "appId"))
    ThemeSummary.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "environmentName"))
    ThemeSummary.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    ThemeSummary.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, required: true, location_name: "name"))
    ThemeSummary.struct_class = Types::ThemeSummary

    ThemeSummaryList.member = Shapes::ShapeRef.new(shape: ThemeSummary)

    ThemeValue.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    ThemeValue.add_member(:children, Shapes::ShapeRef.new(shape: ThemeValuesList, location_name: "children"))
    ThemeValue.struct_class = Types::ThemeValue

    ThemeValues.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "key"))
    ThemeValues.add_member(:value, Shapes::ShapeRef.new(shape: ThemeValue, location_name: "value"))
    ThemeValues.struct_class = Types::ThemeValues

    ThemeValuesList.member = Shapes::ShapeRef.new(shape: ThemeValues)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UpdateComponentData.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, location_name: "id"))
    UpdateComponentData.add_member(:name, Shapes::ShapeRef.new(shape: ComponentName, location_name: "name"))
    UpdateComponentData.add_member(:source_id, Shapes::ShapeRef.new(shape: String, location_name: "sourceId"))
    UpdateComponentData.add_member(:component_type, Shapes::ShapeRef.new(shape: ComponentType, location_name: "componentType"))
    UpdateComponentData.add_member(:properties, Shapes::ShapeRef.new(shape: ComponentProperties, location_name: "properties"))
    UpdateComponentData.add_member(:children, Shapes::ShapeRef.new(shape: ComponentChildList, location_name: "children"))
    UpdateComponentData.add_member(:variants, Shapes::ShapeRef.new(shape: ComponentVariants, location_name: "variants"))
    UpdateComponentData.add_member(:overrides, Shapes::ShapeRef.new(shape: ComponentOverrides, location_name: "overrides"))
    UpdateComponentData.add_member(:binding_properties, Shapes::ShapeRef.new(shape: ComponentBindingProperties, location_name: "bindingProperties"))
    UpdateComponentData.add_member(:collection_properties, Shapes::ShapeRef.new(shape: ComponentCollectionProperties, location_name: "collectionProperties"))
    UpdateComponentData.add_member(:events, Shapes::ShapeRef.new(shape: ComponentEvents, location_name: "events"))
    UpdateComponentData.add_member(:schema_version, Shapes::ShapeRef.new(shape: String, location_name: "schemaVersion"))
    UpdateComponentData.struct_class = Types::UpdateComponentData

    UpdateComponentRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    UpdateComponentRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    UpdateComponentRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    UpdateComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateComponentRequest.add_member(:updated_component, Shapes::ShapeRef.new(shape: UpdateComponentData, required: true, location_name: "updatedComponent"))
    UpdateComponentRequest.struct_class = Types::UpdateComponentRequest
    UpdateComponentRequest[:payload] = :updated_component
    UpdateComponentRequest[:payload_member] = UpdateComponentRequest.member(:updated_component)

    UpdateComponentResponse.add_member(:entity, Shapes::ShapeRef.new(shape: Component, location_name: "entity"))
    UpdateComponentResponse.struct_class = Types::UpdateComponentResponse
    UpdateComponentResponse[:payload] = :entity
    UpdateComponentResponse[:payload_member] = UpdateComponentResponse.member(:entity)

    UpdateFormData.add_member(:name, Shapes::ShapeRef.new(shape: FormName, location_name: "name"))
    UpdateFormData.add_member(:data_type, Shapes::ShapeRef.new(shape: FormDataTypeConfig, location_name: "dataType"))
    UpdateFormData.add_member(:form_action_type, Shapes::ShapeRef.new(shape: FormActionType, location_name: "formActionType"))
    UpdateFormData.add_member(:fields, Shapes::ShapeRef.new(shape: FieldsMap, location_name: "fields"))
    UpdateFormData.add_member(:style, Shapes::ShapeRef.new(shape: FormStyle, location_name: "style"))
    UpdateFormData.add_member(:sectional_elements, Shapes::ShapeRef.new(shape: SectionalElementMap, location_name: "sectionalElements"))
    UpdateFormData.add_member(:schema_version, Shapes::ShapeRef.new(shape: String, location_name: "schemaVersion"))
    UpdateFormData.add_member(:cta, Shapes::ShapeRef.new(shape: FormCTA, location_name: "cta"))
    UpdateFormData.add_member(:label_decorator, Shapes::ShapeRef.new(shape: LabelDecorator, location_name: "labelDecorator"))
    UpdateFormData.struct_class = Types::UpdateFormData

    UpdateFormRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    UpdateFormRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    UpdateFormRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    UpdateFormRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateFormRequest.add_member(:updated_form, Shapes::ShapeRef.new(shape: UpdateFormData, required: true, location_name: "updatedForm"))
    UpdateFormRequest.struct_class = Types::UpdateFormRequest
    UpdateFormRequest[:payload] = :updated_form
    UpdateFormRequest[:payload_member] = UpdateFormRequest.member(:updated_form)

    UpdateFormResponse.add_member(:entity, Shapes::ShapeRef.new(shape: Form, location_name: "entity"))
    UpdateFormResponse.struct_class = Types::UpdateFormResponse
    UpdateFormResponse[:payload] = :entity
    UpdateFormResponse[:payload_member] = UpdateFormResponse.member(:entity)

    UpdateThemeData.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, location_name: "id"))
    UpdateThemeData.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, location_name: "name"))
    UpdateThemeData.add_member(:values, Shapes::ShapeRef.new(shape: ThemeValuesList, required: true, location_name: "values"))
    UpdateThemeData.add_member(:overrides, Shapes::ShapeRef.new(shape: ThemeValuesList, location_name: "overrides"))
    UpdateThemeData.struct_class = Types::UpdateThemeData

    UpdateThemeRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "appId"))
    UpdateThemeRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "environmentName"))
    UpdateThemeRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    UpdateThemeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateThemeRequest.add_member(:updated_theme, Shapes::ShapeRef.new(shape: UpdateThemeData, required: true, location_name: "updatedTheme"))
    UpdateThemeRequest.struct_class = Types::UpdateThemeRequest
    UpdateThemeRequest[:payload] = :updated_theme
    UpdateThemeRequest[:payload_member] = UpdateThemeRequest.member(:updated_theme)

    UpdateThemeResponse.add_member(:entity, Shapes::ShapeRef.new(shape: Theme, location_name: "entity"))
    UpdateThemeResponse.struct_class = Types::UpdateThemeResponse
    UpdateThemeResponse[:payload] = :entity
    UpdateThemeResponse[:payload_member] = UpdateThemeResponse.member(:entity)

    ValidationsList.member = Shapes::ShapeRef.new(shape: FieldValidationConfiguration)

    ValueMapping.add_member(:display_value, Shapes::ShapeRef.new(shape: FormInputValueProperty, location_name: "displayValue"))
    ValueMapping.add_member(:value, Shapes::ShapeRef.new(shape: FormInputValueProperty, required: true, location_name: "value"))
    ValueMapping.struct_class = Types::ValueMapping

    ValueMappingList.member = Shapes::ShapeRef.new(shape: ValueMapping)

    ValueMappings.add_member(:values, Shapes::ShapeRef.new(shape: ValueMappingList, required: true, location_name: "values"))
    ValueMappings.add_member(:binding_properties, Shapes::ShapeRef.new(shape: FormInputBindingProperties, location_name: "bindingProperties"))
    ValueMappings.struct_class = Types::ValueMappings


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

      api.add_operation(:create_form, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateForm"
        o.http_method = "POST"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/forms"
        o.input = Shapes::ShapeRef.new(shape: CreateFormRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFormResponse)
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

      api.add_operation(:delete_form, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteForm"
        o.http_method = "DELETE"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/forms/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFormRequest)
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
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:export_forms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportForms"
        o.http_method = "GET"
        o.http_request_uri = "/export/app/{appId}/environment/{environmentName}/forms"
        o.input = Shapes::ShapeRef.new(shape: ExportFormsRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportFormsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:export_themes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportThemes"
        o.http_method = "GET"
        o.http_request_uri = "/export/app/{appId}/environment/{environmentName}/themes"
        o.input = Shapes::ShapeRef.new(shape: ExportThemesRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportThemesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_codegen_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCodegenJob"
        o.http_method = "GET"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/codegen-jobs/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetCodegenJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCodegenJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:get_form, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetForm"
        o.http_method = "GET"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/forms/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetFormRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFormResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/metadata"
        o.input = Shapes::ShapeRef.new(shape: GetMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
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

      api.add_operation(:list_codegen_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodegenJobs"
        o.http_method = "GET"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/codegen-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListCodegenJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCodegenJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:list_forms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListForms"
        o.http_method = "GET"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/forms"
        o.input = Shapes::ShapeRef.new(shape: ListFormsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFormsResponse)
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

      api.add_operation(:put_metadata_flag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutMetadataFlag"
        o.http_method = "PUT"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/metadata/features/{featureName}"
        o.input = Shapes::ShapeRef.new(shape: PutMetadataFlagRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:refresh_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RefreshToken"
        o.http_method = "POST"
        o.http_request_uri = "/tokens/{provider}/refresh"
        o.input = Shapes::ShapeRef.new(shape: RefreshTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: RefreshTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:start_codegen_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCodegenJob"
        o.http_method = "POST"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/codegen-jobs"
        o.input = Shapes::ShapeRef.new(shape: StartCodegenJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCodegenJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:update_form, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateForm"
        o.http_method = "PATCH"
        o.http_request_uri = "/app/{appId}/environment/{environmentName}/forms/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFormRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFormResponse)
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
