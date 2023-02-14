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
    CreateExtensionAssociationRequest = Shapes::StructureShape.new(name: 'CreateExtensionAssociationRequest')
    CreateExtensionRequest = Shapes::StructureShape.new(name: 'CreateExtensionRequest')
    CreateHostedConfigurationVersionRequest = Shapes::StructureShape.new(name: 'CreateHostedConfigurationVersionRequest')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteConfigurationProfileRequest = Shapes::StructureShape.new(name: 'DeleteConfigurationProfileRequest')
    DeleteDeploymentStrategyRequest = Shapes::StructureShape.new(name: 'DeleteDeploymentStrategyRequest')
    DeleteEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteEnvironmentRequest')
    DeleteExtensionAssociationRequest = Shapes::StructureShape.new(name: 'DeleteExtensionAssociationRequest')
    DeleteExtensionRequest = Shapes::StructureShape.new(name: 'DeleteExtensionRequest')
    DeleteHostedConfigurationVersionRequest = Shapes::StructureShape.new(name: 'DeleteHostedConfigurationVersionRequest')
    Deployment = Shapes::StructureShape.new(name: 'Deployment')
    DeploymentEvent = Shapes::StructureShape.new(name: 'DeploymentEvent')
    DeploymentEventType = Shapes::StringShape.new(name: 'DeploymentEventType')
    DeploymentEvents = Shapes::ListShape.new(name: 'DeploymentEvents')
    DeploymentList = Shapes::ListShape.new(name: 'DeploymentList')
    DeploymentState = Shapes::StringShape.new(name: 'DeploymentState')
    DeploymentStrategies = Shapes::StructureShape.new(name: 'DeploymentStrategies')
    DeploymentStrategy = Shapes::StructureShape.new(name: 'DeploymentStrategy')
    DeploymentStrategyId = Shapes::StringShape.new(name: 'DeploymentStrategyId')
    DeploymentStrategyList = Shapes::ListShape.new(name: 'DeploymentStrategyList')
    DeploymentSummary = Shapes::StructureShape.new(name: 'DeploymentSummary')
    Deployments = Shapes::StructureShape.new(name: 'Deployments')
    Description = Shapes::StringShape.new(name: 'Description')
    Environment = Shapes::StructureShape.new(name: 'Environment')
    EnvironmentList = Shapes::ListShape.new(name: 'EnvironmentList')
    EnvironmentState = Shapes::StringShape.new(name: 'EnvironmentState')
    Environments = Shapes::StructureShape.new(name: 'Environments')
    Extension = Shapes::StructureShape.new(name: 'Extension')
    ExtensionAssociation = Shapes::StructureShape.new(name: 'ExtensionAssociation')
    ExtensionAssociationSummaries = Shapes::ListShape.new(name: 'ExtensionAssociationSummaries')
    ExtensionAssociationSummary = Shapes::StructureShape.new(name: 'ExtensionAssociationSummary')
    ExtensionAssociations = Shapes::StructureShape.new(name: 'ExtensionAssociations')
    ExtensionSummaries = Shapes::ListShape.new(name: 'ExtensionSummaries')
    ExtensionSummary = Shapes::StructureShape.new(name: 'ExtensionSummary')
    Extensions = Shapes::StructureShape.new(name: 'Extensions')
    Float = Shapes::FloatShape.new(name: 'Float')
    GetApplicationRequest = Shapes::StructureShape.new(name: 'GetApplicationRequest')
    GetConfigurationProfileRequest = Shapes::StructureShape.new(name: 'GetConfigurationProfileRequest')
    GetConfigurationRequest = Shapes::StructureShape.new(name: 'GetConfigurationRequest')
    GetDeploymentRequest = Shapes::StructureShape.new(name: 'GetDeploymentRequest')
    GetDeploymentStrategyRequest = Shapes::StructureShape.new(name: 'GetDeploymentStrategyRequest')
    GetEnvironmentRequest = Shapes::StructureShape.new(name: 'GetEnvironmentRequest')
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
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListConfigurationProfilesRequest = Shapes::StructureShape.new(name: 'ListConfigurationProfilesRequest')
    ListDeploymentStrategiesRequest = Shapes::StructureShape.new(name: 'ListDeploymentStrategiesRequest')
    ListDeploymentsRequest = Shapes::StructureShape.new(name: 'ListDeploymentsRequest')
    ListEnvironmentsRequest = Shapes::StructureShape.new(name: 'ListEnvironmentsRequest')
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
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParameterMap = Shapes::MapShape.new(name: 'ParameterMap')
    ParameterValueMap = Shapes::MapShape.new(name: 'ParameterValueMap')
    PayloadTooLargeException = Shapes::StructureShape.new(name: 'PayloadTooLargeException')
    Percentage = Shapes::FloatShape.new(name: 'Percentage')
    QueryName = Shapes::StringShape.new(name: 'QueryName')
    ReplicateTo = Shapes::StringShape.new(name: 'ReplicateTo')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTags = Shapes::StructureShape.new(name: 'ResourceTags')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartDeploymentRequest = Shapes::StructureShape.new(name: 'StartDeploymentRequest')
    StopDeploymentRequest = Shapes::StructureShape.new(name: 'StopDeploymentRequest')
    String = Shapes::StringShape.new(name: 'String')
    StringWithLengthBetween0And32768 = Shapes::StringShape.new(name: 'StringWithLengthBetween0And32768')
    StringWithLengthBetween1And2048 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And2048')
    StringWithLengthBetween1And255 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And255')
    StringWithLengthBetween1And64 = Shapes::StringShape.new(name: 'StringWithLengthBetween1And64')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TriggeredBy = Shapes::StringShape.new(name: 'TriggeredBy')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateConfigurationProfileRequest = Shapes::StructureShape.new(name: 'UpdateConfigurationProfileRequest')
    UpdateDeploymentStrategyRequest = Shapes::StructureShape.new(name: 'UpdateDeploymentStrategyRequest')
    UpdateEnvironmentRequest = Shapes::StructureShape.new(name: 'UpdateEnvironmentRequest')
    UpdateExtensionAssociationRequest = Shapes::StructureShape.new(name: 'UpdateExtensionAssociationRequest')
    UpdateExtensionRequest = Shapes::StructureShape.new(name: 'UpdateExtensionRequest')
    Uri = Shapes::StringShape.new(name: 'Uri')
    ValidateConfigurationRequest = Shapes::StructureShape.new(name: 'ValidateConfigurationRequest')
    Validator = Shapes::StructureShape.new(name: 'Validator')
    ValidatorList = Shapes::ListShape.new(name: 'ValidatorList')
    ValidatorType = Shapes::StringShape.new(name: 'ValidatorType')
    ValidatorTypeList = Shapes::ListShape.new(name: 'ValidatorTypeList')
    Version = Shapes::StringShape.new(name: 'Version')
    VersionLabel = Shapes::StringShape.new(name: 'VersionLabel')

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

    CreateConfigurationProfileRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    CreateConfigurationProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: LongName, required: true, location_name: "Name"))
    CreateConfigurationProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateConfigurationProfileRequest.add_member(:location_uri, Shapes::ShapeRef.new(shape: Uri, required: true, location_name: "LocationUri"))
    CreateConfigurationProfileRequest.add_member(:retrieval_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RetrievalRoleArn"))
    CreateConfigurationProfileRequest.add_member(:validators, Shapes::ShapeRef.new(shape: ValidatorList, location_name: "Validators"))
    CreateConfigurationProfileRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateConfigurationProfileRequest.add_member(:type, Shapes::ShapeRef.new(shape: ConfigurationProfileType, location_name: "Type"))
    CreateConfigurationProfileRequest.struct_class = Types::CreateConfigurationProfileRequest

    CreateDeploymentStrategyRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateDeploymentStrategyRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateDeploymentStrategyRequest.add_member(:deployment_duration_in_minutes, Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, required: true, location_name: "DeploymentDurationInMinutes", metadata: {"box"=>true}))
    CreateDeploymentStrategyRequest.add_member(:final_bake_time_in_minutes, Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: "FinalBakeTimeInMinutes"))
    CreateDeploymentStrategyRequest.add_member(:growth_factor, Shapes::ShapeRef.new(shape: GrowthFactor, required: true, location_name: "GrowthFactor", metadata: {"box"=>true}))
    CreateDeploymentStrategyRequest.add_member(:growth_type, Shapes::ShapeRef.new(shape: GrowthType, location_name: "GrowthType"))
    CreateDeploymentStrategyRequest.add_member(:replicate_to, Shapes::ShapeRef.new(shape: ReplicateTo, location_name: "ReplicateTo"))
    CreateDeploymentStrategyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateDeploymentStrategyRequest.struct_class = Types::CreateDeploymentStrategyRequest

    CreateEnvironmentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    CreateEnvironmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateEnvironmentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateEnvironmentRequest.add_member(:monitors, Shapes::ShapeRef.new(shape: MonitorList, location_name: "Monitors"))
    CreateEnvironmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateEnvironmentRequest.struct_class = Types::CreateEnvironmentRequest

    CreateExtensionAssociationRequest.add_member(:extension_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "ExtensionIdentifier"))
    CreateExtensionAssociationRequest.add_member(:extension_version_number, Shapes::ShapeRef.new(shape: Integer, location_name: "ExtensionVersionNumber", metadata: {"box"=>true}))
    CreateExtensionAssociationRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "ResourceIdentifier"))
    CreateExtensionAssociationRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterValueMap, location_name: "Parameters"))
    CreateExtensionAssociationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateExtensionAssociationRequest.struct_class = Types::CreateExtensionAssociationRequest

    CreateExtensionRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateExtensionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateExtensionRequest.add_member(:actions, Shapes::ShapeRef.new(shape: ActionsMap, required: true, location_name: "Actions"))
    CreateExtensionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMap, location_name: "Parameters"))
    CreateExtensionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateExtensionRequest.add_member(:latest_version_number, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Latest-Version-Number", metadata: {"box"=>true}))
    CreateExtensionRequest.struct_class = Types::CreateExtensionRequest

    CreateHostedConfigurationVersionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    CreateHostedConfigurationVersionRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    CreateHostedConfigurationVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location: "header", location_name: "Description"))
    CreateHostedConfigurationVersionRequest.add_member(:content, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "Content"))
    CreateHostedConfigurationVersionRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And255, required: true, location: "header", location_name: "Content-Type"))
    CreateHostedConfigurationVersionRequest.add_member(:latest_version_number, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Latest-Version-Number", metadata: {"box"=>true}))
    CreateHostedConfigurationVersionRequest.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, location: "header", location_name: "VersionLabel"))
    CreateHostedConfigurationVersionRequest.struct_class = Types::CreateHostedConfigurationVersionRequest
    CreateHostedConfigurationVersionRequest[:payload] = :content
    CreateHostedConfigurationVersionRequest[:payload_member] = CreateHostedConfigurationVersionRequest.member(:content)

    DeleteApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteConfigurationProfileRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    DeleteConfigurationProfileRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    DeleteConfigurationProfileRequest.struct_class = Types::DeleteConfigurationProfileRequest

    DeleteDeploymentStrategyRequest.add_member(:deployment_strategy_id, Shapes::ShapeRef.new(shape: DeploymentStrategyId, required: true, location: "uri", location_name: "DeploymentStrategyId"))
    DeleteDeploymentStrategyRequest.struct_class = Types::DeleteDeploymentStrategyRequest

    DeleteEnvironmentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    DeleteEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "EnvironmentId"))
    DeleteEnvironmentRequest.struct_class = Types::DeleteEnvironmentRequest

    DeleteExtensionAssociationRequest.add_member(:extension_association_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ExtensionAssociationId"))
    DeleteExtensionAssociationRequest.struct_class = Types::DeleteExtensionAssociationRequest

    DeleteExtensionRequest.add_member(:extension_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ExtensionIdentifier"))
    DeleteExtensionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "version", metadata: {"box"=>true}))
    DeleteExtensionRequest.struct_class = Types::DeleteExtensionRequest

    DeleteHostedConfigurationVersionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    DeleteHostedConfigurationVersionRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    DeleteHostedConfigurationVersionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "VersionNumber"))
    DeleteHostedConfigurationVersionRequest.struct_class = Types::DeleteHostedConfigurationVersionRequest

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
    Deployment.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "KmsKeyIdentifier"))
    Deployment.struct_class = Types::Deployment

    DeploymentEvent.add_member(:event_type, Shapes::ShapeRef.new(shape: DeploymentEventType, location_name: "EventType"))
    DeploymentEvent.add_member(:triggered_by, Shapes::ShapeRef.new(shape: TriggeredBy, location_name: "TriggeredBy"))
    DeploymentEvent.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DeploymentEvent.add_member(:action_invocations, Shapes::ShapeRef.new(shape: ActionInvocations, location_name: "ActionInvocations"))
    DeploymentEvent.add_member(:occurred_at, Shapes::ShapeRef.new(shape: Iso8601DateTime, location_name: "OccurredAt"))
    DeploymentEvent.struct_class = Types::DeploymentEvent

    DeploymentEvents.member = Shapes::ShapeRef.new(shape: DeploymentEvent)

    DeploymentList.member = Shapes::ShapeRef.new(shape: DeploymentSummary)

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
    DeploymentSummary.struct_class = Types::DeploymentSummary

    Deployments.add_member(:items, Shapes::ShapeRef.new(shape: DeploymentList, location_name: "Items"))
    Deployments.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    Deployments.struct_class = Types::Deployments

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

    GetApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    GetApplicationRequest.struct_class = Types::GetApplicationRequest

    GetConfigurationProfileRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    GetConfigurationProfileRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    GetConfigurationProfileRequest.struct_class = Types::GetConfigurationProfileRequest

    GetConfigurationRequest.add_member(:application, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, required: true, location: "uri", location_name: "Application"))
    GetConfigurationRequest.add_member(:environment, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, required: true, location: "uri", location_name: "Environment"))
    GetConfigurationRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, required: true, location: "uri", location_name: "Configuration"))
    GetConfigurationRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And64, required: true, location: "querystring", location_name: "client_id"))
    GetConfigurationRequest.add_member(:client_configuration_version, Shapes::ShapeRef.new(shape: Version, location: "querystring", location_name: "client_configuration_version"))
    GetConfigurationRequest.struct_class = Types::GetConfigurationRequest

    GetDeploymentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    GetDeploymentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "EnvironmentId"))
    GetDeploymentRequest.add_member(:deployment_number, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "DeploymentNumber", metadata: {"box"=>true}))
    GetDeploymentRequest.struct_class = Types::GetDeploymentRequest

    GetDeploymentStrategyRequest.add_member(:deployment_strategy_id, Shapes::ShapeRef.new(shape: DeploymentStrategyId, required: true, location: "uri", location_name: "DeploymentStrategyId"))
    GetDeploymentStrategyRequest.struct_class = Types::GetDeploymentStrategyRequest

    GetEnvironmentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    GetEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "EnvironmentId"))
    GetEnvironmentRequest.struct_class = Types::GetEnvironmentRequest

    GetExtensionAssociationRequest.add_member(:extension_association_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ExtensionAssociationId"))
    GetExtensionAssociationRequest.struct_class = Types::GetExtensionAssociationRequest

    GetExtensionRequest.add_member(:extension_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ExtensionIdentifier"))
    GetExtensionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "version_number", metadata: {"box"=>true}))
    GetExtensionRequest.struct_class = Types::GetExtensionRequest

    GetHostedConfigurationVersionRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    GetHostedConfigurationVersionRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    GetHostedConfigurationVersionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "VersionNumber"))
    GetHostedConfigurationVersionRequest.struct_class = Types::GetHostedConfigurationVersionRequest

    HostedConfigurationVersion.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, location: "header", location_name: "Application-Id"))
    HostedConfigurationVersion.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, location: "header", location_name: "Configuration-Profile-Id"))
    HostedConfigurationVersion.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Version-Number"))
    HostedConfigurationVersion.add_member(:description, Shapes::ShapeRef.new(shape: Description, location: "header", location_name: "Description"))
    HostedConfigurationVersion.add_member(:content, Shapes::ShapeRef.new(shape: Blob, location_name: "Content"))
    HostedConfigurationVersion.add_member(:content_type, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And255, location: "header", location_name: "Content-Type"))
    HostedConfigurationVersion.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, location: "header", location_name: "VersionLabel"))
    HostedConfigurationVersion.struct_class = Types::HostedConfigurationVersion
    HostedConfigurationVersion[:payload] = :content
    HostedConfigurationVersion[:payload_member] = HostedConfigurationVersion.member(:content)

    HostedConfigurationVersionSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, location_name: "ApplicationId"))
    HostedConfigurationVersionSummary.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, location_name: "ConfigurationProfileId"))
    HostedConfigurationVersionSummary.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, location_name: "VersionNumber"))
    HostedConfigurationVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    HostedConfigurationVersionSummary.add_member(:content_type, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And255, location_name: "ContentType"))
    HostedConfigurationVersionSummary.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, location_name: "VersionLabel"))
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

    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box"=>true}))
    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListConfigurationProfilesRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    ListConfigurationProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box"=>true}))
    ListConfigurationProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListConfigurationProfilesRequest.add_member(:type, Shapes::ShapeRef.new(shape: ConfigurationProfileType, location: "querystring", location_name: "type"))
    ListConfigurationProfilesRequest.struct_class = Types::ListConfigurationProfilesRequest

    ListDeploymentStrategiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box"=>true}))
    ListDeploymentStrategiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListDeploymentStrategiesRequest.struct_class = Types::ListDeploymentStrategiesRequest

    ListDeploymentsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    ListDeploymentsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "EnvironmentId"))
    ListDeploymentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box"=>true}))
    ListDeploymentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListDeploymentsRequest.struct_class = Types::ListDeploymentsRequest

    ListEnvironmentsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    ListEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box"=>true}))
    ListEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListEnvironmentsRequest.struct_class = Types::ListEnvironmentsRequest

    ListExtensionAssociationsRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: Arn, location: "querystring", location_name: "resource_identifier"))
    ListExtensionAssociationsRequest.add_member(:extension_identifier, Shapes::ShapeRef.new(shape: Identifier, location: "querystring", location_name: "extension_identifier"))
    ListExtensionAssociationsRequest.add_member(:extension_version_number, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "extension_version_number", metadata: {"box"=>true}))
    ListExtensionAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box"=>true}))
    ListExtensionAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListExtensionAssociationsRequest.struct_class = Types::ListExtensionAssociationsRequest

    ListExtensionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box"=>true}))
    ListExtensionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListExtensionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: QueryName, location: "querystring", location_name: "name"))
    ListExtensionsRequest.struct_class = Types::ListExtensionsRequest

    ListHostedConfigurationVersionsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    ListHostedConfigurationVersionsRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    ListHostedConfigurationVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max_results", metadata: {"box"=>true}))
    ListHostedConfigurationVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "next_token"))
    ListHostedConfigurationVersionsRequest.add_member(:version_label, Shapes::ShapeRef.new(shape: QueryName, location: "querystring", location_name: "version_label"))
    ListHostedConfigurationVersionsRequest.struct_class = Types::ListHostedConfigurationVersionsRequest

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    Monitor.add_member(:alarm_arn, Shapes::ShapeRef.new(shape: StringWithLengthBetween1And2048, required: true, location_name: "AlarmArn"))
    Monitor.add_member(:alarm_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "AlarmRoleArn"))
    Monitor.struct_class = Types::Monitor

    MonitorList.member = Shapes::ShapeRef.new(shape: Monitor)

    Parameter.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Parameter.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, location_name: "Required"))
    Parameter.struct_class = Types::Parameter

    ParameterMap.key = Shapes::ShapeRef.new(shape: Name)
    ParameterMap.value = Shapes::ShapeRef.new(shape: Parameter)

    ParameterValueMap.key = Shapes::ShapeRef.new(shape: Name)
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

    StartDeploymentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    StartDeploymentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "EnvironmentId"))
    StartDeploymentRequest.add_member(:deployment_strategy_id, Shapes::ShapeRef.new(shape: DeploymentStrategyId, required: true, location_name: "DeploymentStrategyId"))
    StartDeploymentRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "ConfigurationProfileId"))
    StartDeploymentRequest.add_member(:configuration_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "ConfigurationVersion"))
    StartDeploymentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartDeploymentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    StartDeploymentRequest.add_member(:kms_key_identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "KmsKeyIdentifier"))
    StartDeploymentRequest.struct_class = Types::StartDeploymentRequest

    StopDeploymentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    StopDeploymentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "EnvironmentId"))
    StopDeploymentRequest.add_member(:deployment_number, Shapes::ShapeRef.new(shape: Integer, required: true, location: "uri", location_name: "DeploymentNumber", metadata: {"box"=>true}))
    StopDeploymentRequest.struct_class = Types::StopDeploymentRequest

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    UpdateApplicationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateApplicationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateConfigurationProfileRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    UpdateConfigurationProfileRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    UpdateConfigurationProfileRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateConfigurationProfileRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateConfigurationProfileRequest.add_member(:retrieval_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RetrievalRoleArn"))
    UpdateConfigurationProfileRequest.add_member(:validators, Shapes::ShapeRef.new(shape: ValidatorList, location_name: "Validators"))
    UpdateConfigurationProfileRequest.struct_class = Types::UpdateConfigurationProfileRequest

    UpdateDeploymentStrategyRequest.add_member(:deployment_strategy_id, Shapes::ShapeRef.new(shape: DeploymentStrategyId, required: true, location: "uri", location_name: "DeploymentStrategyId"))
    UpdateDeploymentStrategyRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateDeploymentStrategyRequest.add_member(:deployment_duration_in_minutes, Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: "DeploymentDurationInMinutes", metadata: {"box"=>true}))
    UpdateDeploymentStrategyRequest.add_member(:final_bake_time_in_minutes, Shapes::ShapeRef.new(shape: MinutesBetween0And24Hours, location_name: "FinalBakeTimeInMinutes", metadata: {"box"=>true}))
    UpdateDeploymentStrategyRequest.add_member(:growth_factor, Shapes::ShapeRef.new(shape: GrowthFactor, location_name: "GrowthFactor", metadata: {"box"=>true}))
    UpdateDeploymentStrategyRequest.add_member(:growth_type, Shapes::ShapeRef.new(shape: GrowthType, location_name: "GrowthType"))
    UpdateDeploymentStrategyRequest.struct_class = Types::UpdateDeploymentStrategyRequest

    UpdateEnvironmentRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    UpdateEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "EnvironmentId"))
    UpdateEnvironmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    UpdateEnvironmentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateEnvironmentRequest.add_member(:monitors, Shapes::ShapeRef.new(shape: MonitorList, location_name: "Monitors"))
    UpdateEnvironmentRequest.struct_class = Types::UpdateEnvironmentRequest

    UpdateExtensionAssociationRequest.add_member(:extension_association_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ExtensionAssociationId"))
    UpdateExtensionAssociationRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterValueMap, location_name: "Parameters"))
    UpdateExtensionAssociationRequest.struct_class = Types::UpdateExtensionAssociationRequest

    UpdateExtensionRequest.add_member(:extension_identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "ExtensionIdentifier"))
    UpdateExtensionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateExtensionRequest.add_member(:actions, Shapes::ShapeRef.new(shape: ActionsMap, location_name: "Actions"))
    UpdateExtensionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMap, location_name: "Parameters"))
    UpdateExtensionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: Integer, location_name: "VersionNumber", metadata: {"box"=>true}))
    UpdateExtensionRequest.struct_class = Types::UpdateExtensionRequest

    ValidateConfigurationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ApplicationId"))
    ValidateConfigurationRequest.add_member(:configuration_profile_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "ConfigurationProfileId"))
    ValidateConfigurationRequest.add_member(:configuration_version, Shapes::ShapeRef.new(shape: Version, required: true, location: "querystring", location_name: "configuration_version"))
    ValidateConfigurationRequest.struct_class = Types::ValidateConfigurationRequest

    Validator.add_member(:type, Shapes::ShapeRef.new(shape: ValidatorType, required: true, location_name: "Type"))
    Validator.add_member(:content, Shapes::ShapeRef.new(shape: StringWithLengthBetween0And32768, required: true, location_name: "Content"))
    Validator.struct_class = Types::Validator

    ValidatorList.member = Shapes::ShapeRef.new(shape: Validator)

    ValidatorTypeList.member = Shapes::ShapeRef.new(shape: ValidatorType)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-10-09"

      api.metadata = {
        "apiVersion" => "2019-10-09",
        "endpointPrefix" => "appconfig",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
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
      end)

      api.add_operation(:create_deployment_strategy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeploymentStrategy"
        o.http_method = "POST"
        o.http_request_uri = "/deploymentstrategies"
        o.input = Shapes::ShapeRef.new(shape: CreateDeploymentStrategyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeploymentStrategy)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
