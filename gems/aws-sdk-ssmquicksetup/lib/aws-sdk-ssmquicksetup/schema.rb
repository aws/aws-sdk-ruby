# frozen_string_literal: true

# This is generated code!

module Aws::SSMQuickSetup
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ConfigurationDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ConfigurationDefinition", name: "ConfigurationDefinition")
    ConfigurationDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ConfigurationDefinitionInput", name: "ConfigurationDefinitionInput")
    ConfigurationDefinitionSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmquicksetup#ConfigurationDefinitionSummariesList", name: "ConfigurationDefinitionSummariesList")
    ConfigurationDefinitionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ConfigurationDefinitionSummary", name: "ConfigurationDefinitionSummary")
    ConfigurationDefinitionsInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmquicksetup#ConfigurationDefinitionsInputList", name: "ConfigurationDefinitionsInputList")
    ConfigurationDefinitionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmquicksetup#ConfigurationDefinitionsList", name: "ConfigurationDefinitionsList")
    ConfigurationManagerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmquicksetup#ConfigurationManagerList", name: "ConfigurationManagerList")
    ConfigurationManagerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ConfigurationManagerSummary", name: "ConfigurationManagerSummary")
    ConfigurationParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssmquicksetup#ConfigurationParametersMap", name: "ConfigurationParametersMap")
    ConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ConfigurationSummary", name: "ConfigurationSummary")
    ConfigurationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmquicksetup#ConfigurationsList", name: "ConfigurationsList")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateConfigurationManagerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#CreateConfigurationManagerInput", name: "CreateConfigurationManagerInput")
    CreateConfigurationManagerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#CreateConfigurationManagerOutput", name: "CreateConfigurationManagerOutput")
    DeleteConfigurationManagerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#DeleteConfigurationManagerInput", name: "DeleteConfigurationManagerInput")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#Filter", name: "Filter")
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmquicksetup#FilterValues", name: "FilterValues")
    FiltersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmquicksetup#FiltersList", name: "FiltersList")
    GetConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#GetConfigurationInput", name: "GetConfigurationInput")
    GetConfigurationManagerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#GetConfigurationManagerInput", name: "GetConfigurationManagerInput")
    GetConfigurationManagerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#GetConfigurationManagerOutput", name: "GetConfigurationManagerOutput")
    GetConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#GetConfigurationOutput", name: "GetConfigurationOutput")
    GetServiceSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#GetServiceSettingsOutput", name: "GetServiceSettingsOutput")
    IAMRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ssmquicksetup#IAMRoleArn", name: "IAMRoleArn", traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListConfigurationManagersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ListConfigurationManagersInput", name: "ListConfigurationManagersInput")
    ListConfigurationManagersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ListConfigurationManagersOutput", name: "ListConfigurationManagersOutput")
    ListConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ListConfigurationsInput", name: "ListConfigurationsInput")
    ListConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ListConfigurationsOutput", name: "ListConfigurationsOutput")
    ListQuickSetupTypesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ListQuickSetupTypesOutput", name: "ListQuickSetupTypesOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    QuickSetupTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmquicksetup#QuickSetupTypeList", name: "QuickSetupTypeList")
    QuickSetupTypeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#QuickSetupTypeOutput", name: "QuickSetupTypeOutput")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ServiceSettings", name: "ServiceSettings")
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmquicksetup#Status", name: "Status")
    StatusDetails = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssmquicksetup#StatusDetails", name: "StatusDetails")
    StatusSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmquicksetup#StatusSummariesList", name: "StatusSummariesList")
    StatusSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#StatusSummary", name: "StatusSummary")
    StatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ssmquicksetup#StatusType", name: "StatusType")
    TagEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#TagEntry", name: "TagEntry", traits: {"smithy.api#sensitive" => {}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmquicksetup#TagKeys", name: "TagKeys")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#TagResourceInput", name: "TagResourceInput")
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ssmquicksetup#Tags", name: "Tags", traits: {"smithy.api#sensitive" => {}})
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.ssmquicksetup#TagsMap", name: "TagsMap", traits: {"smithy.api#sensitive" => {}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#UntagResourceInput", name: "UntagResourceInput")
    UpdateConfigurationDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#UpdateConfigurationDefinitionInput", name: "UpdateConfigurationDefinitionInput")
    UpdateConfigurationManagerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#UpdateConfigurationManagerInput", name: "UpdateConfigurationManagerInput")
    UpdateServiceSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#UpdateServiceSettingsInput", name: "UpdateServiceSettingsInput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ssmquicksetup#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ConfigurationDefinition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\-.:/]{3,200}$", "smithy.api#required" => {}}))
    ConfigurationDefinition.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationParametersMap, name: "Parameters", traits: {"smithy.api#required" => {}}))
    ConfigurationDefinition.add_member(:type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TypeVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}}))
    ConfigurationDefinition.add_member(:local_deployment_execution_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LocalDeploymentExecutionRoleName", traits: {"smithy.api#pattern" => "^[\\w+=,.@-]{1,64}$"}))
    ConfigurationDefinition.add_member(:local_deployment_administration_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "LocalDeploymentAdministrationRoleArn"))
    ConfigurationDefinition.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id"))
    ConfigurationDefinition.type = Types::ConfigurationDefinition
    ConfigurationDefinitionInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\-.:/]{3,200}$", "smithy.api#required" => {}}))
    ConfigurationDefinitionInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationParametersMap, name: "Parameters", traits: {"smithy.api#required" => {}}))
    ConfigurationDefinitionInput.add_member(:type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TypeVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}}))
    ConfigurationDefinitionInput.add_member(:local_deployment_execution_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LocalDeploymentExecutionRoleName", traits: {"smithy.api#pattern" => "^[\\w+=,.@-]{1,64}$"}))
    ConfigurationDefinitionInput.add_member(:local_deployment_administration_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "LocalDeploymentAdministrationRoleArn"))
    ConfigurationDefinitionInput.type = Types::ConfigurationDefinitionInput
    ConfigurationDefinitionSummariesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationDefinitionSummary, name: "member"))
    ConfigurationDefinitionSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id"))
    ConfigurationDefinitionSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type"))
    ConfigurationDefinitionSummary.add_member(:type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TypeVersion"))
    ConfigurationDefinitionSummary.add_member(:first_class_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationParametersMap, name: "FirstClassParameters"))
    ConfigurationDefinitionSummary.type = Types::ConfigurationDefinitionSummary
    ConfigurationDefinitionsInputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationDefinitionInput, name: "member"))
    ConfigurationDefinitionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationDefinition, name: "member"))
    ConfigurationManagerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationManagerSummary, name: "member"))
    ConfigurationManagerSummary.add_member(:manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ManagerArn", traits: {"smithy.api#required" => {}}))
    ConfigurationManagerSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description"))
    ConfigurationManagerSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    ConfigurationManagerSummary.add_member(:status_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusSummariesList, name: "StatusSummaries"))
    ConfigurationManagerSummary.add_member(:configuration_definition_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationDefinitionSummariesList, name: "ConfigurationDefinitionSummaries"))
    ConfigurationManagerSummary.type = Types::ConfigurationManagerSummary
    ConfigurationParametersMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9+=@_\\/\\s-]+$"}))
    ConfigurationParametersMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"max" => 40960}}))
    ConfigurationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id"))
    ConfigurationSummary.add_member(:manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ManagerArn"))
    ConfigurationSummary.add_member(:configuration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationDefinitionId"))
    ConfigurationSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type"))
    ConfigurationSummary.add_member(:type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TypeVersion"))
    ConfigurationSummary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Region"))
    ConfigurationSummary.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Account"))
    ConfigurationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ConfigurationSummary.add_member(:first_class_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationParametersMap, name: "FirstClassParameters"))
    ConfigurationSummary.add_member(:status_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusSummariesList, name: "StatusSummaries"))
    ConfigurationSummary.type = Types::ConfigurationSummary
    ConfigurationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSummary, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateConfigurationManagerInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#pattern" => "^[ A-Za-z0-9._-]{0,120}$"}))
    CreateConfigurationManagerInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#pattern" => "^.{0,512}$"}))
    CreateConfigurationManagerInput.add_member(:configuration_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationDefinitionsInputList, name: "ConfigurationDefinitions", traits: {"smithy.api#required" => {}}))
    CreateConfigurationManagerInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "Tags"))
    CreateConfigurationManagerInput.type = Types::CreateConfigurationManagerInput
    CreateConfigurationManagerOutput.add_member(:manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ManagerArn", traits: {"smithy.api#required" => {}}))
    CreateConfigurationManagerOutput.type = Types::CreateConfigurationManagerOutput
    DeleteConfigurationManagerInput.add_member(:manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ManagerArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:aws:ssm-quicksetup:([^:]+):(\\d{12}):configuration-manager/[0-9a-fA-F]{8}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{12}$", "smithy.api#required" => {}}))
    DeleteConfigurationManagerInput.type = Types::DeleteConfigurationManagerInput
    Filter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Key", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9+=@_\\/\\s-]*$", "smithy.api#required" => {}}))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "Values", traits: {"smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9+=@_\\/\\s-]*$"}))
    FiltersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    GetConfigurationInput.add_member(:configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^[a-zA-Z0-9-_/:]{1,100}$", "smithy.api#required" => {}}))
    GetConfigurationInput.type = Types::GetConfigurationInput
    GetConfigurationManagerInput.add_member(:manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ManagerArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^arn:aws:ssm-quicksetup:([^:]+):(\\d{12}):configuration-manager/[0-9a-fA-F]{8}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{12}$", "smithy.api#required" => {}}))
    GetConfigurationManagerInput.type = Types::GetConfigurationManagerInput
    GetConfigurationManagerOutput.add_member(:manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ManagerArn", traits: {"smithy.api#required" => {}}))
    GetConfigurationManagerOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description"))
    GetConfigurationManagerOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name"))
    GetConfigurationManagerOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetConfigurationManagerOutput.add_member(:last_modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModifiedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetConfigurationManagerOutput.add_member(:status_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusSummariesList, name: "StatusSummaries"))
    GetConfigurationManagerOutput.add_member(:configuration_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationDefinitionsList, name: "ConfigurationDefinitions"))
    GetConfigurationManagerOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "Tags"))
    GetConfigurationManagerOutput.type = Types::GetConfigurationManagerOutput
    GetConfigurationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id"))
    GetConfigurationOutput.add_member(:manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ManagerArn"))
    GetConfigurationOutput.add_member(:configuration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationDefinitionId"))
    GetConfigurationOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type"))
    GetConfigurationOutput.add_member(:type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TypeVersion"))
    GetConfigurationOutput.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Account"))
    GetConfigurationOutput.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Region"))
    GetConfigurationOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "CreatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetConfigurationOutput.add_member(:last_modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastModifiedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetConfigurationOutput.add_member(:status_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusSummariesList, name: "StatusSummaries"))
    GetConfigurationOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationParametersMap, name: "Parameters"))
    GetConfigurationOutput.type = Types::GetConfigurationOutput
    GetServiceSettingsOutput.add_member(:service_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSettings, name: "ServiceSettings"))
    GetServiceSettingsOutput.type = Types::GetServiceSettingsOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    ListConfigurationManagersInput.add_member(:starting_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StartingToken", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^[A-Za-z0-9+=@_\\/\\s-]*$"}))
    ListConfigurationManagersInput.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListConfigurationManagersInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FiltersList, name: "Filters"))
    ListConfigurationManagersInput.type = Types::ListConfigurationManagersInput
    ListConfigurationManagersOutput.add_member(:configuration_managers_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationManagerList, name: "ConfigurationManagersList"))
    ListConfigurationManagersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListConfigurationManagersOutput.type = Types::ListConfigurationManagersOutput
    ListConfigurationsInput.add_member(:starting_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StartingToken", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^[A-Za-z0-9+=@_|\\/\\s-]*$"}))
    ListConfigurationsInput.add_member(:max_items, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxItems", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListConfigurationsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FiltersList, name: "Filters"))
    ListConfigurationsInput.add_member(:manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ManagerArn", traits: {"smithy.api#pattern" => "^arn:aws:ssm-quicksetup:([^:]+):(\\d{12}):configuration-manager/[0-9a-fA-F]{8}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{12}$"}))
    ListConfigurationsInput.add_member(:configuration_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ConfigurationDefinitionId", traits: {"smithy.api#pattern" => "^[a-z0-9-]{1,20}$"}))
    ListConfigurationsInput.type = Types::ListConfigurationsInput
    ListConfigurationsOutput.add_member(:configurations_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationsList, name: "ConfigurationsList"))
    ListConfigurationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListConfigurationsOutput.type = Types::ListConfigurationsOutput
    ListQuickSetupTypesOutput.add_member(:quick_setup_type_list, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickSetupTypeList, name: "QuickSetupTypeList"))
    ListQuickSetupTypesOutput.type = Types::ListQuickSetupTypesOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    QuickSetupTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: QuickSetupTypeOutput, name: "member"))
    QuickSetupTypeOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Type"))
    QuickSetupTypeOutput.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LatestVersion"))
    QuickSetupTypeOutput.type = Types::QuickSetupTypeOutput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceSettings.add_member(:explorer_enabling_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "ExplorerEnablingRoleArn"))
    ServiceSettings.type = Types::ServiceSettings
    Status.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIALIZING", traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    Status.add_member(:deploying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYING", traits: {"smithy.api#enumValue" => "DEPLOYING"}))
    Status.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    Status.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    Status.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    Status.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    Status.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    Status.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    Status.add_member(:stop_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_FAILED", traits: {"smithy.api#enumValue" => "STOP_FAILED"}))
    Status.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    StatusDetails.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    StatusDetails.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    StatusSummariesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusSummary, name: "member"))
    StatusSummary.add_member(:status_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "StatusType", traits: {"smithy.api#required" => {}}))
    StatusSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    StatusSummary.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "StatusMessage"))
    StatusSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "LastUpdatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StatusSummary.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusDetails, name: "StatusDetails"))
    StatusSummary.type = Types::StatusSummary
    StatusType.add_member(:deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPLOYMENT", traits: {"smithy.api#enumValue" => "Deployment"}))
    StatusType.add_member(:async_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASYNC_EXECUTIONS", traits: {"smithy.api#enumValue" => "AsyncExecutions"}))
    TagEntry.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Key", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9 _=@:.+-/]+$"}))
    TagEntry.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Value", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9 _=@:.+-/]+$"}))
    TagEntry.type = Types::TagEntry
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    Tags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagEntry, name: "member"))
    TagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9 _=@:.+-/]+$"}))
    TagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9 _=@:.+-/]+$"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateConfigurationDefinitionInput.add_member(:manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ManagerArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:aws:ssm-quicksetup:([^:]+):(\\d{12}):configuration-manager/[0-9a-fA-F]{8}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{12}$", "smithy.api#required" => {}}))
    UpdateConfigurationDefinitionInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^[a-z0-9-]{1,20}$", "smithy.api#required" => {}}))
    UpdateConfigurationDefinitionInput.add_member(:type_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TypeVersion", traits: {"smithy.api#pattern" => "^\\d{1,3}(\\.\\d{1,3})?$|^LATEST$"}))
    UpdateConfigurationDefinitionInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationParametersMap, name: "Parameters"))
    UpdateConfigurationDefinitionInput.add_member(:local_deployment_execution_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LocalDeploymentExecutionRoleName", traits: {"smithy.api#pattern" => "^[\\w+=,.@-]{1,64}$"}))
    UpdateConfigurationDefinitionInput.add_member(:local_deployment_administration_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "LocalDeploymentAdministrationRoleArn"))
    UpdateConfigurationDefinitionInput.type = Types::UpdateConfigurationDefinitionInput
    UpdateConfigurationManagerInput.add_member(:manager_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ManagerArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^arn:aws:ssm-quicksetup:([^:]+):(\\d{12}):configuration-manager/[0-9a-fA-F]{8}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{12}$", "smithy.api#required" => {}}))
    UpdateConfigurationManagerInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#pattern" => "^[ A-Za-z0-9._-]{0,120}$"}))
    UpdateConfigurationManagerInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Description", traits: {"smithy.api#pattern" => "^.{0,512}$"}))
    UpdateConfigurationManagerInput.type = Types::UpdateConfigurationManagerInput
    UpdateServiceSettingsInput.add_member(:explorer_enabling_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "ExplorerEnablingRoleArn"))
    UpdateServiceSettingsInput.type = Types::UpdateServiceSettingsInput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ValidationException.type = Types::ValidationException

    QuickSetup = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ssmquicksetup#QuickSetup"
      service.name = "QuickSetup"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "SSM QuickSetup", "arnNamespace" => "ssm-quicksetup", "cloudTrailEventSource" => "ssm-quicksetup.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "ssm-quicksetup"}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Authorization", "Content-Type", "Credentials", "X-Amz-Date", "X-Api-Key", "X-Amz-Security-Token", "x-amz-content-sha256", "X-Amz-User-Agent"]}, "smithy.api#title" => "AWS Systems Manager QuickSetup"}
      service.add_operation(:create_configuration_manager, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmquicksetup#CreateConfigurationManager"
        operation.name = "CreateConfigurationManager"
        operation.input = CreateConfigurationManagerInput
        operation.output = CreateConfigurationManagerOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/configurationManager"}}
      end)
      service.add_operation(:delete_configuration_manager, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmquicksetup#DeleteConfigurationManager"
        operation.name = "DeleteConfigurationManager"
        operation.input = DeleteConfigurationManagerInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/configurationManager/{ManagerArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmquicksetup#GetConfiguration"
        operation.name = "GetConfiguration"
        operation.input = GetConfigurationInput
        operation.output = GetConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/getConfiguration/{ConfigurationId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_configuration_manager, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmquicksetup#GetConfigurationManager"
        operation.name = "GetConfigurationManager"
        operation.input = GetConfigurationManagerInput
        operation.output = GetConfigurationManagerOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/configurationManager/{ManagerArn}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetConfigurationManagerFailure", "params" => {"ManagerArn" => "arn:aws:ssm-quicksetup:us-east-1:602768233532:configuration-manager/7cac1a1b-64a9-4c9a-97e8-8c68928b8f13"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.ssmquicksetup#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:get_service_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmquicksetup#GetServiceSettings"
        operation.name = "GetServiceSettings"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetServiceSettingsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/serviceSettings"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_configuration_managers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmquicksetup#ListConfigurationManagers"
        operation.name = "ListConfigurationManagers"
        operation.input = ListConfigurationManagersInput
        operation.output = ListConfigurationManagersOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/listConfigurationManagers"}, "smithy.test#smokeTests" => [{"id" => "ListConfigurationManagersSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListConfigurationManagers.new
      end)
      service.add_operation(:list_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmquicksetup#ListConfigurations"
        operation.name = "ListConfigurations"
        operation.input = ListConfigurationsInput
        operation.output = ListConfigurationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/listConfigurations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListConfigurations.new
      end)
      service.add_operation(:list_quick_setup_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmquicksetup#ListQuickSetupTypes"
        operation.name = "ListQuickSetupTypes"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ListQuickSetupTypesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/listQuickSetupTypes"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListQuickSetupTypesSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmquicksetup#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tags/{ResourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmquicksetup#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmquicksetup#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_configuration_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmquicksetup#UpdateConfigurationDefinition"
        operation.name = "UpdateConfigurationDefinition"
        operation.input = UpdateConfigurationDefinitionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/configurationDefinition/{ManagerArn}/{Id}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_configuration_manager, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmquicksetup#UpdateConfigurationManager"
        operation.name = "UpdateConfigurationManager"
        operation.input = UpdateConfigurationManagerInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/configurationManager/{ManagerArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_service_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ssmquicksetup#UpdateServiceSettings"
        operation.name = "UpdateServiceSettings"
        operation.input = UpdateServiceSettingsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/serviceSettings"}, "smithy.api#idempotent" => {}}
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
