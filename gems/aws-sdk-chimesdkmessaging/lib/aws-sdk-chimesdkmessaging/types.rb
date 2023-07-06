# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ChimeSDKMessaging
  module Types

    # Summary of the membership details of an `AppInstanceUser`.
    #
    # @!attribute [rw] type
    #   The type of `ChannelMembership`.
    #   @return [String]
    #
    # @!attribute [rw] read_marker_timestamp
    #   The time at which an `AppInstanceUser` last marked a channel as
    #   read.
    #   @return [Time]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel that the `AppInstanceUser` is a member of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/AppInstanceUserMembershipSummary AWS API Documentation
    #
    class AppInstanceUserMembershipSummary < Struct.new(
      :type,
      :read_marker_timestamp,
      :sub_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_flow_arn
    #   The ARN of the channel flow.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user making the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/AssociateChannelFlowRequest AWS API Documentation
    #
    class AssociateChannelFlowRequest < Struct.new(
      :channel_arn,
      :channel_flow_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input parameters don't match the service's restrictions.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The membership information, including member ARNs, the channel ARN,
    # and membership types.
    #
    # @!attribute [rw] invited_by
    #   The identifier of the member who invited another member.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] type
    #   The membership types set for the channel members.
    #   @return [String]
    #
    # @!attribute [rw] members
    #   The users successfully added to the request.
    #   @return [Array<Types::Identity>]
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel to which you're adding members.
    #   @return [String]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/BatchChannelMemberships AWS API Documentation
    #
    class BatchChannelMemberships < Struct.new(
      :invited_by,
      :type,
      :members,
      :channel_arn,
      :sub_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of failed member ARNs, error codes, and error messages.
    #
    # @!attribute [rw] member_arn
    #   The `AppInstanceUserArn` of the member that the service couldn't
    #   add.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/BatchCreateChannelMembershipError AWS API Documentation
    #
    class BatchCreateChannelMembershipError < Struct.new(
      :member_arn,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel to which you're adding users or bots.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The membership type of a user, `DEFAULT` or `HIDDEN`. Default
    #   members are always returned as part of `ListChannelMemberships`.
    #   Hidden members are only returned if the type filter in
    #   `ListChannelMemberships` equals `HIDDEN`. Otherwise hidden members
    #   are not returned. This is only supported by moderators.
    #   @return [String]
    #
    # @!attribute [rw] member_arns
    #   The ARNs of the members you want to add to the channel. Only
    #   `AppInstanceUsers` and `AppInstanceBots` can be added as a channel
    #   member.
    #   @return [Array<String>]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when creating membership in a SubChannel for a
    #   moderator in an elastic channel.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/BatchCreateChannelMembershipRequest AWS API Documentation
    #
    class BatchCreateChannelMembershipRequest < Struct.new(
      :channel_arn,
      :type,
      :member_arns,
      :chime_bearer,
      :sub_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_channel_memberships
    #   The list of channel memberships in the response.
    #   @return [Types::BatchChannelMemberships]
    #
    # @!attribute [rw] errors
    #   If the action fails for one or more of the memberships in the
    #   request, a list of the memberships is returned, along with error
    #   codes and error messages.
    #   @return [Array<Types::BatchCreateChannelMembershipError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/BatchCreateChannelMembershipResponse AWS API Documentation
    #
    class BatchCreateChannelMembershipResponse < Struct.new(
      :batch_channel_memberships,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a channel.
    #
    # @!attribute [rw] name
    #   The name of a channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_arn
    #   The ARN of a channel.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The mode of the channel.
    #   @return [String]
    #
    # @!attribute [rw] privacy
    #   The channel's privacy setting.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The channel's metadata.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The `AppInstanceUser` who created the channel.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the `AppInstanceUser` created the channel.
    #   @return [Time]
    #
    # @!attribute [rw] last_message_timestamp
    #   The time at which a member sent the last message in the channel.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time at which a channel was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] channel_flow_arn
    #   The ARN of the channel flow.
    #   @return [String]
    #
    # @!attribute [rw] elastic_channel_configuration
    #   The attributes required to configure and create an elastic channel.
    #   An elastic channel can support a maximum of 1-million members.
    #   @return [Types::ElasticChannelConfiguration]
    #
    # @!attribute [rw] expiration_settings
    #   Settings that control when a channel expires.
    #   @return [Types::ExpirationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/Channel AWS API Documentation
    #
    class Channel < Struct.new(
      :name,
      :channel_arn,
      :mode,
      :privacy,
      :metadata,
      :created_by,
      :created_timestamp,
      :last_message_timestamp,
      :last_updated_timestamp,
      :channel_flow_arn,
      :elastic_channel_configuration,
      :expiration_settings)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # Summary of details of a channel associated with channel flow.
    #
    # @!attribute [rw] name
    #   The name of the channel flow.
    #   @return [String]
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The mode of the channel.
    #   @return [String]
    #
    # @!attribute [rw] privacy
    #   The channel's privacy setting.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The channel's metadata.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelAssociatedWithFlowSummary AWS API Documentation
    #
    class ChannelAssociatedWithFlowSummary < Struct.new(
      :name,
      :channel_arn,
      :mode,
      :privacy,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # The details of a channel ban.
    #
    # @!attribute [rw] member
    #   The member being banned from the channel.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel from which a member is being banned.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the ban was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The `AppInstanceUser` who created the ban.
    #   @return [Types::Identity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelBan AWS API Documentation
    #
    class ChannelBan < Struct.new(
      :member,
      :channel_arn,
      :created_timestamp,
      :created_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the details of a `ChannelBan`.
    #
    # @!attribute [rw] member
    #   The member being banned from a channel.
    #   @return [Types::Identity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelBanSummary AWS API Documentation
    #
    class ChannelBanSummary < Struct.new(
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a channel flow.
    #
    # @!attribute [rw] channel_flow_arn
    #   The ARN of the channel flow.
    #   @return [String]
    #
    # @!attribute [rw] processors
    #   Information about the processor Lambda functions.
    #   @return [Array<Types::Processor>]
    #
    # @!attribute [rw] name
    #   The name of the channel flow.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the channel flow was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time at which a channel flow was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelFlow AWS API Documentation
    #
    class ChannelFlow < Struct.new(
      :channel_flow_arn,
      :processors,
      :name,
      :created_timestamp,
      :last_updated_timestamp)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] callback_id
    #   The identifier passed to the processor by the service when invoked.
    #   Use the identifier to call back the service.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] delete_resource
    #   When a processor determines that a message needs to be `DENIED`,
    #   pass this parameter with a value of true.
    #   @return [Boolean]
    #
    # @!attribute [rw] channel_message
    #   Stores information about the processed message.
    #   @return [Types::ChannelMessageCallback]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelFlowCallbackRequest AWS API Documentation
    #
    class ChannelFlowCallbackRequest < Struct.new(
      :callback_id,
      :channel_arn,
      :delete_resource,
      :channel_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] callback_id
    #   The call back ID passed in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelFlowCallbackResponse AWS API Documentation
    #
    class ChannelFlowCallbackResponse < Struct.new(
      :channel_arn,
      :callback_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of details of a channel flow.
    #
    # @!attribute [rw] channel_flow_arn
    #   The ARN of the channel flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the channel flow.
    #   @return [String]
    #
    # @!attribute [rw] processors
    #   Information about the processor Lambda functions.
    #   @return [Array<Types::Processor>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelFlowSummary AWS API Documentation
    #
    class ChannelFlowSummary < Struct.new(
      :channel_flow_arn,
      :name,
      :processors)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # The details of a channel member.
    #
    # @!attribute [rw] invited_by
    #   The identifier of the member who invited another member.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] type
    #   The membership type set for the channel member.
    #   @return [String]
    #
    # @!attribute [rw] member
    #   The data of the channel member.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the member's channel.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the channel membership was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time at which a channel membership was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel that a user belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelMembership AWS API Documentation
    #
    class ChannelMembership < Struct.new(
      :invited_by,
      :type,
      :member,
      :channel_arn,
      :created_timestamp,
      :last_updated_timestamp,
      :sub_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the channel membership details of an `AppInstanceUser`.
    #
    # @!attribute [rw] channel_summary
    #   Returns the channel data for an `AppInstance`.
    #   @return [Types::ChannelSummary]
    #
    # @!attribute [rw] app_instance_user_membership_summary
    #   Returns the channel membership data for an `AppInstance`.
    #   @return [Types::AppInstanceUserMembershipSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelMembershipForAppInstanceUserSummary AWS API Documentation
    #
    class ChannelMembershipForAppInstanceUserSummary < Struct.new(
      :channel_summary,
      :app_instance_user_membership_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The channel membership preferences for an `AppInstanceUser`.
    #
    # @!attribute [rw] push_notifications
    #   The push notification configuration of a message.
    #   @return [Types::PushNotificationPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelMembershipPreferences AWS API Documentation
    #
    class ChannelMembershipPreferences < Struct.new(
      :push_notifications)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the details of a `ChannelMembership`.
    #
    # @!attribute [rw] member
    #   A member's summary data.
    #   @return [Types::Identity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelMembershipSummary AWS API Documentation
    #
    class ChannelMembershipSummary < Struct.new(
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a message in a channel.
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The ID of a message.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the channel message. For Amazon Lex V2 bot responses,
    #   this field holds a list of messages originating from the bot. For
    #   more information, refer to [Processing responses from an
    #   AppInstanceBot][1] in the *Amazon Chime SDK Messaging Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The message metadata.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The message type.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the message was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_edited_timestamp
    #   The time at which a message was edited.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time at which a message was updated.
    #   @return [Time]
    #
    # @!attribute [rw] sender
    #   The message sender.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] redacted
    #   Hides the content of a message.
    #   @return [Boolean]
    #
    # @!attribute [rw] persistence
    #   The persistence setting for a channel message.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the channel message.
    #   @return [Types::ChannelMessageStatusStructure]
    #
    # @!attribute [rw] message_attributes
    #   The attributes for the channel message. For Amazon Lex V2 bot
    #   responses, the attributes are mapped to specific fields from the
    #   bot. For more information, refer to [Processing responses from an
    #   AppInstanceBot][1] in the *Amazon Chime SDK Messaging Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html
    #   @return [Hash<String,Types::MessageAttributeValue>]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the channel message. For Amazon Lex V2 bot
    #   responses, the content type is `application/amz-chime-lex-msgs` for
    #   success responses and `application/amz-chime-lex-error` for failure
    #   responses. For more information, refer to [Processing responses from
    #   an AppInstanceBot][1] in the *Amazon Chime SDK Messaging Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target of a message, a sender, a user, or a bot. Only the target
    #   and the sender can view targeted messages. Only users who can see
    #   targeted messages can take actions on them. However, administrators
    #   can delete targeted messages that they can’t see.
    #   @return [Array<Types::Target>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelMessage AWS API Documentation
    #
    class ChannelMessage < Struct.new(
      :channel_arn,
      :message_id,
      :content,
      :metadata,
      :type,
      :created_timestamp,
      :last_edited_timestamp,
      :last_updated_timestamp,
      :sender,
      :redacted,
      :persistence,
      :status,
      :message_attributes,
      :sub_channel_id,
      :content_type,
      :target)
      SENSITIVE = [:content, :metadata, :content_type]
      include Aws::Structure
    end

    # Stores information about a callback.
    #
    # @!attribute [rw] message_id
    #   The message ID.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The message content. For Amazon Lex V2 bot responses, this field
    #   holds a list of messages originating from the bot. For more
    #   information, refer to [Processing responses from an
    #   AppInstanceBot][1] in the *Amazon Chime SDK Messaging Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The message metadata.
    #   @return [String]
    #
    # @!attribute [rw] push_notification
    #   The push notification configuration of the message.
    #   @return [Types::PushNotificationConfiguration]
    #
    # @!attribute [rw] message_attributes
    #   The attributes for the channel message. For Amazon Lex V2 bot
    #   responses, the attributes are mapped to specific fields from the
    #   bot. For more information, refer to [Processing responses from an
    #   AppInstanceBot][1] in the *Amazon Chime SDK Messaging Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html
    #   @return [Hash<String,Types::MessageAttributeValue>]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the call-back message. For Amazon Lex V2 bot
    #   responses, the content type is `application/amz-chime-lex-msgs` for
    #   success responses and `application/amz-chime-lex-error` for failure
    #   responses. For more information, refer to [Processing responses from
    #   an AppInstanceBot][1] in the *Amazon Chime SDK Messaging Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelMessageCallback AWS API Documentation
    #
    class ChannelMessageCallback < Struct.new(
      :message_id,
      :content,
      :metadata,
      :push_notification,
      :message_attributes,
      :sub_channel_id,
      :content_type)
      SENSITIVE = [:content, :metadata, :content_type]
      include Aws::Structure
    end

    # Stores information about a message status.
    #
    # @!attribute [rw] value
    #   The message status value.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   Contains more details about the message status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelMessageStatusStructure AWS API Documentation
    #
    class ChannelMessageStatusStructure < Struct.new(
      :value,
      :detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the messages in a `Channel`.
    #
    # @!attribute [rw] message_id
    #   The ID of the message.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the channel message. For Amazon Lex V2 bot responses,
    #   this field holds a list of messages originating from the bot. For
    #   more information, refer to [Processing responses from an
    #   AppInstanceBot][1] in the *Amazon Chime SDK Messaging Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the message.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of message.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the message summary was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time at which a message was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_edited_timestamp
    #   The time at which a message was last edited.
    #   @return [Time]
    #
    # @!attribute [rw] sender
    #   The message sender.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] redacted
    #   Indicates whether a message was redacted.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The message status. The status value is `SENT` for messages sent to
    #   a channel without a channel flow. For channels associated with
    #   channel flow, the value determines the processing stage.
    #   @return [Types::ChannelMessageStatusStructure]
    #
    # @!attribute [rw] message_attributes
    #   The attributes for the channel message. For Amazon Lex V2 bot
    #   responses, the attributes are mapped to specific fields from the
    #   bot. For more information, refer to [Processing responses from an
    #   AppInstanceBot][1] in the *Amazon Chime SDK Messaging Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html
    #   @return [Hash<String,Types::MessageAttributeValue>]
    #
    # @!attribute [rw] content_type
    #   The content type of the channel message listed in the summary. For
    #   Amazon Lex V2 bot responses, the content type is
    #   `application/amz-chime-lex-msgs` for success responses and
    #   `application/amz-chime-lex-error` for failure responses. For more
    #   information, refer to [Processing responses from an
    #   AppInstanceBot][1] in the *Amazon Chime SDK Messaging Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target of a message, a sender, a user, or a bot. Only the target
    #   and the sender can view targeted messages. Only users who can see
    #   targeted messages can take actions on them. However, administrators
    #   can delete targeted messages that they can’t see.
    #   @return [Array<Types::Target>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelMessageSummary AWS API Documentation
    #
    class ChannelMessageSummary < Struct.new(
      :message_id,
      :content,
      :metadata,
      :type,
      :created_timestamp,
      :last_updated_timestamp,
      :last_edited_timestamp,
      :sender,
      :redacted,
      :status,
      :message_attributes,
      :content_type,
      :target)
      SENSITIVE = [:content, :metadata, :content_type]
      include Aws::Structure
    end

    # Summary of the details of a moderated channel.
    #
    # @!attribute [rw] channel_summary
    #   Summary of the details of a `Channel`.
    #   @return [Types::ChannelSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelModeratedByAppInstanceUserSummary AWS API Documentation
    #
    class ChannelModeratedByAppInstanceUserSummary < Struct.new(
      :channel_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a channel moderator.
    #
    # @!attribute [rw] moderator
    #   The moderator's data.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the moderator's channel.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the moderator was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The `AppInstanceUser` who created the moderator.
    #   @return [Types::Identity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelModerator AWS API Documentation
    #
    class ChannelModerator < Struct.new(
      :moderator,
      :channel_arn,
      :created_timestamp,
      :created_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the details of a `ChannelModerator`.
    #
    # @!attribute [rw] moderator
    #   The data for a moderator.
    #   @return [Types::Identity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelModeratorSummary AWS API Documentation
    #
    class ChannelModeratorSummary < Struct.new(
      :moderator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the details of a `Channel`.
    #
    # @!attribute [rw] name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The mode of the channel.
    #   @return [String]
    #
    # @!attribute [rw] privacy
    #   The privacy setting of the channel.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the channel.
    #   @return [String]
    #
    # @!attribute [rw] last_message_timestamp
    #   The time at which the last persistent message visible to the caller
    #   in a channel was sent.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelSummary AWS API Documentation
    #
    class ChannelSummary < Struct.new(
      :name,
      :channel_arn,
      :mode,
      :privacy,
      :metadata,
      :last_message_timestamp)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # The request could not be processed because of conflict in the current
    # state of the resource.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the ban request.
    #   @return [String]
    #
    # @!attribute [rw] member_arn
    #   The `AppInstanceUserArn` of the member being banned.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelBanRequest AWS API Documentation
    #
    class CreateChannelBanRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the response to the ban request.
    #   @return [String]
    #
    # @!attribute [rw] member
    #   The `ChannelArn` and `BannedIdentity` of the member in the ban
    #   response.
    #   @return [Types::Identity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelBanResponse AWS API Documentation
    #
    class CreateChannelBanResponse < Struct.new(
      :channel_arn,
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the channel flow request.
    #   @return [String]
    #
    # @!attribute [rw] processors
    #   Information about the processor Lambda functions.
    #   @return [Array<Types::Processor>]
    #
    # @!attribute [rw] name
    #   The name of the channel flow.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the creation request.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_request_token
    #   The client token for the request. An Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelFlowRequest AWS API Documentation
    #
    class CreateChannelFlowRequest < Struct.new(
      :app_instance_arn,
      :processors,
      :name,
      :tags,
      :client_request_token)
      SENSITIVE = [:name, :client_request_token]
      include Aws::Structure
    end

    # @!attribute [rw] channel_flow_arn
    #   The ARN of the channel flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelFlowResponse AWS API Documentation
    #
    class CreateChannelFlowResponse < Struct.new(
      :channel_flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel to which you're adding users.
    #   @return [String]
    #
    # @!attribute [rw] member_arn
    #   The `AppInstanceUserArn` of the member you want to add to the
    #   channel.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The membership type of a user, `DEFAULT` or `HIDDEN`. Default
    #   members are always returned as part of `ListChannelMemberships`.
    #   Hidden members are only returned if the type filter in
    #   `ListChannelMemberships` equals `HIDDEN`. Otherwise hidden members
    #   are not returned. This is only supported by moderators.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when creating membership in a SubChannel for a
    #   moderator in an elastic channel.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelMembershipRequest AWS API Documentation
    #
    class CreateChannelMembershipRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :type,
      :chime_bearer,
      :sub_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] member
    #   The ARN and metadata of the member being added.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelMembershipResponse AWS API Documentation
    #
    class CreateChannelMembershipResponse < Struct.new(
      :channel_arn,
      :member,
      :sub_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_moderator_arn
    #   The `AppInstanceUserArn` of the moderator.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelModeratorRequest AWS API Documentation
    #
    class CreateChannelModeratorRequest < Struct.new(
      :channel_arn,
      :channel_moderator_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_moderator
    #   The ARNs of the channel and the moderator.
    #   @return [Types::Identity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelModeratorResponse AWS API Documentation
    #
    class CreateChannelModeratorResponse < Struct.new(
      :channel_arn,
      :channel_moderator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the channel request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The channel mode: `UNRESTRICTED` or `RESTRICTED`. Administrators,
    #   moderators, and channel members can add themselves and other members
    #   to unrestricted channels. Only administrators and moderators can add
    #   members to restricted channels.
    #   @return [String]
    #
    # @!attribute [rw] privacy
    #   The channel's privacy level: `PUBLIC` or `PRIVATE`. Private
    #   channels aren't discoverable by users outside the channel. Public
    #   channels are discoverable by anyone in the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the creation request. Limited to 1KB and UTF-8.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The client token for the request. An `Idempotency` token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the creation request.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] channel_id
    #   The ID of the channel in the request.
    #   @return [String]
    #
    # @!attribute [rw] member_arns
    #   The ARNs of the channel members in the request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] moderator_arns
    #   The ARNs of the channel moderators in the request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] elastic_channel_configuration
    #   The attributes required to configure and create an elastic channel.
    #   An elastic channel can support a maximum of 1-million users,
    #   excluding moderators.
    #   @return [Types::ElasticChannelConfiguration]
    #
    # @!attribute [rw] expiration_settings
    #   Settings that control the interval after which the channel is
    #   automatically deleted.
    #   @return [Types::ExpirationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelRequest AWS API Documentation
    #
    class CreateChannelRequest < Struct.new(
      :app_instance_arn,
      :name,
      :mode,
      :privacy,
      :metadata,
      :client_request_token,
      :tags,
      :chime_bearer,
      :channel_id,
      :member_arns,
      :moderator_arns,
      :elastic_channel_configuration,
      :expiration_settings)
      SENSITIVE = [:name, :metadata, :client_request_token, :channel_id]
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelResponse AWS API Documentation
    #
    class CreateChannelResponse < Struct.new(
      :channel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel from which the `AppInstanceUser` was banned.
    #   @return [String]
    #
    # @!attribute [rw] member_arn
    #   The ARN of the `AppInstanceUser` that you want to reinstate.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteChannelBanRequest AWS API Documentation
    #
    class DeleteChannelBanRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_flow_arn
    #   The ARN of the channel flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteChannelFlowRequest AWS API Documentation
    #
    class DeleteChannelFlowRequest < Struct.new(
      :channel_flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel from which you want to remove the user.
    #   @return [String]
    #
    # @!attribute [rw] member_arn
    #   The `AppInstanceUserArn` of the member that you're removing from
    #   the channel.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only for use by moderators.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteChannelMembershipRequest AWS API Documentation
    #
    class DeleteChannelMembershipRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      :sub_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The ID of the message being deleted.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when deleting messages in a SubChannel that the user
    #   belongs to.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteChannelMessageRequest AWS API Documentation
    #
    class DeleteChannelMessageRequest < Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer,
      :sub_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_moderator_arn
    #   The `AppInstanceUserArn` of the moderator being deleted.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteChannelModeratorRequest AWS API Documentation
    #
    class DeleteChannelModeratorRequest < Struct.new(
      :channel_arn,
      :channel_moderator_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel being deleted.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteChannelRequest AWS API Documentation
    #
    class DeleteChannelRequest < Struct.new(
      :channel_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the streaming configurations being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteMessagingStreamingConfigurationsRequest AWS API Documentation
    #
    class DeleteMessagingStreamingConfigurationsRequest < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel from which the user is banned.
    #   @return [String]
    #
    # @!attribute [rw] member_arn
    #   The `AppInstanceUserArn` of the member being banned.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelBanRequest AWS API Documentation
    #
    class DescribeChannelBanRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_ban
    #   The details of the ban.
    #   @return [Types::ChannelBan]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelBanResponse AWS API Documentation
    #
    class DescribeChannelBanResponse < Struct.new(
      :channel_ban)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_flow_arn
    #   The ARN of the channel flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelFlowRequest AWS API Documentation
    #
    class DescribeChannelFlowRequest < Struct.new(
      :channel_flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_flow
    #   The channel flow details.
    #   @return [Types::ChannelFlow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelFlowResponse AWS API Documentation
    #
    class DescribeChannelFlowResponse < Struct.new(
      :channel_flow)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel to which the user belongs.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the user or bot in a channel.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelMembershipForAppInstanceUserRequest AWS API Documentation
    #
    class DescribeChannelMembershipForAppInstanceUserRequest < Struct.new(
      :channel_arn,
      :app_instance_user_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_membership
    #   The channel to which a user belongs.
    #   @return [Types::ChannelMembershipForAppInstanceUserSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelMembershipForAppInstanceUserResponse AWS API Documentation
    #
    class DescribeChannelMembershipForAppInstanceUserResponse < Struct.new(
      :channel_membership)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] member_arn
    #   The `AppInstanceUserArn` of the member.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the request. The response contains an
    #   `ElasticChannelConfiguration` object.
    #
    #   <note markdown="1"> Only required to get a user’s SubChannel membership details.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelMembershipRequest AWS API Documentation
    #
    class DescribeChannelMembershipRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      :sub_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_membership
    #   The details of the membership.
    #   @return [Types::ChannelMembership]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelMembershipResponse AWS API Documentation
    #
    class DescribeChannelMembershipResponse < Struct.new(
      :channel_membership)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the moderated channel.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the user or bot in the moderated channel.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelModeratedByAppInstanceUserRequest AWS API Documentation
    #
    class DescribeChannelModeratedByAppInstanceUserRequest < Struct.new(
      :channel_arn,
      :app_instance_user_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel
    #   The moderated channel.
    #   @return [Types::ChannelModeratedByAppInstanceUserSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelModeratedByAppInstanceUserResponse AWS API Documentation
    #
    class DescribeChannelModeratedByAppInstanceUserResponse < Struct.new(
      :channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_moderator_arn
    #   The `AppInstanceUserArn` of the channel moderator.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelModeratorRequest AWS API Documentation
    #
    class DescribeChannelModeratorRequest < Struct.new(
      :channel_arn,
      :channel_moderator_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_moderator
    #   The details of the channel moderator.
    #   @return [Types::ChannelModerator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelModeratorResponse AWS API Documentation
    #
    class DescribeChannelModeratorResponse < Struct.new(
      :channel_moderator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelRequest AWS API Documentation
    #
    class DescribeChannelRequest < Struct.new(
      :channel_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel
    #   The channel details.
    #   @return [Types::Channel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelResponse AWS API Documentation
    #
    class DescribeChannelResponse < Struct.new(
      :channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_flow_arn
    #   The ARN of the channel flow.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user making the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DisassociateChannelFlowRequest AWS API Documentation
    #
    class DisassociateChannelFlowRequest < Struct.new(
      :channel_arn,
      :channel_flow_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # The attributes required to configure and create an elastic channel. An
    # elastic channel can support a maximum of 1-million members.
    #
    # @!attribute [rw] maximum_sub_channels
    #   The maximum number of SubChannels that you want to allow in the
    #   elastic channel.
    #   @return [Integer]
    #
    # @!attribute [rw] target_memberships_per_sub_channel
    #   The maximum number of members allowed in a SubChannel.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_membership_percentage
    #   The minimum allowed percentage of TargetMembershipsPerSubChannel
    #   users. Ceil of the calculated value is used in balancing members
    #   among SubChannels of the elastic channel.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ElasticChannelConfiguration AWS API Documentation
    #
    class ElasticChannelConfiguration < Struct.new(
      :maximum_sub_channels,
      :target_memberships_per_sub_channel,
      :minimum_membership_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings that control the interval after which a channel is deleted.
    #
    # @!attribute [rw] expiration_days
    #   The period in days after which the system automatically deletes a
    #   channel.
    #   @return [Integer]
    #
    # @!attribute [rw] expiration_criterion
    #   The conditions that must be met for a channel to expire.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ExpirationSettings AWS API Documentation
    #
    class ExpirationSettings < Struct.new(
      :expiration_days,
      :expiration_criterion)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is permanently forbidden from making the request.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] member_arn
    #   The `AppInstanceUserArn` of the member retrieving the preferences.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetChannelMembershipPreferencesRequest AWS API Documentation
    #
    class GetChannelMembershipPreferencesRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] member
    #   The details of a user.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] preferences
    #   The channel membership preferences for an `AppInstanceUser` .
    #   @return [Types::ChannelMembershipPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetChannelMembershipPreferencesResponse AWS API Documentation
    #
    class GetChannelMembershipPreferencesResponse < Struct.new(
      :channel_arn,
      :member,
      :preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The ID of the message.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when getting messages in a SubChannel that the user
    #   belongs to.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetChannelMessageRequest AWS API Documentation
    #
    class GetChannelMessageRequest < Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer,
      :sub_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_message
    #   The details of and content in the message.
    #   @return [Types::ChannelMessage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetChannelMessageResponse AWS API Documentation
    #
    class GetChannelMessageResponse < Struct.new(
      :channel_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The ID of the message.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user making the API call.
    #   @return [String]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when getting message status in a SubChannel that the
    #   user belongs to.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetChannelMessageStatusRequest AWS API Documentation
    #
    class GetChannelMessageStatusRequest < Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer,
      :sub_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The message status and details.
    #   @return [Types::ChannelMessageStatusStructure]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetChannelMessageStatusResponse AWS API Documentation
    #
    class GetChannelMessageStatusResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetMessagingSessionEndpointRequest AWS API Documentation
    #
    class GetMessagingSessionEndpointRequest < Aws::EmptyStructure; end

    # @!attribute [rw] endpoint
    #   The endpoint returned in the response.
    #   @return [Types::MessagingSessionEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetMessagingSessionEndpointResponse AWS API Documentation
    #
    class GetMessagingSessionEndpointResponse < Struct.new(
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the streaming configurations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetMessagingStreamingConfigurationsRequest AWS API Documentation
    #
    class GetMessagingStreamingConfigurationsRequest < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_configurations
    #   The streaming settings.
    #   @return [Array<Types::StreamingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetMessagingStreamingConfigurationsResponse AWS API Documentation
    #
    class GetMessagingStreamingConfigurationsResponse < Struct.new(
      :streaming_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a user or bot.
    #
    # @!attribute [rw] arn
    #   The ARN in an Identity.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name in an Identity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/Identity AWS API Documentation
    #
    class Identity < Struct.new(
      :arn,
      :name)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # Stores metadata about a Lambda processor.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the Lambda message processing function.
    #   @return [String]
    #
    # @!attribute [rw] invocation_type
    #   Controls how the Lambda function is invoked.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/LambdaConfiguration AWS API Documentation
    #
    class LambdaConfiguration < Struct.new(
      :resource_arn,
      :invocation_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of bans that you want returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested bans are
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelBansRequest AWS API Documentation
    #
    class ListChannelBansRequest < Struct.new(
      :channel_arn,
      :max_results,
      :next_token,
      :chime_bearer)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested bans are
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] channel_bans
    #   The information for each requested ban.
    #   @return [Array<Types::ChannelBanSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelBansResponse AWS API Documentation
    #
    class ListChannelBansResponse < Struct.new(
      :channel_arn,
      :next_token,
      :channel_bans)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the app instance.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of channel flows that you want to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested channel
    #   flows are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelFlowsRequest AWS API Documentation
    #
    class ListChannelFlowsRequest < Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channel_flows
    #   The information about each channel flow.
    #   @return [Array<Types::ChannelFlowSummary>]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested channels
    #   are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelFlowsResponse AWS API Documentation
    #
    class ListChannelFlowsResponse < Struct.new(
      :channel_flows,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the user or bot.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of users that you want returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned from previous API requests until the number of
    #   channel memberships is reached.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelMembershipsForAppInstanceUserRequest AWS API Documentation
    #
    class ListChannelMembershipsForAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn,
      :max_results,
      :next_token,
      :chime_bearer)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channel_memberships
    #   The information for the requested channel memberships.
    #   @return [Array<Types::ChannelMembershipForAppInstanceUserSummary>]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested users are
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelMembershipsForAppInstanceUserResponse AWS API Documentation
    #
    class ListChannelMembershipsForAppInstanceUserResponse < Struct.new(
      :channel_memberships,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The maximum number of channel memberships that you want returned.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The membership type of a user, `DEFAULT` or `HIDDEN`. Default
    #   members are returned as part of `ListChannelMemberships` if no type
    #   is specified. Hidden members are only returned if the type filter in
    #   `ListChannelMemberships` equals `HIDDEN`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of channel memberships that you want returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested channel
    #   memberships are returned.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when listing a user's memberships in a particular
    #   sub-channel of an elastic channel.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelMembershipsRequest AWS API Documentation
    #
    class ListChannelMembershipsRequest < Struct.new(
      :channel_arn,
      :type,
      :max_results,
      :next_token,
      :chime_bearer,
      :sub_channel_id)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_memberships
    #   The information for the requested channel memberships.
    #   @return [Array<Types::ChannelMembershipSummary>]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested channel
    #   memberships are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelMembershipsResponse AWS API Documentation
    #
    class ListChannelMembershipsResponse < Struct.new(
      :channel_arn,
      :channel_memberships,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order in which you want messages sorted. Default is Descending,
    #   based on time created.
    #   @return [String]
    #
    # @!attribute [rw] not_before
    #   The initial or starting time stamp for your requested messages.
    #   @return [Time]
    #
    # @!attribute [rw] not_after
    #   The final or ending time stamp for your requested messages.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of messages that you want returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested messages
    #   are returned.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when listing the messages in a SubChannel that the
    #   user belongs to.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelMessagesRequest AWS API Documentation
    #
    class ListChannelMessagesRequest < Struct.new(
      :channel_arn,
      :sort_order,
      :not_before,
      :not_after,
      :max_results,
      :next_token,
      :chime_bearer,
      :sub_channel_id)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel containing the requested messages.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested messages
    #   are returned.
    #   @return [String]
    #
    # @!attribute [rw] channel_messages
    #   The information about, and content of, each requested message.
    #   @return [Array<Types::ChannelMessageSummary>]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelMessagesResponse AWS API Documentation
    #
    class ListChannelMessagesResponse < Struct.new(
      :channel_arn,
      :next_token,
      :channel_messages,
      :sub_channel_id)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of moderators that you want returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested
    #   moderators are returned.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelModeratorsRequest AWS API Documentation
    #
    class ListChannelModeratorsRequest < Struct.new(
      :channel_arn,
      :max_results,
      :next_token,
      :chime_bearer)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested
    #   moderators are returned.
    #   @return [String]
    #
    # @!attribute [rw] channel_moderators
    #   The information about and names of each moderator.
    #   @return [Array<Types::ChannelModeratorSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelModeratorsResponse AWS API Documentation
    #
    class ListChannelModeratorsResponse < Struct.new(
      :channel_arn,
      :next_token,
      :channel_moderators)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channel_flow_arn
    #   The ARN of the channel flow.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of channels that you want to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested channels
    #   are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelsAssociatedWithChannelFlowRequest AWS API Documentation
    #
    class ListChannelsAssociatedWithChannelFlowRequest < Struct.new(
      :channel_flow_arn,
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channels
    #   The information about each channel.
    #   @return [Array<Types::ChannelAssociatedWithFlowSummary>]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested channels
    #   are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelsAssociatedWithChannelFlowResponse AWS API Documentation
    #
    class ListChannelsAssociatedWithChannelFlowResponse < Struct.new(
      :channels,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the user or bot in the moderated channel.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of channels in the request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned from previous API requests until the number of
    #   channels moderated by the user is reached.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelsModeratedByAppInstanceUserRequest AWS API Documentation
    #
    class ListChannelsModeratedByAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn,
      :max_results,
      :next_token,
      :chime_bearer)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channels
    #   The moderated channels in the request.
    #   @return [Array<Types::ChannelModeratedByAppInstanceUserSummary>]
    #
    # @!attribute [rw] next_token
    #   The token returned from previous API requests until the number of
    #   channels moderated by the user is reached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelsModeratedByAppInstanceUserResponse AWS API Documentation
    #
    class ListChannelsModeratedByAppInstanceUserResponse < Struct.new(
      :channels,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] privacy
    #   The privacy setting. `PUBLIC` retrieves all the public channels.
    #   `PRIVATE` retrieves private channels. Only an `AppInstanceAdmin` can
    #   retrieve private channels.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of channels that you want to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested channels
    #   are returned.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelsRequest AWS API Documentation
    #
    class ListChannelsRequest < Struct.new(
      :app_instance_arn,
      :privacy,
      :max_results,
      :next_token,
      :chime_bearer)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channels
    #   The information about each channel.
    #   @return [Array<Types::ChannelSummary>]
    #
    # @!attribute [rw] next_token
    #   The token returned from previous API requests until the number of
    #   channels is reached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelsResponse AWS API Documentation
    #
    class ListChannelsResponse < Struct.new(
      :channels,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of elastic channel.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user making the API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of sub-channels that you want to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested
    #   sub-channels are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListSubChannelsRequest AWS API Documentation
    #
    class ListSubChannelsRequest < Struct.new(
      :channel_arn,
      :chime_bearer,
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of elastic channel.
    #   @return [String]
    #
    # @!attribute [rw] sub_channels
    #   The information about each sub-channel.
    #   @return [Array<Types::SubChannelSummary>]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested
    #   sub-channels are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListSubChannelsResponse AWS API Documentation
    #
    class ListSubChannelsResponse < Struct.new(
      :channel_arn,
      :sub_channels,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of message attribute values.
    #
    # @!attribute [rw] string_values
    #   The strings in a message attribute value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/MessageAttributeValue AWS API Documentation
    #
    class MessageAttributeValue < Struct.new(
      :string_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The websocket endpoint used to connect to Amazon Chime SDK messaging.
    #
    # @!attribute [rw] url
    #   The endpoint to which you establish a websocket connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/MessagingSessionEndpoint AWS API Documentation
    #
    class MessagingSessionEndpoint < Struct.new(
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more of the resources in the request does not exist in the
    # system.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information about a processor in a channel flow.
    #
    # @!attribute [rw] name
    #   The name of the channel flow.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The information about the type of processor and its identifier.
    #   @return [Types::ProcessorConfiguration]
    #
    # @!attribute [rw] execution_order
    #   The sequence in which processors run. If you have multiple
    #   processors in a channel flow, message processing goes through each
    #   processor in the sequence. The value determines the sequence. At
    #   this point, we support only 1 processor within a flow.
    #   @return [Integer]
    #
    # @!attribute [rw] fallback_action
    #   Determines whether to continue with message processing or stop it in
    #   cases where communication with a processor fails. If a processor has
    #   a fallback action of `ABORT` and communication with it fails, the
    #   processor sets the message status to `FAILED` and does not send the
    #   message to any recipients. Note that if the last processor in the
    #   channel flow sequence has a fallback action of `CONTINUE` and
    #   communication with the processor fails, then the message is
    #   considered processed and sent to recipients of the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/Processor AWS API Documentation
    #
    class Processor < Struct.new(
      :name,
      :configuration,
      :execution_order,
      :fallback_action)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # A processor's metadata.
    #
    # @!attribute [rw] lambda
    #   Indicates that the processor is of type Lambda.
    #   @return [Types::LambdaConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ProcessorConfiguration AWS API Documentation
    #
    class ProcessorConfiguration < Struct.new(
      :lambda)
      SENSITIVE = []
      include Aws::Structure
    end

    # The push notification configuration of the message.
    #
    # @!attribute [rw] title
    #   The title of the push notification.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The body of the push notification.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Enum value that indicates the type of the push notification for a
    #   message. `DEFAULT`: Normal mobile push notification. `VOIP`: VOIP
    #   mobile push notification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/PushNotificationConfiguration AWS API Documentation
    #
    class PushNotificationConfiguration < Struct.new(
      :title,
      :body,
      :type)
      SENSITIVE = [:title, :body]
      include Aws::Structure
    end

    # The channel membership preferences for push notification.
    #
    # @!attribute [rw] allow_notifications
    #   Enum value that indicates which push notifications to send to the
    #   requested member of a channel. `ALL` sends all push notifications,
    #   `NONE` sends no push notifications, `FILTERED` sends only filtered
    #   push notifications.
    #   @return [String]
    #
    # @!attribute [rw] filter_rule
    #   The simple JSON object used to send a subset of a push notification
    #   to the requested member.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/PushNotificationPreferences AWS API Documentation
    #
    class PushNotificationPreferences < Struct.new(
      :allow_notifications,
      :filter_rule)
      SENSITIVE = [:filter_rule]
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] expiration_settings
    #   Settings that control the interval after which a channel is deleted.
    #   @return [Types::ExpirationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/PutChannelExpirationSettingsRequest AWS API Documentation
    #
    class PutChannelExpirationSettingsRequest < Struct.new(
      :channel_arn,
      :chime_bearer,
      :expiration_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The channel ARN.
    #   @return [String]
    #
    # @!attribute [rw] expiration_settings
    #   Settings that control the interval after which a channel is deleted.
    #   @return [Types::ExpirationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/PutChannelExpirationSettingsResponse AWS API Documentation
    #
    class PutChannelExpirationSettingsResponse < Struct.new(
      :channel_arn,
      :expiration_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] member_arn
    #   The ARN of the member setting the preferences.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] preferences
    #   The channel membership preferences of an `AppInstanceUser` .
    #   @return [Types::ChannelMembershipPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/PutChannelMembershipPreferencesRequest AWS API Documentation
    #
    class PutChannelMembershipPreferencesRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      :preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] member
    #   The details of a user.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] preferences
    #   The ARN and metadata of the member being added.
    #   @return [Types::ChannelMembershipPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/PutChannelMembershipPreferencesResponse AWS API Documentation
    #
    class PutChannelMembershipPreferencesResponse < Struct.new(
      :channel_arn,
      :member,
      :preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the streaming configuration.
    #   @return [String]
    #
    # @!attribute [rw] streaming_configurations
    #   The streaming configurations.
    #   @return [Array<Types::StreamingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/PutMessagingStreamingConfigurationsRequest AWS API Documentation
    #
    class PutMessagingStreamingConfigurationsRequest < Struct.new(
      :app_instance_arn,
      :streaming_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_configurations
    #   The requested streaming configurations.
    #   @return [Array<Types::StreamingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/PutMessagingStreamingConfigurationsResponse AWS API Documentation
    #
    class PutMessagingStreamingConfigurationsResponse < Struct.new(
      :streaming_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel containing the messages that you want to
    #   redact.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The ID of the message being redacted.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/RedactChannelMessageRequest AWS API Documentation
    #
    class RedactChannelMessageRequest < Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer,
      :sub_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel containing the messages that you want to
    #   redact.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The ID of the message being redacted.
    #   @return [String]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the response.
    #
    #   <note markdown="1"> Only required when redacting messages in a SubChannel that the user
    #   belongs to.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/RedactChannelMessageResponse AWS API Documentation
    #
    class RedactChannelMessageResponse < Struct.new(
      :channel_arn,
      :message_id,
      :sub_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds the resource limit.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user making the API call.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   A list of the `Field` objects in the channel being searched.
    #   @return [Array<Types::SearchField>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of channels that you want returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned from previous API requests until the number of
    #   channels is reached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/SearchChannelsRequest AWS API Documentation
    #
    class SearchChannelsRequest < Struct.new(
      :chime_bearer,
      :fields,
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] channels
    #   A list of the channels in the request.
    #   @return [Array<Types::ChannelSummary>]
    #
    # @!attribute [rw] next_token
    #   The token returned from previous API responses until the number of
    #   channels is reached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/SearchChannelsResponse AWS API Documentation
    #
    class SearchChannelsResponse < Struct.new(
      :channels,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # A `Field` of the channel that you want to search.
    #
    # @!attribute [rw] key
    #   An `enum` value that indicates the key to search the channel on.
    #   `MEMBERS` allows you to search channels based on memberships. You
    #   can use it with the `EQUALS` operator to get channels whose
    #   memberships are equal to the specified values, and with the
    #   `INCLUDES` operator to get channels whose memberships include the
    #   specified values.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values that you want to search for, a list of strings. The
    #   values must be `AppInstanceUserArns` specified as a list of strings.
    #
    #   <note markdown="1"> This operation isn't supported for `AppInstanceUsers` with large
    #   number of memberships.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator used to compare field values, currently `EQUALS` or
    #   `INCLUDES`. Use the `EQUALS` operator to find channels whose
    #   memberships equal the specified values. Use the `INCLUDES` operator
    #   to find channels whose memberships include the specified values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/SearchField AWS API Documentation
    #
    class SearchField < Struct.new(
      :key,
      :values,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the channel message.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of message, `STANDARD` or `CONTROL`.
    #
    #   `STANDARD` messages can be up to 4KB in size and contain metadata.
    #   Metadata is arbitrary, and you can use it in a variety of ways, such
    #   as containing a link to an attachment.
    #
    #   `CONTROL` messages are limited to 30 bytes and do not contain
    #   metadata.
    #   @return [String]
    #
    # @!attribute [rw] persistence
    #   Boolean that controls whether the message is persisted on the back
    #   end. Required.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The optional metadata for each message.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The `Idempotency` token for each client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] push_notification
    #   The push notification configuration of the message.
    #   @return [Types::PushNotificationConfiguration]
    #
    # @!attribute [rw] message_attributes
    #   The attributes for the message, used for message filtering along
    #   with a `FilterRule` defined in the `PushNotificationPreferences`.
    #   @return [Hash<String,Types::MessageAttributeValue>]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the request.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the channel message.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target of a message. Must be a member of the channel, such as
    #   another user, a bot, or the sender. Only the target and the sender
    #   can view targeted messages. Only users who can see targeted messages
    #   can take actions on them. However, administrators can delete
    #   targeted messages that they can’t see.
    #   @return [Array<Types::Target>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/SendChannelMessageRequest AWS API Documentation
    #
    class SendChannelMessageRequest < Struct.new(
      :channel_arn,
      :content,
      :type,
      :persistence,
      :metadata,
      :client_request_token,
      :chime_bearer,
      :push_notification,
      :message_attributes,
      :sub_channel_id,
      :content_type,
      :target)
      SENSITIVE = [:content, :metadata, :client_request_token, :content_type]
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The ID string assigned to each message.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the channel message.
    #   @return [Types::ChannelMessageStatusStructure]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/SendChannelMessageResponse AWS API Documentation
    #
    class SendChannelMessageResponse < Struct.new(
      :channel_arn,
      :message_id,
      :status,
      :sub_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service encountered an unexpected error.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ServiceFailureException AWS API Documentation
    #
    class ServiceFailureException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is currently unavailable.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for connecting a messaging stream to Amazon Kinesis.
    #
    # @!attribute [rw] data_type
    #   The data type of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource in the configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/StreamingConfiguration AWS API Documentation
    #
    class StreamingConfiguration < Struct.new(
      :data_type,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the sub-channels associated with the elastic channel.
    #
    # @!attribute [rw] sub_channel_id
    #   The unique ID of a SubChannel.
    #   @return [String]
    #
    # @!attribute [rw] membership_count
    #   The number of members in a SubChannel.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/SubChannelSummary AWS API Documentation
    #
    class SubChannelSummary < Struct.new(
      :sub_channel_id,
      :membership_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag object containing a key-value pair.
    #
    # @!attribute [rw] key
    #   The key in a tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value in a tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = [:key, :value]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target of a message, a sender, a user, or a bot. Only the target
    # and the sender can view targeted messages. Only users who can see
    # targeted messages can take actions on them. However, administrators
    # can delete targeted messages that they can’t see.
    #
    # @!attribute [rw] member_arn
    #   The ARN of the target channel member.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/Target AWS API Documentation
    #
    class Target < Struct.new(
      :member_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client exceeded its request rate limit.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ThrottledClientException AWS API Documentation
    #
    class ThrottledClientException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is not currently authorized to make the request.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UnauthorizedClientException AWS API Documentation
    #
    class UnauthorizedClientException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_flow_arn
    #   The ARN of the channel flow.
    #   @return [String]
    #
    # @!attribute [rw] processors
    #   Information about the processor Lambda functions
    #   @return [Array<Types::Processor>]
    #
    # @!attribute [rw] name
    #   The name of the channel flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UpdateChannelFlowRequest AWS API Documentation
    #
    class UpdateChannelFlowRequest < Struct.new(
      :channel_flow_arn,
      :processors,
      :name)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] channel_flow_arn
    #   The ARN of the channel flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UpdateChannelFlowResponse AWS API Documentation
    #
    class UpdateChannelFlowResponse < Struct.new(
      :channel_flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The ID string of the message being updated.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the channel message.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the message being updated.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the request.
    #
    #   <note markdown="1"> Only required when updating messages in a SubChannel that the user
    #   belongs to.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the channel message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UpdateChannelMessageRequest AWS API Documentation
    #
    class UpdateChannelMessageRequest < Struct.new(
      :channel_arn,
      :message_id,
      :content,
      :metadata,
      :chime_bearer,
      :sub_channel_id,
      :content_type)
      SENSITIVE = [:content, :metadata, :content_type]
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The ID string of the message being updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the message update.
    #   @return [Types::ChannelMessageStatusStructure]
    #
    # @!attribute [rw] sub_channel_id
    #   The ID of the SubChannel in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UpdateChannelMessageResponse AWS API Documentation
    #
    class UpdateChannelMessageResponse < Struct.new(
      :channel_arn,
      :message_id,
      :status,
      :sub_channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UpdateChannelReadMarkerRequest AWS API Documentation
    #
    class UpdateChannelReadMarkerRequest < Struct.new(
      :channel_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UpdateChannelReadMarkerResponse AWS API Documentation
    #
    class UpdateChannelReadMarkerResponse < Struct.new(
      :channel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the channel.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The mode of the update request.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata for the update request.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The ARN of the `AppInstanceUser` or `AppInstanceBot` that makes the
    #   API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UpdateChannelRequest AWS API Documentation
    #
    class UpdateChannelRequest < Struct.new(
      :channel_arn,
      :name,
      :mode,
      :metadata,
      :chime_bearer)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UpdateChannelResponse AWS API Documentation
    #
    class UpdateChannelResponse < Struct.new(
      :channel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
