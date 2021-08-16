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
    #   The time at which a message was last read.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/AppInstanceUserMembershipSummary AWS API Documentation
    #
    class AppInstanceUserMembershipSummary < Struct.new(
      :type,
      :read_marker_timestamp)
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
    #   The membership types set for the channel users.
    #   @return [String]
    #
    # @!attribute [rw] members
    #   The users successfully added to the request.
    #   @return [Array<Types::Identity>]
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel to which you're adding users.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/BatchChannelMemberships AWS API Documentation
    #
    class BatchChannelMemberships < Struct.new(
      :invited_by,
      :type,
      :members,
      :channel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of failed member ARNs, error codes, and error messages.
    #
    # @!attribute [rw] member_arn
    #   The ARN of the member that the service couldn't add.
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

    # @note When making an API call, you may pass BatchCreateChannelMembershipRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         type: "DEFAULT", # accepts DEFAULT, HIDDEN
    #         member_arns: ["ChimeArn"], # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel to which you're adding users.
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
    #   The ARNs of the members you want to add to the channel.
    #   @return [Array<String>]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/BatchCreateChannelMembershipRequest AWS API Documentation
    #
    class BatchCreateChannelMembershipRequest < Struct.new(
      :channel_arn,
      :type,
      :member_arns,
      :chime_bearer)
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
      :last_updated_timestamp)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ChannelMembership AWS API Documentation
    #
    class ChannelMembership < Struct.new(
      :invited_by,
      :type,
      :member,
      :channel_arn,
      :created_timestamp,
      :last_updated_timestamp)
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
    #   The message content.
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
      :persistence)
      SENSITIVE = [:content, :metadata]
      include Aws::Structure
    end

    # Summary of the messages in a `Channel`.
    #
    # @!attribute [rw] message_id
    #   The ID of the message.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the message.
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
      :redacted)
      SENSITIVE = [:content, :metadata]
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
    #   The time at which the last message in a channel was sent.
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

    # @note When making an API call, you may pass CreateChannelBanRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         member_arn: "ChimeArn", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the ban request.
    #   @return [String]
    #
    # @!attribute [rw] member_arn
    #   The ARN of the member being banned.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
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

    # @note When making an API call, you may pass CreateChannelMembershipRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         member_arn: "ChimeArn", # required
    #         type: "DEFAULT", # required, accepts DEFAULT, HIDDEN
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel to which you're adding users.
    #   @return [String]
    #
    # @!attribute [rw] member_arn
    #   The ARN of the member you want to add to the channel.
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelMembershipRequest AWS API Documentation
    #
    class CreateChannelMembershipRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :type,
      :chime_bearer)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/CreateChannelMembershipResponse AWS API Documentation
    #
    class CreateChannelMembershipResponse < Struct.new(
      :channel_arn,
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateChannelModeratorRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         channel_moderator_arn: "ChimeArn", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_moderator_arn
    #   The ARN of the moderator.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
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

    # @note When making an API call, you may pass CreateChannelRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_arn: "ChimeArn", # required
    #         name: "NonEmptyResourceName", # required
    #         mode: "UNRESTRICTED", # accepts UNRESTRICTED, RESTRICTED
    #         privacy: "PUBLIC", # accepts PUBLIC, PRIVATE
    #         metadata: "Metadata",
    #         client_request_token: "ClientRequestToken", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
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
      :chime_bearer)
      SENSITIVE = [:name, :metadata, :client_request_token]
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

    # @note When making an API call, you may pass DeleteChannelBanRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         member_arn: "ChimeArn", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel from which the `AppInstanceUser` was banned.
    #   @return [String]
    #
    # @!attribute [rw] member_arn
    #   The ARN of the `AppInstanceUser` that you want to reinstate.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
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

    # @note When making an API call, you may pass DeleteChannelMembershipRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         member_arn: "ChimeArn", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel from which you want to remove the user.
    #   @return [String]
    #
    # @!attribute [rw] member_arn
    #   The ARN of the member that you're removing from the channel.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteChannelMembershipRequest AWS API Documentation
    #
    class DeleteChannelMembershipRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteChannelMessageRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         message_id: "MessageId", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The ID of the message being deleted.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DeleteChannelMessageRequest AWS API Documentation
    #
    class DeleteChannelMessageRequest < Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteChannelModeratorRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         channel_moderator_arn: "ChimeArn", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_moderator_arn
    #   The ARN of the moderator being deleted.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
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

    # @note When making an API call, you may pass DeleteChannelRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel being deleted.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
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

    # @note When making an API call, you may pass DescribeChannelBanRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         member_arn: "ChimeArn", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel from which the user is banned.
    #   @return [String]
    #
    # @!attribute [rw] member_arn
    #   The ARN of the member being banned.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
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

    # @note When making an API call, you may pass DescribeChannelMembershipForAppInstanceUserRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         app_instance_user_arn: "ChimeArn", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel to which the user belongs.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the user in a channel.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
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

    # @note When making an API call, you may pass DescribeChannelMembershipRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         member_arn: "ChimeArn", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] member_arn
    #   The ARN of the member.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/DescribeChannelMembershipRequest AWS API Documentation
    #
    class DescribeChannelMembershipRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer)
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

    # @note When making an API call, you may pass DescribeChannelModeratedByAppInstanceUserRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         app_instance_user_arn: "ChimeArn", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the moderated channel.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser` in the moderated channel.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
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

    # @note When making an API call, you may pass DescribeChannelModeratorRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         channel_moderator_arn: "ChimeArn", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_moderator_arn
    #   The ARN of the channel moderator.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
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

    # @note When making an API call, you may pass DescribeChannelRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
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

    # @note When making an API call, you may pass GetChannelMessageRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         message_id: "MessageId", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The ID of the message.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/GetChannelMessageRequest AWS API Documentation
    #
    class GetChannelMessageRequest < Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer)
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

    # The details of a user.
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

    # @note When making an API call, you may pass ListChannelBansRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
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

    # @note When making an API call, you may pass ListChannelMembershipsForAppInstanceUserRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_user_arn: "ChimeArn",
    #         max_results: 1,
    #         next_token: "NextToken",
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`s
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
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
    #   The token passed by previous API calls until all requested users are
    #   returned.
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

    # @note When making an API call, you may pass ListChannelMembershipsRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         type: "DEFAULT", # accepts DEFAULT, HIDDEN
    #         max_results: 1,
    #         next_token: "NextToken",
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The maximum number of channel memberships that you want returned.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The membership type of a user, `DEFAULT` or `HIDDEN`. Default
    #   members are always returned as part of `ListChannelMemberships`.
    #   Hidden members are only returned if the type filter in
    #   `ListChannelMemberships` equals `HIDDEN`. Otherwise hidden members
    #   are not returned.
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelMembershipsRequest AWS API Documentation
    #
    class ListChannelMembershipsRequest < Struct.new(
      :channel_arn,
      :type,
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

    # @note When making an API call, you may pass ListChannelMessagesRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         not_before: Time.now,
    #         not_after: Time.now,
    #         max_results: 1,
    #         next_token: "NextToken",
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
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
      :chime_bearer)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/ListChannelMessagesResponse AWS API Documentation
    #
    class ListChannelMessagesResponse < Struct.new(
      :channel_arn,
      :next_token,
      :channel_messages)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListChannelModeratorsRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
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

    # @note When making an API call, you may pass ListChannelsModeratedByAppInstanceUserRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_user_arn: "ChimeArn",
    #         max_results: 1,
    #         next_token: "NextToken",
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the user in the moderated channel.
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
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

    # @note When making an API call, you may pass ListChannelsRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_arn: "ChimeArn", # required
    #         privacy: "PUBLIC", # accepts PUBLIC, PRIVATE
    #         max_results: 1,
    #         next_token: "NextToken",
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
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

    # @note When making an API call, you may pass RedactChannelMessageRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         message_id: "MessageId", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/RedactChannelMessageRequest AWS API Documentation
    #
    class RedactChannelMessageRequest < Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/RedactChannelMessageResponse AWS API Documentation
    #
    class RedactChannelMessageResponse < Struct.new(
      :channel_arn,
      :message_id)
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

    # @note When making an API call, you may pass SendChannelMessageRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         content: "NonEmptyContent", # required
    #         type: "STANDARD", # required, accepts STANDARD, CONTROL
    #         persistence: "PERSISTENT", # required, accepts PERSISTENT, NON_PERSISTENT
    #         metadata: "Metadata",
    #         client_request_token: "ClientRequestToken", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the message.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of message, `STANDARD` or `CONTROL`.
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
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
      :chime_bearer)
      SENSITIVE = [:content, :metadata, :client_request_token]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/SendChannelMessageResponse AWS API Documentation
    #
    class SendChannelMessageResponse < Struct.new(
      :channel_arn,
      :message_id)
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

    # Describes a tag applied to a resource.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
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

    # @note When making an API call, you may pass UpdateChannelMessageRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         message_id: "MessageId", # required
    #         content: "Content",
    #         metadata: "Metadata",
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The ID string of the message being updated.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the message being updated.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the message being updated.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UpdateChannelMessageRequest AWS API Documentation
    #
    class UpdateChannelMessageRequest < Struct.new(
      :channel_arn,
      :message_id,
      :content,
      :metadata,
      :chime_bearer)
      SENSITIVE = [:content, :metadata]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-messaging-2021-05-15/UpdateChannelMessageResponse AWS API Documentation
    #
    class UpdateChannelMessageResponse < Struct.new(
      :channel_arn,
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateChannelReadMarkerRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
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

    # @note When making an API call, you may pass UpdateChannelRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ChimeArn", # required
    #         name: "NonEmptyResourceName", # required
    #         mode: "UNRESTRICTED", # required, accepts UNRESTRICTED, RESTRICTED
    #         metadata: "Metadata",
    #         chime_bearer: "ChimeArn", # required
    #       }
    #
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
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
