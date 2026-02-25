# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Wickr
  module Types

    # The request was invalid or malformed. This error occurs when the
    # request parameters do not meet the API requirements, such as invalid
    # field values, missing required parameters, or improperly formatted
    # data.
    #
    # @!attribute [rw] message
    #   A detailed message explaining what was wrong with the request and
    #   how to correct it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BadRequestError AWS API Documentation
    #
    class BadRequestError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a device where a user has logged into Wickr, containing
    # information about the device's type, status, and login history.
    #
    # @!attribute [rw] app_id
    #   The unique application ID for the Wickr app on this device.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The timestamp when the device first appeared in the Wickr database.
    #   @return [String]
    #
    # @!attribute [rw] last_login
    #   The timestamp when the device last successfully logged into Wickr.
    #   This is also used to determine SSO idle time.
    #   @return [String]
    #
    # @!attribute [rw] status_text
    #   The current status of the device, either 'Active' or 'Reset'
    #   depending on whether the device is currently active or has been
    #   marked for reset.
    #   @return [String]
    #
    # @!attribute [rw] suspend
    #   Indicates whether the device is suspended.
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The operating system of the device (e.g., 'MacOSX', 'Windows',
    #   'iOS', 'Android').
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BasicDeviceObject AWS API Documentation
    #
    class BasicDeviceObject < Struct.new(
      :app_id,
      :created,
      :last_login,
      :status_text,
      :suspend,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network where users will be created.
    #   @return [String]
    #
    # @!attribute [rw] users
    #   A list of user objects containing the details for each user to be
    #   created, including username, name, security groups, and optional
    #   invite codes. Maximum 50 users per batch request.
    #   @return [Array<Types::BatchCreateUserRequestItem>]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for this request to ensure idempotency. If you
    #   retry a request with the same client token, the service will return
    #   the same response without creating duplicate users.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchCreateUserRequest AWS API Documentation
    #
    class BatchCreateUserRequest < Struct.new(
      :network_id,
      :users,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details for a single user to be created in a batch user
    # creation request.
    #
    # <note markdown="1"> A user can only be assigned to a single security group. Attempting to
    # add a user to multiple security groups is not supported and will
    # result in an error.
    #
    #  </note>
    #
    # <note markdown="1"> `codeValidation`, `inviteCode`, and `inviteCodeTtl` are restricted to
    # networks under preview only.
    #
    #  </note>
    #
    # @!attribute [rw] first_name
    #   The first name of the user.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the user.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group IDs to which the user should be assigned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] username
    #   The email address or username for the user. Must be unique within
    #   the network.
    #   @return [String]
    #
    # @!attribute [rw] invite_code
    #   A custom invite code for the user. If not provided, one will be
    #   generated automatically.
    #   @return [String]
    #
    # @!attribute [rw] invite_code_ttl
    #   The time-to-live for the invite code in days. After this period, the
    #   invite code will expire.
    #   @return [Integer]
    #
    # @!attribute [rw] code_validation
    #   Indicates whether the user can be verified through a custom invite
    #   code.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchCreateUserRequestItem AWS API Documentation
    #
    class BatchCreateUserRequestItem < Struct.new(
      :first_name,
      :last_name,
      :security_group_ids,
      :username,
      :invite_code,
      :invite_code_ttl,
      :code_validation)
      SENSITIVE = [:first_name, :last_name]
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating the overall result of the batch operation.
    #   @return [String]
    #
    # @!attribute [rw] successful
    #   A list of user objects that were successfully created, including
    #   their assigned user IDs and invite codes.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] failed
    #   A list of user creation attempts that failed, including error
    #   details explaining why each user could not be created.
    #   @return [Array<Types::BatchUserErrorResponseItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchCreateUserResponse AWS API Documentation
    #
    class BatchCreateUserResponse < Struct.new(
      :message,
      :successful,
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network from which users will be deleted.
    #   @return [String]
    #
    # @!attribute [rw] user_ids
    #   A list of user IDs identifying the users to be deleted from the
    #   network. Maximum 50 users per batch request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for this request to ensure idempotency. If you
    #   retry a request with the same client token, the service will return
    #   the same response without attempting to delete users again.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchDeleteUserRequest AWS API Documentation
    #
    class BatchDeleteUserRequest < Struct.new(
      :network_id,
      :user_ids,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating the overall result of the batch deletion
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] successful
    #   A list of user IDs that were successfully deleted from the network.
    #   @return [Array<Types::BatchUserSuccessResponseItem>]
    #
    # @!attribute [rw] failed
    #   A list of user deletion attempts that failed, including error
    #   details explaining why each user could not be deleted.
    #   @return [Array<Types::BatchUserErrorResponseItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchDeleteUserResponse AWS API Documentation
    #
    class BatchDeleteUserResponse < Struct.new(
      :message,
      :successful,
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error information for a device operation that failed in a
    # batch device request.
    #
    # @!attribute [rw] field
    #   The field that caused the error.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A description of why the device operation failed.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The application ID of the device that failed to be processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchDeviceErrorResponseItem AWS API Documentation
    #
    class BatchDeviceErrorResponseItem < Struct.new(
      :field,
      :reason,
      :app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a device that was successfully processed in
    # a batch device operation.
    #
    # @!attribute [rw] app_id
    #   The application ID of the device that was successfully processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchDeviceSuccessResponseItem AWS API Documentation
    #
    class BatchDeviceSuccessResponseItem < Struct.new(
      :app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network where the users will be looked up.
    #   @return [String]
    #
    # @!attribute [rw] unames
    #   A list of username hashes (unames) to look up. Each uname is a
    #   unique identifier for a user's username. Maximum 50 unames per
    #   batch request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for this request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchLookupUserUnameRequest AWS API Documentation
    #
    class BatchLookupUserUnameRequest < Struct.new(
      :network_id,
      :unames,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating the overall result of the batch lookup
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] successful
    #   A list of successfully resolved username hashes with their
    #   corresponding email addresses.
    #   @return [Array<Types::BatchUnameSuccessResponseItem>]
    #
    # @!attribute [rw] failed
    #   A list of username hash lookup attempts that failed, including error
    #   details explaining why each lookup failed.
    #   @return [Array<Types::BatchUnameErrorResponseItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchLookupUserUnameResponse AWS API Documentation
    #
    class BatchLookupUserUnameResponse < Struct.new(
      :message,
      :successful,
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network where users will be reinvited.
    #   @return [String]
    #
    # @!attribute [rw] user_ids
    #   A list of user IDs identifying the users to be reinvited to the
    #   network. Maximum 50 users per batch request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for this request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchReinviteUserRequest AWS API Documentation
    #
    class BatchReinviteUserRequest < Struct.new(
      :network_id,
      :user_ids,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating the overall result of the batch reinvitation
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] successful
    #   A list of user IDs that were successfully reinvited.
    #   @return [Array<Types::BatchUserSuccessResponseItem>]
    #
    # @!attribute [rw] failed
    #   A list of reinvitation attempts that failed, including error details
    #   explaining why each user could not be reinvited.
    #   @return [Array<Types::BatchUserErrorResponseItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchReinviteUserResponse AWS API Documentation
    #
    class BatchReinviteUserResponse < Struct.new(
      :message,
      :successful,
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network containing the user whose devices will
    #   be reset.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of the user whose devices will be reset.
    #   @return [String]
    #
    # @!attribute [rw] app_ids
    #   A list of application IDs identifying the specific devices to be
    #   reset for the user. Maximum 50 devices per batch request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for this request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchResetDevicesForUserRequest AWS API Documentation
    #
    class BatchResetDevicesForUserRequest < Struct.new(
      :network_id,
      :user_id,
      :app_ids,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating the overall result of the batch device reset
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] successful
    #   A list of application IDs that were successfully reset.
    #   @return [Array<Types::BatchDeviceSuccessResponseItem>]
    #
    # @!attribute [rw] failed
    #   A list of device reset attempts that failed, including error details
    #   explaining why each device could not be reset.
    #   @return [Array<Types::BatchDeviceErrorResponseItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchResetDevicesForUserResponse AWS API Documentation
    #
    class BatchResetDevicesForUserResponse < Struct.new(
      :message,
      :successful,
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network where users will be suspended or
    #   unsuspended.
    #   @return [String]
    #
    # @!attribute [rw] suspend
    #   A boolean value indicating whether to suspend (true) or unsuspend
    #   (false) the specified users.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_ids
    #   A list of user IDs identifying the users whose suspend status will
    #   be toggled. Maximum 50 users per batch request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for this request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchToggleUserSuspendStatusRequest AWS API Documentation
    #
    class BatchToggleUserSuspendStatusRequest < Struct.new(
      :network_id,
      :suspend,
      :user_ids,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating the overall result of the batch suspend status
    #   toggle operation.
    #   @return [String]
    #
    # @!attribute [rw] successful
    #   A list of user IDs whose suspend status was successfully toggled.
    #   @return [Array<Types::BatchUserSuccessResponseItem>]
    #
    # @!attribute [rw] failed
    #   A list of suspend status toggle attempts that failed, including
    #   error details explaining why each user's status could not be
    #   changed.
    #   @return [Array<Types::BatchUserErrorResponseItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchToggleUserSuspendStatusResponse AWS API Documentation
    #
    class BatchToggleUserSuspendStatusResponse < Struct.new(
      :message,
      :successful,
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error information for a username hash lookup that failed in a
    # batch uname lookup request.
    #
    # @!attribute [rw] field
    #   The field that caused the error.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A description of why the username hash lookup failed.
    #   @return [String]
    #
    # @!attribute [rw] uname
    #   The username hash that failed to be looked up.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchUnameErrorResponseItem AWS API Documentation
    #
    class BatchUnameErrorResponseItem < Struct.new(
      :field,
      :reason,
      :uname)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a username hash that was successfully
    # resolved in a batch uname lookup operation.
    #
    # @!attribute [rw] uname
    #   The username hash that was successfully resolved.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The email address or username corresponding to the username hash.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchUnameSuccessResponseItem AWS API Documentation
    #
    class BatchUnameSuccessResponseItem < Struct.new(
      :uname,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error information for a user operation that failed in a batch
    # user request.
    #
    # @!attribute [rw] field
    #   The field that caused the error.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A description of why the user operation failed.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID associated with the failed operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchUserErrorResponseItem AWS API Documentation
    #
    class BatchUserErrorResponseItem < Struct.new(
      :field,
      :reason,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a user that was successfully processed in a
    # batch user operation.
    #
    # @!attribute [rw] user_id
    #   The user ID that was successfully processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BatchUserSuccessResponseItem AWS API Documentation
    #
    class BatchUserSuccessResponseItem < Struct.new(
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a guest user who has been blocked from accessing a Wickr
    # network.
    #
    # @!attribute [rw] username
    #   The username of the blocked guest user.
    #   @return [String]
    #
    # @!attribute [rw] admin
    #   The username of the administrator who blocked this guest user.
    #   @return [String]
    #
    # @!attribute [rw] modified
    #   The timestamp when the guest user was blocked or last modified.
    #   @return [String]
    #
    # @!attribute [rw] username_hash
    #   The unique username hash identifier for the blocked guest user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/BlockedGuestUser AWS API Documentation
    #
    class BlockedGuestUser < Struct.new(
      :username,
      :admin,
      :modified,
      :username_hash)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a bot account in a Wickr network with all its informational
    # fields.
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the bot that is visible to users.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username of the bot.
    #   @return [String]
    #
    # @!attribute [rw] uname
    #   The unique username hash identifier for the bot.
    #   @return [String]
    #
    # @!attribute [rw] pubkey
    #   The public key of the bot used for encryption.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the bot (1 for pending, 2 for active).
    #   @return [Integer]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group to which the bot belongs.
    #   @return [String]
    #
    # @!attribute [rw] has_challenge
    #   Indicates whether the bot has a password set.
    #   @return [Boolean]
    #
    # @!attribute [rw] suspended
    #   Indicates whether the bot is currently suspended.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_login
    #   The timestamp of the bot's last login.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/Bot AWS API Documentation
    #
    class Bot < Struct.new(
      :bot_id,
      :display_name,
      :username,
      :uname,
      :pubkey,
      :status,
      :group_id,
      :has_challenge,
      :suspended,
      :last_login)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the calling feature permissions and settings for users in a
    # security group, controlling what types of calls users can initiate and
    # participate in.
    #
    # @!attribute [rw] can_start_11_call
    #   Specifies whether users can start one-to-one calls.
    #   @return [Boolean]
    #
    # @!attribute [rw] can_video_call
    #   Specifies whether users can make video calls (as opposed to
    #   audio-only calls). Valid only when audio call(canStart11Call) is
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] force_tcp_call
    #   When enabled, forces all calls to use TCP protocol instead of UDP
    #   for network traversal.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CallingSettings AWS API Documentation
    #
    class CallingSettings < Struct.new(
      :can_start_11_call,
      :can_video_call,
      :force_tcp_call)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network where the bot will be created.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username for the bot. This must be unique within the network and
    #   follow the network's naming conventions.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name for the bot that will be visible to users in the
    #   network.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group to which the bot will be assigned.
    #   @return [String]
    #
    # @!attribute [rw] challenge
    #   The password for the bot account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CreateBotRequest AWS API Documentation
    #
    class CreateBotRequest < Struct.new(
      :network_id,
      :username,
      :display_name,
      :group_id,
      :challenge)
      SENSITIVE = [:challenge]
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating the result of the bot creation operation.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The unique identifier assigned to the newly created bot.
    #   @return [String]
    #
    # @!attribute [rw] network_id
    #   The ID of the network where the bot was created.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username of the newly created bot.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the newly created bot.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group to which the bot was assigned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CreateBotResponse AWS API Documentation
    #
    class CreateBotResponse < Struct.new(
      :message,
      :bot_id,
      :network_id,
      :username,
      :display_name,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network containing the data retention bot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CreateDataRetentionBotChallengeRequest AWS API Documentation
    #
    class CreateDataRetentionBotChallengeRequest < Struct.new(
      :network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] challenge
    #   The newly generated challenge password for the data retention bot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CreateDataRetentionBotChallengeResponse AWS API Documentation
    #
    class CreateDataRetentionBotChallengeResponse < Struct.new(
      :challenge)
      SENSITIVE = [:challenge]
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network where the data retention bot will be
    #   created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CreateDataRetentionBotRequest AWS API Documentation
    #
    class CreateDataRetentionBotRequest < Struct.new(
      :network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating that the data retention bot was successfully
    #   provisioned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CreateDataRetentionBotResponse AWS API Documentation
    #
    class CreateDataRetentionBotResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_name
    #   The name for the new network. Must be between 1 and 20 characters.
    #   @return [String]
    #
    # @!attribute [rw] access_level
    #   The access level for the network. Valid values are STANDARD or
    #   PREMIUM, which determine the features and capabilities available to
    #   network members.
    #   @return [String]
    #
    # @!attribute [rw] enable_premium_free_trial
    #   Specifies whether to enable a premium free trial for the network. It
    #   is optional and has a default value as false. When set to true, the
    #   network starts with premium features for a limited trial period.
    #   @return [Boolean]
    #
    # @!attribute [rw] encryption_key_arn
    #   The ARN of the Amazon Web Services KMS customer managed key to use
    #   for encrypting sensitive data in the network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CreateNetworkRequest AWS API Documentation
    #
    class CreateNetworkRequest < Struct.new(
      :network_name,
      :access_level,
      :enable_premium_free_trial,
      :encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The unique identifier assigned to the newly created network.
    #   @return [String]
    #
    # @!attribute [rw] network_name
    #   The name of the newly created network.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The ARN of the KMS key being used to encrypt sensitive data in the
    #   network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CreateNetworkResponse AWS API Documentation
    #
    class CreateNetworkResponse < Struct.new(
      :network_id,
      :network_name,
      :encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network where the security group will be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the new security group.
    #   @return [String]
    #
    # @!attribute [rw] security_group_settings
    #   The configuration settings for the security group, including
    #   permissions, federation settings, and feature controls.
    #   @return [Types::SecurityGroupSettingsRequest]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for this request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CreateSecurityGroupRequest AWS API Documentation
    #
    class CreateSecurityGroupRequest < Struct.new(
      :network_id,
      :name,
      :security_group_settings,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_group
    #   The details of the newly created security group, including its ID,
    #   name, and settings.
    #   @return [Types::SecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/CreateSecurityGroupResponse AWS API Documentation
    #
    class CreateSecurityGroupResponse < Struct.new(
      :security_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network from which the bot will be deleted.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/DeleteBotRequest AWS API Documentation
    #
    class DeleteBotRequest < Struct.new(
      :network_id,
      :bot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating the result of the bot deletion operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/DeleteBotResponse AWS API Documentation
    #
    class DeleteBotResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network from which the data retention bot will
    #   be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/DeleteDataRetentionBotRequest AWS API Documentation
    #
    class DeleteDataRetentionBotRequest < Struct.new(
      :network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating that the data retention bot and all associated
    #   data were successfully deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/DeleteDataRetentionBotResponse AWS API Documentation
    #
    class DeleteDataRetentionBotResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for this request to ensure idempotency. If you
    #   retry a request with the same client token, the service will return
    #   the same response without attempting to delete the network again.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/DeleteNetworkRequest AWS API Documentation
    #
    class DeleteNetworkRequest < Struct.new(
      :network_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating that the network deletion has been initiated
    #   successfully.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/DeleteNetworkResponse AWS API Documentation
    #
    class DeleteNetworkResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network from which the security group will be
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The unique identifier of the security group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/DeleteSecurityGroupRequest AWS API Documentation
    #
    class DeleteSecurityGroupRequest < Struct.new(
      :network_id,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating the result of the security group deletion
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] network_id
    #   The ID of the network from which the security group was deleted.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/DeleteSecurityGroupResponse AWS API Documentation
    #
    class DeleteSecurityGroupResponse < Struct.new(
      :message,
      :network_id,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed error information explaining why an operation
    # failed, including which field caused the error and the reason for the
    # failure.
    #
    # @!attribute [rw] field
    #   The name of the field that contains an error or warning.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A detailed description of the error or warning.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :field,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Access to the requested resource is forbidden. This error occurs when
    # the authenticated user does not have the necessary permissions to
    # perform the requested operation, even though they are authenticated.
    #
    # @!attribute [rw] message
    #   A message explaining why access was denied and what permissions are
    #   required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ForbiddenError AWS API Documentation
    #
    class ForbiddenError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network containing the bot.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetBotRequest AWS API Documentation
    #
    class GetBotRequest < Struct.new(
      :network_id,
      :bot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The unique identifier of the bot.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the bot that is visible to users.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username of the bot.
    #   @return [String]
    #
    # @!attribute [rw] uname
    #   The unique username hash identifier for the bot.
    #   @return [String]
    #
    # @!attribute [rw] pubkey
    #   The public key of the bot used for encryption.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the bot (1 for pending, 2 for active).
    #   @return [Integer]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group to which the bot belongs.
    #   @return [String]
    #
    # @!attribute [rw] has_challenge
    #   Indicates whether the bot has a password set.
    #   @return [Boolean]
    #
    # @!attribute [rw] suspended
    #   Indicates whether the bot is currently suspended.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_login
    #   The timestamp of the bot's last login.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetBotResponse AWS API Documentation
    #
    class GetBotResponse < Struct.new(
      :bot_id,
      :display_name,
      :username,
      :uname,
      :pubkey,
      :status,
      :group_id,
      :has_challenge,
      :suspended,
      :last_login)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network for which to retrieve bot counts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetBotsCountRequest AWS API Documentation
    #
    class GetBotsCountRequest < Struct.new(
      :network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pending
    #   The number of bots with pending status (invited but not yet
    #   activated).
    #   @return [Integer]
    #
    # @!attribute [rw] active
    #   The number of bots with active status.
    #   @return [Integer]
    #
    # @!attribute [rw] total
    #   The total number of bots in the network (active and pending).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetBotsCountResponse AWS API Documentation
    #
    class GetBotsCountResponse < Struct.new(
      :pending,
      :active,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network containing the data retention bot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetDataRetentionBotRequest AWS API Documentation
    #
    class GetDataRetentionBotRequest < Struct.new(
      :network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_name
    #   The name of the data retention bot.
    #   @return [String]
    #
    # @!attribute [rw] bot_exists
    #   Indicates whether a data retention bot exists in the network.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_bot_active
    #   Indicates whether the data retention bot is active and operational.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_data_retention_bot_registered
    #   Indicates whether the data retention bot has been registered with
    #   the network.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_data_retention_service_enabled
    #   Indicates whether the data retention service is enabled for the
    #   network.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_pubkey_msg_acked
    #   Indicates whether the public key message has been acknowledged by
    #   the bot.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetDataRetentionBotResponse AWS API Documentation
    #
    class GetDataRetentionBotResponse < Struct.new(
      :bot_name,
      :bot_exists,
      :is_bot_active,
      :is_data_retention_bot_registered,
      :is_data_retention_service_enabled,
      :is_pubkey_msg_acked)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network for which to retrieve guest user
    #   history.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetGuestUserHistoryCountRequest AWS API Documentation
    #
    class GetGuestUserHistoryCountRequest < Struct.new(
      :network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] history
    #   A list of historical guest user counts, organized by month and
    #   billing period.
    #   @return [Array<Types::GuestUserHistoryCount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetGuestUserHistoryCountResponse AWS API Documentation
    #
    class GetGuestUserHistoryCountResponse < Struct.new(
      :history)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetNetworkRequest AWS API Documentation
    #
    class GetNetworkRequest < Struct.new(
      :network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The unique identifier of the network.
    #   @return [String]
    #
    # @!attribute [rw] network_name
    #   The name of the network.
    #   @return [String]
    #
    # @!attribute [rw] access_level
    #   The access level of the network (STANDARD or PREMIUM), which
    #   determines available features and capabilities.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID that owns the network.
    #   @return [String]
    #
    # @!attribute [rw] network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #   @return [String]
    #
    # @!attribute [rw] standing
    #   The current standing or status of the network.
    #   @return [Integer]
    #
    # @!attribute [rw] free_trial_expiration
    #   The expiration date and time for the network's free trial period,
    #   if applicable.
    #   @return [String]
    #
    # @!attribute [rw] migration_state
    #   The SSO redirect URI migration state, managed by the SSO redirect
    #   migration wizard. Values: 0 (not started), 1 (in progress), or 2
    #   (completed).
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key_arn
    #   The ARN of the Amazon Web Services KMS customer managed key used for
    #   encrypting sensitive data in the network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetNetworkResponse AWS API Documentation
    #
    class GetNetworkResponse < Struct.new(
      :network_id,
      :network_name,
      :access_level,
      :aws_account_id,
      :network_arn,
      :standing,
      :free_trial_expiration,
      :migration_state,
      :encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network whose settings will be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetNetworkSettingsRequest AWS API Documentation
    #
    class GetNetworkSettingsRequest < Struct.new(
      :network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] settings
    #   A list of network settings, where each setting includes a name,
    #   value, and type.
    #   @return [Array<Types::Setting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetNetworkSettingsResponse AWS API Documentation
    #
    class GetNetworkSettingsResponse < Struct.new(
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network whose OIDC configuration will be
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The OAuth client ID for retrieving access tokens (optional).
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The authorization code for retrieving access tokens (optional).
    #   @return [String]
    #
    # @!attribute [rw] grant_type
    #   The OAuth grant type for retrieving access tokens (optional).
    #   @return [String]
    #
    # @!attribute [rw] redirect_uri
    #   The redirect URI for the OAuth flow (optional).
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL for the OIDC provider (optional).
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The OAuth client secret for retrieving access tokens (optional).
    #   @return [String]
    #
    # @!attribute [rw] code_verifier
    #   The PKCE code verifier for enhanced security in the OAuth flow
    #   (optional).
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The CA certificate for secure communication with the OIDC provider
    #   (optional).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetOidcInfoRequest AWS API Documentation
    #
    class GetOidcInfoRequest < Struct.new(
      :network_id,
      :client_id,
      :code,
      :grant_type,
      :redirect_uri,
      :url,
      :client_secret,
      :code_verifier,
      :certificate)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # @!attribute [rw] openid_connect_info
    #   The OpenID Connect configuration information for the network,
    #   including issuer, client ID, scopes, and other SSO settings.
    #   @return [Types::OidcConfigInfo]
    #
    # @!attribute [rw] token_info
    #   OAuth token information including access token, refresh token, and
    #   expiration details (only present if token parameters were provided
    #   in the request).
    #   @return [Types::OidcTokenInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetOidcInfoResponse AWS API Documentation
    #
    class GetOidcInfoResponse < Struct.new(
      :openid_connect_info,
      :token_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network for which OpenTDF integration will be
    #   retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetOpentdfConfigRequest AWS API Documentation
    #
    class GetOpentdfConfigRequest < Struct.new(
      :network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_id
    #   The OIDC client ID used for authenticating with the OpenTDF
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain of the OpenTDF server.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The OIDC client secret used for authenticating with the OpenTDF
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the OpenTDF platform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetOpentdfConfigResponse AWS API Documentation
    #
    class GetOpentdfConfigResponse < Struct.new(
      :client_id,
      :domain,
      :client_secret,
      :provider)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network containing the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The unique identifier of the security group to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetSecurityGroupRequest AWS API Documentation
    #
    class GetSecurityGroupRequest < Struct.new(
      :network_id,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_group
    #   The detailed information about the security group, including all its
    #   settings and member counts.
    #   @return [Types::SecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetSecurityGroupResponse AWS API Documentation
    #
    class GetSecurityGroupResponse < Struct.new(
      :security_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network containing the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The unique identifier of the user to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time for filtering the user's last activity. Only
    #   activity after this timestamp will be considered. Time is specified
    #   in epoch seconds.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time for filtering the user's last activity. Only activity
    #   before this timestamp will be considered. Time is specified in epoch
    #   seconds.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetUserRequest AWS API Documentation
    #
    class GetUserRequest < Struct.new(
      :network_id,
      :user_id,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The unique identifier of the user.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name of the user.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The email address or username of the user.
    #   @return [String]
    #
    # @!attribute [rw] is_admin
    #   Indicates whether the user has administrator privileges in the
    #   network.
    #   @return [Boolean]
    #
    # @!attribute [rw] suspended
    #   Indicates whether the user is currently suspended.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The current status of the user (1 for pending, 2 for active).
    #   @return [Integer]
    #
    # @!attribute [rw] last_activity
    #   The timestamp of the user's last activity in the network, specified
    #   in epoch seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] last_login
    #   The timestamp of the user's last login to the network, specified in
    #   epoch seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group IDs to which the user belongs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetUserResponse AWS API Documentation
    #
    class GetUserResponse < Struct.new(
      :user_id,
      :first_name,
      :last_name,
      :username,
      :is_admin,
      :suspended,
      :status,
      :last_activity,
      :last_login,
      :security_group_ids)
      SENSITIVE = [:first_name, :last_name]
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network for which to retrieve user counts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetUsersCountRequest AWS API Documentation
    #
    class GetUsersCountRequest < Struct.new(
      :network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pending
    #   The number of users with pending status (invited but not yet
    #   accepted).
    #   @return [Integer]
    #
    # @!attribute [rw] active
    #   The number of users with active status in the network.
    #   @return [Integer]
    #
    # @!attribute [rw] rejected
    #   The number of users who have rejected network invitations.
    #   @return [Integer]
    #
    # @!attribute [rw] remaining
    #   The number of additional users that can be added to the network
    #   while maintaining premium free trial eligibility.
    #   @return [Integer]
    #
    # @!attribute [rw] total
    #   The total number of users in the network (active and pending
    #   combined).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GetUsersCountResponse AWS API Documentation
    #
    class GetUsersCountResponse < Struct.new(
      :pending,
      :active,
      :rejected,
      :remaining,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a guest user who has accessed the network from a federated
    # Wickr network.
    #
    # @!attribute [rw] billing_period
    #   The billing period when this guest user accessed the network (e.g.,
    #   '2024-01').
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username of the guest user.
    #   @return [String]
    #
    # @!attribute [rw] username_hash
    #   The unique username hash identifier for the guest user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GuestUser AWS API Documentation
    #
    class GuestUser < Struct.new(
      :billing_period,
      :username,
      :username_hash)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the count of guest users for a specific billing period, used
    # for tracking historical guest user activity.
    #
    # @!attribute [rw] month
    #   The month and billing period in YYYY\_MM format (e.g.,
    #   '2024\_01').
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of guest users who have communicated with your Wickr
    #   network during this billing period.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/GuestUserHistoryCount AWS API Documentation
    #
    class GuestUserHistoryCount < Struct.new(
      :month,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred on the server while processing the
    # request. This indicates a problem with the Wickr service itself rather
    # than with the request. If this error persists, contact Amazon Web
    # Services Support.
    #
    # @!attribute [rw] message
    #   A message describing the internal server error that occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/InternalServerError AWS API Documentation
    #
    class InternalServerError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network from which to list blocked guest users.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of blocked guest users to return in a single
    #   page. Valid range is 1-100. Default is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending)
    #   or 'DESC' (descending). Default is 'DESC'.
    #   @return [String]
    #
    # @!attribute [rw] sort_fields
    #   The field to sort blocked guest users by. Accepted values include
    #   'username', 'admin', and 'modified'.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   Filter results to only include blocked guest users with usernames
    #   matching this value.
    #   @return [String]
    #
    # @!attribute [rw] admin
    #   Filter results to only include blocked guest users that were blocked
    #   by this administrator.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListBlockedGuestUsersRequest AWS API Documentation
    #
    class ListBlockedGuestUsersRequest < Struct.new(
      :network_id,
      :max_results,
      :sort_direction,
      :sort_fields,
      :username,
      :admin,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use for retrieving the next page of results. If this is
    #   not present, there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] blocklist
    #   A list of blocked guest user objects within the current page.
    #   @return [Array<Types::BlockedGuestUser>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListBlockedGuestUsersResponse AWS API Documentation
    #
    class ListBlockedGuestUsersResponse < Struct.new(
      :next_token,
      :blocklist)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network from which to list bots.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of bots to return in a single page. Valid range
    #   is 1-100. Default is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_fields
    #   The fields to sort bots by. Multiple fields can be specified by
    #   separating them with '+'. Accepted values include 'username',
    #   'firstName', 'displayName', 'status', and 'groupId'.
    #   @return [String]
    #
    # @!attribute [rw] sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending)
    #   or 'DESC' (descending). Default is 'DESC'.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   Filter results to only include bots with display names matching this
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   Filter results to only include bots with usernames matching this
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filter results to only include bots with this status (1 for pending,
    #   2 for active).
    #   @return [Integer]
    #
    # @!attribute [rw] group_id
    #   Filter results to only include bots belonging to this security
    #   group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListBotsRequest AWS API Documentation
    #
    class ListBotsRequest < Struct.new(
      :network_id,
      :next_token,
      :max_results,
      :sort_fields,
      :sort_direction,
      :display_name,
      :username,
      :status,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bots
    #   A list of bot objects matching the specified filters and within the
    #   current page.
    #   @return [Array<Types::Bot>]
    #
    # @!attribute [rw] next_token
    #   The token to use for retrieving the next page of results. If this is
    #   not present, there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListBotsResponse AWS API Documentation
    #
    class ListBotsResponse < Struct.new(
      :bots,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network containing the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The unique identifier of the user whose devices will be listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of devices to return in a single page. Valid
    #   range is 1-100. Default is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_fields
    #   The fields to sort devices by. Multiple fields can be specified by
    #   separating them with '+'. Accepted values include 'lastlogin',
    #   'type', 'suspend', and 'created'.
    #   @return [String]
    #
    # @!attribute [rw] sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending)
    #   or 'DESC' (descending). Default is 'DESC'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListDevicesForUserRequest AWS API Documentation
    #
    class ListDevicesForUserRequest < Struct.new(
      :network_id,
      :user_id,
      :next_token,
      :max_results,
      :sort_fields,
      :sort_direction)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use for retrieving the next page of results. If this is
    #   not present, there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] devices
    #   A list of device objects associated with the user within the current
    #   page.
    #   @return [Array<Types::BasicDeviceObject>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListDevicesForUserResponse AWS API Documentation
    #
    class ListDevicesForUserResponse < Struct.new(
      :next_token,
      :devices)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network from which to list guest users.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of guest users to return in a single page. Valid
    #   range is 1-100. Default is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending)
    #   or 'DESC' (descending). Default is 'DESC'.
    #   @return [String]
    #
    # @!attribute [rw] sort_fields
    #   The field to sort guest users by. Accepted values include
    #   'username' and 'billingPeriod'.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   Filter results to only include guest users with usernames matching
    #   this value.
    #   @return [String]
    #
    # @!attribute [rw] billing_period
    #   Filter results to only include guest users from this billing period
    #   (e.g., '2024-01').
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListGuestUsersRequest AWS API Documentation
    #
    class ListGuestUsersRequest < Struct.new(
      :network_id,
      :max_results,
      :sort_direction,
      :sort_fields,
      :username,
      :billing_period,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use for retrieving the next page of results. If this is
    #   not present, there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] guestlist
    #   A list of guest user objects within the current page.
    #   @return [Array<Types::GuestUser>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListGuestUsersResponse AWS API Documentation
    #
    class ListGuestUsersResponse < Struct.new(
      :next_token,
      :guestlist)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of networks to return in a single page. Valid
    #   range is 1-100. Default is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_fields
    #   The field to sort networks by. Accepted values are 'networkId' and
    #   'networkName'. Default is 'networkId'.
    #   @return [String]
    #
    # @!attribute [rw] sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending)
    #   or 'DESC' (descending). Default is 'DESC'.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListNetworksRequest AWS API Documentation
    #
    class ListNetworksRequest < Struct.new(
      :max_results,
      :sort_fields,
      :sort_direction,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] networks
    #   A list of network objects for the Amazon Web Services account.
    #   @return [Array<Types::Network>]
    #
    # @!attribute [rw] next_token
    #   The token to use for retrieving the next page of results. If this is
    #   not present, there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListNetworksResponse AWS API Documentation
    #
    class ListNetworksResponse < Struct.new(
      :networks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network containing the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The unique identifier of the security group whose users will be
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of users to return in a single page. Valid range
    #   is 1-100. Default is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_fields
    #   The field to sort users by. Multiple fields can be specified by
    #   separating them with '+'. Accepted values include 'username',
    #   'firstName', and 'lastName'.
    #   @return [String]
    #
    # @!attribute [rw] sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending)
    #   or 'DESC' (descending). Default is 'DESC'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListSecurityGroupUsersRequest AWS API Documentation
    #
    class ListSecurityGroupUsersRequest < Struct.new(
      :network_id,
      :group_id,
      :next_token,
      :max_results,
      :sort_fields,
      :sort_direction)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   A list of user objects belonging to the security group within the
    #   current page.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] next_token
    #   The token to use for retrieving the next page of results. If this is
    #   not present, there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListSecurityGroupUsersResponse AWS API Documentation
    #
    class ListSecurityGroupUsersResponse < Struct.new(
      :users,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network from which to list security groups.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of security groups to return in a single page.
    #   Valid range is 1-100. Default is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_fields
    #   The field to sort security groups by. Accepted values include 'id'
    #   and 'name'.
    #   @return [String]
    #
    # @!attribute [rw] sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending)
    #   or 'DESC' (descending). Default is 'DESC'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListSecurityGroupsRequest AWS API Documentation
    #
    class ListSecurityGroupsRequest < Struct.new(
      :network_id,
      :next_token,
      :max_results,
      :sort_fields,
      :sort_direction)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_groups
    #   A list of security group objects in the current page.
    #   @return [Array<Types::SecurityGroup>]
    #
    # @!attribute [rw] next_token
    #   The token to use for retrieving the next page of results. If this is
    #   not present, there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListSecurityGroupsResponse AWS API Documentation
    #
    class ListSecurityGroupsResponse < Struct.new(
      :security_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network from which to list users.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for retrieving the next page of results. This is returned
    #   from a previous request when there are more results available.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of users to return in a single page. Valid range
    #   is 1-100. Default is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_fields
    #   The fields to sort users by. Multiple fields can be specified by
    #   separating them with '+'. Accepted values include 'username',
    #   'firstName', 'lastName', 'status', and 'groupId'.
    #   @return [String]
    #
    # @!attribute [rw] sort_direction
    #   The direction to sort results. Valid values are 'ASC' (ascending)
    #   or 'DESC' (descending). Default is 'DESC'.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   Filter results to only include users with first names matching this
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   Filter results to only include users with last names matching this
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   Filter results to only include users with usernames matching this
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filter results to only include users with this status (1 for
    #   pending, 2 for active).
    #   @return [Integer]
    #
    # @!attribute [rw] group_id
    #   Filter results to only include users belonging to this security
    #   group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :network_id,
      :next_token,
      :max_results,
      :sort_fields,
      :sort_direction,
      :first_name,
      :last_name,
      :username,
      :status,
      :group_id)
      SENSITIVE = [:first_name, :last_name]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use for retrieving the next page of results. If this is
    #   not present, there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] users
    #   A list of user objects matching the specified filters and within the
    #   current page.
    #   @return [Array<Types::User>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :next_token,
      :users)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a Wickr network with all its configuration and status
    # information.
    #
    # @!attribute [rw] network_id
    #   The unique identifier of the network.
    #   @return [String]
    #
    # @!attribute [rw] network_name
    #   The name of the network.
    #   @return [String]
    #
    # @!attribute [rw] access_level
    #   The access level of the network (STANDARD or PREMIUM), which
    #   determines available features and capabilities.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID that owns the network.
    #   @return [String]
    #
    # @!attribute [rw] network_arn
    #   The Amazon Resource Name (ARN) of the network.
    #   @return [String]
    #
    # @!attribute [rw] standing
    #   The current standing or status of the network.
    #   @return [Integer]
    #
    # @!attribute [rw] free_trial_expiration
    #   The expiration date and time for the network's free trial period,
    #   if applicable.
    #   @return [String]
    #
    # @!attribute [rw] migration_state
    #   The SSO redirect URI migration state, managed by the SSO redirect
    #   migration wizard. Values: 0 (not started), 1 (in progress), or 2
    #   (completed).
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key_arn
    #   The ARN of the Amazon Web Services KMS customer managed key used for
    #   encrypting sensitive data in the network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/Network AWS API Documentation
    #
    class Network < Struct.new(
      :network_id,
      :network_name,
      :access_level,
      :aws_account_id,
      :network_arn,
      :standing,
      :free_trial_expiration,
      :migration_state,
      :encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains network-level configuration settings that apply to all users
    # and security groups within a Wickr network.
    #
    # @!attribute [rw] enable_client_metrics
    #   Allows Wickr clients to send anonymized performance and usage
    #   metrics to the Wickr backend server for service improvement and
    #   troubleshooting.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_receipt_config
    #   Configuration for read receipts at the network level, controlling
    #   the default behavior for whether senders can see when their messages
    #   have been read.
    #   @return [Types::ReadReceiptConfig]
    #
    # @!attribute [rw] data_retention
    #   Indicates whether the data retention feature is enabled for the
    #   network. When true, messages are captured by the data retention bot
    #   for compliance and archiving purposes.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_trusted_data_format
    #   Configuration for OpenTDF integration at the network level,
    #   enforcing ABAC decision making when operating in TDF enabled rooms.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/NetworkSettings AWS API Documentation
    #
    class NetworkSettings < Struct.new(
      :enable_client_metrics,
      :read_receipt_config,
      :data_retention,
      :enable_trusted_data_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the OpenID Connect (OIDC) configuration information for
    # Single Sign-On (SSO) authentication, including identity provider
    # settings and client credentials.
    #
    # @!attribute [rw] application_name
    #   The name of the OIDC application as registered with the identity
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The OAuth client ID assigned by the identity provider for
    #   authentication requests.
    #   @return [String]
    #
    # @!attribute [rw] company_id
    #   Custom identifier your end users will use to sign in with SSO.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   The OAuth scopes requested from the identity provider, which
    #   determine what user information is accessible (e.g., 'openid
    #   profile email').
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   The issuer URL of the identity provider, which serves as the base
    #   URL for OIDC endpoints and configuration discovery.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The OAuth client secret used to authenticate the application with
    #   the identity provider.
    #   @return [String]
    #
    # @!attribute [rw] secret
    #   An additional secret credential used by the identity provider for
    #   authentication.
    #   @return [String]
    #
    # @!attribute [rw] redirect_url
    #   The callback URL where the identity provider redirects users after
    #   successful authentication. This URL must be registered with the
    #   identity provider.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The claim field from the OIDC token to use as the unique user
    #   identifier (e.g., 'email', 'sub', or a custom claim).
    #   @return [String]
    #
    # @!attribute [rw] custom_username
    #   A custom field mapping to extract the username from the OIDC token
    #   when the standard username claim is insufficient.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate
    #   The X.509 CA certificate for validating SSL/TLS connections to the
    #   identity provider when using self-signed or enterprise certificates.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the registered OIDC application. Valid
    #   range is 1-10.
    #   @return [Integer]
    #
    # @!attribute [rw] sso_token_buffer_minutes
    #   The grace period in minutes before the SSO token expires when the
    #   system should proactively refresh the token to maintain seamless
    #   user access.
    #   @return [Integer]
    #
    # @!attribute [rw] extra_auth_params
    #   Additional authentication parameters to include in the OIDC
    #   authorization request as a query string. Useful for
    #   provider-specific extensions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/OidcConfigInfo AWS API Documentation
    #
    class OidcConfigInfo < Struct.new(
      :application_name,
      :client_id,
      :company_id,
      :scopes,
      :issuer,
      :client_secret,
      :secret,
      :redirect_url,
      :user_id,
      :custom_username,
      :ca_certificate,
      :application_id,
      :sso_token_buffer_minutes,
      :extra_auth_params)
      SENSITIVE = [:client_secret, :secret]
      include Aws::Structure
    end

    # Contains OAuth token information returned from the identity provider,
    # including access tokens, ID tokens, and PKCE parameters used for
    # secure authentication.
    #
    # @!attribute [rw] code_verifier
    #   The PKCE (Proof Key for Code Exchange) code verifier, a
    #   cryptographically random string used to enhance security in the
    #   OAuth flow.
    #   @return [String]
    #
    # @!attribute [rw] code_challenge
    #   The PKCE code challenge, a transformed version of the code verifier
    #   sent during the authorization request for verification.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The OAuth access token that can be used to access protected
    #   resources on behalf of the authenticated user.
    #   @return [String]
    #
    # @!attribute [rw] id_token
    #   The OpenID Connect ID token containing user identity information and
    #   authentication context as a signed JWT.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token
    #   The OAuth refresh token that can be used to obtain new access tokens
    #   without requiring the user to re-authenticate.
    #   @return [String]
    #
    # @!attribute [rw] token_type
    #   The type of access token issued, typically 'Bearer', which
    #   indicates how the token should be used in API requests.
    #   @return [String]
    #
    # @!attribute [rw] expires_in
    #   The lifetime of the access token in seconds, indicating when the
    #   token will expire and need to be refreshed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/OidcTokenInfo AWS API Documentation
    #
    class OidcTokenInfo < Struct.new(
      :code_verifier,
      :code_challenge,
      :access_token,
      :id_token,
      :refresh_token,
      :token_type,
      :expires_in)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines password complexity requirements for users in a security
    # group, including minimum length and character type requirements.
    #
    # @!attribute [rw] lowercase
    #   The minimum number of lowercase letters required in passwords.
    #   @return [Integer]
    #
    # @!attribute [rw] min_length
    #   The minimum password length in characters.
    #   @return [Integer]
    #
    # @!attribute [rw] numbers
    #   The minimum number of numeric characters required in passwords.
    #   @return [Integer]
    #
    # @!attribute [rw] symbols
    #   The minimum number of special symbol characters required in
    #   passwords.
    #   @return [Integer]
    #
    # @!attribute [rw] uppercase
    #   The minimum number of uppercase letters required in passwords.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/PasswordRequirements AWS API Documentation
    #
    class PasswordRequirements < Struct.new(
      :lowercase,
      :min_length,
      :numbers,
      :symbols,
      :uppercase)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a Wickr enterprise network that is permitted for global
    # federation, allowing users to communicate with members of the
    # specified network.
    #
    # @!attribute [rw] domain
    #   The domain identifier for the permitted Wickr enterprise network.
    #   @return [String]
    #
    # @!attribute [rw] network_id
    #   The network ID of the permitted Wickr enterprise network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/PermittedWickrEnterpriseNetwork AWS API Documentation
    #
    class PermittedWickrEnterpriseNetwork < Struct.new(
      :domain,
      :network_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was throttled because too many requests were sent in a
    # short period of time. Wait a moment and retry the request. Consider
    # implementing exponential backoff in your application.
    #
    # @!attribute [rw] message
    #   A message indicating that the rate limit was exceeded and suggesting
    #   when to retry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/RateLimitError AWS API Documentation
    #
    class RateLimitError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for read receipts at the network level, controlling
    # whether senders can see when their messages have been read.
    #
    # @!attribute [rw] status
    #   The read receipt status mode for the network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ReadReceiptConfig AWS API Documentation
    #
    class ReadReceiptConfig < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network for which OIDC will be configured.
    #   @return [String]
    #
    # @!attribute [rw] company_id
    #   Custom identifier your end users will use to sign in with SSO.
    #   @return [String]
    #
    # @!attribute [rw] custom_username
    #   A custom field mapping to extract the username from the OIDC token
    #   (optional).
    #
    #   <note markdown="1"> The customUsername is only required if you use something other than
    #   email as the username field.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] extra_auth_params
    #   Additional authentication parameters to include in the OIDC flow
    #   (optional).
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   The issuer URL of the OIDC provider (e.g.,
    #   'https://login.example.com').
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   The OAuth scopes to request from the OIDC provider (e.g., 'openid
    #   profile email').
    #   @return [String]
    #
    # @!attribute [rw] secret
    #   The client secret for authenticating with the OIDC provider
    #   (optional).
    #   @return [String]
    #
    # @!attribute [rw] sso_token_buffer_minutes
    #   The buffer time in minutes before the SSO token expires to refresh
    #   it (optional).
    #   @return [Integer]
    #
    # @!attribute [rw] user_id
    #   Unique identifier provided by your identity provider to authenticate
    #   the access request. Also referred to as clientID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/RegisterOidcConfigRequest AWS API Documentation
    #
    class RegisterOidcConfigRequest < Struct.new(
      :network_id,
      :company_id,
      :custom_username,
      :extra_auth_params,
      :issuer,
      :scopes,
      :secret,
      :sso_token_buffer_minutes,
      :user_id)
      SENSITIVE = [:secret]
      include Aws::Structure
    end

    # @!attribute [rw] application_name
    #   The name of the registered OIDC application.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The OAuth client ID assigned to the application.
    #   @return [String]
    #
    # @!attribute [rw] company_id
    #   Custom identifier your end users will use to sign in with SSO.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   The OAuth scopes configured for the application.
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   The issuer URL of the OIDC provider.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The OAuth client secret for the application.
    #   @return [String]
    #
    # @!attribute [rw] secret
    #   The client secret for authenticating with the OIDC provider.
    #   @return [String]
    #
    # @!attribute [rw] redirect_url
    #   The redirect URL configured for the OAuth flow.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The claim field being used as the user identifier.
    #   @return [String]
    #
    # @!attribute [rw] custom_username
    #   The custom field mapping used for extracting the username.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate
    #   The CA certificate used for secure communication with the OIDC
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The unique identifier for the registered OIDC application.
    #   @return [Integer]
    #
    # @!attribute [rw] sso_token_buffer_minutes
    #   The buffer time in minutes before the SSO token expires.
    #   @return [Integer]
    #
    # @!attribute [rw] extra_auth_params
    #   The additional authentication parameters configured for the OIDC
    #   flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/RegisterOidcConfigResponse AWS API Documentation
    #
    class RegisterOidcConfigResponse < Struct.new(
      :application_name,
      :client_id,
      :company_id,
      :scopes,
      :issuer,
      :client_secret,
      :secret,
      :redirect_url,
      :user_id,
      :custom_username,
      :ca_certificate,
      :application_id,
      :sso_token_buffer_minutes,
      :extra_auth_params)
      SENSITIVE = [:client_secret, :secret]
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network for which the OIDC configuration will be
    #   tested.
    #   @return [String]
    #
    # @!attribute [rw] extra_auth_params
    #   Additional authentication parameters to include in the test
    #   (optional).
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   The issuer URL of the OIDC provider to test.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   The OAuth scopes to test with the OIDC provider.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The CA certificate for secure communication with the OIDC provider
    #   (optional).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/RegisterOidcConfigTestRequest AWS API Documentation
    #
    class RegisterOidcConfigTestRequest < Struct.new(
      :network_id,
      :extra_auth_params,
      :issuer,
      :scopes,
      :certificate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] token_endpoint
    #   The token endpoint URL discovered from the OIDC provider.
    #   @return [String]
    #
    # @!attribute [rw] userinfo_endpoint
    #   The user info endpoint URL discovered from the OIDC provider.
    #   @return [String]
    #
    # @!attribute [rw] response_types_supported
    #   The OAuth response types supported by the OIDC provider.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scopes_supported
    #   The OAuth scopes supported by the OIDC provider.
    #   @return [Array<String>]
    #
    # @!attribute [rw] issuer
    #   The issuer URL confirmed by the OIDC provider.
    #   @return [String]
    #
    # @!attribute [rw] authorization_endpoint
    #   The authorization endpoint URL discovered from the OIDC provider.
    #   @return [String]
    #
    # @!attribute [rw] end_session_endpoint
    #   The end session endpoint URL for logging out users from the OIDC
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] logout_endpoint
    #   The logout endpoint URL for terminating user sessions.
    #   @return [String]
    #
    # @!attribute [rw] grant_types_supported
    #   The OAuth grant types supported by the OIDC provider.
    #   @return [Array<String>]
    #
    # @!attribute [rw] revocation_endpoint
    #   The token revocation endpoint URL for invalidating tokens.
    #   @return [String]
    #
    # @!attribute [rw] token_endpoint_auth_methods_supported
    #   The authentication methods supported by the token endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] microsoft_multi_refresh_token
    #   Indicates whether the provider supports Microsoft multi-refresh
    #   tokens.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/RegisterOidcConfigTestResponse AWS API Documentation
    #
    class RegisterOidcConfigTestResponse < Struct.new(
      :token_endpoint,
      :userinfo_endpoint,
      :response_types_supported,
      :scopes_supported,
      :issuer,
      :authorization_endpoint,
      :end_session_endpoint,
      :logout_endpoint,
      :grant_types_supported,
      :revocation_endpoint,
      :token_endpoint_auth_methods_supported,
      :microsoft_multi_refresh_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network for which OpenTDF integration will be
    #   configured.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The OIDC client ID used for authenticating with the OpenTDF
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The OIDC client secret used for authenticating with the OpenTDF
    #   provider
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain of the OpenTDF server.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the OpenTDF platform.
    #
    #   <note markdown="1"> Currently only Virtru is supported as the OpenTDF provider.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Perform dry-run test connection of OpenTDF configuration (optional).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/RegisterOpentdfConfigRequest AWS API Documentation
    #
    class RegisterOpentdfConfigRequest < Struct.new(
      :network_id,
      :client_id,
      :client_secret,
      :domain,
      :provider,
      :dry_run)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # @!attribute [rw] client_id
    #   The OIDC client ID used for authenticating with the OpenTDF
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain of the OpenTDF server.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The OIDC client secret used for authenticating with the OpenTDF
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the OpenTDF platform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/RegisterOpentdfConfigResponse AWS API Documentation
    #
    class RegisterOpentdfConfigResponse < Struct.new(
      :client_id,
      :domain,
      :client_secret,
      :provider)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # The requested resource could not be found. This error occurs when you
    # try to access or modify a network, user, bot, security group, or other
    # resource that doesn't exist or has been deleted.
    #
    # @!attribute [rw] message
    #   A message identifying which resource was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ResourceNotFoundError AWS API Documentation
    #
    class ResourceNotFoundError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a security group in a Wickr network, containing membership
    # statistics, configuration, and all permission settings that apply to
    # its members.
    #
    # @!attribute [rw] active_members
    #   The number of active user members currently in the security group.
    #   @return [Integer]
    #
    # @!attribute [rw] bot_members
    #   The number of bot members currently in the security group.
    #   @return [Integer]
    #
    # @!attribute [rw] active_directory_guid
    #   The GUID of the Active Directory group associated with this security
    #   group, if synchronized with LDAP.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the security group.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   Indicates whether this is the default security group for the
    #   network. Each network has only one default group.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The human-readable name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] modified
    #   The timestamp when the security group was last modified, specified
    #   in epoch seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] security_group_settings
    #   The comprehensive configuration settings that define capabilities
    #   and restrictions for members of this security group.
    #   @return [Types::SecurityGroupSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/SecurityGroup AWS API Documentation
    #
    class SecurityGroup < Struct.new(
      :active_members,
      :bot_members,
      :active_directory_guid,
      :id,
      :is_default,
      :name,
      :modified,
      :security_group_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Comprehensive configuration settings that define all user
    # capabilities, restrictions, and features for members of a security
    # group. These settings control everything from calling permissions to
    # federation settings to security policies.
    #
    # @!attribute [rw] always_reauthenticate
    #   Requires users to reauthenticate every time they return to the
    #   application, providing an additional layer of security.
    #   @return [Boolean]
    #
    # @!attribute [rw] atak_package_values
    #   Configuration values for ATAK (Android Team Awareness Kit) package
    #   integration, when ATAK is enabled.
    #   @return [Array<String>]
    #
    # @!attribute [rw] calling
    #   The calling feature permissions and settings that control what types
    #   of calls users can initiate and participate in.
    #   @return [Types::CallingSettings]
    #
    # @!attribute [rw] check_for_updates
    #   Enables automatic checking for Wickr client updates to ensure users
    #   stay current with the latest version.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_atak
    #   Enables ATAK (Android Team Awareness Kit) integration for tactical
    #   communication and situational awareness.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_crash_reports
    #   Allow users to report crashes.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_file_download
    #   Specifies whether users can download files from messages to their
    #   devices.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_guest_federation
    #   Allows users to communicate with guest users from other Wickr
    #   networks and federated external networks.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_notification_preview
    #   Enables message preview text in push notifications, allowing users
    #   to see message content before opening the app.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_open_access_option
    #   Allow users to avoid censorship when they are geo-blocked or have
    #   network limitations.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_restricted_global_federation
    #   Enables restricted global federation, limiting external
    #   communication to only specified permitted networks.
    #   @return [Boolean]
    #
    # @!attribute [rw] files_enabled
    #   Enables file sharing capabilities, allowing users to send and
    #   receive files in conversations.
    #   @return [Boolean]
    #
    # @!attribute [rw] force_device_lockout
    #   Defines the number of failed login attempts before data stored on
    #   the device is reset. Should be less than lockoutThreshold.
    #   @return [Integer]
    #
    # @!attribute [rw] force_open_access
    #   Automatically enable and enforce Wickr open access on all devices.
    #   Valid only if enableOpenAccessOption settings is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] force_read_receipts
    #   Allow user approved bots to read messages in rooms without using a
    #   slash command.
    #   @return [Boolean]
    #
    # @!attribute [rw] global_federation
    #   Allows users to communicate with users on other Wickr instances
    #   (Wickr Enterprise) outside the current network.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_ato_enabled
    #   Enforces a two-factor authentication when a user adds a new device
    #   to their account.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_link_preview_enabled
    #   Enables automatic preview of links shared in messages, showing
    #   webpage thumbnails and descriptions.
    #   @return [Boolean]
    #
    # @!attribute [rw] location_allow_maps
    #   Allows map integration in location sharing, enabling users to view
    #   shared locations on interactive maps. Only allowed when location
    #   setting is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] location_enabled
    #   Enables location sharing features, allowing users to share their
    #   current location with others.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_auto_download_size
    #   The maximum file size in bytes that will be automatically downloaded
    #   without user confirmation. Only allowed if fileDownload is enabled.
    #   Valid Values \[512000 (low\_quality), 7340032 (high\_quality) \]
    #   @return [Integer]
    #
    # @!attribute [rw] max_bor
    #   The maximum burn-on-read (BOR) time in seconds, which determines how
    #   long messages remain visible before auto-deletion after being read.
    #   @return [Integer]
    #
    # @!attribute [rw] max_ttl
    #   The maximum time-to-live (TTL) in seconds for messages, after which
    #   they will be automatically deleted from all devices.
    #   @return [Integer]
    #
    # @!attribute [rw] message_forwarding_enabled
    #   Enables message forwarding, allowing users to forward messages from
    #   one conversation to another.
    #   @return [Boolean]
    #
    # @!attribute [rw] password_requirements
    #   The password complexity requirements that users must follow when
    #   creating or changing passwords.
    #   @return [Types::PasswordRequirements]
    #
    # @!attribute [rw] presence_enabled
    #   Enables presence indicators that show whether users are online,
    #   away, or offline.
    #   @return [Boolean]
    #
    # @!attribute [rw] quick_responses
    #   A list of pre-defined quick response message templates that users
    #   can send with a single tap.
    #   @return [Array<String>]
    #
    # @!attribute [rw] show_master_recovery_key
    #   Users will get a master recovery key that can be used to securely
    #   sign in to their Wickr account without having access to their
    #   primary device for authentication. Available in SSO enabled network.
    #   @return [Boolean]
    #
    # @!attribute [rw] shredder
    #   The message shredder configuration that controls secure deletion of
    #   messages and files from devices.
    #   @return [Types::ShredderSettings]
    #
    # @!attribute [rw] sso_max_idle_minutes
    #   The duration for which users SSO session remains inactive before
    #   automatically logging them out for security. Available in SSO
    #   enabled network.
    #   @return [Integer]
    #
    # @!attribute [rw] federation_mode
    #   The local federation mode controlling how users can communicate with
    #   other networks. Values: 0 (none), 1 (federated), 2 (restricted).
    #   @return [Integer]
    #
    # @!attribute [rw] lockout_threshold
    #   The number of failed password attempts before a user account is
    #   locked out.
    #   @return [Integer]
    #
    # @!attribute [rw] permitted_networks
    #   A list of network IDs that are permitted for local federation when
    #   federation mode is set to restricted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] permitted_wickr_aws_networks
    #   A list of permitted Wickr networks for global federation,
    #   restricting communication to specific approved networks.
    #   @return [Array<Types::WickrAwsNetworks>]
    #
    # @!attribute [rw] permitted_wickr_enterprise_networks
    #   A list of permitted Wickr Enterprise networks for global federation,
    #   restricting communication to specific approved networks.
    #   @return [Array<Types::PermittedWickrEnterpriseNetwork>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/SecurityGroupSettings AWS API Documentation
    #
    class SecurityGroupSettings < Struct.new(
      :always_reauthenticate,
      :atak_package_values,
      :calling,
      :check_for_updates,
      :enable_atak,
      :enable_crash_reports,
      :enable_file_download,
      :enable_guest_federation,
      :enable_notification_preview,
      :enable_open_access_option,
      :enable_restricted_global_federation,
      :files_enabled,
      :force_device_lockout,
      :force_open_access,
      :force_read_receipts,
      :global_federation,
      :is_ato_enabled,
      :is_link_preview_enabled,
      :location_allow_maps,
      :location_enabled,
      :max_auto_download_size,
      :max_bor,
      :max_ttl,
      :message_forwarding_enabled,
      :password_requirements,
      :presence_enabled,
      :quick_responses,
      :show_master_recovery_key,
      :shredder,
      :sso_max_idle_minutes,
      :federation_mode,
      :lockout_threshold,
      :permitted_networks,
      :permitted_wickr_aws_networks,
      :permitted_wickr_enterprise_networks)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the security group configuration settings that can be
    # specified when creating or updating a security group. This is a subset
    # of SecurityGroupSettings containing only the modifiable federation and
    # security settings.
    #
    # @!attribute [rw] lockout_threshold
    #   The number of failed password attempts before a user account is
    #   locked out.
    #   @return [Integer]
    #
    # @!attribute [rw] permitted_networks
    #   A list of network IDs that are permitted for local federation when
    #   federation mode is set to restricted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enable_guest_federation
    #   Guest users let you work with people outside your organization that
    #   only have limited access to Wickr. Only valid when federationMode is
    #   set to Global.
    #   @return [Boolean]
    #
    # @!attribute [rw] global_federation
    #   Allow users to securely federate with all Amazon Web Services Wickr
    #   networks and Amazon Web Services Enterprise networks.
    #   @return [Boolean]
    #
    # @!attribute [rw] federation_mode
    #   The local federation mode. Values: 0 (none), 1 (federated - all
    #   networks), 2 (restricted - only permitted networks).
    #   @return [Integer]
    #
    # @!attribute [rw] enable_restricted_global_federation
    #   Enables restricted global federation to limit communication to
    #   specific permitted networks only. Requires globalFederation to be
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] permitted_wickr_aws_networks
    #   A list of permitted Amazon Web Services Wickr networks for
    #   restricted global federation.
    #   @return [Array<Types::WickrAwsNetworks>]
    #
    # @!attribute [rw] permitted_wickr_enterprise_networks
    #   A list of permitted Wickr Enterprise networks for restricted global
    #   federation.
    #   @return [Array<Types::PermittedWickrEnterpriseNetwork>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/SecurityGroupSettingsRequest AWS API Documentation
    #
    class SecurityGroupSettingsRequest < Struct.new(
      :lockout_threshold,
      :permitted_networks,
      :enable_guest_federation,
      :global_federation,
      :federation_mode,
      :enable_restricted_global_federation,
      :permitted_wickr_aws_networks,
      :permitted_wickr_enterprise_networks)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single network-level configuration setting with its name,
    # value, and data type. Settings control network-wide behaviors and
    # features.
    #
    # @!attribute [rw] option_name
    #   The name of the network setting (e.g., 'enableClientMetrics',
    #   'dataRetention').
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The current value of the setting as a string. Boolean values are
    #   represented as 'true' or 'false'.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the setting value (e.g., 'boolean', 'string',
    #   'number').
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/Setting AWS API Documentation
    #
    class Setting < Struct.new(
      :option_name,
      :value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for the message shredder feature, which securely deletes
    # messages and files from devices to prevent data recovery.
    #
    # @!attribute [rw] can_process_manually
    #   Specifies whether users can manually trigger the shredder to delete
    #   content.
    #   @return [Boolean]
    #
    # @!attribute [rw] intensity
    #   Prevents Wickr data from being recovered by overwriting deleted
    #   Wickr data. Valid Values: Must be one of \[0, 20, 60, 100\]
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ShredderSettings AWS API Documentation
    #
    class ShredderSettings < Struct.new(
      :can_process_manually,
      :intensity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was not authenticated or the authentication credentials
    # were invalid. This error occurs when the request lacks valid
    # authentication credentials or the credentials have expired.
    #
    # @!attribute [rw] message
    #   A message explaining why the authentication failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UnauthorizedError AWS API Documentation
    #
    class UnauthorizedError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network containing the bot to update.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot to update.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The new display name for the bot.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The ID of the new security group to assign the bot to.
    #   @return [String]
    #
    # @!attribute [rw] challenge
    #   The new password for the bot account.
    #   @return [String]
    #
    # @!attribute [rw] suspend
    #   Set to true to suspend the bot or false to unsuspend it. Omit this
    #   field for standard updates that don't affect suspension status.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateBotRequest AWS API Documentation
    #
    class UpdateBotRequest < Struct.new(
      :network_id,
      :bot_id,
      :display_name,
      :group_id,
      :challenge,
      :suspend)
      SENSITIVE = [:challenge]
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating the result of the bot update operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateBotResponse AWS API Documentation
    #
    class UpdateBotResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network containing the data retention bot.
    #   @return [String]
    #
    # @!attribute [rw] action_type
    #   The action to perform. Valid values are 'ENABLE' (to enable the
    #   data retention service), 'DISABLE' (to disable the service), or
    #   'PUBKEY\_MSG\_ACK' (to acknowledge the public key message).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateDataRetentionRequest AWS API Documentation
    #
    class UpdateDataRetentionRequest < Struct.new(
      :network_id,
      :action_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating the result of the update operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateDataRetentionResponse AWS API Documentation
    #
    class UpdateDataRetentionResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network where the guest user's status will be
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] username_hash
    #   The username hash (unique identifier) of the guest user to update.
    #   @return [String]
    #
    # @!attribute [rw] block
    #   Set to true to block the guest user or false to unblock them.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateGuestUserRequest AWS API Documentation
    #
    class UpdateGuestUserRequest < Struct.new(
      :network_id,
      :username_hash,
      :block)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating the result of the update operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateGuestUserResponse AWS API Documentation
    #
    class UpdateGuestUserResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network to update.
    #   @return [String]
    #
    # @!attribute [rw] network_name
    #   The new name for the network. Must be between 1 and 20 characters.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for this request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The ARN of the Amazon Web Services KMS customer managed key to use
    #   for encrypting sensitive data in the network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateNetworkRequest AWS API Documentation
    #
    class UpdateNetworkRequest < Struct.new(
      :network_id,
      :network_name,
      :client_token,
      :encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message indicating that the network was updated successfully.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateNetworkResponse AWS API Documentation
    #
    class UpdateNetworkResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network whose settings will be updated.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   A map of setting names to their new values. Each setting should be
    #   provided with its appropriate type (boolean, string, number, etc.).
    #   @return [Types::NetworkSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateNetworkSettingsRequest AWS API Documentation
    #
    class UpdateNetworkSettingsRequest < Struct.new(
      :network_id,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] settings
    #   A list of the updated network settings, showing the new values for
    #   each modified setting.
    #   @return [Array<Types::Setting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateNetworkSettingsResponse AWS API Documentation
    #
    class UpdateNetworkSettingsResponse < Struct.new(
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network containing the security group to update.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The unique identifier of the security group to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the security group.
    #   @return [String]
    #
    # @!attribute [rw] security_group_settings
    #   The updated configuration settings for the security group.
    #
    #   Federation mode - 0 (Local federation), 1 (Restricted federation), 2
    #   (Global federation)
    #   @return [Types::SecurityGroupSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateSecurityGroupRequest AWS API Documentation
    #
    class UpdateSecurityGroupRequest < Struct.new(
      :network_id,
      :group_id,
      :name,
      :security_group_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_group
    #   The updated security group details, including the new settings.
    #   @return [Types::SecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateSecurityGroupResponse AWS API Documentation
    #
    class UpdateSecurityGroupResponse < Struct.new(
      :security_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the modifiable details for updating an existing user,
    # including name, password, security group membership, and invitation
    # settings.
    #
    # <note markdown="1"> A user can only be assigned to a single security group. Attempting to
    # add a user to multiple security groups is not supported and will
    # result in an error.
    #
    #  </note>
    #
    # @!attribute [rw] first_name
    #   The new first name for the user.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The new last name for the user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The new username or email address for the user.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The updated list of security group IDs to which the user should
    #   belong.
    #   @return [Array<String>]
    #
    # @!attribute [rw] invite_code
    #   A new custom invite code for the user.
    #   @return [String]
    #
    # @!attribute [rw] invite_code_ttl
    #   The new time-to-live for the invite code in days.
    #   @return [Integer]
    #
    # @!attribute [rw] code_validation
    #   Indicates whether the user can be verified through a custom invite
    #   code.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateUserDetails AWS API Documentation
    #
    class UpdateUserDetails < Struct.new(
      :first_name,
      :last_name,
      :username,
      :security_group_ids,
      :invite_code,
      :invite_code_ttl,
      :code_validation)
      SENSITIVE = [:first_name, :last_name]
      include Aws::Structure
    end

    # @!attribute [rw] network_id
    #   The ID of the Wickr network containing the user to update.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The unique identifier of the user to update.
    #   @return [String]
    #
    # @!attribute [rw] user_details
    #   An object containing the user details to be updated, such as name,
    #   password, security groups, and invite code settings.
    #   @return [Types::UpdateUserDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :network_id,
      :user_id,
      :user_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The unique identifier of the updated user.
    #   @return [String]
    #
    # @!attribute [rw] network_id
    #   The ID of the network where the user was updated.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The list of security group IDs to which the user now belongs after
    #   the update.
    #   @return [Array<String>]
    #
    # @!attribute [rw] first_name
    #   The updated first name of the user.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The updated last name of the user.
    #   @return [String]
    #
    # @!attribute [rw] middle_name
    #   The middle name of the user (currently not used).
    #   @return [String]
    #
    # @!attribute [rw] suspended
    #   Indicates whether the user is suspended after the update.
    #   @return [Boolean]
    #
    # @!attribute [rw] modified
    #   The timestamp when the user was last modified, specified in epoch
    #   seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The user's status after the update.
    #   @return [Integer]
    #
    # @!attribute [rw] invite_code
    #   The updated invite code for the user, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] invite_expiration
    #   The expiration time of the user's invite code, specified in epoch
    #   seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] code_validation
    #   Indicates whether the user can be verified through a custom invite
    #   code.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/UpdateUserResponse AWS API Documentation
    #
    class UpdateUserResponse < Struct.new(
      :user_id,
      :network_id,
      :security_group_ids,
      :first_name,
      :last_name,
      :middle_name,
      :suspended,
      :modified,
      :status,
      :invite_code,
      :invite_expiration,
      :code_validation)
      SENSITIVE = [:first_name, :last_name]
      include Aws::Structure
    end

    # Represents a user account in a Wickr network with detailed profile
    # information, status, security settings, and authentication details.
    #
    # <note markdown="1"> codeValidation, inviteCode and inviteCodeTtl are restricted to
    # networks under preview only.
    #
    #  </note>
    #
    # @!attribute [rw] user_id
    #   The unique identifier for the user within the network.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name of the user.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The email address or username of the user. For bots, this must end
    #   in 'bot'.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   A list of security group IDs to which the user is assigned,
    #   determining their permissions and feature access.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_admin
    #   Indicates whether the user has administrator privileges in the
    #   network.
    #   @return [Boolean]
    #
    # @!attribute [rw] suspended
    #   Indicates whether the user is currently suspended and unable to
    #   access the network.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The current status of the user (1 for pending invitation, 2 for
    #   active).
    #   @return [Integer]
    #
    # @!attribute [rw] otp_enabled
    #   Indicates whether one-time password (OTP) authentication is enabled
    #   for the user.
    #   @return [Boolean]
    #
    # @!attribute [rw] scim_id
    #   The SCIM (System for Cross-domain Identity Management) identifier
    #   for the user, used for identity synchronization. Currently not used.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The descriptive type of the user account (e.g., 'user').
    #   @return [String]
    #
    # @!attribute [rw] cell
    #   The phone number minus country code, used for cloud deployments.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   The country code for the user's phone number, used for cloud
    #   deployments.
    #   @return [String]
    #
    # @!attribute [rw] challenge_failures
    #   The number of failed password attempts for enterprise deployments,
    #   used for account lockout policies.
    #   @return [Integer]
    #
    # @!attribute [rw] is_invite_expired
    #   Indicates whether the user's email invitation code has expired,
    #   applicable to cloud deployments.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_user
    #   Indicates whether this account is a user (as opposed to a bot or
    #   other account type).
    #   @return [Boolean]
    #
    # @!attribute [rw] invite_code
    #   The invitation code for this user, used during registration to join
    #   the network.
    #   @return [String]
    #
    # @!attribute [rw] code_validation
    #   Indicates whether the user can be verified through a custom invite
    #   code.
    #   @return [Boolean]
    #
    # @!attribute [rw] uname
    #   The unique identifier for the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/User AWS API Documentation
    #
    class User < Struct.new(
      :user_id,
      :first_name,
      :last_name,
      :username,
      :security_groups,
      :is_admin,
      :suspended,
      :status,
      :otp_enabled,
      :scim_id,
      :type,
      :cell,
      :country_code,
      :challenge_failures,
      :is_invite_expired,
      :is_user,
      :invite_code,
      :code_validation,
      :uname)
      SENSITIVE = [:first_name, :last_name]
      include Aws::Structure
    end

    # One or more fields in the request failed validation. This error
    # provides detailed information about which fields were invalid and why,
    # allowing you to correct the request and retry.
    #
    # @!attribute [rw] reasons
    #   A list of validation error details, where each item identifies a
    #   specific field that failed validation and explains the reason for
    #   the failure.
    #   @return [Array<Types::ErrorDetail>]
    #
    # @!attribute [rw] message
    #   A message describing the validation error error that occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/ValidationError AWS API Documentation
    #
    class ValidationError < Struct.new(
      :reasons,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a Amazon Web Services Wickr network by region and network
    # ID, used for configuring permitted networks for global federation.
    #
    # @!attribute [rw] region
    #   The Amazon Web Services region identifier where the network is
    #   hosted (e.g., 'us-east-1').
    #   @return [String]
    #
    # @!attribute [rw] network_id
    #   The network ID of the Wickr Amazon Web Services network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wickr-2024-02-01/WickrAwsNetworks AWS API Documentation
    #
    class WickrAwsNetworks < Struct.new(
      :region,
      :network_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

