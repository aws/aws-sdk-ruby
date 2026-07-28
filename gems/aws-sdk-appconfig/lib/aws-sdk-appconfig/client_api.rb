# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AppConfig
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountSettings = Shapes::StructureShape.new(name: 'AccountSettings')
    Action = Shapes::StructureShape.new(name: 'Action')
    ActionInvocation = Shapes::StructureShape.new(name: 'ActionInvocation')
    ActionInvocations = Shapes::ListShape.new(name: 'ActionInvocations')
    ActionList = Shapes::ListShape.new(name: 'ActionList')
    ActionPoint = Shapes::StringShape.new(name: 'ActionPoint')
    ActionsMap = Shapes::MapShape.new(name: 'ActionsMap')
    Application = Shapes::StructureShape.new(name: 'Application')
    ApplicationList = Shapes::ListShape.new(name: 'ApplicationList')
    Applications = Shapes::StructureShape.new(name: 'Applications')
    AppliedExtension = Shapes::StructureShape.new(name: 'AppliedExtension')
    AppliedExtensions = Shapes::ListShape.new(name: 'AppliedExtensions')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AttributeKey = Shapes::StringShape.new(name: 'AttributeKey')
    AttributeString = Shapes::StringShape.new(name: 'AttributeString')
    AttributeValue = Shapes::UnionShape.new(name: 'AttributeValue')
    AttributeValueMap = Shapes::MapShape.new(name: 'AttributeValueMap')
    BadRequestDetails = Shapes::UnionShape.new(name: 'BadRequestDetails')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BadRequestReason = Shapes::StringShape.new(name: 'BadRequestReason')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BytesMeasure = Shapes::StringShape.new(name: 'BytesMeasure')
    Configuration = Shapes::StructureShape.new(name: 'Configuration')
    ConfigurationProfile = Shapes::StructureShape.new(name: 'ConfigurationProfile')
    ConfigurationProfileSummary = Shapes::StructureShape.new(name: 'ConfigurationProfileSummary')
    ConfigurationProfileSummaryList = Shapes::ListShape.new(name: 'ConfigurationProfileSummaryList')
    ConfigurationProfileType = Shapes::StringShape.new(name: 'ConfigurationProfileType')
    ConfigurationProfiles = Shapes::StructureShape.new(name: 'ConfigurationProfiles')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateConfigurationProfileRequest = Shapes::StructureShape.new(name: 'CreateConfigurationProfileRequest')
    CreateDeploymentStrategyRequest = Shapes::StructureShape.new(name: 'CreateDeploymentStrategyRequest')
    CreateEnvironmentRequest = Shapes::StructureShape.new(name: 'CreateEnvironmentRequest')
    CreateExperimentDefinitionRequest = Shapes::StructureShape.new(name: 'CreateExperimentDefinitionRequest')
    CreateExtensionAssociationRequest = Shapes::StructureShape.new(name: 'CreateExtensionAssociationRequest')
    CreateExtensionRequest = Shapes::StructureShape.new(name: 'CreateExtensionRequest')
    CreateHostedConfigurationVersionRequest = Shapes::StructureShape.new(name: 'CreateHostedConfigurationVersionRequest')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteConfigurationProfileRequest = Shapes::StructureShape.new(name: 'DeleteConfigurationProfileRequest')
    DeleteDeploymentStrategyRequest = Shapes::StructureShape.new(name: 'DeleteDeploymentStrategyRequest')
    DeleteEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteEnvironmentRequest')
    DeleteExperimentDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteExperimentDefinitionRequest')
    DeleteExtensionAssociationRequest = Shapes::StructureShape.new(name: 'DeleteExtensionAssociationRequest')
    DeleteExtensionRequest = Shapes::StructureShape.new(name: 'DeleteExtensionRequest')
    DeleteHostedConfigurationVersionRequest = Shapes::StructureShape.new(name: 'DeleteHostedConfigurationVersionRequest')
    DeleteType = Shapes::StringShape.new(name: 'DeleteType')
    DeletionProtectionCheck = Shapes::StringShape.new(name: 'DeletionProtectionCheck')
    DeletionProtectionDuration = Shapes::IntegerShape.new(name: 'DeletionProtectionDuration')
    DeletionProtectionSettings = Shapes::StructureShape.new(name: 'DeletionProtectionSettings')
    Deployment = Shapes::StructureShape.new(name: 'Deployment')
    DeploymentEvent = Shapes::StructureShape.new(name: 'DeploymentEvent')
    DeploymentEventType = Shapes::StringShape.new(name: 'DeploymentEventType')
    DeploymentEvents = Shapes::ListShape.new(name: 'DeploymentEvents')
    DeploymentList = Shapes::ListShape.new(name: 'DeploymentList')
    DeploymentParameters = Shapes::StructureShape.new(name: 'DeploymentParameters')
    DeploymentState = Shapes::StringShape.new(name: 'DeploymentState')
    DeploymentStrategies = Shapes::StructureShape.new(name: 'DeploymentStrategies')
    DeploymentStrategy = Shapes::StructureShape.new(name: 'DeploymentStrategy')
    DeploymentStrategyId = Shapes::StringShape.new(name: 'DeploymentStrategyId')
    DeploymentStrategyList = Shapes::ListShape.new(name: 'DeploymentStrategyList')
    DeploymentSummary = Shapes::StructureShape.new(name: 'DeploymentSummary')
    DeploymentType = Shapes::StringShape.new(name: 'DeploymentType')
    Deployments = Shapes::StructureShape.new(name: 'Deployments')
    Description = Shapes::StringShape.new(name: 'Description')
    Double = Shapes::FloatShape.new(name: 'Double')
    DynamicParameterKey = Shapes::StringShape.new(name: 'DynamicParameterKey')
    DynamicParameterMap = Shapes::MapShape.new(name: 'DynamicParameterMap')
    EntityId = Shapes::StringShape.new(name: 'EntityId')
    Environment = Shapes::StructureShape.new(name: 'Environment')
    EnvironmentList = Shapes::ListShape.new(name: 'EnvironmentList')
    EnvironmentState = Shapes::StringShape.new(name: 'EnvironmentState')
    Environments = Shapes::StructureShape.new(name: 'Environments')
    ExperimentDefinition = Shapes::StructureShape.new(name: 'ExperimentDefinition')
    ExperimentDefinitionList = Shapes::ListShape.new(name: 'ExperimentDefinitionList')
    ExperimentDefinitionSnapshot = Shapes::StructureShape.new(name: 'ExperimentDefinitionSnapshot')
    ExperimentDefinitionStatus = Shapes::StringShape.new(name: 'ExperimentDefinitionStatus')
    ExperimentDefinitionSummary = Shapes::StructureShape.new(name: 'ExperimentDefinitionSummary')
    ExperimentDefinitions = Shapes::StructureShape.new(name: 'ExperimentDefinitions')
    ExperimentRun = Shapes::StructureShape.new(name: 'ExperimentRun')
    ExperimentRunEvent = Shapes::StructureShape.new(name: 'ExperimentRunEvent')
    ExperimentRunEventList = Shapes::ListShape.new(name: 'ExperimentRunEventList')
    ExperimentRunEventType = Shapes::StringShape.new(name: 'ExperimentRunEventType')
    ExperimentRunEvents = Shapes::StructureShape.new(name: 'ExperimentRunEvents')
    ExperimentRunResult = Shapes::StructureShape.new(name: 'ExperimentRunResult')
    ExperimentRunStatus = Shapes::StringShape.new(name: 'ExperimentRunStatus')
    ExperimentRunSummary = Shapes::StructureShape.new(name: 'ExperimentRunSummary')
    ExperimentRunSummaryList = Shapes::ListShape.new(name: 'ExperimentRunSummaryList')
    ExperimentRuns = Shapes::StructureShape.new(name: 'ExperimentRuns')
    Extension = Shapes::StructureShape.new(name: 'Extension')
    ExtensionAssociation = Shapes::StructureShape.new(name: 'ExtensionAssociation')
    ExtensionAssociationSummaries = Shapes::ListShape.new(name: 'ExtensionAssociationSummaries')
    ExtensionAssociationSummary = Shapes::StructureShape.new(name: 'ExtensionAssociationSummary')
    ExtensionAssociations = Shapes::StructureShape.new(name: 'ExtensionAssociations')
    ExtensionOrParameterName = Shapes::StringShape.new(name: 'ExtensionOrParameterName')
    ExtensionSummaries = Shapes::ListShape.new(name: 'ExtensionSummaries')
    ExtensionSummary = Shapes::StructureShape.new(name: 'ExtensionSummary')
    Extensions = Shapes::StructureShape.new(name: 'Extensions')
    FlagKey = Shapes::StringShape.new(name: 'FlagKey')
    FlagValue = Shapes::StructureShape.new(name: 'FlagValue')
    Float = Shapes::FloatShape.new(name: 'Float')
    GetApplicationRequest = Shapes::StructureShape.new(name: 'GetApplicationRequest')
    GetConfigurationProfileRequest = Shapes::StructureShape.new(name: 'GetConfigurationProfileRequest')
    GetConfigurationRequest = Shapes::StructureShape.new(name: 'GetConfigurationRequest')
    GetDeploymentRequest = Shapes::StructureShape.new(name: 'GetDeploymentRequest')
    GetDeploymentStrategyRequest = Shapes::StructureShape.new(name: 'GetDeploymentStrategyRequest')
    GetEnvironmentRequest = Shapes::StructureShape.new(name: 'GetEnvironmentRequest')
    GetExperimentDefinitionRequest = Shapes::StructureShape.new(name: 'GetExperimentDefinitionRequest')
    GetExperimentRunRequest = Shapes::StructureShape.new(name: 'GetExperimentRunRequest')
    GetExtensionAssociationRequest = Shapes::StructureShape.new(name: 'GetExtensionAssociationRequest')
    GetExtensionRequest = Shapes::StructureShape.new(name: 'GetExtensionRequest')
    GetHostedConfigurationVersionRequest = Shapes::StructureShape.new(name: 'GetHostedConfigurationVersionRequest')
    GrowthFactor = Shapes::FloatShape.new(name: 'GrowthFactor')
    GrowthType = Shapes::StringShape.new(name: 'GrowthType')
    HostedConfigurationVersion = Shapes::StructureShape.new(name: 'HostedConfigurationVersion')
    HostedConfigurationVersionSummary = Shapes::StructureShape.new(name: 'HostedConfigurationVersionSummary')
    HostedConfigurationVersionSummaryList = Shapes::ListShape.new(name: 'HostedConfigurationVersionSummaryList')
    HostedConfigurationVersions = Shapes::StructureShape.new(name: 'HostedConfigurationVersions')
    Id = Shapes::StringShape.new(name: 'Id')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidConfigurationDetail = Shapes::StructureShape.new(name: 'InvalidConfigurationDetail')
    InvalidConfigurationDetailList = Shapes::ListShape.new(name: 'InvalidConfigurationDetailList')
    Iso8601DateTime = Shapes::TimestampShape.new(name: 'Iso8601DateTime', timestampFormat: "iso8601")
    KmsKeyIdentifier = Shapes::StringShape.new(name: 'KmsKeyIdentifier')
    KmsKeyIdentifierOrEmpty = Shapes::StringShape.new(name: 'KmsKeyIdentifierOrEmpty')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListConfigurationProfilesRequest = Shapes::StructureShape.new(name: 'ListConfigurationProfilesRequest')
    ListDeploymentStrategiesRequest = Shapes::StructureShape.new(name: 'ListDeploymentStrategiesRequest')
    ListDeploymentsRequest = Shapes::StructureShape.new(name: 'ListDeploymentsRequest')
    ListEnvironmentsRequest = Shapes::StructureShape.new(name: 'ListEnvironmentsRequest')
    ListExperimentDefinitionsRequest = Shapes::StructureShape.new(name: 'ListExperimentDefinitionsRequest')
    ListExperimentRunEventsRequest = Shapes::StructureShape.new(name: 'ListExperimentRunEventsRequest')
    ListExperimentRunsRequest = Shapes::StructureShape.new(name: 'ListExperimentRunsRequest')
    ListExtensionAssociationsRequest = Shapes::StructureShape.new(name: 'ListExtensionAssociationsRequest')
    ListExtensionsRequest = Shapes::StructureShape.new(name: 'ListExtensionsRequest')
    ListHostedConfigurationVersionsRequest = Shapes::StructureShape.new(name: 'ListHostedConfigurationVersionsRequest')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    LongName = Shapes::StringShape.new(name: 'LongName')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MinutesBetween0And24Hours = Shapes::IntegerShape.new(name: 'MinutesBetween0And24Hours')
    Monitor = Shapes::StructureShape.new(name: 'Monitor')
    MonitorList = Shapes::ListShape.new(name: 'MonitorList')
    Name = Shapes::StringShape.new(name: 'Name')
    NameWithReservedAwsPrefix = Shapes::StringShape.new(name: 'NameWithReservedAwsPrefix')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NullablePercentage = Shapes::FloatShape.new(name: 'NullablePercentage')
    NumberList = Shapes::ListShape.new(name: 'NumberList')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParameterMap = Shapes::MapShape.new(name: 'ParameterMap')
    ParameterValueMap = Shapes::MapShape.new(name: 'ParameterValueMap')
    PayloadTooLargeException = Shapes::StructureShape.new(name: 'PayloadTooLargeException')
    Percentage = Shapes::FloatShape.new(name: 'Percentage')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    QueryName = Shapes::StringShape.new(name: 'QueryName')
    ReplicateTo = Shapes::StringShape.new(name: 'ReplicateTo')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTags = Shapes::StructureShape.new(name: 'ResourceTags')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    Rule = Shapes::StringShape.new(name: 'Rule')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartDeploymentRequest = Shapes::StructureShape.new(name: 'StartDeploymentRequest')
    StartExperimentRunRequest = Shapes::StructureShape.new(name: 'StartExperimentRunRequest')
    StopDeploymentRequest = Shapes::StructureShape.new(name: 'StopDeploymentRequest')
    StopExperimentRunRequest = Shapes::StructureShape.new(name: 'StopExperimentRunRequest')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringWithLengthBetween0And32768 = Shapes::StringShape.new(name: 'StringWithLengthBetween0And32768')
    StringWithLengthBetween1And2048 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And2048')
    StringWithLengthBetween1And255 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And255')
    StringWithLengthBetween1And64 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And64')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Treatment = Shapes::StructureShape.new(name: 'Treatment')
    TreatmentInput = Shapes::StructureShape.new(name: 'TreatmentInput')
    TreatmentInputList = Shapes::ListShape.new(name: 'TreatmentInputList')
    TreatmentKey = Shapes::StringShape.new(name: 'TreatmentKey')
    TreatmentList = Shapes::ListShape.new(name: 'TreatmentList')
    TreatmentOverrideMap = Shapes::MapShape.new(name: 'TreatmentOverrideMap')
    TreatmentOverrides = Shapes::UnionShape.new(name: 'TreatmentOverrides')
    TriggeredBy = Shapes::StringShape.new(name: 'TriggeredBy')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateAccountSettingsRequest = Shapes::StructureShape.new(name: 'UpdateAccountSettingsRequest')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateConfigurationProfileRequest = Shapes::StructureShape.new(name: 'UpdateConfigurationProfileRequest')
    UpdateDeploymentStrategyRequest = Shapes::StructureShape.new(name: 'UpdateDeploymentStrategyRequest')
    UpdateEnvironmentRequest = Shapes::StructureShape.new(name: 'UpdateEnvironmentRequest')
    UpdateExperimentDefinitionRequest = Shapes::StructureShape.new(name: 'UpdateExperimentDefinitionRequest')
    UpdateExperimentRunRequest = Shapes::StructureShape.new(name: 'UpdateExperimentRunRequest')
    UpdateExtensionAssociationRequest = Shapes::StructureShape.new(name: 'UpdateExtensionAssociationRequest')
    UpdateExtensionRequest = Shapes::StructureShape.new(name: 'UpdateExtensionRequest')
    Uri = Shapes::StringShape.new(name: 'Uri')
    ValidateConfigurationRequest = Shapes::StructureShape.new(name: 'ValidateConfigurationRequest')
    Validator = Shapes::StructureShape.new(name: 'Validator')
    ValidatorList = Shapes::ListShape.new(name: 'ValidatorList')
    ValidatorType = Shapes::StringShape.new(name: 'ValidatorType')
    ValidatorTypeList = Shapes::ListShape.new(name: 'ValidatorTypeList')
    VendedMetricsSettings = Shapes::StructureShape.new(name: 'VendedMetricsSettings')
    Version = Shapes::StringShape.new(name: 'Version')
    VersionLabel = Shapes::StringShape.new(name: 'VersionLabel')
    Weight = Shapes::FloatShape.new(name: 'Weight')

    AccountSettings.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: DeletionProtectionSettings, location_name: "DeletionProtection"))
    AccountSettings.add_member(:vended_metrics, Shapes::ShapeRef.new(shape: VendedMetricsSettings, location_name: "VendedMetrics"))
    AccountSettings.struct_class = Types::AccountSettings

    Action.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Action.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Action.add_member(:uri, Shapes::ShapeRef.new(shape: Uri, location_name: "Uri"))
    Action.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoleArn"))
    Action.struct_class = Types::Action

    ActionInvocation.add_member(:extension_identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "ExtensionIdentifier"))
    ActionInvocation.add_member(:action_name, Shapes::ShapeRef.new(shape: Name, location_name: "ActionName"))
    ActionInvocation.add_member(:uri, Shapes::ShapeRef.new(shape: Uri, location_name: "Uri"))
    ActionInvocation.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RoleArn"))
    ActionInvocation.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    ActionInvocation.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    ActionInvocation.add_member(:invocation_id, Shapes::ShapeRef.new(shape: Id, location_name: "InvocationId"))
    ActionInvocation.struct_class = Types::ActionInvocation

    ActionInvocations.member = Shapes::ShapeRef.new(shape: ActionInvocation)

    ActionList.member = Shapes::ShapeRef.new(shape: Action)

    ActionsMap.key = Shapes::ShapeRef.new(shape: ActionPoint)
    ActionsMap.value = Shapes::ShapeRef.new(shape: ActionList)

    Application.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    Application.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Application.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Application.struct_class = Types::Application

    ApplicationList.member = Shapes::ShapeRef.new(shape: Application)

    Applications.add_member(:items, Shapes::ShapeRef.new(shape: ApplicationList, location_name: "Items"))
    Applications.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    Applications.struct_class = Types::Applications

    AppliedExtension.add_member(:extension_id, Shapes::ShapeRef.new(shape: Id, location_name: "ExtensionId"))
    AppliedExtension.add_member(:extension_association_id, Shapes::ShapeRef.new(shape: Id, location_name: "ExtensionAssociationId"))
    AppliedExtension.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, location_name: "VersionNumber"))
    AppliedExtension.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterValueMap, location_name: "Parameters"))
    AppliedExtension.struct_class = Types::AppliedExtension

    AppliedExtensions.member = Shapes::ShapeRef.new(shape: AppliedExtension)

    AttributeValue.add_member(:string_value, Shapes::ShapeRef.new(shape: AttributeString, location_name: "StringValue"))
    AttributeValue.add_member(:number_value, Shapes::ShapeRef.new(shape: Double, location_name: "NumberValue", metadata: {"box" => true}))
    AttributeValue.add_member(:boolean_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "BooleanValue", metadata: {"box" => true}))
    AttributeValue.add_member(:string_array, Shapes::ShapeRef.new(shape: StringList, location_name: "StringArray"))
    AttributeValue.add_member(:number_array, Shapes::ShapeRef.new(shape: NumberList, location_name: "NumberArray"))
    AttributeValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AttributeValue.add_member_subclass(:string_value, Types::AttributeValue::StringValue)
    AttributeValue.add_member_subclass(:number_value, Types::AttributeValue::NumberValue)
    AttributeValue.add_member_subclass(:boolean_value, Types::AttributeValue::BooleanValue)
    AttributeValue.add_member_subclass(:string_array, Types::AttributeValue::StringArray)
    AttributeValue.add_member_subclass(:number_array, Types::AttributeValue::NumberArray)
    AttributeValue.add_member_subclass(:unknown, Types::AttributeValue::Unknown)
    AttributeValue.struct_class = Types::AttributeValue

    AttributeValueMap.key = Shapes::ShapeRef.new(shape: AttributeKey)
    AttributeValueMap.value = Shapes::ShapeRef.new(shape: AttributeValue)

    BadRequestDetails.add_member(:invalid_configuration, Shapes::ShapeRef.new(shape: InvalidConfigurationDetailList, location_name: "InvalidConfiguration"))
    BadRequestDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    BadRequestDetails.add_member_subclass(:invalid_configuration, Types::BadRequestDetails::InvalidConfiguration)
    BadRequestDetails.add_member_subclass(:unknown, Types::BadRequestDetails::Unknown)
    BadRequestDetails.struct_class = Types::BadRequestDetails

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BadRequestException.add_member(:reason, Shapes::ShapeRef.new(shape: BadRequestReason, location_name: "Reason"))
    BadRequestException.add_member(:details, Shapes::ShapeRef.new(shape: BadRequestDetails, location_name: "Details"))
    BadRequestException.struct_class = Types::BadRequestException

    Configuration.add_member(:content, Shapes::ShapeRef.new(shape: Blob, location_name: "Content"))
    Configuration.add_member(:configuration_version, Shapes::ShapeRef.new(shape: Version, location: "header", location_name: "Configuration-Version"))
    Configuration.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Content-Type"))
    Configuration.struct_class = Types::Configuration
    Configuration[:payload] = :content
    Configuration[:payload_member] = Configuration.member(:content)

    ConfigurationProfile.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, location_name: "ApplicationId"))
    ConfigurationProfile.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    ConfigurationProfile.add_member(:name, Shapes::ShapeRef.new(shape: LongName, location_name: "Name"))
    ConfigurationProfile.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ConfigurationProfile.add_member(:location_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "LocationUri"))
    ConfigurationProfile.add_member(:retrieval_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RetrievalRoleArn"))
    ConfigurationProfile.add_member(:validators, Shapes::ShapeRef.new(shape: ValidatorList, location_name: "Validators"))
    ConfigurationProfile.add_member(:type, Shapes::ShapeRef.new(shape: ConfigurationProfileType, location_name: "Type"))
    ConfigurationProfile.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "KmsKeyArn"))
    ConfigurationProfile.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: "KmsKeyIdentifier"))
    ConfigurationProfile.struct_class = Types::ConfigurationProfile

    ConfigurationProfileSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, location_name: "ApplicationId"))
    ConfigurationProfileSummary.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    ConfigurationProfileSummary.add_member(:name, Shapes::ShapeRef.new(shape: LongName, location_name: "Name"))
    ConfigurationProfileSummary.add_member(:location_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "LocationUri"))
    ConfigurationProfileSummary.add_member(:validator_types, Shapes::ShapeRef.new(shape: ValidatorTypeList, location_name: "ValidatorTypes"))
    ConfigurationProfileSummary.add_member(:type, Shapes::ShapeRef.new(shape: ConfigurationProfileType, location_name: "Type"))
    ConfigurationProfileSummary.struct_class = Types::ConfigurationProfileSummary

    ConfigurationProfileSummaryList.member = Shapes::ShapeRef.new(shape: ConfigurationProfileSummary)

    ConfigurationProfiles.add_member(:items, Shapes::ShapeRef.new(shape: ConfigurationProfileSummaryList, location_name: "Items"))
    ConfigurationProfiles.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ConfigurationProfiles.struct_class = Types::ConfigurationProfiles

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateConfigurationProfileRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    CreateConfigurationProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: LongName, required: true, location_name: "Name"))
    CreateConfigurationProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateConfigurationProfileRequest.add_member(:location_uri, Shapes::ShapeRef.new(shape: Uri, required: true, location_name: "LocationUri"))
    CreateConfigurationProfileRequest.add_member(:retrieval_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RetrievalRoleArn"))
    CreateConfigurationProfileRequest.add_member(:validators, Shapes::ShapeRef.new(shape: ValidatorList, location_name: "Validators"))
    CreateConfigurationProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateConfigurationProfileRequest.add_member(:type, Shapes::ShapeRef.new(shape: ConfigurationProfileType, location_name: "Type"))
    CreateConfigurationProfileRequest.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: "KmsKeyIdentifier"))
    CreateConfigurationProfileRequest.struct_class = Types::CreateConfigurationProfileRequest

    CreateDeploymentStrategyRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateDeploymentStrategyRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateDeploymentStrategyRequest.add_member(:deployment_duration_in_minutes, Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, required: true, location_name: "DeploymentDurationInMinutes", metadata: {"box" => true}))
    CreateDeploymentStrategyRequest.add_member(:final_bake_time_in_minutes, Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: "FinalBakeTimeInMinutes"))
    CreateDeploymentStrategyRequest.add_member(:growth_factor, Shapes::ShapeRef.new(shape: GrowthFactor, required: true, location_name: "GrowthFactor", metadata: {"box" => true}))
    CreateDeploymentStrategyRequest.add_member(:growth_type, Shapes::ShapeRef.new(shape: GrowthType, location_name: "GrowthType"))
    CreateDeploymentStrategyRequest.add_member(:replicate_to, Shapes::ShapeRef.new(shape: ReplicateTo, location_name: "ReplicateTo"))
    CreateDeploymentStrategyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateDeploymentStrategyRequest.struct_class = Types::CreateDeploymentStrategyRequest

    CreateEnvironmentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    CreateEnvironmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateEnvironmentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateEnvironmentRequest.add_member(:monitors, Shapes::ShapeRef.new(shape: MonitorList, location_name: "Monitors"))
    CreateEnvironmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateEnvironmentRequest.struct_class = Types::CreateEnvironmentRequest

    CreateExperimentDefinitionRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    CreateExperimentDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameWithReservedAwsPrefix, required: true, location_name: "Name"))
    CreateExperimentDefinitionRequest.add_member(:configuration_profile_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "ConfigurationProfileIdentifier"))
    CreateExperimentDefinitionRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "EnvironmentIdentifier"))
    CreateExperimentDefinitionRequest.add_member(:flag_key, Shapes::ShapeRef.new(shape: FlagKey, required: true, location_name: "FlagKey"))
    CreateExperimentDefinitionRequest.add_member(:treatments, Shapes::ShapeRef.new(shape: TreatmentInputList, required: true, location_name: "Treatments"))
    CreateExperimentDefinitionRequest.add_member(:control, Shapes::ShapeRef.new(shape: TreatmentInput, required: true, location_name: "Control"))
    CreateExperimentDefinitionRequest.add_member(:audience_rule, Shapes::ShapeRef.new(shape: Rule, required: true, location_name: "AudienceRule"))
    CreateExperimentDefinitionRequest.add_member(:hypothesis, Shapes::ShapeRef.new(shape: Description, location_name: "Hypothesis"))
    CreateExperimentDefinitionRequest.add_member(:audience_description, Shapes::ShapeRef.new(shape: Description, location_name: "AudienceDescription"))
    CreateExperimentDefinitionRequest.add_member(:launch_criteria, Shapes::ShapeRef.new(shape: Description, location_name: "LaunchCriteria"))
    CreateExperimentDefinitionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateExperimentDefinitionRequest.struct_class = Types::CreateExperimentDefinitionRequest

    CreateExtensionAssociationRequest.add_member(:extension_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "ExtensionIdentifier"))
    CreateExtensionAssociationRequest.add_member(:extension_version_number, Shapes::ShapeRef.new(shape: Integer, location_name: "ExtensionVersionNumber", metadata: {"box" => true}))
    CreateExtensionAssociationRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "ResourceIdentifier"))
    CreateExtensionAssociationRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterValueMap, location_name: "Parameters"))
    CreateExtensionAssociationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateExtensionAssociationRequest.struct_class = Types::CreateExtensionAssociationRequest

    CreateExtensionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ExtensionOrParameterName, required: true, location_name: "Name"))
    CreateExtensionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateExtensionRequest.add_member(:actions, Shapes::ShapeRef.new(shape: ActionsMap, required: true, location_name: "Actions"))
    CreateExtensionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMap, location_name: "Parameters"))
    CreateExtensionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateExtensionRequest.add_member(:latest_version_number, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Latest-Version-Number", metadata: {"box" => true}))
    CreateExtensionRequest.struct_class = Types::CreateExtensionRequest

    CreateHostedConfigurationVersionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    CreateHostedConfigurationVersionRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: LongName, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    CreateHostedConfigurationVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location: "header", location_name: "Description"))
    CreateHostedConfigurationVersionRequest.add_member(:content, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "Content"))
    CreateHostedConfigurationVersionRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And255, required: true, location: "header", location_name: "Content-Type"))
    CreateHostedConfigurationVersionRequest.add_member(:latest_version_number, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Latest-Version-Number", metadata: {"box" => true}))
    CreateHostedConfigurationVersionRequest.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, location: "header", location_name: "VersionLabel"))
    CreateHostedConfigurationVersionRequest.struct_class = Types::CreateHostedConfigurationVersionRequest
    CreateHostedConfigurationVersionRequest[:payload] = :content
    CreateHostedConfigurationVersionRequest[:payload_member] = CreateHostedConfigurationVersionRequest.member(:content)

    DeleteApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteConfigurationProfileRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    DeleteConfigurationProfileRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: LongName, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    DeleteConfigurationProfileRequest.add_member(:deletion_protection_check, Shapes::ShapeRef.new(shape: DeletionProtectionCheck, location: "header", location_name: "x-amzn-deletion-protection-check"))
    DeleteConfigurationProfileRequest.struct_class = Types::DeleteConfigurationProfileRequest

    DeleteDeploymentStrategyRequest.add_member(:deployment_strategy_id, Shapes::ShapeRef.new(shape: DeploymentStrategyId, required: true, location: "uri", location_name: "DeploymentStrategyId"))
    DeleteDeploymentStrategyRequest.struct_class = Types::DeleteDeploymentStrategyRequest

    DeleteEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "EnvironmentId"))
    DeleteEnvironmentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    DeleteEnvironmentRequest.add_member(:deletion_protection_check, Shapes::ShapeRef.new(shape: DeletionProtectionCheck, location: "header", location_name: "x-amzn-deletion-protection-check"))
    DeleteEnvironmentRequest.struct_class = Types::DeleteEnvironmentRequest

    DeleteExperimentDefinitionRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    DeleteExperimentDefinitionRequest.add_member(:experiment_definition_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ExperimentDefinitionIdentifier"))
    DeleteExperimentDefinitionRequest.add_member(:delete_type, Shapes::ShapeRef.new(shape: DeleteType, location: "querystring", location_name: "delete_type"))
    DeleteExperimentDefinitionRequest.struct_class = Types::DeleteExperimentDefinitionRequest

    DeleteExtensionAssociationRequest.add_member(:extension_association_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ExtensionAssociationId"))
    DeleteExtensionAssociationRequest.struct_class = Types::DeleteExtensionAssociationRequest

    DeleteExtensionRequest.add_member(:extension_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ExtensionIdentifier"))
    DeleteExtensionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "version", metadata: {"box" => true}))
    DeleteExtensionRequest.struct_class = Types::DeleteExtensionRequest

    DeleteHostedConfigurationVersionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    DeleteHostedConfigurationVersionRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: LongName, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    DeleteHostedConfigurationVersionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "VersionNumber"))
    DeleteHostedConfigurationVersionRequest.struct_class = Types::DeleteHostedConfigurationVersionRequest

    DeletionProtectionSettings.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled", metadata: {"box" => true}))
    DeletionProtectionSettings.add_member(:protection_period_in_minutes, Shapes::ShapeRef.new(shape: DeletionProtectionDuration, location_name: "ProtectionPeriodInMinutes", metadata: {"box" => true}))
    DeletionProtectionSettings.struct_class = Types::DeletionProtectionSettings

    Deployment.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, location_name: "ApplicationId"))
    Deployment.add_member(:environment_id, Shapes::ShapeRef.new(shape: Id, location_name: "EnvironmentId"))
    Deployment.add_member(:deployment_strategy_id, Shapes::ShapeRef.new(shape: Id, location_name: "DeploymentStrategyId"))
    Deployment.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, location_name: "ConfigurationProfileId"))
    Deployment.add_member(:deployment_number, Shapes::ShapeRef.new(shape: Integer, location_name: "DeploymentNumber"))
    Deployment.add_member(:configuration_name, Shapes::ShapeRef.new(shape: Name, location_name: "ConfigurationName"))
    Deployment.add_member(:configuration_location_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "ConfigurationLocationUri"))
    Deployment.add_member(:configuration_version, Shapes::ShapeRef.new(shape: Version, location_name: "ConfigurationVersion"))
    Deployment.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Deployment.add_member(:deployment_duration_in_minutes, Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: "DeploymentDurationInMinutes"))
    Deployment.add_member(:growth_type, Shapes::ShapeRef.new(shape: GrowthType, location_name: "GrowthType"))
    Deployment.add_member(:growth_factor, Shapes::ShapeRef.new(shape: Percentage, location_name: "GrowthFactor"))
    Deployment.add_member(:final_bake_time_in_minutes, Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: "FinalBakeTimeInMinutes"))
    Deployment.add_member(:state, Shapes::ShapeRef.new(shape: DeploymentState, location_name: "State"))
    Deployment.add_member(:event_log, Shapes::ShapeRef.new(shape: DeploymentEvents, location_name: "EventLog"))
    Deployment.add_member(:percentage_complete, Shapes::ShapeRef.new(shape: Percentage, location_name: "PercentageComplete"))
    Deployment.add_member(:started_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "StartedAt"))
    Deployment.add_member(:completed_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "CompletedAt"))
    Deployment.add_member(:applied_extensions, Shapes::ShapeRef.new(shape: AppliedExtensions, location_name: "AppliedExtensions"))
    Deployment.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "KmsKeyArn"))
    Deployment.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: "KmsKeyIdentifier"))
    Deployment.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, location_name: "VersionLabel"))
    Deployment.struct_class = Types::Deployment

    DeploymentEvent.add_member(:event_type, Shapes::ShapeRef.new(shape: DeploymentEventType, location_name: "EventType"))
    DeploymentEvent.add_member(:triggered_by, Shapes::ShapeRef.new(shape: TriggeredBy, location_name: "TriggeredBy"))
    DeploymentEvent.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DeploymentEvent.add_member(:action_invocations, Shapes::ShapeRef.new(shape: ActionInvocations, location_name: "ActionInvocations"))
    DeploymentEvent.add_member(:occurred_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "OccurredAt"))
    DeploymentEvent.struct_class = Types::DeploymentEvent

    DeploymentEvents.member = Shapes::ShapeRef.new(shape: DeploymentEvent)

    DeploymentList.member = Shapes::ShapeRef.new(shape: DeploymentSummary)

    DeploymentParameters.add_member(:dynamic_extension_parameters, Shapes::ShapeRef.new(shape: DynamicParameterMap, location_name: "DynamicExtensionParameters"))
    DeploymentParameters.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    DeploymentParameters.struct_class = Types::DeploymentParameters

    DeploymentStrategies.add_member(:items, Shapes::ShapeRef.new(shape: DeploymentStrategyList, location_name: "Items"))
    DeploymentStrategies.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DeploymentStrategies.struct_class = Types::DeploymentStrategies

    DeploymentStrategy.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    DeploymentStrategy.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    DeploymentStrategy.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DeploymentStrategy.add_member(:deployment_duration_in_minutes, Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: "DeploymentDurationInMinutes"))
    DeploymentStrategy.add_member(:growth_type, Shapes::ShapeRef.new(shape: GrowthType, location_name: "GrowthType"))
    DeploymentStrategy.add_member(:growth_factor, Shapes::ShapeRef.new(shape: Percentage, location_name: "GrowthFactor"))
    DeploymentStrategy.add_member(:final_bake_time_in_minutes, Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: "FinalBakeTimeInMinutes"))
    DeploymentStrategy.add_member(:replicate_to, Shapes::ShapeRef.new(shape: ReplicateTo, location_name: "ReplicateTo"))
    DeploymentStrategy.struct_class = Types::DeploymentStrategy

    DeploymentStrategyList.member = Shapes::ShapeRef.new(shape: DeploymentStrategy)

    DeploymentSummary.add_member(:deployment_number, Shapes::ShapeRef.new(shape: Integer, location_name: "DeploymentNumber"))
    DeploymentSummary.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, location_name: "ConfigurationProfileId"))
    DeploymentSummary.add_member(:configuration_name, Shapes::ShapeRef.new(shape: Name, location_name: "ConfigurationName"))
    DeploymentSummary.add_member(:configuration_version, Shapes::ShapeRef.new(shape: Version, location_name: "ConfigurationVersion"))
    DeploymentSummary.add_member(:deployment_duration_in_minutes, Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: "DeploymentDurationInMinutes"))
    DeploymentSummary.add_member(:growth_type, Shapes::ShapeRef.new(shape: GrowthType, location_name: "GrowthType"))
    DeploymentSummary.add_member(:growth_factor, Shapes::ShapeRef.new(shape: Percentage, location_name: "GrowthFactor"))
    DeploymentSummary.add_member(:final_bake_time_in_minutes, Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: "FinalBakeTimeInMinutes"))
    DeploymentSummary.add_member(:state, Shapes::ShapeRef.new(shape: DeploymentState, location_name: "State"))
    DeploymentSummary.add_member(:percentage_complete, Shapes::ShapeRef.new(shape: Percentage, location_name: "PercentageComplete"))
    DeploymentSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "StartedAt"))
    DeploymentSummary.add_member(:completed_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "CompletedAt"))
    DeploymentSummary.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, location_name: "VersionLabel"))
    DeploymentSummary.add_member(:type, Shapes::ShapeRef.new(shape: DeploymentType, location_name: "Type"))
    DeploymentSummary.struct_class = Types::DeploymentSummary

    Deployments.add_member(:items, Shapes::ShapeRef.new(shape: DeploymentList, location_name: "Items"))
    Deployments.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    Deployments.struct_class = Types::Deployments

    DynamicParameterMap.key = Shapes::ShapeRef.new(shape: DynamicParameterKey)
    DynamicParameterMap.value = Shapes::ShapeRef.new(shape: StringWithLengthBetween1And2048)

    Environment.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, location_name: "ApplicationId"))
    Environment.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    Environment.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Environment.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Environment.add_member(:state, Shapes::ShapeRef.new(shape: EnvironmentState, location_name: "State"))
    Environment.add_member(:monitors, Shapes::ShapeRef.new(shape: MonitorList, location_name: "Monitors"))
    Environment.struct_class = Types::Environment

    EnvironmentList.member = Shapes::ShapeRef.new(shape: Environment)

    Environments.add_member(:items, Shapes::ShapeRef.new(shape: EnvironmentList, location_name: "Items"))
    Environments.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    Environments.struct_class = Types::Environments

    ExperimentDefinition.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, location_name: "ApplicationId"))
    ExperimentDefinition.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    ExperimentDefinition.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ExperimentDefinition.add_member(:hypothesis, Shapes::ShapeRef.new(shape: Description, location_name: "Hypothesis"))
    ExperimentDefinition.add_member(:status, Shapes::ShapeRef.new(shape: ExperimentDefinitionStatus, location_name: "Status"))
    ExperimentDefinition.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, location_name: "ConfigurationProfileId"))
    ExperimentDefinition.add_member(:environment_id, Shapes::ShapeRef.new(shape: Id, location_name: "EnvironmentId"))
    ExperimentDefinition.add_member(:flag_key, Shapes::ShapeRef.new(shape: FlagKey, location_name: "FlagKey"))
    ExperimentDefinition.add_member(:audience_rule, Shapes::ShapeRef.new(shape: Rule, location_name: "AudienceRule"))
    ExperimentDefinition.add_member(:audience_description, Shapes::ShapeRef.new(shape: Description, location_name: "AudienceDescription"))
    ExperimentDefinition.add_member(:launch_criteria, Shapes::ShapeRef.new(shape: Description, location_name: "LaunchCriteria"))
    ExperimentDefinition.add_member(:treatments, Shapes::ShapeRef.new(shape: TreatmentList, location_name: "Treatments"))
    ExperimentDefinition.add_member(:control, Shapes::ShapeRef.new(shape: Treatment, location_name: "Control"))
    ExperimentDefinition.add_member(:created_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "CreatedAt"))
    ExperimentDefinition.add_member(:updated_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "UpdatedAt"))
    ExperimentDefinition.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: "KmsKeyIdentifier"))
    ExperimentDefinition.struct_class = Types::ExperimentDefinition

    ExperimentDefinitionList.member = Shapes::ShapeRef.new(shape: ExperimentDefinitionSummary)

    ExperimentDefinitionSnapshot.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, location_name: "ApplicationId"))
    ExperimentDefinitionSnapshot.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    ExperimentDefinitionSnapshot.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ExperimentDefinitionSnapshot.add_member(:hypothesis, Shapes::ShapeRef.new(shape: Description, location_name: "Hypothesis"))
    ExperimentDefinitionSnapshot.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, location_name: "ConfigurationProfileId"))
    ExperimentDefinitionSnapshot.add_member(:environment_id, Shapes::ShapeRef.new(shape: Id, location_name: "EnvironmentId"))
    ExperimentDefinitionSnapshot.add_member(:flag_key, Shapes::ShapeRef.new(shape: FlagKey, location_name: "FlagKey"))
    ExperimentDefinitionSnapshot.add_member(:audience_rule, Shapes::ShapeRef.new(shape: Rule, location_name: "AudienceRule"))
    ExperimentDefinitionSnapshot.add_member(:audience_description, Shapes::ShapeRef.new(shape: Description, location_name: "AudienceDescription"))
    ExperimentDefinitionSnapshot.add_member(:launch_criteria, Shapes::ShapeRef.new(shape: Description, location_name: "LaunchCriteria"))
    ExperimentDefinitionSnapshot.add_member(:treatments, Shapes::ShapeRef.new(shape: TreatmentList, location_name: "Treatments"))
    ExperimentDefinitionSnapshot.add_member(:control, Shapes::ShapeRef.new(shape: Treatment, location_name: "Control"))
    ExperimentDefinitionSnapshot.struct_class = Types::ExperimentDefinitionSnapshot

    ExperimentDefinitionSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, location_name: "ApplicationId"))
    ExperimentDefinitionSummary.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    ExperimentDefinitionSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ExperimentDefinitionSummary.add_member(:hypothesis, Shapes::ShapeRef.new(shape: Description, location_name: "Hypothesis"))
    ExperimentDefinitionSummary.add_member(:status, Shapes::ShapeRef.new(shape: ExperimentDefinitionStatus, location_name: "Status"))
    ExperimentDefinitionSummary.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, location_name: "ConfigurationProfileId"))
    ExperimentDefinitionSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: Id, location_name: "EnvironmentId"))
    ExperimentDefinitionSummary.add_member(:flag_key, Shapes::ShapeRef.new(shape: FlagKey, location_name: "FlagKey"))
    ExperimentDefinitionSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "CreatedAt"))
    ExperimentDefinitionSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "UpdatedAt"))
    ExperimentDefinitionSummary.struct_class = Types::ExperimentDefinitionSummary

    ExperimentDefinitions.add_member(:items, Shapes::ShapeRef.new(shape: ExperimentDefinitionList, location_name: "Items"))
    ExperimentDefinitions.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ExperimentDefinitions.struct_class = Types::ExperimentDefinitions

    ExperimentRun.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, location_name: "ApplicationId"))
    ExperimentRun.add_member(:experiment_definition_id, Shapes::ShapeRef.new(shape: Id, location_name: "ExperimentDefinitionId"))
    ExperimentRun.add_member(:run, Shapes::ShapeRef.new(shape: Integer, location_name: "Run"))
    ExperimentRun.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ExperimentRun.add_member(:status, Shapes::ShapeRef.new(shape: ExperimentRunStatus, location_name: "Status"))
    ExperimentRun.add_member(:exposure_percentage, Shapes::ShapeRef.new(shape: NullablePercentage, location_name: "ExposurePercentage"))
    ExperimentRun.add_member(:treatment_overrides, Shapes::ShapeRef.new(shape: TreatmentOverrides, location_name: "TreatmentOverrides"))
    ExperimentRun.add_member(:result, Shapes::ShapeRef.new(shape: ExperimentRunResult, location_name: "Result"))
    ExperimentRun.add_member(:started_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "StartedAt"))
    ExperimentRun.add_member(:updated_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "UpdatedAt"))
    ExperimentRun.add_member(:ended_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "EndedAt"))
    ExperimentRun.add_member(:experiment_definition_snapshot, Shapes::ShapeRef.new(shape: ExperimentDefinitionSnapshot, location_name: "ExperimentDefinitionSnapshot"))
    ExperimentRun.struct_class = Types::ExperimentRun

    ExperimentRunEvent.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ExperimentRunEvent.add_member(:associated_deployment, Shapes::ShapeRef.new(shape: Arn, location_name: "AssociatedDeployment"))
    ExperimentRunEvent.add_member(:event_type, Shapes::ShapeRef.new(shape: ExperimentRunEventType, location_name: "EventType"))
    ExperimentRunEvent.add_member(:occurred_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "OccurredAt"))
    ExperimentRunEvent.add_member(:triggered_by, Shapes::ShapeRef.new(shape: TriggeredBy, location_name: "TriggeredBy"))
    ExperimentRunEvent.add_member(:exposure_percentage, Shapes::ShapeRef.new(shape: NullablePercentage, location_name: "ExposurePercentage", metadata: {"box" => true}))
    ExperimentRunEvent.add_member(:treatment_overrides, Shapes::ShapeRef.new(shape: TreatmentOverrides, location_name: "TreatmentOverrides"))
    ExperimentRunEvent.struct_class = Types::ExperimentRunEvent

    ExperimentRunEventList.member = Shapes::ShapeRef.new(shape: ExperimentRunEvent)

    ExperimentRunEvents.add_member(:items, Shapes::ShapeRef.new(shape: ExperimentRunEventList, location_name: "Items"))
    ExperimentRunEvents.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ExperimentRunEvents.struct_class = Types::ExperimentRunEvents

    ExperimentRunResult.add_member(:executive_summary, Shapes::ShapeRef.new(shape: Description, location_name: "ExecutiveSummary"))
    ExperimentRunResult.add_member(:reasons_to_launch, Shapes::ShapeRef.new(shape: Description, location_name: "ReasonsToLaunch"))
    ExperimentRunResult.add_member(:reasons_not_to_launch, Shapes::ShapeRef.new(shape: Description, location_name: "ReasonsNotToLaunch"))
    ExperimentRunResult.struct_class = Types::ExperimentRunResult

    ExperimentRunSummary.add_member(:experiment_definition_id, Shapes::ShapeRef.new(shape: Id, location_name: "ExperimentDefinitionId"))
    ExperimentRunSummary.add_member(:run, Shapes::ShapeRef.new(shape: Integer, location_name: "Run"))
    ExperimentRunSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ExperimentRunSummary.add_member(:status, Shapes::ShapeRef.new(shape: ExperimentRunStatus, location_name: "Status"))
    ExperimentRunSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "StartedAt"))
    ExperimentRunSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "UpdatedAt"))
    ExperimentRunSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "EndedAt"))
    ExperimentRunSummary.struct_class = Types::ExperimentRunSummary

    ExperimentRunSummaryList.member = Shapes::ShapeRef.new(shape: ExperimentRunSummary)

    ExperimentRuns.add_member(:items, Shapes::ShapeRef.new(shape: ExperimentRunSummaryList, location_name: "Items"))
    ExperimentRuns.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ExperimentRuns.struct_class = Types::ExperimentRuns

    Extension.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    Extension.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    Extension.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, location_name: "VersionNumber"))
    Extension.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Extension.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Extension.add_member(:actions, Shapes::ShapeRef.new(shape: ActionsMap, location_name: "Actions"))
    Extension.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMap, location_name: "Parameters"))
    Extension.struct_class = Types::Extension

    ExtensionAssociation.add_member(:id, Shapes::ShapeRef.new(shape: Identifier, location_name: "Id"))
    ExtensionAssociation.add_member(:extension_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ExtensionArn"))
    ExtensionAssociation.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    ExtensionAssociation.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ExtensionAssociation.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterValueMap, location_name: "Parameters"))
    ExtensionAssociation.add_member(:extension_version_number, Shapes::ShapeRef.new(shape: Integer, location_name: "ExtensionVersionNumber"))
    ExtensionAssociation.struct_class = Types::ExtensionAssociation

    ExtensionAssociationSummaries.member = Shapes::ShapeRef.new(shape: ExtensionAssociationSummary)

    ExtensionAssociationSummary.add_member(:id, Shapes::ShapeRef.new(shape: Identifier, location_name: "Id"))
    ExtensionAssociationSummary.add_member(:extension_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ExtensionArn"))
    ExtensionAssociationSummary.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceArn"))
    ExtensionAssociationSummary.struct_class = Types::ExtensionAssociationSummary

    ExtensionAssociations.add_member(:items, Shapes::ShapeRef.new(shape: ExtensionAssociationSummaries, location_name: "Items"))
    ExtensionAssociations.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ExtensionAssociations.struct_class = Types::ExtensionAssociations

    ExtensionSummaries.member = Shapes::ShapeRef.new(shape: ExtensionSummary)

    ExtensionSummary.add_member(:id, Shapes::ShapeRef.new(shape: Id, location_name: "Id"))
    ExtensionSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    ExtensionSummary.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, location_name: "VersionNumber"))
    ExtensionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ExtensionSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ExtensionSummary.struct_class = Types::ExtensionSummary

    Extensions.add_member(:items, Shapes::ShapeRef.new(shape: ExtensionSummaries, location_name: "Items"))
    Extensions.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    Extensions.struct_class = Types::Extensions

    FlagValue.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    FlagValue.add_member(:attribute_values, Shapes::ShapeRef.new(shape: AttributeValueMap, location_name: "AttributeValues"))
    FlagValue.struct_class = Types::FlagValue

    GetApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    GetApplicationRequest.struct_class = Types::GetApplicationRequest

    GetConfigurationProfileRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    GetConfigurationProfileRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: LongName, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    GetConfigurationProfileRequest.struct_class = Types::GetConfigurationProfileRequest

    GetConfigurationRequest.add_member(:application, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, required: true, location: "uri", location_name: "Application"))
    GetConfigurationRequest.add_member(:environment, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, required: true, location: "uri", location_name: "Environment"))
    GetConfigurationRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, required: true, location: "uri", location_name: "Configuration"))
    GetConfigurationRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, required: true, location: "querystring", location_name: "client_id"))
    GetConfigurationRequest.add_member(:client_configuration_version, Shapes::ShapeRef.new(shape: Version, location: "querystring", location_name: "client_configuration_version"))
    GetConfigurationRequest.struct_class = Types::GetConfigurationRequest

    GetDeploymentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    GetDeploymentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "EnvironmentId"))
    GetDeploymentRequest.add_member(:deployment_number, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "DeploymentNumber", metadata: {"box" => true}))
    GetDeploymentRequest.struct_class = Types::GetDeploymentRequest

    GetDeploymentStrategyRequest.add_member(:deployment_strategy_id, Shapes::ShapeRef.new(shape: DeploymentStrategyId, required: true, location: "uri", location_name: "DeploymentStrategyId"))
    GetDeploymentStrategyRequest.struct_class = Types::GetDeploymentStrategyRequest

    GetEnvironmentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    GetEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "EnvironmentId"))
    GetEnvironmentRequest.struct_class = Types::GetEnvironmentRequest

    GetExperimentDefinitionRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    GetExperimentDefinitionRequest.add_member(:experiment_definition_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ExperimentDefinitionIdentifier"))
    GetExperimentDefinitionRequest.struct_class = Types::GetExperimentDefinitionRequest

    GetExperimentRunRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    GetExperimentRunRequest.add_member(:experiment_definition_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ExperimentDefinitionIdentifier"))
    GetExperimentRunRequest.add_member(:run, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location: "uri", location_name: "Run", metadata: {"box" => true}))
    GetExperimentRunRequest.struct_class = Types::GetExperimentRunRequest

    GetExtensionAssociationRequest.add_member(:extension_association_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ExtensionAssociationId"))
    GetExtensionAssociationRequest.struct_class = Types::GetExtensionAssociationRequest

    GetExtensionRequest.add_member(:extension_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ExtensionIdentifier"))
    GetExtensionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "version_number", metadata: {"box" => true}))
    GetExtensionRequest.struct_class = Types::GetExtensionRequest

    GetHostedConfigurationVersionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    GetHostedConfigurationVersionRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: LongName, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    GetHostedConfigurationVersionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "VersionNumber"))
    GetHostedConfigurationVersionRequest.struct_class = Types::GetHostedConfigurationVersionRequest

    HostedConfigurationVersion.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, location: "header", location_name: "Application-Id"))
    HostedConfigurationVersion.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, location: "header", location_name: "Configuration-Profile-Id"))
    HostedConfigurationVersion.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Version-Number"))
    HostedConfigurationVersion.add_member(:description, Shapes::ShapeRef.new(shape: Description, location: "header", location_name: "Description"))
    HostedConfigurationVersion.add_member(:content, Shapes::ShapeRef.new(shape: Blob, location_name: "Content"))
    HostedConfigurationVersion.add_member(:content_type, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And255, location: "header", location_name: "Content-Type"))
    HostedConfigurationVersion.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, location: "header", location_name: "VersionLabel"))
    HostedConfigurationVersion.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: Arn, location: "header", location_name: "KmsKeyArn"))
    HostedConfigurationVersion.struct_class = Types::HostedConfigurationVersion
    HostedConfigurationVersion[:payload] = :content
    HostedConfigurationVersion[:payload_member] = HostedConfigurationVersion.member(:content)

    HostedConfigurationVersionSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, location_name: "ApplicationId"))
    HostedConfigurationVersionSummary.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, location_name: "ConfigurationProfileId"))
    HostedConfigurationVersionSummary.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, location_name: "VersionNumber"))
    HostedConfigurationVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    HostedConfigurationVersionSummary.add_member(:content_type, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And255, location_name: "ContentType"))
    HostedConfigurationVersionSummary.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, location_name: "VersionLabel"))
    HostedConfigurationVersionSummary.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "KmsKeyArn"))
    HostedConfigurationVersionSummary.struct_class = Types::HostedConfigurationVersionSummary

    HostedConfigurationVersionSummaryList.member = Shapes::ShapeRef.new(shape: HostedConfigurationVersionSummary)

    HostedConfigurationVersions.add_member(:items, Shapes::ShapeRef.new(shape: HostedConfigurationVersionSummaryList, location_name: "Items"))
    HostedConfigurationVersions.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    HostedConfigurationVersions.struct_class = Types::HostedConfigurationVersions

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidConfigurationDetail.add_member(:constraint, Shapes::ShapeRef.new(shape: String, location_name: "Constraint"))
    InvalidConfigurationDetail.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "Location"))
    InvalidConfigurationDetail.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "Reason"))
    InvalidConfigurationDetail.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    InvalidConfigurationDetail.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    InvalidConfigurationDetail.struct_class = Types::InvalidConfigurationDetail

    InvalidConfigurationDetailList.member = Shapes::ShapeRef.new(shape: InvalidConfigurationDetail)

    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box" => true}))
    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListConfigurationProfilesRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    ListConfigurationProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box" => true}))
    ListConfigurationProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListConfigurationProfilesRequest.add_member(:type, Shapes::ShapeRef.new(shape: ConfigurationProfileType, location: "querystring", location_name: "type"))
    ListConfigurationProfilesRequest.struct_class = Types::ListConfigurationProfilesRequest

    ListDeploymentStrategiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box" => true}))
    ListDeploymentStrategiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListDeploymentStrategiesRequest.struct_class = Types::ListDeploymentStrategiesRequest

    ListDeploymentsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    ListDeploymentsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "EnvironmentId"))
    ListDeploymentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box" => true}))
    ListDeploymentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListDeploymentsRequest.struct_class = Types::ListDeploymentsRequest

    ListEnvironmentsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    ListEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box" => true}))
    ListEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListEnvironmentsRequest.struct_class = Types::ListEnvironmentsRequest

    ListExperimentDefinitionsRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: Identifier, location: "querystring", location_name: "application_identifier"))
    ListExperimentDefinitionsRequest.add_member(:configuration_profile_identifier, Shapes::ShapeRef.new(shape: Identifier, location: "querystring", location_name: "configuration_profile_identifier"))
    ListExperimentDefinitionsRequest.add_member(:environment_identifier, Shapes::ShapeRef.new(shape: Identifier, location: "querystring", location_name: "environment_identifier"))
    ListExperimentDefinitionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ExperimentDefinitionStatus, location: "querystring", location_name: "status"))
    ListExperimentDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box" => true}))
    ListExperimentDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListExperimentDefinitionsRequest.struct_class = Types::ListExperimentDefinitionsRequest

    ListExperimentRunEventsRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    ListExperimentRunEventsRequest.add_member(:experiment_definition_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ExperimentDefinitionIdentifier"))
    ListExperimentRunEventsRequest.add_member(:run, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location: "uri", location_name: "Run", metadata: {"box" => true}))
    ListExperimentRunEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box" => true}))
    ListExperimentRunEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListExperimentRunEventsRequest.struct_class = Types::ListExperimentRunEventsRequest

    ListExperimentRunsRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    ListExperimentRunsRequest.add_member(:experiment_definition_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ExperimentDefinitionIdentifier"))
    ListExperimentRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box" => true}))
    ListExperimentRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListExperimentRunsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ExperimentRunStatus, location: "querystring", location_name: "status"))
    ListExperimentRunsRequest.struct_class = Types::ListExperimentRunsRequest

    ListExtensionAssociationsRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: Arn, location: "querystring", location_name: "resource_identifier"))
    ListExtensionAssociationsRequest.add_member(:extension_identifier, Shapes::ShapeRef.new(shape: Identifier, location: "querystring", location_name: "extension_identifier"))
    ListExtensionAssociationsRequest.add_member(:extension_version_number, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "extension_version_number", metadata: {"box" => true}))
    ListExtensionAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box" => true}))
    ListExtensionAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListExtensionAssociationsRequest.struct_class = Types::ListExtensionAssociationsRequest

    ListExtensionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box" => true}))
    ListExtensionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListExtensionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: QueryName, location: "querystring", location_name: "name"))
    ListExtensionsRequest.struct_class = Types::ListExtensionsRequest

    ListHostedConfigurationVersionsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    ListHostedConfigurationVersionsRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: LongName, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    ListHostedConfigurationVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box" => true}))
    ListHostedConfigurationVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListHostedConfigurationVersionsRequest.add_member(:version_label, Shapes::ShapeRef.new(shape: QueryName, location: "querystring", location_name: "version_label"))
    ListHostedConfigurationVersionsRequest.struct_class = Types::ListHostedConfigurationVersionsRequest

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    Monitor.add_member(:alarm_arn, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And2048, required: true, location_name: "AlarmArn"))
    Monitor.add_member(:alarm_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "AlarmRoleArn"))
    Monitor.struct_class = Types::Monitor

    MonitorList.member = Shapes::ShapeRef.new(shape: Monitor)

    NumberList.member = Shapes::ShapeRef.new(shape: Double)

    Parameter.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Parameter.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, location_name: "Required"))
    Parameter.add_member(:dynamic, Shapes::ShapeRef.new(shape: Boolean, location_name: "Dynamic"))
    Parameter.struct_class = Types::Parameter

    ParameterMap.key = Shapes::ShapeRef.new(shape: ExtensionOrParameterName)
    ParameterMap.value = Shapes::ShapeRef.new(shape: Parameter)

    ParameterValueMap.key = Shapes::ShapeRef.new(shape: ExtensionOrParameterName)
    ParameterValueMap.value = Shapes::ShapeRef.new(shape: StringWithLengthBetween1And2048)

    PayloadTooLargeException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    PayloadTooLargeException.add_member(:measure, Shapes::ShapeRef.new(shape: BytesMeasure, location_name: "Measure"))
    PayloadTooLargeException.add_member(:limit, Shapes::ShapeRef.new(shape: Float, location_name: "Limit"))
    PayloadTooLargeException.add_member(:size, Shapes::ShapeRef.new(shape: Float, location_name: "Size"))
    PayloadTooLargeException.struct_class = Types::PayloadTooLargeException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, location_name: "ResourceName"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTags.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ResourceTags.struct_class = Types::ResourceTags

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartDeploymentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    StartDeploymentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "EnvironmentId"))
    StartDeploymentRequest.add_member(:deployment_strategy_id, Shapes::ShapeRef.new(shape: DeploymentStrategyId, required: true, location_name: "DeploymentStrategyId"))
    StartDeploymentRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: LongName, required: true, location_name: "ConfigurationProfileId"))
    StartDeploymentRequest.add_member(:configuration_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "ConfigurationVersion"))
    StartDeploymentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartDeploymentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    StartDeploymentRequest.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyIdentifier, location_name: "KmsKeyIdentifier"))
    StartDeploymentRequest.add_member(:dynamic_extension_parameters, Shapes::ShapeRef.new(shape: DynamicParameterMap, location_name: "DynamicExtensionParameters"))
    StartDeploymentRequest.add_member(:latest_deployment_number, Shapes::ShapeRef.new(shape: Integer, location_name: "LatestDeploymentNumber", metadata: {"box" => true}))
    StartDeploymentRequest.struct_class = Types::StartDeploymentRequest

    StartExperimentRunRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    StartExperimentRunRequest.add_member(:experiment_definition_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ExperimentDefinitionIdentifier"))
    StartExperimentRunRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartExperimentRunRequest.add_member(:exposure_percentage, Shapes::ShapeRef.new(shape: NullablePercentage, location_name: "ExposurePercentage"))
    StartExperimentRunRequest.add_member(:treatment_overrides, Shapes::ShapeRef.new(shape: TreatmentOverrides, location_name: "TreatmentOverrides"))
    StartExperimentRunRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    StartExperimentRunRequest.add_member(:deployment_parameters, Shapes::ShapeRef.new(shape: DeploymentParameters, location_name: "DeploymentParameters"))
    StartExperimentRunRequest.struct_class = Types::StartExperimentRunRequest

    StopDeploymentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    StopDeploymentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "EnvironmentId"))
    StopDeploymentRequest.add_member(:deployment_number, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "DeploymentNumber", metadata: {"box" => true}))
    StopDeploymentRequest.add_member(:allow_revert, Shapes::ShapeRef.new(shape: Boolean, location: "header", location_name: "Allow-Revert", metadata: {"box" => true}))
    StopDeploymentRequest.struct_class = Types::StopDeploymentRequest

    StopExperimentRunRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    StopExperimentRunRequest.add_member(:experiment_definition_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ExperimentDefinitionIdentifier"))
    StopExperimentRunRequest.add_member(:run, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location: "uri", location_name: "Run", metadata: {"box" => true}))
    StopExperimentRunRequest.add_member(:result, Shapes::ShapeRef.new(shape: ExperimentRunResult, location_name: "Result"))
    StopExperimentRunRequest.add_member(:deployment_parameters, Shapes::ShapeRef.new(shape: DeploymentParameters, location_name: "DeploymentParameters"))
    StopExperimentRunRequest.struct_class = Types::StopExperimentRunRequest

    StringList.member = Shapes::ShapeRef.new(shape: AttributeString)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Treatment.add_member(:key, Shapes::ShapeRef.new(shape: TreatmentKey, location_name: "Key"))
    Treatment.add_member(:weight, Shapes::ShapeRef.new(shape: Weight, required: true, location_name: "Weight"))
    Treatment.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Treatment.add_member(:flag_value, Shapes::ShapeRef.new(shape: FlagValue, required: true, location_name: "FlagValue"))
    Treatment.struct_class = Types::Treatment

    TreatmentInput.add_member(:weight, Shapes::ShapeRef.new(shape: Weight, required: true, location_name: "Weight"))
    TreatmentInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    TreatmentInput.add_member(:flag_value, Shapes::ShapeRef.new(shape: FlagValue, required: true, location_name: "FlagValue"))
    TreatmentInput.struct_class = Types::TreatmentInput

    TreatmentInputList.member = Shapes::ShapeRef.new(shape: TreatmentInput)

    TreatmentList.member = Shapes::ShapeRef.new(shape: Treatment)

    TreatmentOverrideMap.key = Shapes::ShapeRef.new(shape: EntityId)
    TreatmentOverrideMap.value = Shapes::ShapeRef.new(shape: TreatmentKey)

    TreatmentOverrides.add_member(:inline, Shapes::ShapeRef.new(shape: TreatmentOverrideMap, location_name: "Inline"))
    TreatmentOverrides.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TreatmentOverrides.add_member_subclass(:inline, Types::TreatmentOverrides::Inline)
    TreatmentOverrides.add_member_subclass(:unknown, Types::TreatmentOverrides::Unknown)
    TreatmentOverrides.struct_class = Types::TreatmentOverrides

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateAccountSettingsRequest.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: DeletionProtectionSettings, location_name: "DeletionProtection"))
    UpdateAccountSettingsRequest.add_member(:vended_metrics, Shapes::ShapeRef.new(shape: VendedMetricsSettings, location_name: "VendedMetrics"))
    UpdateAccountSettingsRequest.struct_class = Types::UpdateAccountSettingsRequest

    UpdateApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    UpdateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateConfigurationProfileRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    UpdateConfigurationProfileRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: LongName, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    UpdateConfigurationProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: LongName, location_name: "Name"))
    UpdateConfigurationProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateConfigurationProfileRequest.add_member(:retrieval_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RetrievalRoleArn"))
    UpdateConfigurationProfileRequest.add_member(:validators, Shapes::ShapeRef.new(shape: ValidatorList, location_name: "Validators"))
    UpdateConfigurationProfileRequest.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: KmsKeyIdentifierOrEmpty, location_name: "KmsKeyIdentifier"))
    UpdateConfigurationProfileRequest.struct_class = Types::UpdateConfigurationProfileRequest

    UpdateDeploymentStrategyRequest.add_member(:deployment_strategy_id, Shapes::ShapeRef.new(shape: DeploymentStrategyId, required: true, location: "uri", location_name: "DeploymentStrategyId"))
    UpdateDeploymentStrategyRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateDeploymentStrategyRequest.add_member(:deployment_duration_in_minutes, Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: "DeploymentDurationInMinutes", metadata: {"box" => true}))
    UpdateDeploymentStrategyRequest.add_member(:final_bake_time_in_minutes, Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: "FinalBakeTimeInMinutes", metadata: {"box" => true}))
    UpdateDeploymentStrategyRequest.add_member(:growth_factor, Shapes::ShapeRef.new(shape: GrowthFactor, location_name: "GrowthFactor", metadata: {"box" => true}))
    UpdateDeploymentStrategyRequest.add_member(:growth_type, Shapes::ShapeRef.new(shape: GrowthType, location_name: "GrowthType"))
    UpdateDeploymentStrategyRequest.struct_class = Types::UpdateDeploymentStrategyRequest

    UpdateEnvironmentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    UpdateEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "EnvironmentId"))
    UpdateEnvironmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateEnvironmentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateEnvironmentRequest.add_member(:monitors, Shapes::ShapeRef.new(shape: MonitorList, location_name: "Monitors"))
    UpdateEnvironmentRequest.struct_class = Types::UpdateEnvironmentRequest

    UpdateExperimentDefinitionRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    UpdateExperimentDefinitionRequest.add_member(:experiment_definition_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ExperimentDefinitionIdentifier"))
    UpdateExperimentDefinitionRequest.add_member(:treatments, Shapes::ShapeRef.new(shape: TreatmentInputList, location_name: "Treatments"))
    UpdateExperimentDefinitionRequest.add_member(:control, Shapes::ShapeRef.new(shape: TreatmentInput, location_name: "Control"))
    UpdateExperimentDefinitionRequest.add_member(:hypothesis, Shapes::ShapeRef.new(shape: Description, location_name: "Hypothesis"))
    UpdateExperimentDefinitionRequest.add_member(:audience_rule, Shapes::ShapeRef.new(shape: Rule, location_name: "AudienceRule"))
    UpdateExperimentDefinitionRequest.add_member(:audience_description, Shapes::ShapeRef.new(shape: Description, location_name: "AudienceDescription"))
    UpdateExperimentDefinitionRequest.add_member(:launch_criteria, Shapes::ShapeRef.new(shape: Description, location_name: "LaunchCriteria"))
    UpdateExperimentDefinitionRequest.struct_class = Types::UpdateExperimentDefinitionRequest

    UpdateExperimentRunRequest.add_member(:application_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ApplicationIdentifier"))
    UpdateExperimentRunRequest.add_member(:experiment_definition_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ExperimentDefinitionIdentifier"))
    UpdateExperimentRunRequest.add_member(:run, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location: "uri", location_name: "Run", metadata: {"box" => true}))
    UpdateExperimentRunRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateExperimentRunRequest.add_member(:exposure_percentage, Shapes::ShapeRef.new(shape: NullablePercentage, location_name: "ExposurePercentage", metadata: {"box" => true}))
    UpdateExperimentRunRequest.add_member(:treatment_overrides, Shapes::ShapeRef.new(shape: TreatmentOverrides, location_name: "TreatmentOverrides"))
    UpdateExperimentRunRequest.add_member(:deployment_parameters, Shapes::ShapeRef.new(shape: DeploymentParameters, location_name: "DeploymentParameters"))
    UpdateExperimentRunRequest.struct_class = Types::UpdateExperimentRunRequest

    UpdateExtensionAssociationRequest.add_member(:extension_association_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ExtensionAssociationId"))
    UpdateExtensionAssociationRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterValueMap, location_name: "Parameters"))
    UpdateExtensionAssociationRequest.struct_class = Types::UpdateExtensionAssociationRequest

    UpdateExtensionRequest.add_member(:extension_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ExtensionIdentifier"))
    UpdateExtensionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateExtensionRequest.add_member(:actions, Shapes::ShapeRef.new(shape: ActionsMap, location_name: "Actions"))
    UpdateExtensionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMap, location_name: "Parameters"))
    UpdateExtensionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, location_name: "VersionNumber", metadata: {"box" => true}))
    UpdateExtensionRequest.struct_class = Types::UpdateExtensionRequest

    ValidateConfigurationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ApplicationId"))
    ValidateConfigurationRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: LongName, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    ValidateConfigurationRequest.add_member(:configuration_version, Shapes::ShapeRef.new(shape: Version, required: true, location: "querystring", location_name: "configuration_version"))
    ValidateConfigurationRequest.struct_class = Types::ValidateConfigurationRequest

    Validator.add_member(:type, Shapes::ShapeRef.new(shape: ValidatorType, required: true, location_name: "Type"))
    Validator.add_member(:content, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And32768, required: true, location_name: "Content"))
    Validator.struct_class = Types::Validator

    ValidatorList.member = Shapes::ShapeRef.new(shape: Validator)

    ValidatorTypeList.member = Shapes::ShapeRef.new(shape: ValidatorType)

    VendedMetricsSettings.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled", metadata: {"box" => true}))
    VendedMetricsSettings.struct_class = Types::VendedMetricsSettings


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-10-09"

      api.metadata = {
        "apiVersion" => "2019-10-09",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "appconfig",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "AppConfig",
        "serviceFullName" => "Amazon AppConfig",
        "serviceId" => "AppConfig",
        "signatureVersion" => "v4",
        "signingName" => "appconfig",
        "uid" => "appconfig-2019-10-09",
      }

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: Application)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_configuration_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfigurationProfile"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{ApplicationId}/configurationprofiles"
        o.input = Shapes::ShapeRef.new(shape: CreateConfigurationProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfigurationProfile)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_deployment_strategy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeploymentStrategy"
        o.http_method = "POST"
        o.http_request_uri = "/deploymentstrategies"
        o.input = Shapes::ShapeRef.new(shape: CreateDeploymentStrategyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeploymentStrategy)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:create_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{ApplicationId}/environments"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: Environment)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_experiment_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExperimentDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{ApplicationIdentifier}/experimentdefinitions"
        o.input = Shapes::ShapeRef.new(shape: CreateExperimentDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: ExperimentDefinition)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_extension, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExtension"
        o.http_method = "POST"
        o.http_request_uri = "/extensions"
        o.input = Shapes::ShapeRef.new(shape: CreateExtensionRequest)
        o.output = Shapes::ShapeRef.new(shape: Extension)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_extension_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateExtensionAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/extensionassociations"
        o.input = Shapes::ShapeRef.new(shape: CreateExtensionAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: ExtensionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_hosted_configuration_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHostedConfigurationVersion"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions"
        o.input = Shapes::ShapeRef.new(shape: CreateHostedConfigurationVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: HostedConfigurationVersion)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PayloadTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{ApplicationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_configuration_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfigurationProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigurationProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_deployment_strategy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeploymentStrategy"
        o.http_method = "DELETE"
        o.http_request_uri = "/deployementstrategies/{DeploymentStrategyId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeploymentStrategyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironment"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{ApplicationId}/environments/{EnvironmentId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_experiment_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteExperimentDefinition"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteExperimentDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_extension, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteExtension"
        o.http_method = "DELETE"
        o.http_request_uri = "/extensions/{ExtensionIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteExtensionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:delete_extension_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteExtensionAssociation"
        o.http_method = "DELETE"
        o.http_request_uri = "/extensionassociations/{ExtensionAssociationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteExtensionAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_hosted_configuration_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHostedConfigurationVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}"
        o.input = Shapes::ShapeRef.new(shape: DeleteHostedConfigurationVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountSettings"
        o.http_method = "GET"
        o.http_request_uri = "/settings"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: AccountSettings)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplication"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{ApplicationId}"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: Application)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{Application}/environments/{Environment}/configurations/{Configuration}"
        o.deprecated = true
        o.input = Shapes::ShapeRef.new(shape: GetConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Configuration)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_configuration_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfigurationProfile"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}"
        o.input = Shapes::ShapeRef.new(shape: GetConfigurationProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfigurationProfile)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeployment"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: Deployment)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_deployment_strategy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeploymentStrategy"
        o.http_method = "GET"
        o.http_request_uri = "/deploymentstrategies/{DeploymentStrategyId}"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentStrategyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeploymentStrategy)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironment"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{ApplicationId}/environments/{EnvironmentId}"
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: Environment)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_experiment_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExperimentDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetExperimentDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: ExperimentDefinition)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_experiment_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExperimentRun"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}/experimentruns/{Run}"
        o.input = Shapes::ShapeRef.new(shape: GetExperimentRunRequest)
        o.output = Shapes::ShapeRef.new(shape: ExperimentRun)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_extension, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExtension"
        o.http_method = "GET"
        o.http_request_uri = "/extensions/{ExtensionIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetExtensionRequest)
        o.output = Shapes::ShapeRef.new(shape: Extension)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:get_extension_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExtensionAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/extensionassociations/{ExtensionAssociationId}"
        o.input = Shapes::ShapeRef.new(shape: GetExtensionAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: ExtensionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_hosted_configuration_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHostedConfigurationVersion"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}"
        o.input = Shapes::ShapeRef.new(shape: GetHostedConfigurationVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: HostedConfigurationVersion)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "GET"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: Applications)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_configuration_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfigurationProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{ApplicationId}/configurationprofiles"
        o.input = Shapes::ShapeRef.new(shape: ListConfigurationProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfigurationProfiles)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_deployment_strategies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeploymentStrategies"
        o.http_method = "GET"
        o.http_request_uri = "/deploymentstrategies"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentStrategiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DeploymentStrategies)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeployments"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: Deployments)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironments"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{ApplicationId}/environments"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: Environments)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_experiment_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExperimentDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/experimentdefinitions"
        o.input = Shapes::ShapeRef.new(shape: ListExperimentDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ExperimentDefinitions)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_experiment_run_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExperimentRunEvents"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}/experimentruns/{Run}/events"
        o.input = Shapes::ShapeRef.new(shape: ListExperimentRunEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ExperimentRunEvents)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_experiment_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExperimentRuns"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}/experimentruns"
        o.input = Shapes::ShapeRef.new(shape: ListExperimentRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: ExperimentRuns)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_extension_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExtensionAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/extensionassociations"
        o.input = Shapes::ShapeRef.new(shape: ListExtensionAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ExtensionAssociations)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_extensions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListExtensions"
        o.http_method = "GET"
        o.http_request_uri = "/extensions"
        o.input = Shapes::ShapeRef.new(shape: ListExtensionsRequest)
        o.output = Shapes::ShapeRef.new(shape: Extensions)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_hosted_configuration_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHostedConfigurationVersions"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions"
        o.input = Shapes::ShapeRef.new(shape: ListHostedConfigurationVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: HostedConfigurationVersions)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ResourceTags)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments"
        o.input = Shapes::ShapeRef.new(shape: StartDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: Deployment)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_experiment_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartExperimentRun"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}/experimentruns"
        o.input = Shapes::ShapeRef.new(shape: StartExperimentRunRequest)
        o.output = Shapes::ShapeRef.new(shape: ExperimentRun)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDeployment"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}"
        o.input = Shapes::ShapeRef.new(shape: StopDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: Deployment)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:stop_experiment_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopExperimentRun"
        o.http_method = "PATCH"
        o.http_request_uri = "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}/experimentruns/{Run}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopExperimentRunRequest)
        o.output = Shapes::ShapeRef.new(shape: ExperimentRun)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountSettings"
        o.http_method = "PATCH"
        o.http_request_uri = "/settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: AccountSettings)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "PATCH"
        o.http_request_uri = "/applications/{ApplicationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: Application)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_configuration_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfigurationProfile"
        o.http_method = "PATCH"
        o.http_request_uri = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfigurationProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfigurationProfile)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_deployment_strategy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDeploymentStrategy"
        o.http_method = "PATCH"
        o.http_request_uri = "/deploymentstrategies/{DeploymentStrategyId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDeploymentStrategyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeploymentStrategy)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironment"
        o.http_method = "PATCH"
        o.http_request_uri = "/applications/{ApplicationId}/environments/{EnvironmentId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: Environment)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_experiment_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateExperimentDefinition"
        o.http_method = "PATCH"
        o.http_request_uri = "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateExperimentDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: ExperimentDefinition)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_experiment_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateExperimentRun"
        o.http_method = "PATCH"
        o.http_request_uri = "/applications/{ApplicationIdentifier}/experimentdefinitions/{ExperimentDefinitionIdentifier}/experimentruns/{Run}/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateExperimentRunRequest)
        o.output = Shapes::ShapeRef.new(shape: ExperimentRun)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_extension, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateExtension"
        o.http_method = "PATCH"
        o.http_request_uri = "/extensions/{ExtensionIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateExtensionRequest)
        o.output = Shapes::ShapeRef.new(shape: Extension)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_extension_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateExtensionAssociation"
        o.http_method = "PATCH"
        o.http_request_uri = "/extensionassociations/{ExtensionAssociationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateExtensionAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: ExtensionAssociation)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:validate_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidateConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/validators"
        o.input = Shapes::ShapeRef.new(shape: ValidateConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
