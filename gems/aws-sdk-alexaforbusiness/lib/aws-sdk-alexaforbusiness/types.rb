# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AlexaForBusiness
  module Types

    # An address book with attributes.
    #
    # @!attribute [rw] address_book_arn
    #   The ARN of the address book.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the address book.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the address book.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AddressBook AWS API Documentation
    #
    class AddressBook < Struct.new(
      :address_book_arn,
      :name,
      :description)
      include Aws::Structure
    end

    # Information related to an address book.
    #
    # @!attribute [rw] address_book_arn
    #   The ARN of the address book.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the address book.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the address book.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AddressBookData AWS API Documentation
    #
    class AddressBookData < Struct.new(
      :address_book_arn,
      :name,
      :description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ApproveSkillRequest
    #   data as a hash:
    #
    #       {
    #         skill_id: "SkillId", # required
    #       }
    #
    # @!attribute [rw] skill_id
    #   The unique identifier of the skill.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ApproveSkillRequest AWS API Documentation
    #
    class ApproveSkillRequest < Struct.new(
      :skill_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ApproveSkillResponse AWS API Documentation
    #
    class ApproveSkillResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateContactWithAddressBookRequest
    #   data as a hash:
    #
    #       {
    #         contact_arn: "Arn", # required
    #         address_book_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] contact_arn
    #   The ARN of the contact to associate with an address book.
    #   @return [String]
    #
    # @!attribute [rw] address_book_arn
    #   The ARN of the address book with which to associate the contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateContactWithAddressBookRequest AWS API Documentation
    #
    class AssociateContactWithAddressBookRequest < Struct.new(
      :contact_arn,
      :address_book_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateContactWithAddressBookResponse AWS API Documentation
    #
    class AssociateContactWithAddressBookResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateDeviceWithRoomRequest
    #   data as a hash:
    #
    #       {
    #         device_arn: "Arn",
    #         room_arn: "Arn",
    #       }
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device to associate to a room. Required.
    #   @return [String]
    #
    # @!attribute [rw] room_arn
    #   The ARN of the room with which to associate the device. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateDeviceWithRoomRequest AWS API Documentation
    #
    class AssociateDeviceWithRoomRequest < Struct.new(
      :device_arn,
      :room_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateDeviceWithRoomResponse AWS API Documentation
    #
    class AssociateDeviceWithRoomResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateSkillGroupWithRoomRequest
    #   data as a hash:
    #
    #       {
    #         skill_group_arn: "Arn",
    #         room_arn: "Arn",
    #       }
    #
    # @!attribute [rw] skill_group_arn
    #   The ARN of the skill group to associate with a room. Required.
    #   @return [String]
    #
    # @!attribute [rw] room_arn
    #   The ARN of the room with which to associate the skill group.
    #   Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateSkillGroupWithRoomRequest AWS API Documentation
    #
    class AssociateSkillGroupWithRoomRequest < Struct.new(
      :skill_group_arn,
      :room_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateSkillGroupWithRoomResponse AWS API Documentation
    #
    class AssociateSkillGroupWithRoomResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateSkillWithSkillGroupRequest
    #   data as a hash:
    #
    #       {
    #         skill_group_arn: "Arn",
    #         skill_id: "SkillId", # required
    #       }
    #
    # @!attribute [rw] skill_group_arn
    #   The ARN of the skill group to associate the skill to. Required.
    #   @return [String]
    #
    # @!attribute [rw] skill_id
    #   The unique identifier of the skill.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateSkillWithSkillGroupRequest AWS API Documentation
    #
    class AssociateSkillWithSkillGroupRequest < Struct.new(
      :skill_group_arn,
      :skill_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateSkillWithSkillGroupResponse AWS API Documentation
    #
    class AssociateSkillWithSkillGroupResponse < Aws::EmptyStructure; end

    # The skill store category that is shown. Alexa skills are assigned a
    # specific skill category during creation, such as News, Social, and
    # Sports.
    #
    # @!attribute [rw] category_id
    #   The ID of the skill store category.
    #   @return [Integer]
    #
    # @!attribute [rw] category_name
    #   The name of the skill store category.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Category AWS API Documentation
    #
    class Category < Struct.new(
      :category_id,
      :category_name)
      include Aws::Structure
    end

    # The default conference provider that is used if no other scheduled
    # meetings are detected.
    #
    # @note When making an API call, you may pass ConferencePreference
    #   data as a hash:
    #
    #       {
    #         default_conference_provider_arn: "Arn",
    #       }
    #
    # @!attribute [rw] default_conference_provider_arn
    #   The ARN of the default conference provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ConferencePreference AWS API Documentation
    #
    class ConferencePreference < Struct.new(
      :default_conference_provider_arn)
      include Aws::Structure
    end

    # An entity that provides a conferencing solution. Alexa for Business
    # acts as the voice interface and mediator that connects users to their
    # preferred conference provider. Examples of conference providers
    # include Amazon Chime, Zoom, Cisco, and Polycom.
    #
    # @!attribute [rw] arn
    #   The ARN of the newly created conference provider.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the conference provider.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of conference providers.
    #   @return [String]
    #
    # @!attribute [rw] ip_dial_in
    #   The IP endpoint and protocol for calling.
    #   @return [Types::IPDialIn]
    #
    # @!attribute [rw] pstn_dial_in
    #   The information for PSTN conferencing.
    #   @return [Types::PSTNDialIn]
    #
    # @!attribute [rw] meeting_setting
    #   The meeting settings for the conference provider.
    #   @return [Types::MeetingSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ConferenceProvider AWS API Documentation
    #
    class ConferenceProvider < Struct.new(
      :arn,
      :name,
      :type,
      :ip_dial_in,
      :pstn_dial_in,
      :meeting_setting)
      include Aws::Structure
    end

    # A contact with attributes.
    #
    # @!attribute [rw] contact_arn
    #   The ARN of the contact.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the contact to display on the console.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name of the contact, used to call the contact on the
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the contact, used to call the contact on the
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number of the contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Contact AWS API Documentation
    #
    class Contact < Struct.new(
      :contact_arn,
      :display_name,
      :first_name,
      :last_name,
      :phone_number)
      include Aws::Structure
    end

    # Information related to a contact.
    #
    # @!attribute [rw] contact_arn
    #   The ARN of the contact.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the contact to display on the console.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name of the contact, used to call the contact on the
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the contact, used to call the contact on the
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number of the contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ContactData AWS API Documentation
    #
    class ContactData < Struct.new(
      :contact_arn,
      :display_name,
      :first_name,
      :last_name,
      :phone_number)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAddressBookRequest
    #   data as a hash:
    #
    #       {
    #         name: "AddressBookName", # required
    #         description: "AddressBookDescription",
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the address book.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the address book.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, user-specified identifier for the request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateAddressBookRequest AWS API Documentation
    #
    class CreateAddressBookRequest < Struct.new(
      :name,
      :description,
      :client_request_token)
      include Aws::Structure
    end

    # @!attribute [rw] address_book_arn
    #   The ARN of the newly created address book.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateAddressBookResponse AWS API Documentation
    #
    class CreateAddressBookResponse < Struct.new(
      :address_book_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateConferenceProviderRequest
    #   data as a hash:
    #
    #       {
    #         conference_provider_name: "ConferenceProviderName", # required
    #         conference_provider_type: "CHIME", # required, accepts CHIME, BLUEJEANS, FUZE, GOOGLE_HANGOUTS, POLYCOM, RINGCENTRAL, SKYPE_FOR_BUSINESS, WEBEX, ZOOM, CUSTOM
    #         ip_dial_in: {
    #           endpoint: "Endpoint", # required
    #           comms_protocol: "SIP", # required, accepts SIP, SIPS, H323
    #         },
    #         pstn_dial_in: {
    #           country_code: "CountryCode", # required
    #           phone_number: "PhoneNumber", # required
    #           one_click_id_delay: "OneClickIdDelay", # required
    #           one_click_pin_delay: "OneClickPinDelay", # required
    #         },
    #         meeting_setting: { # required
    #           require_pin: "YES", # required, accepts YES, NO, OPTIONAL
    #         },
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] conference_provider_name
    #   The name of the conference provider.
    #   @return [String]
    #
    # @!attribute [rw] conference_provider_type
    #   Represents a type within a list of predefined types.
    #   @return [String]
    #
    # @!attribute [rw] ip_dial_in
    #   The IP endpoint and protocol for calling.
    #   @return [Types::IPDialIn]
    #
    # @!attribute [rw] pstn_dial_in
    #   The information for PSTN conferencing.
    #   @return [Types::PSTNDialIn]
    #
    # @!attribute [rw] meeting_setting
    #   The meeting settings for the conference provider.
    #   @return [Types::MeetingSetting]
    #
    # @!attribute [rw] client_request_token
    #   The request token of the client.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateConferenceProviderRequest AWS API Documentation
    #
    class CreateConferenceProviderRequest < Struct.new(
      :conference_provider_name,
      :conference_provider_type,
      :ip_dial_in,
      :pstn_dial_in,
      :meeting_setting,
      :client_request_token)
      include Aws::Structure
    end

    # @!attribute [rw] conference_provider_arn
    #   The ARN of the newly-created conference provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateConferenceProviderResponse AWS API Documentation
    #
    class CreateConferenceProviderResponse < Struct.new(
      :conference_provider_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateContactRequest
    #   data as a hash:
    #
    #       {
    #         display_name: "ContactName",
    #         first_name: "ContactName", # required
    #         last_name: "ContactName",
    #         phone_number: "E164PhoneNumber", # required
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] display_name
    #   The name of the contact to display on the console.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name of the contact that is used to call the contact on
    #   the device.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the contact that is used to call the contact on the
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number of the contact in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, user-specified identifier for this request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateContactRequest AWS API Documentation
    #
    class CreateContactRequest < Struct.new(
      :display_name,
      :first_name,
      :last_name,
      :phone_number,
      :client_request_token)
      include Aws::Structure
    end

    # @!attribute [rw] contact_arn
    #   The ARN of the newly created address book.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateContactResponse AWS API Documentation
    #
    class CreateContactResponse < Struct.new(
      :contact_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProfileRequest
    #   data as a hash:
    #
    #       {
    #         profile_name: "ProfileName", # required
    #         timezone: "Timezone", # required
    #         address: "Address", # required
    #         distance_unit: "METRIC", # required, accepts METRIC, IMPERIAL
    #         temperature_unit: "FAHRENHEIT", # required, accepts FAHRENHEIT, CELSIUS
    #         wake_word: "ALEXA", # required, accepts ALEXA, AMAZON, ECHO, COMPUTER
    #         client_request_token: "ClientRequestToken",
    #         setup_mode_disabled: false,
    #         max_volume_limit: 1,
    #         pstn_enabled: false,
    #       }
    #
    # @!attribute [rw] profile_name
    #   The name of a room profile.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The time zone used by a room profile.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The valid address for the room.
    #   @return [String]
    #
    # @!attribute [rw] distance_unit
    #   The distance unit to be used by devices in the profile.
    #   @return [String]
    #
    # @!attribute [rw] temperature_unit
    #   The temperature unit to be used by devices in the profile.
    #   @return [String]
    #
    # @!attribute [rw] wake_word
    #   A wake word for Alexa, Echo, Amazon, or a computer.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The user-specified token that is used during the creation of a
    #   profile.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] setup_mode_disabled
    #   Whether room profile setup is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_volume_limit
    #   The maximum volume limit for a room profile.
    #   @return [Integer]
    #
    # @!attribute [rw] pstn_enabled
    #   Whether PSTN calling is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateProfileRequest AWS API Documentation
    #
    class CreateProfileRequest < Struct.new(
      :profile_name,
      :timezone,
      :address,
      :distance_unit,
      :temperature_unit,
      :wake_word,
      :client_request_token,
      :setup_mode_disabled,
      :max_volume_limit,
      :pstn_enabled)
      include Aws::Structure
    end

    # @!attribute [rw] profile_arn
    #   The ARN of the newly created room profile in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateProfileResponse AWS API Documentation
    #
    class CreateProfileResponse < Struct.new(
      :profile_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRoomRequest
    #   data as a hash:
    #
    #       {
    #         room_name: "RoomName", # required
    #         description: "RoomDescription",
    #         profile_arn: "Arn",
    #         provider_calendar_id: "ProviderCalendarId",
    #         client_request_token: "ClientRequestToken",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] room_name
    #   The name for the room.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the room.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The profile ARN for the room.
    #   @return [String]
    #
    # @!attribute [rw] provider_calendar_id
    #   The calendar ARN for the room.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, user-specified identifier for this request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the room.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateRoomRequest AWS API Documentation
    #
    class CreateRoomRequest < Struct.new(
      :room_name,
      :description,
      :profile_arn,
      :provider_calendar_id,
      :client_request_token,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] room_arn
    #   The ARN of the newly created room in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateRoomResponse AWS API Documentation
    #
    class CreateRoomResponse < Struct.new(
      :room_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSkillGroupRequest
    #   data as a hash:
    #
    #       {
    #         skill_group_name: "SkillGroupName", # required
    #         description: "SkillGroupDescription",
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] skill_group_name
    #   The name for the skill group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the skill group.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, user-specified identifier for this request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateSkillGroupRequest AWS API Documentation
    #
    class CreateSkillGroupRequest < Struct.new(
      :skill_group_name,
      :description,
      :client_request_token)
      include Aws::Structure
    end

    # @!attribute [rw] skill_group_arn
    #   The ARN of the newly created skill group in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateSkillGroupResponse AWS API Documentation
    #
    class CreateSkillGroupResponse < Struct.new(
      :skill_group_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUserRequest
    #   data as a hash:
    #
    #       {
    #         user_id: "user_UserId", # required
    #         first_name: "user_FirstName",
    #         last_name: "user_LastName",
    #         email: "Email",
    #         client_request_token: "ClientRequestToken",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] user_id
    #   The ARN for the user.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name for the user.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name for the user.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address for the user.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, user-specified identifier for this request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the user.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :user_id,
      :first_name,
      :last_name,
      :email,
      :client_request_token,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] user_arn
    #   The ARN of the newly created user in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Struct.new(
      :user_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAddressBookRequest
    #   data as a hash:
    #
    #       {
    #         address_book_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] address_book_arn
    #   The ARN of the address book to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteAddressBookRequest AWS API Documentation
    #
    class DeleteAddressBookRequest < Struct.new(
      :address_book_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteAddressBookResponse AWS API Documentation
    #
    class DeleteAddressBookResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteConferenceProviderRequest
    #   data as a hash:
    #
    #       {
    #         conference_provider_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] conference_provider_arn
    #   The ARN of the conference provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteConferenceProviderRequest AWS API Documentation
    #
    class DeleteConferenceProviderRequest < Struct.new(
      :conference_provider_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteConferenceProviderResponse AWS API Documentation
    #
    class DeleteConferenceProviderResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteContactRequest
    #   data as a hash:
    #
    #       {
    #         contact_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] contact_arn
    #   The ARN of the contact to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteContactRequest AWS API Documentation
    #
    class DeleteContactRequest < Struct.new(
      :contact_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteContactResponse AWS API Documentation
    #
    class DeleteContactResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteDeviceRequest
    #   data as a hash:
    #
    #       {
    #         device_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device for which to request details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteDeviceRequest AWS API Documentation
    #
    class DeleteDeviceRequest < Struct.new(
      :device_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteDeviceResponse AWS API Documentation
    #
    class DeleteDeviceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteProfileRequest
    #   data as a hash:
    #
    #       {
    #         profile_arn: "Arn",
    #       }
    #
    # @!attribute [rw] profile_arn
    #   The ARN of the room profile to delete. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteProfileRequest AWS API Documentation
    #
    class DeleteProfileRequest < Struct.new(
      :profile_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteProfileResponse AWS API Documentation
    #
    class DeleteProfileResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteRoomRequest
    #   data as a hash:
    #
    #       {
    #         room_arn: "Arn",
    #       }
    #
    # @!attribute [rw] room_arn
    #   The ARN of the room to delete. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteRoomRequest AWS API Documentation
    #
    class DeleteRoomRequest < Struct.new(
      :room_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteRoomResponse AWS API Documentation
    #
    class DeleteRoomResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteRoomSkillParameterRequest
    #   data as a hash:
    #
    #       {
    #         room_arn: "Arn",
    #         skill_id: "SkillId", # required
    #         parameter_key: "RoomSkillParameterKey", # required
    #       }
    #
    # @!attribute [rw] room_arn
    #   The ARN of the room from which to remove the room skill parameter
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] skill_id
    #   The ID of the skill from which to remove the room skill parameter
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] parameter_key
    #   The room skill parameter key for which to remove details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteRoomSkillParameterRequest AWS API Documentation
    #
    class DeleteRoomSkillParameterRequest < Struct.new(
      :room_arn,
      :skill_id,
      :parameter_key)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteRoomSkillParameterResponse AWS API Documentation
    #
    class DeleteRoomSkillParameterResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteSkillAuthorizationRequest
    #   data as a hash:
    #
    #       {
    #         skill_id: "SkillId", # required
    #         room_arn: "Arn",
    #       }
    #
    # @!attribute [rw] skill_id
    #   The unique identifier of a skill.
    #   @return [String]
    #
    # @!attribute [rw] room_arn
    #   The room that the skill is authorized for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteSkillAuthorizationRequest AWS API Documentation
    #
    class DeleteSkillAuthorizationRequest < Struct.new(
      :skill_id,
      :room_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteSkillAuthorizationResponse AWS API Documentation
    #
    class DeleteSkillAuthorizationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteSkillGroupRequest
    #   data as a hash:
    #
    #       {
    #         skill_group_arn: "Arn",
    #       }
    #
    # @!attribute [rw] skill_group_arn
    #   The ARN of the skill group to delete. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteSkillGroupRequest AWS API Documentation
    #
    class DeleteSkillGroupRequest < Struct.new(
      :skill_group_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteSkillGroupResponse AWS API Documentation
    #
    class DeleteSkillGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteUserRequest
    #   data as a hash:
    #
    #       {
    #         user_arn: "Arn",
    #         enrollment_id: "EnrollmentId", # required
    #       }
    #
    # @!attribute [rw] user_arn
    #   The ARN of the user to delete in the organization. Required.
    #   @return [String]
    #
    # @!attribute [rw] enrollment_id
    #   The ARN of the user's enrollment in the organization. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :user_arn,
      :enrollment_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteUserResponse AWS API Documentation
    #
    class DeleteUserResponse < Aws::EmptyStructure; end

    # The details about the developer that published the skill.
    #
    # @!attribute [rw] developer_name
    #   The name of the developer.
    #   @return [String]
    #
    # @!attribute [rw] privacy_policy
    #   The URL of the privacy policy.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email of the developer.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The website of the developer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeveloperInfo AWS API Documentation
    #
    class DeveloperInfo < Struct.new(
      :developer_name,
      :privacy_policy,
      :email,
      :url)
      include Aws::Structure
    end

    # A device with attributes.
    #
    # @!attribute [rw] device_arn
    #   The ARN of a device.
    #   @return [String]
    #
    # @!attribute [rw] device_serial_number
    #   The serial number of a device.
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The type of a device.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The name of a device.
    #   @return [String]
    #
    # @!attribute [rw] software_version
    #   The software version of a device.
    #   @return [String]
    #
    # @!attribute [rw] mac_address
    #   The MAC address of a device.
    #   @return [String]
    #
    # @!attribute [rw] room_arn
    #   The room ARN of a device.
    #   @return [String]
    #
    # @!attribute [rw] device_status
    #   The status of a device. If the status is not READY, check the
    #   DeviceStatusInfo value for details.
    #   @return [String]
    #
    # @!attribute [rw] device_status_info
    #   Detailed information about a device's status.
    #   @return [Types::DeviceStatusInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Device AWS API Documentation
    #
    class Device < Struct.new(
      :device_arn,
      :device_serial_number,
      :device_type,
      :device_name,
      :software_version,
      :mac_address,
      :room_arn,
      :device_status,
      :device_status_info)
      include Aws::Structure
    end

    # Device attributes.
    #
    # @!attribute [rw] device_arn
    #   The ARN of a device.
    #   @return [String]
    #
    # @!attribute [rw] device_serial_number
    #   The serial number of a device.
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The type of a device.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The name of a device.
    #   @return [String]
    #
    # @!attribute [rw] software_version
    #   The software version of a device.
    #   @return [String]
    #
    # @!attribute [rw] mac_address
    #   The MAC address of a device.
    #   @return [String]
    #
    # @!attribute [rw] device_status
    #   The status of a device.
    #   @return [String]
    #
    # @!attribute [rw] room_arn
    #   The room ARN associated with a device.
    #   @return [String]
    #
    # @!attribute [rw] room_name
    #   The name of the room associated with a device.
    #   @return [String]
    #
    # @!attribute [rw] device_status_info
    #   Detailed information about a device's status.
    #   @return [Types::DeviceStatusInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeviceData AWS API Documentation
    #
    class DeviceData < Struct.new(
      :device_arn,
      :device_serial_number,
      :device_type,
      :device_name,
      :software_version,
      :mac_address,
      :device_status,
      :room_arn,
      :room_name,
      :device_status_info)
      include Aws::Structure
    end

    # The list of device events.
    #
    # @!attribute [rw] type
    #   The type of device event.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the event.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The time (in epoch) when the event occurred.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeviceEvent AWS API Documentation
    #
    class DeviceEvent < Struct.new(
      :type,
      :value,
      :timestamp)
      include Aws::Structure
    end

    # Details of a device’s status.
    #
    # @!attribute [rw] code
    #   The device status detail code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeviceStatusDetail AWS API Documentation
    #
    class DeviceStatusDetail < Struct.new(
      :code)
      include Aws::Structure
    end

    # Detailed information about a device's status.
    #
    # @!attribute [rw] device_status_details
    #   One or more device status detail descriptions.
    #   @return [Array<Types::DeviceStatusDetail>]
    #
    # @!attribute [rw] connection_status
    #   The latest available information about the connection status of a
    #   device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeviceStatusInfo AWS API Documentation
    #
    class DeviceStatusInfo < Struct.new(
      :device_status_details,
      :connection_status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateContactFromAddressBookRequest
    #   data as a hash:
    #
    #       {
    #         contact_arn: "Arn", # required
    #         address_book_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] contact_arn
    #   The ARN of the contact to disassociate from an address book.
    #   @return [String]
    #
    # @!attribute [rw] address_book_arn
    #   The ARN of the address from which to disassociate the contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateContactFromAddressBookRequest AWS API Documentation
    #
    class DisassociateContactFromAddressBookRequest < Struct.new(
      :contact_arn,
      :address_book_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateContactFromAddressBookResponse AWS API Documentation
    #
    class DisassociateContactFromAddressBookResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateDeviceFromRoomRequest
    #   data as a hash:
    #
    #       {
    #         device_arn: "Arn",
    #       }
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device to disassociate from a room. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateDeviceFromRoomRequest AWS API Documentation
    #
    class DisassociateDeviceFromRoomRequest < Struct.new(
      :device_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateDeviceFromRoomResponse AWS API Documentation
    #
    class DisassociateDeviceFromRoomResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateSkillFromSkillGroupRequest
    #   data as a hash:
    #
    #       {
    #         skill_group_arn: "Arn",
    #         skill_id: "SkillId", # required
    #       }
    #
    # @!attribute [rw] skill_group_arn
    #   The unique identifier of a skill. Required.
    #   @return [String]
    #
    # @!attribute [rw] skill_id
    #   The ARN of a skill group to associate to a skill.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateSkillFromSkillGroupRequest AWS API Documentation
    #
    class DisassociateSkillFromSkillGroupRequest < Struct.new(
      :skill_group_arn,
      :skill_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateSkillFromSkillGroupResponse AWS API Documentation
    #
    class DisassociateSkillFromSkillGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateSkillGroupFromRoomRequest
    #   data as a hash:
    #
    #       {
    #         skill_group_arn: "Arn",
    #         room_arn: "Arn",
    #       }
    #
    # @!attribute [rw] skill_group_arn
    #   The ARN of the skill group to disassociate from a room. Required.
    #   @return [String]
    #
    # @!attribute [rw] room_arn
    #   The ARN of the room from which the skill group is to be
    #   disassociated. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateSkillGroupFromRoomRequest AWS API Documentation
    #
    class DisassociateSkillGroupFromRoomRequest < Struct.new(
      :skill_group_arn,
      :room_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateSkillGroupFromRoomResponse AWS API Documentation
    #
    class DisassociateSkillGroupFromRoomResponse < Aws::EmptyStructure; end

    # A filter name and value pair that is used to return a more specific
    # list of results. Filters can be used to match a set of resources by
    # various criteria.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       }
    #
    # @!attribute [rw] key
    #   The key of a filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of a filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ForgetSmartHomeAppliancesRequest
    #   data as a hash:
    #
    #       {
    #         room_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] room_arn
    #   The room that the appliances are associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ForgetSmartHomeAppliancesRequest AWS API Documentation
    #
    class ForgetSmartHomeAppliancesRequest < Struct.new(
      :room_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ForgetSmartHomeAppliancesResponse AWS API Documentation
    #
    class ForgetSmartHomeAppliancesResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GetAddressBookRequest
    #   data as a hash:
    #
    #       {
    #         address_book_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] address_book_arn
    #   The ARN of the address book for which to request details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetAddressBookRequest AWS API Documentation
    #
    class GetAddressBookRequest < Struct.new(
      :address_book_arn)
      include Aws::Structure
    end

    # @!attribute [rw] address_book
    #   The details of the requested address book.
    #   @return [Types::AddressBook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetAddressBookResponse AWS API Documentation
    #
    class GetAddressBookResponse < Struct.new(
      :address_book)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetConferencePreferenceRequest AWS API Documentation
    #
    class GetConferencePreferenceRequest < Aws::EmptyStructure; end

    # @!attribute [rw] preference
    #   The conference preference.
    #   @return [Types::ConferencePreference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetConferencePreferenceResponse AWS API Documentation
    #
    class GetConferencePreferenceResponse < Struct.new(
      :preference)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetConferenceProviderRequest
    #   data as a hash:
    #
    #       {
    #         conference_provider_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] conference_provider_arn
    #   The ARN of the newly created conference provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetConferenceProviderRequest AWS API Documentation
    #
    class GetConferenceProviderRequest < Struct.new(
      :conference_provider_arn)
      include Aws::Structure
    end

    # @!attribute [rw] conference_provider
    #   The conference provider.
    #   @return [Types::ConferenceProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetConferenceProviderResponse AWS API Documentation
    #
    class GetConferenceProviderResponse < Struct.new(
      :conference_provider)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetContactRequest
    #   data as a hash:
    #
    #       {
    #         contact_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] contact_arn
    #   The ARN of the contact for which to request details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetContactRequest AWS API Documentation
    #
    class GetContactRequest < Struct.new(
      :contact_arn)
      include Aws::Structure
    end

    # @!attribute [rw] contact
    #   The details of the requested contact.
    #   @return [Types::Contact]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetContactResponse AWS API Documentation
    #
    class GetContactResponse < Struct.new(
      :contact)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDeviceRequest
    #   data as a hash:
    #
    #       {
    #         device_arn: "Arn",
    #       }
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device for which to request details. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetDeviceRequest AWS API Documentation
    #
    class GetDeviceRequest < Struct.new(
      :device_arn)
      include Aws::Structure
    end

    # @!attribute [rw] device
    #   The details of the device requested. Required.
    #   @return [Types::Device]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetDeviceResponse AWS API Documentation
    #
    class GetDeviceResponse < Struct.new(
      :device)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetProfileRequest
    #   data as a hash:
    #
    #       {
    #         profile_arn: "Arn",
    #       }
    #
    # @!attribute [rw] profile_arn
    #   The ARN of the room profile for which to request details. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetProfileRequest AWS API Documentation
    #
    class GetProfileRequest < Struct.new(
      :profile_arn)
      include Aws::Structure
    end

    # @!attribute [rw] profile
    #   The details of the room profile requested. Required.
    #   @return [Types::Profile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetProfileResponse AWS API Documentation
    #
    class GetProfileResponse < Struct.new(
      :profile)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRoomRequest
    #   data as a hash:
    #
    #       {
    #         room_arn: "Arn",
    #       }
    #
    # @!attribute [rw] room_arn
    #   The ARN of the room for which to request details. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetRoomRequest AWS API Documentation
    #
    class GetRoomRequest < Struct.new(
      :room_arn)
      include Aws::Structure
    end

    # @!attribute [rw] room
    #   The details of the room requested.
    #   @return [Types::Room]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetRoomResponse AWS API Documentation
    #
    class GetRoomResponse < Struct.new(
      :room)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRoomSkillParameterRequest
    #   data as a hash:
    #
    #       {
    #         room_arn: "Arn",
    #         skill_id: "SkillId", # required
    #         parameter_key: "RoomSkillParameterKey", # required
    #       }
    #
    # @!attribute [rw] room_arn
    #   The ARN of the room from which to get the room skill parameter
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] skill_id
    #   The ARN of the skill from which to get the room skill parameter
    #   details. Required.
    #   @return [String]
    #
    # @!attribute [rw] parameter_key
    #   The room skill parameter key for which to get details. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetRoomSkillParameterRequest AWS API Documentation
    #
    class GetRoomSkillParameterRequest < Struct.new(
      :room_arn,
      :skill_id,
      :parameter_key)
      include Aws::Structure
    end

    # @!attribute [rw] room_skill_parameter
    #   The details of the room skill parameter requested. Required.
    #   @return [Types::RoomSkillParameter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetRoomSkillParameterResponse AWS API Documentation
    #
    class GetRoomSkillParameterResponse < Struct.new(
      :room_skill_parameter)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSkillGroupRequest
    #   data as a hash:
    #
    #       {
    #         skill_group_arn: "Arn",
    #       }
    #
    # @!attribute [rw] skill_group_arn
    #   The ARN of the skill group for which to get details. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetSkillGroupRequest AWS API Documentation
    #
    class GetSkillGroupRequest < Struct.new(
      :skill_group_arn)
      include Aws::Structure
    end

    # @!attribute [rw] skill_group
    #   The details of the skill group requested. Required.
    #   @return [Types::SkillGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetSkillGroupResponse AWS API Documentation
    #
    class GetSkillGroupResponse < Struct.new(
      :skill_group)
      include Aws::Structure
    end

    # The IP endpoint and protocol for calling.
    #
    # @note When making an API call, you may pass IPDialIn
    #   data as a hash:
    #
    #       {
    #         endpoint: "Endpoint", # required
    #         comms_protocol: "SIP", # required, accepts SIP, SIPS, H323
    #       }
    #
    # @!attribute [rw] endpoint
    #   The IP address.
    #   @return [String]
    #
    # @!attribute [rw] comms_protocol
    #   The protocol, including SIP, SIPS, and H323.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/IPDialIn AWS API Documentation
    #
    class IPDialIn < Struct.new(
      :endpoint,
      :comms_protocol)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListConferenceProvidersRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The tokens used for pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of conference providers to be returned, per
    #   paginated calls.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListConferenceProvidersRequest AWS API Documentation
    #
    class ListConferenceProvidersRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] conference_providers
    #   The conference providers.
    #   @return [Array<Types::ConferenceProvider>]
    #
    # @!attribute [rw] next_token
    #   The tokens used for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListConferenceProvidersResponse AWS API Documentation
    #
    class ListConferenceProvidersResponse < Struct.new(
      :conference_providers,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDeviceEventsRequest
    #   data as a hash:
    #
    #       {
    #         device_arn: "Arn", # required
    #         event_type: "CONNECTION_STATUS", # accepts CONNECTION_STATUS, DEVICE_STATUS
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] device_arn
    #   The ARN of a device.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The event type to filter device events. If EventType isn't
    #   specified, this returns a list of all device events in reverse
    #   chronological order. If EventType is specified, this returns a list
    #   of device events for that EventType in reverse chronological order.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response only includes results beyond the token, up
    #   to the value specified by MaxResults. When the end of results is
    #   reached, the response has a value of null.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. The
    #   default value is 50. If more results exist than the specified
    #   MaxResults value, a token is included in the response so that the
    #   remaining results can be retrieved.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListDeviceEventsRequest AWS API Documentation
    #
    class ListDeviceEventsRequest < Struct.new(
      :device_arn,
      :event_type,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] device_events
    #   The device events requested for the device ARN.
    #   @return [Array<Types::DeviceEvent>]
    #
    # @!attribute [rw] next_token
    #   The token returned to indicate that there is more data available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListDeviceEventsResponse AWS API Documentation
    #
    class ListDeviceEventsResponse < Struct.new(
      :device_events,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSkillsRequest
    #   data as a hash:
    #
    #       {
    #         skill_group_arn: "Arn",
    #         enablement_type: "ENABLED", # accepts ENABLED, PENDING
    #         skill_type: "PUBLIC", # accepts PUBLIC, PRIVATE, ALL
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] skill_group_arn
    #   The ARN of the skill group for which to list enabled skills.
    #   Required.
    #   @return [String]
    #
    # @!attribute [rw] enablement_type
    #   Whether the skill is enabled under the user's account, or if it
    #   requires linking to be used.
    #   @return [String]
    #
    # @!attribute [rw] skill_type
    #   Whether the skill is publicly available or is a private skill.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by `MaxResults`. Required.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved. Required.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListSkillsRequest AWS API Documentation
    #
    class ListSkillsRequest < Struct.new(
      :skill_group_arn,
      :enablement_type,
      :skill_type,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] skill_summaries
    #   The list of enabled skills requested. Required.
    #   @return [Array<Types::SkillSummary>]
    #
    # @!attribute [rw] next_token
    #   The token returned to indicate that there is more data available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListSkillsResponse AWS API Documentation
    #
    class ListSkillsResponse < Struct.new(
      :skill_summaries,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSkillsStoreCategoriesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The tokens used for pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of categories returned, per paginated calls.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListSkillsStoreCategoriesRequest AWS API Documentation
    #
    class ListSkillsStoreCategoriesRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] category_list
    #   The list of categories.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] next_token
    #   The tokens used for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListSkillsStoreCategoriesResponse AWS API Documentation
    #
    class ListSkillsStoreCategoriesResponse < Struct.new(
      :category_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSkillsStoreSkillsByCategoryRequest
    #   data as a hash:
    #
    #       {
    #         category_id: 1, # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] category_id
    #   The category ID for which the skills are being retrieved from the
    #   skill store.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The tokens used for pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of skills returned per paginated calls.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListSkillsStoreSkillsByCategoryRequest AWS API Documentation
    #
    class ListSkillsStoreSkillsByCategoryRequest < Struct.new(
      :category_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] skills_store_skills
    #   The skill store skills.
    #   @return [Array<Types::SkillsStoreSkill>]
    #
    # @!attribute [rw] next_token
    #   The tokens used for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListSkillsStoreSkillsByCategoryResponse AWS API Documentation
    #
    class ListSkillsStoreSkillsByCategoryResponse < Struct.new(
      :skills_store_skills,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSmartHomeAppliancesRequest
    #   data as a hash:
    #
    #       {
    #         room_arn: "Arn", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] room_arn
    #   The room that the appliances are associated with.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of appliances to be returned, per paginated
    #   calls.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The tokens used for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListSmartHomeAppliancesRequest AWS API Documentation
    #
    class ListSmartHomeAppliancesRequest < Struct.new(
      :room_arn,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] smart_home_appliances
    #   The smart home appliances.
    #   @return [Array<Types::SmartHomeAppliance>]
    #
    # @!attribute [rw] next_token
    #   The tokens used for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListSmartHomeAppliancesResponse AWS API Documentation
    #
    class ListSmartHomeAppliancesResponse < Struct.new(
      :smart_home_appliances,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsRequest
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the specified resource for which to list tags.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by `MaxResults`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListTagsRequest AWS API Documentation
    #
    class ListTagsRequest < Struct.new(
      :arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags requested for the specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   The token returned to indicate that there is more data available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListTagsResponse AWS API Documentation
    #
    class ListTagsResponse < Struct.new(
      :tags,
      :next_token)
      include Aws::Structure
    end

    # The values that indicate whether a pin is always required (YES), never
    # required (NO), or OPTIONAL.
    #
    # * If YES, Alexa will always ask for a meeting pin.
    #
    # * If NO, Alexa will never ask for a meeting pin.
    #
    # * If OPTIONAL, Alexa will ask if you have a meeting pin and if the
    #   customer responds with yes, it will ask for the meeting pin.
    #
    # @note When making an API call, you may pass MeetingSetting
    #   data as a hash:
    #
    #       {
    #         require_pin: "YES", # required, accepts YES, NO, OPTIONAL
    #       }
    #
    # @!attribute [rw] require_pin
    #   The values that indicate whether the pin is always required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/MeetingSetting AWS API Documentation
    #
    class MeetingSetting < Struct.new(
      :require_pin)
      include Aws::Structure
    end

    # The information for public switched telephone network (PSTN)
    # conferencing.
    #
    # @note When making an API call, you may pass PSTNDialIn
    #   data as a hash:
    #
    #       {
    #         country_code: "CountryCode", # required
    #         phone_number: "PhoneNumber", # required
    #         one_click_id_delay: "OneClickIdDelay", # required
    #         one_click_pin_delay: "OneClickPinDelay", # required
    #       }
    #
    # @!attribute [rw] country_code
    #   The zip code.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number to call to join the conference.
    #   @return [String]
    #
    # @!attribute [rw] one_click_id_delay
    #   The delay duration before Alexa enters the conference ID with
    #   dual-tone multi-frequency (DTMF). Each number on the dial pad
    #   corresponds to a DTMF tone, which is how we send data over the
    #   telephone network.
    #   @return [String]
    #
    # @!attribute [rw] one_click_pin_delay
    #   The delay duration before Alexa enters the conference pin with
    #   dual-tone multi-frequency (DTMF). Each number on the dial pad
    #   corresponds to a DTMF tone, which is how we send data over the
    #   telephone network.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PSTNDialIn AWS API Documentation
    #
    class PSTNDialIn < Struct.new(
      :country_code,
      :phone_number,
      :one_click_id_delay,
      :one_click_pin_delay)
      include Aws::Structure
    end

    # A room profile with attributes.
    #
    # @!attribute [rw] profile_arn
    #   The ARN of a room profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The name of a room profile.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   Retrieves if the profile is default or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] address
    #   The address of a room profile.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The time zone of a room profile.
    #   @return [String]
    #
    # @!attribute [rw] distance_unit
    #   The distance unit of a room profile.
    #   @return [String]
    #
    # @!attribute [rw] temperature_unit
    #   The temperature unit of a room profile.
    #   @return [String]
    #
    # @!attribute [rw] wake_word
    #   The wake word of a room profile.
    #   @return [String]
    #
    # @!attribute [rw] setup_mode_disabled
    #   The setup mode of a room profile.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_volume_limit
    #   The max volume limit of a room profile.
    #   @return [Integer]
    #
    # @!attribute [rw] pstn_enabled
    #   The PSTN setting of a room profile.
    #   @return [Boolean]
    #
    # @!attribute [rw] address_book_arn
    #   The ARN of the address book.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Profile AWS API Documentation
    #
    class Profile < Struct.new(
      :profile_arn,
      :profile_name,
      :is_default,
      :address,
      :timezone,
      :distance_unit,
      :temperature_unit,
      :wake_word,
      :setup_mode_disabled,
      :max_volume_limit,
      :pstn_enabled,
      :address_book_arn)
      include Aws::Structure
    end

    # The data of a room profile.
    #
    # @!attribute [rw] profile_arn
    #   The ARN of a room profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The name of a room profile.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   Retrieves if the profile data is default or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] address
    #   The address of a room profile.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The timezone of a room profile.
    #   @return [String]
    #
    # @!attribute [rw] distance_unit
    #   The distance unit of a room profile.
    #   @return [String]
    #
    # @!attribute [rw] temperature_unit
    #   The temperature unit of a room profile.
    #   @return [String]
    #
    # @!attribute [rw] wake_word
    #   The wake word of a room profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ProfileData AWS API Documentation
    #
    class ProfileData < Struct.new(
      :profile_arn,
      :profile_name,
      :is_default,
      :address,
      :timezone,
      :distance_unit,
      :temperature_unit,
      :wake_word)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutConferencePreferenceRequest
    #   data as a hash:
    #
    #       {
    #         conference_preference: { # required
    #           default_conference_provider_arn: "Arn",
    #         },
    #       }
    #
    # @!attribute [rw] conference_preference
    #   The conference preference of a specific conference provider.
    #   @return [Types::ConferencePreference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PutConferencePreferenceRequest AWS API Documentation
    #
    class PutConferencePreferenceRequest < Struct.new(
      :conference_preference)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PutConferencePreferenceResponse AWS API Documentation
    #
    class PutConferencePreferenceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutRoomSkillParameterRequest
    #   data as a hash:
    #
    #       {
    #         room_arn: "Arn",
    #         skill_id: "SkillId", # required
    #         room_skill_parameter: { # required
    #           parameter_key: "RoomSkillParameterKey", # required
    #           parameter_value: "RoomSkillParameterValue", # required
    #         },
    #       }
    #
    # @!attribute [rw] room_arn
    #   The ARN of the room associated with the room skill parameter.
    #   Required.
    #   @return [String]
    #
    # @!attribute [rw] skill_id
    #   The ARN of the skill associated with the room skill parameter.
    #   Required.
    #   @return [String]
    #
    # @!attribute [rw] room_skill_parameter
    #   The updated room skill parameter. Required.
    #   @return [Types::RoomSkillParameter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PutRoomSkillParameterRequest AWS API Documentation
    #
    class PutRoomSkillParameterRequest < Struct.new(
      :room_arn,
      :skill_id,
      :room_skill_parameter)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PutRoomSkillParameterResponse AWS API Documentation
    #
    class PutRoomSkillParameterResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutSkillAuthorizationRequest
    #   data as a hash:
    #
    #       {
    #         authorization_result: { # required
    #           "Key" => "Value",
    #         },
    #         skill_id: "SkillId", # required
    #         room_arn: "Arn",
    #       }
    #
    # @!attribute [rw] authorization_result
    #   The authorization result specific to OAUTH code grant output.
    #   "Code” must be populated in the AuthorizationResult map to
    #   establish the authorization.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] skill_id
    #   The unique identifier of a skill.
    #   @return [String]
    #
    # @!attribute [rw] room_arn
    #   The room that the skill is authorized for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PutSkillAuthorizationRequest AWS API Documentation
    #
    class PutSkillAuthorizationRequest < Struct.new(
      :authorization_result,
      :skill_id,
      :room_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PutSkillAuthorizationResponse AWS API Documentation
    #
    class PutSkillAuthorizationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RegisterAVSDeviceRequest
    #   data as a hash:
    #
    #       {
    #         client_id: "ClientId", # required
    #         user_code: "UserCode", # required
    #         product_id: "ProductId", # required
    #         device_serial_number: "DeviceSerialNumberForAVS", # required
    #         amazon_id: "AmazonId", # required
    #       }
    #
    # @!attribute [rw] client_id
    #   The client ID of the OEM used for code-based linking authorization
    #   on an AVS device.
    #   @return [String]
    #
    # @!attribute [rw] user_code
    #   The code that is obtained after your AVS device has made a POST
    #   request to LWA as a part of the Device Authorization Request
    #   component of the OAuth code-based linking specification.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product ID used to identify your AVS device during
    #   authorization.
    #   @return [String]
    #
    # @!attribute [rw] device_serial_number
    #   The key generated by the OEM that uniquely identifies a specified
    #   instance of your AVS device.
    #   @return [String]
    #
    # @!attribute [rw] amazon_id
    #   The device type ID for your AVS device generated by Amazon when the
    #   OEM creates a new product on Amazon's Developer Console.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RegisterAVSDeviceRequest AWS API Documentation
    #
    class RegisterAVSDeviceRequest < Struct.new(
      :client_id,
      :user_code,
      :product_id,
      :device_serial_number,
      :amazon_id)
      include Aws::Structure
    end

    # @!attribute [rw] device_arn
    #   The ARN of the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RegisterAVSDeviceResponse AWS API Documentation
    #
    class RegisterAVSDeviceResponse < Struct.new(
      :device_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RejectSkillRequest
    #   data as a hash:
    #
    #       {
    #         skill_id: "SkillId", # required
    #       }
    #
    # @!attribute [rw] skill_id
    #   The unique identifier of the skill.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RejectSkillRequest AWS API Documentation
    #
    class RejectSkillRequest < Struct.new(
      :skill_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RejectSkillResponse AWS API Documentation
    #
    class RejectSkillResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ResolveRoomRequest
    #   data as a hash:
    #
    #       {
    #         user_id: "UserId", # required
    #         skill_id: "SkillId", # required
    #       }
    #
    # @!attribute [rw] user_id
    #   The ARN of the user. Required.
    #   @return [String]
    #
    # @!attribute [rw] skill_id
    #   The ARN of the skill that was requested. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ResolveRoomRequest AWS API Documentation
    #
    class ResolveRoomRequest < Struct.new(
      :user_id,
      :skill_id)
      include Aws::Structure
    end

    # @!attribute [rw] room_arn
    #   The ARN of the room from which the skill request was invoked.
    #   @return [String]
    #
    # @!attribute [rw] room_name
    #   The name of the room from which the skill request was invoked.
    #   @return [String]
    #
    # @!attribute [rw] room_skill_parameters
    #   Response to get the room profile request. Required.
    #   @return [Array<Types::RoomSkillParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ResolveRoomResponse AWS API Documentation
    #
    class ResolveRoomResponse < Struct.new(
      :room_arn,
      :room_name,
      :room_skill_parameters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RevokeInvitationRequest
    #   data as a hash:
    #
    #       {
    #         user_arn: "Arn",
    #         enrollment_id: "EnrollmentId",
    #       }
    #
    # @!attribute [rw] user_arn
    #   The ARN of the user for whom to revoke an enrollment invitation.
    #   Required.
    #   @return [String]
    #
    # @!attribute [rw] enrollment_id
    #   The ARN of the enrollment invitation to revoke. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RevokeInvitationRequest AWS API Documentation
    #
    class RevokeInvitationRequest < Struct.new(
      :user_arn,
      :enrollment_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RevokeInvitationResponse AWS API Documentation
    #
    class RevokeInvitationResponse < Aws::EmptyStructure; end

    # A room with attributes.
    #
    # @!attribute [rw] room_arn
    #   The ARN of a room.
    #   @return [String]
    #
    # @!attribute [rw] room_name
    #   The name of a room.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a room.
    #   @return [String]
    #
    # @!attribute [rw] provider_calendar_id
    #   The provider calendar ARN of a room.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The profile ARN of a room.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Room AWS API Documentation
    #
    class Room < Struct.new(
      :room_arn,
      :room_name,
      :description,
      :provider_calendar_id,
      :profile_arn)
      include Aws::Structure
    end

    # The data of a room.
    #
    # @!attribute [rw] room_arn
    #   The ARN of a room.
    #   @return [String]
    #
    # @!attribute [rw] room_name
    #   The name of a room.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a room.
    #   @return [String]
    #
    # @!attribute [rw] provider_calendar_id
    #   The provider calendar ARN of a room.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The profile ARN of a room.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The profile name of a room.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RoomData AWS API Documentation
    #
    class RoomData < Struct.new(
      :room_arn,
      :room_name,
      :description,
      :provider_calendar_id,
      :profile_arn,
      :profile_name)
      include Aws::Structure
    end

    # A skill parameter associated with a room.
    #
    # @note When making an API call, you may pass RoomSkillParameter
    #   data as a hash:
    #
    #       {
    #         parameter_key: "RoomSkillParameterKey", # required
    #         parameter_value: "RoomSkillParameterValue", # required
    #       }
    #
    # @!attribute [rw] parameter_key
    #   The parameter key of a room skill parameter. ParameterKey is an
    #   enumerated type that only takes “DEFAULT” or “SCOPE” as valid
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   The parameter value of a room skill parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RoomSkillParameter AWS API Documentation
    #
    class RoomSkillParameter < Struct.new(
      :parameter_key,
      :parameter_value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchAddressBooksRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             key: "FilterKey", # required
    #             values: ["FilterValue"], # required
    #           },
    #         ],
    #         sort_criteria: [
    #           {
    #             key: "SortKey", # required
    #             value: "ASC", # required, accepts ASC, DESC
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   The filters to use to list a specified set of address books. The
    #   supported filter key is AddressBookName.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort_criteria
    #   The sort order to use in listing the specified set of address books.
    #   The supported sort key is AddressBookName.
    #   @return [Array<Types::Sort>]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response only includes results beyond the token, up
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchAddressBooksRequest AWS API Documentation
    #
    class SearchAddressBooksRequest < Struct.new(
      :filters,
      :sort_criteria,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] address_books
    #   The address books that meet the specified set of filter criteria, in
    #   sort order.
    #   @return [Array<Types::AddressBookData>]
    #
    # @!attribute [rw] next_token
    #   The token returned to indicate that there is more data available.
    #   @return [String]
    #
    # @!attribute [rw] total_count
    #   The total number of address books returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchAddressBooksResponse AWS API Documentation
    #
    class SearchAddressBooksResponse < Struct.new(
      :address_books,
      :next_token,
      :total_count)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchContactsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             key: "FilterKey", # required
    #             values: ["FilterValue"], # required
    #           },
    #         ],
    #         sort_criteria: [
    #           {
    #             key: "SortKey", # required
    #             value: "ASC", # required, accepts ASC, DESC
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   The filters to use to list a specified set of address books. The
    #   supported filter keys are DisplayName, FirstName, LastName, and
    #   AddressBookArns.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort_criteria
    #   The sort order to use in listing the specified set of contacts. The
    #   supported sort keys are DisplayName, FirstName, and LastName.
    #   @return [Array<Types::Sort>]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response only includes results beyond the token, up
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchContactsRequest AWS API Documentation
    #
    class SearchContactsRequest < Struct.new(
      :filters,
      :sort_criteria,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] contacts
    #   The contacts that meet the specified set of filter criteria, in sort
    #   order.
    #   @return [Array<Types::ContactData>]
    #
    # @!attribute [rw] next_token
    #   The token returned to indicate that there is more data available.
    #   @return [String]
    #
    # @!attribute [rw] total_count
    #   The total number of contacts returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchContactsResponse AWS API Documentation
    #
    class SearchContactsResponse < Struct.new(
      :contacts,
      :next_token,
      :total_count)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchDevicesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             key: "FilterKey", # required
    #             values: ["FilterValue"], # required
    #           },
    #         ],
    #         sort_criteria: [
    #           {
    #             key: "SortKey", # required
    #             value: "ASC", # required, accepts ASC, DESC
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by `MaxResults`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   The filters to use to list a specified set of devices. Supported
    #   filter keys are DeviceName, DeviceStatus, DeviceStatusDetailCode,
    #   RoomName, DeviceType, DeviceSerialNumber, UnassociatedOnly, and
    #   ConnectionStatus (ONLINE and OFFLINE).
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort_criteria
    #   The sort order to use in listing the specified set of devices.
    #   Supported sort keys are DeviceName, DeviceStatus, RoomName,
    #   DeviceType, DeviceSerialNumber, and ConnectionStatus.
    #   @return [Array<Types::Sort>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchDevicesRequest AWS API Documentation
    #
    class SearchDevicesRequest < Struct.new(
      :next_token,
      :max_results,
      :filters,
      :sort_criteria)
      include Aws::Structure
    end

    # @!attribute [rw] devices
    #   The devices that meet the specified set of filter criteria, in sort
    #   order.
    #   @return [Array<Types::DeviceData>]
    #
    # @!attribute [rw] next_token
    #   The token returned to indicate that there is more data available.
    #   @return [String]
    #
    # @!attribute [rw] total_count
    #   The total number of devices returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchDevicesResponse AWS API Documentation
    #
    class SearchDevicesResponse < Struct.new(
      :devices,
      :next_token,
      :total_count)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchProfilesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             key: "FilterKey", # required
    #             values: ["FilterValue"], # required
    #           },
    #         ],
    #         sort_criteria: [
    #           {
    #             key: "SortKey", # required
    #             value: "ASC", # required, accepts ASC, DESC
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by `MaxResults`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   The filters to use to list a specified set of room profiles.
    #   Supported filter keys are ProfileName and Address. Required.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort_criteria
    #   The sort order to use in listing the specified set of room profiles.
    #   Supported sort keys are ProfileName and Address.
    #   @return [Array<Types::Sort>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchProfilesRequest AWS API Documentation
    #
    class SearchProfilesRequest < Struct.new(
      :next_token,
      :max_results,
      :filters,
      :sort_criteria)
      include Aws::Structure
    end

    # @!attribute [rw] profiles
    #   The profiles that meet the specified set of filter criteria, in sort
    #   order.
    #   @return [Array<Types::ProfileData>]
    #
    # @!attribute [rw] next_token
    #   The token returned to indicate that there is more data available.
    #   @return [String]
    #
    # @!attribute [rw] total_count
    #   The total number of room profiles returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchProfilesResponse AWS API Documentation
    #
    class SearchProfilesResponse < Struct.new(
      :profiles,
      :next_token,
      :total_count)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchRoomsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             key: "FilterKey", # required
    #             values: ["FilterValue"], # required
    #           },
    #         ],
    #         sort_criteria: [
    #           {
    #             key: "SortKey", # required
    #             value: "ASC", # required, accepts ASC, DESC
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by `MaxResults`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   The filters to use to list a specified set of rooms. The supported
    #   filter keys are RoomName and ProfileName.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort_criteria
    #   The sort order to use in listing the specified set of rooms. The
    #   supported sort keys are RoomName and ProfileName.
    #   @return [Array<Types::Sort>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchRoomsRequest AWS API Documentation
    #
    class SearchRoomsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters,
      :sort_criteria)
      include Aws::Structure
    end

    # @!attribute [rw] rooms
    #   The rooms that meet the specified set of filter criteria, in sort
    #   order.
    #   @return [Array<Types::RoomData>]
    #
    # @!attribute [rw] next_token
    #   The token returned to indicate that there is more data available.
    #   @return [String]
    #
    # @!attribute [rw] total_count
    #   The total number of rooms returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchRoomsResponse AWS API Documentation
    #
    class SearchRoomsResponse < Struct.new(
      :rooms,
      :next_token,
      :total_count)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchSkillGroupsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             key: "FilterKey", # required
    #             values: ["FilterValue"], # required
    #           },
    #         ],
    #         sort_criteria: [
    #           {
    #             key: "SortKey", # required
    #             value: "ASC", # required, accepts ASC, DESC
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by `MaxResults`. Required.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   The filters to use to list a specified set of skill groups. The
    #   supported filter key is SkillGroupName.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort_criteria
    #   The sort order to use in listing the specified set of skill groups.
    #   The supported sort key is SkillGroupName.
    #   @return [Array<Types::Sort>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchSkillGroupsRequest AWS API Documentation
    #
    class SearchSkillGroupsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters,
      :sort_criteria)
      include Aws::Structure
    end

    # @!attribute [rw] skill_groups
    #   The skill groups that meet the filter criteria, in sort order.
    #   @return [Array<Types::SkillGroupData>]
    #
    # @!attribute [rw] next_token
    #   The token returned to indicate that there is more data available.
    #   @return [String]
    #
    # @!attribute [rw] total_count
    #   The total number of skill groups returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchSkillGroupsResponse AWS API Documentation
    #
    class SearchSkillGroupsResponse < Struct.new(
      :skill_groups,
      :next_token,
      :total_count)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchUsersRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             key: "FilterKey", # required
    #             values: ["FilterValue"], # required
    #           },
    #         ],
    #         sort_criteria: [
    #           {
    #             key: "SortKey", # required
    #             value: "ASC", # required, accepts ASC, DESC
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by `MaxResults`. Required.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved. Required.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   The filters to use for listing a specific set of users. Required.
    #   Supported filter keys are UserId, FirstName, LastName, Email, and
    #   EnrollmentStatus.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort_criteria
    #   The sort order to use in listing the filtered set of users.
    #   Required. Supported sort keys are UserId, FirstName, LastName,
    #   Email, and EnrollmentStatus.
    #   @return [Array<Types::Sort>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchUsersRequest AWS API Documentation
    #
    class SearchUsersRequest < Struct.new(
      :next_token,
      :max_results,
      :filters,
      :sort_criteria)
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   The users that meet the specified set of filter criteria, in sort
    #   order.
    #   @return [Array<Types::UserData>]
    #
    # @!attribute [rw] next_token
    #   The token returned to indicate that there is more data available.
    #   @return [String]
    #
    # @!attribute [rw] total_count
    #   The total number of users returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchUsersResponse AWS API Documentation
    #
    class SearchUsersResponse < Struct.new(
      :users,
      :next_token,
      :total_count)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SendInvitationRequest
    #   data as a hash:
    #
    #       {
    #         user_arn: "Arn",
    #       }
    #
    # @!attribute [rw] user_arn
    #   The ARN of the user to whom to send an invitation. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SendInvitationRequest AWS API Documentation
    #
    class SendInvitationRequest < Struct.new(
      :user_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SendInvitationResponse AWS API Documentation
    #
    class SendInvitationResponse < Aws::EmptyStructure; end

    # Granular information about the skill.
    #
    # @!attribute [rw] product_description
    #   The description of the product.
    #   @return [String]
    #
    # @!attribute [rw] invocation_phrase
    #   The phrase used to trigger the skill.
    #   @return [String]
    #
    # @!attribute [rw] release_date
    #   The date when the skill was released.
    #   @return [String]
    #
    # @!attribute [rw] end_user_license_agreement
    #   The URL of the end user license agreement.
    #   @return [String]
    #
    # @!attribute [rw] generic_keywords
    #   The generic keywords associated with the skill that can be used to
    #   find a skill.
    #   @return [Array<String>]
    #
    # @!attribute [rw] bullet_points
    #   The details about what the skill supports organized as bullet
    #   points.
    #   @return [Array<String>]
    #
    # @!attribute [rw] new_in_this_version_bullet_points
    #   The updates added in bullet points.
    #   @return [Array<String>]
    #
    # @!attribute [rw] skill_types
    #   The types of skills.
    #   @return [Array<String>]
    #
    # @!attribute [rw] reviews
    #   The list of reviews for the skill, including Key and Value pair.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] developer_info
    #   The details about the developer that published the skill.
    #   @return [Types::DeveloperInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SkillDetails AWS API Documentation
    #
    class SkillDetails < Struct.new(
      :product_description,
      :invocation_phrase,
      :release_date,
      :end_user_license_agreement,
      :generic_keywords,
      :bullet_points,
      :new_in_this_version_bullet_points,
      :skill_types,
      :reviews,
      :developer_info)
      include Aws::Structure
    end

    # A skill group with attributes.
    #
    # @!attribute [rw] skill_group_arn
    #   The ARN of a skill group.
    #   @return [String]
    #
    # @!attribute [rw] skill_group_name
    #   The name of a skill group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a skill group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SkillGroup AWS API Documentation
    #
    class SkillGroup < Struct.new(
      :skill_group_arn,
      :skill_group_name,
      :description)
      include Aws::Structure
    end

    # The attributes of a skill group.
    #
    # @!attribute [rw] skill_group_arn
    #   The skill group ARN of a skill group.
    #   @return [String]
    #
    # @!attribute [rw] skill_group_name
    #   The skill group name of a skill group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of a skill group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SkillGroupData AWS API Documentation
    #
    class SkillGroupData < Struct.new(
      :skill_group_arn,
      :skill_group_name,
      :description)
      include Aws::Structure
    end

    # The summary of skills.
    #
    # @!attribute [rw] skill_id
    #   The ARN of the skill summary.
    #   @return [String]
    #
    # @!attribute [rw] skill_name
    #   The name of the skill.
    #   @return [String]
    #
    # @!attribute [rw] supports_linking
    #   Linking support for a skill.
    #   @return [Boolean]
    #
    # @!attribute [rw] enablement_type
    #   Whether the skill is enabled under the user's account, or if it
    #   requires linking to be used.
    #   @return [String]
    #
    # @!attribute [rw] skill_type
    #   Whether the skill is publicly available or is a private skill.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SkillSummary AWS API Documentation
    #
    class SkillSummary < Struct.new(
      :skill_id,
      :skill_name,
      :supports_linking,
      :enablement_type,
      :skill_type)
      include Aws::Structure
    end

    # The detailed information about an Alexa skill.
    #
    # @!attribute [rw] skill_id
    #   The ARN of the skill.
    #   @return [String]
    #
    # @!attribute [rw] skill_name
    #   The name of the skill.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   Short description about the skill.
    #   @return [String]
    #
    # @!attribute [rw] icon_url
    #   The URL where the skill icon resides.
    #   @return [String]
    #
    # @!attribute [rw] sample_utterances
    #   Sample utterances that interact with the skill.
    #   @return [Array<String>]
    #
    # @!attribute [rw] skill_details
    #   Information about the skill.
    #   @return [Types::SkillDetails]
    #
    # @!attribute [rw] supports_linking
    #   Linking support for a skill.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SkillsStoreSkill AWS API Documentation
    #
    class SkillsStoreSkill < Struct.new(
      :skill_id,
      :skill_name,
      :short_description,
      :icon_url,
      :sample_utterances,
      :skill_details,
      :supports_linking)
      include Aws::Structure
    end

    # A smart home appliance that can connect to a central system. Any
    # domestic device can be a smart appliance.
    #
    # @!attribute [rw] friendly_name
    #   The friendly name of the smart home appliance.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the smart home appliance.
    #   @return [String]
    #
    # @!attribute [rw] manufacturer_name
    #   The name of the manufacturer of the smart home appliance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SmartHomeAppliance AWS API Documentation
    #
    class SmartHomeAppliance < Struct.new(
      :friendly_name,
      :description,
      :manufacturer_name)
      include Aws::Structure
    end

    # An object representing a sort criteria.
    #
    # @note When making an API call, you may pass Sort
    #   data as a hash:
    #
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       }
    #
    # @!attribute [rw] key
    #   The sort key of a sort object.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The sort value of a sort object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Sort AWS API Documentation
    #
    class Sort < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartDeviceSyncRequest
    #   data as a hash:
    #
    #       {
    #         room_arn: "Arn",
    #         device_arn: "Arn",
    #         features: ["BLUETOOTH"], # required, accepts BLUETOOTH, VOLUME, NOTIFICATIONS, LISTS, SKILLS, ALL
    #       }
    #
    # @!attribute [rw] room_arn
    #   The ARN of the room with which the device to sync is associated.
    #   Required.
    #   @return [String]
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device to sync. Required.
    #   @return [String]
    #
    # @!attribute [rw] features
    #   Request structure to start the device sync. Required.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/StartDeviceSyncRequest AWS API Documentation
    #
    class StartDeviceSyncRequest < Struct.new(
      :room_arn,
      :device_arn,
      :features)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/StartDeviceSyncResponse AWS API Documentation
    #
    class StartDeviceSyncResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StartSmartHomeApplianceDiscoveryRequest
    #   data as a hash:
    #
    #       {
    #         room_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] room_arn
    #   The room where smart home appliance discovery was initiated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/StartSmartHomeApplianceDiscoveryRequest AWS API Documentation
    #
    class StartSmartHomeApplianceDiscoveryRequest < Struct.new(
      :room_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/StartSmartHomeApplianceDiscoveryResponse AWS API Documentation
    #
    class StartSmartHomeApplianceDiscoveryResponse < Aws::EmptyStructure; end

    # A key-value pair that can be associated with a resource.
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
    #   The key of a tag. Tag keys are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a tag. Tag values are case-sensitive and can be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the resource to which to add metadata tags. Required.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be added to the specified resource. Do not provide
    #   system tags. Required.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :arn,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the resource from which to remove metadata tags.
    #   Required.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tags to be removed from the specified resource. Do not provide
    #   system tags. Required.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateAddressBookRequest
    #   data as a hash:
    #
    #       {
    #         address_book_arn: "Arn", # required
    #         name: "AddressBookName",
    #         description: "AddressBookDescription",
    #       }
    #
    # @!attribute [rw] address_book_arn
    #   The ARN of the room to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the room.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the room.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateAddressBookRequest AWS API Documentation
    #
    class UpdateAddressBookRequest < Struct.new(
      :address_book_arn,
      :name,
      :description)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateAddressBookResponse AWS API Documentation
    #
    class UpdateAddressBookResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateConferenceProviderRequest
    #   data as a hash:
    #
    #       {
    #         conference_provider_arn: "Arn", # required
    #         conference_provider_type: "CHIME", # required, accepts CHIME, BLUEJEANS, FUZE, GOOGLE_HANGOUTS, POLYCOM, RINGCENTRAL, SKYPE_FOR_BUSINESS, WEBEX, ZOOM, CUSTOM
    #         ip_dial_in: {
    #           endpoint: "Endpoint", # required
    #           comms_protocol: "SIP", # required, accepts SIP, SIPS, H323
    #         },
    #         pstn_dial_in: {
    #           country_code: "CountryCode", # required
    #           phone_number: "PhoneNumber", # required
    #           one_click_id_delay: "OneClickIdDelay", # required
    #           one_click_pin_delay: "OneClickPinDelay", # required
    #         },
    #         meeting_setting: { # required
    #           require_pin: "YES", # required, accepts YES, NO, OPTIONAL
    #         },
    #       }
    #
    # @!attribute [rw] conference_provider_arn
    #   The ARN of the conference provider.
    #   @return [String]
    #
    # @!attribute [rw] conference_provider_type
    #   The type of the conference provider.
    #   @return [String]
    #
    # @!attribute [rw] ip_dial_in
    #   The IP endpoint and protocol for calling.
    #   @return [Types::IPDialIn]
    #
    # @!attribute [rw] pstn_dial_in
    #   The information for PSTN conferencing.
    #   @return [Types::PSTNDialIn]
    #
    # @!attribute [rw] meeting_setting
    #   The meeting settings for the conference provider.
    #   @return [Types::MeetingSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateConferenceProviderRequest AWS API Documentation
    #
    class UpdateConferenceProviderRequest < Struct.new(
      :conference_provider_arn,
      :conference_provider_type,
      :ip_dial_in,
      :pstn_dial_in,
      :meeting_setting)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateConferenceProviderResponse AWS API Documentation
    #
    class UpdateConferenceProviderResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateContactRequest
    #   data as a hash:
    #
    #       {
    #         contact_arn: "Arn", # required
    #         display_name: "ContactName",
    #         first_name: "ContactName",
    #         last_name: "ContactName",
    #         phone_number: "E164PhoneNumber",
    #       }
    #
    # @!attribute [rw] contact_arn
    #   The ARN of the contact to update.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The updated display name of the contact.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The updated first name of the contact.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The updated last name of the contact.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The updated phone number of the contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateContactRequest AWS API Documentation
    #
    class UpdateContactRequest < Struct.new(
      :contact_arn,
      :display_name,
      :first_name,
      :last_name,
      :phone_number)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateContactResponse AWS API Documentation
    #
    class UpdateContactResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDeviceRequest
    #   data as a hash:
    #
    #       {
    #         device_arn: "Arn",
    #         device_name: "DeviceName",
    #       }
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device to update. Required.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The updated device name. Required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateDeviceRequest AWS API Documentation
    #
    class UpdateDeviceRequest < Struct.new(
      :device_arn,
      :device_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateDeviceResponse AWS API Documentation
    #
    class UpdateDeviceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateProfileRequest
    #   data as a hash:
    #
    #       {
    #         profile_arn: "Arn",
    #         profile_name: "ProfileName",
    #         is_default: false,
    #         timezone: "Timezone",
    #         address: "Address",
    #         distance_unit: "METRIC", # accepts METRIC, IMPERIAL
    #         temperature_unit: "FAHRENHEIT", # accepts FAHRENHEIT, CELSIUS
    #         wake_word: "ALEXA", # accepts ALEXA, AMAZON, ECHO, COMPUTER
    #         setup_mode_disabled: false,
    #         max_volume_limit: 1,
    #         pstn_enabled: false,
    #       }
    #
    # @!attribute [rw] profile_arn
    #   The ARN of the room profile to update. Required.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The updated name for the room profile.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   Sets the profile as default if selected. If this is missing, no
    #   update is done to the default status.
    #   @return [Boolean]
    #
    # @!attribute [rw] timezone
    #   The updated timezone for the room profile.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The updated address for the room profile.
    #   @return [String]
    #
    # @!attribute [rw] distance_unit
    #   The updated distance unit for the room profile.
    #   @return [String]
    #
    # @!attribute [rw] temperature_unit
    #   The updated temperature unit for the room profile.
    #   @return [String]
    #
    # @!attribute [rw] wake_word
    #   The updated wake word for the room profile.
    #   @return [String]
    #
    # @!attribute [rw] setup_mode_disabled
    #   Whether the setup mode of the profile is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_volume_limit
    #   The updated maximum volume limit for the room profile.
    #   @return [Integer]
    #
    # @!attribute [rw] pstn_enabled
    #   Whether the PSTN setting of the room profile is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateProfileRequest AWS API Documentation
    #
    class UpdateProfileRequest < Struct.new(
      :profile_arn,
      :profile_name,
      :is_default,
      :timezone,
      :address,
      :distance_unit,
      :temperature_unit,
      :wake_word,
      :setup_mode_disabled,
      :max_volume_limit,
      :pstn_enabled)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateProfileResponse AWS API Documentation
    #
    class UpdateProfileResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateRoomRequest
    #   data as a hash:
    #
    #       {
    #         room_arn: "Arn",
    #         room_name: "RoomName",
    #         description: "RoomDescription",
    #         provider_calendar_id: "ProviderCalendarId",
    #         profile_arn: "Arn",
    #       }
    #
    # @!attribute [rw] room_arn
    #   The ARN of the room to update.
    #   @return [String]
    #
    # @!attribute [rw] room_name
    #   The updated name for the room.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description for the room.
    #   @return [String]
    #
    # @!attribute [rw] provider_calendar_id
    #   The updated provider calendar ARN for the room.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The updated profile ARN for the room.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateRoomRequest AWS API Documentation
    #
    class UpdateRoomRequest < Struct.new(
      :room_arn,
      :room_name,
      :description,
      :provider_calendar_id,
      :profile_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateRoomResponse AWS API Documentation
    #
    class UpdateRoomResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateSkillGroupRequest
    #   data as a hash:
    #
    #       {
    #         skill_group_arn: "Arn",
    #         skill_group_name: "SkillGroupName",
    #         description: "SkillGroupDescription",
    #       }
    #
    # @!attribute [rw] skill_group_arn
    #   The ARN of the skill group to update.
    #   @return [String]
    #
    # @!attribute [rw] skill_group_name
    #   The updated name for the skill group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description for the skill group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateSkillGroupRequest AWS API Documentation
    #
    class UpdateSkillGroupRequest < Struct.new(
      :skill_group_arn,
      :skill_group_name,
      :description)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateSkillGroupResponse AWS API Documentation
    #
    class UpdateSkillGroupResponse < Aws::EmptyStructure; end

    # Information related to a user.
    #
    # @!attribute [rw] user_arn
    #   The ARN of a user.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name of a user.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of a user.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email of a user.
    #   @return [String]
    #
    # @!attribute [rw] enrollment_status
    #   The enrollment status of a user.
    #   @return [String]
    #
    # @!attribute [rw] enrollment_id
    #   The enrollment ARN of a user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UserData AWS API Documentation
    #
    class UserData < Struct.new(
      :user_arn,
      :first_name,
      :last_name,
      :email,
      :enrollment_status,
      :enrollment_id)
      include Aws::Structure
    end

  end
end
