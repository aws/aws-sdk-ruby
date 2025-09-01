# frozen_string_literal: true

# This is generated code!

module Aws::Chatbot
  # This module contains the types returned by client operations.
  module Types

    # <p>Preferences related to AWS Chatbot usage in the calling AWS account.</p>
    # @!attribute user_authorization_required
    #   <p>Enables use of a user role requirement in your chat configuration.</p>
    #   @return [Boolean]
    # @!attribute training_data_collection_enabled
    #   <p>Turns on training data collection.</p>
    #            <p>This helps improve the AWS Chatbot experience by allowing AWS Chatbot to store and use your customer information, such as AWS Chatbot configurations, notifications, user inputs, AWS Chatbot generated responses, and interaction data. This data helps us to continuously improve and develop Artificial Intelligence (AI) technologies. Your data is not shared with any third parties and is protected using sophisticated controls to prevent unauthorized access and misuse. AWS Chatbot does not store or use interactions in chat channels with Amazon Q for training AI technologies for AWS Chatbot.
    #     </p>
    #   @return [Boolean]
    class AccountPreferences < Struct.new(
      :user_authorization_required,
      :training_data_collection_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource
    #   <p>The resource Amazon Resource Name (ARN) to link.</p>
    #   @return [String]
    # @!attribute chat_configuration
    #   <p>The channel configuration to associate with the resource.</p>
    #   @return [String]
    class AssociateToConfigurationRequest < Struct.new(
      :resource,
      :chat_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class AssociateToConfigurationResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A listing of an association with a channel configuration.</p>
    # @!attribute resource
    #   <p>The Amazon Resource Name (ARN) of the resource (for example, a custom action).</p>
    #   @return [String]
    class AssociationListing < Struct.new(
      :resource,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An AWS Chatbot configuration for Amazon Chime.</p>
    # @!attribute webhook_description
    #   <p>A description of the webhook. We recommend using the convention <code>RoomName/WebhookName</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html">Tutorial: Get started with Amazon Chime</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #    </p>
    #   @return [String]
    # @!attribute chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the ChimeWebhookConfiguration.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    #   @return [String]
    # @!attribute sns_topic_arns
    #   <p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>
    #   @return [Array<String>]
    # @!attribute configuration_name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute logging_level
    #   <p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute state
    #   <p>Either <code>ENABLED</code> or <code>DISABLED</code>. The resource returns <code>DISABLED</code> if the organization's AWS Chatbot policy has explicitly denied that configuration.
    #   	  For example, if Amazon Chime is disabled.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>Provided if State is <code>DISABLED</code>. Provides context as to why the resource is disabled.</p>
    #   @return [String]
    class ChimeWebhookConfiguration < Struct.new(
      :webhook_description,
      :chat_configuration_arn,
      :iam_role_arn,
      :sns_topic_arns,
      :configuration_name,
      :logging_level,
      :tags,
      :state,
      :state_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A Microsoft Teams team that is authorized with AWS Chatbot.</p>
    # @!attribute tenant_id
    #   <p>The ID of the Microsoft Teams tenant.</p>
    #   @return [String]
    # @!attribute team_id
    #   <p> The ID of the Microsoft Teams authorized with AWS Chatbot.</p>
    #            <p>To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console. For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup">Step 1: Configure a Microsoft Teams client</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #   </p>
    #   @return [String]
    # @!attribute team_name
    #   <p>The name of the Microsoft Teams Team.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Either <code>ENABLED</code> or <code>DISABLED</code>. The resource returns <code>DISABLED</code> if the organization's AWS Chatbot policy has explicitly denied that configuration.
    #   	  For example, if Amazon Chime is disabled.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>Provided if State is <code>DISABLED</code>. Provides context as to why the resource is disabled.</p>
    #   @return [String]
    class ConfiguredTeam < Struct.new(
      :tenant_id,
      :team_id,
      :team_name,
      :state,
      :state_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>There was an issue processing your request.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class CreateChimeWebhookConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute webhook_description
    #   <p>A description of the webhook. We recommend using the convention <code>RoomName/WebhookName</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html">Tutorial: Get started with Amazon Chime</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #    </p>
    #   @return [String]
    # @!attribute webhook_url
    #   <p>The URL for the Amazon Chime webhook.</p>
    #   @return [String]
    # @!attribute sns_topic_arns
    #   <p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>
    #   @return [Array<String>]
    # @!attribute iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    #   @return [String]
    # @!attribute configuration_name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute logging_level
    #   <p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class CreateChimeWebhookConfigurationRequest < Struct.new(
      :webhook_description,
      :webhook_url,
      :sns_topic_arns,
      :iam_role_arn,
      :configuration_name,
      :logging_level,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute webhook_configuration
    #   <p>An Amazon Chime webhook configuration.</p>
    #   @return [Types::ChimeWebhookConfiguration]
    class CreateChimeWebhookConfigurationResult < Struct.new(
      :webhook_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute definition
    #   <p>The definition of the command to run when invoked as an alias or as an action button.</p>
    #   @return [Types::CustomActionDefinition]
    # @!attribute alias_name
    #   <p>The name used to invoke this action in a chat channel. For example, <code>@aws run my-alias</code>.</p>
    #   @return [String]
    # @!attribute attachments
    #   <p>Defines when this custom action button should be attached to a notification.</p>
    #   @return [Array<Types::CustomActionAttachment>]
    # @!attribute tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, subsequent retries with the same client token returns the result from the original successful request.</p>
    #            <p>If you do not specify a client token, one is automatically generated by the SDK.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p>The name of the custom action. This name is included in the Amazon Resource Name (ARN).</p>
    #   @return [String]
    class CreateCustomActionRequest < Struct.new(
      :definition,
      :alias_name,
      :attachments,
      :tags,
      :client_token,
      :action_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute custom_action_arn
    #   <p>The fully defined ARN of the custom action.</p>
    #   @return [String]
    class CreateCustomActionResult < Struct.new(
      :custom_action_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class CreateSlackChannelConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute slack_team_id
    #   <p>The ID of the Slack workspace authorized with AWS Chatbot.</p>
    #   @return [String]
    # @!attribute slack_channel_id
    #   <p>The ID of the Slack channel.</p>
    #            <p>To get this ID, open Slack, right click on the channel name in the left pane, then choose Copy Link. The channel ID is the 9-character string at the end of the URL. For example, ABCBBLZZZ.
    #     </p>
    #   @return [String]
    # @!attribute slack_channel_name
    #   <p>The name of the Slack channel.</p>
    #   @return [String]
    # @!attribute sns_topic_arns
    #   <p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>
    #   @return [Array<String>]
    # @!attribute iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    #   @return [String]
    # @!attribute configuration_name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute logging_level
    #   <p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>
    #   @return [String]
    # @!attribute guardrail_policy_arns
    #   <p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.
    #     </p>
    #   @return [Array<String>]
    # @!attribute user_authorization_required
    #   <p>Enables use of a user role requirement in your chat configuration.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    #   @return [Array<Types::Tag>]
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_configuration
    #   <p>The configuration for a Slack channel configured with AWS Chatbot.</p>
    #   @return [Types::SlackChannelConfiguration]
    class CreateSlackChannelConfigurationResult < Struct.new(
      :channel_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class CreateTeamsChannelConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_id
    #   <p>The ID of the Microsoft Teams channel.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the Microsoft Teams channel.</p>
    #   @return [String]
    # @!attribute team_id
    #   <p> The ID of the Microsoft Teams authorized with AWS Chatbot.</p>
    #            <p>To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console. For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup">Step 1: Configure a Microsoft Teams client</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #   </p>
    #   @return [String]
    # @!attribute team_name
    #   <p>The name of the Microsoft Teams Team.</p>
    #   @return [String]
    # @!attribute tenant_id
    #   <p>The ID of the Microsoft Teams tenant.</p>
    #   @return [String]
    # @!attribute sns_topic_arns
    #   <p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>
    #   @return [Array<String>]
    # @!attribute iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    #   @return [String]
    # @!attribute configuration_name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute logging_level
    #   <p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>
    #   @return [String]
    # @!attribute guardrail_policy_arns
    #   <p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.
    #     </p>
    #   @return [Array<String>]
    # @!attribute user_authorization_required
    #   <p>Enables use of a user role requirement in your chat configuration.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    #   @return [Array<Types::Tag>]
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_configuration
    #   <p>The configuration for a Microsoft Teams channel configured with AWS Chatbot.</p>
    #   @return [Types::TeamsChannelConfiguration]
    class CreateTeamsChannelConfigurationResult < Struct.new(
      :channel_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a parameterized command that can be invoked as an alias or as a notification button in the chat client.</p>
    # @!attribute custom_action_arn
    #   <p>The fully defined Amazon Resource Name (ARN) of the custom action.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The definition of the command to run when invoked an alias or as an action button.</p>
    #   @return [Types::CustomActionDefinition]
    # @!attribute alias_name
    #   <p>The name used to invoke this action in the chat channel. For example, <code>@aws run my-alias</code>.</p>
    #   @return [String]
    # @!attribute attachments
    #   <p>Defines when this custom action button should be attached to a notification.</p>
    #   @return [Array<Types::CustomActionAttachment>]
    # @!attribute action_name
    #   <p>The name of the custom action that is included in the ARN.</p>
    #   @return [String]
    class CustomAction < Struct.new(
      :custom_action_arn,
      :definition,
      :alias_name,
      :attachments,
      :action_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines when a custom action button should be attached to a notification.</p>
    # @!attribute notification_type
    #   <p>The type of notification that the custom action should be attached to.</p>
    #   @return [String]
    # @!attribute button_text
    #   <p>The text of the button that appears on the notification.</p>
    #   @return [String]
    # @!attribute criteria
    #   <p>The criteria for when a button should be shown based on values in the notification.</p>
    #   @return [Array<Types::CustomActionAttachmentCriteria>]
    # @!attribute variables
    #   <p>The variables to extract from the notification.</p>
    #   @return [Hash<String, String>]
    class CustomActionAttachment < Struct.new(
      :notification_type,
      :button_text,
      :criteria,
      :variables,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A criteria for when a button should be shown based on values in the notification</p>
    # @!attribute operator
    #   <p>The operation to perform on the named variable.</p>
    #   @return [String]
    # @!attribute variable_name
    #   <p>The name of the variable to operate on.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A value that is compared with the actual value of the variable based on the behavior of the operator.</p>
    #   @return [String]
    class CustomActionAttachmentCriteria < Struct.new(
      :operator,
      :variable_name,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CustomActionAttachmentCriteriaOperator
      HAS_VALUE = 'HAS_VALUE'
      EQUALS = 'EQUALS'
    end

    # <p>The definition of the command to run when invoked as an alias or as an action button.</p>
    # @!attribute command_text
    #   <p>The command string to run which may include variables by prefixing with a dollar sign ($).</p>
    #   @return [String]
    class CustomActionDefinition < Struct.new(
      :command_text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class DeleteChimeWebhookConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the ChimeWebhookConfiguration to delete.</p>
    #   @return [String]
    class DeleteChimeWebhookConfigurationRequest < Struct.new(
      :chat_configuration_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteChimeWebhookConfigurationResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute custom_action_arn
    #   <p>The fully defined ARN of the custom action.</p>
    #   @return [String]
    class DeleteCustomActionRequest < Struct.new(
      :custom_action_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteCustomActionResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class DeleteMicrosoftTeamsUserIdentityException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute chat_configuration_arn
    #   <p>The ARN of the MicrosoftTeamsChannelConfiguration associated with the user identity to delete.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The Microsoft Teams user ID.</p>
    #   @return [String]
    class DeleteMicrosoftTeamsUserIdentityRequest < Struct.new(
      :chat_configuration_arn,
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteMicrosoftTeamsUserIdentityResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class DeleteSlackChannelConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the SlackChannelConfiguration to delete.</p>
    #   @return [String]
    class DeleteSlackChannelConfigurationRequest < Struct.new(
      :chat_configuration_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteSlackChannelConfigurationResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class DeleteSlackUserIdentityException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute chat_configuration_arn
    #   <p>The ARN of the SlackChannelConfiguration associated with the user identity to delete.</p>
    #   @return [String]
    # @!attribute slack_team_id
    #   <p>The ID of the Slack workspace authorized with AWS Chatbot.</p>
    #   @return [String]
    # @!attribute slack_user_id
    #   <p>The ID of the user in Slack</p>
    #   @return [String]
    class DeleteSlackUserIdentityRequest < Struct.new(
      :chat_configuration_arn,
      :slack_team_id,
      :slack_user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteSlackUserIdentityResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>There was an issue deleting your Slack workspace.</p>
    # @!attribute message
    #   @return [String]
    class DeleteSlackWorkspaceAuthorizationFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute slack_team_id
    #   <p>The ID of the Slack workspace authorized with AWS Chatbot.</p>
    #   @return [String]
    class DeleteSlackWorkspaceAuthorizationRequest < Struct.new(
      :slack_team_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteSlackWorkspaceAuthorizationResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class DeleteTeamsChannelConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the MicrosoftTeamsChannelConfiguration associated with the user identity to delete.</p>
    #   @return [String]
    class DeleteTeamsChannelConfigurationRequest < Struct.new(
      :chat_configuration_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteTeamsChannelConfigurationResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class DeleteTeamsConfiguredTeamException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute team_id
    #   <p>The ID of the Microsoft Teams team authorized with AWS Chatbot.</p>
    #            <p>To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console. For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup">Step 1: Configure a Microsoft Teams client</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #   </p>
    #   @return [String]
    class DeleteTeamsConfiguredTeamRequest < Struct.new(
      :team_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteTeamsConfiguredTeamResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class DescribeChimeWebhookConfigurationsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
    #     </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
    #     </p>
    #   @return [String]
    # @!attribute chat_configuration_arn
    #   <p>An optional Amazon Resource Name (ARN) of a ChimeWebhookConfiguration to describe.</p>
    #   @return [String]
    class DescribeChimeWebhookConfigurationsRequest < Struct.new(
      :max_results,
      :next_token,
      :chat_configuration_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
    #    </p>
    #   @return [String]
    # @!attribute webhook_configurations
    #   <p>A list of Amazon Chime webhooks associated with the account.</p>
    #   @return [Array<Types::ChimeWebhookConfiguration>]
    class DescribeChimeWebhookConfigurationsResult < Struct.new(
      :next_token,
      :webhook_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class DescribeSlackChannelConfigurationsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
    #     </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
    #     </p>
    #   @return [String]
    # @!attribute chat_configuration_arn
    #   <p>An optional Amazon Resource Name (ARN) of a SlackChannelConfiguration to describe.</p>
    #   @return [String]
    class DescribeSlackChannelConfigurationsRequest < Struct.new(
      :max_results,
      :next_token,
      :chat_configuration_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
    #     </p>
    #   @return [String]
    # @!attribute slack_channel_configurations
    #   <p>A list of Slack channel configurations.</p>
    #   @return [Array<Types::SlackChannelConfiguration>]
    class DescribeSlackChannelConfigurationsResult < Struct.new(
      :next_token,
      :slack_channel_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class DescribeSlackUserIdentitiesException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the SlackChannelConfiguration associated with the user identities to describe.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p> An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
    #     </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
    #     </p>
    #   @return [Integer]
    class DescribeSlackUserIdentitiesRequest < Struct.new(
      :chat_configuration_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute slack_user_identities
    #   <p>A list of Slack User Identities.</p>
    #   @return [Array<Types::SlackUserIdentity>]
    # @!attribute next_token
    #   <p> An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
    #     </p>
    #   @return [String]
    class DescribeSlackUserIdentitiesResult < Struct.new(
      :slack_user_identities,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class DescribeSlackWorkspacesException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
    #     </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
    #     </p>
    #   @return [String]
    class DescribeSlackWorkspacesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute slack_workspaces
    #   <p>A list of Slack workspaces registered with AWS Chatbot.</p>
    #   @return [Array<Types::SlackWorkspace>]
    # @!attribute next_token
    #   <p> An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
    #     </p>
    #   @return [String]
    class DescribeSlackWorkspacesResult < Struct.new(
      :slack_workspaces,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource
    #   <p>The resource (for example, a custom action) Amazon Resource Name (ARN) to unlink.</p>
    #   @return [String]
    # @!attribute chat_configuration
    #   <p>The channel configuration the resource is being disassociated from.</p>
    #   @return [String]
    class DisassociateFromConfigurationRequest < Struct.new(
      :resource,
      :chat_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DisassociateFromConfigurationResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class GetAccountPreferencesException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetAccountPreferencesRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_preferences
    #   <p>The preferences related to AWS Chatbot usage in the calling AWS account.</p>
    #   @return [Types::AccountPreferences]
    class GetAccountPreferencesResult < Struct.new(
      :account_preferences,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute custom_action_arn
    #   <p>Returns the fully defined Amazon Resource Name (ARN) of the custom action.</p>
    #   @return [String]
    class GetCustomActionRequest < Struct.new(
      :custom_action_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute custom_action
    #   <p>Returns the custom action.</p>
    #   @return [Types::CustomAction]
    class GetCustomActionResult < Struct.new(
      :custom_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class GetTeamsChannelConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the MicrosoftTeamsChannelConfiguration to retrieve.</p>
    #   @return [String]
    class GetTeamsChannelConfigurationRequest < Struct.new(
      :chat_configuration_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_configuration
    #   <p>The configuration for a Microsoft Teams channel configured with AWS Chatbot.</p>
    #   @return [Types::TeamsChannelConfiguration]
    class GetTeamsChannelConfigurationResult < Struct.new(
      :channel_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Unexpected error during processing of request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceError < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Your request input doesn't meet the constraints required by AWS Chatbot.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Your request input doesn't meet the constraints required by AWS Chatbot.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have exceeded a service limit for AWS Chatbot.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute chat_configuration
    #   <p>The channel configuration to list associations for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>
    #   @return [String]
    class ListAssociationsRequest < Struct.new(
      :chat_configuration,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute associations
    #   <p>The resources associated with this channel configuration.</p>
    #   @return [Array<Types::AssociationListing>]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>
    #   @return [String]
    class ListAssociationsResult < Struct.new(
      :associations,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>
    #   @return [String]
    class ListCustomActionsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute custom_actions
    #   <p>A list of custom actions.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>
    #   @return [String]
    class ListCustomActionsResult < Struct.new(
      :custom_actions,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class ListMicrosoftTeamsConfiguredTeamsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>
    #   @return [String]
    class ListMicrosoftTeamsConfiguredTeamsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute configured_teams
    #   <p>A list of teams in Microsoft Teams that are configured with AWS Chatbot.</p>
    #   @return [Array<Types::ConfiguredTeam>]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>
    #   @return [String]
    class ListMicrosoftTeamsConfiguredTeamsResult < Struct.new(
      :configured_teams,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class ListMicrosoftTeamsUserIdentitiesException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the MicrosoftTeamsChannelConfiguration associated with the user identities to list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
    #     </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.
    #     </p>
    #   @return [Integer]
    class ListMicrosoftTeamsUserIdentitiesRequest < Struct.new(
      :chat_configuration_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute teams_user_identities
    #   <p>User level permissions associated to a channel configuration.</p>
    #   @return [Array<Types::TeamsUserIdentity>]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.
    #     </p>
    #   @return [String]
    class ListMicrosoftTeamsUserIdentitiesResult < Struct.new(
      :teams_user_identities,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to list tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Key-value pairs that are assigned to a resource, usually for the purpose of grouping and searching for items. Tags are metadata that you define.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class ListTeamsChannelConfigurationsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>
    #   @return [String]
    # @!attribute team_id
    #   <p> The ID of the Microsoft Teams authorized with AWS Chatbot.</p>
    #            <p>To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console. For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup">Step 1: Configure a Microsoft Teams client</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #   </p>
    #   @return [String]
    class ListTeamsChannelConfigurationsRequest < Struct.new(
      :max_results,
      :next_token,
      :team_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>
    #   @return [String]
    # @!attribute team_channel_configurations
    #   <p>A list of AWS Chatbot channel configurations for Microsoft Teams.</p>
    #   @return [Array<Types::TeamsChannelConfiguration>]
    class ListTeamsChannelConfigurationsResult < Struct.new(
      :next_token,
      :team_channel_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We were unable to find the resource for your request</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An AWS Chatbot configuration for Slack.</p>
    # @!attribute slack_team_name
    #   <p>Name of the Slack workspace.</p>
    #   @return [String]
    # @!attribute slack_team_id
    #   <p>The ID of the Slack workspace authorized with Amazon Chime.</p>
    #   @return [String]
    # @!attribute slack_channel_id
    #   <p>The ID of the Slack channel.</p>
    #            <p>To get this ID, open Slack, right click on the channel name in the left pane, then choose Copy Link. The channel ID is the 9-character string at the end of the URL. For example, ABCBBLZZZ.
    #     </p>
    #   @return [String]
    # @!attribute slack_channel_name
    #   <p>The name of the Slack channel.</p>
    #   @return [String]
    # @!attribute chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the SlackChannelConfiguration.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    #   @return [String]
    # @!attribute sns_topic_arns
    #   <p>The ARNs of the SNS topics that deliver notifications to AWS Chatbot.</p>
    #   @return [Array<String>]
    # @!attribute configuration_name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute logging_level
    #   <p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>
    #   @return [String]
    # @!attribute guardrail_policy_arns
    #   <p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.
    #     </p>
    #   @return [Array<String>]
    # @!attribute user_authorization_required
    #   <p>Enables use of a user role requirement in your chat configuration.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute state
    #   <p>Either <code>ENABLED</code> or <code>DISABLED</code>. The resource returns <code>DISABLED</code> if the organization's AWS Chatbot policy has explicitly denied that configuration.
    #   	  For example, if Amazon Chime is disabled.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>Provided if State is <code>DISABLED</code>. Provides context as to why the resource is disabled.</p>
    #   @return [String]
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
      :tags,
      :state,
      :state_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Identifes a user level permission for a channel configuration. </p>
    # @!attribute iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    #   @return [String]
    # @!attribute chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the SlackChannelConfiguration associated with the user identity to delete.</p>
    #   @return [String]
    # @!attribute slack_team_id
    #   <p>The ID of the Slack workspace authorized with AWS Chatbot.</p>
    #   @return [String]
    # @!attribute slack_user_id
    #   <p>The ID of the user in Slack</p>
    #   @return [String]
    # @!attribute aws_user_identity
    #   <p>The AWS user identity ARN used to associate a Slack user ID with an IAM Role.</p>
    #   @return [String]
    class SlackUserIdentity < Struct.new(
      :iam_role_arn,
      :chat_configuration_arn,
      :slack_team_id,
      :slack_user_id,
      :aws_user_identity,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A Slack workspace. </p>
    # @!attribute slack_team_id
    #   <p>The ID of the Slack workspace authorized with AWS Chatbot.</p>
    #   @return [String]
    # @!attribute slack_team_name
    #   <p>The name of the Slack workspace.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Either <code>ENABLED</code> or <code>DISABLED</code>. The resource returns <code>DISABLED</code> if the organization's AWS Chatbot policy has explicitly denied that configuration.
    #   	  For example, if Amazon Chime is disabled.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>Provided if State is <code>DISABLED</code>. Provides context as to why the resource is disabled.</p>
    #   @return [String]
    class SlackWorkspace < Struct.new(
      :slack_team_id,
      :slack_team_name,
      :state,
      :state_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A key-value pair. A tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.</p>
    #          <important>
    #             <p>Do not include confidential or sensitive information in this field. </p>
    #          </important>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>
    # @!attribute tag_key
    #   <p>The key of the tag.</p>
    #   @return [String]
    # @!attribute tag_value
    #   <p>The value of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :tag_key,
      :tag_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the configuration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to apply to the configuration.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An AWS Chatbot configuration for Microsoft Teams.</p>
    # @!attribute channel_id
    #   <p>The ID of the Microsoft Teams channel.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the Microsoft Teams channel.</p>
    #   @return [String]
    # @!attribute team_id
    #   <p> The ID of the Microsoft Teams authorized with AWS Chatbot.</p>
    #            <p>To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console. For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup">Step 1: Configure a Microsoft Teams client</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #   </p>
    #   @return [String]
    # @!attribute team_name
    #   <p>The name of the Microsoft Teams Team.</p>
    #   @return [String]
    # @!attribute tenant_id
    #   <p>The ID of the Microsoft Teams tenant.</p>
    #   @return [String]
    # @!attribute chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the MicrosoftTeamsChannelConfiguration associated with the user identity to delete.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    #   @return [String]
    # @!attribute sns_topic_arns
    #   <p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>
    #   @return [Array<String>]
    # @!attribute configuration_name
    #   <p>The name of the configuration.</p>
    #   @return [String]
    # @!attribute logging_level
    #   <p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>
    #   @return [String]
    # @!attribute guardrail_policy_arns
    #   <p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.
    #     </p>
    #   @return [Array<String>]
    # @!attribute user_authorization_required
    #   <p>Enables use of a user role requirement in your chat configuration.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A map of tags assigned to a resource. A tag is a string-to-string map of key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute state
    #   <p>Either <code>ENABLED</code> or <code>DISABLED</code>. The resource returns <code>DISABLED</code> if the organization's AWS Chatbot policy has explicitly denied that configuration.
    #   	  For example, if Amazon Chime is disabled.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>Provided if State is <code>DISABLED</code>. Provides context as to why the resource is disabled.</p>
    #   @return [String]
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
      :tags,
      :state,
      :state_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Identifes a user level permission for a channel configuration.</p>
    # @!attribute iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    #   @return [String]
    # @!attribute chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the MicrosoftTeamsChannelConfiguration associated with the user identity to delete.</p>
    #   @return [String]
    # @!attribute team_id
    #   <p> The ID of the Microsoft Teams authorized with AWS Chatbot.</p>
    #            <p>To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console. For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup">Step 1: Configure a Microsoft Teams client</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #   </p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The Microsoft Teams user ID.</p>
    #   @return [String]
    # @!attribute aws_user_identity
    #   <p>The AWS user identity ARN used to associate a Microsoft Teams user Identity with an IAM Role.</p>
    #   @return [String]
    # @!attribute teams_channel_id
    #   <p>The ID of the Microsoft Teams channel.</p>
    #   @return [String]
    # @!attribute teams_tenant_id
    #   <p>The ID of the Microsoft Teams tenant.</p>
    #   @return [String]
    class TeamsUserIdentity < Struct.new(
      :iam_role_arn,
      :chat_configuration_arn,
      :team_id,
      :user_id,
      :aws_user_identity,
      :teams_channel_id,
      :teams_tenant_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The supplied list of tags contains too many tags.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because it doesn't have valid credentials for the target resource.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The value of the resource that will have the tag removed. An Amazon Resource Name (ARN) is an identifier for a specific AWS resource, such as a server, user, or role.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>TagKeys are key-value pairs assigned to ARNs that can be used to group and search for resources by type. This metadata can be attached to resources for any purpose.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class UpdateAccountPreferencesException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_authorization_required
    #   <p>Enables use of a user role requirement in your chat configuration.</p>
    #   @return [Boolean]
    # @!attribute training_data_collection_enabled
    #   <p>Turns on training data collection.</p>
    #            <p>This helps improve the AWS Chatbot experience by allowing AWS Chatbot to store and use your customer information, such as AWS Chatbot configurations, notifications, user inputs, AWS Chatbot generated responses, and interaction data. This data helps us to continuously improve and develop Artificial Intelligence (AI) technologies. Your data is not shared with any third parties and is protected using sophisticated controls to prevent unauthorized access and misuse. AWS Chatbot does not store or use interactions in chat channels with Amazon Q for training AI technologies for AWS Chatbot.
    #     </p>
    #   @return [Boolean]
    class UpdateAccountPreferencesRequest < Struct.new(
      :user_authorization_required,
      :training_data_collection_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_preferences
    #   <p>Preferences related to AWS Chatbot usage in the calling AWS account.</p>
    #   @return [Types::AccountPreferences]
    class UpdateAccountPreferencesResult < Struct.new(
      :account_preferences,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class UpdateChimeWebhookConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the ChimeWebhookConfiguration to update.</p>
    #   @return [String]
    # @!attribute webhook_description
    #   <p>A description of the webhook. We recommend using the convention <code>RoomName/WebhookName</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html">Tutorial: Get started with Amazon Chime</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #    </p>
    #   @return [String]
    # @!attribute webhook_url
    #   <p>The URL for the Amazon Chime webhook.</p>
    #   @return [String]
    # @!attribute sns_topic_arns
    #   <p>The ARNs of the SNS topics that deliver notifications to AWS Chatbot.</p>
    #   @return [Array<String>]
    # @!attribute iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    #   @return [String]
    # @!attribute logging_level
    #   <p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>
    #   @return [String]
    class UpdateChimeWebhookConfigurationRequest < Struct.new(
      :chat_configuration_arn,
      :webhook_description,
      :webhook_url,
      :sns_topic_arns,
      :iam_role_arn,
      :logging_level,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute webhook_configuration
    #   <p>A Amazon Chime webhook configuration.</p>
    #   @return [Types::ChimeWebhookConfiguration]
    class UpdateChimeWebhookConfigurationResult < Struct.new(
      :webhook_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute custom_action_arn
    #   <p>The fully defined Amazon Resource Name (ARN) of the custom action.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The definition of the command to run when invoked as an alias or as an action button.</p>
    #   @return [Types::CustomActionDefinition]
    # @!attribute alias_name
    #   <p>The name used to invoke this action in the chat channel. For example, <code>@aws run my-alias</code>.</p>
    #   @return [String]
    # @!attribute attachments
    #   <p>Defines when this custom action button should be attached to a notification.</p>
    #   @return [Array<Types::CustomActionAttachment>]
    class UpdateCustomActionRequest < Struct.new(
      :custom_action_arn,
      :definition,
      :alias_name,
      :attachments,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute custom_action_arn
    #   <p>The fully defined ARN of the custom action.</p>
    #   @return [String]
    class UpdateCustomActionResult < Struct.new(
      :custom_action_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class UpdateSlackChannelConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the SlackChannelConfiguration to update.</p>
    #   @return [String]
    # @!attribute slack_channel_id
    #   <p>The ID of the Slack channel.</p>
    #            <p>To get this ID, open Slack, right click on the channel name in the left pane, then choose Copy Link. The channel ID is the 9-character string at the end of the URL. For example, ABCBBLZZZ.
    #     </p>
    #   @return [String]
    # @!attribute slack_channel_name
    #   <p>The name of the Slack channel.</p>
    #   @return [String]
    # @!attribute sns_topic_arns
    #   <p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>
    #   @return [Array<String>]
    # @!attribute iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    #   @return [String]
    # @!attribute logging_level
    #   <p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>
    #   @return [String]
    # @!attribute guardrail_policy_arns
    #   <p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.
    #     </p>
    #   @return [Array<String>]
    # @!attribute user_authorization_required
    #   <p>Enables use of a user role requirement in your chat configuration.</p>
    #   @return [Boolean]
    class UpdateSlackChannelConfigurationRequest < Struct.new(
      :chat_configuration_arn,
      :slack_channel_id,
      :slack_channel_name,
      :sns_topic_arns,
      :iam_role_arn,
      :logging_level,
      :guardrail_policy_arns,
      :user_authorization_required,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_configuration
    #   <p>The configuration for a Slack channel configured with AWS Chatbot.</p>
    #   @return [Types::SlackChannelConfiguration]
    class UpdateSlackChannelConfigurationResult < Struct.new(
      :channel_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class UpdateTeamsChannelConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute chat_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the TeamsChannelConfiguration to update.</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>The ID of the Microsoft Teams channel.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the Microsoft Teams channel.</p>
    #   @return [String]
    # @!attribute sns_topic_arns
    #   <p>The Amazon Resource Names (ARNs) of the SNS topics that deliver notifications to AWS Chatbot.</p>
    #   @return [Array<String>]
    # @!attribute iam_role_arn
    #   <p>A user-defined role that AWS Chatbot assumes. This is not the service-linked role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html">IAM policies for AWS Chatbot</a> in the <i> AWS Chatbot Administrator Guide</i>.
    #     </p>
    #   @return [String]
    # @!attribute logging_level
    #   <p>Logging levels include <code>ERROR</code>, <code>INFO</code>, or <code>NONE</code>.</p>
    #   @return [String]
    # @!attribute guardrail_policy_arns
    #   <p>The list of IAM policy ARNs that are applied as channel guardrails. The AWS managed <code>AdministratorAccess</code> policy is applied by default if this is not set.
    #     </p>
    #   @return [Array<String>]
    # @!attribute user_authorization_required
    #   <p>Enables use of a user role requirement in your chat configuration.</p>
    #   @return [Boolean]
    class UpdateTeamsChannelConfigurationRequest < Struct.new(
      :chat_configuration_arn,
      :channel_id,
      :channel_name,
      :sns_topic_arns,
      :iam_role_arn,
      :logging_level,
      :guardrail_policy_arns,
      :user_authorization_required,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute channel_configuration
    #   <p>The configuration for a Microsoft Teams channel configured with AWS Chatbot.</p>
    #   @return [Types::TeamsChannelConfiguration]
    class UpdateTeamsChannelConfigurationResult < Struct.new(
      :channel_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
