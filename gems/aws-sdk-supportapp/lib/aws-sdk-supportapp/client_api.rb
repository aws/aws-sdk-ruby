# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SupportApp
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountType = Shapes::StringShape.new(name: 'AccountType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateSlackChannelConfigurationRequest = Shapes::StructureShape.new(name: 'CreateSlackChannelConfigurationRequest')
    CreateSlackChannelConfigurationResult = Shapes::StructureShape.new(name: 'CreateSlackChannelConfigurationResult')
    DeleteAccountAliasRequest = Shapes::StructureShape.new(name: 'DeleteAccountAliasRequest')
    DeleteAccountAliasResult = Shapes::StructureShape.new(name: 'DeleteAccountAliasResult')
    DeleteSlackChannelConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteSlackChannelConfigurationRequest')
    DeleteSlackChannelConfigurationResult = Shapes::StructureShape.new(name: 'DeleteSlackChannelConfigurationResult')
    DeleteSlackWorkspaceConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteSlackWorkspaceConfigurationRequest')
    DeleteSlackWorkspaceConfigurationResult = Shapes::StructureShape.new(name: 'DeleteSlackWorkspaceConfigurationResult')
    GetAccountAliasRequest = Shapes::StructureShape.new(name: 'GetAccountAliasRequest')
    GetAccountAliasResult = Shapes::StructureShape.new(name: 'GetAccountAliasResult')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListSlackChannelConfigurationsRequest = Shapes::StructureShape.new(name: 'ListSlackChannelConfigurationsRequest')
    ListSlackChannelConfigurationsResult = Shapes::StructureShape.new(name: 'ListSlackChannelConfigurationsResult')
    ListSlackWorkspaceConfigurationsRequest = Shapes::StructureShape.new(name: 'ListSlackWorkspaceConfigurationsRequest')
    ListSlackWorkspaceConfigurationsResult = Shapes::StructureShape.new(name: 'ListSlackWorkspaceConfigurationsResult')
    NotificationSeverityLevel = Shapes::StringShape.new(name: 'NotificationSeverityLevel')
    PutAccountAliasRequest = Shapes::StructureShape.new(name: 'PutAccountAliasRequest')
    PutAccountAliasResult = Shapes::StructureShape.new(name: 'PutAccountAliasResult')
    RegisterSlackWorkspaceForOrganizationRequest = Shapes::StructureShape.new(name: 'RegisterSlackWorkspaceForOrganizationRequest')
    RegisterSlackWorkspaceForOrganizationResult = Shapes::StructureShape.new(name: 'RegisterSlackWorkspaceForOrganizationResult')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SlackChannelConfiguration = Shapes::StructureShape.new(name: 'SlackChannelConfiguration')
    SlackWorkspaceConfiguration = Shapes::StructureShape.new(name: 'SlackWorkspaceConfiguration')
    SlackWorkspaceConfigurationList = Shapes::ListShape.new(name: 'SlackWorkspaceConfigurationList')
    UpdateSlackChannelConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateSlackChannelConfigurationRequest')
    UpdateSlackChannelConfigurationResult = Shapes::StructureShape.new(name: 'UpdateSlackChannelConfigurationResult')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    awsAccountAlias = Shapes::StringShape.new(name: 'awsAccountAlias')
    booleanValue = Shapes::BooleanShape.new(name: 'booleanValue')
    channelId = Shapes::StringShape.new(name: 'channelId')
    channelName = Shapes::StringShape.new(name: 'channelName')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    paginationToken = Shapes::StringShape.new(name: 'paginationToken')
    roleArn = Shapes::StringShape.new(name: 'roleArn')
    slackChannelConfigurationList = Shapes::ListShape.new(name: 'slackChannelConfigurationList')
    teamId = Shapes::StringShape.new(name: 'teamId')
    teamName = Shapes::StringShape.new(name: 'teamName')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateSlackChannelConfigurationRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: channelId, required: true, location_name: "channelId"))
    CreateSlackChannelConfigurationRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: channelName, location_name: "channelName"))
    CreateSlackChannelConfigurationRequest.add_member(:channel_role_arn, Shapes::ShapeRef.new(shape: roleArn, required: true, location_name: "channelRoleArn"))
    CreateSlackChannelConfigurationRequest.add_member(:notify_on_add_correspondence_to_case, Shapes::ShapeRef.new(shape: booleanValue, location_name: "notifyOnAddCorrespondenceToCase"))
    CreateSlackChannelConfigurationRequest.add_member(:notify_on_case_severity, Shapes::ShapeRef.new(shape: NotificationSeverityLevel, required: true, location_name: "notifyOnCaseSeverity"))
    CreateSlackChannelConfigurationRequest.add_member(:notify_on_create_or_reopen_case, Shapes::ShapeRef.new(shape: booleanValue, location_name: "notifyOnCreateOrReopenCase"))
    CreateSlackChannelConfigurationRequest.add_member(:notify_on_resolve_case, Shapes::ShapeRef.new(shape: booleanValue, location_name: "notifyOnResolveCase"))
    CreateSlackChannelConfigurationRequest.add_member(:team_id, Shapes::ShapeRef.new(shape: teamId, required: true, location_name: "teamId"))
    CreateSlackChannelConfigurationRequest.struct_class = Types::CreateSlackChannelConfigurationRequest

    CreateSlackChannelConfigurationResult.struct_class = Types::CreateSlackChannelConfigurationResult

    DeleteAccountAliasRequest.struct_class = Types::DeleteAccountAliasRequest

    DeleteAccountAliasResult.struct_class = Types::DeleteAccountAliasResult

    DeleteSlackChannelConfigurationRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: channelId, required: true, location_name: "channelId"))
    DeleteSlackChannelConfigurationRequest.add_member(:team_id, Shapes::ShapeRef.new(shape: teamId, required: true, location_name: "teamId"))
    DeleteSlackChannelConfigurationRequest.struct_class = Types::DeleteSlackChannelConfigurationRequest

    DeleteSlackChannelConfigurationResult.struct_class = Types::DeleteSlackChannelConfigurationResult

    DeleteSlackWorkspaceConfigurationRequest.add_member(:team_id, Shapes::ShapeRef.new(shape: teamId, required: true, location_name: "teamId"))
    DeleteSlackWorkspaceConfigurationRequest.struct_class = Types::DeleteSlackWorkspaceConfigurationRequest

    DeleteSlackWorkspaceConfigurationResult.struct_class = Types::DeleteSlackWorkspaceConfigurationResult

    GetAccountAliasRequest.struct_class = Types::GetAccountAliasRequest

    GetAccountAliasResult.add_member(:account_alias, Shapes::ShapeRef.new(shape: awsAccountAlias, location_name: "accountAlias"))
    GetAccountAliasResult.struct_class = Types::GetAccountAliasResult

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListSlackChannelConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: paginationToken, location_name: "nextToken"))
    ListSlackChannelConfigurationsRequest.struct_class = Types::ListSlackChannelConfigurationsRequest

    ListSlackChannelConfigurationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: paginationToken, location_name: "nextToken"))
    ListSlackChannelConfigurationsResult.add_member(:slack_channel_configurations, Shapes::ShapeRef.new(shape: slackChannelConfigurationList, required: true, location_name: "slackChannelConfigurations"))
    ListSlackChannelConfigurationsResult.struct_class = Types::ListSlackChannelConfigurationsResult

    ListSlackWorkspaceConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: paginationToken, location_name: "nextToken"))
    ListSlackWorkspaceConfigurationsRequest.struct_class = Types::ListSlackWorkspaceConfigurationsRequest

    ListSlackWorkspaceConfigurationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: paginationToken, location_name: "nextToken"))
    ListSlackWorkspaceConfigurationsResult.add_member(:slack_workspace_configurations, Shapes::ShapeRef.new(shape: SlackWorkspaceConfigurationList, location_name: "slackWorkspaceConfigurations"))
    ListSlackWorkspaceConfigurationsResult.struct_class = Types::ListSlackWorkspaceConfigurationsResult

    PutAccountAliasRequest.add_member(:account_alias, Shapes::ShapeRef.new(shape: awsAccountAlias, required: true, location_name: "accountAlias"))
    PutAccountAliasRequest.struct_class = Types::PutAccountAliasRequest

    PutAccountAliasResult.struct_class = Types::PutAccountAliasResult

    RegisterSlackWorkspaceForOrganizationRequest.add_member(:team_id, Shapes::ShapeRef.new(shape: teamId, required: true, location_name: "teamId"))
    RegisterSlackWorkspaceForOrganizationRequest.struct_class = Types::RegisterSlackWorkspaceForOrganizationRequest

    RegisterSlackWorkspaceForOrganizationResult.add_member(:account_type, Shapes::ShapeRef.new(shape: AccountType, location_name: "accountType"))
    RegisterSlackWorkspaceForOrganizationResult.add_member(:team_id, Shapes::ShapeRef.new(shape: teamId, location_name: "teamId"))
    RegisterSlackWorkspaceForOrganizationResult.add_member(:team_name, Shapes::ShapeRef.new(shape: teamName, location_name: "teamName"))
    RegisterSlackWorkspaceForOrganizationResult.struct_class = Types::RegisterSlackWorkspaceForOrganizationResult

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SlackChannelConfiguration.add_member(:channel_id, Shapes::ShapeRef.new(shape: channelId, required: true, location_name: "channelId"))
    SlackChannelConfiguration.add_member(:channel_name, Shapes::ShapeRef.new(shape: channelName, location_name: "channelName"))
    SlackChannelConfiguration.add_member(:channel_role_arn, Shapes::ShapeRef.new(shape: roleArn, location_name: "channelRoleArn"))
    SlackChannelConfiguration.add_member(:notify_on_add_correspondence_to_case, Shapes::ShapeRef.new(shape: booleanValue, location_name: "notifyOnAddCorrespondenceToCase"))
    SlackChannelConfiguration.add_member(:notify_on_case_severity, Shapes::ShapeRef.new(shape: NotificationSeverityLevel, location_name: "notifyOnCaseSeverity"))
    SlackChannelConfiguration.add_member(:notify_on_create_or_reopen_case, Shapes::ShapeRef.new(shape: booleanValue, location_name: "notifyOnCreateOrReopenCase"))
    SlackChannelConfiguration.add_member(:notify_on_resolve_case, Shapes::ShapeRef.new(shape: booleanValue, location_name: "notifyOnResolveCase"))
    SlackChannelConfiguration.add_member(:team_id, Shapes::ShapeRef.new(shape: teamId, required: true, location_name: "teamId"))
    SlackChannelConfiguration.struct_class = Types::SlackChannelConfiguration

    SlackWorkspaceConfiguration.add_member(:allow_organization_member_account, Shapes::ShapeRef.new(shape: booleanValue, location_name: "allowOrganizationMemberAccount"))
    SlackWorkspaceConfiguration.add_member(:team_id, Shapes::ShapeRef.new(shape: teamId, required: true, location_name: "teamId"))
    SlackWorkspaceConfiguration.add_member(:team_name, Shapes::ShapeRef.new(shape: teamName, location_name: "teamName"))
    SlackWorkspaceConfiguration.struct_class = Types::SlackWorkspaceConfiguration

    SlackWorkspaceConfigurationList.member = Shapes::ShapeRef.new(shape: SlackWorkspaceConfiguration)

    UpdateSlackChannelConfigurationRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: channelId, required: true, location_name: "channelId"))
    UpdateSlackChannelConfigurationRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: channelName, location_name: "channelName"))
    UpdateSlackChannelConfigurationRequest.add_member(:channel_role_arn, Shapes::ShapeRef.new(shape: roleArn, location_name: "channelRoleArn"))
    UpdateSlackChannelConfigurationRequest.add_member(:notify_on_add_correspondence_to_case, Shapes::ShapeRef.new(shape: booleanValue, location_name: "notifyOnAddCorrespondenceToCase"))
    UpdateSlackChannelConfigurationRequest.add_member(:notify_on_case_severity, Shapes::ShapeRef.new(shape: NotificationSeverityLevel, location_name: "notifyOnCaseSeverity"))
    UpdateSlackChannelConfigurationRequest.add_member(:notify_on_create_or_reopen_case, Shapes::ShapeRef.new(shape: booleanValue, location_name: "notifyOnCreateOrReopenCase"))
    UpdateSlackChannelConfigurationRequest.add_member(:notify_on_resolve_case, Shapes::ShapeRef.new(shape: booleanValue, location_name: "notifyOnResolveCase"))
    UpdateSlackChannelConfigurationRequest.add_member(:team_id, Shapes::ShapeRef.new(shape: teamId, required: true, location_name: "teamId"))
    UpdateSlackChannelConfigurationRequest.struct_class = Types::UpdateSlackChannelConfigurationRequest

    UpdateSlackChannelConfigurationResult.add_member(:channel_id, Shapes::ShapeRef.new(shape: channelId, location_name: "channelId"))
    UpdateSlackChannelConfigurationResult.add_member(:channel_name, Shapes::ShapeRef.new(shape: channelName, location_name: "channelName"))
    UpdateSlackChannelConfigurationResult.add_member(:channel_role_arn, Shapes::ShapeRef.new(shape: roleArn, location_name: "channelRoleArn"))
    UpdateSlackChannelConfigurationResult.add_member(:notify_on_add_correspondence_to_case, Shapes::ShapeRef.new(shape: booleanValue, location_name: "notifyOnAddCorrespondenceToCase"))
    UpdateSlackChannelConfigurationResult.add_member(:notify_on_case_severity, Shapes::ShapeRef.new(shape: NotificationSeverityLevel, location_name: "notifyOnCaseSeverity"))
    UpdateSlackChannelConfigurationResult.add_member(:notify_on_create_or_reopen_case, Shapes::ShapeRef.new(shape: booleanValue, location_name: "notifyOnCreateOrReopenCase"))
    UpdateSlackChannelConfigurationResult.add_member(:notify_on_resolve_case, Shapes::ShapeRef.new(shape: booleanValue, location_name: "notifyOnResolveCase"))
    UpdateSlackChannelConfigurationResult.add_member(:team_id, Shapes::ShapeRef.new(shape: teamId, location_name: "teamId"))
    UpdateSlackChannelConfigurationResult.struct_class = Types::UpdateSlackChannelConfigurationResult

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    slackChannelConfigurationList.member = Shapes::ShapeRef.new(shape: SlackChannelConfiguration)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-08-20"

      api.metadata = {
        "apiVersion" => "2021-08-20",
        "endpointPrefix" => "supportapp",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "SupportApp",
        "serviceFullName" => "AWS Support App",
        "serviceId" => "Support App",
        "signatureVersion" => "v4",
        "signingName" => "supportapp",
        "uid" => "support-app-2021-08-20",
      }

      api.add_operation(:create_slack_channel_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSlackChannelConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/control/create-slack-channel-configuration"
        o.input = Shapes::ShapeRef.new(shape: CreateSlackChannelConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSlackChannelConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_account_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccountAlias"
        o.http_method = "POST"
        o.http_request_uri = "/control/delete-account-alias"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccountAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccountAliasResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_slack_channel_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSlackChannelConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/control/delete-slack-channel-configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteSlackChannelConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSlackChannelConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_slack_workspace_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSlackWorkspaceConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/control/delete-slack-workspace-configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteSlackWorkspaceConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSlackWorkspaceConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_account_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountAlias"
        o.http_method = "POST"
        o.http_request_uri = "/control/get-account-alias"
        o.input = Shapes::ShapeRef.new(shape: GetAccountAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountAliasResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_slack_channel_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSlackChannelConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/control/list-slack-channel-configurations"
        o.input = Shapes::ShapeRef.new(shape: ListSlackChannelConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSlackChannelConfigurationsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_slack_workspace_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSlackWorkspaceConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/control/list-slack-workspace-configurations"
        o.input = Shapes::ShapeRef.new(shape: ListSlackWorkspaceConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSlackWorkspaceConfigurationsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_account_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccountAlias"
        o.http_method = "POST"
        o.http_request_uri = "/control/put-account-alias"
        o.input = Shapes::ShapeRef.new(shape: PutAccountAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAccountAliasResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:register_slack_workspace_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterSlackWorkspaceForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/control/register-slack-workspace-for-organization"
        o.input = Shapes::ShapeRef.new(shape: RegisterSlackWorkspaceForOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterSlackWorkspaceForOrganizationResult)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_slack_channel_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSlackChannelConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/control/update-slack-channel-configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateSlackChannelConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSlackChannelConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
