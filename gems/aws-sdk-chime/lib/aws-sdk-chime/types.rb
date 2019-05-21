# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Chime
  module Types

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Account AWS API Documentation
    #
    class Account < Struct.new(
      :aws_account_id,
      :account_id,
      :name,
      :account_type,
      :created_timestamp,
      :default_license,
      :supported_licenses)
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociatePhoneNumberWithUserResponse AWS API Documentation
    #
    class AssociatePhoneNumberWithUserResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociatePhoneNumbersWithVoiceConnectorRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         e164_phone_numbers: ["E164PhoneNumber"],
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociatePhoneNumbersWithVoiceConnectorRequest AWS API Documentation
    #
    class AssociatePhoneNumbersWithVoiceConnectorRequest < Struct.new(
      :voice_connector_id,
      :e164_phone_numbers)
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
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] update_phone_number_request_items
    #   The request containing the phone number IDs and product types to
    #   update.
    #   @return [Array<Types::UpdatePhoneNumberRequestItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUpdatePhoneNumberRequest AWS API Documentation
    #
    class BatchUpdatePhoneNumberRequest < Struct.new(
      :update_phone_number_request_items)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVoiceConnectorRequest
    #   data as a hash:
    #
    #       {
    #         name: "VoiceConnectorName", # required
    #         require_encryption: false, # required
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateVoiceConnectorRequest AWS API Documentation
    #
    class CreateVoiceConnectorRequest < Struct.new(
      :name,
      :require_encryption)
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAccountResponse AWS API Documentation
    #
    class DeleteAccountResponse < Aws::EmptyStructure; end

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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVoiceConnectorTerminationCredentialsRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         usernames: ["SensitiveString"],
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociatePhoneNumberFromUserResponse AWS API Documentation
    #
    class DisassociatePhoneNumberFromUserResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociatePhoneNumbersFromVoiceConnectorRequest
    #   data as a hash:
    #
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         e164_phone_numbers: ["E164PhoneNumber"],
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass InviteUsersRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_email_list: ["EmailAddress"], # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] user_email_list
    #   The user email addresses to which to send the invite.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/InviteUsersRequest AWS API Documentation
    #
    class InviteUsersRequest < Struct.new(
      :account_id,
      :user_email_list)
      include Aws::Structure
    end

    # @!attribute [rw] invites
    #   The invite details.
    #   @return [Array<Types::Invite>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/InviteUsersResponse AWS API Documentation
    #
    class InviteUsersResponse < Struct.new(
      :invites)
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
    #   The maximum number of results to return in a single call. Default is
    #   10.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPhoneNumbersRequest
    #   data as a hash:
    #
    #       {
    #         status: "AcquireInProgress", # accepts AcquireInProgress, AcquireFailed, Unassigned, Assigned, ReleaseInProgress, DeleteInProgress, ReleaseFailed, DeleteFailed
    #         product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector
    #         filter_name: "AccountId", # accepts AccountId, UserId, VoiceConnectorId
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUsersRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_email: "EmailAddress",
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
      :max_results,
      :next_token)
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/LogoutUserResponse AWS API Documentation
    #
    class LogoutUserResponse < Aws::EmptyStructure; end

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
      include Aws::Structure
    end

    # Origination routes define call distribution properties for your SIP
    # hosts to receive inbound calls using your Amazon Chime Voice
    # Connector. Limit: 10 origination routes per Amazon Chime Voice
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
    #   The FODN or IP address to contact for origination traffic.
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
      :product_type,
      :status,
      :capabilities,
      :associations,
      :created_timestamp,
      :updated_timestamp,
      :deletion_timestamp)
      include Aws::Structure
    end

    # The phone number associations, such as Amazon Chime account ID, Amazon
    # Chime user ID, or Amazon Chime Voice Connector ID.
    #
    # @!attribute [rw] value
    #   Contains the ID for the entity specified in Name.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Defines the association with an Amazon Chime account ID, user ID, or
    #   Amazon Chime Voice Connector ID.
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
      include Aws::Structure
    end

    # The phone number capabilities, such as enabled inbound and outbound
    # calling and text messaging.
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
      include Aws::Structure
    end

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
      :max_results,
      :next_token)
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
    #   limit. Default value of 1.
    #   @return [Integer]
    #
    # @!attribute [rw] default_phone_number
    #   The default caller ID phone number.
    #   @return [String]
    #
    # @!attribute [rw] calling_regions
    #   The countries to which calls are allowed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cidr_allowed_list
    #   The IP addresses allowed to make calls, in CIDR format.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePhoneNumberRequest
    #   data as a hash:
    #
    #       {
    #         phone_number_id: "String", # required
    #         product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdatePhoneNumberRequest AWS API Documentation
    #
    class UpdatePhoneNumberRequest < Struct.new(
      :phone_number_id,
      :product_type)
      include Aws::Structure
    end

    # The phone number ID and product type fields to update, used with the
    # BatchUpdatePhoneNumber and UpdatePhoneNumber actions.
    #
    # @note When making an API call, you may pass UpdatePhoneNumberRequestItem
    #   data as a hash:
    #
    #       {
    #         phone_number_id: "NonEmptyString", # required
    #         product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdatePhoneNumberRequestItem AWS API Documentation
    #
    class UpdatePhoneNumberRequestItem < Struct.new(
      :phone_number_id,
      :product_type)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserRequest
    #   data as a hash:
    #
    #       {
    #         account_id: "NonEmptyString", # required
    #         user_id: "NonEmptyString", # required
    #         license_type: "Basic", # accepts Basic, Plus, Pro, ProTrial
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :account_id,
      :user_id,
      :license_type)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateUserRequestItem AWS API Documentation
    #
    class UpdateUserRequestItem < Struct.new(
      :user_id,
      :license_type)
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
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector
    #   The Amazon Chime Voice Connector details.
    #   @return [Types::VoiceConnector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateVoiceConnectorResponse AWS API Documentation
    #
    class UpdateVoiceConnectorResponse < Struct.new(
      :voice_connector)
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
      :user_registration_status,
      :user_invitation_status,
      :registered_on,
      :invited_on,
      :personal_pin)
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
      include Aws::Structure
    end

    # The Amazon Chime Voice Connector configuration, including outbound
    # host name and encryption settings.
    #
    # @!attribute [rw] voice_connector_id
    #   The Amazon Chime Voice Connector ID.
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
      :name,
      :outbound_host_name,
      :require_encryption,
      :created_timestamp,
      :updated_timestamp)
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
      include Aws::Structure
    end

  end
end
