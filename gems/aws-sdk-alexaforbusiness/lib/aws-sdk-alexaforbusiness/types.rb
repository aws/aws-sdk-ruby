# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AlexaForBusiness
  module Types

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
    #             key: "TagKey",
    #             value: "TagValue",
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
    #             key: "TagKey",
    #             value: "TagValue",
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
    #   DeviceStatusInfo for details.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeviceStatusInfo AWS API Documentation
    #
    class DeviceStatusInfo < Struct.new(
      :device_status_details)
      include Aws::Structure
    end

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

    # @note When making an API call, you may pass ListSkillsRequest
    #   data as a hash:
    #
    #       {
    #         skill_group_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] skill_group_arn
    #   The ARN of the skill group for which to list enabled skills.
    #   Required.
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
    #   The ARN of the specific resource for which to list tags. Required.
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
    #   The list of tags requested for the specific resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Profile AWS API Documentation
    #
    class Profile < Struct.new(
      :profile_arn,
      :profile_name,
      :address,
      :timezone,
      :distance_unit,
      :temperature_unit,
      :wake_word,
      :setup_mode_disabled,
      :max_volume_limit,
      :pstn_enabled)
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
      :address,
      :timezone,
      :distance_unit,
      :temperature_unit,
      :wake_word)
      include Aws::Structure
    end

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
    #   RoomName, DeviceType, DeviceSerialNumber, and UnassociatedOnly.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort_criteria
    #   The sort order to use in listing the specified set of devices.
    #   Supported sort keys are DeviceName, DeviceStatus, RoomName,
    #   DeviceType, and DeviceSerialNumber.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SkillSummary AWS API Documentation
    #
    class SkillSummary < Struct.new(
      :skill_id,
      :skill_name,
      :supports_linking)
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

    # A key-value pair that can be associated with a resource.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
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
    #             key: "TagKey",
    #             value: "TagValue",
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
