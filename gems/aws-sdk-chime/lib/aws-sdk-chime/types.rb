# frozen_string_literal: true

# This is generated code!

module Aws::Chime
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have permissions to perform the requested operation.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon Chime account details. An AWS account can have multiple Amazon Chime accounts.</p>
    # @!attribute aws_account_id
    #   <p>The AWS account ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The Amazon Chime account name.</p>
    #   @return [String]
    # @!attribute account_type
    #   <p>The Amazon Chime account type. For more information about different account types, see 
    #       <a href="https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html">Managing Your Amazon Chime Accounts</a> in the <i>Amazon Chime Administration
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The Amazon Chime account creation timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute default_license
    #   <p>The default license for the Amazon Chime account.</p>
    #   @return [String]
    # @!attribute supported_licenses
    #   <p>Supported licenses for the Amazon Chime account.</p>
    #   @return [Array<String>]
    # @!attribute account_status
    #   <p>The status of the account.</p>
    #   @return [String]
    # @!attribute signin_delegate_groups
    #   <p>The sign-in delegate groups associated with the account.</p>
    #   @return [Array<Types::SigninDelegateGroup>]
    class Account < Struct.new(
      :aws_account_id,
      :account_id,
      :name,
      :account_type,
      :created_timestamp,
      :default_license,
      :supported_licenses,
      :account_status,
      :signin_delegate_groups,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Settings related to the Amazon Chime account. This includes settings that start or stop
    #             remote control of shared screens, or start or stop the dial-out option in the Amazon Chime web application. For more information about these settings, see 
    #     <a href="https://docs.aws.amazon.com/chime/latest/ag/policies.html">Use the Policies Page</a> in the <i>Amazon Chime Administration Guide</i>.</p>
    # @!attribute disable_remote_control
    #   <p>Setting that stops or starts remote control of shared screens during meetings.</p>
    #   @return [Boolean]
    # @!attribute enable_dial_out
    #   <p>Setting that allows meeting participants to choose the <b>Call me at a phone number</b> option. For more information, see 
    #       <a href="https://docs.aws.amazon.com/chime/latest/ug/chime-join-meeting.html">Join a Meeting without the Amazon Chime App</a>.</p>
    #   @return [Boolean]
    class AccountSettings < Struct.new(
      :disable_remote_control,
      :enable_dial_out,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AccountStatus
      Suspended = 'Suspended'
      Active = 'Active'
    end

    module AccountType
      Team = 'Team'
      EnterpriseDirectory = 'EnterpriseDirectory'
      EnterpriseLWA = 'EnterpriseLWA'
      EnterpriseOIDC = 'EnterpriseOIDC'
    end

    # <p>The Alexa for Business metadata associated with an Amazon Chime user, used to integrate Alexa for Business with a device.</p>
    # @!attribute is_alexa_for_business_enabled
    #   <p>Starts or stops Alexa for Business.</p>
    #   @return [Boolean]
    # @!attribute alexa_for_business_room_arn
    #   <p>The ARN of the room resource.</p>
    #   @return [String]
    class AlexaForBusinessMetadata < Struct.new(
      :is_alexa_for_business_enabled,
      :alexa_for_business_room_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID.</p>
    #   @return [String]
    # @!attribute e164_phone_number
    #   <p>The phone number, in E.164 format.</p>
    #   @return [String]
    class AssociatePhoneNumberWithUserRequest < Struct.new(
      :account_id,
      :user_id,
      :e164_phone_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class AssociatePhoneNumberWithUserResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute signin_delegate_groups
    #   <p>The sign-in delegate groups.</p>
    #   @return [Array<Types::SigninDelegateGroup>]
    class AssociateSigninDelegateGroupsWithAccountRequest < Struct.new(
      :account_id,
      :signin_delegate_groups,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class AssociateSigninDelegateGroupsWithAccountResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input parameters don't match the service's restrictions.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute room_id
    #   <p>The room ID.</p>
    #   @return [String]
    # @!attribute membership_item_list
    #   <p>The list of membership items.</p>
    #   @return [Array<Types::MembershipItem>]
    class BatchCreateRoomMembershipRequest < Struct.new(
      :account_id,
      :room_id,
      :membership_item_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>If the action fails for one or more of the member IDs in the request, a list of the member IDs is returned, along with error codes and error messages.</p>
    #   @return [Array<Types::MemberError>]
    class BatchCreateRoomMembershipResponse < Struct.new(
      :errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_number_ids
    #   <p>List of phone number IDs.</p>
    #   @return [Array<String>]
    class BatchDeletePhoneNumberRequest < Struct.new(
      :phone_number_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_number_errors
    #   <p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>
    #   @return [Array<Types::PhoneNumberError>]
    class BatchDeletePhoneNumberResponse < Struct.new(
      :phone_number_errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute user_id_list
    #   <p>The request containing the user IDs to suspend.</p>
    #   @return [Array<String>]
    class BatchSuspendUserRequest < Struct.new(
      :account_id,
      :user_id_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_errors
    #   <p>If the <a>BatchSuspendUser</a> action fails for one or more of the user IDs in the
    #               request, a list of the user IDs is returned, along with error codes and error messages.</p>
    #   @return [Array<Types::UserError>]
    class BatchSuspendUserResponse < Struct.new(
      :user_errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute user_id_list
    #   <p>The request containing the user IDs to unsuspend.</p>
    #   @return [Array<String>]
    class BatchUnsuspendUserRequest < Struct.new(
      :account_id,
      :user_id_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_errors
    #   <p>If the <a>BatchUnsuspendUser</a> action fails for one or more of the user IDs in the
    #               request, a list of the user IDs is returned, along with error codes and error messages.</p>
    #   @return [Array<Types::UserError>]
    class BatchUnsuspendUserResponse < Struct.new(
      :user_errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute update_phone_number_request_items
    #   <p>The request containing the phone number IDs and product types or calling names to update.</p>
    #   @return [Array<Types::UpdatePhoneNumberRequestItem>]
    class BatchUpdatePhoneNumberRequest < Struct.new(
      :update_phone_number_request_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_number_errors
    #   <p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>
    #   @return [Array<Types::PhoneNumberError>]
    class BatchUpdatePhoneNumberResponse < Struct.new(
      :phone_number_errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute update_user_request_items
    #   <p>The request containing the user IDs and details to update.</p>
    #   @return [Array<Types::UpdateUserRequestItem>]
    class BatchUpdateUserRequest < Struct.new(
      :account_id,
      :update_user_request_items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_errors
    #   <p>If the <a>BatchUpdateUser</a> action fails for one or more of the user IDs in the
    #               request, a list of the user IDs is returned, along with error codes and error messages.</p>
    #   @return [Array<Types::UserError>]
    class BatchUpdateUserResponse < Struct.new(
      :user_errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A resource that allows Enterprise account administrators to configure an interface to receive events from Amazon Chime.</p>
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The unique ID for the bot user.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The bot display name.</p>
    #   @return [String]
    # @!attribute bot_type
    #   <p>The bot type.</p>
    #   @return [String]
    # @!attribute disabled
    #   <p>When true, the bot is stopped from running in your account.</p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The bot creation timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The updated bot timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute bot_email
    #   <p>The bot email address.</p>
    #   @return [String]
    # @!attribute security_token
    #   <p>The security token used to authenticate Amazon Chime with the outgoing event endpoint.</p>
    #   @return [String]
    class Bot < Struct.new(
      :bot_id,
      :user_id,
      :display_name,
      :bot_type,
      :disabled,
      :created_timestamp,
      :updated_timestamp,
      :bot_email,
      :security_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module BotType
      ChatBot = 'ChatBot'
    end

    # <p>The Amazon Chime Business Calling settings for the administrator's AWS account. Includes any
    #             Amazon S3 buckets designated for storing call detail records.</p>
    # @!attribute cdr_bucket
    #   <p>The Amazon S3 bucket designated for call detail record storage.</p>
    #   @return [String]
    class BusinessCallingSettings < Struct.new(
      :cdr_bucket,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CallingNameStatus
      Unassigned = 'Unassigned'
      UpdateInProgress = 'UpdateInProgress'
      UpdateSucceeded = 'UpdateSucceeded'
      UpdateFailed = 'UpdateFailed'
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The retention settings that determine how long to retain conversation messages for an Amazon Chime Enterprise account.</p>
    # @!attribute retention_days
    #   <p>The number of days for which to retain conversation messages.</p>
    #   @return [Integer]
    class ConversationRetentionSettings < Struct.new(
      :retention_days,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon Chime account.</p>
    #   @return [String]
    class CreateAccountRequest < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account
    #   <p>The Amazon Chime account details.</p>
    #   @return [Types::Account]
    class CreateAccountResponse < Struct.new(
      :account,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The bot display name.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain of the Amazon Chime Enterprise account.</p>
    #   @return [String]
    class CreateBotRequest < Struct.new(
      :account_id,
      :display_name,
      :domain,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bot
    #   <p>The bot details.</p>
    #   @return [Types::Bot]
    class CreateBotResponse < Struct.new(
      :bot,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #   @return [String]
    # @!attribute from_phone_number
    #   <p>Phone number used as the caller ID when the remote party receives a call.</p>
    #   @return [String]
    # @!attribute to_phone_number
    #   <p>Phone number called when inviting someone to a meeting.</p>
    #   @return [String]
    # @!attribute join_token
    #   <p>Token used by the Amazon Chime SDK attendee. Call the <a href="https://docs.aws.amazon.com/chime/latest/APIReference/API_CreateAttendee.html">CreateAttendee</a> action to get a join token.</p>
    #   @return [String]
    class CreateMeetingDialOutRequest < Struct.new(
      :meeting_id,
      :from_phone_number,
      :to_phone_number,
      :join_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute transaction_id
    #   <p>Unique ID that tracks API calls.</p>
    #   @return [String]
    class CreateMeetingDialOutResponse < Struct.new(
      :transaction_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute product_type
    #   <p>The phone number product type.</p>
    #   @return [String]
    # @!attribute e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #   @return [Array<String>]
    class CreatePhoneNumberOrderRequest < Struct.new(
      :product_type,
      :e164_phone_numbers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_number_order
    #   <p>The phone number order details.</p>
    #   @return [Types::PhoneNumberOrder]
    class CreatePhoneNumberOrderResponse < Struct.new(
      :phone_number_order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute room_id
    #   <p>The room ID.</p>
    #   @return [String]
    # @!attribute member_id
    #   <p>The Amazon Chime member ID (user ID or bot ID).</p>
    #   @return [String]
    # @!attribute role
    #   <p>The role of the member.</p>
    #   @return [String]
    class CreateRoomMembershipRequest < Struct.new(
      :account_id,
      :room_id,
      :member_id,
      :role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute room_membership
    #   <p>The room membership details.</p>
    #   @return [Types::RoomMembership]
    class CreateRoomMembershipResponse < Struct.new(
      :room_membership,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The room name.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>The idempotency token for the request.</p>
    #   @return [String]
    class CreateRoomRequest < Struct.new(
      :account_id,
      :name,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute room
    #   <p>The room details.</p>
    #   @return [Types::Room]
    class CreateRoomResponse < Struct.new(
      :room,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The user name.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The user's email address.</p>
    #   @return [String]
    # @!attribute user_type
    #   <p>The user type.</p>
    #   @return [String]
    class CreateUserRequest < Struct.new(
      :account_id,
      :username,
      :email,
      :user_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user
    #   <p>The user on the Amazon Chime account.</p>
    #   @return [Types::User]
    class CreateUserResponse < Struct.new(
      :user,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    class DeleteAccountRequest < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAccountResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #   @return [String]
    class DeleteEventsConfigurationRequest < Struct.new(
      :account_id,
      :bot_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>The phone number ID.</p>
    #   @return [String]
    class DeletePhoneNumberRequest < Struct.new(
      :phone_number_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute room_id
    #   <p>The room ID.</p>
    #   @return [String]
    # @!attribute member_id
    #   <p>The member ID (user ID or bot ID).</p>
    #   @return [String]
    class DeleteRoomMembershipRequest < Struct.new(
      :account_id,
      :room_id,
      :member_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute room_id
    #   <p>The chat room ID.</p>
    #   @return [String]
    class DeleteRoomRequest < Struct.new(
      :account_id,
      :room_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID.</p>
    #   @return [String]
    class DisassociatePhoneNumberFromUserRequest < Struct.new(
      :account_id,
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DisassociatePhoneNumberFromUserResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute group_names
    #   <p>The sign-in delegate group names.</p>
    #   @return [Array<String>]
    class DisassociateSigninDelegateGroupsFromAccountRequest < Struct.new(
      :account_id,
      :group_names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DisassociateSigninDelegateGroupsFromAccountResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EmailStatus
      NotSent = 'NotSent'
      Sent = 'Sent'
      Failed = 'Failed'
    end

    module ErrorCode
      BadRequest = 'BadRequest'
      Conflict = 'Conflict'
      Forbidden = 'Forbidden'
      NotFound = 'NotFound'
      PreconditionFailed = 'PreconditionFailed'
      ResourceLimitExceeded = 'ResourceLimitExceeded'
      ServiceFailure = 'ServiceFailure'
      AccessDenied = 'AccessDenied'
      ServiceUnavailable = 'ServiceUnavailable'
      Throttled = 'Throttled'
      Throttling = 'Throttling'
      Unauthorized = 'Unauthorized'
      Unprocessable = 'Unprocessable'
      VoiceConnectorGroupAssociationsExist = 'VoiceConnectorGroupAssociationsExist'
      PhoneNumberAssociationsExist = 'PhoneNumberAssociationsExist'
    end

    # <p>The configuration that allows a bot to receive outgoing events. Can be either an HTTPS endpoint or a Lambda function ARN.</p>
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #   @return [String]
    # @!attribute outbound_events_https_endpoint
    #   <p>HTTPS endpoint that allows a bot to receive outgoing events.</p>
    #   @return [String]
    # @!attribute lambda_function_arn
    #   <p>Lambda function ARN that allows a bot to receive outgoing events.</p>
    #   @return [String]
    class EventsConfiguration < Struct.new(
      :bot_id,
      :outbound_events_https_endpoint,
      :lambda_function_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The client is permanently forbidden from making the request.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    class GetAccountRequest < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account
    #   <p>The Amazon Chime account details.</p>
    #   @return [Types::Account]
    class GetAccountResponse < Struct.new(
      :account,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    class GetAccountSettingsRequest < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_settings
    #   <p>The Amazon Chime account settings.</p>
    #   @return [Types::AccountSettings]
    class GetAccountSettingsResponse < Struct.new(
      :account_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #   @return [String]
    class GetBotRequest < Struct.new(
      :account_id,
      :bot_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bot
    #   <p>The chat bot details.</p>
    #   @return [Types::Bot]
    class GetBotResponse < Struct.new(
      :bot,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #   @return [String]
    class GetEventsConfigurationRequest < Struct.new(
      :account_id,
      :bot_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute events_configuration
    #   <p>The events configuration details.</p>
    #   @return [Types::EventsConfiguration]
    class GetEventsConfigurationResponse < Struct.new(
      :events_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute business_calling
    #   <p>The Amazon Chime Business Calling settings.</p>
    #   @return [Types::BusinessCallingSettings]
    # @!attribute voice_connector
    #   <p>The Amazon Chime Voice Connector settings.</p>
    #   @return [Types::VoiceConnectorSettings]
    class GetGlobalSettingsResponse < Struct.new(
      :business_calling,
      :voice_connector,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_number_order_id
    #   <p>The ID for the phone number order.</p>
    #   @return [String]
    class GetPhoneNumberOrderRequest < Struct.new(
      :phone_number_order_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_number_order
    #   <p>The phone number order details.</p>
    #   @return [Types::PhoneNumberOrder]
    class GetPhoneNumberOrderResponse < Struct.new(
      :phone_number_order,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>The phone number ID.</p>
    #   @return [String]
    class GetPhoneNumberRequest < Struct.new(
      :phone_number_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_number
    #   <p>The phone number details.</p>
    #   @return [Types::PhoneNumber]
    class GetPhoneNumberResponse < Struct.new(
      :phone_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute calling_name
    #   <p>The default outbound calling name for the account.</p>
    #   @return [String]
    # @!attribute calling_name_updated_timestamp
    #   <p>The updated outbound calling name timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    class GetPhoneNumberSettingsResponse < Struct.new(
      :calling_name,
      :calling_name_updated_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    class GetRetentionSettingsRequest < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute retention_settings
    #   <p>The retention settings.</p>
    #   @return [Types::RetentionSettings]
    # @!attribute initiate_deletion_timestamp
    #   <p>The timestamp representing the time at which the specified items are permanently deleted, in ISO 8601 format.</p>
    #   @return [Time]
    class GetRetentionSettingsResponse < Struct.new(
      :retention_settings,
      :initiate_deletion_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute room_id
    #   <p>The room ID.</p>
    #   @return [String]
    class GetRoomRequest < Struct.new(
      :account_id,
      :room_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute room
    #   <p>The room details.</p>
    #   @return [Types::Room]
    class GetRoomResponse < Struct.new(
      :room,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID.</p>
    #   @return [String]
    class GetUserRequest < Struct.new(
      :account_id,
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user
    #   <p>The user details.</p>
    #   @return [Types::User]
    class GetUserResponse < Struct.new(
      :user,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID.</p>
    #   @return [String]
    class GetUserSettingsRequest < Struct.new(
      :account_id,
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_settings
    #   <p>The user settings.</p>
    #   @return [Types::UserSettings]
    class GetUserSettingsResponse < Struct.new(
      :user_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Invitation object returned after emailing users to invite them to join the Amazon Chime
    #                 <code>Team</code> account.</p>
    # @!attribute invite_id
    #   <p>The invite ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the invite.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The email address to which the invite is sent.</p>
    #   @return [String]
    # @!attribute email_status
    #   <p>The status of the invite email.</p>
    #   @return [String]
    class Invite < Struct.new(
      :invite_id,
      :status,
      :email_address,
      :email_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InviteStatus
      Pending = 'Pending'
      Accepted = 'Accepted'
      Failed = 'Failed'
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute user_email_list
    #   <p>The user email addresses to which to send the email invitation.</p>
    #   @return [Array<String>]
    # @!attribute user_type
    #   <p>The user type.</p>
    #   @return [String]
    class InviteUsersRequest < Struct.new(
      :account_id,
      :user_email_list,
      :user_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute invites
    #   <p>The email invitation details.</p>
    #   @return [Array<Types::Invite>]
    class InviteUsersResponse < Struct.new(
      :invites,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module License
      Basic = 'Basic'
      Plus = 'Plus'
      Pro = 'Pro'
      ProTrial = 'ProTrial'
    end

    # @!attribute name
    #   <p>Amazon Chime account name prefix with which to filter results.</p>
    #   @return [String]
    # @!attribute user_email
    #   <p>User email address with which to filter results.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    #   @return [Integer]
    class ListAccountsRequest < Struct.new(
      :name,
      :user_email,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute accounts
    #   <p>List of Amazon Chime accounts and account details.</p>
    #   @return [Array<Types::Account>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListAccountsResponse < Struct.new(
      :accounts,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default is 10.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListBotsRequest < Struct.new(
      :account_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bots
    #   <p>List of bots and bot details.</p>
    #   @return [Array<Types::Bot>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListBotsResponse < Struct.new(
      :bots,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListPhoneNumberOrdersRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_number_orders
    #   <p>The phone number order details.</p>
    #   @return [Array<Types::PhoneNumberOrder>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListPhoneNumberOrdersResponse < Struct.new(
      :phone_number_orders,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The phone number status.</p>
    #   @return [String]
    # @!attribute product_type
    #   <p>The phone number product type.</p>
    #   @return [String]
    # @!attribute filter_name
    #   <p>The filter to use to limit the number of results.</p>
    #   @return [String]
    # @!attribute filter_value
    #   <p>The value to use for the filter.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListPhoneNumbersRequest < Struct.new(
      :status,
      :product_type,
      :filter_name,
      :filter_value,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_numbers
    #   <p>The phone number details.</p>
    #   @return [Array<Types::PhoneNumber>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListPhoneNumbersResponse < Struct.new(
      :phone_numbers,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute room_id
    #   <p>The room ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListRoomMembershipsRequest < Struct.new(
      :account_id,
      :room_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute room_memberships
    #   <p>The room membership details.</p>
    #   @return [Array<Types::RoomMembership>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListRoomMembershipsResponse < Struct.new(
      :room_memberships,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute member_id
    #   <p>The member ID (user ID or bot ID).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListRoomsRequest < Struct.new(
      :account_id,
      :member_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute rooms
    #   <p>The room details.</p>
    #   @return [Array<Types::Room>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListRoomsResponse < Struct.new(
      :rooms,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute product_type
    #   <p>The phone number product type.</p>
    #   @return [String]
    class ListSupportedPhoneNumberCountriesRequest < Struct.new(
      :product_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_number_countries
    #   <p>The supported phone number countries.</p>
    #   @return [Array<Types::PhoneNumberCountry>]
    class ListSupportedPhoneNumberCountriesResponse < Struct.new(
      :phone_number_countries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute user_email
    #   <p>Optional. The user email address used to filter results. Maximum 1.</p>
    #   @return [String]
    # @!attribute user_type
    #   <p>The user type.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListUsersRequest < Struct.new(
      :account_id,
      :user_email,
      :user_type,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute users
    #   <p>List of users and user details.</p>
    #   @return [Array<Types::User>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListUsersResponse < Struct.new(
      :users,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID.</p>
    #   @return [String]
    class LogoutUserRequest < Struct.new(
      :account_id,
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class LogoutUserResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The member details, such as email address, name, member ID, and member type.</p>
    # @!attribute member_id
    #   <p>The member ID (user ID or bot ID).</p>
    #   @return [String]
    # @!attribute member_type
    #   <p>The member type.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The member email address.</p>
    #   @return [String]
    # @!attribute full_name
    #   <p>The member name.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    class Member < Struct.new(
      :member_id,
      :member_type,
      :email,
      :full_name,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The list of errors returned when a member action results in an error.</p>
    # @!attribute member_id
    #   <p>The member ID.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    class MemberError < Struct.new(
      :member_id,
      :error_code,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MemberType
      User = 'User'
      Bot = 'Bot'
      Webhook = 'Webhook'
    end

    # <p>Membership details, such as member ID and member role.</p>
    # @!attribute member_id
    #   <p>The member ID.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The member role.</p>
    #   @return [String]
    class MembershipItem < Struct.new(
      :member_id,
      :role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>One or more of the resources in the request does not exist in the system.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A phone number for which an order has been placed.</p>
    # @!attribute e164_phone_number
    #   <p>The phone number, in E.164 format.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The phone number status.</p>
    #   @return [String]
    class OrderedPhoneNumber < Struct.new(
      :e164_phone_number,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OrderedPhoneNumberStatus
      Processing = 'Processing'
      Acquired = 'Acquired'
      Failed = 'Failed'
    end

    # <p>A phone number used for Amazon Chime Business Calling or an Amazon Chime Voice
    #             Connector.</p>
    # @!attribute phone_number_id
    #   <p>The phone number ID.</p>
    #   @return [String]
    # @!attribute e164_phone_number
    #   <p>The phone number, in E.164 format.</p>
    #   @return [String]
    # @!attribute country
    #   <p>The phone number country. Format: ISO 3166-1 alpha-2.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The phone number type.</p>
    #   @return [String]
    # @!attribute product_type
    #   <p>The phone number product type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The phone number status.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>The phone number capabilities.</p>
    #   @return [Types::PhoneNumberCapabilities]
    # @!attribute associations
    #   <p>The phone number associations.</p>
    #   @return [Array<Types::PhoneNumberAssociation>]
    # @!attribute calling_name
    #   <p>The outbound calling name associated with the phone number.</p>
    #   @return [String]
    # @!attribute calling_name_status
    #   <p>The outbound calling name status.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The phone number creation timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The updated phone number timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute deletion_timestamp
    #   <p>The deleted phone number timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    class PhoneNumber < Struct.new(
      :phone_number_id,
      :e164_phone_number,
      :country,
      :type,
      :product_type,
      :status,
      :capabilities,
      :associations,
      :calling_name,
      :calling_name_status,
      :created_timestamp,
      :updated_timestamp,
      :deletion_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The phone number associations, such as Amazon Chime account ID, Amazon Chime user ID, Amazon
    #             Chime Voice Connector ID, or Amazon Chime Voice Connector group ID.</p>
    # @!attribute value
    #   <p>Contains the ID for the entity specified in Name.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Defines the association with an Amazon Chime account ID, user ID, Amazon Chime Voice Connector
    #               ID, or Amazon Chime Voice Connector group ID.</p>
    #   @return [String]
    # @!attribute associated_timestamp
    #   <p>The timestamp of the phone number association, in ISO 8601 format.</p>
    #   @return [Time]
    class PhoneNumberAssociation < Struct.new(
      :value,
      :name,
      :associated_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PhoneNumberAssociationName
      AccountId = 'AccountId'
      UserId = 'UserId'
      VoiceConnectorId = 'VoiceConnectorId'
      VoiceConnectorGroupId = 'VoiceConnectorGroupId'
      SipRuleId = 'SipRuleId'
    end

    # <p>The phone number capabilities for Amazon Chime Business Calling phone numbers, such as enabled
    #             inbound and outbound calling and text messaging.</p>
    # @!attribute inbound_call
    #   <p>Allows or denies inbound calling for the specified phone number.</p>
    #   @return [Boolean]
    # @!attribute outbound_call
    #   <p>Allows or denies outbound calling for the specified phone number.</p>
    #   @return [Boolean]
    # @!attribute inbound_sms
    #   <p>Allows or denies inbound SMS messaging for the specified phone number.</p>
    #   @return [Boolean]
    # @!attribute outbound_sms
    #   <p>Allows or denies outbound SMS messaging for the specified phone number.</p>
    #   @return [Boolean]
    # @!attribute inbound_mms
    #   <p>Allows or denies inbound MMS messaging for the specified phone number.</p>
    #   @return [Boolean]
    # @!attribute outbound_mms
    #   <p>Allows or denies outbound MMS messaging for the specified phone number.</p>
    #   @return [Boolean]
    class PhoneNumberCapabilities < Struct.new(
      :inbound_call,
      :outbound_call,
      :inbound_sms,
      :outbound_sms,
      :inbound_mms,
      :outbound_mms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The phone number country.</p>
    # @!attribute country_code
    #   <p>The phone number country code. Format: ISO 3166-1 alpha-2.</p>
    #   @return [String]
    # @!attribute supported_phone_number_types
    #   <p>The supported phone number types. </p>
    #   @return [Array<String>]
    class PhoneNumberCountry < Struct.new(
      :country_code,
      :supported_phone_number_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>If the phone number action fails for one or more of the phone numbers in the request, a list of
    #             the phone numbers is returned, along with error codes and error messages.</p>
    # @!attribute phone_number_id
    #   <p>The phone number ID for which the action failed.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    class PhoneNumberError < Struct.new(
      :phone_number_id,
      :error_code,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of a phone number order created for Amazon Chime.</p>
    # @!attribute phone_number_order_id
    #   <p>The phone number order ID.</p>
    #   @return [String]
    # @!attribute product_type
    #   <p>The phone number order product type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the phone number order.</p>
    #   @return [String]
    # @!attribute ordered_phone_numbers
    #   <p>The ordered phone number details, such as the phone number in E.164 format and the phone
    #               number status.</p>
    #   @return [Array<Types::OrderedPhoneNumber>]
    # @!attribute created_timestamp
    #   <p>The phone number order creation time stamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The updated phone number order time stamp, in ISO 8601 format.</p>
    #   @return [Time]
    class PhoneNumberOrder < Struct.new(
      :phone_number_order_id,
      :product_type,
      :status,
      :ordered_phone_numbers,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PhoneNumberOrderStatus
      Processing = 'Processing'
      Successful = 'Successful'
      Failed = 'Failed'
      Partial = 'Partial'
    end

    module PhoneNumberProductType
      BusinessCalling = 'BusinessCalling'
      VoiceConnector = 'VoiceConnector'
      SipMediaApplicationDialIn = 'SipMediaApplicationDialIn'
    end

    module PhoneNumberStatus
      AcquireInProgress = 'AcquireInProgress'
      AcquireFailed = 'AcquireFailed'
      Unassigned = 'Unassigned'
      Assigned = 'Assigned'
      ReleaseInProgress = 'ReleaseInProgress'
      DeleteInProgress = 'DeleteInProgress'
      ReleaseFailed = 'ReleaseFailed'
      DeleteFailed = 'DeleteFailed'
    end

    module PhoneNumberType
      Local = 'Local'
      TollFree = 'TollFree'
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #   @return [String]
    # @!attribute outbound_events_https_endpoint
    #   <p>HTTPS endpoint that allows the bot to receive outgoing events.</p>
    #   @return [String]
    # @!attribute lambda_function_arn
    #   <p>Lambda function ARN that allows the bot to receive outgoing events.</p>
    #   @return [String]
    class PutEventsConfigurationRequest < Struct.new(
      :account_id,
      :bot_id,
      :outbound_events_https_endpoint,
      :lambda_function_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute events_configuration
    #   <p>The configuration that allows a bot to receive outgoing events. Can be an HTTPS endpoint or an 
    #               AWS Lambda function ARN.</p>
    #   @return [Types::EventsConfiguration]
    class PutEventsConfigurationResponse < Struct.new(
      :events_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute retention_settings
    #   <p>The retention settings.</p>
    #   @return [Types::RetentionSettings]
    class PutRetentionSettingsRequest < Struct.new(
      :account_id,
      :retention_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute retention_settings
    #   <p>The retention settings.</p>
    #   @return [Types::RetentionSettings]
    # @!attribute initiate_deletion_timestamp
    #   <p>The timestamp representing the time at which the specified items are permanently deleted, in ISO 8601 format.</p>
    #   @return [Time]
    class PutRetentionSettingsResponse < Struct.new(
      :retention_settings,
      :initiate_deletion_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute conversation_id
    #   <p>The conversation ID.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The message ID.</p>
    #   @return [String]
    class RedactConversationMessageRequest < Struct.new(
      :account_id,
      :conversation_id,
      :message_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class RedactConversationMessageResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute room_id
    #   <p>The room ID.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The message ID.</p>
    #   @return [String]
    class RedactRoomMessageRequest < Struct.new(
      :account_id,
      :room_id,
      :message_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class RedactRoomMessageResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #   @return [String]
    class RegenerateSecurityTokenRequest < Struct.new(
      :account_id,
      :bot_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bot
    #   <p>A resource that allows Enterprise account administrators to configure an interface that receives events from Amazon Chime.</p>
    #   @return [Types::Bot]
    class RegenerateSecurityTokenResponse < Struct.new(
      :bot,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RegistrationStatus
      Unregistered = 'Unregistered'
      Registered = 'Registered'
      Suspended = 'Suspended'
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID.</p>
    #   @return [String]
    class ResetPersonalPINRequest < Struct.new(
      :account_id,
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user
    #   <p>The user details and new personal meeting PIN.</p>
    #   @return [Types::User]
    class ResetPersonalPINResponse < Struct.new(
      :user,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request exceeds the resource limit.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ResourceLimitExceededException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>The phone number.</p>
    #   @return [String]
    class RestorePhoneNumberRequest < Struct.new(
      :phone_number_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_number
    #   <p>The phone number details.</p>
    #   @return [Types::PhoneNumber]
    class RestorePhoneNumberResponse < Struct.new(
      :phone_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The retention settings for an Amazon Chime Enterprise account that determine how long to retain items such as chat-room messages and chat-conversation messages.</p>
    # @!attribute room_retention_settings
    #   <p>The chat room retention settings.</p>
    #   @return [Types::RoomRetentionSettings]
    # @!attribute conversation_retention_settings
    #   <p>The chat conversation retention settings.</p>
    #   @return [Types::ConversationRetentionSettings]
    class RetentionSettings < Struct.new(
      :room_retention_settings,
      :conversation_retention_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon Chime chat room details.</p>
    # @!attribute room_id
    #   <p>The room ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The room name.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The identifier of the room creator.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The room creation timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The room update timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    class Room < Struct.new(
      :room_id,
      :name,
      :account_id,
      :created_by,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The room membership details.</p>
    # @!attribute room_id
    #   <p>The room ID.</p>
    #   @return [String]
    # @!attribute member
    #   <p>The member details, such as email address, name, member ID, and member type.</p>
    #   @return [Types::Member]
    # @!attribute role
    #   <p>The membership role.</p>
    #   @return [String]
    # @!attribute invited_by
    #   <p>The identifier of the user that invited the room member.</p>
    #   @return [String]
    # @!attribute updated_timestamp
    #   <p>The room membership update timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    class RoomMembership < Struct.new(
      :room_id,
      :member,
      :role,
      :invited_by,
      :updated_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RoomMembershipRole
      Administrator = 'Administrator'
      Member = 'Member'
    end

    # <p>The retention settings that determine how long to retain chat-room messages for an Amazon Chime Enterprise account.</p>
    # @!attribute retention_days
    #   <p>The number of days for which to retain chat-room messages.</p>
    #   @return [Integer]
    class RoomRetentionSettings < Struct.new(
      :retention_days,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute area_code
    #   <p>The area code used to filter results. Only applies to the US.</p>
    #   @return [String]
    # @!attribute city
    #   <p>The city used to filter results. Only applies to the US.</p>
    #   @return [String]
    # @!attribute country
    #   <p>The country used to filter results. Defaults to the US Format: ISO 3166-1 alpha-2.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state used to filter results. Required only if you provide <code>City</code>. Only applies to the US.</p>
    #   @return [String]
    # @!attribute toll_free_prefix
    #   <p>The toll-free prefix that you use to filter results. Only applies to the US.</p>
    #   @return [String]
    # @!attribute phone_number_type
    #   <p>The phone number type used to filter results. Required for non-US numbers.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results.</p>
    #   @return [String]
    class SearchAvailablePhoneNumbersRequest < Struct.new(
      :area_code,
      :city,
      :country,
      :state,
      :toll_free_prefix,
      :phone_number_type,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of search results.</p>
    #   @return [String]
    class SearchAvailablePhoneNumbersResponse < Struct.new(
      :e164_phone_numbers,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The service encountered an unexpected error.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ServiceFailureException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The service is currently unavailable.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An Active Directory (AD) group whose members are granted permission to act as delegates.</p>
    # @!attribute group_name
    #   <p>The group name.</p>
    #   @return [String]
    class SigninDelegateGroup < Struct.new(
      :group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Settings that allow management of telephony permissions for an Amazon Chime user, such as
    #             inbound and outbound calling and text messaging.</p>
    # @!attribute inbound_calling
    #   <p>Allows or denies inbound calling.</p>
    #   @return [Boolean]
    # @!attribute outbound_calling
    #   <p>Allows or denies outbound calling.</p>
    #   @return [Boolean]
    # @!attribute sms
    #   <p>Allows or denies SMS messaging.</p>
    #   @return [Boolean]
    class TelephonySettings < Struct.new(
      :inbound_calling,
      :outbound_calling,
      :sms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The client exceeded its request rate limit.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ThrottledClientException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The client is not currently authorized to make the request.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class UnauthorizedClientException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was well-formed but was unable to be followed due to semantic errors.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class UnprocessableEntityException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name for the specified Amazon Chime account.</p>
    #   @return [String]
    # @!attribute default_license
    #   <p>The default license applied when you add users to an Amazon Chime account.</p>
    #   @return [String]
    class UpdateAccountRequest < Struct.new(
      :account_id,
      :name,
      :default_license,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account
    #   <p>The updated Amazon Chime account details.</p>
    #   @return [Types::Account]
    class UpdateAccountResponse < Struct.new(
      :account,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute account_settings
    #   <p>The Amazon Chime account settings to update.</p>
    #   @return [Types::AccountSettings]
    class UpdateAccountSettingsRequest < Struct.new(
      :account_id,
      :account_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateAccountSettingsResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #   @return [String]
    # @!attribute disabled
    #   <p>When true, stops the specified bot from running in your account.</p>
    #   @return [Boolean]
    class UpdateBotRequest < Struct.new(
      :account_id,
      :bot_id,
      :disabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bot
    #   <p>The updated bot details.</p>
    #   @return [Types::Bot]
    class UpdateBotResponse < Struct.new(
      :bot,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute business_calling
    #   <p>The Amazon Chime Business Calling settings.</p>
    #   @return [Types::BusinessCallingSettings]
    # @!attribute voice_connector
    #   <p>The Amazon Chime Voice Connector settings.</p>
    #   @return [Types::VoiceConnectorSettings]
    class UpdateGlobalSettingsRequest < Struct.new(
      :business_calling,
      :voice_connector,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>The phone number ID.</p>
    #   @return [String]
    # @!attribute product_type
    #   <p>The product type.</p>
    #   @return [String]
    # @!attribute calling_name
    #   <p>The outbound calling name associated with the phone number.</p>
    #   @return [String]
    class UpdatePhoneNumberRequest < Struct.new(
      :phone_number_id,
      :product_type,
      :calling_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The phone number ID, product type, or calling name fields to update, used with the 
    # <a>BatchUpdatePhoneNumber</a> and <a>UpdatePhoneNumber</a> actions.</p>
    # @!attribute phone_number_id
    #   <p>The phone number ID to update.</p>
    #   @return [String]
    # @!attribute product_type
    #   <p>The product type to update.</p>
    #   @return [String]
    # @!attribute calling_name
    #   <p>The outbound calling name to update.</p>
    #   @return [String]
    class UpdatePhoneNumberRequestItem < Struct.new(
      :phone_number_id,
      :product_type,
      :calling_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute phone_number
    #   <p>The updated phone number details.</p>
    #   @return [Types::PhoneNumber]
    class UpdatePhoneNumberResponse < Struct.new(
      :phone_number,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute calling_name
    #   <p>The default outbound calling name for the account.</p>
    #   @return [String]
    class UpdatePhoneNumberSettingsRequest < Struct.new(
      :calling_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute room_id
    #   <p>The room ID.</p>
    #   @return [String]
    # @!attribute member_id
    #   <p>The member ID.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The role of the member.</p>
    #   @return [String]
    class UpdateRoomMembershipRequest < Struct.new(
      :account_id,
      :room_id,
      :member_id,
      :role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute room_membership
    #   <p>The room membership details.</p>
    #   @return [Types::RoomMembership]
    class UpdateRoomMembershipResponse < Struct.new(
      :room_membership,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute room_id
    #   <p>The room ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The room name.</p>
    #   @return [String]
    class UpdateRoomRequest < Struct.new(
      :account_id,
      :room_id,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute room
    #   <p>The room details.</p>
    #   @return [Types::Room]
    class UpdateRoomResponse < Struct.new(
      :room,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID.</p>
    #   @return [String]
    # @!attribute license_type
    #   <p>The user license type to update. This must be a supported license type for the Amazon Chime
    #               account that the user belongs to.</p>
    #   @return [String]
    # @!attribute user_type
    #   <p>The user type.</p>
    #   @return [String]
    # @!attribute alexa_for_business_metadata
    #   <p>The Alexa for Business metadata.</p>
    #   @return [Types::AlexaForBusinessMetadata]
    class UpdateUserRequest < Struct.new(
      :account_id,
      :user_id,
      :license_type,
      :user_type,
      :alexa_for_business_metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The user ID and user fields to update, used with the 
    # <a>BatchUpdateUser</a> action.</p>
    # @!attribute user_id
    #   <p>The user ID.</p>
    #   @return [String]
    # @!attribute license_type
    #   <p>The user license type.</p>
    #   @return [String]
    # @!attribute user_type
    #   <p>The user type.</p>
    #   @return [String]
    # @!attribute alexa_for_business_metadata
    #   <p>The Alexa for Business metadata.</p>
    #   @return [Types::AlexaForBusinessMetadata]
    class UpdateUserRequestItem < Struct.new(
      :user_id,
      :license_type,
      :user_type,
      :alexa_for_business_metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user
    #   <p>The updated user details.</p>
    #   @return [Types::User]
    class UpdateUserResponse < Struct.new(
      :user,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID.</p>
    #   @return [String]
    # @!attribute user_settings
    #   <p>The user settings to update.</p>
    #   @return [Types::UserSettings]
    class UpdateUserSettingsRequest < Struct.new(
      :account_id,
      :user_id,
      :user_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The user on the Amazon Chime account.</p>
    # @!attribute user_id
    #   <p>The user ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #   @return [String]
    # @!attribute primary_email
    #   <p>The primary email address of the user.</p>
    #   @return [String]
    # @!attribute primary_provisioned_number
    #   <p>The primary phone number associated with the user.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the user.</p>
    #   @return [String]
    # @!attribute license_type
    #   <p>The license type for the user.</p>
    #   @return [String]
    # @!attribute user_type
    #   <p>The user type.</p>
    #   @return [String]
    # @!attribute user_registration_status
    #   <p>The user registration status.</p>
    #   @return [String]
    # @!attribute user_invitation_status
    #   <p>The user invite status.</p>
    #   @return [String]
    # @!attribute registered_on
    #   <p>Date and time when the user is registered, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute invited_on
    #   <p>Date and time when the user is invited to the Amazon Chime account, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute alexa_for_business_metadata
    #   <p>The Alexa for Business metadata.</p>
    #   @return [Types::AlexaForBusinessMetadata]
    # @!attribute personal_pin
    #   <p>The user's personal meeting PIN.</p>
    #   @return [String]
    class User < Struct.new(
      :user_id,
      :account_id,
      :primary_email,
      :primary_provisioned_number,
      :display_name,
      :license_type,
      :user_type,
      :user_registration_status,
      :user_invitation_status,
      :registered_on,
      :invited_on,
      :alexa_for_business_metadata,
      :personal_pin,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The list of errors returned when errors are encountered during the <a>BatchSuspendUser</a>, <a>BatchUnsuspendUser</a>, or 
    #     <a>BatchUpdateUser</a> actions. This includes user IDs, error codes, and error messages.</p>
    # @!attribute user_id
    #   <p>The user ID for which the action failed.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    class UserError < Struct.new(
      :user_id,
      :error_code,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Settings associated with an Amazon Chime user, including inbound and outbound calling and text
    #             messaging.</p>
    # @!attribute telephony
    #   <p>The telephony settings associated with the user.</p>
    #   @return [Types::TelephonySettings]
    class UserSettings < Struct.new(
      :telephony,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module UserType
      PrivateUser = 'PrivateUser'
      SharedDevice = 'SharedDevice'
    end

    # <p>The Amazon Chime Voice Connector settings. Includes any Amazon S3 buckets designated for
    #             storing call detail records.</p>
    # @!attribute cdr_bucket
    #   <p>The Amazon S3 bucket designated for call detail record storage.</p>
    #   @return [String]
    class VoiceConnectorSettings < Struct.new(
      :cdr_bucket,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
