# frozen_string_literal: true

# This is generated code!

module Aws::Wickr
  # This module contains the types returned by client operations.
  module Types

    # <p>The request was invalid or malformed. This error occurs when the request parameters do not meet the API requirements, such as invalid field values, missing required parameters, or improperly formatted data.</p>
    # @!attribute message
    #   <p>A detailed message explaining what was wrong with the request and how to correct it.</p>
    #   @return [String]
    class BadRequestError < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a device where a user has logged into Wickr, containing information about the device's type, status, and login history.</p>
    # @!attribute app_id
    #   <p>The unique application ID for the Wickr app on this device.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The timestamp when the device first appeared in the Wickr database.</p>
    #   @return [String]
    # @!attribute last_login
    #   <p>The timestamp when the device last successfully logged into Wickr. This is also used to determine SSO idle time.</p>
    #   @return [String]
    # @!attribute status_text
    #   <p>The current status of the device, either 'Active' or 'Reset' depending on whether the device is currently active or has been marked for reset.</p>
    #   @return [String]
    # @!attribute suspend
    #   <p>Indicates whether the device is suspended.</p>
    #   @return [Boolean]
    # @!attribute type
    #   <p>The operating system of the device (e.g., 'MacOSX', 'Windows', 'iOS', 'Android').</p>
    #   @return [String]
    class BasicDeviceObject < Struct.new(
      nil,
      :app_id,
      :created,
      :last_login,
      :status_text,
      :suspend,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network where users will be created.</p>
    #   @return [String]
    # @!attribute users
    #   <p>A list of user objects containing the details for each user to be created, including username, name, security groups, and optional invite codes. Maximum 50 users per batch request.</p>
    #   @return [Array<Types::BatchCreateUserRequestItem>]
    # @!attribute client_token
    #   <p>A unique identifier for this request to ensure idempotency. If you retry a request with the same client token, the service will return the same response without creating duplicate users.</p>
    #   @return [String]
    class BatchCreateUserRequest < Struct.new(
      nil,
      :network_id,
      :users,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details for a single user to be created in a batch user creation request.</p> <note> <p>A user can only be assigned to a single security group. Attempting to add a user to multiple security groups is not supported and will result in an error.</p> </note> <note> <p> <code>codeValidation</code>, <code>inviteCode</code>, and <code>inviteCodeTtl</code> are restricted to networks under preview only.</p> </note>
    # @!attribute first_name
    #   <p>The first name of the user.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The last name of the user.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>A list of security group IDs to which the user should be assigned.</p>
    #   @return [Array<String>]
    # @!attribute username
    #   <p>The email address or username for the user. Must be unique within the network.</p>
    #   @return [String]
    # @!attribute invite_code
    #   <p>A custom invite code for the user. If not provided, one will be generated automatically.</p>
    #   @return [String]
    # @!attribute invite_code_ttl
    #   <p>The time-to-live for the invite code in days. After this period, the invite code will expire.</p>
    #   @return [Integer]
    # @!attribute code_validation
    #   <p>Indicates whether the user can be verified through a custom invite code.</p>
    #   @return [Boolean]
    class BatchCreateUserRequestItem < Struct.new(
      nil,
      :first_name,
      :last_name,
      :security_group_ids,
      :username,
      :invite_code,
      :invite_code_ttl,
      :code_validation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating the overall result of the batch operation.</p>
    #   @return [String]
    # @!attribute successful
    #   <p>A list of user objects that were successfully created, including their assigned user IDs and invite codes.</p>
    #   @return [Array<Types::User>]
    # @!attribute failed
    #   <p>A list of user creation attempts that failed, including error details explaining why each user could not be created.</p>
    #   @return [Array<Types::BatchUserErrorResponseItem>]
    class BatchCreateUserResponse < Struct.new(
      nil,
      :message,
      :successful,
      :failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network from which users will be deleted.</p>
    #   @return [String]
    # @!attribute user_ids
    #   <p>A list of user IDs identifying the users to be deleted from the network. Maximum 50 users per batch request.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A unique identifier for this request to ensure idempotency. If you retry a request with the same client token, the service will return the same response without attempting to delete users again.</p>
    #   @return [String]
    class BatchDeleteUserRequest < Struct.new(
      nil,
      :network_id,
      :user_ids,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating the overall result of the batch deletion operation.</p>
    #   @return [String]
    # @!attribute successful
    #   <p>A list of user IDs that were successfully deleted from the network.</p>
    #   @return [Array<Types::BatchUserSuccessResponseItem>]
    # @!attribute failed
    #   <p>A list of user deletion attempts that failed, including error details explaining why each user could not be deleted.</p>
    #   @return [Array<Types::BatchUserErrorResponseItem>]
    class BatchDeleteUserResponse < Struct.new(
      nil,
      :message,
      :successful,
      :failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error information for a device operation that failed in a batch device request.</p>
    # @!attribute field
    #   <p>The field that caused the error.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A description of why the device operation failed.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The application ID of the device that failed to be processed.</p>
    #   @return [String]
    class BatchDeviceErrorResponseItem < Struct.new(
      nil,
      :field,
      :reason,
      :app_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a device that was successfully processed in a batch device operation.</p>
    # @!attribute app_id
    #   <p>The application ID of the device that was successfully processed.</p>
    #   @return [String]
    class BatchDeviceSuccessResponseItem < Struct.new(
      nil,
      :app_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network where the users will be looked up.</p>
    #   @return [String]
    # @!attribute unames
    #   <p>A list of username hashes (unames) to look up. Each uname is a unique identifier for a user's username. Maximum 50 unames per batch request.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A unique identifier for this request to ensure idempotency.</p>
    #   @return [String]
    class BatchLookupUserUnameRequest < Struct.new(
      nil,
      :network_id,
      :unames,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating the overall result of the batch lookup operation.</p>
    #   @return [String]
    # @!attribute successful
    #   <p>A list of successfully resolved username hashes with their corresponding email addresses.</p>
    #   @return [Array<Types::BatchUnameSuccessResponseItem>]
    # @!attribute failed
    #   <p>A list of username hash lookup attempts that failed, including error details explaining why each lookup failed.</p>
    #   @return [Array<Types::BatchUnameErrorResponseItem>]
    class BatchLookupUserUnameResponse < Struct.new(
      nil,
      :message,
      :successful,
      :failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network where users will be reinvited.</p>
    #   @return [String]
    # @!attribute user_ids
    #   <p>A list of user IDs identifying the users to be reinvited to the network. Maximum 50 users per batch request.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A unique identifier for this request to ensure idempotency.</p>
    #   @return [String]
    class BatchReinviteUserRequest < Struct.new(
      nil,
      :network_id,
      :user_ids,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating the overall result of the batch reinvitation operation.</p>
    #   @return [String]
    # @!attribute successful
    #   <p>A list of user IDs that were successfully reinvited.</p>
    #   @return [Array<Types::BatchUserSuccessResponseItem>]
    # @!attribute failed
    #   <p>A list of reinvitation attempts that failed, including error details explaining why each user could not be reinvited.</p>
    #   @return [Array<Types::BatchUserErrorResponseItem>]
    class BatchReinviteUserResponse < Struct.new(
      nil,
      :message,
      :successful,
      :failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network containing the user whose devices will be reset.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The ID of the user whose devices will be reset.</p>
    #   @return [String]
    # @!attribute app_ids
    #   <p>A list of application IDs identifying the specific devices to be reset for the user. Maximum 50 devices per batch request.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A unique identifier for this request to ensure idempotency.</p>
    #   @return [String]
    class BatchResetDevicesForUserRequest < Struct.new(
      nil,
      :network_id,
      :user_id,
      :app_ids,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating the overall result of the batch device reset operation.</p>
    #   @return [String]
    # @!attribute successful
    #   <p>A list of application IDs that were successfully reset.</p>
    #   @return [Array<Types::BatchDeviceSuccessResponseItem>]
    # @!attribute failed
    #   <p>A list of device reset attempts that failed, including error details explaining why each device could not be reset.</p>
    #   @return [Array<Types::BatchDeviceErrorResponseItem>]
    class BatchResetDevicesForUserResponse < Struct.new(
      nil,
      :message,
      :successful,
      :failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network where users will be suspended or unsuspended.</p>
    #   @return [String]
    # @!attribute suspend
    #   <p>A boolean value indicating whether to suspend (true) or unsuspend (false) the specified users.</p>
    #   @return [Boolean]
    # @!attribute user_ids
    #   <p>A list of user IDs identifying the users whose suspend status will be toggled. Maximum 50 users per batch request.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A unique identifier for this request to ensure idempotency.</p>
    #   @return [String]
    class BatchToggleUserSuspendStatusRequest < Struct.new(
      nil,
      :network_id,
      :suspend,
      :user_ids,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating the overall result of the batch suspend status toggle operation.</p>
    #   @return [String]
    # @!attribute successful
    #   <p>A list of user IDs whose suspend status was successfully toggled.</p>
    #   @return [Array<Types::BatchUserSuccessResponseItem>]
    # @!attribute failed
    #   <p>A list of suspend status toggle attempts that failed, including error details explaining why each user's status could not be changed.</p>
    #   @return [Array<Types::BatchUserErrorResponseItem>]
    class BatchToggleUserSuspendStatusResponse < Struct.new(
      nil,
      :message,
      :successful,
      :failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error information for a username hash lookup that failed in a batch uname lookup request.</p>
    # @!attribute field
    #   <p>The field that caused the error.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A description of why the username hash lookup failed.</p>
    #   @return [String]
    # @!attribute uname
    #   <p>The username hash that failed to be looked up.</p>
    #   @return [String]
    class BatchUnameErrorResponseItem < Struct.new(
      nil,
      :field,
      :reason,
      :uname,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a username hash that was successfully resolved in a batch uname lookup operation.</p>
    # @!attribute uname
    #   <p>The username hash that was successfully resolved.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The email address or username corresponding to the username hash.</p>
    #   @return [String]
    class BatchUnameSuccessResponseItem < Struct.new(
      nil,
      :uname,
      :username,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error information for a user operation that failed in a batch user request.</p>
    # @!attribute field
    #   <p>The field that caused the error.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A description of why the user operation failed.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID associated with the failed operation.</p>
    #   @return [String]
    class BatchUserErrorResponseItem < Struct.new(
      nil,
      :field,
      :reason,
      :user_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a user that was successfully processed in a batch user operation.</p>
    # @!attribute user_id
    #   <p>The user ID that was successfully processed.</p>
    #   @return [String]
    class BatchUserSuccessResponseItem < Struct.new(
      nil,
      :user_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a guest user who has been blocked from accessing a Wickr network.</p>
    # @!attribute username
    #   <p>The username of the blocked guest user.</p>
    #   @return [String]
    # @!attribute admin
    #   <p>The username of the administrator who blocked this guest user.</p>
    #   @return [String]
    # @!attribute modified
    #   <p>The timestamp when the guest user was blocked or last modified.</p>
    #   @return [String]
    # @!attribute username_hash
    #   <p>The unique username hash identifier for the blocked guest user.</p>
    #   @return [String]
    class BlockedGuestUser < Struct.new(
      nil,
      :username,
      :admin,
      :modified,
      :username_hash,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a bot account in a Wickr network with all its informational fields.</p>
    # @!attribute bot_id
    #   <p>The unique identifier of the bot.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the bot that is visible to users.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the bot.</p>
    #   @return [String]
    # @!attribute uname
    #   <p>The unique username hash identifier for the bot.</p>
    #   @return [String]
    # @!attribute pubkey
    #   <p>The public key of the bot used for encryption.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the bot (1 for pending, 2 for active).</p>
    #   @return [Integer]
    # @!attribute group_id
    #   <p>The ID of the security group to which the bot belongs.</p>
    #   @return [String]
    # @!attribute has_challenge
    #   <p>Indicates whether the bot has a password set.</p>
    #   @return [Boolean]
    # @!attribute suspended
    #   <p>Indicates whether the bot is currently suspended.</p>
    #   @return [Boolean]
    # @!attribute last_login
    #   <p>The timestamp of the bot's last login.</p>
    #   @return [String]
    class Bot < Struct.new(
      nil,
      :bot_id,
      :display_name,
      :username,
      :uname,
      :pubkey,
      :status,
      :group_id,
      :has_challenge,
      :suspended,
      :last_login,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the calling feature permissions and settings for users in a security group, controlling what types of calls users can initiate and participate in.</p>
    # @!attribute can_start11_call
    #   <p>Specifies whether users can start one-to-one calls.</p>
    #   @return [Boolean]
    # @!attribute can_video_call
    #   <p>Specifies whether users can make video calls (as opposed to audio-only calls). Valid only when audio call(canStart11Call) is enabled.</p>
    #   @return [Boolean]
    # @!attribute force_tcp_call
    #   <p>When enabled, forces all calls to use TCP protocol instead of UDP for network traversal.</p>
    #   @return [Boolean]
    class CallingSettings < Struct.new(
      nil,
      :can_start11_call,
      :can_video_call,
      :force_tcp_call,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Consent popup configuration displayed to users on login.</p>
    # @!attribute enabled
    #   <p>Whether the consent popup is enabled. When set to true, the popup is displayed to users on login.</p>
    #   @return [Boolean]
    # @!attribute header
    #   <p>Header text displayed at the top of the consent popup. Maximum 100 characters.</p>
    #   @return [String]
    # @!attribute content
    #   <p>Body content of the consent popup in Markdown format. Maximum 5000 characters.</p>
    #   @return [String]
    # @!attribute close_button_label
    #   <p>Label for the close button on the consent popup. Maximum 20 characters. Defaults to "Acknowledge" if not provided.</p>
    #   @return [String]
    class ConsentPopupConfig < Struct.new(
      nil,
      :enabled,
      :header,
      :content,
      :close_button_label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network where the bot will be created.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username for the bot. This must be unique within the network and follow the network's naming conventions.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name for the bot that will be visible to users in the network.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The ID of the security group to which the bot will be assigned.</p>
    #   @return [String]
    # @!attribute challenge
    #   <p>The password for the bot account.</p>
    #   @return [String]
    class CreateBotRequest < Struct.new(
      nil,
      :network_id,
      :username,
      :display_name,
      :group_id,
      :challenge,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating the result of the bot creation operation.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The unique identifier assigned to the newly created bot.</p>
    #   @return [String]
    # @!attribute network_id
    #   <p>The ID of the network where the bot was created.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the newly created bot.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the newly created bot.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The ID of the security group to which the bot was assigned.</p>
    #   @return [String]
    class CreateBotResponse < Struct.new(
      nil,
      :message,
      :bot_id,
      :network_id,
      :username,
      :display_name,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network containing the data retention bot.</p>
    #   @return [String]
    class CreateDataRetentionBotChallengeRequest < Struct.new(
      nil,
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute challenge
    #   <p>The newly generated challenge password for the data retention bot.</p>
    #   @return [String]
    class CreateDataRetentionBotChallengeResponse < Struct.new(
      nil,
      :challenge,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network where the data retention bot will be created.</p>
    #   @return [String]
    class CreateDataRetentionBotRequest < Struct.new(
      nil,
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating that the data retention bot was successfully provisioned.</p>
    #   @return [String]
    class CreateDataRetentionBotResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_name
    #   <p>The name for the new network. Must be between 1 and 20 characters.</p>
    #   @return [String]
    # @!attribute access_level
    #   <p>The access level for the network. Valid values are STANDARD or PREMIUM, which determine the features and capabilities available to network members.</p>
    #   @return [String]
    # @!attribute enable_premium_free_trial
    #   <p>Specifies whether to enable a premium free trial for the network. It is optional and has a default value as false. When set to true, the network starts with premium features for a limited trial period. </p>
    #   @return [Boolean]
    # @!attribute encryption_key_arn
    #   <p>The ARN of the Amazon Web Services KMS customer managed key to use for encrypting sensitive data in the network.</p>
    #   @return [String]
    class CreateNetworkRequest < Struct.new(
      nil,
      :network_name,
      :access_level,
      :enable_premium_free_trial,
      :encryption_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The unique identifier assigned to the newly created network.</p>
    #   @return [String]
    # @!attribute network_name
    #   <p>The name of the newly created network.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The ARN of the KMS key being used to encrypt sensitive data in the network.</p>
    #   @return [String]
    class CreateNetworkResponse < Struct.new(
      nil,
      :network_id,
      :network_name,
      :encryption_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network where the security group will be created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the new security group.</p>
    #   @return [String]
    # @!attribute security_group_settings
    #   <p>The configuration settings for the security group, including permissions, federation settings, and feature controls.</p>
    #   @return [Types::SecurityGroupSettingsRequest]
    # @!attribute client_token
    #   <p>A unique identifier for this request to ensure idempotency.</p>
    #   @return [String]
    class CreateSecurityGroupRequest < Struct.new(
      nil,
      :network_id,
      :name,
      :security_group_settings,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_group
    #   <p>The details of the newly created security group, including its ID, name, and settings.</p>
    #   @return [Types::SecurityGroup]
    class CreateSecurityGroupResponse < Struct.new(
      nil,
      :security_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network from which the bot will be deleted.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The unique identifier of the bot to be deleted.</p>
    #   @return [String]
    class DeleteBotRequest < Struct.new(
      nil,
      :network_id,
      :bot_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating the result of the bot deletion operation.</p>
    #   @return [String]
    class DeleteBotResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network from which the data retention bot will be deleted.</p>
    #   @return [String]
    class DeleteDataRetentionBotRequest < Struct.new(
      nil,
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating that the data retention bot and all associated data were successfully deleted.</p>
    #   @return [String]
    class DeleteDataRetentionBotResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier for this request to ensure idempotency. If you retry a request with the same client token, the service will return the same response without attempting to delete the network again.</p>
    #   @return [String]
    class DeleteNetworkRequest < Struct.new(
      nil,
      :network_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating that the network deletion has been initiated successfully.</p>
    #   @return [String]
    class DeleteNetworkResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network from which the security group will be deleted.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The unique identifier of the security group to delete.</p>
    #   @return [String]
    class DeleteSecurityGroupRequest < Struct.new(
      nil,
      :network_id,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating the result of the security group deletion operation.</p>
    #   @return [String]
    # @!attribute network_id
    #   <p>The ID of the network from which the security group was deleted.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The ID of the security group that was deleted.</p>
    #   @return [String]
    class DeleteSecurityGroupResponse < Struct.new(
      nil,
      :message,
      :network_id,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed error information explaining why an operation failed, including which field caused the error and the reason for the failure.</p>
    # @!attribute field
    #   <p>The name of the field that contains an error or warning.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A detailed description of the error or warning.</p>
    #   @return [String]
    class ErrorDetail < Struct.new(
      nil,
      :field,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Access to the requested resource is forbidden. This error occurs when the authenticated user does not have the necessary permissions to perform the requested operation, even though they are authenticated.</p>
    # @!attribute message
    #   <p>A message explaining why access was denied and what permissions are required.</p>
    #   @return [String]
    class ForbiddenError < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network containing the bot.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The unique identifier of the bot to retrieve.</p>
    #   @return [String]
    class GetBotRequest < Struct.new(
      nil,
      :network_id,
      :bot_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_id
    #   <p>The unique identifier of the bot.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the bot that is visible to users.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the bot.</p>
    #   @return [String]
    # @!attribute uname
    #   <p>The unique username hash identifier for the bot.</p>
    #   @return [String]
    # @!attribute pubkey
    #   <p>The public key of the bot used for encryption.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the bot (1 for pending, 2 for active).</p>
    #   @return [Integer]
    # @!attribute group_id
    #   <p>The ID of the security group to which the bot belongs.</p>
    #   @return [String]
    # @!attribute has_challenge
    #   <p>Indicates whether the bot has a password set.</p>
    #   @return [Boolean]
    # @!attribute suspended
    #   <p>Indicates whether the bot is currently suspended.</p>
    #   @return [Boolean]
    # @!attribute last_login
    #   <p>The timestamp of the bot's last login.</p>
    #   @return [String]
    class GetBotResponse < Struct.new(
      nil,
      :bot_id,
      :display_name,
      :username,
      :uname,
      :pubkey,
      :status,
      :group_id,
      :has_challenge,
      :suspended,
      :last_login,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network for which to retrieve bot counts.</p>
    #   @return [String]
    class GetBotsCountRequest < Struct.new(
      nil,
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pending
    #   <p>The number of bots with pending status (invited but not yet activated).</p>
    #   @return [Integer]
    # @!attribute active
    #   <p>The number of bots with active status.</p>
    #   @return [Integer]
    # @!attribute total
    #   <p>The total number of bots in the network (active and pending).</p>
    #   @return [Integer]
    class GetBotsCountResponse < Struct.new(
      nil,
      :pending,
      :active,
      :total,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network containing the data retention bot.</p>
    #   @return [String]
    class GetDataRetentionBotRequest < Struct.new(
      nil,
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bot_name
    #   <p>The name of the data retention bot.</p>
    #   @return [String]
    # @!attribute bot_exists
    #   <p>Indicates whether a data retention bot exists in the network.</p>
    #   @return [Boolean]
    # @!attribute is_bot_active
    #   <p>Indicates whether the data retention bot is active and operational.</p>
    #   @return [Boolean]
    # @!attribute is_data_retention_bot_registered
    #   <p>Indicates whether the data retention bot has been registered with the network.</p>
    #   @return [Boolean]
    # @!attribute is_data_retention_service_enabled
    #   <p>Indicates whether the data retention service is enabled for the network.</p>
    #   @return [Boolean]
    # @!attribute is_pubkey_msg_acked
    #   <p>Indicates whether the public key message has been acknowledged by the bot.</p>
    #   @return [Boolean]
    class GetDataRetentionBotResponse < Struct.new(
      nil,
      :bot_name,
      :bot_exists,
      :is_bot_active,
      :is_data_retention_bot_registered,
      :is_data_retention_service_enabled,
      :is_pubkey_msg_acked,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network for which to retrieve guest user history.</p>
    #   @return [String]
    class GetGuestUserHistoryCountRequest < Struct.new(
      nil,
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute history
    #   <p>A list of historical guest user counts, organized by month and billing period.</p>
    #   @return [Array<Types::GuestUserHistoryCount>]
    class GetGuestUserHistoryCountResponse < Struct.new(
      nil,
      :history,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network to retrieve.</p>
    #   @return [String]
    class GetNetworkRequest < Struct.new(
      nil,
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The unique identifier of the network.</p>
    #   @return [String]
    # @!attribute network_name
    #   <p>The name of the network.</p>
    #   @return [String]
    # @!attribute access_level
    #   <p>The access level of the network (STANDARD or PREMIUM), which determines available features and capabilities.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID that owns the network.</p>
    #   @return [String]
    # @!attribute network_arn
    #   <p>The Amazon Resource Name (ARN) of the network.</p>
    #   @return [String]
    # @!attribute standing
    #   <p>The current standing or status of the network.</p>
    #   @return [Integer]
    # @!attribute free_trial_expiration
    #   <p>The expiration date and time for the network's free trial period, if applicable.</p>
    #   @return [String]
    # @!attribute migration_state
    #   <p>The SSO redirect URI migration state, managed by the SSO redirect migration wizard. Values: 0 (not started), 1 (in progress), or 2 (completed).</p>
    #   @return [Integer]
    # @!attribute encryption_key_arn
    #   <p>The ARN of the Amazon Web Services KMS customer managed key used for encrypting sensitive data in the network.</p>
    #   @return [String]
    class GetNetworkResponse < Struct.new(
      nil,
      :network_id,
      :network_name,
      :access_level,
      :aws_account_id,
      :network_arn,
      :standing,
      :free_trial_expiration,
      :migration_state,
      :encryption_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network whose settings will be retrieved.</p>
    #   @return [String]
    class GetNetworkSettingsRequest < Struct.new(
      nil,
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute settings
    #   <p>A list of network settings, where each setting includes a name, value, and type.</p>
    #   @return [Array<Types::Setting>]
    class GetNetworkSettingsResponse < Struct.new(
      nil,
      :settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network whose OIDC configuration will be retrieved.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The OAuth client ID for retrieving access tokens (optional).</p>
    #   @return [String]
    # @!attribute code
    #   <p>The authorization code for retrieving access tokens (optional).</p>
    #   @return [String]
    # @!attribute grant_type
    #   <p>The OAuth grant type for retrieving access tokens (optional).</p>
    #   @return [String]
    # @!attribute redirect_uri
    #   <p>The redirect URI for the OAuth flow (optional).</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL for the OIDC provider (optional).</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The OAuth client secret for retrieving access tokens (optional).</p>
    #   @return [String]
    # @!attribute code_verifier
    #   <p>The PKCE code verifier for enhanced security in the OAuth flow (optional).</p>
    #   @return [String]
    # @!attribute certificate
    #   <p>The CA certificate for secure communication with the OIDC provider (optional).</p>
    #   @return [String]
    class GetOidcInfoRequest < Struct.new(
      nil,
      :network_id,
      :client_id,
      :code,
      :grant_type,
      :redirect_uri,
      :url,
      :client_secret,
      :code_verifier,
      :certificate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute openid_connect_info
    #   <p>The OpenID Connect configuration information for the network, including issuer, client ID, scopes, and other SSO settings.</p>
    #   @return [Types::OidcConfigInfo]
    # @!attribute token_info
    #   <p>OAuth token information including access token, refresh token, and expiration details (only present if token parameters were provided in the request).</p>
    #   @return [Types::OidcTokenInfo]
    class GetOidcInfoResponse < Struct.new(
      nil,
      :openid_connect_info,
      :token_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network for which OpenTDF integration will be retrieved.</p>
    #   @return [String]
    class GetOpentdfConfigRequest < Struct.new(
      nil,
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_id
    #   <p>The OIDC client ID used for authenticating with the OpenTDF provider.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain of the OpenTDF server.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The OIDC client secret used for authenticating with the OpenTDF provider.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of the OpenTDF platform.</p>
    #   @return [String]
    class GetOpentdfConfigResponse < Struct.new(
      nil,
      :client_id,
      :domain,
      :client_secret,
      :provider,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network containing the security group.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The unique identifier of the security group to retrieve.</p>
    #   @return [String]
    class GetSecurityGroupRequest < Struct.new(
      nil,
      :network_id,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_group
    #   <p>The detailed information about the security group, including all its settings and member counts.</p>
    #   @return [Types::SecurityGroup]
    class GetSecurityGroupResponse < Struct.new(
      nil,
      :security_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network containing the user.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The unique identifier of the user to retrieve.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time for filtering the user's last activity. Only activity after this timestamp will be considered. Time is specified in epoch seconds.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for filtering the user's last activity. Only activity before this timestamp will be considered. Time is specified in epoch seconds.</p>
    #   @return [Time]
    class GetUserRequest < Struct.new(
      nil,
      :network_id,
      :user_id,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The unique identifier of the user.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>The first name of the user.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The last name of the user.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The email address or username of the user.</p>
    #   @return [String]
    # @!attribute is_admin
    #   <p>Indicates whether the user has administrator privileges in the network.</p>
    #   @return [Boolean]
    # @!attribute suspended
    #   <p>Indicates whether the user is currently suspended.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The current status of the user (1 for pending, 2 for active).</p>
    #   @return [Integer]
    # @!attribute last_activity
    #   <p>The timestamp of the user's last activity in the network, specified in epoch seconds.</p>
    #   @return [Integer]
    # @!attribute last_login
    #   <p>The timestamp of the user's last login to the network, specified in epoch seconds.</p>
    #   @return [Integer]
    # @!attribute security_group_ids
    #   <p>A list of security group IDs to which the user belongs.</p>
    #   @return [Array<String>]
    class GetUserResponse < Struct.new(
      nil,
      :user_id,
      :first_name,
      :last_name,
      :username,
      :is_admin,
      :suspended,
      :status,
      :last_activity,
      :last_login,
      :security_group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network for which to retrieve user counts.</p>
    #   @return [String]
    class GetUsersCountRequest < Struct.new(
      nil,
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pending
    #   <p>The number of users with pending status (invited but not yet accepted).</p>
    #   @return [Integer]
    # @!attribute active
    #   <p>The number of users with active status in the network.</p>
    #   @return [Integer]
    # @!attribute rejected
    #   <p>The number of users who have rejected network invitations.</p>
    #   @return [Integer]
    # @!attribute remaining
    #   <p>The number of additional users that can be added to the network while maintaining premium free trial eligibility.</p>
    #   @return [Integer]
    # @!attribute total
    #   <p>The total number of users in the network (active and pending combined).</p>
    #   @return [Integer]
    class GetUsersCountResponse < Struct.new(
      nil,
      :pending,
      :active,
      :rejected,
      :remaining,
      :total,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a guest user who has accessed the network from a federated Wickr network.</p>
    # @!attribute billing_period
    #   <p>The billing period when this guest user accessed the network (e.g., '2024-01').</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the guest user.</p>
    #   @return [String]
    # @!attribute username_hash
    #   <p>The unique username hash identifier for the guest user.</p>
    #   @return [String]
    class GuestUser < Struct.new(
      nil,
      :billing_period,
      :username,
      :username_hash,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the count of guest users for a specific billing period, used for tracking historical guest user activity.</p>
    # @!attribute month
    #   <p>The month and billing period in YYYY_MM format (e.g., '2024_01').</p>
    #   @return [String]
    # @!attribute count
    #   <p>The number of guest users who have communicated with your Wickr network during this billing period.</p>
    #   @return [String]
    class GuestUserHistoryCount < Struct.new(
      nil,
      :month,
      :count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred on the server while processing the request. This indicates a problem with the Wickr service itself rather than with the request. If this error persists, contact Amazon Web Services Support.</p>
    # @!attribute message
    #   <p>A message describing the internal server error that occurred.</p>
    #   @return [String]
    class InternalServerError < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network from which to list blocked guest users.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of blocked guest users to return in a single page. Valid range is 1-100. Default is 10.</p>
    #   @return [Integer]
    # @!attribute sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    #   @return [String]
    # @!attribute sort_fields
    #   <p>The field to sort blocked guest users by. Accepted values include 'username', 'admin', and 'modified'.</p>
    #   @return [String]
    # @!attribute username
    #   <p>Filter results to only include blocked guest users with usernames matching this value.</p>
    #   @return [String]
    # @!attribute admin
    #   <p>Filter results to only include blocked guest users that were blocked by this administrator.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    #   @return [String]
    class ListBlockedGuestUsersRequest < Struct.new(
      nil,
      :network_id,
      :max_results,
      :sort_direction,
      :sort_fields,
      :username,
      :admin,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use for retrieving the next page of results. If this is not present, there are no more results.</p>
    #   @return [String]
    # @!attribute blocklist
    #   <p>A list of blocked guest user objects within the current page.</p>
    #   @return [Array<Types::BlockedGuestUser>]
    class ListBlockedGuestUsersResponse < Struct.new(
      nil,
      :next_token,
      :blocklist,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network from which to list bots.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of bots to return in a single page. Valid range is 1-100. Default is 10.</p>
    #   @return [Integer]
    # @!attribute sort_fields
    #   <p>The fields to sort bots by. Multiple fields can be specified by separating them with '+'. Accepted values include 'username', 'firstName', 'displayName', 'status', and 'groupId'.</p>
    #   @return [String]
    # @!attribute sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>Filter results to only include bots with display names matching this value.</p>
    #   @return [String]
    # @!attribute username
    #   <p>Filter results to only include bots with usernames matching this value.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filter results to only include bots with this status (1 for pending, 2 for active).</p>
    #   @return [Integer]
    # @!attribute group_id
    #   <p>Filter results to only include bots belonging to this security group.</p>
    #   @return [String]
    class ListBotsRequest < Struct.new(
      nil,
      :network_id,
      :next_token,
      :max_results,
      :sort_fields,
      :sort_direction,
      :display_name,
      :username,
      :status,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bots
    #   <p>A list of bot objects matching the specified filters and within the current page.</p>
    #   @return [Array<Types::Bot>]
    # @!attribute next_token
    #   <p>The token to use for retrieving the next page of results. If this is not present, there are no more results.</p>
    #   @return [String]
    class ListBotsResponse < Struct.new(
      nil,
      :bots,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network containing the user.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The unique identifier of the user whose devices will be listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of devices to return in a single page. Valid range is 1-100. Default is 10.</p>
    #   @return [Integer]
    # @!attribute sort_fields
    #   <p>The fields to sort devices by. Multiple fields can be specified by separating them with '+'. Accepted values include 'lastlogin', 'type', 'suspend', and 'created'.</p>
    #   @return [String]
    # @!attribute sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    #   @return [String]
    class ListDevicesForUserRequest < Struct.new(
      nil,
      :network_id,
      :user_id,
      :next_token,
      :max_results,
      :sort_fields,
      :sort_direction,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use for retrieving the next page of results. If this is not present, there are no more results.</p>
    #   @return [String]
    # @!attribute devices
    #   <p>A list of device objects associated with the user within the current page.</p>
    #   @return [Array<Types::BasicDeviceObject>]
    class ListDevicesForUserResponse < Struct.new(
      nil,
      :next_token,
      :devices,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network from which to list guest users.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of guest users to return in a single page. Valid range is 1-100. Default is 10.</p>
    #   @return [Integer]
    # @!attribute sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    #   @return [String]
    # @!attribute sort_fields
    #   <p>The field to sort guest users by. Accepted values include 'username' and 'billingPeriod'.</p>
    #   @return [String]
    # @!attribute username
    #   <p>Filter results to only include guest users with usernames matching this value.</p>
    #   @return [String]
    # @!attribute billing_period
    #   <p>Filter results to only include guest users from this billing period (e.g., '2024-01').</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    #   @return [String]
    class ListGuestUsersRequest < Struct.new(
      nil,
      :network_id,
      :max_results,
      :sort_direction,
      :sort_fields,
      :username,
      :billing_period,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use for retrieving the next page of results. If this is not present, there are no more results.</p>
    #   @return [String]
    # @!attribute guestlist
    #   <p>A list of guest user objects within the current page.</p>
    #   @return [Array<Types::GuestUser>]
    class ListGuestUsersResponse < Struct.new(
      nil,
      :next_token,
      :guestlist,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of networks to return in a single page. Valid range is 1-100. Default is 10.</p>
    #   @return [Integer]
    # @!attribute sort_fields
    #   <p>The field to sort networks by. Accepted values are 'networkId' and 'networkName'. Default is 'networkId'.</p>
    #   @return [String]
    # @!attribute sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    #   @return [String]
    class ListNetworksRequest < Struct.new(
      nil,
      :max_results,
      :sort_fields,
      :sort_direction,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute networks
    #   <p>A list of network objects for the Amazon Web Services account.</p>
    #   @return [Array<Types::Network>]
    # @!attribute next_token
    #   <p>The token to use for retrieving the next page of results. If this is not present, there are no more results.</p>
    #   @return [String]
    class ListNetworksResponse < Struct.new(
      nil,
      :networks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network containing the security group.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The unique identifier of the security group whose users will be listed.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of users to return in a single page. Valid range is 1-100. Default is 10.</p>
    #   @return [Integer]
    # @!attribute sort_fields
    #   <p>The field to sort users by. Multiple fields can be specified by separating them with '+'. Accepted values include 'username', 'firstName', and 'lastName'.</p>
    #   @return [String]
    # @!attribute sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    #   @return [String]
    class ListSecurityGroupUsersRequest < Struct.new(
      nil,
      :network_id,
      :group_id,
      :next_token,
      :max_results,
      :sort_fields,
      :sort_direction,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute users
    #   <p>A list of user objects belonging to the security group within the current page.</p>
    #   @return [Array<Types::User>]
    # @!attribute next_token
    #   <p>The token to use for retrieving the next page of results. If this is not present, there are no more results.</p>
    #   @return [String]
    class ListSecurityGroupUsersResponse < Struct.new(
      nil,
      :users,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network from which to list security groups.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of security groups to return in a single page. Valid range is 1-100. Default is 10.</p>
    #   @return [Integer]
    # @!attribute sort_fields
    #   <p>The field to sort security groups by. Accepted values include 'id' and 'name'.</p>
    #   @return [String]
    # @!attribute sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    #   @return [String]
    class ListSecurityGroupsRequest < Struct.new(
      nil,
      :network_id,
      :next_token,
      :max_results,
      :sort_fields,
      :sort_direction,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_groups
    #   <p>A list of security group objects in the current page.</p>
    #   @return [Array<Types::SecurityGroup>]
    # @!attribute next_token
    #   <p>The token to use for retrieving the next page of results. If this is not present, there are no more results.</p>
    #   @return [String]
    class ListSecurityGroupsResponse < Struct.new(
      nil,
      :security_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network from which to list users.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for retrieving the next page of results. This is returned from a previous request when there are more results available.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of users to return in a single page. Valid range is 1-100. Default is 10.</p>
    #   @return [Integer]
    # @!attribute sort_fields
    #   <p>The fields to sort users by. Multiple fields can be specified by separating them with '+'. Accepted values include 'username', 'firstName', 'lastName', 'status', and 'groupId'.</p>
    #   @return [String]
    # @!attribute sort_direction
    #   <p>The direction to sort results. Valid values are 'ASC' (ascending) or 'DESC' (descending). Default is 'DESC'.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>Filter results to only include users with first names matching this value.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>Filter results to only include users with last names matching this value.</p>
    #   @return [String]
    # @!attribute username
    #   <p>Filter results to only include users with usernames matching this value.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filter results to only include users with this status (1 for pending, 2 for active).</p>
    #   @return [Integer]
    # @!attribute group_id
    #   <p>Filter results to only include users belonging to this security group.</p>
    #   @return [String]
    class ListUsersRequest < Struct.new(
      nil,
      :network_id,
      :next_token,
      :max_results,
      :sort_fields,
      :sort_direction,
      :first_name,
      :last_name,
      :username,
      :status,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use for retrieving the next page of results. If this is not present, there are no more results.</p>
    #   @return [String]
    # @!attribute users
    #   <p>A list of user objects matching the specified filters and within the current page.</p>
    #   @return [Array<Types::User>]
    class ListUsersResponse < Struct.new(
      nil,
      :next_token,
      :users,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a Wickr network with all its configuration and status information.</p>
    # @!attribute network_id
    #   <p>The unique identifier of the network.</p>
    #   @return [String]
    # @!attribute network_name
    #   <p>The name of the network.</p>
    #   @return [String]
    # @!attribute access_level
    #   <p>The access level of the network (STANDARD or PREMIUM), which determines available features and capabilities.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID that owns the network.</p>
    #   @return [String]
    # @!attribute network_arn
    #   <p>The Amazon Resource Name (ARN) of the network.</p>
    #   @return [String]
    # @!attribute standing
    #   <p>The current standing or status of the network.</p>
    #   @return [Integer]
    # @!attribute free_trial_expiration
    #   <p>The expiration date and time for the network's free trial period, if applicable.</p>
    #   @return [String]
    # @!attribute migration_state
    #   <p>The SSO redirect URI migration state, managed by the SSO redirect migration wizard. Values: 0 (not started), 1 (in progress), or 2 (completed).</p>
    #   @return [Integer]
    # @!attribute encryption_key_arn
    #   <p>The ARN of the Amazon Web Services KMS customer managed key used for encrypting sensitive data in the network.</p>
    #   @return [String]
    class Network < Struct.new(
      nil,
      :network_id,
      :network_name,
      :access_level,
      :aws_account_id,
      :network_arn,
      :standing,
      :free_trial_expiration,
      :migration_state,
      :encryption_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains network-level configuration settings that apply to all users and security groups within a Wickr network.</p>
    # @!attribute enable_client_metrics
    #   <p>Allows Wickr clients to send anonymized performance and usage metrics to the Wickr backend server for service improvement and troubleshooting.</p>
    #   @return [Boolean]
    # @!attribute read_receipt_config
    #   <p>Configuration for read receipts at the network level, controlling the default behavior for whether senders can see when their messages have been read.</p>
    #   @return [Types::ReadReceiptConfig]
    # @!attribute data_retention
    #   <p>Indicates whether the data retention feature is enabled for the network. When true, messages are captured by the data retention bot for compliance and archiving purposes.</p>
    #   @return [Boolean]
    # @!attribute enable_trusted_data_format
    #   <p>Configuration for OpenTDF integration at the network level, enforcing ABAC decision making when operating in TDF enabled rooms.</p>
    #   @return [Boolean]
    # @!attribute consent_popup
    #   <p>Consent popup configuration for the network, displayed to users on login.</p>
    #   @return [Types::ConsentPopupConfig]
    class NetworkSettings < Struct.new(
      nil,
      :enable_client_metrics,
      :read_receipt_config,
      :data_retention,
      :enable_trusted_data_format,
      :consent_popup,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the OpenID Connect (OIDC) configuration information for Single Sign-On (SSO) authentication, including identity provider settings and client credentials.</p>
    # @!attribute application_name
    #   <p>The name of the OIDC application as registered with the identity provider.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The OAuth client ID assigned by the identity provider for authentication requests.</p>
    #   @return [String]
    # @!attribute company_id
    #   <p>Custom identifier your end users will use to sign in with SSO.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>The OAuth scopes requested from the identity provider, which determine what user information is accessible (e.g., 'openid profile email').</p>
    #   @return [String]
    # @!attribute issuer
    #   <p>The issuer URL of the identity provider, which serves as the base URL for OIDC endpoints and configuration discovery.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The OAuth client secret used to authenticate the application with the identity provider.</p>
    #   @return [String]
    # @!attribute secret
    #   <p>An additional secret credential used by the identity provider for authentication.</p>
    #   @return [String]
    # @!attribute redirect_url
    #   <p>The callback URL where the identity provider redirects users after successful authentication. This URL must be registered with the identity provider.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The claim field from the OIDC token to use as the unique user identifier (e.g., 'email', 'sub', or a custom claim).</p>
    #   @return [String]
    # @!attribute custom_username
    #   <p>A custom field mapping to extract the username from the OIDC token when the standard username claim is insufficient.</p>
    #   @return [String]
    # @!attribute ca_certificate
    #   <p>The X.509 CA certificate for validating SSL/TLS connections to the identity provider when using self-signed or enterprise certificates.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier for the registered OIDC application. Valid range is 1-10.</p>
    #   @return [Integer]
    # @!attribute sso_token_buffer_minutes
    #   <p>The grace period in minutes before the SSO token expires when the system should proactively refresh the token to maintain seamless user access.</p>
    #   @return [Integer]
    # @!attribute extra_auth_params
    #   <p>Additional authentication parameters to include in the OIDC authorization request as a query string. Useful for provider-specific extensions.</p>
    #   @return [String]
    class OidcConfigInfo < Struct.new(
      nil,
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
      :extra_auth_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains OAuth token information returned from the identity provider, including access tokens, ID tokens, and PKCE parameters used for secure authentication.</p>
    # @!attribute code_verifier
    #   <p>The PKCE (Proof Key for Code Exchange) code verifier, a cryptographically random string used to enhance security in the OAuth flow.</p>
    #   @return [String]
    # @!attribute code_challenge
    #   <p>The PKCE code challenge, a transformed version of the code verifier sent during the authorization request for verification.</p>
    #   @return [String]
    # @!attribute access_token
    #   <p>The OAuth access token that can be used to access protected resources on behalf of the authenticated user.</p>
    #   @return [String]
    # @!attribute id_token
    #   <p>The OpenID Connect ID token containing user identity information and authentication context as a signed JWT.</p>
    #   @return [String]
    # @!attribute refresh_token
    #   <p>The OAuth refresh token that can be used to obtain new access tokens without requiring the user to re-authenticate.</p>
    #   @return [String]
    # @!attribute token_type
    #   <p>The type of access token issued, typically 'Bearer', which indicates how the token should be used in API requests.</p>
    #   @return [String]
    # @!attribute expires_in
    #   <p>The lifetime of the access token in seconds, indicating when the token will expire and need to be refreshed.</p>
    #   @return [Integer]
    class OidcTokenInfo < Struct.new(
      nil,
      :code_verifier,
      :code_challenge,
      :access_token,
      :id_token,
      :refresh_token,
      :token_type,
      :expires_in,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines password complexity requirements for users in a security group, including minimum length and character type requirements.</p>
    # @!attribute lowercase
    #   <p>The minimum number of lowercase letters required in passwords.</p>
    #   @return [Integer]
    # @!attribute min_length
    #   <p>The minimum password length in characters.</p>
    #   @return [Integer]
    # @!attribute numbers
    #   <p>The minimum number of numeric characters required in passwords.</p>
    #   @return [Integer]
    # @!attribute symbols
    #   <p>The minimum number of special symbol characters required in passwords.</p>
    #   @return [Integer]
    # @!attribute uppercase
    #   <p>The minimum number of uppercase letters required in passwords.</p>
    #   @return [Integer]
    class PasswordRequirements < Struct.new(
      nil,
      :lowercase,
      :min_length,
      :numbers,
      :symbols,
      :uppercase,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a Wickr enterprise network that is permitted for global federation, allowing users to communicate with members of the specified network.</p>
    # @!attribute domain
    #   <p>The domain identifier for the permitted Wickr enterprise network.</p>
    #   @return [String]
    # @!attribute network_id
    #   <p>The network ID of the permitted Wickr enterprise network.</p>
    #   @return [String]
    class PermittedWickrEnterpriseNetwork < Struct.new(
      nil,
      :domain,
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was throttled because too many requests were sent in a short period of time. Wait a moment and retry the request. Consider implementing exponential backoff in your application.</p>
    # @!attribute message
    #   <p>A message indicating that the rate limit was exceeded and suggesting when to retry.</p>
    #   @return [String]
    class RateLimitError < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:message] = 'Too many requests sent' unless options.key?(:message)
        super
      end
    end

    # <p>Configuration for read receipts at the network level, controlling whether senders can see when their messages have been read.</p>
    # @!attribute status
    #   <p>The read receipt status mode for the network.</p>
    #   @return [String]
    class ReadReceiptConfig < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network for which OIDC will be configured.</p>
    #   @return [String]
    # @!attribute company_id
    #   <p>Custom identifier your end users will use to sign in with SSO.</p>
    #   @return [String]
    # @!attribute custom_username
    #   <p>A custom field mapping to extract the username from the OIDC token (optional). </p> <note> <p>The customUsername is only required if you use something other than email as the username field.</p> </note>
    #   @return [String]
    # @!attribute extra_auth_params
    #   <p>Additional authentication parameters to include in the OIDC flow (optional).</p>
    #   @return [String]
    # @!attribute issuer
    #   <p>The issuer URL of the OIDC provider (e.g., 'https://login.example.com').</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>The OAuth scopes to request from the OIDC provider (e.g., 'openid profile email').</p>
    #   @return [String]
    # @!attribute secret
    #   <p>The client secret for authenticating with the OIDC provider (optional).</p>
    #   @return [String]
    # @!attribute sso_token_buffer_minutes
    #   <p>The buffer time in minutes before the SSO token expires to refresh it (optional).</p>
    #   @return [Integer]
    # @!attribute user_id
    #   <p>Unique identifier provided by your identity provider to authenticate the access request. Also referred to as clientID.</p>
    #   @return [String]
    class RegisterOidcConfigRequest < Struct.new(
      nil,
      :network_id,
      :company_id,
      :custom_username,
      :extra_auth_params,
      :issuer,
      :scopes,
      :secret,
      :sso_token_buffer_minutes,
      :user_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_name
    #   <p>The name of the registered OIDC application.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The OAuth client ID assigned to the application.</p>
    #   @return [String]
    # @!attribute company_id
    #   <p>Custom identifier your end users will use to sign in with SSO.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>The OAuth scopes configured for the application.</p>
    #   @return [String]
    # @!attribute issuer
    #   <p>The issuer URL of the OIDC provider.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The OAuth client secret for the application.</p>
    #   @return [String]
    # @!attribute secret
    #   <p>The client secret for authenticating with the OIDC provider.</p>
    #   @return [String]
    # @!attribute redirect_url
    #   <p>The redirect URL configured for the OAuth flow.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The claim field being used as the user identifier.</p>
    #   @return [String]
    # @!attribute custom_username
    #   <p>The custom field mapping used for extracting the username.</p>
    #   @return [String]
    # @!attribute ca_certificate
    #   <p>The CA certificate used for secure communication with the OIDC provider.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier for the registered OIDC application.</p>
    #   @return [Integer]
    # @!attribute sso_token_buffer_minutes
    #   <p>The buffer time in minutes before the SSO token expires.</p>
    #   @return [Integer]
    # @!attribute extra_auth_params
    #   <p>The additional authentication parameters configured for the OIDC flow.</p>
    #   @return [String]
    class RegisterOidcConfigResponse < Struct.new(
      nil,
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
      :extra_auth_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network for which the OIDC configuration will be tested.</p>
    #   @return [String]
    # @!attribute extra_auth_params
    #   <p>Additional authentication parameters to include in the test (optional).</p>
    #   @return [String]
    # @!attribute issuer
    #   <p>The issuer URL of the OIDC provider to test.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>The OAuth scopes to test with the OIDC provider.</p>
    #   @return [String]
    # @!attribute certificate
    #   <p>The CA certificate for secure communication with the OIDC provider (optional).</p>
    #   @return [String]
    class RegisterOidcConfigTestRequest < Struct.new(
      nil,
      :network_id,
      :extra_auth_params,
      :issuer,
      :scopes,
      :certificate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute token_endpoint
    #   <p>The token endpoint URL discovered from the OIDC provider.</p>
    #   @return [String]
    # @!attribute userinfo_endpoint
    #   <p>The user info endpoint URL discovered from the OIDC provider.</p>
    #   @return [String]
    # @!attribute response_types_supported
    #   <p>The OAuth response types supported by the OIDC provider.</p>
    #   @return [Array<String>]
    # @!attribute scopes_supported
    #   <p>The OAuth scopes supported by the OIDC provider.</p>
    #   @return [Array<String>]
    # @!attribute issuer
    #   <p>The issuer URL confirmed by the OIDC provider.</p>
    #   @return [String]
    # @!attribute authorization_endpoint
    #   <p>The authorization endpoint URL discovered from the OIDC provider.</p>
    #   @return [String]
    # @!attribute end_session_endpoint
    #   <p>The end session endpoint URL for logging out users from the OIDC provider.</p>
    #   @return [String]
    # @!attribute logout_endpoint
    #   <p>The logout endpoint URL for terminating user sessions.</p>
    #   @return [String]
    # @!attribute grant_types_supported
    #   <p>The OAuth grant types supported by the OIDC provider.</p>
    #   @return [Array<String>]
    # @!attribute revocation_endpoint
    #   <p>The token revocation endpoint URL for invalidating tokens.</p>
    #   @return [String]
    # @!attribute token_endpoint_auth_methods_supported
    #   <p>The authentication methods supported by the token endpoint.</p>
    #   @return [Array<String>]
    # @!attribute microsoft_multi_refresh_token
    #   <p>Indicates whether the provider supports Microsoft multi-refresh tokens.</p>
    #   @return [Boolean]
    class RegisterOidcConfigTestResponse < Struct.new(
      nil,
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
      :microsoft_multi_refresh_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network for which OpenTDF integration will be configured.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The OIDC client ID used for authenticating with the OpenTDF provider.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The OIDC client secret used for authenticating with the OpenTDF provider</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain of the OpenTDF server.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of the OpenTDF platform.</p> <note> <p>Currently only Virtru is supported as the OpenTDF provider.</p> </note>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Perform dry-run test connection of OpenTDF configuration (optional).</p>
    #   @return [Boolean]
    class RegisterOpentdfConfigRequest < Struct.new(
      nil,
      :network_id,
      :client_id,
      :client_secret,
      :domain,
      :provider,
      :dry_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_id
    #   <p>The OIDC client ID used for authenticating with the OpenTDF provider.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain of the OpenTDF server.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The OIDC client secret used for authenticating with the OpenTDF provider.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of the OpenTDF platform.</p>
    #   @return [String]
    class RegisterOpentdfConfigResponse < Struct.new(
      nil,
      :client_id,
      :domain,
      :client_secret,
      :provider,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource could not be found. This error occurs when you try to access or modify a network, user, bot, security group, or other resource that doesn't exist or has been deleted.</p>
    # @!attribute message
    #   <p>A message identifying which resource was not found.</p>
    #   @return [String]
    class ResourceNotFoundError < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a security group in a Wickr network, containing membership statistics, configuration, and all permission settings that apply to its members.</p>
    # @!attribute active_members
    #   <p>The number of active user members currently in the security group.</p>
    #   @return [Integer]
    # @!attribute bot_members
    #   <p>The number of bot members currently in the security group.</p>
    #   @return [Integer]
    # @!attribute active_directory_guid
    #   <p>The GUID of the Active Directory group associated with this security group, if synchronized with LDAP.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the security group.</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>Indicates whether this is the default security group for the network. Each network has only one default group.</p>
    #   @return [Boolean]
    # @!attribute name
    #   <p>The human-readable name of the security group.</p>
    #   @return [String]
    # @!attribute modified
    #   <p>The timestamp when the security group was last modified, specified in epoch seconds.</p>
    #   @return [Integer]
    # @!attribute security_group_settings
    #   <p>The comprehensive configuration settings that define capabilities and restrictions for members of this security group.</p>
    #   @return [Types::SecurityGroupSettings]
    class SecurityGroup < Struct.new(
      nil,
      :active_members,
      :bot_members,
      :active_directory_guid,
      :id,
      :is_default,
      :name,
      :modified,
      :security_group_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Comprehensive configuration settings that define all user capabilities, restrictions, and features for members of a security group. These settings control everything from calling permissions to federation settings to security policies.</p>
    # @!attribute always_reauthenticate
    #   <p>Requires users to reauthenticate every time they return to the application, providing an additional layer of security.</p>
    #   @return [Boolean]
    # @!attribute atak_package_values
    #   <p>Configuration values for ATAK (Android Team Awareness Kit) package integration, when ATAK is enabled.</p>
    #   @return [Array<String>]
    # @!attribute calling
    #   <p>The calling feature permissions and settings that control what types of calls users can initiate and participate in.</p>
    #   @return [Types::CallingSettings]
    # @!attribute check_for_updates
    #   <p>Enables automatic checking for Wickr client updates to ensure users stay current with the latest version.</p>
    #   @return [Boolean]
    # @!attribute enable_atak
    #   <p>Enables ATAK (Android Team Awareness Kit) integration for tactical communication and situational awareness.</p>
    #   @return [Boolean]
    # @!attribute enable_crash_reports
    #   <p>Allow users to report crashes.</p>
    #   @return [Boolean]
    # @!attribute enable_file_download
    #   <p>Specifies whether users can download files from messages to their devices.</p>
    #   @return [Boolean]
    # @!attribute enable_guest_federation
    #   <p>Allows users to communicate with guest users from other Wickr networks and federated external networks.</p>
    #   @return [Boolean]
    # @!attribute enable_notification_preview
    #   <p>Enables message preview text in push notifications, allowing users to see message content before opening the app.</p>
    #   @return [Boolean]
    # @!attribute enable_open_access_option
    #   <p> Allow users to avoid censorship when they are geo-blocked or have network limitations.</p>
    #   @return [Boolean]
    # @!attribute enable_restricted_global_federation
    #   <p>Enables restricted global federation, limiting external communication to only specified permitted networks.</p>
    #   @return [Boolean]
    # @!attribute files_enabled
    #   <p>Enables file sharing capabilities, allowing users to send and receive files in conversations.</p>
    #   @return [Boolean]
    # @!attribute force_device_lockout
    #   <p> Defines the number of failed login attempts before data stored on the device is reset. Should be less than lockoutThreshold.</p>
    #   @return [Integer]
    # @!attribute force_open_access
    #   <p>Automatically enable and enforce Wickr open access on all devices. Valid only if enableOpenAccessOption settings is enabled.</p>
    #   @return [Boolean]
    # @!attribute force_read_receipts
    #   <p>Allow user approved bots to read messages in rooms without using a slash command.</p>
    #   @return [Boolean]
    # @!attribute global_federation
    #   <p>Allows users to communicate with users on other Wickr instances (Wickr Enterprise) outside the current network.</p>
    #   @return [Boolean]
    # @!attribute is_ato_enabled
    #   <p>Enforces a two-factor authentication when a user adds a new device to their account.</p>
    #   @return [Boolean]
    # @!attribute is_link_preview_enabled
    #   <p>Enables automatic preview of links shared in messages, showing webpage thumbnails and descriptions.</p>
    #   @return [Boolean]
    # @!attribute location_allow_maps
    #   <p>Allows map integration in location sharing, enabling users to view shared locations on interactive maps. Only allowed when location setting is enabled.</p>
    #   @return [Boolean]
    # @!attribute location_enabled
    #   <p>Enables location sharing features, allowing users to share their current location with others.</p>
    #   @return [Boolean]
    # @!attribute max_auto_download_size
    #   <p>The maximum file size in bytes that will be automatically downloaded without user confirmation. Only allowed if fileDownload is enabled. Valid Values [512000 (low_quality), 7340032 (high_quality) ]</p>
    #   @return [Integer]
    # @!attribute max_bor
    #   <p>The maximum burn-on-read (BOR) time in seconds, which determines how long messages remain visible before auto-deletion after being read.</p>
    #   @return [Integer]
    # @!attribute max_ttl
    #   <p>The maximum time-to-live (TTL) in seconds for messages, after which they will be automatically deleted from all devices.</p>
    #   @return [Integer]
    # @!attribute message_forwarding_enabled
    #   <p>Enables message forwarding, allowing users to forward messages from one conversation to another.</p>
    #   @return [Boolean]
    # @!attribute password_requirements
    #   <p>The password complexity requirements that users must follow when creating or changing passwords.</p>
    #   @return [Types::PasswordRequirements]
    # @!attribute presence_enabled
    #   <p>Enables presence indicators that show whether users are online, away, or offline.</p>
    #   @return [Boolean]
    # @!attribute quick_responses
    #   <p>A list of pre-defined quick response message templates that users can send with a single tap.</p>
    #   @return [Array<String>]
    # @!attribute show_master_recovery_key
    #   <p>Users will get a master recovery key that can be used to securely sign in to their Wickr account without having access to their primary device for authentication. Available in SSO enabled network.</p>
    #   @return [Boolean]
    # @!attribute shredder
    #   <p>The message shredder configuration that controls secure deletion of messages and files from devices.</p>
    #   @return [Types::ShredderSettings]
    # @!attribute sso_max_idle_minutes
    #   <p>The duration for which users SSO session remains inactive before automatically logging them out for security. Available in SSO enabled network.</p>
    #   @return [Integer]
    # @!attribute max_non_sso_session_minutes
    #   <p>Maximum session duration in minutes for non-SSO users. Set to 0 to disable. Valid range is 60 to 525600 (1 hour to 365 days).</p>
    #   @return [Integer]
    # @!attribute federation_mode
    #   <p>The local federation mode controlling how users can communicate with other networks. Values: 0 (none), 1 (federated), 2 (restricted).</p>
    #   @return [Integer]
    # @!attribute lockout_threshold
    #   <p>The number of failed password attempts before a user account is locked out.</p>
    #   @return [Integer]
    # @!attribute permitted_networks
    #   <p>A list of network IDs that are permitted for local federation when federation mode is set to restricted.</p>
    #   @return [Array<String>]
    # @!attribute permitted_wickr_aws_networks
    #   <p>A list of permitted Wickr networks for global federation, restricting communication to specific approved networks.</p>
    #   @return [Array<Types::WickrAwsNetworks>]
    # @!attribute permitted_wickr_enterprise_networks
    #   <p>A list of permitted Wickr Enterprise networks for global federation, restricting communication to specific approved networks.</p>
    #   @return [Array<Types::PermittedWickrEnterpriseNetwork>]
    class SecurityGroupSettings < Struct.new(
      nil,
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
      :max_non_sso_session_minutes,
      :federation_mode,
      :lockout_threshold,
      :permitted_networks,
      :permitted_wickr_aws_networks,
      :permitted_wickr_enterprise_networks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the security group configuration settings that can be specified when creating or updating a security group. This is a subset of SecurityGroupSettings containing only the modifiable federation and security settings.</p>
    # @!attribute lockout_threshold
    #   <p>The number of failed password attempts before a user account is locked out.</p>
    #   @return [Integer]
    # @!attribute permitted_networks
    #   <p>A list of network IDs that are permitted for local federation when federation mode is set to restricted.</p>
    #   @return [Array<String>]
    # @!attribute enable_guest_federation
    #   <p>Guest users let you work with people outside your organization that only have limited access to Wickr. Only valid when federationMode is set to Global.</p>
    #   @return [Boolean]
    # @!attribute global_federation
    #   <p>Allow users to securely federate with all Amazon Web Services Wickr networks and Amazon Web Services Enterprise networks.</p>
    #   @return [Boolean]
    # @!attribute federation_mode
    #   <p>The local federation mode. Values: 0 (none), 1 (federated - all networks), 2 (restricted - only permitted networks).</p>
    #   @return [Integer]
    # @!attribute enable_restricted_global_federation
    #   <p>Enables restricted global federation to limit communication to specific permitted networks only. Requires globalFederation to be enabled.</p>
    #   @return [Boolean]
    # @!attribute permitted_wickr_aws_networks
    #   <p>A list of permitted Amazon Web Services Wickr networks for restricted global federation.</p>
    #   @return [Array<Types::WickrAwsNetworks>]
    # @!attribute permitted_wickr_enterprise_networks
    #   <p>A list of permitted Wickr Enterprise networks for restricted global federation.</p>
    #   @return [Array<Types::PermittedWickrEnterpriseNetwork>]
    class SecurityGroupSettingsRequest < Struct.new(
      nil,
      :lockout_threshold,
      :permitted_networks,
      :enable_guest_federation,
      :global_federation,
      :federation_mode,
      :enable_restricted_global_federation,
      :permitted_wickr_aws_networks,
      :permitted_wickr_enterprise_networks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single network-level configuration setting with its name, value, and data type. Settings control network-wide behaviors and features.</p>
    # @!attribute option_name
    #   <p>The name of the network setting (e.g., 'enableClientMetrics', 'dataRetention').</p>
    #   @return [String]
    # @!attribute value
    #   <p>The current value of the setting as a string. Boolean values are represented as 'true' or 'false'.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the setting value (e.g., 'boolean', 'string', 'number').</p>
    #   @return [String]
    class Setting < Struct.new(
      nil,
      :option_name,
      :value,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for the Wickr shredder feature, which writes random data over free memory and disk space on client devices. You can configure your Wickr shredder intensity using the parameters below. </p> <note> <p>Secure Shredder will not write over files that are permanently stored on the device or saved outside of the Wickr client. Wickr Network Administrators are able to disable file downloads within Security Group Settings.</p> </note>
    # @!attribute can_process_manually
    #   <p>Specifies whether users can manually trigger the shredder to delete content.</p>
    #   @return [Boolean]
    # @!attribute intensity
    #   <p>Controls the rate (MB/minute) at which the shredder function runs on clients. Valid Values: Must be one of [0, 20, 60, 100].</p> <note> <p>A higher intensity setting could lead to higher battery usage on mobile devices.</p> </note>
    #   @return [Integer]
    class ShredderSettings < Struct.new(
      nil,
      :can_process_manually,
      :intensity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was not authenticated or the authentication credentials were invalid. This error occurs when the request lacks valid authentication credentials or the credentials have expired.</p>
    # @!attribute message
    #   <p>A message explaining why the authentication failed.</p>
    #   @return [String]
    class UnauthorizedError < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network containing the bot to update.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The unique identifier of the bot to update.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The new display name for the bot.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The ID of the new security group to assign the bot to.</p>
    #   @return [String]
    # @!attribute challenge
    #   <p>The new password for the bot account.</p>
    #   @return [String]
    # @!attribute suspend
    #   <p>Set to true to suspend the bot or false to unsuspend it. Omit this field for standard updates that don't affect suspension status.</p>
    #   @return [Boolean]
    class UpdateBotRequest < Struct.new(
      nil,
      :network_id,
      :bot_id,
      :display_name,
      :group_id,
      :challenge,
      :suspend,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating the result of the bot update operation.</p>
    #   @return [String]
    class UpdateBotResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network containing the data retention bot.</p>
    #   @return [String]
    # @!attribute action_type
    #   <p>The action to perform. Valid values are 'ENABLE' (to enable the data retention service), 'DISABLE' (to disable the service), or 'PUBKEY_MSG_ACK' (to acknowledge the public key message).</p>
    #   @return [String]
    class UpdateDataRetentionRequest < Struct.new(
      nil,
      :network_id,
      :action_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating the result of the update operation.</p>
    #   @return [String]
    class UpdateDataRetentionResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network where the guest user's status will be updated.</p>
    #   @return [String]
    # @!attribute username_hash
    #   <p>The username hash (unique identifier) of the guest user to update.</p>
    #   @return [String]
    # @!attribute block
    #   <p>Set to true to block the guest user or false to unblock them.</p>
    #   @return [Boolean]
    class UpdateGuestUserRequest < Struct.new(
      nil,
      :network_id,
      :username_hash,
      :block,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating the result of the update operation.</p>
    #   @return [String]
    class UpdateGuestUserResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network to update.</p>
    #   @return [String]
    # @!attribute network_name
    #   <p>The new name for the network. Must be between 1 and 20 characters.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier for this request to ensure idempotency.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The ARN of the Amazon Web Services KMS customer managed key to use for encrypting sensitive data in the network.</p>
    #   @return [String]
    class UpdateNetworkRequest < Struct.new(
      nil,
      :network_id,
      :network_name,
      :client_token,
      :encryption_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message indicating that the network was updated successfully.</p>
    #   @return [String]
    class UpdateNetworkResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network whose settings will be updated.</p>
    #   @return [String]
    # @!attribute settings
    #   <p>A map of setting names to their new values. Each setting should be provided with its appropriate type (boolean, string, number, etc.).</p>
    #   @return [Types::NetworkSettings]
    class UpdateNetworkSettingsRequest < Struct.new(
      nil,
      :network_id,
      :settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute settings
    #   <p>A list of the updated network settings, showing the new values for each modified setting.</p>
    #   @return [Array<Types::Setting>]
    class UpdateNetworkSettingsResponse < Struct.new(
      nil,
      :settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network containing the security group to update.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The unique identifier of the security group to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name for the security group.</p>
    #   @return [String]
    # @!attribute security_group_settings
    #   <p>The updated configuration settings for the security group.</p> <p>Federation mode - 0 (Local federation), 1 (Restricted federation), 2 (Global federation) </p>
    #   @return [Types::SecurityGroupSettings]
    class UpdateSecurityGroupRequest < Struct.new(
      nil,
      :network_id,
      :group_id,
      :name,
      :security_group_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_group
    #   <p>The updated security group details, including the new settings.</p>
    #   @return [Types::SecurityGroup]
    class UpdateSecurityGroupResponse < Struct.new(
      nil,
      :security_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the modifiable details for updating an existing user, including name, password, security group membership, and invitation settings.</p> <note> <p>A user can only be assigned to a single security group. Attempting to add a user to multiple security groups is not supported and will result in an error.</p> </note>
    # @!attribute first_name
    #   <p>The new first name for the user.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The new last name for the user.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The new username or email address for the user.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The updated list of security group IDs to which the user should belong.</p>
    #   @return [Array<String>]
    # @!attribute invite_code
    #   <p>A new custom invite code for the user.</p>
    #   @return [String]
    # @!attribute invite_code_ttl
    #   <p>The new time-to-live for the invite code in days.</p>
    #   @return [Integer]
    # @!attribute code_validation
    #   <p>Indicates whether the user can be verified through a custom invite code.</p>
    #   @return [Boolean]
    class UpdateUserDetails < Struct.new(
      nil,
      :first_name,
      :last_name,
      :username,
      :security_group_ids,
      :invite_code,
      :invite_code_ttl,
      :code_validation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute network_id
    #   <p>The ID of the Wickr network containing the user to update.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The unique identifier of the user to update.</p>
    #   @return [String]
    # @!attribute user_details
    #   <p>An object containing the user details to be updated, such as name, password, security groups, and invite code settings.</p>
    #   @return [Types::UpdateUserDetails]
    class UpdateUserRequest < Struct.new(
      nil,
      :network_id,
      :user_id,
      :user_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The unique identifier of the updated user.</p>
    #   @return [String]
    # @!attribute network_id
    #   <p>The ID of the network where the user was updated.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The list of security group IDs to which the user now belongs after the update.</p>
    #   @return [Array<String>]
    # @!attribute first_name
    #   <p>The updated first name of the user.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The updated last name of the user.</p>
    #   @return [String]
    # @!attribute middle_name
    #   <p>The middle name of the user (currently not used).</p>
    #   @return [String]
    # @!attribute suspended
    #   <p>Indicates whether the user is suspended after the update.</p>
    #   @return [Boolean]
    # @!attribute modified
    #   <p>The timestamp when the user was last modified, specified in epoch seconds.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The user's status after the update.</p>
    #   @return [Integer]
    # @!attribute invite_code
    #   <p>The updated invite code for the user, if applicable.</p>
    #   @return [String]
    # @!attribute invite_expiration
    #   <p>The expiration time of the user's invite code, specified in epoch seconds.</p>
    #   @return [Integer]
    # @!attribute code_validation
    #   <p>Indicates whether the user can be verified through a custom invite code.</p>
    #   @return [Boolean]
    class UpdateUserResponse < Struct.new(
      nil,
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
      :code_validation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a user account in a Wickr network with detailed profile information, status, security settings, and authentication details.</p> <note> <p>codeValidation, inviteCode and inviteCodeTtl are restricted to networks under preview only.</p> </note>
    # @!attribute user_id
    #   <p>The unique identifier for the user within the network.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>The first name of the user.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The last name of the user.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The email address or username of the user. For bots, this must end in 'bot'.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>A list of security group IDs to which the user is assigned, determining their permissions and feature access.</p>
    #   @return [Array<String>]
    # @!attribute is_admin
    #   <p>Indicates whether the user has administrator privileges in the network.</p>
    #   @return [Boolean]
    # @!attribute suspended
    #   <p>Indicates whether the user is currently suspended and unable to access the network.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The current status of the user (1 for pending invitation, 2 for active).</p>
    #   @return [Integer]
    # @!attribute otp_enabled
    #   <p>Indicates whether one-time password (OTP) authentication is enabled for the user.</p>
    #   @return [Boolean]
    # @!attribute scim_id
    #   <p>The SCIM (System for Cross-domain Identity Management) identifier for the user, used for identity synchronization. Currently not used.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The descriptive type of the user account (e.g., 'user').</p>
    #   @return [String]
    # @!attribute cell
    #   <p>The phone number minus country code, used for cloud deployments.</p>
    #   @return [String]
    # @!attribute country_code
    #   <p>The country code for the user's phone number, used for cloud deployments.</p>
    #   @return [String]
    # @!attribute challenge_failures
    #   <p>The number of failed password attempts for enterprise deployments, used for account lockout policies.</p>
    #   @return [Integer]
    # @!attribute is_invite_expired
    #   <p>Indicates whether the user's email invitation code has expired, applicable to cloud deployments.</p>
    #   @return [Boolean]
    # @!attribute is_user
    #   <p>Indicates whether this account is a user (as opposed to a bot or other account type).</p>
    #   @return [Boolean]
    # @!attribute invite_code
    #   <p>The invitation code for this user, used during registration to join the network.</p>
    #   @return [String]
    # @!attribute code_validation
    #   <p>Indicates whether the user can be verified through a custom invite code.</p>
    #   @return [Boolean]
    # @!attribute uname
    #   <p>The unique identifier for the user.</p>
    #   @return [String]
    class User < Struct.new(
      nil,
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
      :uname,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more fields in the request failed validation. This error provides detailed information about which fields were invalid and why, allowing you to correct the request and retry.</p>
    # @!attribute reasons
    #   <p>A list of validation error details, where each item identifies a specific field that failed validation and explains the reason for the failure.</p>
    #   @return [Array<Types::ErrorDetail>]
    # @!attribute message
    #   <p>A message describing the validation error error that occurred.</p>
    #   @return [String]
    class ValidationError < Struct.new(
      nil,
      :reasons,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a Amazon Web Services Wickr network by region and network ID, used for configuring permitted networks for global federation.</p>
    # @!attribute region
    #   <p>The Amazon Web Services region identifier where the network is hosted (e.g., 'us-east-1').</p>
    #   @return [String]
    # @!attribute network_id
    #   <p>The network ID of the Wickr Amazon Web Services network.</p>
    #   @return [String]
    class WickrAwsNetworks < Struct.new(
      nil,
      :region,
      :network_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
