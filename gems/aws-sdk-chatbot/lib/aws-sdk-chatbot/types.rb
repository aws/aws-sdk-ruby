# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Chatbot
  module Types

    # Preferences which apply for AWS Chatbot usage in the calling AWS
    # account.
    #
    # @!attribute [rw] user_authorization_required
    #   Enables use of a user role requirement in your chat configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] training_data_collection_enabled
    #   Turns on training data collection. This helps improve the AWS
    #   Chatbot experience by allowing AWS Chatbot to store and use your
    #   customer information, such as AWS Chatbot configurations,
    #   notifications, user inputs, AWS Chatbot generated responses, and
    #   interaction data. This data helps us to continuously improve and
    #   develop Artificial Intelligence (AI) technologies. Your data is not
    #   shared with any third parties and is protected using sophisticated
    #   controls to prevent unauthorized access and misuse. AWS Chatbot does
    #   not store or use interactions in chat channels with Amazon Q for
    #   training AWS Chatbot’s AI technologies.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/AccountPreferences AWS API Documentation
    #
    class AccountPreferences < Struct.new(
      :user_authorization_required,
      :training_data_collection_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # An AWS Chatbot configuration for Amazon Chime.
    #
    # @!attribute [rw] webhook_description
    #   Description of the webhook. Recommend using the convention
    #   `RoomName/WebhookName`. See Chime setup tutorial for more details:
    #   https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html.
    #   @return [String]
    #
    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the ChimeWebhookConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role that defines the permissions for AWS
    #   Chatbot. This is a user-defined role that AWS Chatbot will assume.
    #   This is not the service-linked role. For more information, see IAM
    #   Policies for AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arns
    #   The ARNs of the SNS topics that deliver notifications to AWS
    #   Chatbot.
    #   @return [Array<String>]
    #
    # @!attribute [rw] configuration_name
    #   The name of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] logging_level
    #   Specifies the logging level for this configuration. This property
    #   affects the log entries pushed to Amazon CloudWatch Logs.Logging
    #   levels include ERROR, INFO, or NONE.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags applied to the configuration.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ChimeWebhookConfiguration AWS API Documentation
    #
    class ChimeWebhookConfiguration < Struct.new(
      :webhook_description,
      :chat_configuration_arn,
      :iam_role_arn,
      :sns_topic_arns,
      :configuration_name,
      :logging_level,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Microsoft Teams team that has been authorized with AWS Chatbot.
    #
    # @!attribute [rw] tenant_id
    #   The ID of the Microsoft Teams tenant.
    #   @return [String]
    #
    # @!attribute [rw] team_id
    #   The ID of the Microsoft Team authorized with AWS Chatbot. To get the
    #   team ID, you must perform the initial authorization flow with
    #   Microsoft Teams in the AWS Chatbot console. Then you can copy and
    #   paste the team ID from the console. For more details, see steps 1-4
    #   in Get started with Microsoft Teams in the AWS Chatbot Administrator
    #   Guide.
    #   @return [String]
    #
    # @!attribute [rw] team_name
    #   The name of the Microsoft Teams Team.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ConfiguredTeam AWS API Documentation
    #
    class ConfiguredTeam < Struct.new(
      :tenant_id,
      :team_id,
      :team_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an issue processing your request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ConflictException AWS API Documentation
    #
    class ConflictException < Aws::EmptyStructure; end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/CreateChimeWebhookConfigurationException AWS API Documentation
    #
    class CreateChimeWebhookConfigurationException < Aws::EmptyStructure; end

    # @!attribute [rw] webhook_description
    #   Description of the webhook. Recommend using the convention
    #   `RoomName/WebhookName`. See Chime setup tutorial for more details:
    #   https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html.
    #   @return [String]
    #
    # @!attribute [rw] webhook_url
    #   URL for the Chime webhook.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arns
    #   The ARNs of the SNS topics that deliver notifications to AWS
    #   Chatbot.
    #   @return [Array<String>]
    #
    # @!attribute [rw] iam_role_arn
    #   This is a user-defined role that AWS Chatbot will assume. This is
    #   not the service-linked role. For more information, see IAM Policies
    #   for AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] configuration_name
    #   The name of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] logging_level
    #   Logging levels include ERROR, INFO, or NONE.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to apply to the configuration.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/CreateChimeWebhookConfigurationRequest AWS API Documentation
    #
    class CreateChimeWebhookConfigurationRequest < Struct.new(
      :webhook_description,
      :webhook_url,
      :sns_topic_arns,
      :iam_role_arn,
      :configuration_name,
      :logging_level,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] webhook_configuration
    #   Chime webhook configuration.
    #   @return [Types::ChimeWebhookConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/CreateChimeWebhookConfigurationResult AWS API Documentation
    #
    class CreateChimeWebhookConfigurationResult < Struct.new(
      :webhook_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/CreateSlackChannelConfigurationException AWS API Documentation
    #
    class CreateSlackChannelConfigurationException < Aws::EmptyStructure; end

    # @!attribute [rw] slack_team_id
    #   The ID of the Slack workspace authorized with AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] slack_channel_id
    #   The ID of the Slack channel. To get the ID, open Slack, right click
    #   on the channel name in the left pane, then choose Copy Link. The
    #   channel ID is the 9-character string at the end of the URL. For
    #   example, ABCBBLZZZ.
    #   @return [String]
    #
    # @!attribute [rw] slack_channel_name
    #   The name of the Slack Channel.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arns
    #   The ARNs of the SNS topics that deliver notifications to AWS
    #   Chatbot.
    #   @return [Array<String>]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role that defines the permissions for AWS
    #   Chatbot. This is a user-defined role that AWS Chatbot will assume.
    #   This is not the service-linked role. For more information, see IAM
    #   Policies for AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] configuration_name
    #   The name of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] logging_level
    #   Logging levels include ERROR, INFO, or NONE.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_policy_arns
    #   The list of IAM policy ARNs that are applied as channel guardrails.
    #   The AWS managed 'AdministratorAccess' policy is applied by default
    #   if this is not set.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_authorization_required
    #   Enables use of a user role requirement in your chat configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tags to apply to the configuration.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/CreateSlackChannelConfigurationRequest AWS API Documentation
    #
    class CreateSlackChannelConfigurationRequest < Struct.new(
      :slack_team_id,
      :slack_channel_id,
      :slack_channel_name,
      :sns_topic_arns,
      :iam_role_arn,
      :configuration_name,
      :logging_level,
      :guardrail_policy_arns,
      :user_authorization_required,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_configuration
    #   The configuration for a Slack channel configured with AWS Chatbot.
    #   @return [Types::SlackChannelConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/CreateSlackChannelConfigurationResult AWS API Documentation
    #
    class CreateSlackChannelConfigurationResult < Struct.new(
      :channel_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/CreateTeamsChannelConfigurationException AWS API Documentation
    #
    class CreateTeamsChannelConfigurationException < Aws::EmptyStructure; end

    # @!attribute [rw] channel_id
    #   The ID of the Microsoft Teams channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the Microsoft Teams channel.
    #   @return [String]
    #
    # @!attribute [rw] team_id
    #   The ID of the Microsoft Team authorized with AWS Chatbot. To get the
    #   team ID, you must perform the initial authorization flow with
    #   Microsoft Teams in the AWS Chatbot console. Then you can copy and
    #   paste the team ID from the console. For more details, see steps 1-4
    #   in Get started with Microsoft Teams in the AWS Chatbot Administrator
    #   Guide.
    #   @return [String]
    #
    # @!attribute [rw] team_name
    #   The name of the Microsoft Teams Team.
    #   @return [String]
    #
    # @!attribute [rw] tenant_id
    #   The ID of the Microsoft Teams tenant.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arns
    #   The ARNs of the SNS topics that deliver notifications to AWS
    #   Chatbot.
    #   @return [Array<String>]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role that defines the permissions for AWS
    #   Chatbot. This is a user-defined role that AWS Chatbot will assume.
    #   This is not the service-linked role. For more information, see IAM
    #   Policies for AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] configuration_name
    #   The name of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] logging_level
    #   Logging levels include ERROR, INFO, or NONE.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_policy_arns
    #   The list of IAM policy ARNs that are applied as channel guardrails.
    #   The AWS managed 'AdministratorAccess' policy is applied by default
    #   if this is not set.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_authorization_required
    #   Enables use of a user role requirement in your chat configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tags to apply to the configuration.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/CreateTeamsChannelConfigurationRequest AWS API Documentation
    #
    class CreateTeamsChannelConfigurationRequest < Struct.new(
      :channel_id,
      :channel_name,
      :team_id,
      :team_name,
      :tenant_id,
      :sns_topic_arns,
      :iam_role_arn,
      :configuration_name,
      :logging_level,
      :guardrail_policy_arns,
      :user_authorization_required,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_configuration
    #   The configuration for a Microsoft Teams channel configured with AWS
    #   Chatbot.
    #   @return [Types::TeamsChannelConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/CreateTeamsChannelConfigurationResult AWS API Documentation
    #
    class CreateTeamsChannelConfigurationResult < Struct.new(
      :channel_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteChimeWebhookConfigurationException AWS API Documentation
    #
    class DeleteChimeWebhookConfigurationException < Aws::EmptyStructure; end

    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the ChimeWebhookConfiguration to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteChimeWebhookConfigurationRequest AWS API Documentation
    #
    class DeleteChimeWebhookConfigurationRequest < Struct.new(
      :chat_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteChimeWebhookConfigurationResult AWS API Documentation
    #
    class DeleteChimeWebhookConfigurationResult < Aws::EmptyStructure; end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteMicrosoftTeamsUserIdentityException AWS API Documentation
    #
    class DeleteMicrosoftTeamsUserIdentityException < Aws::EmptyStructure; end

    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the MicrosoftTeamsChannelConfiguration associated with
    #   the user identity to delete.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   Id from Microsoft Teams for user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteMicrosoftTeamsUserIdentityRequest AWS API Documentation
    #
    class DeleteMicrosoftTeamsUserIdentityRequest < Struct.new(
      :chat_configuration_arn,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteMicrosoftTeamsUserIdentityResult AWS API Documentation
    #
    class DeleteMicrosoftTeamsUserIdentityResult < Aws::EmptyStructure; end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteSlackChannelConfigurationException AWS API Documentation
    #
    class DeleteSlackChannelConfigurationException < Aws::EmptyStructure; end

    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the SlackChannelConfiguration to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteSlackChannelConfigurationRequest AWS API Documentation
    #
    class DeleteSlackChannelConfigurationRequest < Struct.new(
      :chat_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteSlackChannelConfigurationResult AWS API Documentation
    #
    class DeleteSlackChannelConfigurationResult < Aws::EmptyStructure; end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteSlackUserIdentityException AWS API Documentation
    #
    class DeleteSlackUserIdentityException < Aws::EmptyStructure; end

    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the SlackChannelConfiguration associated with the user
    #   identity to delete.
    #   @return [String]
    #
    # @!attribute [rw] slack_team_id
    #   The ID of the Slack workspace authorized with AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] slack_user_id
    #   The ID of the user in Slack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteSlackUserIdentityRequest AWS API Documentation
    #
    class DeleteSlackUserIdentityRequest < Struct.new(
      :chat_configuration_arn,
      :slack_team_id,
      :slack_user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteSlackUserIdentityResult AWS API Documentation
    #
    class DeleteSlackUserIdentityResult < Aws::EmptyStructure; end

    # There was an issue deleting your Slack workspace.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteSlackWorkspaceAuthorizationFault AWS API Documentation
    #
    class DeleteSlackWorkspaceAuthorizationFault < Aws::EmptyStructure; end

    # @!attribute [rw] slack_team_id
    #   The ID of the Slack workspace authorized with AWS Chatbot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteSlackWorkspaceAuthorizationRequest AWS API Documentation
    #
    class DeleteSlackWorkspaceAuthorizationRequest < Struct.new(
      :slack_team_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteSlackWorkspaceAuthorizationResult AWS API Documentation
    #
    class DeleteSlackWorkspaceAuthorizationResult < Aws::EmptyStructure; end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteTeamsChannelConfigurationException AWS API Documentation
    #
    class DeleteTeamsChannelConfigurationException < Aws::EmptyStructure; end

    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the MicrosoftTeamsChannelConfiguration to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteTeamsChannelConfigurationRequest AWS API Documentation
    #
    class DeleteTeamsChannelConfigurationRequest < Struct.new(
      :chat_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteTeamsChannelConfigurationResult AWS API Documentation
    #
    class DeleteTeamsChannelConfigurationResult < Aws::EmptyStructure; end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteTeamsConfiguredTeamException AWS API Documentation
    #
    class DeleteTeamsConfiguredTeamException < Aws::EmptyStructure; end

    # @!attribute [rw] team_id
    #   The ID of the Microsoft Team authorized with AWS Chatbot. To get the
    #   team ID, you must perform the initial authorization flow with
    #   Microsoft Teams in the AWS Chatbot console. Then you can copy and
    #   paste the team ID from the console. For more details, see steps 1-4
    #   in Get started with Microsoft Teams in the AWS Chatbot Administrator
    #   Guide.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteTeamsConfiguredTeamRequest AWS API Documentation
    #
    class DeleteTeamsConfiguredTeamRequest < Struct.new(
      :team_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteTeamsConfiguredTeamResult AWS API Documentation
    #
    class DeleteTeamsConfiguredTeamResult < Aws::EmptyStructure; end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeChimeWebhookConfigurationsException AWS API Documentation
    #
    class DescribeChimeWebhookConfigurationsException < Aws::EmptyStructure; end

    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @!attribute [rw] chat_configuration_arn
    #   An optional ARN of a ChimeWebhookConfiguration to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeChimeWebhookConfigurationsRequest AWS API Documentation
    #
    class DescribeChimeWebhookConfigurationsRequest < Struct.new(
      :max_results,
      :next_token,
      :chat_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @!attribute [rw] webhook_configurations
    #   A list of Chime webhooks associated with the account.
    #   @return [Array<Types::ChimeWebhookConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeChimeWebhookConfigurationsResult AWS API Documentation
    #
    class DescribeChimeWebhookConfigurationsResult < Struct.new(
      :next_token,
      :webhook_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeSlackChannelConfigurationsException AWS API Documentation
    #
    class DescribeSlackChannelConfigurationsException < Aws::EmptyStructure; end

    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @!attribute [rw] chat_configuration_arn
    #   An optional ARN of a SlackChannelConfiguration to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeSlackChannelConfigurationsRequest AWS API Documentation
    #
    class DescribeSlackChannelConfigurationsRequest < Struct.new(
      :max_results,
      :next_token,
      :chat_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @!attribute [rw] slack_channel_configurations
    #   A list of Slack channel configurations.
    #   @return [Array<Types::SlackChannelConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeSlackChannelConfigurationsResult AWS API Documentation
    #
    class DescribeSlackChannelConfigurationsResult < Struct.new(
      :next_token,
      :slack_channel_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeSlackUserIdentitiesException AWS API Documentation
    #
    class DescribeSlackUserIdentitiesException < Aws::EmptyStructure; end

    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the SlackChannelConfiguration associated with the user
    #   identities to describe.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeSlackUserIdentitiesRequest AWS API Documentation
    #
    class DescribeSlackUserIdentitiesRequest < Struct.new(
      :chat_configuration_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] slack_user_identities
    #   A list of Slack User Identities.
    #   @return [Array<Types::SlackUserIdentity>]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeSlackUserIdentitiesResult AWS API Documentation
    #
    class DescribeSlackUserIdentitiesResult < Struct.new(
      :slack_user_identities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeSlackWorkspacesException AWS API Documentation
    #
    class DescribeSlackWorkspacesException < Aws::EmptyStructure; end

    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeSlackWorkspacesRequest AWS API Documentation
    #
    class DescribeSlackWorkspacesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] slack_workspaces
    #   A list of Slack Workspaces registered with AWS Chatbot.
    #   @return [Array<Types::SlackWorkspace>]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeSlackWorkspacesResult AWS API Documentation
    #
    class DescribeSlackWorkspacesResult < Struct.new(
      :slack_workspaces,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/GetAccountPreferencesException AWS API Documentation
    #
    class GetAccountPreferencesException < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/GetAccountPreferencesRequest AWS API Documentation
    #
    class GetAccountPreferencesRequest < Aws::EmptyStructure; end

    # @!attribute [rw] account_preferences
    #   Preferences which apply for AWS Chatbot usage in the calling AWS
    #   account.
    #   @return [Types::AccountPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/GetAccountPreferencesResult AWS API Documentation
    #
    class GetAccountPreferencesResult < Struct.new(
      :account_preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/GetTeamsChannelConfigurationException AWS API Documentation
    #
    class GetTeamsChannelConfigurationException < Aws::EmptyStructure; end

    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the MicrosoftTeamsChannelConfiguration to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/GetTeamsChannelConfigurationRequest AWS API Documentation
    #
    class GetTeamsChannelConfigurationRequest < Struct.new(
      :chat_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_configuration
    #   The configuration for a Microsoft Teams channel configured with AWS
    #   Chatbot.
    #   @return [Types::TeamsChannelConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/GetTeamsChannelConfigurationResult AWS API Documentation
    #
    class GetTeamsChannelConfigurationResult < Struct.new(
      :channel_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Customer/consumer-facing internal service exception.
    # https://w.amazon.com/index.php/AWS/API\_Standards/Exceptions#InternalServiceError
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/InternalServiceError AWS API Documentation
    #
    class InternalServiceError < Aws::EmptyStructure; end

    # Your request input doesn't meet the constraints that AWS Chatbot
    # requires.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Aws::EmptyStructure; end

    # Your request input doesn't meet the constraints that AWS Chatbot
    # requires.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Aws::EmptyStructure; end

    # You have exceeded a service limit for AWS Chatbot.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListMicrosoftTeamsConfiguredTeamsException AWS API Documentation
    #
    class ListMicrosoftTeamsConfiguredTeamsException < Aws::EmptyStructure; end

    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListMicrosoftTeamsConfiguredTeamsRequest AWS API Documentation
    #
    class ListMicrosoftTeamsConfiguredTeamsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_teams
    #   A list of teams in Microsoft Teams that have been configured with
    #   AWS Chatbot.
    #   @return [Array<Types::ConfiguredTeam>]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListMicrosoftTeamsConfiguredTeamsResult AWS API Documentation
    #
    class ListMicrosoftTeamsConfiguredTeamsResult < Struct.new(
      :configured_teams,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListMicrosoftTeamsUserIdentitiesException AWS API Documentation
    #
    class ListMicrosoftTeamsUserIdentitiesException < Aws::EmptyStructure; end

    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the MicrosoftTeamsChannelConfiguration associated with
    #   the user identities to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListMicrosoftTeamsUserIdentitiesRequest AWS API Documentation
    #
    class ListMicrosoftTeamsUserIdentitiesRequest < Struct.new(
      :chat_configuration_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] teams_user_identities
    #   User level permissions associated to a channel configuration.
    #   @return [Array<Types::TeamsUserIdentity>]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListMicrosoftTeamsUserIdentitiesResult AWS API Documentation
    #
    class ListMicrosoftTeamsUserIdentitiesResult < Struct.new(
      :teams_user_identities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags applied to the configuration.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListTeamsChannelConfigurationsException AWS API Documentation
    #
    class ListTeamsChannelConfigurationsException < Aws::EmptyStructure; end

    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @!attribute [rw] team_id
    #   The ID of the Microsoft Team authorized with AWS Chatbot. To get the
    #   team ID, you must perform the initial authorization flow with
    #   Microsoft Teams in the AWS Chatbot console. Then you can copy and
    #   paste the team ID from the console. For more details, see steps 1-4
    #   in Get started with Microsoft Teams in the AWS Chatbot Administrator
    #   Guide.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListTeamsChannelConfigurationsRequest AWS API Documentation
    #
    class ListTeamsChannelConfigurationsRequest < Struct.new(
      :max_results,
      :next_token,
      :team_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @!attribute [rw] team_channel_configurations
    #   A list of AWS Chatbot channel configurations for Microsoft Teams.
    #   @return [Array<Types::TeamsChannelConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListTeamsChannelConfigurationsResult AWS API Documentation
    #
    class ListTeamsChannelConfigurationsResult < Struct.new(
      :next_token,
      :team_channel_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # We were not able to find the resource for your request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Aws::EmptyStructure; end

    # An AWS Chatbot configuration for Slack.
    #
    # @!attribute [rw] slack_team_name
    #   Name of the Slack Workspace.
    #   @return [String]
    #
    # @!attribute [rw] slack_team_id
    #   The ID of the Slack workspace authorized with AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] slack_channel_id
    #   The ID of the Slack channel. To get the ID, open Slack, right click
    #   on the channel name in the left pane, then choose Copy Link. The
    #   channel ID is the 9-character string at the end of the URL. For
    #   example, ABCBBLZZZ.
    #   @return [String]
    #
    # @!attribute [rw] slack_channel_name
    #   The name of the Slack Channel.
    #   @return [String]
    #
    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the SlackChannelConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role that defines the permissions for AWS
    #   Chatbot. This is a user-defined role that AWS Chatbot will assume.
    #   This is not the service-linked role. For more information, see IAM
    #   Policies for AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arns
    #   The ARNs of the SNS topics that deliver notifications to AWS
    #   Chatbot.
    #   @return [Array<String>]
    #
    # @!attribute [rw] configuration_name
    #   The name of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] logging_level
    #   Logging levels include ERROR, INFO, or NONE.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_policy_arns
    #   The list of IAM policy ARNs that are applied as channel guardrails.
    #   The AWS managed 'AdministratorAccess' policy is applied by default
    #   if this is not set.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_authorization_required
    #   Enables use of a user role requirement in your chat configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tags applied to the configuration.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/SlackChannelConfiguration AWS API Documentation
    #
    class SlackChannelConfiguration < Struct.new(
      :slack_team_name,
      :slack_team_id,
      :slack_channel_id,
      :slack_channel_name,
      :chat_configuration_arn,
      :iam_role_arn,
      :sns_topic_arns,
      :configuration_name,
      :logging_level,
      :guardrail_policy_arns,
      :user_authorization_required,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifes a User level permission for a channel configuration.
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role that defines the permissions for AWS
    #   Chatbot. This is a user-defined role that AWS Chatbot will assume.
    #   This is not the service-linked role. For more information, see IAM
    #   Policies for AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the SlackChannelConfiguration associated with the user
    #   identity.
    #   @return [String]
    #
    # @!attribute [rw] slack_team_id
    #   The ID of the Slack workspace authorized with AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] slack_user_id
    #   The ID of the user in Slack.
    #   @return [String]
    #
    # @!attribute [rw] aws_user_identity
    #   The AWS user identity ARN used to associate a Slack User Identity
    #   with an IAM Role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/SlackUserIdentity AWS API Documentation
    #
    class SlackUserIdentity < Struct.new(
      :iam_role_arn,
      :chat_configuration_arn,
      :slack_team_id,
      :slack_user_id,
      :aws_user_identity)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Slack Workspace.
    #
    # @!attribute [rw] slack_team_id
    #   The ID of the Slack workspace authorized with AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] slack_team_name
    #   Name of the Slack Workspace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/SlackWorkspace AWS API Documentation
    #
    class SlackWorkspace < Struct.new(
      :slack_team_id,
      :slack_team_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag applied to the configuration.
    #
    # @!attribute [rw] tag_key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] tag_value
    #   The tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :tag_key,
      :tag_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to apply to the configuration.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # An AWS Chatbot configuration for Microsoft Teams.
    #
    # @!attribute [rw] channel_id
    #   The ID of the Microsoft Teams channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the Microsoft Teams channel.
    #   @return [String]
    #
    # @!attribute [rw] team_id
    #   The ID of the Microsoft Team authorized with AWS Chatbot. To get the
    #   team ID, you must perform the initial authorization flow with
    #   Microsoft Teams in the AWS Chatbot console. Then you can copy and
    #   paste the team ID from the console. For more details, see steps 1-4
    #   in Get started with Microsoft Teams in the AWS Chatbot Administrator
    #   Guide.
    #   @return [String]
    #
    # @!attribute [rw] team_name
    #   The name of the Microsoft Teams Team.
    #   @return [String]
    #
    # @!attribute [rw] tenant_id
    #   The ID of the Microsoft Teams tenant.
    #   @return [String]
    #
    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the MicrosoftTeamsChannelConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role that defines the permissions for AWS
    #   Chatbot. This is a user-defined role that AWS Chatbot will assume.
    #   This is not the service-linked role. For more information, see IAM
    #   Policies for AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arns
    #   The ARNs of the SNS topics that deliver notifications to AWS
    #   Chatbot.
    #   @return [Array<String>]
    #
    # @!attribute [rw] configuration_name
    #   The name of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] logging_level
    #   Logging levels include ERROR, INFO, or NONE.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_policy_arns
    #   The list of IAM policy ARNs that are applied as channel guardrails.
    #   The AWS managed 'AdministratorAccess' policy is applied by default
    #   if this is not set.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_authorization_required
    #   Enables use of a user role requirement in your chat configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tags applied to the configuration.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/TeamsChannelConfiguration AWS API Documentation
    #
    class TeamsChannelConfiguration < Struct.new(
      :channel_id,
      :channel_name,
      :team_id,
      :team_name,
      :tenant_id,
      :chat_configuration_arn,
      :iam_role_arn,
      :sns_topic_arns,
      :configuration_name,
      :logging_level,
      :guardrail_policy_arns,
      :user_authorization_required,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifes a user level permission for a channel configuration.
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role that defines the permissions for AWS
    #   Chatbot. This is a user-defined role that AWS Chatbot will assume.
    #   This is not the service-linked role. For more information, see IAM
    #   Policies for AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the MicrosoftTeamsChannelConfiguration associated with
    #   the user identity.
    #   @return [String]
    #
    # @!attribute [rw] team_id
    #   The ID of the Microsoft Team authorized with AWS Chatbot. To get the
    #   team ID, you must perform the initial authorization flow with
    #   Microsoft Teams in the AWS Chatbot console. Then you can copy and
    #   paste the team ID from the console. For more details, see steps 1-4
    #   in Get started with Microsoft Teams in the AWS Chatbot Administrator
    #   Guide.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   Id from Microsoft Teams for user.
    #   @return [String]
    #
    # @!attribute [rw] aws_user_identity
    #   The AWS user identity ARN used to associate a Microsoft Teams User
    #   Identity with an IAM Role.
    #   @return [String]
    #
    # @!attribute [rw] teams_channel_id
    #   The ID of the Microsoft Teams channel.
    #   @return [String]
    #
    # @!attribute [rw] teams_tenant_id
    #   The ID of the Microsoft Teams tenant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/TeamsUserIdentity AWS API Documentation
    #
    class TeamsUserIdentity < Struct.new(
      :iam_role_arn,
      :chat_configuration_arn,
      :team_id,
      :user_id,
      :aws_user_identity,
      :teams_channel_id,
      :teams_tenant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The supplied list of tags contains too many tags.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The ARN of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the configuration.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateAccountPreferencesException AWS API Documentation
    #
    class UpdateAccountPreferencesException < Aws::EmptyStructure; end

    # @!attribute [rw] user_authorization_required
    #   Enables use of a user role requirement in your chat configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] training_data_collection_enabled
    #   Turns on training data collection. This helps improve the AWS
    #   Chatbot experience by allowing AWS Chatbot to store and use your
    #   customer information, such as AWS Chatbot configurations,
    #   notifications, user inputs, AWS Chatbot generated responses, and
    #   interaction data. This data helps us to continuously improve and
    #   develop Artificial Intelligence (AI) technologies. Your data is not
    #   shared with any third parties and is protected using sophisticated
    #   controls to prevent unauthorized access and misuse. AWS Chatbot does
    #   not store or use interactions in chat channels with Amazon Q for
    #   training AWS Chatbot’s AI technologies.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateAccountPreferencesRequest AWS API Documentation
    #
    class UpdateAccountPreferencesRequest < Struct.new(
      :user_authorization_required,
      :training_data_collection_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_preferences
    #   Preferences which apply for AWS Chatbot usage in the calling AWS
    #   account.
    #   @return [Types::AccountPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateAccountPreferencesResult AWS API Documentation
    #
    class UpdateAccountPreferencesResult < Struct.new(
      :account_preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateChimeWebhookConfigurationException AWS API Documentation
    #
    class UpdateChimeWebhookConfigurationException < Aws::EmptyStructure; end

    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the ChimeWebhookConfiguration to update.
    #   @return [String]
    #
    # @!attribute [rw] webhook_description
    #   Description of the webhook. Recommend using the convention
    #   `RoomName/WebhookName`. See Chime setup tutorial for more details:
    #   https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html.
    #   @return [String]
    #
    # @!attribute [rw] webhook_url
    #   URL for the Chime webhook.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arns
    #   The ARNs of the SNS topics that deliver notifications to AWS
    #   Chatbot.
    #   @return [Array<String>]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role that defines the permissions for AWS
    #   Chatbot. This is a user-defined role that AWS Chatbot will assume.
    #   This is not the service-linked role. For more information, see IAM
    #   Policies for AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] logging_level
    #   Logging levels include ERROR, INFO, or NONE.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateChimeWebhookConfigurationRequest AWS API Documentation
    #
    class UpdateChimeWebhookConfigurationRequest < Struct.new(
      :chat_configuration_arn,
      :webhook_description,
      :webhook_url,
      :sns_topic_arns,
      :iam_role_arn,
      :logging_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] webhook_configuration
    #   Chime webhook configuration.
    #   @return [Types::ChimeWebhookConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateChimeWebhookConfigurationResult AWS API Documentation
    #
    class UpdateChimeWebhookConfigurationResult < Struct.new(
      :webhook_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateSlackChannelConfigurationException AWS API Documentation
    #
    class UpdateSlackChannelConfigurationException < Aws::EmptyStructure; end

    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the SlackChannelConfiguration to update.
    #   @return [String]
    #
    # @!attribute [rw] slack_channel_id
    #   The ID of the Slack channel. To get the ID, open Slack, right click
    #   on the channel name in the left pane, then choose Copy Link. The
    #   channel ID is the 9-character string at the end of the URL. For
    #   example, ABCBBLZZZ.
    #   @return [String]
    #
    # @!attribute [rw] slack_channel_name
    #   The name of the Slack Channel.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arns
    #   The ARNs of the SNS topics that deliver notifications to AWS
    #   Chatbot.
    #   @return [Array<String>]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role that defines the permissions for AWS
    #   Chatbot. This is a user-defined role that AWS Chatbot will assume.
    #   This is not the service-linked role. For more information, see IAM
    #   Policies for AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] logging_level
    #   Logging levels include ERROR, INFO, or NONE.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_policy_arns
    #   The list of IAM policy ARNs that are applied as channel guardrails.
    #   The AWS managed 'AdministratorAccess' policy is applied by default
    #   if this is not set.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_authorization_required
    #   Enables use of a user role requirement in your chat configuration.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateSlackChannelConfigurationRequest AWS API Documentation
    #
    class UpdateSlackChannelConfigurationRequest < Struct.new(
      :chat_configuration_arn,
      :slack_channel_id,
      :slack_channel_name,
      :sns_topic_arns,
      :iam_role_arn,
      :logging_level,
      :guardrail_policy_arns,
      :user_authorization_required)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_configuration
    #   The configuration for a Slack channel configured with AWS Chatbot.
    #   @return [Types::SlackChannelConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateSlackChannelConfigurationResult AWS API Documentation
    #
    class UpdateSlackChannelConfigurationResult < Struct.new(
      :channel_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateTeamsChannelConfigurationException AWS API Documentation
    #
    class UpdateTeamsChannelConfigurationException < Aws::EmptyStructure; end

    # @!attribute [rw] chat_configuration_arn
    #   The ARN of the MicrosoftTeamsChannelConfiguration to update.
    #   @return [String]
    #
    # @!attribute [rw] channel_id
    #   The ID of the Microsoft Teams channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the Microsoft Teams channel.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arns
    #   The ARNs of the SNS topics that deliver notifications to AWS
    #   Chatbot.
    #   @return [Array<String>]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role that defines the permissions for AWS
    #   Chatbot. This is a user-defined role that AWS Chatbot will assume.
    #   This is not the service-linked role. For more information, see IAM
    #   Policies for AWS Chatbot.
    #   @return [String]
    #
    # @!attribute [rw] logging_level
    #   Logging levels include ERROR, INFO, or NONE.
    #   @return [String]
    #
    # @!attribute [rw] guardrail_policy_arns
    #   The list of IAM policy ARNs that are applied as channel guardrails.
    #   The AWS managed 'AdministratorAccess' policy is applied by default
    #   if this is not set.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_authorization_required
    #   Enables use of a user role requirement in your chat configuration.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateTeamsChannelConfigurationRequest AWS API Documentation
    #
    class UpdateTeamsChannelConfigurationRequest < Struct.new(
      :chat_configuration_arn,
      :channel_id,
      :channel_name,
      :sns_topic_arns,
      :iam_role_arn,
      :logging_level,
      :guardrail_policy_arns,
      :user_authorization_required)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_configuration
    #   The configuration for a Microsoft Teams channel configured with AWS
    #   Chatbot.
    #   @return [Types::TeamsChannelConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateTeamsChannelConfigurationResult AWS API Documentation
    #
    class UpdateTeamsChannelConfigurationResult < Struct.new(
      :channel_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
