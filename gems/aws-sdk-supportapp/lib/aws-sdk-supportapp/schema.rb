# frozen_string_literal: true

# This is generated code!

module Aws::SupportApp
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supportapp#AccountType', name: 'AccountType', traits: {"smithy.api#enum" => [{"value" => "management", "name" => "MANAGEMENT"}, {"value" => "member", "name" => "MEMBER"}]})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateSlackChannelConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#CreateSlackChannelConfigurationInput', name: 'CreateSlackChannelConfigurationInput')
    CreateSlackChannelConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#CreateSlackChannelConfigurationOutput', name: 'CreateSlackChannelConfigurationOutput')
    DeleteAccountAliasInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#DeleteAccountAliasInput', name: 'DeleteAccountAliasInput')
    DeleteAccountAliasOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#DeleteAccountAliasOutput', name: 'DeleteAccountAliasOutput')
    DeleteSlackChannelConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#DeleteSlackChannelConfigurationInput', name: 'DeleteSlackChannelConfigurationInput')
    DeleteSlackChannelConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#DeleteSlackChannelConfigurationOutput', name: 'DeleteSlackChannelConfigurationOutput')
    DeleteSlackWorkspaceConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#DeleteSlackWorkspaceConfigurationInput', name: 'DeleteSlackWorkspaceConfigurationInput')
    DeleteSlackWorkspaceConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#DeleteSlackWorkspaceConfigurationOutput', name: 'DeleteSlackWorkspaceConfigurationOutput')
    GetAccountAliasInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#GetAccountAliasInput', name: 'GetAccountAliasInput')
    GetAccountAliasOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#GetAccountAliasOutput', name: 'GetAccountAliasOutput')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListSlackChannelConfigurationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#ListSlackChannelConfigurationsInput', name: 'ListSlackChannelConfigurationsInput')
    ListSlackChannelConfigurationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#ListSlackChannelConfigurationsOutput', name: 'ListSlackChannelConfigurationsOutput')
    ListSlackWorkspaceConfigurationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#ListSlackWorkspaceConfigurationsInput', name: 'ListSlackWorkspaceConfigurationsInput')
    ListSlackWorkspaceConfigurationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#ListSlackWorkspaceConfigurationsOutput', name: 'ListSlackWorkspaceConfigurationsOutput')
    NotificationSeverityLevel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supportapp#NotificationSeverityLevel', name: 'NotificationSeverityLevel', traits: {"smithy.api#enum" => [{"value" => "none", "name" => "NONE"}, {"value" => "all", "name" => "ALL"}, {"value" => "high", "name" => "HIGH"}]})
    PutAccountAliasInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#PutAccountAliasInput', name: 'PutAccountAliasInput')
    PutAccountAliasOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#PutAccountAliasOutput', name: 'PutAccountAliasOutput')
    RegisterSlackWorkspaceForOrganizationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#RegisterSlackWorkspaceForOrganizationInput', name: 'RegisterSlackWorkspaceForOrganizationInput')
    RegisterSlackWorkspaceForOrganizationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#RegisterSlackWorkspaceForOrganizationOutput', name: 'RegisterSlackWorkspaceForOrganizationOutput')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SlackChannelConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#SlackChannelConfiguration', name: 'SlackChannelConfiguration')
    SlackWorkspaceConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#SlackWorkspaceConfiguration', name: 'SlackWorkspaceConfiguration')
    SlackWorkspaceConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supportapp#SlackWorkspaceConfigurationList', name: 'SlackWorkspaceConfigurationList')
    UpdateSlackChannelConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#UpdateSlackChannelConfigurationInput', name: 'UpdateSlackChannelConfigurationInput')
    UpdateSlackChannelConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#UpdateSlackChannelConfigurationOutput', name: 'UpdateSlackChannelConfigurationOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.supportapp#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AwsAccountAlias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supportapp#awsAccountAlias', name: 'AwsAccountAlias', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[\\w\\- ]+$"})
    BooleanValue = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.supportapp#booleanValue', name: 'BooleanValue')
    ChannelId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supportapp#channelId', name: 'ChannelId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    ChannelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supportapp#channelName', name: 'ChannelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^.+$"})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supportapp#errorMessage', name: 'ErrorMessage')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supportapp#paginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supportapp#roleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 31, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:role/(.+)$"})
    SlackChannelConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.supportapp#slackChannelConfigurationList', name: 'SlackChannelConfigurationList')
    TeamId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supportapp#teamId', name: 'TeamId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\S+$"})
    TeamName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.supportapp#teamName', name: 'TeamName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^.+$"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    CreateSlackChannelConfigurationInput.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamId, location_name: 'teamId', traits: {"smithy.api#documentation" => "<p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as\n<code>T012ABCDEFG</code>.</p>", "smithy.api#required" => {}}))
    CreateSlackChannelConfigurationInput.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: 'channelId', traits: {"smithy.api#documentation" => "<p>The channel ID in Slack. This ID identifies a channel within a Slack workspace.</p>", "smithy.api#required" => {}}))
    CreateSlackChannelConfigurationInput.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'channelName', traits: {"smithy.api#documentation" => "<p>The name of the Slack channel that you configure for the Amazon Web Services Support App.</p>"}))
    CreateSlackChannelConfigurationInput.add_member(:notify_on_create_or_reopen_case, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'notifyOnCreateOrReopenCase', traits: {"smithy.api#documentation" => "<p>Whether you want to get notified when a support case is created or reopened.</p>"}))
    CreateSlackChannelConfigurationInput.add_member(:notify_on_add_correspondence_to_case, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'notifyOnAddCorrespondenceToCase', traits: {"smithy.api#documentation" => "<p>Whether you want to get notified when a support case has a new correspondence.</p>"}))
    CreateSlackChannelConfigurationInput.add_member(:notify_on_resolve_case, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'notifyOnResolveCase', traits: {"smithy.api#documentation" => "<p>Whether you want to get notified when a support case is resolved.</p>"}))
    CreateSlackChannelConfigurationInput.add_member(:notify_on_case_severity, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSeverityLevel, location_name: 'notifyOnCaseSeverity', traits: {"smithy.api#documentation" => "<p>The case severity for a support case that you want to receive notifications.</p>\n         <p>If you specify <code>high</code> or <code>all</code>, you must specify <code>true</code>\n      for at least one of the following parameters:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>notifyOnAddCorrespondenceToCase</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>notifyOnCreateOrReopenCase</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>notifyOnResolveCase</code>\n               </p>\n            </li>\n         </ul>\n         <p>If you specify <code>none</code>, the following parameters must be null or\n        <code>false</code>:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>notifyOnAddCorrespondenceToCase</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>notifyOnCreateOrReopenCase</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>notifyOnResolveCase</code>\n               </p>\n            </li>\n         </ul>\n         <note>\n            <p>If you don't specify these parameters in your request, they default to\n          <code>false</code>.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateSlackChannelConfigurationInput.add_member(:channel_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'channelRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role that you want to\nuse to perform operations on Amazon Web Services. For more information, see <a href=\"https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html\">Managing access to\nthe Amazon Web Services Support App</a> in the <i>Amazon Web Services Support User Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateSlackChannelConfigurationInput.type = Types::CreateSlackChannelConfigurationInput
    CreateSlackChannelConfigurationOutput.type = Types::CreateSlackChannelConfigurationOutput
    DeleteAccountAliasInput.type = Types::DeleteAccountAliasInput
    DeleteAccountAliasOutput.type = Types::DeleteAccountAliasOutput
    DeleteSlackChannelConfigurationInput.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamId, location_name: 'teamId', traits: {"smithy.api#documentation" => "<p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as\n<code>T012ABCDEFG</code>.</p>", "smithy.api#required" => {}}))
    DeleteSlackChannelConfigurationInput.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: 'channelId', traits: {"smithy.api#documentation" => "<p>The channel ID in Slack. This ID identifies a channel within a Slack workspace.</p>", "smithy.api#required" => {}}))
    DeleteSlackChannelConfigurationInput.type = Types::DeleteSlackChannelConfigurationInput
    DeleteSlackChannelConfigurationOutput.type = Types::DeleteSlackChannelConfigurationOutput
    DeleteSlackWorkspaceConfigurationInput.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamId, location_name: 'teamId', traits: {"smithy.api#documentation" => "<p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as\n<code>T012ABCDEFG</code>.</p>", "smithy.api#required" => {}}))
    DeleteSlackWorkspaceConfigurationInput.type = Types::DeleteSlackWorkspaceConfigurationInput
    DeleteSlackWorkspaceConfigurationOutput.type = Types::DeleteSlackWorkspaceConfigurationOutput
    GetAccountAliasInput.type = Types::GetAccountAliasInput
    GetAccountAliasOutput.add_member(:account_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountAlias, location_name: 'accountAlias', traits: {"smithy.api#documentation" => "<p>An alias or short name for an Amazon Web Services account.</p>"}))
    GetAccountAliasOutput.type = Types::GetAccountAliasOutput
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    ListSlackChannelConfigurationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the results of a search are large, the API only returns a portion of the results and \nincludes a <code>nextToken</code> pagination token in the response. To retrieve the next batch of results, reissue the search request and include the returned token. \nWhen the API returns the last set of results, the response doesn't include a pagination token value.</p>"}))
    ListSlackChannelConfigurationsInput.type = Types::ListSlackChannelConfigurationsInput
    ListSlackChannelConfigurationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The point where pagination should resume when the response returns only partial\n      results.</p>"}))
    ListSlackChannelConfigurationsOutput.add_member(:slack_channel_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackChannelConfigurationList, location_name: 'slackChannelConfigurations', traits: {"smithy.api#documentation" => "<p>The configurations for a Slack channel.</p>", "smithy.api#required" => {}}))
    ListSlackChannelConfigurationsOutput.type = Types::ListSlackChannelConfigurationsOutput
    ListSlackWorkspaceConfigurationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>If the results of a search are large, the API only returns a portion of the results and \nincludes a <code>nextToken</code> pagination token in the response. To retrieve the next batch of results, reissue the search request and include the returned token. \nWhen the API returns the last set of results, the response doesn't include a pagination token value.</p>"}))
    ListSlackWorkspaceConfigurationsInput.type = Types::ListSlackWorkspaceConfigurationsInput
    ListSlackWorkspaceConfigurationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The point where pagination should resume when the response returns only partial\n      results.</p>"}))
    ListSlackWorkspaceConfigurationsOutput.add_member(:slack_workspace_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: SlackWorkspaceConfigurationList, location_name: 'slackWorkspaceConfigurations', traits: {"smithy.api#documentation" => "<p>The configurations for a Slack workspace.</p>"}))
    ListSlackWorkspaceConfigurationsOutput.type = Types::ListSlackWorkspaceConfigurationsOutput
    PutAccountAliasInput.add_member(:account_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountAlias, location_name: 'accountAlias', traits: {"smithy.api#documentation" => "<p>An alias or short name for an Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    PutAccountAliasInput.type = Types::PutAccountAliasInput
    PutAccountAliasOutput.type = Types::PutAccountAliasOutput
    RegisterSlackWorkspaceForOrganizationInput.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamId, location_name: 'teamId', traits: {"smithy.api#documentation" => "<p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as\n<code>T012ABCDEFG</code>. Specify the Slack workspace that you want to use for your organization.</p>", "smithy.api#required" => {}}))
    RegisterSlackWorkspaceForOrganizationInput.type = Types::RegisterSlackWorkspaceForOrganizationInput
    RegisterSlackWorkspaceForOrganizationOutput.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamId, location_name: 'teamId', traits: {"smithy.api#documentation" => "<p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as\n<code>T012ABCDEFG</code>.</p>"}))
    RegisterSlackWorkspaceForOrganizationOutput.add_member(:team_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamName, location_name: 'teamName', traits: {"smithy.api#documentation" => "<p>The name of the Slack workspace.</p>"}))
    RegisterSlackWorkspaceForOrganizationOutput.add_member(:account_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountType, location_name: 'accountType', traits: {"smithy.api#documentation" => "<p>Whether the Amazon Web Services account is a management or member account that's part of an organization\n      in Organizations.</p>"}))
    RegisterSlackWorkspaceForOrganizationOutput.type = Types::RegisterSlackWorkspaceForOrganizationOutput
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SlackChannelConfiguration.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamId, location_name: 'teamId', traits: {"smithy.api#documentation" => "<p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as\n<code>T012ABCDEFG</code>.</p>", "smithy.api#required" => {}}))
    SlackChannelConfiguration.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: 'channelId', traits: {"smithy.api#documentation" => "<p>The channel ID in Slack. This ID identifies a channel within a Slack workspace.</p>", "smithy.api#required" => {}}))
    SlackChannelConfiguration.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'channelName', traits: {"smithy.api#documentation" => "<p>The name of the Slack channel that you configured with the Amazon Web Services Support App for your\n      Amazon Web Services account.</p>"}))
    SlackChannelConfiguration.add_member(:notify_on_create_or_reopen_case, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'notifyOnCreateOrReopenCase', traits: {"smithy.api#documentation" => "<p>Whether you want to get notified when a support case is created or reopened.</p>"}))
    SlackChannelConfiguration.add_member(:notify_on_add_correspondence_to_case, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'notifyOnAddCorrespondenceToCase', traits: {"smithy.api#documentation" => "<p>Whether you want to get notified when a support case has a new correspondence.</p>"}))
    SlackChannelConfiguration.add_member(:notify_on_resolve_case, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'notifyOnResolveCase', traits: {"smithy.api#documentation" => "<p>Whether you want to get notified when a support case is resolved.</p>"}))
    SlackChannelConfiguration.add_member(:notify_on_case_severity, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSeverityLevel, location_name: 'notifyOnCaseSeverity', traits: {"smithy.api#documentation" => "<p>The case severity for a support case that you want to receive notifications.</p>"}))
    SlackChannelConfiguration.add_member(:channel_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'channelRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role that you want to\nuse to perform operations on Amazon Web Services. For more information, see <a href=\"https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html\">Managing access to\nthe Amazon Web Services Support App</a> in the <i>Amazon Web Services Support User Guide</i>.</p>"}))
    SlackChannelConfiguration.type = Types::SlackChannelConfiguration
    SlackWorkspaceConfiguration.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamId, location_name: 'teamId', traits: {"smithy.api#documentation" => "<p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as\n<code>T012ABCDEFG</code>.</p>", "smithy.api#required" => {}}))
    SlackWorkspaceConfiguration.add_member(:team_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamName, location_name: 'teamName', traits: {"smithy.api#documentation" => "<p>The name of the Slack workspace.</p>"}))
    SlackWorkspaceConfiguration.add_member(:allow_organization_member_account, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'allowOrganizationMemberAccount', traits: {"smithy.api#documentation" => "<p>Whether to allow member accounts to authorize Slack workspaces. Member accounts must be\n      part of an organization in Organizations.</p>"}))
    SlackWorkspaceConfiguration.type = Types::SlackWorkspaceConfiguration
    SlackWorkspaceConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SlackWorkspaceConfiguration)
    UpdateSlackChannelConfigurationInput.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamId, location_name: 'teamId', traits: {"smithy.api#documentation" => "<p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as\n<code>T012ABCDEFG</code>.</p>", "smithy.api#required" => {}}))
    UpdateSlackChannelConfigurationInput.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: 'channelId', traits: {"smithy.api#documentation" => "<p>The channel ID in Slack. This ID identifies a channel within a Slack workspace.</p>", "smithy.api#required" => {}}))
    UpdateSlackChannelConfigurationInput.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'channelName', traits: {"smithy.api#documentation" => "<p>The Slack channel name that you want to update.</p>"}))
    UpdateSlackChannelConfigurationInput.add_member(:notify_on_create_or_reopen_case, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'notifyOnCreateOrReopenCase', traits: {"smithy.api#documentation" => "<p>Whether you want to get notified when a support case is created or reopened.</p>"}))
    UpdateSlackChannelConfigurationInput.add_member(:notify_on_add_correspondence_to_case, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'notifyOnAddCorrespondenceToCase', traits: {"smithy.api#documentation" => "<p>Whether you want to get notified when a support case has a new correspondence.</p>"}))
    UpdateSlackChannelConfigurationInput.add_member(:notify_on_resolve_case, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'notifyOnResolveCase', traits: {"smithy.api#documentation" => "<p>Whether you want to get notified when a support case is resolved.</p>"}))
    UpdateSlackChannelConfigurationInput.add_member(:notify_on_case_severity, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSeverityLevel, location_name: 'notifyOnCaseSeverity', traits: {"smithy.api#documentation" => "<p>The case severity for a support case that you want to receive notifications.</p>\n         <p>If you specify <code>high</code> or <code>all</code>, at least one of the following\n      parameters must be <code>true</code>:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>notifyOnAddCorrespondenceToCase</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>notifyOnCreateOrReopenCase</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>notifyOnResolveCase</code>\n               </p>\n            </li>\n         </ul>\n         <p>If you specify <code>none</code>, any of the following parameters that you specify in your\n      request must be <code>false</code>:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>notifyOnAddCorrespondenceToCase</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>notifyOnCreateOrReopenCase</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>notifyOnResolveCase</code>\n               </p>\n            </li>\n         </ul>\n         <note>\n            <p>If you don't specify these parameters in your request, the Amazon Web Services Support App uses the current\n        values by default.</p>\n         </note>"}))
    UpdateSlackChannelConfigurationInput.add_member(:channel_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'channelRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role that you want to\nuse to perform operations on Amazon Web Services. For more information, see <a href=\"https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html\">Managing access to\nthe Amazon Web Services Support App</a> in the <i>Amazon Web Services Support User Guide</i>.</p>"}))
    UpdateSlackChannelConfigurationInput.type = Types::UpdateSlackChannelConfigurationInput
    UpdateSlackChannelConfigurationOutput.add_member(:team_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TeamId, location_name: 'teamId', traits: {"smithy.api#documentation" => "<p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as\n<code>T012ABCDEFG</code>.</p>"}))
    UpdateSlackChannelConfigurationOutput.add_member(:channel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelId, location_name: 'channelId', traits: {"smithy.api#documentation" => "<p>The channel ID in Slack. This ID identifies a channel within a Slack workspace.</p>"}))
    UpdateSlackChannelConfigurationOutput.add_member(:channel_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ChannelName, location_name: 'channelName', traits: {"smithy.api#documentation" => "<p>The name of the Slack channel that you configure for the Amazon Web Services Support App.</p>"}))
    UpdateSlackChannelConfigurationOutput.add_member(:notify_on_create_or_reopen_case, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'notifyOnCreateOrReopenCase', traits: {"smithy.api#documentation" => "<p>Whether you want to get notified when a support case is created or reopened.</p>"}))
    UpdateSlackChannelConfigurationOutput.add_member(:notify_on_add_correspondence_to_case, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'notifyOnAddCorrespondenceToCase', traits: {"smithy.api#documentation" => "<p>Whether you want to get notified when a support case has a new correspondence.</p>"}))
    UpdateSlackChannelConfigurationOutput.add_member(:notify_on_resolve_case, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanValue, location_name: 'notifyOnResolveCase', traits: {"smithy.api#documentation" => "<p>Whether you want to get notified when a support case is resolved.</p>"}))
    UpdateSlackChannelConfigurationOutput.add_member(:notify_on_case_severity, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSeverityLevel, location_name: 'notifyOnCaseSeverity', traits: {"smithy.api#documentation" => "<p>The case severity for a support case that you want to receive notifications.</p>"}))
    UpdateSlackChannelConfigurationOutput.add_member(:channel_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'channelRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role that you want to\nuse to perform operations on Amazon Web Services. For more information, see <a href=\"https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html\">Managing access to\nthe Amazon Web Services Support App</a> in the <i>Amazon Web Services Support User Guide</i>.</p>"}))
    UpdateSlackChannelConfigurationOutput.type = Types::UpdateSlackChannelConfigurationOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ValidationException.type = Types::ValidationException
    SlackChannelConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SlackChannelConfiguration)

    SupportApp = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.supportapp#SupportApp"
      service.name = "SupportApp"
      service.version = "2021-08-20"
      service.traits = {"aws.api#service" => {"sdkId" => "Support App", "arnNamespace" => "supportapp"}, "aws.auth#sigv4" => {"name" => "supportapp"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amz-apigw-id,date"], "maxAge" => 86400}, "smithy.api#title" => "AWS Support App"}
      service.add_operation(:create_slack_channel_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportapp#CreateSlackChannelConfiguration"
        operation.name = "CreateSlackChannelConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSlackChannelConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSlackChannelConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/control/create-slack-channel-configuration", "code" => 200}}
      end)
      service.add_operation(:delete_account_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportapp#DeleteAccountAlias"
        operation.name = "DeleteAccountAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccountAliasInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccountAliasOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/control/delete-account-alias", "code" => 200}}
      end)
      service.add_operation(:delete_slack_channel_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportapp#DeleteSlackChannelConfiguration"
        operation.name = "DeleteSlackChannelConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlackChannelConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlackChannelConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/control/delete-slack-channel-configuration", "code" => 200}}
      end)
      service.add_operation(:delete_slack_workspace_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportapp#DeleteSlackWorkspaceConfiguration"
        operation.name = "DeleteSlackWorkspaceConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlackWorkspaceConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSlackWorkspaceConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/control/delete-slack-workspace-configuration", "code" => 200}}
      end)
      service.add_operation(:get_account_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportapp#GetAccountAlias"
        operation.name = "GetAccountAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountAliasInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountAliasOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/control/get-account-alias", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_slack_channel_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportapp#ListSlackChannelConfigurations"
        operation.name = "ListSlackChannelConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSlackChannelConfigurationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSlackChannelConfigurationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/control/list-slack-channel-configurations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSlackChannelConfigurations.new
      end)
      service.add_operation(:list_slack_workspace_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportapp#ListSlackWorkspaceConfigurations"
        operation.name = "ListSlackWorkspaceConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSlackWorkspaceConfigurationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSlackWorkspaceConfigurationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/control/list-slack-workspace-configurations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSlackWorkspaceConfigurations.new
      end)
      service.add_operation(:put_account_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportapp#PutAccountAlias"
        operation.name = "PutAccountAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountAliasInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountAliasOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/control/put-account-alias", "code" => 200}}
      end)
      service.add_operation(:register_slack_workspace_for_organization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportapp#RegisterSlackWorkspaceForOrganization"
        operation.name = "RegisterSlackWorkspaceForOrganization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterSlackWorkspaceForOrganizationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterSlackWorkspaceForOrganizationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/control/register-slack-workspace-for-organization", "code" => 200}}
      end)
      service.add_operation(:update_slack_channel_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.supportapp#UpdateSlackChannelConfiguration"
        operation.name = "UpdateSlackChannelConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSlackChannelConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSlackChannelConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/control/update-slack-channel-configuration", "code" => 200}}
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
