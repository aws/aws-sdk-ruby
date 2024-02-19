# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Chatbot
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountPreferences = Shapes::StructureShape.new(name: 'AccountPreferences')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AwsUserIdentity = Shapes::StringShape.new(name: 'AwsUserIdentity')
    BooleanAccountPreference = Shapes::BooleanShape.new(name: 'BooleanAccountPreference')
    ChatConfigurationArn = Shapes::StringShape.new(name: 'ChatConfigurationArn')
    ChimeWebhookConfiguration = Shapes::StructureShape.new(name: 'ChimeWebhookConfiguration')
    ChimeWebhookConfigurationList = Shapes::ListShape.new(name: 'ChimeWebhookConfigurationList')
    ChimeWebhookDescription = Shapes::StringShape.new(name: 'ChimeWebhookDescription')
    ChimeWebhookUrl = Shapes::StringShape.new(name: 'ChimeWebhookUrl')
    ConfigurationName = Shapes::StringShape.new(name: 'ConfigurationName')
    ConfiguredTeam = Shapes::StructureShape.new(name: 'ConfiguredTeam')
    ConfiguredTeamsList = Shapes::ListShape.new(name: 'ConfiguredTeamsList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateChimeWebhookConfigurationException = Shapes::StructureShape.new(name: 'CreateChimeWebhookConfigurationException')
    CreateChimeWebhookConfigurationRequest = Shapes::StructureShape.new(name: 'CreateChimeWebhookConfigurationRequest')
    CreateChimeWebhookConfigurationResult = Shapes::StructureShape.new(name: 'CreateChimeWebhookConfigurationResult')
    CreateSlackChannelConfigurationException = Shapes::StructureShape.new(name: 'CreateSlackChannelConfigurationException')
    CreateSlackChannelConfigurationRequest = Shapes::StructureShape.new(name: 'CreateSlackChannelConfigurationRequest')
    CreateSlackChannelConfigurationResult = Shapes::StructureShape.new(name: 'CreateSlackChannelConfigurationResult')
    CreateTeamsChannelConfigurationException = Shapes::StructureShape.new(name: 'CreateTeamsChannelConfigurationException')
    CreateTeamsChannelConfigurationRequest = Shapes::StructureShape.new(name: 'CreateTeamsChannelConfigurationRequest')
    CreateTeamsChannelConfigurationResult = Shapes::StructureShape.new(name: 'CreateTeamsChannelConfigurationResult')
    CustomerCwLogLevel = Shapes::StringShape.new(name: 'CustomerCwLogLevel')
    DeleteChimeWebhookConfigurationException = Shapes::StructureShape.new(name: 'DeleteChimeWebhookConfigurationException')
    DeleteChimeWebhookConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteChimeWebhookConfigurationRequest')
    DeleteChimeWebhookConfigurationResult = Shapes::StructureShape.new(name: 'DeleteChimeWebhookConfigurationResult')
    DeleteMicrosoftTeamsUserIdentityException = Shapes::StructureShape.new(name: 'DeleteMicrosoftTeamsUserIdentityException')
    DeleteMicrosoftTeamsUserIdentityRequest = Shapes::StructureShape.new(name: 'DeleteMicrosoftTeamsUserIdentityRequest')
    DeleteMicrosoftTeamsUserIdentityResult = Shapes::StructureShape.new(name: 'DeleteMicrosoftTeamsUserIdentityResult')
    DeleteSlackChannelConfigurationException = Shapes::StructureShape.new(name: 'DeleteSlackChannelConfigurationException')
    DeleteSlackChannelConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteSlackChannelConfigurationRequest')
    DeleteSlackChannelConfigurationResult = Shapes::StructureShape.new(name: 'DeleteSlackChannelConfigurationResult')
    DeleteSlackUserIdentityException = Shapes::StructureShape.new(name: 'DeleteSlackUserIdentityException')
    DeleteSlackUserIdentityRequest = Shapes::StructureShape.new(name: 'DeleteSlackUserIdentityRequest')
    DeleteSlackUserIdentityResult = Shapes::StructureShape.new(name: 'DeleteSlackUserIdentityResult')
    DeleteSlackWorkspaceAuthorizationFault = Shapes::StructureShape.new(name: 'DeleteSlackWorkspaceAuthorizationFault')
    DeleteSlackWorkspaceAuthorizationRequest = Shapes::StructureShape.new(name: 'DeleteSlackWorkspaceAuthorizationRequest')
    DeleteSlackWorkspaceAuthorizationResult = Shapes::StructureShape.new(name: 'DeleteSlackWorkspaceAuthorizationResult')
    DeleteTeamsChannelConfigurationException = Shapes::StructureShape.new(name: 'DeleteTeamsChannelConfigurationException')
    DeleteTeamsChannelConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteTeamsChannelConfigurationRequest')
    DeleteTeamsChannelConfigurationResult = Shapes::StructureShape.new(name: 'DeleteTeamsChannelConfigurationResult')
    DeleteTeamsConfiguredTeamException = Shapes::StructureShape.new(name: 'DeleteTeamsConfiguredTeamException')
    DeleteTeamsConfiguredTeamRequest = Shapes::StructureShape.new(name: 'DeleteTeamsConfiguredTeamRequest')
    DeleteTeamsConfiguredTeamResult = Shapes::StructureShape.new(name: 'DeleteTeamsConfiguredTeamResult')
    DescribeChimeWebhookConfigurationsException = Shapes::StructureShape.new(name: 'DescribeChimeWebhookConfigurationsException')
    DescribeChimeWebhookConfigurationsRequest = Shapes::StructureShape.new(name: 'DescribeChimeWebhookConfigurationsRequest')
    DescribeChimeWebhookConfigurationsResult = Shapes::StructureShape.new(name: 'DescribeChimeWebhookConfigurationsResult')
    DescribeSlackChannelConfigurationsException = Shapes::StructureShape.new(name: 'DescribeSlackChannelConfigurationsException')
    DescribeSlackChannelConfigurationsRequest = Shapes::StructureShape.new(name: 'DescribeSlackChannelConfigurationsRequest')
    DescribeSlackChannelConfigurationsResult = Shapes::StructureShape.new(name: 'DescribeSlackChannelConfigurationsResult')
    DescribeSlackUserIdentitiesException = Shapes::StructureShape.new(name: 'DescribeSlackUserIdentitiesException')
    DescribeSlackUserIdentitiesRequest = Shapes::StructureShape.new(name: 'DescribeSlackUserIdentitiesRequest')
    DescribeSlackUserIdentitiesResult = Shapes::StructureShape.new(name: 'DescribeSlackUserIdentitiesResult')
    DescribeSlackWorkspacesException = Shapes::StructureShape.new(name: 'DescribeSlackWorkspacesException')
    DescribeSlackWorkspacesRequest = Shapes::StructureShape.new(name: 'DescribeSlackWorkspacesRequest')
    DescribeSlackWorkspacesResult = Shapes::StructureShape.new(name: 'DescribeSlackWorkspacesResult')
    GetAccountPreferencesException = Shapes::StructureShape.new(name: 'GetAccountPreferencesException')
    GetAccountPreferencesRequest = Shapes::StructureShape.new(name: 'GetAccountPreferencesRequest')
    GetAccountPreferencesResult = Shapes::StructureShape.new(name: 'GetAccountPreferencesResult')
    GetTeamsChannelConfigurationException = Shapes::StructureShape.new(name: 'GetTeamsChannelConfigurationException')
    GetTeamsChannelConfigurationRequest = Shapes::StructureShape.new(name: 'GetTeamsChannelConfigurationRequest')
    GetTeamsChannelConfigurationResult = Shapes::StructureShape.new(name: 'GetTeamsChannelConfigurationResult')
    GuardrailPolicyArn = Shapes::StringShape.new(name: 'GuardrailPolicyArn')
    GuardrailPolicyArnList = Shapes::ListShape.new(name: 'GuardrailPolicyArnList')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListMicrosoftTeamsConfiguredTeamsException = Shapes::StructureShape.new(name: 'ListMicrosoftTeamsConfiguredTeamsException')
    ListMicrosoftTeamsConfiguredTeamsRequest = Shapes::StructureShape.new(name: 'ListMicrosoftTeamsConfiguredTeamsRequest')
    ListMicrosoftTeamsConfiguredTeamsResult = Shapes::StructureShape.new(name: 'ListMicrosoftTeamsConfiguredTeamsResult')
    ListMicrosoftTeamsUserIdentitiesException = Shapes::StructureShape.new(name: 'ListMicrosoftTeamsUserIdentitiesException')
    ListMicrosoftTeamsUserIdentitiesRequest = Shapes::StructureShape.new(name: 'ListMicrosoftTeamsUserIdentitiesRequest')
    ListMicrosoftTeamsUserIdentitiesResult = Shapes::StructureShape.new(name: 'ListMicrosoftTeamsUserIdentitiesResult')
    ListTeamsChannelConfigurationsException = Shapes::StructureShape.new(name: 'ListTeamsChannelConfigurationsException')
    ListTeamsChannelConfigurationsRequest = Shapes::StructureShape.new(name: 'ListTeamsChannelConfigurationsRequest')
    ListTeamsChannelConfigurationsResult = Shapes::StructureShape.new(name: 'ListTeamsChannelConfigurationsResult')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SlackChannelConfiguration = Shapes::StructureShape.new(name: 'SlackChannelConfiguration')
    SlackChannelConfigurationList = Shapes::ListShape.new(name: 'SlackChannelConfigurationList')
    SlackChannelDisplayName = Shapes::StringShape.new(name: 'SlackChannelDisplayName')
    SlackChannelId = Shapes::StringShape.new(name: 'SlackChannelId')
    SlackTeamId = Shapes::StringShape.new(name: 'SlackTeamId')
    SlackTeamName = Shapes::StringShape.new(name: 'SlackTeamName')
    SlackUserId = Shapes::StringShape.new(name: 'SlackUserId')
    SlackUserIdentitiesList = Shapes::ListShape.new(name: 'SlackUserIdentitiesList')
    SlackUserIdentity = Shapes::StructureShape.new(name: 'SlackUserIdentity')
    SlackWorkspace = Shapes::StructureShape.new(name: 'SlackWorkspace')
    SlackWorkspacesList = Shapes::ListShape.new(name: 'SlackWorkspacesList')
    SnsTopicArnList = Shapes::ListShape.new(name: 'SnsTopicArnList')
    String = Shapes::StringShape.new(name: 'String')
    TeamChannelConfigurationsList = Shapes::ListShape.new(name: 'TeamChannelConfigurationsList')
    TeamName = Shapes::StringShape.new(name: 'TeamName')
    TeamsChannelConfiguration = Shapes::StructureShape.new(name: 'TeamsChannelConfiguration')
    TeamsChannelId = Shapes::StringShape.new(name: 'TeamsChannelId')
    TeamsChannelName = Shapes::StringShape.new(name: 'TeamsChannelName')
    TeamsUserIdentitiesList = Shapes::ListShape.new(name: 'TeamsUserIdentitiesList')
    TeamsUserIdentity = Shapes::StructureShape.new(name: 'TeamsUserIdentity')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UpdateAccountPreferencesException = Shapes::StructureShape.new(name: 'UpdateAccountPreferencesException')
    UpdateAccountPreferencesRequest = Shapes::StructureShape.new(name: 'UpdateAccountPreferencesRequest')
    UpdateAccountPreferencesResult = Shapes::StructureShape.new(name: 'UpdateAccountPreferencesResult')
    UpdateChimeWebhookConfigurationException = Shapes::StructureShape.new(name: 'UpdateChimeWebhookConfigurationException')
    UpdateChimeWebhookConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateChimeWebhookConfigurationRequest')
    UpdateChimeWebhookConfigurationResult = Shapes::StructureShape.new(name: 'UpdateChimeWebhookConfigurationResult')
    UpdateSlackChannelConfigurationException = Shapes::StructureShape.new(name: 'UpdateSlackChannelConfigurationException')
    UpdateSlackChannelConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateSlackChannelConfigurationRequest')
    UpdateSlackChannelConfigurationResult = Shapes::StructureShape.new(name: 'UpdateSlackChannelConfigurationResult')
    UpdateTeamsChannelConfigurationException = Shapes::StructureShape.new(name: 'UpdateTeamsChannelConfigurationException')
    UpdateTeamsChannelConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateTeamsChannelConfigurationRequest')
    UpdateTeamsChannelConfigurationResult = Shapes::StructureShape.new(name: 'UpdateTeamsChannelConfigurationResult')

    AccountPreferences.add_member(:user_authorization_required, Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: "UserAuthorizationRequired"))
    AccountPreferences.add_member(:training_data_collection_enabled, Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: "TrainingDataCollectionEnabled"))
    AccountPreferences.struct_class = Types::AccountPreferences

    ChimeWebhookConfiguration.add_member(:webhook_description, Shapes::ShapeRef.new(shape: ChimeWebhookDescription, required: true, location_name: "WebhookDescription"))
    ChimeWebhookConfiguration.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, required: true, location_name: "ChatConfigurationArn"))
    ChimeWebhookConfiguration.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "IamRoleArn"))
    ChimeWebhookConfiguration.add_member(:sns_topic_arns, Shapes::ShapeRef.new(shape: SnsTopicArnList, required: true, location_name: "SnsTopicArns"))
    ChimeWebhookConfiguration.add_member(:configuration_name, Shapes::ShapeRef.new(shape: ConfigurationName, location_name: "ConfigurationName"))
    ChimeWebhookConfiguration.add_member(:logging_level, Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: "LoggingLevel"))
    ChimeWebhookConfiguration.struct_class = Types::ChimeWebhookConfiguration

    ChimeWebhookConfigurationList.member = Shapes::ShapeRef.new(shape: ChimeWebhookConfiguration)

    ConfiguredTeam.add_member(:tenant_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "TenantId"))
    ConfiguredTeam.add_member(:team_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "TeamId"))
    ConfiguredTeam.add_member(:team_name, Shapes::ShapeRef.new(shape: UUID, location_name: "TeamName", metadata: {"box"=>true}))
    ConfiguredTeam.struct_class = Types::ConfiguredTeam

    ConfiguredTeamsList.member = Shapes::ShapeRef.new(shape: ConfiguredTeam)

    ConflictException.struct_class = Types::ConflictException

    CreateChimeWebhookConfigurationException.struct_class = Types::CreateChimeWebhookConfigurationException

    CreateChimeWebhookConfigurationRequest.add_member(:webhook_description, Shapes::ShapeRef.new(shape: ChimeWebhookDescription, required: true, location_name: "WebhookDescription"))
    CreateChimeWebhookConfigurationRequest.add_member(:webhook_url, Shapes::ShapeRef.new(shape: ChimeWebhookUrl, required: true, location_name: "WebhookUrl"))
    CreateChimeWebhookConfigurationRequest.add_member(:sns_topic_arns, Shapes::ShapeRef.new(shape: SnsTopicArnList, required: true, location_name: "SnsTopicArns"))
    CreateChimeWebhookConfigurationRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "IamRoleArn"))
    CreateChimeWebhookConfigurationRequest.add_member(:configuration_name, Shapes::ShapeRef.new(shape: ConfigurationName, required: true, location_name: "ConfigurationName"))
    CreateChimeWebhookConfigurationRequest.add_member(:logging_level, Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: "LoggingLevel"))
    CreateChimeWebhookConfigurationRequest.struct_class = Types::CreateChimeWebhookConfigurationRequest

    CreateChimeWebhookConfigurationResult.add_member(:webhook_configuration, Shapes::ShapeRef.new(shape: ChimeWebhookConfiguration, location_name: "WebhookConfiguration"))
    CreateChimeWebhookConfigurationResult.struct_class = Types::CreateChimeWebhookConfigurationResult

    CreateSlackChannelConfigurationException.struct_class = Types::CreateSlackChannelConfigurationException

    CreateSlackChannelConfigurationRequest.add_member(:slack_team_id, Shapes::ShapeRef.new(shape: SlackTeamId, required: true, location_name: "SlackTeamId"))
    CreateSlackChannelConfigurationRequest.add_member(:slack_channel_id, Shapes::ShapeRef.new(shape: SlackChannelId, required: true, location_name: "SlackChannelId"))
    CreateSlackChannelConfigurationRequest.add_member(:slack_channel_name, Shapes::ShapeRef.new(shape: SlackChannelDisplayName, location_name: "SlackChannelName"))
    CreateSlackChannelConfigurationRequest.add_member(:sns_topic_arns, Shapes::ShapeRef.new(shape: SnsTopicArnList, location_name: "SnsTopicArns"))
    CreateSlackChannelConfigurationRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "IamRoleArn"))
    CreateSlackChannelConfigurationRequest.add_member(:configuration_name, Shapes::ShapeRef.new(shape: ConfigurationName, required: true, location_name: "ConfigurationName"))
    CreateSlackChannelConfigurationRequest.add_member(:logging_level, Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: "LoggingLevel"))
    CreateSlackChannelConfigurationRequest.add_member(:guardrail_policy_arns, Shapes::ShapeRef.new(shape: GuardrailPolicyArnList, location_name: "GuardrailPolicyArns"))
    CreateSlackChannelConfigurationRequest.add_member(:user_authorization_required, Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: "UserAuthorizationRequired"))
    CreateSlackChannelConfigurationRequest.struct_class = Types::CreateSlackChannelConfigurationRequest

    CreateSlackChannelConfigurationResult.add_member(:channel_configuration, Shapes::ShapeRef.new(shape: SlackChannelConfiguration, location_name: "ChannelConfiguration"))
    CreateSlackChannelConfigurationResult.struct_class = Types::CreateSlackChannelConfigurationResult

    CreateTeamsChannelConfigurationException.struct_class = Types::CreateTeamsChannelConfigurationException

    CreateTeamsChannelConfigurationRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: TeamsChannelId, required: true, location_name: "ChannelId"))
    CreateTeamsChannelConfigurationRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: TeamsChannelName, location_name: "ChannelName"))
    CreateTeamsChannelConfigurationRequest.add_member(:team_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "TeamId"))
    CreateTeamsChannelConfigurationRequest.add_member(:team_name, Shapes::ShapeRef.new(shape: TeamName, location_name: "TeamName"))
    CreateTeamsChannelConfigurationRequest.add_member(:tenant_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "TenantId"))
    CreateTeamsChannelConfigurationRequest.add_member(:sns_topic_arns, Shapes::ShapeRef.new(shape: SnsTopicArnList, location_name: "SnsTopicArns"))
    CreateTeamsChannelConfigurationRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "IamRoleArn"))
    CreateTeamsChannelConfigurationRequest.add_member(:configuration_name, Shapes::ShapeRef.new(shape: ConfigurationName, required: true, location_name: "ConfigurationName"))
    CreateTeamsChannelConfigurationRequest.add_member(:logging_level, Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: "LoggingLevel"))
    CreateTeamsChannelConfigurationRequest.add_member(:guardrail_policy_arns, Shapes::ShapeRef.new(shape: GuardrailPolicyArnList, location_name: "GuardrailPolicyArns"))
    CreateTeamsChannelConfigurationRequest.add_member(:user_authorization_required, Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: "UserAuthorizationRequired"))
    CreateTeamsChannelConfigurationRequest.struct_class = Types::CreateTeamsChannelConfigurationRequest

    CreateTeamsChannelConfigurationResult.add_member(:channel_configuration, Shapes::ShapeRef.new(shape: TeamsChannelConfiguration, location_name: "ChannelConfiguration"))
    CreateTeamsChannelConfigurationResult.struct_class = Types::CreateTeamsChannelConfigurationResult

    DeleteChimeWebhookConfigurationException.struct_class = Types::DeleteChimeWebhookConfigurationException

    DeleteChimeWebhookConfigurationRequest.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, required: true, location_name: "ChatConfigurationArn"))
    DeleteChimeWebhookConfigurationRequest.struct_class = Types::DeleteChimeWebhookConfigurationRequest

    DeleteChimeWebhookConfigurationResult.struct_class = Types::DeleteChimeWebhookConfigurationResult

    DeleteMicrosoftTeamsUserIdentityException.struct_class = Types::DeleteMicrosoftTeamsUserIdentityException

    DeleteMicrosoftTeamsUserIdentityRequest.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, required: true, location_name: "ChatConfigurationArn"))
    DeleteMicrosoftTeamsUserIdentityRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "UserId"))
    DeleteMicrosoftTeamsUserIdentityRequest.struct_class = Types::DeleteMicrosoftTeamsUserIdentityRequest

    DeleteMicrosoftTeamsUserIdentityResult.struct_class = Types::DeleteMicrosoftTeamsUserIdentityResult

    DeleteSlackChannelConfigurationException.struct_class = Types::DeleteSlackChannelConfigurationException

    DeleteSlackChannelConfigurationRequest.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, required: true, location_name: "ChatConfigurationArn"))
    DeleteSlackChannelConfigurationRequest.struct_class = Types::DeleteSlackChannelConfigurationRequest

    DeleteSlackChannelConfigurationResult.struct_class = Types::DeleteSlackChannelConfigurationResult

    DeleteSlackUserIdentityException.struct_class = Types::DeleteSlackUserIdentityException

    DeleteSlackUserIdentityRequest.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, required: true, location_name: "ChatConfigurationArn"))
    DeleteSlackUserIdentityRequest.add_member(:slack_team_id, Shapes::ShapeRef.new(shape: SlackTeamId, required: true, location_name: "SlackTeamId"))
    DeleteSlackUserIdentityRequest.add_member(:slack_user_id, Shapes::ShapeRef.new(shape: SlackUserId, required: true, location_name: "SlackUserId"))
    DeleteSlackUserIdentityRequest.struct_class = Types::DeleteSlackUserIdentityRequest

    DeleteSlackUserIdentityResult.struct_class = Types::DeleteSlackUserIdentityResult

    DeleteSlackWorkspaceAuthorizationFault.struct_class = Types::DeleteSlackWorkspaceAuthorizationFault

    DeleteSlackWorkspaceAuthorizationRequest.add_member(:slack_team_id, Shapes::ShapeRef.new(shape: SlackTeamId, required: true, location_name: "SlackTeamId"))
    DeleteSlackWorkspaceAuthorizationRequest.struct_class = Types::DeleteSlackWorkspaceAuthorizationRequest

    DeleteSlackWorkspaceAuthorizationResult.struct_class = Types::DeleteSlackWorkspaceAuthorizationResult

    DeleteTeamsChannelConfigurationException.struct_class = Types::DeleteTeamsChannelConfigurationException

    DeleteTeamsChannelConfigurationRequest.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, required: true, location_name: "ChatConfigurationArn"))
    DeleteTeamsChannelConfigurationRequest.struct_class = Types::DeleteTeamsChannelConfigurationRequest

    DeleteTeamsChannelConfigurationResult.struct_class = Types::DeleteTeamsChannelConfigurationResult

    DeleteTeamsConfiguredTeamException.struct_class = Types::DeleteTeamsConfiguredTeamException

    DeleteTeamsConfiguredTeamRequest.add_member(:team_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "TeamId"))
    DeleteTeamsConfiguredTeamRequest.struct_class = Types::DeleteTeamsConfiguredTeamRequest

    DeleteTeamsConfiguredTeamResult.struct_class = Types::DeleteTeamsConfiguredTeamResult

    DescribeChimeWebhookConfigurationsException.struct_class = Types::DescribeChimeWebhookConfigurationsException

    DescribeChimeWebhookConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeChimeWebhookConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken", metadata: {"box"=>true}))
    DescribeChimeWebhookConfigurationsRequest.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: "ChatConfigurationArn", metadata: {"box"=>true}))
    DescribeChimeWebhookConfigurationsRequest.struct_class = Types::DescribeChimeWebhookConfigurationsRequest

    DescribeChimeWebhookConfigurationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeChimeWebhookConfigurationsResult.add_member(:webhook_configurations, Shapes::ShapeRef.new(shape: ChimeWebhookConfigurationList, location_name: "WebhookConfigurations"))
    DescribeChimeWebhookConfigurationsResult.struct_class = Types::DescribeChimeWebhookConfigurationsResult

    DescribeSlackChannelConfigurationsException.struct_class = Types::DescribeSlackChannelConfigurationsException

    DescribeSlackChannelConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    DescribeSlackChannelConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken", metadata: {"box"=>true}))
    DescribeSlackChannelConfigurationsRequest.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: "ChatConfigurationArn", metadata: {"box"=>true}))
    DescribeSlackChannelConfigurationsRequest.struct_class = Types::DescribeSlackChannelConfigurationsRequest

    DescribeSlackChannelConfigurationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeSlackChannelConfigurationsResult.add_member(:slack_channel_configurations, Shapes::ShapeRef.new(shape: SlackChannelConfigurationList, location_name: "SlackChannelConfigurations"))
    DescribeSlackChannelConfigurationsResult.struct_class = Types::DescribeSlackChannelConfigurationsResult

    DescribeSlackUserIdentitiesException.struct_class = Types::DescribeSlackUserIdentitiesException

    DescribeSlackUserIdentitiesRequest.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: "ChatConfigurationArn"))
    DescribeSlackUserIdentitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeSlackUserIdentitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeSlackUserIdentitiesRequest.struct_class = Types::DescribeSlackUserIdentitiesRequest

    DescribeSlackUserIdentitiesResult.add_member(:slack_user_identities, Shapes::ShapeRef.new(shape: SlackUserIdentitiesList, location_name: "SlackUserIdentities"))
    DescribeSlackUserIdentitiesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeSlackUserIdentitiesResult.struct_class = Types::DescribeSlackUserIdentitiesResult

    DescribeSlackWorkspacesException.struct_class = Types::DescribeSlackWorkspacesException

    DescribeSlackWorkspacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeSlackWorkspacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeSlackWorkspacesRequest.struct_class = Types::DescribeSlackWorkspacesRequest

    DescribeSlackWorkspacesResult.add_member(:slack_workspaces, Shapes::ShapeRef.new(shape: SlackWorkspacesList, location_name: "SlackWorkspaces"))
    DescribeSlackWorkspacesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeSlackWorkspacesResult.struct_class = Types::DescribeSlackWorkspacesResult

    GetAccountPreferencesException.struct_class = Types::GetAccountPreferencesException

    GetAccountPreferencesRequest.struct_class = Types::GetAccountPreferencesRequest

    GetAccountPreferencesResult.add_member(:account_preferences, Shapes::ShapeRef.new(shape: AccountPreferences, location_name: "AccountPreferences"))
    GetAccountPreferencesResult.struct_class = Types::GetAccountPreferencesResult

    GetTeamsChannelConfigurationException.struct_class = Types::GetTeamsChannelConfigurationException

    GetTeamsChannelConfigurationRequest.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, required: true, location_name: "ChatConfigurationArn"))
    GetTeamsChannelConfigurationRequest.struct_class = Types::GetTeamsChannelConfigurationRequest

    GetTeamsChannelConfigurationResult.add_member(:channel_configuration, Shapes::ShapeRef.new(shape: TeamsChannelConfiguration, location_name: "ChannelConfiguration"))
    GetTeamsChannelConfigurationResult.struct_class = Types::GetTeamsChannelConfigurationResult

    GuardrailPolicyArnList.member = Shapes::ShapeRef.new(shape: GuardrailPolicyArn)

    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidRequestException.struct_class = Types::InvalidRequestException

    LimitExceededException.struct_class = Types::LimitExceededException

    ListMicrosoftTeamsConfiguredTeamsException.struct_class = Types::ListMicrosoftTeamsConfiguredTeamsException

    ListMicrosoftTeamsConfiguredTeamsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListMicrosoftTeamsConfiguredTeamsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListMicrosoftTeamsConfiguredTeamsRequest.struct_class = Types::ListMicrosoftTeamsConfiguredTeamsRequest

    ListMicrosoftTeamsConfiguredTeamsResult.add_member(:configured_teams, Shapes::ShapeRef.new(shape: ConfiguredTeamsList, location_name: "ConfiguredTeams"))
    ListMicrosoftTeamsConfiguredTeamsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListMicrosoftTeamsConfiguredTeamsResult.struct_class = Types::ListMicrosoftTeamsConfiguredTeamsResult

    ListMicrosoftTeamsUserIdentitiesException.struct_class = Types::ListMicrosoftTeamsUserIdentitiesException

    ListMicrosoftTeamsUserIdentitiesRequest.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, location_name: "ChatConfigurationArn"))
    ListMicrosoftTeamsUserIdentitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListMicrosoftTeamsUserIdentitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListMicrosoftTeamsUserIdentitiesRequest.struct_class = Types::ListMicrosoftTeamsUserIdentitiesRequest

    ListMicrosoftTeamsUserIdentitiesResult.add_member(:teams_user_identities, Shapes::ShapeRef.new(shape: TeamsUserIdentitiesList, location_name: "TeamsUserIdentities"))
    ListMicrosoftTeamsUserIdentitiesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListMicrosoftTeamsUserIdentitiesResult.struct_class = Types::ListMicrosoftTeamsUserIdentitiesResult

    ListTeamsChannelConfigurationsException.struct_class = Types::ListTeamsChannelConfigurationsException

    ListTeamsChannelConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    ListTeamsChannelConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken", metadata: {"box"=>true}))
    ListTeamsChannelConfigurationsRequest.add_member(:team_id, Shapes::ShapeRef.new(shape: UUID, location_name: "TeamId", metadata: {"box"=>true}))
    ListTeamsChannelConfigurationsRequest.struct_class = Types::ListTeamsChannelConfigurationsRequest

    ListTeamsChannelConfigurationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListTeamsChannelConfigurationsResult.add_member(:team_channel_configurations, Shapes::ShapeRef.new(shape: TeamChannelConfigurationsList, location_name: "TeamChannelConfigurations"))
    ListTeamsChannelConfigurationsResult.struct_class = Types::ListTeamsChannelConfigurationsResult

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SlackChannelConfiguration.add_member(:slack_team_name, Shapes::ShapeRef.new(shape: SlackTeamName, required: true, location_name: "SlackTeamName"))
    SlackChannelConfiguration.add_member(:slack_team_id, Shapes::ShapeRef.new(shape: SlackTeamId, required: true, location_name: "SlackTeamId"))
    SlackChannelConfiguration.add_member(:slack_channel_id, Shapes::ShapeRef.new(shape: SlackChannelId, required: true, location_name: "SlackChannelId"))
    SlackChannelConfiguration.add_member(:slack_channel_name, Shapes::ShapeRef.new(shape: SlackChannelDisplayName, required: true, location_name: "SlackChannelName"))
    SlackChannelConfiguration.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, required: true, location_name: "ChatConfigurationArn"))
    SlackChannelConfiguration.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "IamRoleArn"))
    SlackChannelConfiguration.add_member(:sns_topic_arns, Shapes::ShapeRef.new(shape: SnsTopicArnList, required: true, location_name: "SnsTopicArns", metadata: {"box"=>true}))
    SlackChannelConfiguration.add_member(:configuration_name, Shapes::ShapeRef.new(shape: ConfigurationName, location_name: "ConfigurationName"))
    SlackChannelConfiguration.add_member(:logging_level, Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: "LoggingLevel"))
    SlackChannelConfiguration.add_member(:guardrail_policy_arns, Shapes::ShapeRef.new(shape: GuardrailPolicyArnList, location_name: "GuardrailPolicyArns"))
    SlackChannelConfiguration.add_member(:user_authorization_required, Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: "UserAuthorizationRequired"))
    SlackChannelConfiguration.struct_class = Types::SlackChannelConfiguration

    SlackChannelConfigurationList.member = Shapes::ShapeRef.new(shape: SlackChannelConfiguration)

    SlackUserIdentitiesList.member = Shapes::ShapeRef.new(shape: SlackUserIdentity)

    SlackUserIdentity.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "IamRoleArn"))
    SlackUserIdentity.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, required: true, location_name: "ChatConfigurationArn"))
    SlackUserIdentity.add_member(:slack_team_id, Shapes::ShapeRef.new(shape: SlackTeamId, required: true, location_name: "SlackTeamId"))
    SlackUserIdentity.add_member(:slack_user_id, Shapes::ShapeRef.new(shape: SlackUserId, required: true, location_name: "SlackUserId"))
    SlackUserIdentity.add_member(:aws_user_identity, Shapes::ShapeRef.new(shape: AwsUserIdentity, location_name: "AwsUserIdentity"))
    SlackUserIdentity.struct_class = Types::SlackUserIdentity

    SlackWorkspace.add_member(:slack_team_id, Shapes::ShapeRef.new(shape: SlackTeamId, required: true, location_name: "SlackTeamId"))
    SlackWorkspace.add_member(:slack_team_name, Shapes::ShapeRef.new(shape: SlackTeamName, required: true, location_name: "SlackTeamName"))
    SlackWorkspace.struct_class = Types::SlackWorkspace

    SlackWorkspacesList.member = Shapes::ShapeRef.new(shape: SlackWorkspace)

    SnsTopicArnList.member = Shapes::ShapeRef.new(shape: Arn)

    TeamChannelConfigurationsList.member = Shapes::ShapeRef.new(shape: TeamsChannelConfiguration)

    TeamsChannelConfiguration.add_member(:channel_id, Shapes::ShapeRef.new(shape: TeamsChannelId, required: true, location_name: "ChannelId"))
    TeamsChannelConfiguration.add_member(:channel_name, Shapes::ShapeRef.new(shape: TeamsChannelName, location_name: "ChannelName"))
    TeamsChannelConfiguration.add_member(:team_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "TeamId"))
    TeamsChannelConfiguration.add_member(:team_name, Shapes::ShapeRef.new(shape: String, location_name: "TeamName"))
    TeamsChannelConfiguration.add_member(:tenant_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "TenantId"))
    TeamsChannelConfiguration.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, required: true, location_name: "ChatConfigurationArn"))
    TeamsChannelConfiguration.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "IamRoleArn"))
    TeamsChannelConfiguration.add_member(:sns_topic_arns, Shapes::ShapeRef.new(shape: SnsTopicArnList, required: true, location_name: "SnsTopicArns", metadata: {"box"=>true}))
    TeamsChannelConfiguration.add_member(:configuration_name, Shapes::ShapeRef.new(shape: ConfigurationName, location_name: "ConfigurationName"))
    TeamsChannelConfiguration.add_member(:logging_level, Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: "LoggingLevel"))
    TeamsChannelConfiguration.add_member(:guardrail_policy_arns, Shapes::ShapeRef.new(shape: GuardrailPolicyArnList, location_name: "GuardrailPolicyArns"))
    TeamsChannelConfiguration.add_member(:user_authorization_required, Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: "UserAuthorizationRequired"))
    TeamsChannelConfiguration.struct_class = Types::TeamsChannelConfiguration

    TeamsUserIdentitiesList.member = Shapes::ShapeRef.new(shape: TeamsUserIdentity)

    TeamsUserIdentity.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "IamRoleArn"))
    TeamsUserIdentity.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, required: true, location_name: "ChatConfigurationArn"))
    TeamsUserIdentity.add_member(:team_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "TeamId"))
    TeamsUserIdentity.add_member(:user_id, Shapes::ShapeRef.new(shape: UUID, location_name: "UserId"))
    TeamsUserIdentity.add_member(:aws_user_identity, Shapes::ShapeRef.new(shape: AwsUserIdentity, location_name: "AwsUserIdentity"))
    TeamsUserIdentity.add_member(:teams_channel_id, Shapes::ShapeRef.new(shape: TeamsChannelId, location_name: "TeamsChannelId"))
    TeamsUserIdentity.add_member(:teams_tenant_id, Shapes::ShapeRef.new(shape: UUID, location_name: "TeamsTenantId"))
    TeamsUserIdentity.struct_class = Types::TeamsUserIdentity

    UpdateAccountPreferencesException.struct_class = Types::UpdateAccountPreferencesException

    UpdateAccountPreferencesRequest.add_member(:user_authorization_required, Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: "UserAuthorizationRequired"))
    UpdateAccountPreferencesRequest.add_member(:training_data_collection_enabled, Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: "TrainingDataCollectionEnabled"))
    UpdateAccountPreferencesRequest.struct_class = Types::UpdateAccountPreferencesRequest

    UpdateAccountPreferencesResult.add_member(:account_preferences, Shapes::ShapeRef.new(shape: AccountPreferences, location_name: "AccountPreferences"))
    UpdateAccountPreferencesResult.struct_class = Types::UpdateAccountPreferencesResult

    UpdateChimeWebhookConfigurationException.struct_class = Types::UpdateChimeWebhookConfigurationException

    UpdateChimeWebhookConfigurationRequest.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, required: true, location_name: "ChatConfigurationArn"))
    UpdateChimeWebhookConfigurationRequest.add_member(:webhook_description, Shapes::ShapeRef.new(shape: ChimeWebhookDescription, location_name: "WebhookDescription"))
    UpdateChimeWebhookConfigurationRequest.add_member(:webhook_url, Shapes::ShapeRef.new(shape: ChimeWebhookUrl, location_name: "WebhookUrl"))
    UpdateChimeWebhookConfigurationRequest.add_member(:sns_topic_arns, Shapes::ShapeRef.new(shape: SnsTopicArnList, location_name: "SnsTopicArns"))
    UpdateChimeWebhookConfigurationRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "IamRoleArn"))
    UpdateChimeWebhookConfigurationRequest.add_member(:logging_level, Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: "LoggingLevel"))
    UpdateChimeWebhookConfigurationRequest.struct_class = Types::UpdateChimeWebhookConfigurationRequest

    UpdateChimeWebhookConfigurationResult.add_member(:webhook_configuration, Shapes::ShapeRef.new(shape: ChimeWebhookConfiguration, location_name: "WebhookConfiguration"))
    UpdateChimeWebhookConfigurationResult.struct_class = Types::UpdateChimeWebhookConfigurationResult

    UpdateSlackChannelConfigurationException.struct_class = Types::UpdateSlackChannelConfigurationException

    UpdateSlackChannelConfigurationRequest.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, required: true, location_name: "ChatConfigurationArn"))
    UpdateSlackChannelConfigurationRequest.add_member(:slack_channel_id, Shapes::ShapeRef.new(shape: SlackChannelId, required: true, location_name: "SlackChannelId"))
    UpdateSlackChannelConfigurationRequest.add_member(:slack_channel_name, Shapes::ShapeRef.new(shape: SlackChannelDisplayName, location_name: "SlackChannelName"))
    UpdateSlackChannelConfigurationRequest.add_member(:sns_topic_arns, Shapes::ShapeRef.new(shape: SnsTopicArnList, location_name: "SnsTopicArns"))
    UpdateSlackChannelConfigurationRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "IamRoleArn"))
    UpdateSlackChannelConfigurationRequest.add_member(:logging_level, Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: "LoggingLevel"))
    UpdateSlackChannelConfigurationRequest.add_member(:guardrail_policy_arns, Shapes::ShapeRef.new(shape: GuardrailPolicyArnList, location_name: "GuardrailPolicyArns"))
    UpdateSlackChannelConfigurationRequest.add_member(:user_authorization_required, Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: "UserAuthorizationRequired"))
    UpdateSlackChannelConfigurationRequest.struct_class = Types::UpdateSlackChannelConfigurationRequest

    UpdateSlackChannelConfigurationResult.add_member(:channel_configuration, Shapes::ShapeRef.new(shape: SlackChannelConfiguration, location_name: "ChannelConfiguration"))
    UpdateSlackChannelConfigurationResult.struct_class = Types::UpdateSlackChannelConfigurationResult

    UpdateTeamsChannelConfigurationException.struct_class = Types::UpdateTeamsChannelConfigurationException

    UpdateTeamsChannelConfigurationRequest.add_member(:chat_configuration_arn, Shapes::ShapeRef.new(shape: ChatConfigurationArn, required: true, location_name: "ChatConfigurationArn"))
    UpdateTeamsChannelConfigurationRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: TeamsChannelId, required: true, location_name: "ChannelId"))
    UpdateTeamsChannelConfigurationRequest.add_member(:channel_name, Shapes::ShapeRef.new(shape: TeamsChannelName, location_name: "ChannelName"))
    UpdateTeamsChannelConfigurationRequest.add_member(:sns_topic_arns, Shapes::ShapeRef.new(shape: SnsTopicArnList, location_name: "SnsTopicArns"))
    UpdateTeamsChannelConfigurationRequest.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "IamRoleArn"))
    UpdateTeamsChannelConfigurationRequest.add_member(:logging_level, Shapes::ShapeRef.new(shape: CustomerCwLogLevel, location_name: "LoggingLevel"))
    UpdateTeamsChannelConfigurationRequest.add_member(:guardrail_policy_arns, Shapes::ShapeRef.new(shape: GuardrailPolicyArnList, location_name: "GuardrailPolicyArns"))
    UpdateTeamsChannelConfigurationRequest.add_member(:user_authorization_required, Shapes::ShapeRef.new(shape: BooleanAccountPreference, location_name: "UserAuthorizationRequired"))
    UpdateTeamsChannelConfigurationRequest.struct_class = Types::UpdateTeamsChannelConfigurationRequest

    UpdateTeamsChannelConfigurationResult.add_member(:channel_configuration, Shapes::ShapeRef.new(shape: TeamsChannelConfiguration, location_name: "ChannelConfiguration"))
    UpdateTeamsChannelConfigurationResult.struct_class = Types::UpdateTeamsChannelConfigurationResult


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-10-11"

      api.metadata = {
        "apiVersion" => "2017-10-11",
        "endpointPrefix" => "chatbot",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "chatbot",
        "serviceId" => "chatbot",
        "signatureVersion" => "v4",
        "uid" => "chatbot-2017-10-11",
      }

      api.add_operation(:create_chime_webhook_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChimeWebhookConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/create-chime-webhook-configuration"
        o.input = Shapes::ShapeRef.new(shape: CreateChimeWebhookConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChimeWebhookConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CreateChimeWebhookConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_microsoft_teams_channel_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMicrosoftTeamsChannelConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/create-ms-teams-channel-configuration"
        o.input = Shapes::ShapeRef.new(shape: CreateTeamsChannelConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTeamsChannelConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CreateTeamsChannelConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_slack_channel_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSlackChannelConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/create-slack-channel-configuration"
        o.input = Shapes::ShapeRef.new(shape: CreateSlackChannelConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSlackChannelConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: CreateSlackChannelConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_chime_webhook_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChimeWebhookConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/delete-chime-webhook-configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteChimeWebhookConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChimeWebhookConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteChimeWebhookConfigurationException)
      end)

      api.add_operation(:delete_microsoft_teams_channel_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMicrosoftTeamsChannelConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/delete-ms-teams-channel-configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteTeamsChannelConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTeamsChannelConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteTeamsChannelConfigurationException)
      end)

      api.add_operation(:delete_microsoft_teams_configured_team, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMicrosoftTeamsConfiguredTeam"
        o.http_method = "POST"
        o.http_request_uri = "/delete-ms-teams-configured-teams"
        o.input = Shapes::ShapeRef.new(shape: DeleteTeamsConfiguredTeamRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTeamsConfiguredTeamResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteTeamsConfiguredTeamException)
      end)

      api.add_operation(:delete_microsoft_teams_user_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMicrosoftTeamsUserIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/delete-ms-teams-user-identity"
        o.input = Shapes::ShapeRef.new(shape: DeleteMicrosoftTeamsUserIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMicrosoftTeamsUserIdentityResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteMicrosoftTeamsUserIdentityException)
      end)

      api.add_operation(:delete_slack_channel_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSlackChannelConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/delete-slack-channel-configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteSlackChannelConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSlackChannelConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteSlackChannelConfigurationException)
      end)

      api.add_operation(:delete_slack_user_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSlackUserIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/delete-slack-user-identity"
        o.input = Shapes::ShapeRef.new(shape: DeleteSlackUserIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSlackUserIdentityResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteSlackUserIdentityException)
      end)

      api.add_operation(:delete_slack_workspace_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSlackWorkspaceAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/delete-slack-workspace-authorization"
        o.input = Shapes::ShapeRef.new(shape: DeleteSlackWorkspaceAuthorizationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSlackWorkspaceAuthorizationResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DeleteSlackWorkspaceAuthorizationFault)
      end)

      api.add_operation(:describe_chime_webhook_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChimeWebhookConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/describe-chime-webhook-configurations"
        o.input = Shapes::ShapeRef.new(shape: DescribeChimeWebhookConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChimeWebhookConfigurationsResult)
        o.errors << Shapes::ShapeRef.new(shape: DescribeChimeWebhookConfigurationsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_slack_channel_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSlackChannelConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/describe-slack-channel-configurations"
        o.input = Shapes::ShapeRef.new(shape: DescribeSlackChannelConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSlackChannelConfigurationsResult)
        o.errors << Shapes::ShapeRef.new(shape: DescribeSlackChannelConfigurationsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_slack_user_identities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSlackUserIdentities"
        o.http_method = "POST"
        o.http_request_uri = "/describe-slack-user-identities"
        o.input = Shapes::ShapeRef.new(shape: DescribeSlackUserIdentitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSlackUserIdentitiesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: DescribeSlackUserIdentitiesException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_slack_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSlackWorkspaces"
        o.http_method = "POST"
        o.http_request_uri = "/describe-slack-workspaces"
        o.input = Shapes::ShapeRef.new(shape: DescribeSlackWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSlackWorkspacesResult)
        o.errors << Shapes::ShapeRef.new(shape: DescribeSlackWorkspacesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_account_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountPreferences"
        o.http_method = "POST"
        o.http_request_uri = "/get-account-preferences"
        o.input = Shapes::ShapeRef.new(shape: GetAccountPreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountPreferencesResult)
        o.errors << Shapes::ShapeRef.new(shape: GetAccountPreferencesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_microsoft_teams_channel_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMicrosoftTeamsChannelConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/get-ms-teams-channel-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetTeamsChannelConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTeamsChannelConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: GetTeamsChannelConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:list_microsoft_teams_channel_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMicrosoftTeamsChannelConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/list-ms-teams-channel-configurations"
        o.input = Shapes::ShapeRef.new(shape: ListTeamsChannelConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTeamsChannelConfigurationsResult)
        o.errors << Shapes::ShapeRef.new(shape: ListTeamsChannelConfigurationsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_microsoft_teams_configured_teams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMicrosoftTeamsConfiguredTeams"
        o.http_method = "POST"
        o.http_request_uri = "/list-ms-teams-configured-teams"
        o.input = Shapes::ShapeRef.new(shape: ListMicrosoftTeamsConfiguredTeamsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMicrosoftTeamsConfiguredTeamsResult)
        o.errors << Shapes::ShapeRef.new(shape: ListMicrosoftTeamsConfiguredTeamsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_microsoft_teams_user_identities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMicrosoftTeamsUserIdentities"
        o.http_method = "POST"
        o.http_request_uri = "/list-ms-teams-user-identities"
        o.input = Shapes::ShapeRef.new(shape: ListMicrosoftTeamsUserIdentitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMicrosoftTeamsUserIdentitiesResult)
        o.errors << Shapes::ShapeRef.new(shape: ListMicrosoftTeamsUserIdentitiesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_account_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountPreferences"
        o.http_method = "POST"
        o.http_request_uri = "/update-account-preferences"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountPreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountPreferencesResult)
        o.errors << Shapes::ShapeRef.new(shape: UpdateAccountPreferencesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:update_chime_webhook_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChimeWebhookConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/update-chime-webhook-configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateChimeWebhookConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChimeWebhookConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UpdateChimeWebhookConfigurationException)
      end)

      api.add_operation(:update_microsoft_teams_channel_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMicrosoftTeamsChannelConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/update-ms-teams-channel-configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateTeamsChannelConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTeamsChannelConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UpdateTeamsChannelConfigurationException)
      end)

      api.add_operation(:update_slack_channel_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSlackChannelConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/update-slack-channel-configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateSlackChannelConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSlackChannelConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UpdateSlackChannelConfigurationException)
      end)
    end

  end
end
