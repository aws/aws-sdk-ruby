# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Chime
  module Types

    # You don't have permissions to perform the requested operation.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Chime account details. An AWS account can have multiple
    # Amazon Chime accounts.
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The Amazon Chime account name.
    #   @return [String]
    #
    # @!attribute [rw] account_type
    #   The Amazon Chime account type. For more information about different
    #   account types, see [Managing Your Amazon Chime Accounts][1] in the
    #   *Amazon Chime Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The Amazon Chime account creation timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] default_license
    #   The default license for the Amazon Chime account.
    #   @return [String]
    #
    # @!attribute [rw] supported_licenses
    #   Supported licenses for the Amazon Chime account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] signin_delegate_groups
    #   The sign-in delegate groups associated with the account.
    #   @return [Array<Types::SigninDelegateGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Account AWS API Documentation
    #
    class Account < Struct.new(
      :aws_account_id,
      :account_id,
      :name,
      :account_type,
      :created_timestamp,
      :default_license,
      :supported_licenses,
      :signin_delegate_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings related to the Amazon Chime account. This includes settings
    # that start or stop remote control of shared screens, or start or stop
    # the dial-out option in the Amazon Chime web application. For more
    # information about these settings, see [Use the Policies Page][1] in
    # the *Amazon Chime Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/policies.html
    #
    # @note When making an API call, you may pass AccountSettings
    #   data as a hash:
    #
    #       {
    #         disable_remote_control: false,
    #         enable_dial_out: false,
    #       }
    #
    # @!attribute [rw] disable_remote_control
    #   Setting that stops or starts remote control of shared screens during
    #   meetings.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_dial_out
    #   Setting that allows meeting participants to choose the **Call me at
    #   a phone number** option. For more information, see [Join a Meeting
    #   without the Amazon Chime App][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chime/latest/ug/chime-join-meeting.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AccountSettings AWS API Documentation
    #
    class AccountSettings < Struct.new(
      :disable_remote_control,
      :enable_dial_out)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Alexa for Business metadata associated with an Amazon Chime user,
    # used to integrate Alexa for Business with a device.
    #
    # @note When making an API call, you may pass AlexaForBusinessMetadata
    #   data as a hash:
    #
    #       {
    #         is_alexa_for_business_enabled: false,
    #         alexa_for_business_room_arn: "SensitiveString",
    #       }
    #
    # @!attribute [rw] is_alexa_for_business_enabled
    #   Starts or stops Alexa for Business.
    #   @return [Boolean]
    #
    # @!attribute [rw] alexa_for_business_room_arn
    #   The ARN of the room resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AlexaForBusinessMetadata AWS API Documentation
    #
    class AlexaForBusinessMetadata < Struct.new(
      :is_alexa_for_business_enabled,
      :alexa_for_business_room_arn)
      SENSITIVE = [:alexa_for_business_room_arn]
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociatePhoneNumberWithUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "String", # required
    #         user_id: "String", # required
    #         e164_phone_number: "E164PhoneNumber", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_number
    #   The phone number, in E.164 format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociatePhoneNumberWithUserRequest AWS API Documentation
    #
    class AssociatePhoneNumberWithUserRequest < Struct.new(
      :account_id,
      :user_id,
      :e164_phone_number)
      SENSITIVE = [:e164_phone_number]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociatePhoneNumberWithUserResponse AWS API Documentation
    #
    class AssociatePhoneNumberWithUserResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociatePhoneNumbersWithVoiceConnectorGroupRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_group_id: "NonEmptyString", # required
    #         e164_phone_numbers: ["E164PhoneNumber"], # required
    #         force_associate: false,
    #       }
    #
    # @!attribute [rw] voice_connector_group_id
    #   The Amazon Chime Voice Connector group ID.
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #   @return [Array<String>]
    #
    # @!attribute [rw] force_associate
    #   If true, associates the provided phone numbers with the provided
    #   Amazon Chime Voice Connector Group and removes any previously
    #   existing associations. If false, does not associate any phone
    #   numbers that have previously existing associations.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociatePhoneNumbersWithVoiceConnectorGroupRequest AWS API Documentation
    #
    class AssociatePhoneNumbersWithVoiceConnectorGroupRequest < Struct.new(
      :voice_connector_group_id,
      :e164_phone_numbers,
      :force_associate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_errors
    #   If the action fails for one or more of the phone numbers in the
    #   request, a list of the phone numbers is returned, along with error
    #   codes and error messages.
    #   @return [Array<Types::PhoneNumberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociatePhoneNumbersWithVoiceConnectorGroupResponse AWS API Documentation
    #
    class AssociatePhoneNumbersWithVoiceConnectorGroupResponse < Struct.new(
      :phone_number_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociatePhoneNumbersWithVoiceConnectorRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         e164_phone_numbers: ["E164PhoneNumber"], # required
    #         force_associate: false,
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #   @return [Array<String>]
    #
    # @!attribute [rw] force_associate
    #   If true, associates the provided phone numbers with the provided
    #   Amazon Chime Voice Connector and removes any previously existing
    #   associations. If false, does not associate any phone numbers that
    #   have previously existing associations.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociatePhoneNumbersWithVoiceConnectorRequest AWS API Documentation
    #
    class AssociatePhoneNumbersWithVoiceConnectorRequest < Struct.new(
      :voice_connector_id,
      :e164_phone_numbers,
      :force_associate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_errors
    #   If the action fails for one or more of the phone numbers in the
    #   request, a list of the phone numbers is returned, along with error
    #   codes and error messages.
    #   @return [Array<Types::PhoneNumberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociatePhoneNumbersWithVoiceConnectorResponse AWS API Documentation
    #
    class AssociatePhoneNumbersWithVoiceConnectorResponse < Struct.new(
      :phone_number_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateSigninDelegateGroupsWithAccountRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         signin_delegate_groups: [ # required
    #           {
    #             group_name: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] signin_delegate_groups
    #   The sign-in delegate groups.
    #   @return [Array<Types::SigninDelegateGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociateSigninDelegateGroupsWithAccountRequest AWS API Documentation
    #
    class AssociateSigninDelegateGroupsWithAccountRequest < Struct.new(
      :account_id,
      :signin_delegate_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociateSigninDelegateGroupsWithAccountResponse AWS API Documentation
    #
    class AssociateSigninDelegateGroupsWithAccountResponse < Aws::EmptyStructure; end

    # An Amazon Chime SDK meeting attendee. Includes a unique `AttendeeId`
    # and `JoinToken`. The `JoinToken` allows a client to authenticate and
    # join as the specified attendee. The `JoinToken` expires when the
    # meeting ends or when DeleteAttendee is called. After that, the
    # attendee is unable to join the meeting.
    #
    # We recommend securely transferring each `JoinToken` from your server
    # application to the client so that no other client has access to the
    # token except for the one authorized to represent the attendee.
    #
    # @!attribute [rw] external_user_id
    #   The Amazon Chime SDK external user ID. Links the attendee to an
    #   identity managed by a builder application.
    #   @return [String]
    #
    # @!attribute [rw] attendee_id
    #   The Amazon Chime SDK attendee ID.
    #   @return [String]
    #
    # @!attribute [rw] join_token
    #   The join token used by the Amazon Chime SDK attendee.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Attendee AWS API Documentation
    #
    class Attendee < Struct.new(
      :external_user_id,
      :attendee_id,
      :join_token)
      SENSITIVE = [:external_user_id, :join_token]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchCreateAttendeeRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         attendees: [ # required
    #           {
    #             external_user_id: "ExternalUserIdType", # required
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] attendees
    #   The request containing the attendees to create.
    #   @return [Array<Types::CreateAttendeeRequestItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchCreateAttendeeRequest AWS API Documentation
    #
    class BatchCreateAttendeeRequest < Struct.new(
      :meeting_id,
      :attendees)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attendees
    #   The attendee information, including attendees IDs and join tokens.
    #   @return [Array<Types::Attendee>]
    #
    # @!attribute [rw] errors
    #   If the action fails for one or more of the attendees in the request,
    #   a list of the attendees is returned, along with error codes and
    #   error messages.
    #   @return [Array<Types::CreateAttendeeError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchCreateAttendeeResponse AWS API Documentation
    #
    class BatchCreateAttendeeResponse < Struct.new(
      :attendees,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchCreateRoomMembershipRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         room_id: "NonEmptyString", # required
    #         membership_item_list: [ # required
    #           {
    #             member_id: "NonEmptyString",
    #             role: "Administrator", # accepts Administrator, Member
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] room_id
    #   The room ID.
    #   @return [String]
    #
    # @!attribute [rw] membership_item_list
    #   The list of membership items.
    #   @return [Array<Types::MembershipItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchCreateRoomMembershipRequest AWS API Documentation
    #
    class BatchCreateRoomMembershipRequest < Struct.new(
      :account_id,
      :room_id,
      :membership_item_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   If the action fails for one or more of the member IDs in the
    #   request, a list of the member IDs is returned, along with error
    #   codes and error messages.
    #   @return [Array<Types::MemberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchCreateRoomMembershipResponse AWS API Documentation
    #
    class BatchCreateRoomMembershipResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeletePhoneNumberRequest
    #   data as a hash:
    #
    #       {
    #         phone_number_ids: ["String"], # required
    #       }
    #
    # @!attribute [rw] phone_number_ids
    #   List of phone number IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchDeletePhoneNumberRequest AWS API Documentation
    #
    class BatchDeletePhoneNumberRequest < Struct.new(
      :phone_number_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_errors
    #   If the action fails for one or more of the phone numbers in the
    #   request, a list of the phone numbers is returned, along with error
    #   codes and error messages.
    #   @return [Array<Types::PhoneNumberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchDeletePhoneNumberResponse AWS API Documentation
    #
    class BatchDeletePhoneNumberResponse < Struct.new(
      :phone_number_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchSuspendUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_id_list: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id_list
    #   The request containing the user IDs to suspend.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchSuspendUserRequest AWS API Documentation
    #
    class BatchSuspendUserRequest < Struct.new(
      :account_id,
      :user_id_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_errors
    #   If the BatchSuspendUser action fails for one or more of the user IDs
    #   in the request, a list of the user IDs is returned, along with error
    #   codes and error messages.
    #   @return [Array<Types::UserError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchSuspendUserResponse AWS API Documentation
    #
    class BatchSuspendUserResponse < Struct.new(
      :user_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchUnsuspendUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_id_list: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id_list
    #   The request containing the user IDs to unsuspend.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUnsuspendUserRequest AWS API Documentation
    #
    class BatchUnsuspendUserRequest < Struct.new(
      :account_id,
      :user_id_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_errors
    #   If the BatchUnsuspendUser action fails for one or more of the user
    #   IDs in the request, a list of the user IDs is returned, along with
    #   error codes and error messages.
    #   @return [Array<Types::UserError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUnsuspendUserResponse AWS API Documentation
    #
    class BatchUnsuspendUserResponse < Struct.new(
      :user_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchUpdatePhoneNumberRequest
    #   data as a hash:
    #
    #       {
    #         update_phone_number_request_items: [ # required
    #           {
    #             phone_number_id: "NonEmptyString", # required
    #             product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector
    #             calling_name: "CallingName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] update_phone_number_request_items
    #   The request containing the phone number IDs and product types or
    #   calling names to update.
    #   @return [Array<Types::UpdatePhoneNumberRequestItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUpdatePhoneNumberRequest AWS API Documentation
    #
    class BatchUpdatePhoneNumberRequest < Struct.new(
      :update_phone_number_request_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_errors
    #   If the action fails for one or more of the phone numbers in the
    #   request, a list of the phone numbers is returned, along with error
    #   codes and error messages.
    #   @return [Array<Types::PhoneNumberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUpdatePhoneNumberResponse AWS API Documentation
    #
    class BatchUpdatePhoneNumberResponse < Struct.new(
      :phone_number_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchUpdateUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         update_user_request_items: [ # required
    #           {
    #             user_id: "NonEmptyString", # required
    #             license_type: "Basic", # accepts Basic, Plus, Pro, ProTrial
    #             user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #             alexa_for_business_metadata: {
    #               is_alexa_for_business_enabled: false,
    #               alexa_for_business_room_arn: "SensitiveString",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] update_user_request_items
    #   The request containing the user IDs and details to update.
    #   @return [Array<Types::UpdateUserRequestItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUpdateUserRequest AWS API Documentation
    #
    class BatchUpdateUserRequest < Struct.new(
      :account_id,
      :update_user_request_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_errors
    #   If the BatchUpdateUser action fails for one or more of the user IDs
    #   in the request, a list of the user IDs is returned, along with error
    #   codes and error messages.
    #   @return [Array<Types::UserError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUpdateUserResponse AWS API Documentation
    #
    class BatchUpdateUserResponse < Struct.new(
      :user_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that allows Enterprise account administrators to configure
    # an interface to receive events from Amazon Chime.
    #
    # @!attribute [rw] bot_id
    #   The bot ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The unique ID for the bot user.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The bot display name.
    #   @return [String]
    #
    # @!attribute [rw] bot_type
    #   The bot type.
    #   @return [String]
    #
    # @!attribute [rw] disabled
    #   When true, the bot is stopped from running in your account.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_timestamp
    #   The bot creation timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The updated bot timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] bot_email
    #   The bot email address.
    #   @return [String]
    #
    # @!attribute [rw] security_token
    #   The security token used to authenticate Amazon Chime with the
    #   outgoing event endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Bot AWS API Documentation
    #
    class Bot < Struct.new(
      :bot_id,
      :user_id,
      :display_name,
      :bot_type,
      :disabled,
      :created_timestamp,
      :updated_timestamp,
      :bot_email,
      :security_token)
      SENSITIVE = [:display_name, :bot_email, :security_token]
      include Aws::Structure
    end

    # The Amazon Chime Business Calling settings for the administrator's
    # AWS account. Includes any Amazon S3 buckets designated for storing
    # call detail records.
    #
    # @note When making an API call, you may pass BusinessCallingSettings
    #   data as a hash:
    #
    #       {
    #         cdr_bucket: "String",
    #       }
    #
    # @!attribute [rw] cdr_bucket
    #   The Amazon S3 bucket designated for call detail record storage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BusinessCallingSettings AWS API Documentation
    #
    class BusinessCallingSettings < Struct.new(
      :cdr_bucket)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The retention settings that determine how long to retain chat
    # conversation messages for an Amazon Chime Enterprise account.
    #
    # @note When making an API call, you may pass ConversationRetentionSettings
    #   data as a hash:
    #
    #       {
    #         retention_days: 1,
    #       }
    #
    # @!attribute [rw] retention_days
    #   The number of days for which to retain chat conversation messages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ConversationRetentionSettings AWS API Documentation
    #
    class ConversationRetentionSettings < Struct.new(
      :retention_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAccountRequest
    #   data as a hash:
    #
    #       {
    #         name: "AccountName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Amazon Chime account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAccountRequest AWS API Documentation
    #
    class CreateAccountRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account
    #   The Amazon Chime account details.
    #   @return [Types::Account]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAccountResponse AWS API Documentation
    #
    class CreateAccountResponse < Struct.new(
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of errors returned when errors are encountered during the
    # BatchCreateAttendee and CreateAttendee actions. This includes external
    # user IDs, error codes, and error messages.
    #
    # @!attribute [rw] external_user_id
    #   The Amazon Chime SDK external user ID. Links the attendee to an
    #   identity managed by a builder application.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAttendeeError AWS API Documentation
    #
    class CreateAttendeeError < Struct.new(
      :external_user_id,
      :error_code,
      :error_message)
      SENSITIVE = [:external_user_id]
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAttendeeRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         external_user_id: "ExternalUserIdType", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] external_user_id
    #   The Amazon Chime SDK external user ID. Links the attendee to an
    #   identity managed by a builder application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAttendeeRequest AWS API Documentation
    #
    class CreateAttendeeRequest < Struct.new(
      :meeting_id,
      :external_user_id,
      :tags)
      SENSITIVE = [:external_user_id]
      include Aws::Structure
    end

    # The Amazon Chime SDK attendee fields to create, used with the
    # BatchCreateAttendee action.
    #
    # @note When making an API call, you may pass CreateAttendeeRequestItem
    #   data as a hash:
    #
    #       {
    #         external_user_id: "ExternalUserIdType", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] external_user_id
    #   The Amazon Chime SDK external user ID. Links the attendee to an
    #   identity managed by a builder application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAttendeeRequestItem AWS API Documentation
    #
    class CreateAttendeeRequestItem < Struct.new(
      :external_user_id,
      :tags)
      SENSITIVE = [:external_user_id]
      include Aws::Structure
    end

    # @!attribute [rw] attendee
    #   The attendee information, including attendee ID and join token.
    #   @return [Types::Attendee]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAttendeeResponse AWS API Documentation
    #
    class CreateAttendeeResponse < Struct.new(
      :attendee)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateBotRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         display_name: "SensitiveString", # required
    #         domain: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The bot display name.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain of the Amazon Chime Enterprise account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateBotRequest AWS API Documentation
    #
    class CreateBotRequest < Struct.new(
      :account_id,
      :display_name,
      :domain)
      SENSITIVE = [:display_name]
      include Aws::Structure
    end

    # @!attribute [rw] bot
    #   The bot details.
    #   @return [Types::Bot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateBotResponse AWS API Documentation
    #
    class CreateBotResponse < Struct.new(
      :bot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMeetingRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken", # required
    #         external_meeting_id: "ExternalMeetingIdType",
    #         meeting_host_id: "ExternalUserIdType",
    #         media_region: "String",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         notifications_configuration: {
    #           sns_topic_arn: "Arn",
    #           sqs_queue_arn: "Arn",
    #         },
    #       }
    #
    # @!attribute [rw] client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different meetings.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] external_meeting_id
    #   The external meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] meeting_host_id
    #   Reserved.
    #   @return [String]
    #
    # @!attribute [rw] media_region
    #   The Region in which to create the meeting. Default: `us-east-1`.
    #
    #   Available values: `af-south-1`, `ap-northeast-1`, `ap-northeast-2`,
    #   `ap-south-1`, `ap-southeast-1`, `ap-southeast-2`, `ca-central-1`,
    #   `eu-central-1`, `eu-north-1`, `eu-south-1`, `eu-west-1`,
    #   `eu-west-2`, `eu-west-3`, `sa-east-1`, `us-east-1`, `us-east-2`,
    #   `us-west-1`, `us-west-2`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] notifications_configuration
    #   The configuration for resource targets to receive notifications when
    #   meeting and attendee events occur.
    #   @return [Types::MeetingNotificationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateMeetingRequest AWS API Documentation
    #
    class CreateMeetingRequest < Struct.new(
      :client_request_token,
      :external_meeting_id,
      :meeting_host_id,
      :media_region,
      :tags,
      :notifications_configuration)
      SENSITIVE = [:client_request_token, :external_meeting_id, :meeting_host_id]
      include Aws::Structure
    end

    # @!attribute [rw] meeting
    #   The meeting information, including the meeting ID and
    #   `MediaPlacement`.
    #   @return [Types::Meeting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateMeetingResponse AWS API Documentation
    #
    class CreateMeetingResponse < Struct.new(
      :meeting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMeetingWithAttendeesRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken", # required
    #         external_meeting_id: "ExternalMeetingIdType",
    #         meeting_host_id: "ExternalUserIdType",
    #         media_region: "String",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         notifications_configuration: {
    #           sns_topic_arn: "Arn",
    #           sqs_queue_arn: "Arn",
    #         },
    #         attendees: [
    #           {
    #             external_user_id: "ExternalUserIdType", # required
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different meetings.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] external_meeting_id
    #   The external meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] meeting_host_id
    #   Reserved.
    #   @return [String]
    #
    # @!attribute [rw] media_region
    #   The Region in which to create the meeting. Default: `us-east-1`.
    #
    #   Available values: `af-south-1`, `ap-northeast-1`, `ap-northeast-2`,
    #   `ap-south-1`, `ap-southeast-1`, `ap-southeast-2`, `ca-central-1`,
    #   `eu-central-1`, `eu-north-1`, `eu-south-1`, `eu-west-1`,
    #   `eu-west-2`, `eu-west-3`, `sa-east-1`, `us-east-1`, `us-east-2`,
    #   `us-west-1`, `us-west-2`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] notifications_configuration
    #   The configuration for resource targets to receive notifications when
    #   Amazon Chime SDK meeting and attendee events occur. The Amazon Chime
    #   SDK supports resource targets located in the US East (N. Virginia)
    #   AWS Region (`us-east-1`).
    #   @return [Types::MeetingNotificationConfiguration]
    #
    # @!attribute [rw] attendees
    #   The request containing the attendees to create.
    #   @return [Array<Types::CreateAttendeeRequestItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateMeetingWithAttendeesRequest AWS API Documentation
    #
    class CreateMeetingWithAttendeesRequest < Struct.new(
      :client_request_token,
      :external_meeting_id,
      :meeting_host_id,
      :media_region,
      :tags,
      :notifications_configuration,
      :attendees)
      SENSITIVE = [:client_request_token, :external_meeting_id, :meeting_host_id]
      include Aws::Structure
    end

    # @!attribute [rw] meeting
    #   A meeting created using the Amazon Chime SDK.
    #   @return [Types::Meeting]
    #
    # @!attribute [rw] attendees
    #   The attendee information, including attendees IDs and join tokens.
    #   @return [Array<Types::Attendee>]
    #
    # @!attribute [rw] errors
    #   If the action fails for one or more of the attendees in the request,
    #   a list of the attendees is returned, along with error codes and
    #   error messages.
    #   @return [Array<Types::CreateAttendeeError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateMeetingWithAttendeesResponse AWS API Documentation
    #
    class CreateMeetingWithAttendeesResponse < Struct.new(
      :meeting,
      :attendees,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePhoneNumberOrderRequest
    #   data as a hash:
    #
    #       {
    #         product_type: "BusinessCalling", # required, accepts BusinessCalling, VoiceConnector
    #         e164_phone_numbers: ["E164PhoneNumber"], # required
    #       }
    #
    # @!attribute [rw] product_type
    #   The phone number product type.
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreatePhoneNumberOrderRequest AWS API Documentation
    #
    class CreatePhoneNumberOrderRequest < Struct.new(
      :product_type,
      :e164_phone_numbers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_order
    #   The phone number order details.
    #   @return [Types::PhoneNumberOrder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreatePhoneNumberOrderResponse AWS API Documentation
    #
    class CreatePhoneNumberOrderResponse < Struct.new(
      :phone_number_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProxySessionRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString128", # required
    #         participant_phone_numbers: ["E164PhoneNumber"], # required
    #         name: "ProxySessionNameString",
    #         expiry_minutes: 1,
    #         capabilities: ["Voice"], # required, accepts Voice, SMS
    #         number_selection_behavior: "PreferSticky", # accepts PreferSticky, AvoidSticky
    #         geo_match_level: "Country", # accepts Country, AreaCode
    #         geo_match_params: {
    #           country: "Country", # required
    #           area_code: "AreaCode", # required
    #         },
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime voice connector ID.
    #   @return [String]
    #
    # @!attribute [rw] participant_phone_numbers
    #   The participant phone numbers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the proxy session.
    #   @return [String]
    #
    # @!attribute [rw] expiry_minutes
    #   The number of minutes allowed for the proxy session.
    #   @return [Integer]
    #
    # @!attribute [rw] capabilities
    #   The proxy session capabilities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] number_selection_behavior
    #   The preference for proxy phone number reuse, or stickiness, between
    #   the same participants across sessions.
    #   @return [String]
    #
    # @!attribute [rw] geo_match_level
    #   The preference for matching the country or area code of the proxy
    #   phone number with that of the first participant.
    #   @return [String]
    #
    # @!attribute [rw] geo_match_params
    #   The country and area code for the proxy phone number.
    #   @return [Types::GeoMatchParams]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateProxySessionRequest AWS API Documentation
    #
    class CreateProxySessionRequest < Struct.new(
      :voice_connector_id,
      :participant_phone_numbers,
      :name,
      :expiry_minutes,
      :capabilities,
      :number_selection_behavior,
      :geo_match_level,
      :geo_match_params)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] proxy_session
    #   The proxy session details.
    #   @return [Types::ProxySession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateProxySessionResponse AWS API Documentation
    #
    class CreateProxySessionResponse < Struct.new(
      :proxy_session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRoomMembershipRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         room_id: "NonEmptyString", # required
    #         member_id: "NonEmptyString", # required
    #         role: "Administrator", # accepts Administrator, Member
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] room_id
    #   The room ID.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The Amazon Chime member ID (user ID or bot ID).
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The role of the member.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateRoomMembershipRequest AWS API Documentation
    #
    class CreateRoomMembershipRequest < Struct.new(
      :account_id,
      :room_id,
      :member_id,
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] room_membership
    #   The room membership details.
    #   @return [Types::RoomMembership]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateRoomMembershipResponse AWS API Documentation
    #
    class CreateRoomMembershipResponse < Struct.new(
      :room_membership)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRoomRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         name: "SensitiveString", # required
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The room name.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The idempotency token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateRoomRequest AWS API Documentation
    #
    class CreateRoomRequest < Struct.new(
      :account_id,
      :name,
      :client_request_token)
      SENSITIVE = [:name, :client_request_token]
      include Aws::Structure
    end

    # @!attribute [rw] room
    #   The room details.
    #   @return [Types::Room]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateRoomResponse AWS API Documentation
    #
    class CreateRoomResponse < Struct.new(
      :room)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         username: "String",
    #         email: "EmailAddress",
    #         user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The user's email address.
    #   @return [String]
    #
    # @!attribute [rw] user_type
    #   The user type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :account_id,
      :username,
      :email,
      :user_type)
      SENSITIVE = [:email]
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The user on the Amazon Chime account.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Struct.new(
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVoiceConnectorGroupRequest
    #   data as a hash:
    #
    #       {
    #         name: "VoiceConnectorGroupName", # required
    #         voice_connector_items: [
    #           {
    #             voice_connector_id: "NonEmptyString", # required
    #             priority: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Amazon Chime Voice Connector group.
    #   @return [String]
    #
    # @!attribute [rw] voice_connector_items
    #   The Amazon Chime Voice Connectors to route inbound calls to.
    #   @return [Array<Types::VoiceConnectorItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateVoiceConnectorGroupRequest AWS API Documentation
    #
    class CreateVoiceConnectorGroupRequest < Struct.new(
      :name,
      :voice_connector_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_group
    #   The Amazon Chime Voice Connector group details.
    #   @return [Types::VoiceConnectorGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateVoiceConnectorGroupResponse AWS API Documentation
    #
    class CreateVoiceConnectorGroupResponse < Struct.new(
      :voice_connector_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVoiceConnectorRequest
    #   data as a hash:
    #
    #       {
    #         name: "VoiceConnectorName", # required
    #         aws_region: "us-east-1", # accepts us-east-1, us-west-2
    #         require_encryption: false, # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Amazon Chime Voice Connector.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region in which the Amazon Chime Voice Connector is created.
    #   Default value: `us-east-1`.
    #   @return [String]
    #
    # @!attribute [rw] require_encryption
    #   When enabled, requires encryption for the Amazon Chime Voice
    #   Connector.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateVoiceConnectorRequest AWS API Documentation
    #
    class CreateVoiceConnectorRequest < Struct.new(
      :name,
      :aws_region,
      :require_encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector
    #   The Amazon Chime Voice Connector details.
    #   @return [Types::VoiceConnector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateVoiceConnectorResponse AWS API Documentation
    #
    class CreateVoiceConnectorResponse < Struct.new(
      :voice_connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SIP credentials used to authenticate requests to your Amazon Chime
    # Voice Connector.
    #
    # @note When making an API call, you may pass Credential
    #   data as a hash:
    #
    #       {
    #         username: "SensitiveString",
    #         password: "SensitiveString",
    #       }
    #
    # @!attribute [rw] username
    #   The RFC2617 compliant user name associated with the SIP credentials,
    #   in US-ASCII format.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The RFC2617 compliant password associated with the SIP credentials,
    #   in US-ASCII format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Credential AWS API Documentation
    #
    class Credential < Struct.new(
      :username,
      :password)
      SENSITIVE = [:username, :password]
      include Aws::Structure
    end

    # The Dialed Number Identification Service (DNIS) emergency calling
    # configuration details associated with an Amazon Chime Voice
    # Connector's emergency calling configuration.
    #
    # @note When making an API call, you may pass DNISEmergencyCallingConfiguration
    #   data as a hash:
    #
    #       {
    #         emergency_phone_number: "E164PhoneNumber", # required
    #         test_phone_number: "E164PhoneNumber",
    #         calling_country: "Alpha2CountryCode", # required
    #       }
    #
    # @!attribute [rw] emergency_phone_number
    #   The DNIS phone number to route emergency calls to, in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] test_phone_number
    #   The DNIS phone number to route test emergency calls to, in E.164
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] calling_country
    #   The country from which emergency calls are allowed, in ISO 3166-1
    #   alpha-2 format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DNISEmergencyCallingConfiguration AWS API Documentation
    #
    class DNISEmergencyCallingConfiguration < Struct.new(
      :emergency_phone_number,
      :test_phone_number,
      :calling_country)
      SENSITIVE = [:emergency_phone_number, :test_phone_number]
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAccountRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAccountRequest AWS API Documentation
    #
    class DeleteAccountRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAccountResponse AWS API Documentation
    #
    class DeleteAccountResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteAttendeeRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         attendee_id: "GuidString", # required
    #       }
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] attendee_id
    #   The Amazon Chime SDK attendee ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAttendeeRequest AWS API Documentation
    #
    class DeleteAttendeeRequest < Struct.new(
      :meeting_id,
      :attendee_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEventsConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         bot_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The bot ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteEventsConfigurationRequest AWS API Documentation
    #
    class DeleteEventsConfigurationRequest < Struct.new(
      :account_id,
      :bot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMeetingRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #       }
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteMeetingRequest AWS API Documentation
    #
    class DeleteMeetingRequest < Struct.new(
      :meeting_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePhoneNumberRequest
    #   data as a hash:
    #
    #       {
    #         phone_number_id: "String", # required
    #       }
    #
    # @!attribute [rw] phone_number_id
    #   The phone number ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeletePhoneNumberRequest AWS API Documentation
    #
    class DeletePhoneNumberRequest < Struct.new(
      :phone_number_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteProxySessionRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString128", # required
    #         proxy_session_id: "NonEmptyString128", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime voice connector ID.
    #   @return [String]
    #
    # @!attribute [rw] proxy_session_id
    #   The proxy session ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteProxySessionRequest AWS API Documentation
    #
    class DeleteProxySessionRequest < Struct.new(
      :voice_connector_id,
      :proxy_session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRoomMembershipRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         room_id: "NonEmptyString", # required
    #         member_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] room_id
    #   The room ID.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The member ID (user ID or bot ID).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteRoomMembershipRequest AWS API Documentation
    #
    class DeleteRoomMembershipRequest < Struct.new(
      :account_id,
      :room_id,
      :member_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRoomRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         room_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] room_id
    #   The chat room ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteRoomRequest AWS API Documentation
    #
    class DeleteRoomRequest < Struct.new(
      :account_id,
      :room_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVoiceConnectorEmergencyCallingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorEmergencyCallingConfigurationRequest AWS API Documentation
    #
    class DeleteVoiceConnectorEmergencyCallingConfigurationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVoiceConnectorGroupRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_group_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] voice_connector_group_id
    #   The Amazon Chime Voice Connector group ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorGroupRequest AWS API Documentation
    #
    class DeleteVoiceConnectorGroupRequest < Struct.new(
      :voice_connector_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVoiceConnectorOriginationRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorOriginationRequest AWS API Documentation
    #
    class DeleteVoiceConnectorOriginationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVoiceConnectorProxyRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString128", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorProxyRequest AWS API Documentation
    #
    class DeleteVoiceConnectorProxyRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVoiceConnectorRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorRequest AWS API Documentation
    #
    class DeleteVoiceConnectorRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVoiceConnectorStreamingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorStreamingConfigurationRequest AWS API Documentation
    #
    class DeleteVoiceConnectorStreamingConfigurationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVoiceConnectorTerminationCredentialsRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         usernames: ["SensitiveString"], # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] usernames
    #   The RFC2617 compliant username associated with the SIP credentials,
    #   in US-ASCII format.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorTerminationCredentialsRequest AWS API Documentation
    #
    class DeleteVoiceConnectorTerminationCredentialsRequest < Struct.new(
      :voice_connector_id,
      :usernames)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVoiceConnectorTerminationRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorTerminationRequest AWS API Documentation
    #
    class DeleteVoiceConnectorTerminationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociatePhoneNumberFromUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "String", # required
    #         user_id: "String", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociatePhoneNumberFromUserRequest AWS API Documentation
    #
    class DisassociatePhoneNumberFromUserRequest < Struct.new(
      :account_id,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociatePhoneNumberFromUserResponse AWS API Documentation
    #
    class DisassociatePhoneNumberFromUserResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociatePhoneNumbersFromVoiceConnectorGroupRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_group_id: "NonEmptyString", # required
    #         e164_phone_numbers: ["E164PhoneNumber"], # required
    #       }
    #
    # @!attribute [rw] voice_connector_group_id
    #   The Amazon Chime Voice Connector group ID.
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociatePhoneNumbersFromVoiceConnectorGroupRequest AWS API Documentation
    #
    class DisassociatePhoneNumbersFromVoiceConnectorGroupRequest < Struct.new(
      :voice_connector_group_id,
      :e164_phone_numbers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_errors
    #   If the action fails for one or more of the phone numbers in the
    #   request, a list of the phone numbers is returned, along with error
    #   codes and error messages.
    #   @return [Array<Types::PhoneNumberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociatePhoneNumbersFromVoiceConnectorGroupResponse AWS API Documentation
    #
    class DisassociatePhoneNumbersFromVoiceConnectorGroupResponse < Struct.new(
      :phone_number_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociatePhoneNumbersFromVoiceConnectorRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         e164_phone_numbers: ["E164PhoneNumber"], # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociatePhoneNumbersFromVoiceConnectorRequest AWS API Documentation
    #
    class DisassociatePhoneNumbersFromVoiceConnectorRequest < Struct.new(
      :voice_connector_id,
      :e164_phone_numbers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_errors
    #   If the action fails for one or more of the phone numbers in the
    #   request, a list of the phone numbers is returned, along with error
    #   codes and error messages.
    #   @return [Array<Types::PhoneNumberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociatePhoneNumbersFromVoiceConnectorResponse AWS API Documentation
    #
    class DisassociatePhoneNumbersFromVoiceConnectorResponse < Struct.new(
      :phone_number_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateSigninDelegateGroupsFromAccountRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         group_names: ["String"], # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] group_names
    #   The sign-in delegate group names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociateSigninDelegateGroupsFromAccountRequest AWS API Documentation
    #
    class DisassociateSigninDelegateGroupsFromAccountRequest < Struct.new(
      :account_id,
      :group_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociateSigninDelegateGroupsFromAccountResponse AWS API Documentation
    #
    class DisassociateSigninDelegateGroupsFromAccountResponse < Aws::EmptyStructure; end

    # The emergency calling configuration details associated with an Amazon
    # Chime Voice Connector.
    #
    # @note When making an API call, you may pass EmergencyCallingConfiguration
    #   data as a hash:
    #
    #       {
    #         dnis: [
    #           {
    #             emergency_phone_number: "E164PhoneNumber", # required
    #             test_phone_number: "E164PhoneNumber",
    #             calling_country: "Alpha2CountryCode", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dnis
    #   The Dialed Number Identification Service (DNIS) emergency calling
    #   configuration details.
    #   @return [Array<Types::DNISEmergencyCallingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/EmergencyCallingConfiguration AWS API Documentation
    #
    class EmergencyCallingConfiguration < Struct.new(
      :dnis)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that allows a bot to receive outgoing events. Can be
    # either an HTTPS endpoint or a Lambda function ARN.
    #
    # @!attribute [rw] bot_id
    #   The bot ID.
    #   @return [String]
    #
    # @!attribute [rw] outbound_events_https_endpoint
    #   HTTPS endpoint that allows a bot to receive outgoing events.
    #   @return [String]
    #
    # @!attribute [rw] lambda_function_arn
    #   Lambda function ARN that allows a bot to receive outgoing events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/EventsConfiguration AWS API Documentation
    #
    class EventsConfiguration < Struct.new(
      :bot_id,
      :outbound_events_https_endpoint,
      :lambda_function_arn)
      SENSITIVE = [:outbound_events_https_endpoint, :lambda_function_arn]
      include Aws::Structure
    end

    # The client is permanently forbidden from making the request. For
    # example, when a user tries to create an account from an unsupported
    # Region.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The country and area code for a proxy phone number in a proxy phone
    # session.
    #
    # @note When making an API call, you may pass GeoMatchParams
    #   data as a hash:
    #
    #       {
    #         country: "Country", # required
    #         area_code: "AreaCode", # required
    #       }
    #
    # @!attribute [rw] country
    #   The country.
    #   @return [String]
    #
    # @!attribute [rw] area_code
    #   The area code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GeoMatchParams AWS API Documentation
    #
    class GeoMatchParams < Struct.new(
      :country,
      :area_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAccountRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAccountRequest AWS API Documentation
    #
    class GetAccountRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account
    #   The Amazon Chime account details.
    #   @return [Types::Account]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAccountResponse AWS API Documentation
    #
    class GetAccountResponse < Struct.new(
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAccountSettingsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAccountSettingsRequest AWS API Documentation
    #
    class GetAccountSettingsRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_settings
    #   The Amazon Chime account settings.
    #   @return [Types::AccountSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAccountSettingsResponse AWS API Documentation
    #
    class GetAccountSettingsResponse < Struct.new(
      :account_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAttendeeRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         attendee_id: "GuidString", # required
    #       }
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] attendee_id
    #   The Amazon Chime SDK attendee ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAttendeeRequest AWS API Documentation
    #
    class GetAttendeeRequest < Struct.new(
      :meeting_id,
      :attendee_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attendee
    #   The Amazon Chime SDK attendee information.
    #   @return [Types::Attendee]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAttendeeResponse AWS API Documentation
    #
    class GetAttendeeResponse < Struct.new(
      :attendee)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBotRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         bot_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The bot ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetBotRequest AWS API Documentation
    #
    class GetBotRequest < Struct.new(
      :account_id,
      :bot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot
    #   The chat bot details.
    #   @return [Types::Bot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetBotResponse AWS API Documentation
    #
    class GetBotResponse < Struct.new(
      :bot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEventsConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         bot_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The bot ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetEventsConfigurationRequest AWS API Documentation
    #
    class GetEventsConfigurationRequest < Struct.new(
      :account_id,
      :bot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events_configuration
    #   The events configuration details.
    #   @return [Types::EventsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetEventsConfigurationResponse AWS API Documentation
    #
    class GetEventsConfigurationResponse < Struct.new(
      :events_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] business_calling
    #   The Amazon Chime Business Calling settings.
    #   @return [Types::BusinessCallingSettings]
    #
    # @!attribute [rw] voice_connector
    #   The Amazon Chime Voice Connector settings.
    #   @return [Types::VoiceConnectorSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetGlobalSettingsResponse AWS API Documentation
    #
    class GetGlobalSettingsResponse < Struct.new(
      :business_calling,
      :voice_connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMeetingRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #       }
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetMeetingRequest AWS API Documentation
    #
    class GetMeetingRequest < Struct.new(
      :meeting_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meeting
    #   The Amazon Chime SDK meeting information.
    #   @return [Types::Meeting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetMeetingResponse AWS API Documentation
    #
    class GetMeetingResponse < Struct.new(
      :meeting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPhoneNumberOrderRequest
    #   data as a hash:
    #
    #       {
    #         phone_number_order_id: "GuidString", # required
    #       }
    #
    # @!attribute [rw] phone_number_order_id
    #   The ID for the phone number order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetPhoneNumberOrderRequest AWS API Documentation
    #
    class GetPhoneNumberOrderRequest < Struct.new(
      :phone_number_order_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_order
    #   The phone number order details.
    #   @return [Types::PhoneNumberOrder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetPhoneNumberOrderResponse AWS API Documentation
    #
    class GetPhoneNumberOrderResponse < Struct.new(
      :phone_number_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPhoneNumberRequest
    #   data as a hash:
    #
    #       {
    #         phone_number_id: "String", # required
    #       }
    #
    # @!attribute [rw] phone_number_id
    #   The phone number ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetPhoneNumberRequest AWS API Documentation
    #
    class GetPhoneNumberRequest < Struct.new(
      :phone_number_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number
    #   The phone number details.
    #   @return [Types::PhoneNumber]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetPhoneNumberResponse AWS API Documentation
    #
    class GetPhoneNumberResponse < Struct.new(
      :phone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calling_name
    #   The default outbound calling name for the account.
    #   @return [String]
    #
    # @!attribute [rw] calling_name_updated_timestamp
    #   The updated outbound calling name timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetPhoneNumberSettingsResponse AWS API Documentation
    #
    class GetPhoneNumberSettingsResponse < Struct.new(
      :calling_name,
      :calling_name_updated_timestamp)
      SENSITIVE = [:calling_name]
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetProxySessionRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString128", # required
    #         proxy_session_id: "NonEmptyString128", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime voice connector ID.
    #   @return [String]
    #
    # @!attribute [rw] proxy_session_id
    #   The proxy session ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetProxySessionRequest AWS API Documentation
    #
    class GetProxySessionRequest < Struct.new(
      :voice_connector_id,
      :proxy_session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_session
    #   The proxy session details.
    #   @return [Types::ProxySession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetProxySessionResponse AWS API Documentation
    #
    class GetProxySessionResponse < Struct.new(
      :proxy_session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRetentionSettingsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetRetentionSettingsRequest AWS API Documentation
    #
    class GetRetentionSettingsRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] retention_settings
    #   The retention settings.
    #   @return [Types::RetentionSettings]
    #
    # @!attribute [rw] initiate_deletion_timestamp
    #   The timestamp representing the time at which the specified items are
    #   permanently deleted, in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetRetentionSettingsResponse AWS API Documentation
    #
    class GetRetentionSettingsResponse < Struct.new(
      :retention_settings,
      :initiate_deletion_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRoomRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         room_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] room_id
    #   The room ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetRoomRequest AWS API Documentation
    #
    class GetRoomRequest < Struct.new(
      :account_id,
      :room_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] room
    #   The room details.
    #   @return [Types::Room]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetRoomResponse AWS API Documentation
    #
    class GetRoomResponse < Struct.new(
      :room)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetUserRequest AWS API Documentation
    #
    class GetUserRequest < Struct.new(
      :account_id,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The user details.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetUserResponse AWS API Documentation
    #
    class GetUserResponse < Struct.new(
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetUserSettingsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "String", # required
    #         user_id: "String", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetUserSettingsRequest AWS API Documentation
    #
    class GetUserSettingsRequest < Struct.new(
      :account_id,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_settings
    #   The user settings.
    #   @return [Types::UserSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetUserSettingsResponse AWS API Documentation
    #
    class GetUserSettingsResponse < Struct.new(
      :user_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVoiceConnectorEmergencyCallingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorEmergencyCallingConfigurationRequest AWS API Documentation
    #
    class GetVoiceConnectorEmergencyCallingConfigurationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] emergency_calling_configuration
    #   The emergency calling configuration details.
    #   @return [Types::EmergencyCallingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorEmergencyCallingConfigurationResponse AWS API Documentation
    #
    class GetVoiceConnectorEmergencyCallingConfigurationResponse < Struct.new(
      :emergency_calling_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVoiceConnectorGroupRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_group_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] voice_connector_group_id
    #   The Amazon Chime Voice Connector group ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorGroupRequest AWS API Documentation
    #
    class GetVoiceConnectorGroupRequest < Struct.new(
      :voice_connector_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_group
    #   The Amazon Chime Voice Connector group details.
    #   @return [Types::VoiceConnectorGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorGroupResponse AWS API Documentation
    #
    class GetVoiceConnectorGroupResponse < Struct.new(
      :voice_connector_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVoiceConnectorLoggingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorLoggingConfigurationRequest AWS API Documentation
    #
    class GetVoiceConnectorLoggingConfigurationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] logging_configuration
    #   The logging configuration details.
    #   @return [Types::LoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorLoggingConfigurationResponse AWS API Documentation
    #
    class GetVoiceConnectorLoggingConfigurationResponse < Struct.new(
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVoiceConnectorOriginationRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorOriginationRequest AWS API Documentation
    #
    class GetVoiceConnectorOriginationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origination
    #   The origination setting details.
    #   @return [Types::Origination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorOriginationResponse AWS API Documentation
    #
    class GetVoiceConnectorOriginationResponse < Struct.new(
      :origination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVoiceConnectorProxyRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString128", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime voice connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorProxyRequest AWS API Documentation
    #
    class GetVoiceConnectorProxyRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy
    #   The proxy configuration details.
    #   @return [Types::Proxy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorProxyResponse AWS API Documentation
    #
    class GetVoiceConnectorProxyResponse < Struct.new(
      :proxy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVoiceConnectorRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorRequest AWS API Documentation
    #
    class GetVoiceConnectorRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector
    #   The Amazon Chime Voice Connector details.
    #   @return [Types::VoiceConnector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorResponse AWS API Documentation
    #
    class GetVoiceConnectorResponse < Struct.new(
      :voice_connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVoiceConnectorStreamingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorStreamingConfigurationRequest AWS API Documentation
    #
    class GetVoiceConnectorStreamingConfigurationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_configuration
    #   The streaming configuration details.
    #   @return [Types::StreamingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorStreamingConfigurationResponse AWS API Documentation
    #
    class GetVoiceConnectorStreamingConfigurationResponse < Struct.new(
      :streaming_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVoiceConnectorTerminationHealthRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorTerminationHealthRequest AWS API Documentation
    #
    class GetVoiceConnectorTerminationHealthRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] termination_health
    #   The termination health details.
    #   @return [Types::TerminationHealth]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorTerminationHealthResponse AWS API Documentation
    #
    class GetVoiceConnectorTerminationHealthResponse < Struct.new(
      :termination_health)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVoiceConnectorTerminationRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorTerminationRequest AWS API Documentation
    #
    class GetVoiceConnectorTerminationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] termination
    #   The termination setting details.
    #   @return [Types::Termination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorTerminationResponse AWS API Documentation
    #
    class GetVoiceConnectorTerminationResponse < Struct.new(
      :termination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Invitation object returned after emailing users to invite them to join
    # the Amazon Chime `Team` account.
    #
    # @!attribute [rw] invite_id
    #   The invite ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the invite.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address to which the invite is sent.
    #   @return [String]
    #
    # @!attribute [rw] email_status
    #   The status of the invite email.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Invite AWS API Documentation
    #
    class Invite < Struct.new(
      :invite_id,
      :status,
      :email_address,
      :email_status)
      SENSITIVE = [:email_address]
      include Aws::Structure
    end

    # @note When making an API call, you may pass InviteUsersRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_email_list: ["EmailAddress"], # required
    #         user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_email_list
    #   The user email addresses to which to send the email invitation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_type
    #   The user type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/InviteUsersRequest AWS API Documentation
    #
    class InviteUsersRequest < Struct.new(
      :account_id,
      :user_email_list,
      :user_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invites
    #   The email invitation details.
    #   @return [Array<Types::Invite>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/InviteUsersResponse AWS API Documentation
    #
    class InviteUsersResponse < Struct.new(
      :invites)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAccountsRequest
    #   data as a hash:
    #
    #       {
    #         name: "AccountName",
    #         user_email: "EmailAddress",
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] name
    #   Amazon Chime account name prefix with which to filter results.
    #   @return [String]
    #
    # @!attribute [rw] user_email
    #   User email address with which to filter results.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Defaults
    #   to 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAccountsRequest AWS API Documentation
    #
    class ListAccountsRequest < Struct.new(
      :name,
      :user_email,
      :next_token,
      :max_results)
      SENSITIVE = [:user_email]
      include Aws::Structure
    end

    # @!attribute [rw] accounts
    #   List of Amazon Chime accounts and account details.
    #   @return [Array<Types::Account>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAccountsResponse AWS API Documentation
    #
    class ListAccountsResponse < Struct.new(
      :accounts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAttendeeTagsRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         attendee_id: "GuidString", # required
    #       }
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] attendee_id
    #   The Amazon Chime SDK attendee ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAttendeeTagsRequest AWS API Documentation
    #
    class ListAttendeeTagsRequest < Struct.new(
      :meeting_id,
      :attendee_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAttendeeTagsResponse AWS API Documentation
    #
    class ListAttendeeTagsResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAttendeesRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAttendeesRequest AWS API Documentation
    #
    class ListAttendeesRequest < Struct.new(
      :meeting_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attendees
    #   The Amazon Chime SDK attendee information.
    #   @return [Array<Types::Attendee>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAttendeesResponse AWS API Documentation
    #
    class ListAttendeesResponse < Struct.new(
      :attendees,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBotsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListBotsRequest AWS API Documentation
    #
    class ListBotsRequest < Struct.new(
      :account_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bots
    #   List of bots and bot details.
    #   @return [Array<Types::Bot>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListBotsResponse AWS API Documentation
    #
    class ListBotsResponse < Struct.new(
      :bots,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMeetingTagsRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #       }
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListMeetingTagsRequest AWS API Documentation
    #
    class ListMeetingTagsRequest < Struct.new(
      :meeting_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListMeetingTagsResponse AWS API Documentation
    #
    class ListMeetingTagsResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMeetingsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListMeetingsRequest AWS API Documentation
    #
    class ListMeetingsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meetings
    #   The Amazon Chime SDK meeting information.
    #   @return [Array<Types::Meeting>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListMeetingsResponse AWS API Documentation
    #
    class ListMeetingsResponse < Struct.new(
      :meetings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPhoneNumberOrdersRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListPhoneNumberOrdersRequest AWS API Documentation
    #
    class ListPhoneNumberOrdersRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_orders
    #   The phone number order details.
    #   @return [Array<Types::PhoneNumberOrder>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListPhoneNumberOrdersResponse AWS API Documentation
    #
    class ListPhoneNumberOrdersResponse < Struct.new(
      :phone_number_orders,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPhoneNumbersRequest
    #   data as a hash:
    #
    #       {
    #         status: "AcquireInProgress", # accepts AcquireInProgress, AcquireFailed, Unassigned, Assigned, ReleaseInProgress, DeleteInProgress, ReleaseFailed, DeleteFailed
    #         product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector
    #         filter_name: "AccountId", # accepts AccountId, UserId, VoiceConnectorId, VoiceConnectorGroupId
    #         filter_value: "String",
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] status
    #   The phone number status.
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   The phone number product type.
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   The filter to use to limit the number of results.
    #   @return [String]
    #
    # @!attribute [rw] filter_value
    #   The value to use for the filter.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListPhoneNumbersRequest AWS API Documentation
    #
    class ListPhoneNumbersRequest < Struct.new(
      :status,
      :product_type,
      :filter_name,
      :filter_value,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_numbers
    #   The phone number details.
    #   @return [Array<Types::PhoneNumber>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListPhoneNumbersResponse AWS API Documentation
    #
    class ListPhoneNumbersResponse < Struct.new(
      :phone_numbers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProxySessionsRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString128", # required
    #         status: "Open", # accepts Open, InProgress, Closed
    #         next_token: "NextTokenString",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime voice connector ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The proxy session status.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListProxySessionsRequest AWS API Documentation
    #
    class ListProxySessionsRequest < Struct.new(
      :voice_connector_id,
      :status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_sessions
    #   The proxy session details.
    #   @return [Array<Types::ProxySession>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListProxySessionsResponse AWS API Documentation
    #
    class ListProxySessionsResponse < Struct.new(
      :proxy_sessions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRoomMembershipsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         room_id: "NonEmptyString", # required
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] room_id
    #   The room ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListRoomMembershipsRequest AWS API Documentation
    #
    class ListRoomMembershipsRequest < Struct.new(
      :account_id,
      :room_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] room_memberships
    #   The room membership details.
    #   @return [Array<Types::RoomMembership>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListRoomMembershipsResponse AWS API Documentation
    #
    class ListRoomMembershipsResponse < Struct.new(
      :room_memberships,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRoomsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         member_id: "String",
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The member ID (user ID or bot ID).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListRoomsRequest AWS API Documentation
    #
    class ListRoomsRequest < Struct.new(
      :account_id,
      :member_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rooms
    #   The room details.
    #   @return [Array<Types::Room>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListRoomsResponse AWS API Documentation
    #
    class ListRoomsResponse < Struct.new(
      :rooms,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = [:resource_arn]
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tag-key value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUsersRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_email: "EmailAddress",
    #         user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_email
    #   Optional. The user email address used to filter results. Maximum 1.
    #   @return [String]
    #
    # @!attribute [rw] user_type
    #   The user type.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Defaults
    #   to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :account_id,
      :user_email,
      :user_type,
      :max_results,
      :next_token)
      SENSITIVE = [:user_email]
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   List of users and user details.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :users,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVoiceConnectorGroupsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListVoiceConnectorGroupsRequest AWS API Documentation
    #
    class ListVoiceConnectorGroupsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_groups
    #   The details of the Amazon Chime Voice Connector groups.
    #   @return [Array<Types::VoiceConnectorGroup>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListVoiceConnectorGroupsResponse AWS API Documentation
    #
    class ListVoiceConnectorGroupsResponse < Struct.new(
      :voice_connector_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVoiceConnectorTerminationCredentialsRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListVoiceConnectorTerminationCredentialsRequest AWS API Documentation
    #
    class ListVoiceConnectorTerminationCredentialsRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] usernames
    #   A list of user names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListVoiceConnectorTerminationCredentialsResponse AWS API Documentation
    #
    class ListVoiceConnectorTerminationCredentialsResponse < Struct.new(
      :usernames)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVoiceConnectorsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListVoiceConnectorsRequest AWS API Documentation
    #
    class ListVoiceConnectorsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connectors
    #   The details of the Amazon Chime Voice Connectors.
    #   @return [Array<Types::VoiceConnector>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListVoiceConnectorsResponse AWS API Documentation
    #
    class ListVoiceConnectorsResponse < Struct.new(
      :voice_connectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The logging configuration associated with an Amazon Chime Voice
    # Connector. Specifies whether SIP message logs are enabled for sending
    # to Amazon CloudWatch Logs.
    #
    # @note When making an API call, you may pass LoggingConfiguration
    #   data as a hash:
    #
    #       {
    #         enable_sip_logs: false,
    #       }
    #
    # @!attribute [rw] enable_sip_logs
    #   When true, enables SIP message logs for sending to Amazon CloudWatch
    #   Logs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/LoggingConfiguration AWS API Documentation
    #
    class LoggingConfiguration < Struct.new(
      :enable_sip_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass LogoutUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/LogoutUserRequest AWS API Documentation
    #
    class LogoutUserRequest < Struct.new(
      :account_id,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/LogoutUserResponse AWS API Documentation
    #
    class LogoutUserResponse < Aws::EmptyStructure; end

    # A set of endpoints used by clients to connect to the media service
    # group for a Amazon Chime SDK meeting.
    #
    # @!attribute [rw] audio_host_url
    #   The audio host URL.
    #   @return [String]
    #
    # @!attribute [rw] audio_fallback_url
    #   The audio fallback URL.
    #   @return [String]
    #
    # @!attribute [rw] screen_data_url
    #   The screen data URL.
    #   @return [String]
    #
    # @!attribute [rw] screen_sharing_url
    #   The screen sharing URL.
    #   @return [String]
    #
    # @!attribute [rw] screen_viewing_url
    #   The screen viewing URL.
    #   @return [String]
    #
    # @!attribute [rw] signaling_url
    #   The signaling URL.
    #   @return [String]
    #
    # @!attribute [rw] turn_control_url
    #   The turn control URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/MediaPlacement AWS API Documentation
    #
    class MediaPlacement < Struct.new(
      :audio_host_url,
      :audio_fallback_url,
      :screen_data_url,
      :screen_sharing_url,
      :screen_viewing_url,
      :signaling_url,
      :turn_control_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A meeting created using the Amazon Chime SDK.
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] external_meeting_id
    #   The external meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] media_placement
    #   The media placement for the meeting.
    #   @return [Types::MediaPlacement]
    #
    # @!attribute [rw] media_region
    #   The Region in which to create the meeting. Available values:
    #   `af-south-1`, `ap-northeast-1`, `ap-northeast-2`, `ap-south-1`,
    #   `ap-southeast-1`, `ap-southeast-2`, `ca-central-1`, `eu-central-1`,
    #   `eu-north-1`, `eu-south-1`, `eu-west-1`, `eu-west-2`, `eu-west-3`,
    #   `sa-east-1`, `us-east-1`, `us-east-2`, `us-west-1`, `us-west-2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Meeting AWS API Documentation
    #
    class Meeting < Struct.new(
      :meeting_id,
      :external_meeting_id,
      :media_placement,
      :media_region)
      SENSITIVE = [:external_meeting_id]
      include Aws::Structure
    end

    # The configuration for resource targets to receive notifications when
    # Amazon Chime SDK meeting and attendee events occur. The Amazon Chime
    # SDK supports resource targets located in the US East (N. Virginia) AWS
    # Region (`us-east-1`).
    #
    # @note When making an API call, you may pass MeetingNotificationConfiguration
    #   data as a hash:
    #
    #       {
    #         sns_topic_arn: "Arn",
    #         sqs_queue_arn: "Arn",
    #       }
    #
    # @!attribute [rw] sns_topic_arn
    #   The SNS topic ARN.
    #   @return [String]
    #
    # @!attribute [rw] sqs_queue_arn
    #   The SQS queue ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/MeetingNotificationConfiguration AWS API Documentation
    #
    class MeetingNotificationConfiguration < Struct.new(
      :sns_topic_arn,
      :sqs_queue_arn)
      SENSITIVE = [:sns_topic_arn, :sqs_queue_arn]
      include Aws::Structure
    end

    # The member details, such as email address, name, member ID, and member
    # type.
    #
    # @!attribute [rw] member_id
    #   The member ID (user ID or bot ID).
    #   @return [String]
    #
    # @!attribute [rw] member_type
    #   The member type.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The member email address.
    #   @return [String]
    #
    # @!attribute [rw] full_name
    #   The member name.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Member AWS API Documentation
    #
    class Member < Struct.new(
      :member_id,
      :member_type,
      :email,
      :full_name,
      :account_id)
      SENSITIVE = [:email, :full_name]
      include Aws::Structure
    end

    # The list of errors returned when a member action results in an error.
    #
    # @!attribute [rw] member_id
    #   The member ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/MemberError AWS API Documentation
    #
    class MemberError < Struct.new(
      :member_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Membership details, such as member ID and member role.
    #
    # @note When making an API call, you may pass MembershipItem
    #   data as a hash:
    #
    #       {
    #         member_id: "NonEmptyString",
    #         role: "Administrator", # accepts Administrator, Member
    #       }
    #
    # @!attribute [rw] member_id
    #   The member ID.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The member role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/MembershipItem AWS API Documentation
    #
    class MembershipItem < Struct.new(
      :member_id,
      :role)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A phone number for which an order has been placed.
    #
    # @!attribute [rw] e164_phone_number
    #   The phone number, in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The phone number status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/OrderedPhoneNumber AWS API Documentation
    #
    class OrderedPhoneNumber < Struct.new(
      :e164_phone_number,
      :status)
      SENSITIVE = [:e164_phone_number]
      include Aws::Structure
    end

    # Origination settings enable your SIP hosts to receive inbound calls
    # using your Amazon Chime Voice Connector.
    #
    # @note When making an API call, you may pass Origination
    #   data as a hash:
    #
    #       {
    #         routes: [
    #           {
    #             host: "String",
    #             port: 1,
    #             protocol: "TCP", # accepts TCP, UDP
    #             priority: 1,
    #             weight: 1,
    #           },
    #         ],
    #         disabled: false,
    #       }
    #
    # @!attribute [rw] routes
    #   The call distribution properties defined for your SIP hosts. Valid
    #   range: Minimum value of 1. Maximum value of 20.
    #   @return [Array<Types::OriginationRoute>]
    #
    # @!attribute [rw] disabled
    #   When origination settings are disabled, inbound calls are not
    #   enabled for your Amazon Chime Voice Connector.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Origination AWS API Documentation
    #
    class Origination < Struct.new(
      :routes,
      :disabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Origination routes define call distribution properties for your SIP
    # hosts to receive inbound calls using your Amazon Chime Voice
    # Connector. Limit: Ten origination routes for each Amazon Chime Voice
    # Connector.
    #
    # @note When making an API call, you may pass OriginationRoute
    #   data as a hash:
    #
    #       {
    #         host: "String",
    #         port: 1,
    #         protocol: "TCP", # accepts TCP, UDP
    #         priority: 1,
    #         weight: 1,
    #       }
    #
    # @!attribute [rw] host
    #   The FQDN or IP address to contact for origination traffic.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The designated origination route port. Defaults to 5060.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol to use for the origination route. Encryption-enabled
    #   Amazon Chime Voice Connectors use TCP protocol by default.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority associated with the host, with 1 being the highest
    #   priority. Higher priority hosts are attempted first.
    #   @return [Integer]
    #
    # @!attribute [rw] weight
    #   The weight associated with the host. If hosts are equal in priority,
    #   calls are distributed among them based on their relative weight.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/OriginationRoute AWS API Documentation
    #
    class OriginationRoute < Struct.new(
      :host,
      :port,
      :protocol,
      :priority,
      :weight)
      SENSITIVE = []
      include Aws::Structure
    end

    # The phone number and proxy phone number for a participant in an Amazon
    # Chime Voice Connector proxy session.
    #
    # @!attribute [rw] phone_number
    #   The participant's phone number.
    #   @return [String]
    #
    # @!attribute [rw] proxy_phone_number
    #   The participant's proxy phone number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Participant AWS API Documentation
    #
    class Participant < Struct.new(
      :phone_number,
      :proxy_phone_number)
      SENSITIVE = [:phone_number, :proxy_phone_number]
      include Aws::Structure
    end

    # A phone number used for Amazon Chime Business Calling or an Amazon
    # Chime Voice Connector.
    #
    # @!attribute [rw] phone_number_id
    #   The phone number ID.
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_number
    #   The phone number, in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The phone number type.
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   The phone number product type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The phone number status.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   The phone number capabilities.
    #   @return [Types::PhoneNumberCapabilities]
    #
    # @!attribute [rw] associations
    #   The phone number associations.
    #   @return [Array<Types::PhoneNumberAssociation>]
    #
    # @!attribute [rw] calling_name
    #   The outbound calling name associated with the phone number.
    #   @return [String]
    #
    # @!attribute [rw] calling_name_status
    #   The outbound calling name status.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The phone number creation timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The updated phone number timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] deletion_timestamp
    #   The deleted phone number timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PhoneNumber AWS API Documentation
    #
    class PhoneNumber < Struct.new(
      :phone_number_id,
      :e164_phone_number,
      :type,
      :product_type,
      :status,
      :capabilities,
      :associations,
      :calling_name,
      :calling_name_status,
      :created_timestamp,
      :updated_timestamp,
      :deletion_timestamp)
      SENSITIVE = [:e164_phone_number, :calling_name]
      include Aws::Structure
    end

    # The phone number associations, such as Amazon Chime account ID, Amazon
    # Chime user ID, Amazon Chime Voice Connector ID, or Amazon Chime Voice
    # Connector group ID.
    #
    # @!attribute [rw] value
    #   Contains the ID for the entity specified in Name.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Defines the association with an Amazon Chime account ID, user ID,
    #   Amazon Chime Voice Connector ID, or Amazon Chime Voice Connector
    #   group ID.
    #   @return [String]
    #
    # @!attribute [rw] associated_timestamp
    #   The timestamp of the phone number association, in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PhoneNumberAssociation AWS API Documentation
    #
    class PhoneNumberAssociation < Struct.new(
      :value,
      :name,
      :associated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The phone number capabilities for Amazon Chime Business Calling phone
    # numbers, such as enabled inbound and outbound calling and text
    # messaging.
    #
    # @!attribute [rw] inbound_call
    #   Allows or denies inbound calling for the specified phone number.
    #   @return [Boolean]
    #
    # @!attribute [rw] outbound_call
    #   Allows or denies outbound calling for the specified phone number.
    #   @return [Boolean]
    #
    # @!attribute [rw] inbound_sms
    #   Allows or denies inbound SMS messaging for the specified phone
    #   number.
    #   @return [Boolean]
    #
    # @!attribute [rw] outbound_sms
    #   Allows or denies outbound SMS messaging for the specified phone
    #   number.
    #   @return [Boolean]
    #
    # @!attribute [rw] inbound_mms
    #   Allows or denies inbound MMS messaging for the specified phone
    #   number.
    #   @return [Boolean]
    #
    # @!attribute [rw] outbound_mms
    #   Allows or denies outbound MMS messaging for the specified phone
    #   number.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PhoneNumberCapabilities AWS API Documentation
    #
    class PhoneNumberCapabilities < Struct.new(
      :inbound_call,
      :outbound_call,
      :inbound_sms,
      :outbound_sms,
      :inbound_mms,
      :outbound_mms)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the phone number action fails for one or more of the phone numbers
    # in the request, a list of the phone numbers is returned, along with
    # error codes and error messages.
    #
    # @!attribute [rw] phone_number_id
    #   The phone number ID for which the action failed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PhoneNumberError AWS API Documentation
    #
    class PhoneNumberError < Struct.new(
      :phone_number_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a phone number order created for Amazon Chime.
    #
    # @!attribute [rw] phone_number_order_id
    #   The phone number order ID.
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   The phone number order product type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the phone number order.
    #   @return [String]
    #
    # @!attribute [rw] ordered_phone_numbers
    #   The ordered phone number details, such as the phone number in E.164
    #   format and the phone number status.
    #   @return [Array<Types::OrderedPhoneNumber>]
    #
    # @!attribute [rw] created_timestamp
    #   The phone number order creation timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The updated phone number order timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PhoneNumberOrder AWS API Documentation
    #
    class PhoneNumberOrder < Struct.new(
      :phone_number_order_id,
      :product_type,
      :status,
      :ordered_phone_numbers,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The proxy configuration for an Amazon Chime Voice Connector.
    #
    # @!attribute [rw] default_session_expiry_minutes
    #   The default number of minutes allowed for proxy sessions.
    #   @return [Integer]
    #
    # @!attribute [rw] disabled
    #   When true, stops proxy sessions from being created on the specified
    #   Amazon Chime Voice Connector.
    #   @return [Boolean]
    #
    # @!attribute [rw] fall_back_phone_number
    #   The phone number to route calls to after a proxy session expires.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_countries
    #   The countries for proxy phone numbers to be selected from.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Proxy AWS API Documentation
    #
    class Proxy < Struct.new(
      :default_session_expiry_minutes,
      :disabled,
      :fall_back_phone_number,
      :phone_number_countries)
      SENSITIVE = [:fall_back_phone_number]
      include Aws::Structure
    end

    # The proxy session for an Amazon Chime Voice Connector.
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime voice connector ID.
    #   @return [String]
    #
    # @!attribute [rw] proxy_session_id
    #   The proxy session ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the proxy session.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the proxy session.
    #   @return [String]
    #
    # @!attribute [rw] expiry_minutes
    #   The number of minutes allowed for the proxy session.
    #   @return [Integer]
    #
    # @!attribute [rw] capabilities
    #   The proxy session capabilities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_timestamp
    #   The created timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The updated timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] ended_timestamp
    #   The ended timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] participants
    #   The proxy session participants.
    #   @return [Array<Types::Participant>]
    #
    # @!attribute [rw] number_selection_behavior
    #   The preference for proxy phone number reuse, or stickiness, between
    #   the same participants across sessions.
    #   @return [String]
    #
    # @!attribute [rw] geo_match_level
    #   The preference for matching the country or area code of the proxy
    #   phone number with that of the first participant.
    #   @return [String]
    #
    # @!attribute [rw] geo_match_params
    #   The country and area code for the proxy phone number.
    #   @return [Types::GeoMatchParams]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ProxySession AWS API Documentation
    #
    class ProxySession < Struct.new(
      :voice_connector_id,
      :proxy_session_id,
      :name,
      :status,
      :expiry_minutes,
      :capabilities,
      :created_timestamp,
      :updated_timestamp,
      :ended_timestamp,
      :participants,
      :number_selection_behavior,
      :geo_match_level,
      :geo_match_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutEventsConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         bot_id: "NonEmptyString", # required
    #         outbound_events_https_endpoint: "SensitiveString",
    #         lambda_function_arn: "SensitiveString",
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The bot ID.
    #   @return [String]
    #
    # @!attribute [rw] outbound_events_https_endpoint
    #   HTTPS endpoint that allows the bot to receive outgoing events.
    #   @return [String]
    #
    # @!attribute [rw] lambda_function_arn
    #   Lambda function ARN that allows the bot to receive outgoing events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutEventsConfigurationRequest AWS API Documentation
    #
    class PutEventsConfigurationRequest < Struct.new(
      :account_id,
      :bot_id,
      :outbound_events_https_endpoint,
      :lambda_function_arn)
      SENSITIVE = [:outbound_events_https_endpoint, :lambda_function_arn]
      include Aws::Structure
    end

    # @!attribute [rw] events_configuration
    #   The configuration that allows a bot to receive outgoing events. Can
    #   be either an HTTPS endpoint or a Lambda function ARN.
    #   @return [Types::EventsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutEventsConfigurationResponse AWS API Documentation
    #
    class PutEventsConfigurationResponse < Struct.new(
      :events_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutRetentionSettingsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         retention_settings: { # required
    #           room_retention_settings: {
    #             retention_days: 1,
    #           },
    #           conversation_retention_settings: {
    #             retention_days: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] retention_settings
    #   The retention settings.
    #   @return [Types::RetentionSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutRetentionSettingsRequest AWS API Documentation
    #
    class PutRetentionSettingsRequest < Struct.new(
      :account_id,
      :retention_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] retention_settings
    #   The retention settings.
    #   @return [Types::RetentionSettings]
    #
    # @!attribute [rw] initiate_deletion_timestamp
    #   The timestamp representing the time at which the specified items are
    #   permanently deleted, in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutRetentionSettingsResponse AWS API Documentation
    #
    class PutRetentionSettingsResponse < Struct.new(
      :retention_settings,
      :initiate_deletion_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutVoiceConnectorEmergencyCallingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         emergency_calling_configuration: { # required
    #           dnis: [
    #             {
    #               emergency_phone_number: "E164PhoneNumber", # required
    #               test_phone_number: "E164PhoneNumber",
    #               calling_country: "Alpha2CountryCode", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] emergency_calling_configuration
    #   The emergency calling configuration details.
    #   @return [Types::EmergencyCallingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorEmergencyCallingConfigurationRequest AWS API Documentation
    #
    class PutVoiceConnectorEmergencyCallingConfigurationRequest < Struct.new(
      :voice_connector_id,
      :emergency_calling_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] emergency_calling_configuration
    #   The emergency calling configuration details.
    #   @return [Types::EmergencyCallingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorEmergencyCallingConfigurationResponse AWS API Documentation
    #
    class PutVoiceConnectorEmergencyCallingConfigurationResponse < Struct.new(
      :emergency_calling_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutVoiceConnectorLoggingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         logging_configuration: { # required
    #           enable_sip_logs: false,
    #         },
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   The logging configuration details to add.
    #   @return [Types::LoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorLoggingConfigurationRequest AWS API Documentation
    #
    class PutVoiceConnectorLoggingConfigurationRequest < Struct.new(
      :voice_connector_id,
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] logging_configuration
    #   The updated logging configuration details.
    #   @return [Types::LoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorLoggingConfigurationResponse AWS API Documentation
    #
    class PutVoiceConnectorLoggingConfigurationResponse < Struct.new(
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutVoiceConnectorOriginationRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         origination: { # required
    #           routes: [
    #             {
    #               host: "String",
    #               port: 1,
    #               protocol: "TCP", # accepts TCP, UDP
    #               priority: 1,
    #               weight: 1,
    #             },
    #           ],
    #           disabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] origination
    #   The origination setting details to add.
    #   @return [Types::Origination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorOriginationRequest AWS API Documentation
    #
    class PutVoiceConnectorOriginationRequest < Struct.new(
      :voice_connector_id,
      :origination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origination
    #   The updated origination setting details.
    #   @return [Types::Origination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorOriginationResponse AWS API Documentation
    #
    class PutVoiceConnectorOriginationResponse < Struct.new(
      :origination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutVoiceConnectorProxyRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString128", # required
    #         default_session_expiry_minutes: 1, # required
    #         phone_number_pool_countries: ["Country"], # required
    #         fall_back_phone_number: "E164PhoneNumber",
    #         disabled: false,
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime voice connector ID.
    #   @return [String]
    #
    # @!attribute [rw] default_session_expiry_minutes
    #   The default number of minutes allowed for proxy sessions.
    #   @return [Integer]
    #
    # @!attribute [rw] phone_number_pool_countries
    #   The countries for proxy phone numbers to be selected from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] fall_back_phone_number
    #   The phone number to route calls to after a proxy session expires.
    #   @return [String]
    #
    # @!attribute [rw] disabled
    #   When true, stops proxy sessions from being created on the specified
    #   Amazon Chime Voice Connector.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorProxyRequest AWS API Documentation
    #
    class PutVoiceConnectorProxyRequest < Struct.new(
      :voice_connector_id,
      :default_session_expiry_minutes,
      :phone_number_pool_countries,
      :fall_back_phone_number,
      :disabled)
      SENSITIVE = [:fall_back_phone_number]
      include Aws::Structure
    end

    # @!attribute [rw] proxy
    #   The proxy configuration details.
    #   @return [Types::Proxy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorProxyResponse AWS API Documentation
    #
    class PutVoiceConnectorProxyResponse < Struct.new(
      :proxy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutVoiceConnectorStreamingConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         streaming_configuration: { # required
    #           data_retention_in_hours: 1, # required
    #           disabled: false,
    #           streaming_notification_targets: [
    #             {
    #               notification_target: "EventBridge", # required, accepts EventBridge, SNS, SQS
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] streaming_configuration
    #   The streaming configuration details to add.
    #   @return [Types::StreamingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorStreamingConfigurationRequest AWS API Documentation
    #
    class PutVoiceConnectorStreamingConfigurationRequest < Struct.new(
      :voice_connector_id,
      :streaming_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_configuration
    #   The updated streaming configuration details.
    #   @return [Types::StreamingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorStreamingConfigurationResponse AWS API Documentation
    #
    class PutVoiceConnectorStreamingConfigurationResponse < Struct.new(
      :streaming_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutVoiceConnectorTerminationCredentialsRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         credentials: [
    #           {
    #             username: "SensitiveString",
    #             password: "SensitiveString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   The termination SIP credentials.
    #   @return [Array<Types::Credential>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorTerminationCredentialsRequest AWS API Documentation
    #
    class PutVoiceConnectorTerminationCredentialsRequest < Struct.new(
      :voice_connector_id,
      :credentials)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutVoiceConnectorTerminationRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         termination: { # required
    #           cps_limit: 1,
    #           default_phone_number: "E164PhoneNumber",
    #           calling_regions: ["CallingRegion"],
    #           cidr_allowed_list: ["String"],
    #           disabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] termination
    #   The termination setting details to add.
    #   @return [Types::Termination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorTerminationRequest AWS API Documentation
    #
    class PutVoiceConnectorTerminationRequest < Struct.new(
      :voice_connector_id,
      :termination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] termination
    #   The updated termination setting details.
    #   @return [Types::Termination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorTerminationResponse AWS API Documentation
    #
    class PutVoiceConnectorTerminationResponse < Struct.new(
      :termination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RedactConversationMessageRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         conversation_id: "NonEmptyString", # required
    #         message_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] conversation_id
    #   The conversation ID.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The message ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RedactConversationMessageRequest AWS API Documentation
    #
    class RedactConversationMessageRequest < Struct.new(
      :account_id,
      :conversation_id,
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RedactConversationMessageResponse AWS API Documentation
    #
    class RedactConversationMessageResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RedactRoomMessageRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         room_id: "NonEmptyString", # required
    #         message_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] room_id
    #   The room ID.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The message ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RedactRoomMessageRequest AWS API Documentation
    #
    class RedactRoomMessageRequest < Struct.new(
      :account_id,
      :room_id,
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RedactRoomMessageResponse AWS API Documentation
    #
    class RedactRoomMessageResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RegenerateSecurityTokenRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         bot_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The bot ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RegenerateSecurityTokenRequest AWS API Documentation
    #
    class RegenerateSecurityTokenRequest < Struct.new(
      :account_id,
      :bot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot
    #   A resource that allows Enterprise account administrators to
    #   configure an interface to receive events from Amazon Chime.
    #   @return [Types::Bot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RegenerateSecurityTokenResponse AWS API Documentation
    #
    class RegenerateSecurityTokenResponse < Struct.new(
      :bot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ResetPersonalPINRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ResetPersonalPINRequest AWS API Documentation
    #
    class ResetPersonalPINRequest < Struct.new(
      :account_id,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The user details and new personal meeting PIN.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ResetPersonalPINResponse AWS API Documentation
    #
    class ResetPersonalPINResponse < Struct.new(
      :user)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestorePhoneNumberRequest
    #   data as a hash:
    #
    #       {
    #         phone_number_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] phone_number_id
    #   The phone number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RestorePhoneNumberRequest AWS API Documentation
    #
    class RestorePhoneNumberRequest < Struct.new(
      :phone_number_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number
    #   The phone number details.
    #   @return [Types::PhoneNumber]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RestorePhoneNumberResponse AWS API Documentation
    #
    class RestorePhoneNumberResponse < Struct.new(
      :phone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The retention settings for an Amazon Chime Enterprise account that
    # determine how long to retain items such as chat room messages and chat
    # conversation messages.
    #
    # @note When making an API call, you may pass RetentionSettings
    #   data as a hash:
    #
    #       {
    #         room_retention_settings: {
    #           retention_days: 1,
    #         },
    #         conversation_retention_settings: {
    #           retention_days: 1,
    #         },
    #       }
    #
    # @!attribute [rw] room_retention_settings
    #   The chat room retention settings.
    #   @return [Types::RoomRetentionSettings]
    #
    # @!attribute [rw] conversation_retention_settings
    #   The chat conversation retention settings.
    #   @return [Types::ConversationRetentionSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RetentionSettings AWS API Documentation
    #
    class RetentionSettings < Struct.new(
      :room_retention_settings,
      :conversation_retention_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Chime chat room details.
    #
    # @!attribute [rw] room_id
    #   The room ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The room name.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The identifier of the room creator.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The room creation timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The room update timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Room AWS API Documentation
    #
    class Room < Struct.new(
      :room_id,
      :name,
      :account_id,
      :created_by,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # The room membership details.
    #
    # @!attribute [rw] room_id
    #   The room ID.
    #   @return [String]
    #
    # @!attribute [rw] member
    #   The member details, such as email address, name, member ID, and
    #   member type.
    #   @return [Types::Member]
    #
    # @!attribute [rw] role
    #   The membership role.
    #   @return [String]
    #
    # @!attribute [rw] invited_by
    #   The identifier of the user that invited the room member.
    #   @return [String]
    #
    # @!attribute [rw] updated_timestamp
    #   The room membership update timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RoomMembership AWS API Documentation
    #
    class RoomMembership < Struct.new(
      :room_id,
      :member,
      :role,
      :invited_by,
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The retention settings that determine how long to retain chat room
    # messages for an Amazon Chime Enterprise account.
    #
    # @note When making an API call, you may pass RoomRetentionSettings
    #   data as a hash:
    #
    #       {
    #         retention_days: 1,
    #       }
    #
    # @!attribute [rw] retention_days
    #   The number of days for which to retain chat room messages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RoomRetentionSettings AWS API Documentation
    #
    class RoomRetentionSettings < Struct.new(
      :retention_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchAvailablePhoneNumbersRequest
    #   data as a hash:
    #
    #       {
    #         area_code: "String",
    #         city: "String",
    #         country: "String",
    #         state: "String",
    #         toll_free_prefix: "TollFreePrefix",
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] area_code
    #   The area code used to filter results.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city used to filter results.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country used to filter results.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state used to filter results.
    #   @return [String]
    #
    # @!attribute [rw] toll_free_prefix
    #   The toll-free prefix that you use to filter results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SearchAvailablePhoneNumbersRequest AWS API Documentation
    #
    class SearchAvailablePhoneNumbersRequest < Struct.new(
      :area_code,
      :city,
      :country,
      :state,
      :toll_free_prefix,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SearchAvailablePhoneNumbersResponse AWS API Documentation
    #
    class SearchAvailablePhoneNumbersResponse < Struct.new(
      :e164_phone_numbers)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ServiceFailureException AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Active Directory (AD) group whose members are granted permission to
    # act as delegates.
    #
    # @note When making an API call, you may pass SigninDelegateGroup
    #   data as a hash:
    #
    #       {
    #         group_name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] group_name
    #   The group name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SigninDelegateGroup AWS API Documentation
    #
    class SigninDelegateGroup < Struct.new(
      :group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The streaming configuration associated with an Amazon Chime Voice
    # Connector. Specifies whether media streaming is enabled for sending to
    # Amazon Kinesis, and shows the retention period for the Amazon Kinesis
    # data, in hours.
    #
    # @note When making an API call, you may pass StreamingConfiguration
    #   data as a hash:
    #
    #       {
    #         data_retention_in_hours: 1, # required
    #         disabled: false,
    #         streaming_notification_targets: [
    #           {
    #             notification_target: "EventBridge", # required, accepts EventBridge, SNS, SQS
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] data_retention_in_hours
    #   The retention period, in hours, for the Amazon Kinesis data.
    #   @return [Integer]
    #
    # @!attribute [rw] disabled
    #   When true, media streaming to Amazon Kinesis is turned off.
    #   @return [Boolean]
    #
    # @!attribute [rw] streaming_notification_targets
    #   The streaming notification targets.
    #   @return [Array<Types::StreamingNotificationTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/StreamingConfiguration AWS API Documentation
    #
    class StreamingConfiguration < Struct.new(
      :data_retention_in_hours,
      :disabled,
      :streaming_notification_targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The targeted recipient for a streaming configuration notification.
    #
    # @note When making an API call, you may pass StreamingNotificationTarget
    #   data as a hash:
    #
    #       {
    #         notification_target: "EventBridge", # required, accepts EventBridge, SNS, SQS
    #       }
    #
    # @!attribute [rw] notification_target
    #   The streaming notification target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/StreamingNotificationTarget AWS API Documentation
    #
    class StreamingNotificationTarget < Struct.new(
      :notification_target)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = [:key, :value]
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagAttendeeRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         attendee_id: "GuidString", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] attendee_id
    #   The Amazon Chime SDK attendee ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/TagAttendeeRequest AWS API Documentation
    #
    class TagAttendeeRequest < Struct.new(
      :meeting_id,
      :attendee_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagMeetingRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/TagMeetingRequest AWS API Documentation
    #
    class TagMeetingRequest < Struct.new(
      :meeting_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:resource_arn]
      include Aws::Structure
    end

    # Settings that allow management of telephony permissions for an Amazon
    # Chime user, such as inbound and outbound calling and text messaging.
    #
    # @note When making an API call, you may pass TelephonySettings
    #   data as a hash:
    #
    #       {
    #         inbound_calling: false, # required
    #         outbound_calling: false, # required
    #         sms: false, # required
    #       }
    #
    # @!attribute [rw] inbound_calling
    #   Allows or denies inbound calling.
    #   @return [Boolean]
    #
    # @!attribute [rw] outbound_calling
    #   Allows or denies outbound calling.
    #   @return [Boolean]
    #
    # @!attribute [rw] sms
    #   Allows or denies SMS messaging.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/TelephonySettings AWS API Documentation
    #
    class TelephonySettings < Struct.new(
      :inbound_calling,
      :outbound_calling,
      :sms)
      SENSITIVE = []
      include Aws::Structure
    end

    # Termination settings enable your SIP hosts to make outbound calls
    # using your Amazon Chime Voice Connector.
    #
    # @note When making an API call, you may pass Termination
    #   data as a hash:
    #
    #       {
    #         cps_limit: 1,
    #         default_phone_number: "E164PhoneNumber",
    #         calling_regions: ["CallingRegion"],
    #         cidr_allowed_list: ["String"],
    #         disabled: false,
    #       }
    #
    # @!attribute [rw] cps_limit
    #   The limit on calls per second. Max value based on account service
    #   quota. Default value of 1.
    #   @return [Integer]
    #
    # @!attribute [rw] default_phone_number
    #   The default caller ID phone number.
    #   @return [String]
    #
    # @!attribute [rw] calling_regions
    #   The countries to which calls are allowed, in ISO 3166-1 alpha-2
    #   format. Required.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cidr_allowed_list
    #   The IP addresses allowed to make calls, in CIDR format. Required.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disabled
    #   When termination settings are disabled, outbound calls can not be
    #   made.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Termination AWS API Documentation
    #
    class Termination < Struct.new(
      :cps_limit,
      :default_phone_number,
      :calling_regions,
      :cidr_allowed_list,
      :disabled)
      SENSITIVE = [:default_phone_number]
      include Aws::Structure
    end

    # The termination health details, including the source IP address and
    # timestamp of the last successful SIP `OPTIONS` message from your SIP
    # infrastructure.
    #
    # @!attribute [rw] timestamp
    #   The timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] source
    #   The source IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/TerminationHealth AWS API Documentation
    #
    class TerminationHealth < Struct.new(
      :timestamp,
      :source)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ThrottledClientException AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UnauthorizedClientException AWS API Documentation
    #
    class UnauthorizedClientException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was well-formed but was unable to be followed due to
    # semantic errors.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UnprocessableEntityException AWS API Documentation
    #
    class UnprocessableEntityException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagAttendeeRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         attendee_id: "GuidString", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] attendee_id
    #   The Amazon Chime SDK attendee ID.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UntagAttendeeRequest AWS API Documentation
    #
    class UntagAttendeeRequest < Struct.new(
      :meeting_id,
      :attendee_id,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagMeetingRequest
    #   data as a hash:
    #
    #       {
    #         meeting_id: "GuidString", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UntagMeetingRequest AWS API Documentation
    #
    class UntagMeetingRequest < Struct.new(
      :meeting_id,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = [:resource_arn]
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAccountRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         name: "AccountName",
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the specified Amazon Chime account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAccountRequest AWS API Documentation
    #
    class UpdateAccountRequest < Struct.new(
      :account_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account
    #   The updated Amazon Chime account details.
    #   @return [Types::Account]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAccountResponse AWS API Documentation
    #
    class UpdateAccountResponse < Struct.new(
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAccountSettingsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         account_settings: { # required
    #           disable_remote_control: false,
    #           enable_dial_out: false,
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] account_settings
    #   The Amazon Chime account settings to update.
    #   @return [Types::AccountSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAccountSettingsRequest AWS API Documentation
    #
    class UpdateAccountSettingsRequest < Struct.new(
      :account_id,
      :account_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAccountSettingsResponse AWS API Documentation
    #
    class UpdateAccountSettingsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateBotRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         bot_id: "NonEmptyString", # required
    #         disabled: false,
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The bot ID.
    #   @return [String]
    #
    # @!attribute [rw] disabled
    #   When true, stops the specified bot from running in your account.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateBotRequest AWS API Documentation
    #
    class UpdateBotRequest < Struct.new(
      :account_id,
      :bot_id,
      :disabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot
    #   The updated bot details.
    #   @return [Types::Bot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateBotResponse AWS API Documentation
    #
    class UpdateBotResponse < Struct.new(
      :bot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGlobalSettingsRequest
    #   data as a hash:
    #
    #       {
    #         business_calling: { # required
    #           cdr_bucket: "String",
    #         },
    #         voice_connector: { # required
    #           cdr_bucket: "String",
    #         },
    #       }
    #
    # @!attribute [rw] business_calling
    #   The Amazon Chime Business Calling settings.
    #   @return [Types::BusinessCallingSettings]
    #
    # @!attribute [rw] voice_connector
    #   The Amazon Chime Voice Connector settings.
    #   @return [Types::VoiceConnectorSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateGlobalSettingsRequest AWS API Documentation
    #
    class UpdateGlobalSettingsRequest < Struct.new(
      :business_calling,
      :voice_connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePhoneNumberRequest
    #   data as a hash:
    #
    #       {
    #         phone_number_id: "String", # required
    #         product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector
    #         calling_name: "CallingName",
    #       }
    #
    # @!attribute [rw] phone_number_id
    #   The phone number ID.
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   The product type.
    #   @return [String]
    #
    # @!attribute [rw] calling_name
    #   The outbound calling name associated with the phone number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdatePhoneNumberRequest AWS API Documentation
    #
    class UpdatePhoneNumberRequest < Struct.new(
      :phone_number_id,
      :product_type,
      :calling_name)
      SENSITIVE = [:calling_name]
      include Aws::Structure
    end

    # The phone number ID, product type, or calling name fields to update,
    # used with the BatchUpdatePhoneNumber and UpdatePhoneNumber actions.
    #
    # @note When making an API call, you may pass UpdatePhoneNumberRequestItem
    #   data as a hash:
    #
    #       {
    #         phone_number_id: "NonEmptyString", # required
    #         product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector
    #         calling_name: "CallingName",
    #       }
    #
    # @!attribute [rw] phone_number_id
    #   The phone number ID to update.
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   The product type to update.
    #   @return [String]
    #
    # @!attribute [rw] calling_name
    #   The outbound calling name to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdatePhoneNumberRequestItem AWS API Documentation
    #
    class UpdatePhoneNumberRequestItem < Struct.new(
      :phone_number_id,
      :product_type,
      :calling_name)
      SENSITIVE = [:calling_name]
      include Aws::Structure
    end

    # @!attribute [rw] phone_number
    #   The updated phone number details.
    #   @return [Types::PhoneNumber]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdatePhoneNumberResponse AWS API Documentation
    #
    class UpdatePhoneNumberResponse < Struct.new(
      :phone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePhoneNumberSettingsRequest
    #   data as a hash:
    #
    #       {
    #         calling_name: "CallingName", # required
    #       }
    #
    # @!attribute [rw] calling_name
    #   The default outbound calling name for the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdatePhoneNumberSettingsRequest AWS API Documentation
    #
    class UpdatePhoneNumberSettingsRequest < Struct.new(
      :calling_name)
      SENSITIVE = [:calling_name]
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateProxySessionRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString128", # required
    #         proxy_session_id: "NonEmptyString128", # required
    #         capabilities: ["Voice"], # required, accepts Voice, SMS
    #         expiry_minutes: 1,
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime voice connector ID.
    #   @return [String]
    #
    # @!attribute [rw] proxy_session_id
    #   The proxy session ID.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   The proxy session capabilities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] expiry_minutes
    #   The number of minutes allowed for the proxy session.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateProxySessionRequest AWS API Documentation
    #
    class UpdateProxySessionRequest < Struct.new(
      :voice_connector_id,
      :proxy_session_id,
      :capabilities,
      :expiry_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_session
    #   The proxy session details.
    #   @return [Types::ProxySession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateProxySessionResponse AWS API Documentation
    #
    class UpdateProxySessionResponse < Struct.new(
      :proxy_session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRoomMembershipRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         room_id: "NonEmptyString", # required
    #         member_id: "NonEmptyString", # required
    #         role: "Administrator", # accepts Administrator, Member
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] room_id
    #   The room ID.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The member ID.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The role of the member.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateRoomMembershipRequest AWS API Documentation
    #
    class UpdateRoomMembershipRequest < Struct.new(
      :account_id,
      :room_id,
      :member_id,
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] room_membership
    #   The room membership details.
    #   @return [Types::RoomMembership]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateRoomMembershipResponse AWS API Documentation
    #
    class UpdateRoomMembershipResponse < Struct.new(
      :room_membership)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRoomRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         room_id: "NonEmptyString", # required
    #         name: "SensitiveString",
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] room_id
    #   The room ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The room name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateRoomRequest AWS API Documentation
    #
    class UpdateRoomRequest < Struct.new(
      :account_id,
      :room_id,
      :name)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] room
    #   The room details.
    #   @return [Types::Room]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateRoomResponse AWS API Documentation
    #
    class UpdateRoomResponse < Struct.new(
      :room)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_id: "NonEmptyString", # required
    #         license_type: "Basic", # accepts Basic, Plus, Pro, ProTrial
    #         user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #         alexa_for_business_metadata: {
    #           is_alexa_for_business_enabled: false,
    #           alexa_for_business_room_arn: "SensitiveString",
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @!attribute [rw] license_type
    #   The user license type to update. This must be a supported license
    #   type for the Amazon Chime account that the user belongs to.
    #   @return [String]
    #
    # @!attribute [rw] user_type
    #   The user type.
    #   @return [String]
    #
    # @!attribute [rw] alexa_for_business_metadata
    #   The Alexa for Business metadata.
    #   @return [Types::AlexaForBusinessMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :account_id,
      :user_id,
      :license_type,
      :user_type,
      :alexa_for_business_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user ID and user fields to update, used with the BatchUpdateUser
    # action.
    #
    # @note When making an API call, you may pass UpdateUserRequestItem
    #   data as a hash:
    #
    #       {
    #         user_id: "NonEmptyString", # required
    #         license_type: "Basic", # accepts Basic, Plus, Pro, ProTrial
    #         user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #         alexa_for_business_metadata: {
    #           is_alexa_for_business_enabled: false,
    #           alexa_for_business_room_arn: "SensitiveString",
    #         },
    #       }
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @!attribute [rw] license_type
    #   The user license type.
    #   @return [String]
    #
    # @!attribute [rw] user_type
    #   The user type.
    #   @return [String]
    #
    # @!attribute [rw] alexa_for_business_metadata
    #   The Alexa for Business metadata.
    #   @return [Types::AlexaForBusinessMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateUserRequestItem AWS API Documentation
    #
    class UpdateUserRequestItem < Struct.new(
      :user_id,
      :license_type,
      :user_type,
      :alexa_for_business_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The updated user details.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateUserResponse AWS API Documentation
    #
    class UpdateUserResponse < Struct.new(
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserSettingsRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "String", # required
    #         user_id: "String", # required
    #         user_settings: { # required
    #           telephony: { # required
    #             inbound_calling: false, # required
    #             outbound_calling: false, # required
    #             sms: false, # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @!attribute [rw] user_settings
    #   The user settings to update.
    #   @return [Types::UserSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateUserSettingsRequest AWS API Documentation
    #
    class UpdateUserSettingsRequest < Struct.new(
      :account_id,
      :user_id,
      :user_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVoiceConnectorGroupRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_group_id: "NonEmptyString", # required
    #         name: "VoiceConnectorGroupName", # required
    #         voice_connector_items: [ # required
    #           {
    #             voice_connector_id: "NonEmptyString", # required
    #             priority: 1, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] voice_connector_group_id
    #   The Amazon Chime Voice Connector group ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Amazon Chime Voice Connector group.
    #   @return [String]
    #
    # @!attribute [rw] voice_connector_items
    #   The `VoiceConnectorItems` to associate with the group.
    #   @return [Array<Types::VoiceConnectorItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateVoiceConnectorGroupRequest AWS API Documentation
    #
    class UpdateVoiceConnectorGroupRequest < Struct.new(
      :voice_connector_group_id,
      :name,
      :voice_connector_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_group
    #   The updated Amazon Chime Voice Connector group details.
    #   @return [Types::VoiceConnectorGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateVoiceConnectorGroupResponse AWS API Documentation
    #
    class UpdateVoiceConnectorGroupResponse < Struct.new(
      :voice_connector_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVoiceConnectorRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         name: "VoiceConnectorName", # required
    #         require_encryption: false, # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Amazon Chime Voice Connector.
    #   @return [String]
    #
    # @!attribute [rw] require_encryption
    #   When enabled, requires encryption for the Amazon Chime Voice
    #   Connector.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateVoiceConnectorRequest AWS API Documentation
    #
    class UpdateVoiceConnectorRequest < Struct.new(
      :voice_connector_id,
      :name,
      :require_encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector
    #   The updated Amazon Chime Voice Connector details.
    #   @return [Types::VoiceConnector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateVoiceConnectorResponse AWS API Documentation
    #
    class UpdateVoiceConnectorResponse < Struct.new(
      :voice_connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user on the Amazon Chime account.
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] primary_email
    #   The primary email address of the user.
    #   @return [String]
    #
    # @!attribute [rw] primary_provisioned_number
    #   The primary phone number associated with the user.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the user.
    #   @return [String]
    #
    # @!attribute [rw] license_type
    #   The license type for the user.
    #   @return [String]
    #
    # @!attribute [rw] user_type
    #   The user type.
    #   @return [String]
    #
    # @!attribute [rw] user_registration_status
    #   The user registration status.
    #   @return [String]
    #
    # @!attribute [rw] user_invitation_status
    #   The user invite status.
    #   @return [String]
    #
    # @!attribute [rw] registered_on
    #   Date and time when the user is registered, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] invited_on
    #   Date and time when the user is invited to the Amazon Chime account,
    #   in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] alexa_for_business_metadata
    #   The Alexa for Business metadata.
    #   @return [Types::AlexaForBusinessMetadata]
    #
    # @!attribute [rw] personal_pin
    #   The user's personal meeting PIN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/User AWS API Documentation
    #
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
      :personal_pin)
      SENSITIVE = [:primary_email, :primary_provisioned_number, :display_name]
      include Aws::Structure
    end

    # The list of errors returned when errors are encountered during the
    # BatchSuspendUser, BatchUnsuspendUser, or BatchUpdateUser actions. This
    # includes user IDs, error codes, and error messages.
    #
    # @!attribute [rw] user_id
    #   The user ID for which the action failed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UserError AWS API Documentation
    #
    class UserError < Struct.new(
      :user_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings associated with an Amazon Chime user, including inbound and
    # outbound calling and text messaging.
    #
    # @note When making an API call, you may pass UserSettings
    #   data as a hash:
    #
    #       {
    #         telephony: { # required
    #           inbound_calling: false, # required
    #           outbound_calling: false, # required
    #           sms: false, # required
    #         },
    #       }
    #
    # @!attribute [rw] telephony
    #   The telephony settings associated with the user.
    #   @return [Types::TelephonySettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UserSettings AWS API Documentation
    #
    class UserSettings < Struct.new(
      :telephony)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Chime Voice Connector configuration, including outbound
    # host name and encryption settings.
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region in which the Amazon Chime Voice Connector is created.
    #   Default: `us-east-1`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Amazon Chime Voice Connector.
    #   @return [String]
    #
    # @!attribute [rw] outbound_host_name
    #   The outbound host name for the Amazon Chime Voice Connector.
    #   @return [String]
    #
    # @!attribute [rw] require_encryption
    #   Designates whether encryption is required for the Amazon Chime Voice
    #   Connector.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_timestamp
    #   The Amazon Chime Voice Connector creation timestamp, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The updated Amazon Chime Voice Connector timestamp, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/VoiceConnector AWS API Documentation
    #
    class VoiceConnector < Struct.new(
      :voice_connector_id,
      :aws_region,
      :name,
      :outbound_host_name,
      :require_encryption,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Chime Voice Connector group configuration, including
    # associated Amazon Chime Voice Connectors. You can include Amazon Chime
    # Voice Connectors from different AWS Regions in your group. This
    # creates a fault tolerant mechanism for fallback in case of
    # availability events.
    #
    # @!attribute [rw] voice_connector_group_id
    #   The Amazon Chime Voice Connector group ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Amazon Chime Voice Connector group.
    #   @return [String]
    #
    # @!attribute [rw] voice_connector_items
    #   The Amazon Chime Voice Connectors to which to route inbound calls.
    #   @return [Array<Types::VoiceConnectorItem>]
    #
    # @!attribute [rw] created_timestamp
    #   The Amazon Chime Voice Connector group creation timestamp, in ISO
    #   8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The updated Amazon Chime Voice Connector group timestamp, in ISO
    #   8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/VoiceConnectorGroup AWS API Documentation
    #
    class VoiceConnectorGroup < Struct.new(
      :voice_connector_group_id,
      :name,
      :voice_connector_items,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # For Amazon Chime Voice Connector groups, the Amazon Chime Voice
    # Connectors to which to route inbound calls. Includes priority
    # configuration settings. Limit: 3 `VoiceConnectorItems` per Amazon
    # Chime Voice Connector group.
    #
    # @note When making an API call, you may pass VoiceConnectorItem
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         priority: 1, # required
    #       }
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority associated with the Amazon Chime Voice Connector, with
    #   1 being the highest priority. Higher priority Amazon Chime Voice
    #   Connectors are attempted first.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/VoiceConnectorItem AWS API Documentation
    #
    class VoiceConnectorItem < Struct.new(
      :voice_connector_id,
      :priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Chime Voice Connector settings. Includes any Amazon S3
    # buckets designated for storing call detail records.
    #
    # @note When making an API call, you may pass VoiceConnectorSettings
    #   data as a hash:
    #
    #       {
    #         cdr_bucket: "String",
    #       }
    #
    # @!attribute [rw] cdr_bucket
    #   The Amazon S3 bucket designated for call detail record storage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/VoiceConnectorSettings AWS API Documentation
    #
    class VoiceConnectorSettings < Struct.new(
      :cdr_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
