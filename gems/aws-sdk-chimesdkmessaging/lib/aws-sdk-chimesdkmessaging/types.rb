# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKMessaging
  # This module contains the types returned by client operations.
  module Types

    # <p>Summary of the membership details of an <code>AppInstanceUser</code>.</p>
    # @!attribute type
    #   <p>The type of <code>ChannelMembership</code>.</p>
    #   @return [String]
    # @!attribute read_marker_timestamp
    #   <p>The time at which an <code>AppInstanceUser</code> last marked a channel as read.</p>
    #   @return [Time]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel that the <code>AppInstanceUser</code> is a member of.</p>
    #   @return [String]
    class AppInstanceUserMembershipSummary < Struct.new(
      :type,
      :read_marker_timestamp,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    #   @return [String]
    class AssociateChannelFlowRequest < Struct.new(
      :channel_arn,
      :channel_flow_arn,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input parameters don't match the service's restrictions.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The membership information, including member ARNs, the channel ARN, and membership
    #          types.</p>
    # @!attribute invited_by
    #   <p>The identifier of the member who invited another member.</p>
    #   @return [Types::Identity]
    # @!attribute type
    #   <p>The membership types set for the channel members.</p>
    #   @return [String]
    # @!attribute members
    #   <p>The users successfully added to the request.</p>
    #   @return [Array<Types::Identity>]
    # @!attribute channel_arn
    #   <p>The ARN of the channel to which you're adding members.</p>
    #   @return [String]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel.</p>
    #   @return [String]
    class BatchChannelMemberships < Struct.new(
      :invited_by,
      :type,
      :members,
      :channel_arn,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of failed member ARNs, error codes, and error messages.</p>
    # @!attribute member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member that the service couldn't add.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    class BatchCreateChannelMembershipError < Struct.new(
      :member_arn,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel to which you're adding users or bots.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
    #            members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>. Otherwise hidden members are not returned. This is only supported
    #            by moderators.</p>
    #   @return [String]
    # @!attribute member_arns
    #   <p>The ARNs of the members you want to add to the channel. Only <code>AppInstanceUsers</code> and 
    #            <code>AppInstanceBots</code> can be added as a channel member.</p>
    #   @return [Array<String>]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the request. </p>
    #            <note>
    #               <p>Only required when creating membership in a SubChannel for a moderator in an elastic channel.</p>
    #            </note>
    #   @return [String]
    class BatchCreateChannelMembershipRequest < Struct.new(
      :channel_arn,
      :type,
      :member_arns,
      :chime_bearer,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_channel_memberships
    #   <p>The list of channel memberships in the response.</p>
    #   @return [Types::BatchChannelMemberships]
    # @!attribute errors
    #   <p>If the action fails for one or more of the memberships in the request, a list of the
    #            memberships is returned, along with error codes and error messages.</p>
    #   @return [Array<Types::BatchCreateChannelMembershipError>]
    class BatchCreateChannelMembershipResponse < Struct.new(
      :batch_channel_memberships,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a channel.</p>
    # @!attribute name
    #   <p>The name of a channel.</p>
    #   @return [String]
    # @!attribute channel_arn
    #   <p>The ARN of a channel.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The mode of the channel.</p>
    #   @return [String]
    # @!attribute privacy
    #   <p>The channel's privacy setting.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The channel's metadata.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The <code>AppInstanceUser</code> who created the channel.</p>
    #   @return [Types::Identity]
    # @!attribute created_timestamp
    #   <p>The time at which the <code>AppInstanceUser</code> created the channel.</p>
    #   @return [Time]
    # @!attribute last_message_timestamp
    #   <p>The time at which a member sent the last message in the channel.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The time at which a channel was last updated.</p>
    #   @return [Time]
    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #   @return [String]
    # @!attribute elastic_channel_configuration
    #   <p>The attributes required to configure and create an elastic channel. An elastic channel can support a maximum of 1-million members.</p>
    #   @return [Types::ElasticChannelConfiguration]
    # @!attribute expiration_settings
    #   <p>Settings that control when a channel expires.</p>
    #   @return [Types::ExpirationSettings]
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
      :expiration_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of details of a channel associated with channel flow.</p>
    # @!attribute name
    #   <p>The name of the channel flow.</p>
    #   @return [String]
    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The mode of the channel.</p>
    #   @return [String]
    # @!attribute privacy
    #   <p>The channel's privacy setting.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The channel's metadata.</p>
    #   @return [String]
    class ChannelAssociatedWithFlowSummary < Struct.new(
      :name,
      :channel_arn,
      :mode,
      :privacy,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a channel ban.</p>
    # @!attribute member
    #   <p>The member being banned from the channel.</p>
    #   @return [Types::Identity]
    # @!attribute channel_arn
    #   <p>The ARN of the channel from which a member is being banned.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which the ban was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The <code>AppInstanceUser</code> who created the ban.</p>
    #   @return [Types::Identity]
    class ChannelBan < Struct.new(
      :member,
      :channel_arn,
      :created_timestamp,
      :created_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of the details of a <code>ChannelBan</code>.</p>
    # @!attribute member
    #   <p>The member being banned from a channel.</p>
    #   @return [Types::Identity]
    class ChannelBanSummary < Struct.new(
      :member,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a channel flow.</p>
    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #   @return [String]
    # @!attribute processors
    #   <p>Information about the processor Lambda functions.</p>
    #   @return [Array<Types::Processor>]
    # @!attribute name
    #   <p>The name of the channel flow.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which the channel flow was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The time at which a channel flow was updated.</p>
    #   @return [Time]
    class ChannelFlow < Struct.new(
      :channel_flow_arn,
      :processors,
      :name,
      :created_timestamp,
      :last_updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute callback_id
    #   <p>The identifier passed to the processor by the service when invoked. Use the identifier to call back the service.</p>
    #   @return [String]
    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute delete_resource
    #   <p>When a processor determines that a message needs to be <code>DENIED</code>, pass this parameter with a value of true.</p>
    #   @return [Boolean]
    # @!attribute channel_message
    #   <p>Stores information about the processed message.</p>
    #   @return [Types::ChannelMessageCallback]
    class ChannelFlowCallbackRequest < Struct.new(
      :callback_id,
      :channel_arn,
      :delete_resource,
      :channel_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute callback_id
    #   <p>The call back ID passed in the request.</p>
    #   @return [String]
    class ChannelFlowCallbackResponse < Struct.new(
      :channel_arn,
      :callback_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of details of a channel flow.</p>
    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the channel flow.</p>
    #   @return [String]
    # @!attribute processors
    #   <p>Information about the processor Lambda functions.</p>
    #   @return [Array<Types::Processor>]
    class ChannelFlowSummary < Struct.new(
      :channel_flow_arn,
      :name,
      :processors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a channel member.</p>
    # @!attribute invited_by
    #   <p>The identifier of the member who invited another member.</p>
    #   @return [Types::Identity]
    # @!attribute type
    #   <p>The membership type set for the channel member.</p>
    #   @return [String]
    # @!attribute member
    #   <p>The data of the channel member.</p>
    #   @return [Types::Identity]
    # @!attribute channel_arn
    #   <p>The ARN of the member's channel.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which the channel membership was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The time at which a channel membership was last updated.</p>
    #   @return [Time]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel that a user belongs to.</p>
    #   @return [String]
    class ChannelMembership < Struct.new(
      :invited_by,
      :type,
      :member,
      :channel_arn,
      :created_timestamp,
      :last_updated_timestamp,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of the channel membership details of an <code>AppInstanceUser</code>.</p>
    # @!attribute channel_summary
    #   <p>Returns the channel data for an <code>AppInstance</code>.</p>
    #   @return [Types::ChannelSummary]
    # @!attribute app_instance_user_membership_summary
    #   <p>Returns the channel membership data for an <code>AppInstance</code>.</p>
    #   @return [Types::AppInstanceUserMembershipSummary]
    class ChannelMembershipForAppInstanceUserSummary < Struct.new(
      :channel_summary,
      :app_instance_user_membership_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The channel membership preferences for an <code>AppInstanceUser</code>.</p>
    # @!attribute push_notifications
    #   <p>The push notification configuration of a message.</p>
    #   @return [Types::PushNotificationPreferences]
    class ChannelMembershipPreferences < Struct.new(
      :push_notifications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of the details of a <code>ChannelMembership</code>.</p>
    # @!attribute member
    #   <p>A member's summary data.</p>
    #   @return [Types::Identity]
    class ChannelMembershipSummary < Struct.new(
      :member,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a message in a channel.</p>
    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The ID of a message.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the channel message. For Amazon Lex V2 bot responses, this field holds a list of messages originating from the bot. For more information, refer to 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html">Processing responses from an AppInstanceBot</a> in the 
    #            <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The message metadata.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The message type.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which the message was created.</p>
    #   @return [Time]
    # @!attribute last_edited_timestamp
    #   <p>The time at which a message was edited.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The time at which a message was updated.</p>
    #   @return [Time]
    # @!attribute sender
    #   <p>The message sender.</p>
    #   @return [Types::Identity]
    # @!attribute redacted
    #   <p>Hides the content of a message.</p>
    #   @return [Boolean]
    # @!attribute persistence
    #   <p>The persistence setting for a channel message.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the channel message.</p>
    #   @return [Types::ChannelMessageStatusStructure]
    # @!attribute message_attributes
    #   <p>The attributes for the channel message. For Amazon Lex V2 bot responses, the attributes are mapped to specific fields from the bot. For more information, refer to 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html">Processing responses from an AppInstanceBot</a> in the 
    #            <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>
    #   @return [Hash<String, Types::MessageAttributeValue>]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type of the channel message. For Amazon Lex V2 bot responses, the content type is <code>application/amz-chime-lex-msgs</code> for success responses and 
    #            <code>application/amz-chime-lex-error</code> for failure responses. For more information, refer to 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html">Processing responses from an AppInstanceBot</a> in the 
    #            <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target of a message, a sender, a user, or a bot.  Only the target and the sender can view targeted messages.
    #            Only users who can see targeted messages can take actions on them. However, administrators can delete targeted messages that they can’t see.</p>
    #   @return [Array<Types::Target>]
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
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:redacted] = false unless options.key?(:redacted)
        super
      end
    end

    # <p>Stores information about a callback.</p>
    # @!attribute message_id
    #   <p>The message ID.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The message content. For Amazon Lex V2 bot responses, this field holds a list of messages originating from the bot. For more information, refer to 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html">Processing responses from an AppInstanceBot</a> in the 
    #            <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The message metadata.</p>
    #   @return [String]
    # @!attribute push_notification
    #   <p>The push notification configuration of the message.</p>
    #   @return [Types::PushNotificationConfiguration]
    # @!attribute message_attributes
    #   <p>The attributes for the channel message. For Amazon Lex V2 bot responses, the attributes are mapped to specific fields from the bot. For more information, refer to 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html">Processing responses from an AppInstanceBot</a> in the 
    #            <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>
    #   @return [Hash<String, Types::MessageAttributeValue>]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type of the call-back message. For Amazon Lex V2 bot responses, the content type is <code>application/amz-chime-lex-msgs</code> for success responses and 
    #            <code>application/amz-chime-lex-error</code> for failure responses. For more information, refer to 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html">Processing responses from an AppInstanceBot</a> in the 
    #            <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>
    #   @return [String]
    class ChannelMessageCallback < Struct.new(
      :message_id,
      :content,
      :metadata,
      :push_notification,
      :message_attributes,
      :sub_channel_id,
      :content_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Stores information about a message status.</p>
    # @!attribute value
    #   <p>The message status value.</p>
    #   @return [String]
    # @!attribute detail
    #   <p>Contains more details about the message status.</p>
    #   @return [String]
    class ChannelMessageStatusStructure < Struct.new(
      :value,
      :detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of the messages in a <code>Channel</code>.</p>
    # @!attribute message_id
    #   <p>The ID of the message.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the channel message. For Amazon Lex V2 bot responses, this field holds a list of messages originating from the bot. For more information, refer to 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html">Processing responses from an AppInstanceBot</a> in the 
    #            <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata of the message.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of message.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which the message summary was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The time at which a message was last updated.</p>
    #   @return [Time]
    # @!attribute last_edited_timestamp
    #   <p>The time at which a message was last edited.</p>
    #   @return [Time]
    # @!attribute sender
    #   <p>The message sender.</p>
    #   @return [Types::Identity]
    # @!attribute redacted
    #   <p>Indicates whether a message was redacted.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The message status. The status value is <code>SENT</code> for messages sent to a channel without a channel flow. For channels associated with channel flow, the value determines the 
    #            processing stage.</p>
    #   @return [Types::ChannelMessageStatusStructure]
    # @!attribute message_attributes
    #   <p>The attributes for the channel message. For Amazon Lex V2 bot responses, the attributes are mapped to specific fields from the bot. For more information, refer to 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html">Processing responses from an AppInstanceBot</a> in the 
    #            <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>
    #   @return [Hash<String, Types::MessageAttributeValue>]
    # @!attribute content_type
    #   <p>The content type of the channel message listed in the summary. For Amazon Lex V2 bot responses, the content type is <code>application/amz-chime-lex-msgs</code> for success responses and 
    #            <code>application/amz-chime-lex-error</code> for failure responses. For more information, refer to 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/appinstance-bots#process-response.html">Processing responses from an AppInstanceBot</a> in the 
    #            <i>Amazon Chime SDK Messaging Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target of a message, a sender, a user, or a bot. Only the target and the sender can view targeted messages.
    #            Only users who can see targeted messages can take actions on them. However, administrators can delete targeted messages that they can’t see.</p>
    #   @return [Array<Types::Target>]
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
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:redacted] = false unless options.key?(:redacted)
        super
      end
    end

    # <p>Summary of the details of a moderated channel.</p>
    # @!attribute channel_summary
    #   <p>Summary of the details of a <code>Channel</code>.</p>
    #   @return [Types::ChannelSummary]
    class ChannelModeratedByAppInstanceUserSummary < Struct.new(
      :channel_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a channel moderator.</p>
    # @!attribute moderator
    #   <p>The moderator's data.</p>
    #   @return [Types::Identity]
    # @!attribute channel_arn
    #   <p>The ARN of the moderator's channel.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which the moderator was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The <code>AppInstanceUser</code> who created the moderator.</p>
    #   @return [Types::Identity]
    class ChannelModerator < Struct.new(
      :moderator,
      :channel_arn,
      :created_timestamp,
      :created_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of the details of a <code>ChannelModerator</code>.</p>
    # @!attribute moderator
    #   <p>The data for a moderator.</p>
    #   @return [Types::Identity]
    class ChannelModeratorSummary < Struct.new(
      :moderator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of the details of a <code>Channel</code>.</p>
    # @!attribute name
    #   <p>The name of the channel.</p>
    #   @return [String]
    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The mode of the channel.</p>
    #   @return [String]
    # @!attribute privacy
    #   <p>The privacy setting of the channel.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata of the channel.</p>
    #   @return [String]
    # @!attribute last_message_timestamp
    #   <p>The time at which the last persistent message visible to the caller in a channel was sent.</p>
    #   @return [Time]
    class ChannelSummary < Struct.new(
      :name,
      :channel_arn,
      :mode,
      :privacy,
      :metadata,
      :last_message_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be processed because of conflict in the current state of the
    #          resource.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the ban request.</p>
    #   @return [String]
    # @!attribute member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member being banned.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call.</p>
    #   @return [String]
    class CreateChannelBanRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the response to the ban request.</p>
    #   @return [String]
    # @!attribute member
    #   <p>The <code>ChannelArn</code> and <code>BannedIdentity</code> of the member in the ban
    #            response.</p>
    #   @return [Types::Identity]
    class CreateChannelBanResponse < Struct.new(
      :channel_arn,
      :member,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the channel flow request.</p>
    #   @return [String]
    # @!attribute processors
    #   <p>Information about the processor Lambda functions.</p>
    #   @return [Array<Types::Processor>]
    # @!attribute name
    #   <p>The name of the channel flow.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the creation request.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>The client token for the request. An Idempotency token.</p>
    #   @return [String]
    class CreateChannelFlowRequest < Struct.new(
      :app_instance_arn,
      :processors,
      :name,
      :tags,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #   @return [String]
    class CreateChannelFlowResponse < Struct.new(
      :channel_flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel to which you're adding users.</p>
    #   @return [String]
    # @!attribute member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member you want to add to the channel.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
    #            members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>. Otherwise hidden members are not returned. This is only supported
    #            by moderators.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only required when creating membership in a SubChannel for a moderator in an elastic channel.</p>
    #            </note>
    #   @return [String]
    class CreateChannelMembershipRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :type,
      :chime_bearer,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute member
    #   <p>The ARN and metadata of the member being added.</p>
    #   @return [Types::Identity]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the response.</p>
    #   @return [String]
    class CreateChannelMembershipResponse < Struct.new(
      :channel_arn,
      :member,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute channel_moderator_arn
    #   <p>The <code>AppInstanceUserArn</code> of the moderator.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    class CreateChannelModeratorRequest < Struct.new(
      :channel_arn,
      :channel_moderator_arn,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute channel_moderator
    #   <p>The ARNs of the channel and the moderator.</p>
    #   @return [Types::Identity]
    class CreateChannelModeratorResponse < Struct.new(
      :channel_arn,
      :channel_moderator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the channel request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the channel.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The channel mode: <code>UNRESTRICTED</code> or <code>RESTRICTED</code>. Administrators,
    #            moderators, and channel members can add themselves and other members to unrestricted
    #            channels. Only administrators and moderators can add members to restricted channels.</p>
    #   @return [String]
    # @!attribute privacy
    #   <p>The channel's privacy level: <code>PUBLIC</code> or <code>PRIVATE</code>. Private
    #            channels aren't discoverable by users outside the channel. Public channels are discoverable
    #            by anyone in the <code>AppInstance</code>.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata of the creation request. Limited to 1KB and UTF-8.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>The client token for the request. An <code>Idempotency</code> token.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the creation request.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call.</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>The ID of the channel in the request.</p>
    #   @return [String]
    # @!attribute member_arns
    #   <p>The ARNs of the channel members in the request.</p>
    #   @return [Array<String>]
    # @!attribute moderator_arns
    #   <p>The ARNs of the channel moderators in the request.</p>
    #   @return [Array<String>]
    # @!attribute elastic_channel_configuration
    #   <p>The attributes required to configure and create an elastic channel. An elastic channel can support a maximum of 1-million users, excluding moderators.</p>
    #   @return [Types::ElasticChannelConfiguration]
    # @!attribute expiration_settings
    #   <p>Settings that control the interval after which the channel is automatically deleted.</p>
    #   @return [Types::ExpirationSettings]
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
      :expiration_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    class CreateChannelResponse < Struct.new(
      :channel_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel from which the <code>AppInstanceUser</code> was banned.</p>
    #   @return [String]
    # @!attribute member_arn
    #   <p>The ARN of the <code>AppInstanceUser</code> that you want to reinstate.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the 
    #            API call.</p>
    #   @return [String]
    class DeleteChannelBanRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #   @return [String]
    class DeleteChannelFlowRequest < Struct.new(
      :channel_flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel from which you want to remove the user.</p>
    #   @return [String]
    # @!attribute member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member that you're removing from the channel.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the 
    #            API call.</p>
    #   @return [String]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only for use by moderators.</p>
    #            </note>
    #   @return [String]
    class DeleteChannelMembershipRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The ID of the message being deleted.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the 
    #            API call.</p>
    #   @return [String]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only required when deleting messages in a SubChannel that the user belongs to.</p>
    #            </note>
    #   @return [String]
    class DeleteChannelMessageRequest < Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute channel_moderator_arn
    #   <p>The <code>AppInstanceUserArn</code> of the moderator being deleted.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the 
    #            API call.</p>
    #   @return [String]
    class DeleteChannelModeratorRequest < Struct.new(
      :channel_arn,
      :channel_moderator_arn,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel being deleted.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    class DeleteChannelRequest < Struct.new(
      :channel_arn,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the streaming configurations being deleted.</p>
    #   @return [String]
    class DeleteMessagingStreamingConfigurationsRequest < Struct.new(
      :app_instance_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel from which the user is banned.</p>
    #   @return [String]
    # @!attribute member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member being banned.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the 
    #            API call.</p>
    #   @return [String]
    class DescribeChannelBanRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_ban
    #   <p>The details of the ban.</p>
    #   @return [Types::ChannelBan]
    class DescribeChannelBanResponse < Struct.new(
      :channel_ban,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #   @return [String]
    class DescribeChannelFlowRequest < Struct.new(
      :channel_flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_flow
    #   <p>The channel flow details.</p>
    #   @return [Types::ChannelFlow]
    class DescribeChannelFlowResponse < Struct.new(
      :channel_flow,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel to which the user belongs.</p>
    #   @return [String]
    # @!attribute app_instance_user_arn
    #   <p>The ARN of the user or bot in a channel.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    class DescribeChannelMembershipForAppInstanceUserRequest < Struct.new(
      :channel_arn,
      :app_instance_user_arn,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_membership
    #   <p>The channel to which a user belongs.</p>
    #   @return [Types::ChannelMembershipForAppInstanceUserSummary]
    class DescribeChannelMembershipForAppInstanceUserResponse < Struct.new(
      :channel_membership,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the 
    #            API call.</p>
    #   @return [String]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the request. The response contains an <code>ElasticChannelConfiguration</code> object.</p>
    #            <note>
    #               <p>Only required to get a user’s SubChannel membership details.</p>
    #            </note>
    #   @return [String]
    class DescribeChannelMembershipRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_membership
    #   <p>The details of the membership.</p>
    #   @return [Types::ChannelMembership]
    class DescribeChannelMembershipResponse < Struct.new(
      :channel_membership,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the moderated channel.</p>
    #   @return [String]
    # @!attribute app_instance_user_arn
    #   <p>The ARN of the user or bot in the moderated channel.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    class DescribeChannelModeratedByAppInstanceUserRequest < Struct.new(
      :channel_arn,
      :app_instance_user_arn,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel
    #   <p>The moderated channel.</p>
    #   @return [Types::ChannelModeratedByAppInstanceUserSummary]
    class DescribeChannelModeratedByAppInstanceUserResponse < Struct.new(
      :channel,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute channel_moderator_arn
    #   <p>The <code>AppInstanceUserArn</code> of the channel moderator.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    class DescribeChannelModeratorRequest < Struct.new(
      :channel_arn,
      :channel_moderator_arn,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_moderator
    #   <p>The details of the channel moderator.</p>
    #   @return [Types::ChannelModerator]
    class DescribeChannelModeratorResponse < Struct.new(
      :channel_moderator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the 
    #            API call.</p>
    #   @return [String]
    class DescribeChannelRequest < Struct.new(
      :channel_arn,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel
    #   <p>The channel details.</p>
    #   @return [Types::Channel]
    class DescribeChannelResponse < Struct.new(
      :channel,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    #   @return [String]
    class DisassociateChannelFlowRequest < Struct.new(
      :channel_arn,
      :channel_flow_arn,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The attributes required to configure and create an elastic channel. An elastic channel can support a maximum of 1-million members.</p>
    # @!attribute maximum_sub_channels
    #   <p>The maximum number of SubChannels that you want to allow in the elastic channel.</p>
    #   @return [Integer]
    # @!attribute target_memberships_per_sub_channel
    #   <p>The maximum number of members allowed in a SubChannel.</p>
    #   @return [Integer]
    # @!attribute minimum_membership_percentage
    #   <p>The minimum allowed percentage of TargetMembershipsPerSubChannel users. Ceil of the calculated value is used in balancing members among SubChannels of the elastic channel.</p>
    #   @return [Integer]
    class ElasticChannelConfiguration < Struct.new(
      :maximum_sub_channels,
      :target_memberships_per_sub_channel,
      :minimum_membership_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings that control the interval after which a channel is deleted.</p>
    # @!attribute expiration_days
    #   <p>The period in days after which the system automatically deletes a channel.</p>
    #   @return [Integer]
    # @!attribute expiration_criterion
    #   <p>The conditions that must be met for a channel to expire.</p>
    #   @return [String]
    class ExpirationSettings < Struct.new(
      :expiration_days,
      :expiration_criterion,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client is permanently forbidden from making the request.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member retrieving the preferences.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call.</p>
    #   @return [String]
    class GetChannelMembershipPreferencesRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute member
    #   <p>The details of a user.</p>
    #   @return [Types::Identity]
    # @!attribute preferences
    #   <p>The channel membership preferences for an <code>AppInstanceUser</code> .</p>
    #   @return [Types::ChannelMembershipPreferences]
    class GetChannelMembershipPreferencesResponse < Struct.new(
      :channel_arn,
      :member,
      :preferences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The ID of the message.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only required when getting messages in a SubChannel that the user belongs to.</p>
    #            </note>
    #   @return [String]
    class GetChannelMessageRequest < Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_message
    #   <p>The details of and content in the message.</p>
    #   @return [Types::ChannelMessage]
    class GetChannelMessageResponse < Struct.new(
      :channel_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The ID of the message.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    #   @return [String]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only required when getting message status in a SubChannel that the user belongs to.</p>
    #            </note>
    #   @return [String]
    class GetChannelMessageStatusRequest < Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The message status and details.</p>
    #   @return [Types::ChannelMessageStatusStructure]
    class GetChannelMessageStatusResponse < Struct.new(
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetMessagingSessionEndpointRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint
    #   <p>The endpoint returned in the response.</p>
    #   @return [Types::MessagingSessionEndpoint]
    class GetMessagingSessionEndpointResponse < Struct.new(
      :endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the streaming configurations.</p>
    #   @return [String]
    class GetMessagingStreamingConfigurationsRequest < Struct.new(
      :app_instance_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute streaming_configurations
    #   <p>The streaming settings.</p>
    #   @return [Array<Types::StreamingConfiguration>]
    class GetMessagingStreamingConfigurationsResponse < Struct.new(
      :streaming_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a user or bot.</p>
    # @!attribute arn
    #   <p>The ARN in an Identity.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name in an Identity.</p>
    #   @return [String]
    class Identity < Struct.new(
      :arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Stores metadata about a Lambda processor.</p>
    # @!attribute resource_arn
    #   <p>The ARN of the Lambda message processing function.</p>
    #   @return [String]
    # @!attribute invocation_type
    #   <p>Controls how the Lambda function is invoked.</p>
    #   @return [String]
    class LambdaConfiguration < Struct.new(
      :resource_arn,
      :invocation_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of bans that you want returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested bans are returned.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    class ListChannelBansRequest < Struct.new(
      :channel_arn,
      :max_results,
      :next_token,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested bans are returned.</p>
    #   @return [String]
    # @!attribute channel_bans
    #   <p>The information for each requested ban.</p>
    #   @return [Array<Types::ChannelBanSummary>]
    class ListChannelBansResponse < Struct.new(
      :channel_arn,
      :next_token,
      :channel_bans,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the app instance.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of channel flows that you want to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested channel flows are returned.</p>
    #   @return [String]
    class ListChannelFlowsRequest < Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_flows
    #   <p>The information about each channel flow.</p>
    #   @return [Array<Types::ChannelFlowSummary>]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested channels are returned.</p>
    #   @return [String]
    class ListChannelFlowsResponse < Struct.new(
      :channel_flows,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the user or bot.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of users that you want returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of channel memberships is
    #            reached.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    class ListChannelMembershipsForAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn,
      :max_results,
      :next_token,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_memberships
    #   <p>The information for the requested channel memberships.</p>
    #   @return [Array<Types::ChannelMembershipForAppInstanceUserSummary>]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested users are returned.</p>
    #   @return [String]
    class ListChannelMembershipsForAppInstanceUserResponse < Struct.new(
      :channel_memberships,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The maximum number of channel memberships that you want returned.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
    #            members are returned as part of <code>ListChannelMemberships</code> if no type is specified. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of channel memberships that you want returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested channel memberships are
    #            returned.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only required when listing a user's memberships in a particular sub-channel of an elastic channel.</p>
    #            </note>
    #   @return [String]
    class ListChannelMembershipsRequest < Struct.new(
      :channel_arn,
      :type,
      :max_results,
      :next_token,
      :chime_bearer,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute channel_memberships
    #   <p>The information for the requested channel memberships.</p>
    #   @return [Array<Types::ChannelMembershipSummary>]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested channel memberships are
    #            returned.</p>
    #   @return [String]
    class ListChannelMembershipsResponse < Struct.new(
      :channel_arn,
      :channel_memberships,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The order in which you want messages sorted. Default is Descending, based on time
    #            created.</p>
    #   @return [String]
    # @!attribute not_before
    #   <p>The initial or starting time stamp for your requested messages.</p>
    #   @return [Time]
    # @!attribute not_after
    #   <p>The final or ending time stamp for your requested messages.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of messages that you want returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested messages are returned.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only required when listing the messages in a SubChannel that the user belongs to.</p>
    #            </note>
    #   @return [String]
    class ListChannelMessagesRequest < Struct.new(
      :channel_arn,
      :sort_order,
      :not_before,
      :not_after,
      :max_results,
      :next_token,
      :chime_bearer,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel containing the requested messages.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested messages are returned.</p>
    #   @return [String]
    # @!attribute channel_messages
    #   <p>The information about, and content of, each requested message.</p>
    #   @return [Array<Types::ChannelMessageSummary>]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the response.</p>
    #   @return [String]
    class ListChannelMessagesResponse < Struct.new(
      :channel_arn,
      :next_token,
      :channel_messages,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of moderators that you want returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested moderators are
    #            returned.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    class ListChannelModeratorsRequest < Struct.new(
      :channel_arn,
      :max_results,
      :next_token,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested moderators are
    #            returned.</p>
    #   @return [String]
    # @!attribute channel_moderators
    #   <p>The information about and names of each moderator.</p>
    #   @return [Array<Types::ChannelModeratorSummary>]
    class ListChannelModeratorsResponse < Struct.new(
      :channel_arn,
      :next_token,
      :channel_moderators,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of channels that you want to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested channels are returned.</p>
    #   @return [String]
    class ListChannelsAssociatedWithChannelFlowRequest < Struct.new(
      :channel_flow_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channels
    #   <p>The information about each channel.</p>
    #   @return [Array<Types::ChannelAssociatedWithFlowSummary>]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested channels are returned.</p>
    #   @return [String]
    class ListChannelsAssociatedWithChannelFlowResponse < Struct.new(
      :channels,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the user or bot in the moderated channel.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of channels in the request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of channels moderated by
    #            the user is reached.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    class ListChannelsModeratedByAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn,
      :max_results,
      :next_token,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channels
    #   <p>The moderated channels in the request.</p>
    #   @return [Array<Types::ChannelModeratedByAppInstanceUserSummary>]
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of channels moderated by
    #            the user is reached.</p>
    #   @return [String]
    class ListChannelsModeratedByAppInstanceUserResponse < Struct.new(
      :channels,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #   @return [String]
    # @!attribute privacy
    #   <p>The privacy setting. <code>PUBLIC</code> retrieves all the public channels.
    #               <code>PRIVATE</code> retrieves private channels. Only an <code>AppInstanceAdmin</code>
    #            can retrieve private channels. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of channels that you want to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested channels are returned.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    class ListChannelsRequest < Struct.new(
      :app_instance_arn,
      :privacy,
      :max_results,
      :next_token,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channels
    #   <p>The information about each channel.</p>
    #   @return [Array<Types::ChannelSummary>]
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of channels is
    #            reached.</p>
    #   @return [String]
    class ListChannelsResponse < Struct.new(
      :channels,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of elastic channel.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of sub-channels that you want to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested sub-channels are returned.</p>
    #   @return [String]
    class ListSubChannelsRequest < Struct.new(
      :channel_arn,
      :chime_bearer,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of elastic channel.</p>
    #   @return [String]
    # @!attribute sub_channels
    #   <p>The information about each sub-channel.</p>
    #   @return [Array<Types::SubChannelSummary>]
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested sub-channels are returned.</p>
    #   @return [String]
    class ListSubChannelsResponse < Struct.new(
      :channel_arn,
      :sub_channels,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of message attribute values.</p>
    # @!attribute string_values
    #   <p>The strings in a message attribute value.</p>
    #   @return [Array<String>]
    class MessageAttributeValue < Struct.new(
      :string_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The websocket endpoint used to connect to Amazon Chime SDK messaging.</p>
    # @!attribute url
    #   <p>The endpoint to which you establish a websocket connection.</p>
    #   @return [String]
    class MessagingSessionEndpoint < Struct.new(
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more of the resources in the request does not exist in the system.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information about a processor in a channel flow.</p>
    # @!attribute name
    #   <p>The name of the channel flow.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The information about the type of processor and its identifier.</p>
    #   @return [Types::ProcessorConfiguration]
    # @!attribute execution_order
    #   <p>The sequence in which processors run. If you have multiple processors in a channel flow, message processing goes through each processor in the sequence. The value determines the sequence. 
    #            At this point, we support only 1 processor within a flow.</p>
    #   @return [Integer]
    # @!attribute fallback_action
    #   <p>Determines whether to continue with message processing or stop it in cases where communication with a processor fails. If a processor has a fallback action of <code>ABORT</code> and 
    #            communication with it fails, the processor sets the message status to <code>FAILED</code> and does not send the message to any recipients. Note that if the last processor in the channel flow sequence 
    #            has a fallback action of <code>CONTINUE</code> and communication with the processor fails, then the message is considered processed and sent to recipients of the channel.</p>
    #   @return [String]
    class Processor < Struct.new(
      :name,
      :configuration,
      :execution_order,
      :fallback_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A processor's metadata.</p>
    # @!attribute lambda
    #   <p>Indicates that the processor is of type Lambda.</p>
    #   @return [Types::LambdaConfiguration]
    class ProcessorConfiguration < Struct.new(
      :lambda,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The push notification configuration of the message.</p>
    # @!attribute title
    #   <p>The title of the push notification.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The body of the push notification.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Enum value that indicates the type of the push notification for a message.
    #            <code>DEFAULT</code>: Normal mobile push notification.
    #            <code>VOIP</code>: VOIP mobile push notification.</p>
    #   @return [String]
    class PushNotificationConfiguration < Struct.new(
      :title,
      :body,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The channel membership preferences for push notification.</p>
    # @!attribute allow_notifications
    #   <p>Enum value that indicates which push notifications to send to the requested member of a channel.
    #            <code>ALL</code> sends all push notifications, <code>NONE</code> sends no push notifications, <code>FILTERED</code> sends only filtered push notifications. 
    #         </p>
    #   @return [String]
    # @!attribute filter_rule
    #   <p>The simple JSON object used to send a subset of a push notification to the requested member.</p>
    #   @return [String]
    class PushNotificationPreferences < Struct.new(
      :allow_notifications,
      :filter_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call.</p>
    #   @return [String]
    # @!attribute expiration_settings
    #   <p>Settings that control the interval after which a channel is deleted.</p>
    #   @return [Types::ExpirationSettings]
    class PutChannelExpirationSettingsRequest < Struct.new(
      :channel_arn,
      :chime_bearer,
      :expiration_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The channel ARN.</p>
    #   @return [String]
    # @!attribute expiration_settings
    #   <p>Settings that control the interval after which a channel is deleted.</p>
    #   @return [Types::ExpirationSettings]
    class PutChannelExpirationSettingsResponse < Struct.new(
      :channel_arn,
      :expiration_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute member_arn
    #   <p>The ARN of the member setting the preferences.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> that makes the API call.</p>
    #   @return [String]
    # @!attribute preferences
    #   <p>The channel membership preferences of an <code>AppInstanceUser</code> .</p>
    #   @return [Types::ChannelMembershipPreferences]
    class PutChannelMembershipPreferencesRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      :preferences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute member
    #   <p>The details of a user.</p>
    #   @return [Types::Identity]
    # @!attribute preferences
    #   <p>The ARN and metadata of the member being added.</p>
    #   @return [Types::ChannelMembershipPreferences]
    class PutChannelMembershipPreferencesResponse < Struct.new(
      :channel_arn,
      :member,
      :preferences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the streaming configuration.</p>
    #   @return [String]
    # @!attribute streaming_configurations
    #   <p>The streaming configurations.</p>
    #   @return [Array<Types::StreamingConfiguration>]
    class PutMessagingStreamingConfigurationsRequest < Struct.new(
      :app_instance_arn,
      :streaming_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute streaming_configurations
    #   <p>The requested streaming configurations.</p>
    #   @return [Array<Types::StreamingConfiguration>]
    class PutMessagingStreamingConfigurationsResponse < Struct.new(
      :streaming_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel containing the messages that you want to redact.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The ID of the message being redacted.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #   @return [String]
    class RedactChannelMessageRequest < Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel containing the messages that you want to redact.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The ID of the message being redacted.</p>
    #   @return [String]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the response.</p>
    #            <note>
    #               <p>Only required when redacting messages in a SubChannel that the user belongs to.</p>
    #            </note>
    #   @return [String]
    class RedactChannelMessageResponse < Struct.new(
      :channel_arn,
      :message_id,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds the resource limit.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ResourceLimitExceededException < Struct.new(
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>A list of the <code>Field</code> objects in the channel being searched.</p>
    #   @return [Array<Types::SearchField>]
    # @!attribute max_results
    #   <p>The maximum number of channels that you want returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of channels is reached.</p>
    #   @return [String]
    class SearchChannelsRequest < Struct.new(
      :chime_bearer,
      :fields,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channels
    #   <p>A list of the channels in the request.</p>
    #   @return [Array<Types::ChannelSummary>]
    # @!attribute next_token
    #   <p>The token returned from previous API responses until the number of channels is reached.</p>
    #   @return [String]
    class SearchChannelsResponse < Struct.new(
      :channels,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A <code>Field</code> of the channel that you want to search.</p>
    # @!attribute key
    #   <p>An <code>enum</code> value that indicates the key to search the channel on. <code>MEMBERS</code> allows you to search channels based on memberships. You can use it with the <code>EQUALS</code> 
    #            operator to get channels whose memberships are equal to the specified values, and with the <code>INCLUDES</code>  operator to get channels whose memberships include the specified values.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values that you want to search for, a list of strings. The values must be <code>AppInstanceUserArns</code> specified as a list of strings.</p>
    #            <note>
    #               <p>This operation isn't supported for <code>AppInstanceUsers</code> with large number of memberships.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator used to compare field values, currently <code>EQUALS</code> or <code>INCLUDES</code>.  Use the <code>EQUALS</code> operator to find channels whose memberships equal the specified values. 
    #            Use the <code>INCLUDES</code> operator to find channels whose memberships include the specified values.</p>
    #   @return [String]
    class SearchField < Struct.new(
      :key,
      :values,
      :operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the channel message.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of message, <code>STANDARD</code> or <code>CONTROL</code>.</p>
    #            <p>
    #               <code>STANDARD</code> messages can be up to 4KB in size and contain metadata. Metadata is arbitrary, 
    #            and you can use it in a variety of ways, such as containing a link to an attachment.</p>
    #            <p>
    #               <code>CONTROL</code> messages are limited to 30 bytes and do not contain metadata.</p>
    #   @return [String]
    # @!attribute persistence
    #   <p>Boolean that controls whether the message is persisted on the back end. Required.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The optional metadata for each message.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>The <code>Idempotency</code> token for each client request.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    # @!attribute push_notification
    #   <p>The push notification configuration of the message.</p>
    #   @return [Types::PushNotificationConfiguration]
    # @!attribute message_attributes
    #   <p>The attributes for the message, used for message filtering along with a <code>FilterRule</code> defined in the <code>PushNotificationPreferences</code>.</p>
    #   @return [Hash<String, Types::MessageAttributeValue>]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type of the channel message.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target of a message. Must be a member of the channel, such as another user, a bot, or the sender. Only the target and the sender can view targeted messages.
    #            Only users who can see targeted messages can take actions on them. However, administrators can delete targeted messages that they can’t see.         
    #         </p>
    #   @return [Array<Types::Target>]
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
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The ID string assigned to each message.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the channel message.</p>
    #   @return [Types::ChannelMessageStatusStructure]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the response.</p>
    #   @return [String]
    class SendChannelMessageResponse < Struct.new(
      :channel_arn,
      :message_id,
      :status,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service encountered an unexpected error.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ServiceFailureException < Struct.new(
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is currently unavailable.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for connecting a messaging stream to Amazon Kinesis.</p>
    # @!attribute data_type
    #   <p>The data type of the configuration.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource in the configuration. </p>
    #   @return [String]
    class StreamingConfiguration < Struct.new(
      :data_type,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of the sub-channels associated with the elastic channel.</p>
    # @!attribute sub_channel_id
    #   <p>The unique ID of a SubChannel.</p>
    #   @return [String]
    # @!attribute membership_count
    #   <p>The number of members in a SubChannel.</p>
    #   @return [Integer]
    class SubChannelSummary < Struct.new(
      :sub_channel_id,
      :membership_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tag object containing a key-value pair.</p>
    # @!attribute key
    #   <p>The key in a tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value in a tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The target of a message, a sender, a user, or a bot. Only the target and the sender can view targeted messages.
    #          Only users who can see targeted messages can take actions on them. However, administrators can delete targeted messages that they can’t see.</p>
    # @!attribute member_arn
    #   <p>The ARN of the target channel member.</p>
    #   @return [String]
    class Target < Struct.new(
      :member_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client exceeded its request rate limit.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ThrottledClientException < Struct.new(
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client is not currently authorized to make the request.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class UnauthorizedClientException < Struct.new(
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #   @return [String]
    # @!attribute processors
    #   <p>Information about the processor Lambda functions </p>
    #   @return [Array<Types::Processor>]
    # @!attribute name
    #   <p>The name of the channel flow.</p>
    #   @return [String]
    class UpdateChannelFlowRequest < Struct.new(
      :channel_flow_arn,
      :processors,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #   @return [String]
    class UpdateChannelFlowResponse < Struct.new(
      :channel_flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The ID string of the message being updated.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the channel message. </p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata of the message being updated.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the request.</p>
    #            <note>
    #               <p>Only required when updating messages in a SubChannel that the user belongs to.</p>
    #            </note>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type of the channel message.</p>
    #   @return [String]
    class UpdateChannelMessageRequest < Struct.new(
      :channel_arn,
      :message_id,
      :content,
      :metadata,
      :chime_bearer,
      :sub_channel_id,
      :content_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The ID string of the message being updated.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the message update.</p>
    #   @return [Types::ChannelMessageStatusStructure]
    # @!attribute sub_channel_id
    #   <p>The ID of the SubChannel in the response.</p>
    #   @return [String]
    class UpdateChannelMessageResponse < Struct.new(
      :channel_arn,
      :message_id,
      :status,
      :sub_channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    class UpdateChannelReadMarkerRequest < Struct.new(
      :channel_arn,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    class UpdateChannelReadMarkerResponse < Struct.new(
      :channel_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the channel.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The mode of the update request.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata for the update request.</p>
    #   @return [String]
    # @!attribute chime_bearer
    #   <p>The ARN of the <code>AppInstanceUser</code> or <code>AppInstanceBot</code> 
    #            that makes the API call.</p>
    #   @return [String]
    class UpdateChannelRequest < Struct.new(
      :channel_arn,
      :name,
      :mode,
      :metadata,
      :chime_bearer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #   @return [String]
    class UpdateChannelResponse < Struct.new(
      :channel_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
