# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSMQuickSetup
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ConfigurationDefinition = Shapes::StructureShape.new(name: 'ConfigurationDefinition')
    ConfigurationDefinitionInput = Shapes::StructureShape.new(name: 'ConfigurationDefinitionInput')
    ConfigurationDefinitionInputLocalDeploymentExecutionRoleNameString = Shapes::StringShape.new(name: 'ConfigurationDefinitionInputLocalDeploymentExecutionRoleNameString')
    ConfigurationDefinitionInputTypeString = Shapes::StringShape.new(name: 'ConfigurationDefinitionInputTypeString')
    ConfigurationDefinitionInputTypeVersionString = Shapes::StringShape.new(name: 'ConfigurationDefinitionInputTypeVersionString')
    ConfigurationDefinitionLocalDeploymentExecutionRoleNameString = Shapes::StringShape.new(name: 'ConfigurationDefinitionLocalDeploymentExecutionRoleNameString')
    ConfigurationDefinitionSummariesList = Shapes::ListShape.new(name: 'ConfigurationDefinitionSummariesList')
    ConfigurationDefinitionSummary = Shapes::StructureShape.new(name: 'ConfigurationDefinitionSummary')
    ConfigurationDefinitionTypeString = Shapes::StringShape.new(name: 'ConfigurationDefinitionTypeString')
    ConfigurationDefinitionTypeVersionString = Shapes::StringShape.new(name: 'ConfigurationDefinitionTypeVersionString')
    ConfigurationDefinitionsInputList = Shapes::ListShape.new(name: 'ConfigurationDefinitionsInputList')
    ConfigurationDefinitionsList = Shapes::ListShape.new(name: 'ConfigurationDefinitionsList')
    ConfigurationManagerList = Shapes::ListShape.new(name: 'ConfigurationManagerList')
    ConfigurationManagerSummary = Shapes::StructureShape.new(name: 'ConfigurationManagerSummary')
    ConfigurationParametersMap = Shapes::MapShape.new(name: 'ConfigurationParametersMap')
    ConfigurationParametersMapKeyString = Shapes::StringShape.new(name: 'ConfigurationParametersMapKeyString')
    ConfigurationParametersMapValueString = Shapes::StringShape.new(name: 'ConfigurationParametersMapValueString')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateConfigurationManagerInput = Shapes::StructureShape.new(name: 'CreateConfigurationManagerInput')
    CreateConfigurationManagerInputDescriptionString = Shapes::StringShape.new(name: 'CreateConfigurationManagerInputDescriptionString')
    CreateConfigurationManagerInputNameString = Shapes::StringShape.new(name: 'CreateConfigurationManagerInputNameString')
    CreateConfigurationManagerOutput = Shapes::StructureShape.new(name: 'CreateConfigurationManagerOutput')
    DeleteConfigurationManagerInput = Shapes::StructureShape.new(name: 'DeleteConfigurationManagerInput')
    DeleteConfigurationManagerInputManagerArnString = Shapes::StringShape.new(name: 'DeleteConfigurationManagerInputManagerArnString')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterKeyString = Shapes::StringShape.new(name: 'FilterKeyString')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    FilterValuesMemberString = Shapes::StringShape.new(name: 'FilterValuesMemberString')
    FiltersList = Shapes::ListShape.new(name: 'FiltersList')
    GetConfigurationManagerInput = Shapes::StructureShape.new(name: 'GetConfigurationManagerInput')
    GetConfigurationManagerInputManagerArnString = Shapes::StringShape.new(name: 'GetConfigurationManagerInputManagerArnString')
    GetConfigurationManagerOutput = Shapes::StructureShape.new(name: 'GetConfigurationManagerOutput')
    GetServiceSettingsOutput = Shapes::StructureShape.new(name: 'GetServiceSettingsOutput')
    IAMRoleArn = Shapes::StringShape.new(name: 'IAMRoleArn')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListConfigurationManagersInput = Shapes::StructureShape.new(name: 'ListConfigurationManagersInput')
    ListConfigurationManagersInputMaxItemsInteger = Shapes::IntegerShape.new(name: 'ListConfigurationManagersInputMaxItemsInteger')
    ListConfigurationManagersInputStartingTokenString = Shapes::StringShape.new(name: 'ListConfigurationManagersInputStartingTokenString')
    ListConfigurationManagersOutput = Shapes::StructureShape.new(name: 'ListConfigurationManagersOutput')
    ListQuickSetupTypesOutput = Shapes::StructureShape.new(name: 'ListQuickSetupTypesOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    QuickSetupTypeList = Shapes::ListShape.new(name: 'QuickSetupTypeList')
    QuickSetupTypeOutput = Shapes::StructureShape.new(name: 'QuickSetupTypeOutput')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceSettings = Shapes::StructureShape.new(name: 'ServiceSettings')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusDetails = Shapes::MapShape.new(name: 'StatusDetails')
    StatusSummariesList = Shapes::ListShape.new(name: 'StatusSummariesList')
    StatusSummary = Shapes::StructureShape.new(name: 'StatusSummary')
    StatusType = Shapes::StringShape.new(name: 'StatusType')
    String = Shapes::StringShape.new(name: 'String')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagEntry = Shapes::StructureShape.new(name: 'TagEntry')
    TagEntryKeyString = Shapes::StringShape.new(name: 'TagEntryKeyString')
    TagEntryValueString = Shapes::StringShape.new(name: 'TagEntryValueString')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TagsMapKeyString = Shapes::StringShape.new(name: 'TagsMapKeyString')
    TagsMapValueString = Shapes::StringShape.new(name: 'TagsMapValueString')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UpdateConfigurationDefinitionInput = Shapes::StructureShape.new(name: 'UpdateConfigurationDefinitionInput')
    UpdateConfigurationDefinitionInputIdString = Shapes::StringShape.new(name: 'UpdateConfigurationDefinitionInputIdString')
    UpdateConfigurationDefinitionInputLocalDeploymentExecutionRoleNameString = Shapes::StringShape.new(name: 'UpdateConfigurationDefinitionInputLocalDeploymentExecutionRoleNameString')
    UpdateConfigurationDefinitionInputManagerArnString = Shapes::StringShape.new(name: 'UpdateConfigurationDefinitionInputManagerArnString')
    UpdateConfigurationDefinitionInputTypeVersionString = Shapes::StringShape.new(name: 'UpdateConfigurationDefinitionInputTypeVersionString')
    UpdateConfigurationManagerInput = Shapes::StructureShape.new(name: 'UpdateConfigurationManagerInput')
    UpdateConfigurationManagerInputDescriptionString = Shapes::StringShape.new(name: 'UpdateConfigurationManagerInputDescriptionString')
    UpdateConfigurationManagerInputManagerArnString = Shapes::StringShape.new(name: 'UpdateConfigurationManagerInputManagerArnString')
    UpdateConfigurationManagerInputNameString = Shapes::StringShape.new(name: 'UpdateConfigurationManagerInputNameString')
    UpdateServiceSettingsInput = Shapes::StructureShape.new(name: 'UpdateServiceSettingsInput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConfigurationDefinition.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    ConfigurationDefinition.add_member(:local_deployment_administration_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "LocalDeploymentAdministrationRoleArn"))
    ConfigurationDefinition.add_member(:local_deployment_execution_role_name, Shapes::ShapeRef.new(shape: ConfigurationDefinitionLocalDeploymentExecutionRoleNameString, location_name: "LocalDeploymentExecutionRoleName"))
    ConfigurationDefinition.add_member(:parameters, Shapes::ShapeRef.new(shape: ConfigurationParametersMap, required: true, location_name: "Parameters"))
    ConfigurationDefinition.add_member(:type, Shapes::ShapeRef.new(shape: ConfigurationDefinitionTypeString, required: true, location_name: "Type"))
    ConfigurationDefinition.add_member(:type_version, Shapes::ShapeRef.new(shape: ConfigurationDefinitionTypeVersionString, location_name: "TypeVersion"))
    ConfigurationDefinition.struct_class = Types::ConfigurationDefinition

    ConfigurationDefinitionInput.add_member(:local_deployment_administration_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "LocalDeploymentAdministrationRoleArn"))
    ConfigurationDefinitionInput.add_member(:local_deployment_execution_role_name, Shapes::ShapeRef.new(shape: ConfigurationDefinitionInputLocalDeploymentExecutionRoleNameString, location_name: "LocalDeploymentExecutionRoleName"))
    ConfigurationDefinitionInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ConfigurationParametersMap, required: true, location_name: "Parameters"))
    ConfigurationDefinitionInput.add_member(:type, Shapes::ShapeRef.new(shape: ConfigurationDefinitionInputTypeString, required: true, location_name: "Type"))
    ConfigurationDefinitionInput.add_member(:type_version, Shapes::ShapeRef.new(shape: ConfigurationDefinitionInputTypeVersionString, location_name: "TypeVersion"))
    ConfigurationDefinitionInput.struct_class = Types::ConfigurationDefinitionInput

    ConfigurationDefinitionSummariesList.member = Shapes::ShapeRef.new(shape: ConfigurationDefinitionSummary)

    ConfigurationDefinitionSummary.add_member(:first_class_parameters, Shapes::ShapeRef.new(shape: ConfigurationParametersMap, location_name: "FirstClassParameters"))
    ConfigurationDefinitionSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    ConfigurationDefinitionSummary.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ConfigurationDefinitionSummary.add_member(:type_version, Shapes::ShapeRef.new(shape: String, location_name: "TypeVersion"))
    ConfigurationDefinitionSummary.struct_class = Types::ConfigurationDefinitionSummary

    ConfigurationDefinitionsInputList.member = Shapes::ShapeRef.new(shape: ConfigurationDefinitionInput)

    ConfigurationDefinitionsList.member = Shapes::ShapeRef.new(shape: ConfigurationDefinition)

    ConfigurationManagerList.member = Shapes::ShapeRef.new(shape: ConfigurationManagerSummary)

    ConfigurationManagerSummary.add_member(:configuration_definition_summaries, Shapes::ShapeRef.new(shape: ConfigurationDefinitionSummariesList, location_name: "ConfigurationDefinitionSummaries"))
    ConfigurationManagerSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ConfigurationManagerSummary.add_member(:manager_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ManagerArn"))
    ConfigurationManagerSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ConfigurationManagerSummary.add_member(:status_summaries, Shapes::ShapeRef.new(shape: StatusSummariesList, location_name: "StatusSummaries"))
    ConfigurationManagerSummary.struct_class = Types::ConfigurationManagerSummary

    ConfigurationParametersMap.key = Shapes::ShapeRef.new(shape: ConfigurationParametersMapKeyString)
    ConfigurationParametersMap.value = Shapes::ShapeRef.new(shape: ConfigurationParametersMapValueString)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateConfigurationManagerInput.add_member(:configuration_definitions, Shapes::ShapeRef.new(shape: ConfigurationDefinitionsInputList, required: true, location_name: "ConfigurationDefinitions"))
    CreateConfigurationManagerInput.add_member(:description, Shapes::ShapeRef.new(shape: CreateConfigurationManagerInputDescriptionString, location_name: "Description"))
    CreateConfigurationManagerInput.add_member(:name, Shapes::ShapeRef.new(shape: CreateConfigurationManagerInputNameString, location_name: "Name"))
    CreateConfigurationManagerInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    CreateConfigurationManagerInput.struct_class = Types::CreateConfigurationManagerInput

    CreateConfigurationManagerOutput.add_member(:manager_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ManagerArn"))
    CreateConfigurationManagerOutput.struct_class = Types::CreateConfigurationManagerOutput

    DeleteConfigurationManagerInput.add_member(:manager_arn, Shapes::ShapeRef.new(shape: DeleteConfigurationManagerInputManagerArnString, required: true, location: "uri", location_name: "ManagerArn"))
    DeleteConfigurationManagerInput.struct_class = Types::DeleteConfigurationManagerInput

    Filter.add_member(:key, Shapes::ShapeRef.new(shape: FilterKeyString, required: true, location_name: "Key"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValuesMemberString)

    FiltersList.member = Shapes::ShapeRef.new(shape: Filter)

    GetConfigurationManagerInput.add_member(:manager_arn, Shapes::ShapeRef.new(shape: GetConfigurationManagerInputManagerArnString, required: true, location: "uri", location_name: "ManagerArn"))
    GetConfigurationManagerInput.struct_class = Types::GetConfigurationManagerInput

    GetConfigurationManagerOutput.add_member(:configuration_definitions, Shapes::ShapeRef.new(shape: ConfigurationDefinitionsList, location_name: "ConfigurationDefinitions"))
    GetConfigurationManagerOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "CreatedAt"))
    GetConfigurationManagerOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    GetConfigurationManagerOutput.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "LastModifiedAt"))
    GetConfigurationManagerOutput.add_member(:manager_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ManagerArn"))
    GetConfigurationManagerOutput.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    GetConfigurationManagerOutput.add_member(:status_summaries, Shapes::ShapeRef.new(shape: StatusSummariesList, location_name: "StatusSummaries"))
    GetConfigurationManagerOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "Tags"))
    GetConfigurationManagerOutput.struct_class = Types::GetConfigurationManagerOutput

    GetServiceSettingsOutput.add_member(:service_settings, Shapes::ShapeRef.new(shape: ServiceSettings, location_name: "ServiceSettings"))
    GetServiceSettingsOutput.struct_class = Types::GetServiceSettingsOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListConfigurationManagersInput.add_member(:filters, Shapes::ShapeRef.new(shape: FiltersList, location_name: "Filters"))
    ListConfigurationManagersInput.add_member(:max_items, Shapes::ShapeRef.new(shape: ListConfigurationManagersInputMaxItemsInteger, location_name: "MaxItems"))
    ListConfigurationManagersInput.add_member(:starting_token, Shapes::ShapeRef.new(shape: ListConfigurationManagersInputStartingTokenString, location_name: "StartingToken"))
    ListConfigurationManagersInput.struct_class = Types::ListConfigurationManagersInput

    ListConfigurationManagersOutput.add_member(:configuration_managers_list, Shapes::ShapeRef.new(shape: ConfigurationManagerList, location_name: "ConfigurationManagersList"))
    ListConfigurationManagersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListConfigurationManagersOutput.struct_class = Types::ListConfigurationManagersOutput

    ListQuickSetupTypesOutput.add_member(:quick_setup_type_list, Shapes::ShapeRef.new(shape: QuickSetupTypeList, location_name: "QuickSetupTypeList"))
    ListQuickSetupTypesOutput.struct_class = Types::ListQuickSetupTypesOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    QuickSetupTypeList.member = Shapes::ShapeRef.new(shape: QuickSetupTypeOutput)

    QuickSetupTypeOutput.add_member(:latest_version, Shapes::ShapeRef.new(shape: String, location_name: "LatestVersion"))
    QuickSetupTypeOutput.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    QuickSetupTypeOutput.struct_class = Types::QuickSetupTypeOutput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceSettings.add_member(:explorer_enabling_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "ExplorerEnablingRoleArn"))
    ServiceSettings.struct_class = Types::ServiceSettings

    StatusDetails.key = Shapes::ShapeRef.new(shape: String)
    StatusDetails.value = Shapes::ShapeRef.new(shape: String)

    StatusSummariesList.member = Shapes::ShapeRef.new(shape: StatusSummary)

    StatusSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "LastUpdatedAt"))
    StatusSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    StatusSummary.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "StatusDetails"))
    StatusSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    StatusSummary.add_member(:status_type, Shapes::ShapeRef.new(shape: StatusType, required: true, location_name: "StatusType"))
    StatusSummary.struct_class = Types::StatusSummary

    TagEntry.add_member(:key, Shapes::ShapeRef.new(shape: TagEntryKeyString, location_name: "Key"))
    TagEntry.add_member(:value, Shapes::ShapeRef.new(shape: TagEntryValueString, location_name: "Value"))
    TagEntry.struct_class = Types::TagEntry

    TagKeys.member = Shapes::ShapeRef.new(shape: String)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    Tags.member = Shapes::ShapeRef.new(shape: TagEntry)

    TagsMap.key = Shapes::ShapeRef.new(shape: TagsMapKeyString)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagsMapValueString)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UpdateConfigurationDefinitionInput.add_member(:id, Shapes::ShapeRef.new(shape: UpdateConfigurationDefinitionInputIdString, required: true, location: "uri", location_name: "Id"))
    UpdateConfigurationDefinitionInput.add_member(:local_deployment_administration_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "LocalDeploymentAdministrationRoleArn"))
    UpdateConfigurationDefinitionInput.add_member(:local_deployment_execution_role_name, Shapes::ShapeRef.new(shape: UpdateConfigurationDefinitionInputLocalDeploymentExecutionRoleNameString, location_name: "LocalDeploymentExecutionRoleName"))
    UpdateConfigurationDefinitionInput.add_member(:manager_arn, Shapes::ShapeRef.new(shape: UpdateConfigurationDefinitionInputManagerArnString, required: true, location: "uri", location_name: "ManagerArn"))
    UpdateConfigurationDefinitionInput.add_member(:parameters, Shapes::ShapeRef.new(shape: ConfigurationParametersMap, location_name: "Parameters"))
    UpdateConfigurationDefinitionInput.add_member(:type_version, Shapes::ShapeRef.new(shape: UpdateConfigurationDefinitionInputTypeVersionString, location_name: "TypeVersion"))
    UpdateConfigurationDefinitionInput.struct_class = Types::UpdateConfigurationDefinitionInput

    UpdateConfigurationManagerInput.add_member(:description, Shapes::ShapeRef.new(shape: UpdateConfigurationManagerInputDescriptionString, location_name: "Description"))
    UpdateConfigurationManagerInput.add_member(:manager_arn, Shapes::ShapeRef.new(shape: UpdateConfigurationManagerInputManagerArnString, required: true, location: "uri", location_name: "ManagerArn"))
    UpdateConfigurationManagerInput.add_member(:name, Shapes::ShapeRef.new(shape: UpdateConfigurationManagerInputNameString, location_name: "Name"))
    UpdateConfigurationManagerInput.struct_class = Types::UpdateConfigurationManagerInput

    UpdateServiceSettingsInput.add_member(:explorer_enabling_role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "ExplorerEnablingRoleArn"))
    UpdateServiceSettingsInput.struct_class = Types::UpdateServiceSettingsInput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "ssm-quicksetup",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Systems Manager QuickSetup",
        "serviceId" => "SSM QuickSetup",
        "signatureVersion" => "v4",
        "signingName" => "ssm-quicksetup",
        "uid" => "ssm-quicksetup-2018-05-10",
      }

      api.add_operation(:create_configuration_manager, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfigurationManager"
        o.http_method = "POST"
        o.http_request_uri = "/configurationManager"
        o.input = Shapes::ShapeRef.new(shape: CreateConfigurationManagerInput)
        o.output = Shapes::ShapeRef.new(shape: CreateConfigurationManagerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_configuration_manager, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfigurationManager"
        o.http_method = "DELETE"
        o.http_request_uri = "/configurationManager/{ManagerArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigurationManagerInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_configuration_manager, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfigurationManager"
        o.http_method = "GET"
        o.http_request_uri = "/configurationManager/{ManagerArn}"
        o.input = Shapes::ShapeRef.new(shape: GetConfigurationManagerInput)
        o.output = Shapes::ShapeRef.new(shape: GetConfigurationManagerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_service_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceSettings"
        o.http_method = "GET"
        o.http_request_uri = "/serviceSettings"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetServiceSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_configuration_managers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfigurationManagers"
        o.http_method = "POST"
        o.http_request_uri = "/listConfigurationManagers"
        o.input = Shapes::ShapeRef.new(shape: ListConfigurationManagersInput)
        o.output = Shapes::ShapeRef.new(shape: ListConfigurationManagersOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_items",
          tokens: {
            "next_token" => "starting_token"
          }
        )
      end)

      api.add_operation(:list_quick_setup_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQuickSetupTypes"
        o.http_method = "GET"
        o.http_request_uri = "/listQuickSetupTypes"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: ListQuickSetupTypesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "PUT"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_configuration_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfigurationDefinition"
        o.http_method = "PUT"
        o.http_request_uri = "/configurationDefinition/{ManagerArn}/{Id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfigurationDefinitionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_configuration_manager, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfigurationManager"
        o.http_method = "PUT"
        o.http_request_uri = "/configurationManager/{ManagerArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfigurationManagerInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_service_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/serviceSettings"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
