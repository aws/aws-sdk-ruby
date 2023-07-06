# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
    # @!attribute [rw] account_status
    #   The status of the account.
    #   @return [String]
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
      :account_status,
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

    # A validated address.
    #
    # @!attribute [rw] street_name
    #   The address street, such as `8th Avenue`.
    #   @return [String]
    #
    # @!attribute [rw] street_suffix
    #   The address suffix, such as the `N` in `8th Avenue N`.
    #   @return [String]
    #
    # @!attribute [rw] post_directional
    #   An address suffix location, such as the `S. Unit A` in `Central Park
    #   S. Unit A`.
    #   @return [String]
    #
    # @!attribute [rw] pre_directional
    #   An address prefix location, such as the `N` in `N. Third St.`.
    #   @return [String]
    #
    # @!attribute [rw] street_number
    #   The numeric portion of an address.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city of an address.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of an address.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code of an address.
    #   @return [String]
    #
    # @!attribute [rw] postal_code_plus_4
    #   The Zip + 4 or postal code + 4 of an address.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country of an address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Address AWS API Documentation
    #
    class Address < Struct.new(
      :street_name,
      :street_suffix,
      :post_directional,
      :pre_directional,
      :street_number,
      :city,
      :state,
      :postal_code,
      :postal_code_plus_4,
      :country)
      SENSITIVE = [:street_name, :street_suffix, :post_directional, :pre_directional, :street_number, :city, :state, :postal_code, :postal_code_plus_4, :country]
      include Aws::Structure
    end

    # The Alexa for Business metadata associated with an Amazon Chime user,
    # used to integrate Alexa for Business with a device.
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

    # The details of an `AppInstance`, an instance of an Amazon Chime SDK
    # messaging application.
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the messaging instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of an `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which an `AppInstance` was created. In epoch
    #   milliseconds.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time an `AppInstance` was last updated. In epoch milliseconds.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AppInstance AWS API Documentation
    #
    class AppInstance < Struct.new(
      :app_instance_arn,
      :name,
      :metadata,
      :created_timestamp,
      :last_updated_timestamp)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # The details of an `AppInstanceAdmin`.
    #
    # @!attribute [rw] admin
    #   The `AppInstanceAdmin` data.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance` for which the user is an administrator.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which an administrator was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AppInstanceAdmin AWS API Documentation
    #
    class AppInstanceAdmin < Struct.new(
      :admin,
      :app_instance_arn,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the details of an `AppInstanceAdmin`.
    #
    # @!attribute [rw] admin
    #   The details of the `AppInstanceAdmin`.
    #   @return [Types::Identity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AppInstanceAdminSummary AWS API Documentation
    #
    class AppInstanceAdminSummary < Struct.new(
      :admin)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the data-retention settings for an `AppInstance`.
    #
    # @!attribute [rw] channel_retention_settings
    #   The length of time in days to retain the messages in a channel.
    #   @return [Types::ChannelRetentionSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AppInstanceRetentionSettings AWS API Documentation
    #
    class AppInstanceRetentionSettings < Struct.new(
      :channel_retention_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the streaming configuration of an `AppInstance`.
    #
    # @!attribute [rw] app_instance_data_type
    #   The type of data to be streamed.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AppInstanceStreamingConfiguration AWS API Documentation
    #
    class AppInstanceStreamingConfiguration < Struct.new(
      :app_instance_data_type,
      :resource_arn)
      SENSITIVE = [:resource_arn]
      include Aws::Structure
    end

    # Summary of the data for an `AppInstance`.
    #
    # @!attribute [rw] app_instance_arn
    #   The `AppInstance` ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AppInstanceSummary AWS API Documentation
    #
    class AppInstanceSummary < Struct.new(
      :app_instance_arn,
      :name,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # The details of an `AppInstanceUser`.
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the `AppInstanceUser` was created.
    #   @return [Time]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time at which the `AppInstanceUser` was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AppInstanceUser AWS API Documentation
    #
    class AppInstanceUser < Struct.new(
      :app_instance_user_arn,
      :name,
      :created_timestamp,
      :metadata,
      :last_updated_timestamp)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AppInstanceUserMembershipSummary AWS API Documentation
    #
    class AppInstanceUserMembershipSummary < Struct.new(
      :type,
      :read_marker_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the details of an `AppInstanceUser`.
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstanceUser`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AppInstanceUserSummary AWS API Documentation
    #
    class AppInstanceUserSummary < Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # The configuration for the artifacts.
    #
    # @!attribute [rw] audio
    #   The configuration for the audio artifacts.
    #   @return [Types::AudioArtifactsConfiguration]
    #
    # @!attribute [rw] video
    #   The configuration for the video artifacts.
    #   @return [Types::VideoArtifactsConfiguration]
    #
    # @!attribute [rw] content
    #   The configuration for the content artifacts.
    #   @return [Types::ContentArtifactsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ArtifactsConfiguration AWS API Documentation
    #
    class ArtifactsConfiguration < Struct.new(
      :audio,
      :video,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # and `JoinToken` . The `JoinToken` allows a client to authenticate and
    # join as the specified attendee. The `JoinToken` expires when the
    # meeting ends or when DeleteAttendee is called. After that, the
    # attendee is unable to join the meeting.
    #
    # We recommend securely transferring each `JoinToken` from your server
    # application to the client so that no other client has access to the
    # token except for the one authorized to represent the attendee.
    #
    # @!attribute [rw] external_user_id
    #   The Amazon Chime SDK external user ID. An idempotency token. Links
    #   the attendee to an identity managed by a builder application.
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

    # The audio artifact configuration object.
    #
    # @!attribute [rw] mux_type
    #   The MUX type of the audio artifact configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AudioArtifactsConfiguration AWS API Documentation
    #
    class AudioArtifactsConfiguration < Struct.new(
      :mux_type)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BadRequestException AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchChannelMemberships AWS API Documentation
    #
    class BatchChannelMemberships < Struct.new(
      :invited_by,
      :type,
      :members,
      :channel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchCreateChannelMembershipError AWS API Documentation
    #
    class BatchCreateChannelMembershipError < Struct.new(
      :member_arn,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchCreateChannelMembershipRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchCreateChannelMembershipResponse AWS API Documentation
    #
    class BatchCreateChannelMembershipResponse < Struct.new(
      :batch_channel_memberships,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # A suggested address.
    #
    # @!attribute [rw] street_info
    #   The street information of a candidate address
    #   @return [String]
    #
    # @!attribute [rw] street_number
    #   The numeric portion of a candidate address.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city of a candidate address.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of a candidate address.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code of a candidate address.
    #   @return [String]
    #
    # @!attribute [rw] postal_code_plus_4
    #   The Zip + 4 or postal code + 4 of a candidate address.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country of a candidate address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CandidateAddress AWS API Documentation
    #
    class CandidateAddress < Struct.new(
      :street_info,
      :street_number,
      :city,
      :state,
      :postal_code,
      :postal_code_plus_4,
      :country)
      SENSITIVE = [:street_info, :street_number, :city, :state, :postal_code, :postal_code_plus_4, :country]
      include Aws::Structure
    end

    # The details of a channel.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Channel AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ChannelBan AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ChannelBanSummary AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ChannelMembership AWS API Documentation
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
    #   Summary of the details of a `Channel`.
    #   @return [Types::ChannelSummary]
    #
    # @!attribute [rw] app_instance_user_membership_summary
    #   Summary of the membership details of an `AppInstanceUser`.
    #   @return [Types::AppInstanceUserMembershipSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ChannelMembershipForAppInstanceUserSummary AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ChannelMembershipSummary AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ChannelMessage AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ChannelMessageSummary AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ChannelModeratedByAppInstanceUserSummary AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ChannelModerator AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ChannelModeratorSummary AWS API Documentation
    #
    class ChannelModeratorSummary < Struct.new(
      :moderator)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the retention settings for a channel.
    #
    # @!attribute [rw] retention_days
    #   The time in days to retain the messages in a channel.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ChannelRetentionSettings AWS API Documentation
    #
    class ChannelRetentionSettings < Struct.new(
      :retention_days)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ChannelSummary AWS API Documentation
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

    # The configuration object of the Amazon Chime SDK meeting for a
    # specified media capture pipeline. `SourceType` must be
    # `ChimeSdkMeeting`.
    #
    # @!attribute [rw] source_configuration
    #   The source configuration for a specified media capture pipeline.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] artifacts_configuration
    #   The configuration for the artifacts in an Amazon Chime SDK meeting.
    #   @return [Types::ArtifactsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ChimeSdkMeetingConfiguration AWS API Documentation
    #
    class ChimeSdkMeetingConfiguration < Struct.new(
      :source_configuration,
      :artifacts_configuration)
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

    # The content artifact object.
    #
    # @!attribute [rw] state
    #   Indicates whether the content artifact is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] mux_type
    #   The MUX type of the artifact configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ContentArtifactsConfiguration AWS API Documentation
    #
    class ContentArtifactsConfiguration < Struct.new(
      :state,
      :mux_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The retention settings that determine how long to retain conversation
    # messages for an Amazon Chime Enterprise account.
    #
    # @!attribute [rw] retention_days
    #   The number of days for which to retain conversation messages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ConversationRetentionSettings AWS API Documentation
    #
    class ConversationRetentionSettings < Struct.new(
      :retention_days)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] app_instance_admin_arn
    #   The ARN of the administrator of the current `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAppInstanceAdminRequest AWS API Documentation
    #
    class CreateAppInstanceAdminRequest < Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_admin
    #   The name and ARN of the admin for the `AppInstance`.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the of the admin for the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAppInstanceAdminResponse AWS API Documentation
    #
    class CreateAppInstanceAdminResponse < Struct.new(
      :app_instance_admin,
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstance`. Limited to a 1KB string in UTF-8.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The `ClientRequestToken` of the `AppInstance`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to the `AppInstance`.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAppInstanceRequest AWS API Documentation
    #
    class CreateAppInstanceRequest < Struct.new(
      :name,
      :metadata,
      :client_request_token,
      :tags)
      SENSITIVE = [:name, :metadata, :client_request_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The Amazon Resource Number (ARN) of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAppInstanceResponse AWS API Documentation
    #
    class CreateAppInstanceResponse < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance` request.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_user_id
    #   The user ID of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The user's name.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The request's metadata. Limited to a 1KB string in UTF-8.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The token assigned to the user requesting an `AppInstance`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to the `AppInstanceUser`.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAppInstanceUserRequest AWS API Documentation
    #
    class CreateAppInstanceUserRequest < Struct.new(
      :app_instance_arn,
      :app_instance_user_id,
      :name,
      :metadata,
      :client_request_token,
      :tags)
      SENSITIVE = [:app_instance_user_id, :name, :metadata, :client_request_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The user's ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAppInstanceUserResponse AWS API Documentation
    #
    class CreateAppInstanceUserResponse < Struct.new(
      :app_instance_user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of errors returned when errors are encountered during the
    # BatchCreateAttendee and CreateAttendee actions. This includes external
    # user IDs, error codes, and error messages.
    #
    # @!attribute [rw] external_user_id
    #   The Amazon Chime SDK external user ID. An idempotency token. Links
    #   the attendee to an identity managed by a builder application.
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

    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] external_user_id
    #   The Amazon Chime SDK external user ID. An idempotency token. Links
    #   the attendee to an identity managed by a builder application.
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
    # @!attribute [rw] external_user_id
    #   The Amazon Chime SDK external user ID. An idempotency token. Links
    #   the attendee to an identity managed by a builder application.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateChannelBanRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateChannelBanResponse AWS API Documentation
    #
    class CreateChannelBanResponse < Struct.new(
      :channel_arn,
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateChannelMembershipRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateChannelMembershipResponse AWS API Documentation
    #
    class CreateChannelMembershipResponse < Struct.new(
      :channel_arn,
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateChannelModeratorRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateChannelModeratorResponse AWS API Documentation
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateChannelRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateChannelResponse AWS API Documentation
    #
    class CreateChannelResponse < Struct.new(
      :channel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_type
    #   Source type from which the media artifacts will be captured. A Chime
    #   SDK Meeting is the only supported source.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   ARN of the source from which the media artifacts are captured.
    #   @return [String]
    #
    # @!attribute [rw] sink_type
    #   Destination type to which the media artifacts are saved. You must
    #   use an S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] sink_arn
    #   The ARN of the sink type.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The unique identifier for the client request. The token makes the
    #   API request idempotent. Use a different token for different media
    #   pipeline requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] chime_sdk_meeting_configuration
    #   The configuration for a specified media capture pipeline.
    #   `SourceType` must be `ChimeSdkMeeting`.
    #   @return [Types::ChimeSdkMeetingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateMediaCapturePipelineRequest AWS API Documentation
    #
    class CreateMediaCapturePipelineRequest < Struct.new(
      :source_type,
      :source_arn,
      :sink_type,
      :sink_arn,
      :client_request_token,
      :chime_sdk_meeting_configuration)
      SENSITIVE = [:source_arn, :sink_arn, :client_request_token]
      include Aws::Structure
    end

    # @!attribute [rw] media_capture_pipeline
    #   A media capture pipeline object, the ID, source type, source ARN,
    #   sink type, and sink ARN of a media capture pipeline object.
    #   @return [Types::MediaCapturePipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateMediaCapturePipelineResponse AWS API Documentation
    #
    class CreateMediaCapturePipelineResponse < Struct.new(
      :media_capture_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @!attribute [rw] from_phone_number
    #   Phone number used as the caller ID when the remote party receives a
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] to_phone_number
    #   Phone number called when inviting someone to a meeting.
    #   @return [String]
    #
    # @!attribute [rw] join_token
    #   Token used by the Amazon Chime SDK attendee. Call the
    #   [CreateAttendee][1] action to get a join token.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chime/latest/APIReference/API_CreateAttendee.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateMeetingDialOutRequest AWS API Documentation
    #
    class CreateMeetingDialOutRequest < Struct.new(
      :meeting_id,
      :from_phone_number,
      :to_phone_number,
      :join_token)
      SENSITIVE = [:from_phone_number, :to_phone_number, :join_token]
      include Aws::Structure
    end

    # @!attribute [rw] transaction_id
    #   Unique ID that tracks API calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateMeetingDialOutResponse AWS API Documentation
    #
    class CreateMeetingDialOutResponse < Struct.new(
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   Available values: `af-south-1` , `ap-northeast-1` , `ap-northeast-2`
    #   , `ap-south-1` , `ap-southeast-1` , `ap-southeast-2` ,
    #   `ca-central-1` , `eu-central-1` , `eu-north-1` , `eu-south-1` ,
    #   `eu-west-1` , `eu-west-2` , `eu-west-3` , `sa-east-1` , `us-east-1`
    #   , `us-east-2` , `us-west-1` , `us-west-2` .
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
    #   `MediaPlacement` .
    #   @return [Types::Meeting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateMeetingResponse AWS API Documentation
    #
    class CreateMeetingResponse < Struct.new(
      :meeting)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The Region in which to create the meeting. Default: `us-east-1` .
    #
    #   Available values: `af-south-1` , `ap-northeast-1` , `ap-northeast-2`
    #   , `ap-south-1` , `ap-southeast-1` , `ap-southeast-2` ,
    #   `ca-central-1` , `eu-central-1` , `eu-north-1` , `eu-south-1` ,
    #   `eu-west-1` , `eu-west-2` , `eu-west-3` , `sa-east-1` , `us-east-1`
    #   , `us-east-2` , `us-west-1` , `us-west-2` .
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] notifications_configuration
    #   The resource target configurations for receiving Amazon Chime SDK
    #   meeting and attendee event notifications. The Amazon Chime SDK
    #   supports resource targets located in the US East (N. Virginia) AWS
    #   Region (us-east-1).
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

    # @!attribute [rw] from_phone_number
    #   The phone number that a user calls from. This is a phone number in
    #   your Amazon Chime phone number inventory.
    #   @return [String]
    #
    # @!attribute [rw] to_phone_number
    #   The phone number that the service should call.
    #   @return [String]
    #
    # @!attribute [rw] sip_media_application_id
    #   The ID of the SIP media application.
    #   @return [String]
    #
    # @!attribute [rw] sip_headers
    #   The SIP headers added to an outbound call leg.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateSipMediaApplicationCallRequest AWS API Documentation
    #
    class CreateSipMediaApplicationCallRequest < Struct.new(
      :from_phone_number,
      :to_phone_number,
      :sip_media_application_id,
      :sip_headers)
      SENSITIVE = [:from_phone_number, :to_phone_number]
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_call
    #   The actual call.
    #   @return [Types::SipMediaApplicationCall]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateSipMediaApplicationCallResponse AWS API Documentation
    #
    class CreateSipMediaApplicationCallResponse < Struct.new(
      :sip_media_application_call)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_region
    #   The AWS Region assigned to the SIP media application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The SIP media application name.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   List of endpoints (Lambda Amazon Resource Names) specified for the
    #   SIP media application. Currently, only one endpoint is supported.
    #   @return [Array<Types::SipMediaApplicationEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateSipMediaApplicationRequest AWS API Documentation
    #
    class CreateSipMediaApplicationRequest < Struct.new(
      :aws_region,
      :name,
      :endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application
    #   The SIP media application details.
    #   @return [Types::SipMediaApplication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateSipMediaApplicationResponse AWS API Documentation
    #
    class CreateSipMediaApplicationResponse < Struct.new(
      :sip_media_application)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the SIP rule.
    #   @return [String]
    #
    # @!attribute [rw] trigger_type
    #   The type of trigger assigned to the SIP rule in `TriggerValue`,
    #   currently `RequestUriHostname` or `ToPhoneNumber`.
    #   @return [String]
    #
    # @!attribute [rw] trigger_value
    #   If `TriggerType` is `RequestUriHostname`, the value can be the
    #   outbound host name of an Amazon Chime Voice Connector. If
    #   `TriggerType` is `ToPhoneNumber`, the value can be a customer-owned
    #   phone number in the E164 format. The `SipMediaApplication` specified
    #   in the `SipRule` is triggered if the request URI in an incoming SIP
    #   request matches the `RequestUriHostname`, or if the `To` header in
    #   the incoming SIP request matches the `ToPhoneNumber` value.
    #   @return [String]
    #
    # @!attribute [rw] disabled
    #   Enables or disables a rule. You must disable rules before you can
    #   delete them.
    #   @return [Boolean]
    #
    # @!attribute [rw] target_applications
    #   List of SIP media applications with priority and AWS Region. Only
    #   one SIP application per AWS Region can be used.
    #   @return [Array<Types::SipRuleTargetApplication>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateSipRuleRequest AWS API Documentation
    #
    class CreateSipRuleRequest < Struct.new(
      :name,
      :trigger_type,
      :trigger_value,
      :disabled,
      :target_applications)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_rule
    #   Returns the SIP rule information, including the rule ID, triggers,
    #   and target applications.
    #   @return [Types::SipRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateSipRuleResponse AWS API Documentation
    #
    class CreateSipRuleResponse < Struct.new(
      :sip_rule)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] name
    #   The name of the Amazon Chime Voice Connector.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region in which the Amazon Chime Voice Connector is created.
    #   Default value: `us-east-1` .
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

    # @!attribute [rw] app_instance_admin_arn
    #   The ARN of the `AppInstance`'s administrator.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAppInstanceAdminRequest AWS API Documentation
    #
    class DeleteAppInstanceAdminRequest < Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAppInstanceRequest AWS API Documentation
    #
    class DeleteAppInstanceRequest < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the streaming configurations being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAppInstanceStreamingConfigurationsRequest AWS API Documentation
    #
    class DeleteAppInstanceStreamingConfigurationsRequest < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the user request being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAppInstanceUserRequest AWS API Documentation
    #
    class DeleteAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteChannelBanRequest AWS API Documentation
    #
    class DeleteChannelBanRequest < Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteChannelMembershipRequest AWS API Documentation
    #
    class DeleteChannelMembershipRequest < Struct.new(
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
    # @!attribute [rw] message_id
    #   The ID of the message being deleted.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteChannelMessageRequest AWS API Documentation
    #
    class DeleteChannelMessageRequest < Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteChannelModeratorRequest AWS API Documentation
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteChannelRequest AWS API Documentation
    #
    class DeleteChannelRequest < Struct.new(
      :channel_arn,
      :chime_bearer)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] media_pipeline_id
    #   The ID of the media capture pipeline being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteMediaCapturePipelineRequest AWS API Documentation
    #
    class DeleteMediaCapturePipelineRequest < Struct.new(
      :media_pipeline_id)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] sip_media_application_id
    #   The SIP media application ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteSipMediaApplicationRequest AWS API Documentation
    #
    class DeleteSipMediaApplicationRequest < Struct.new(
      :sip_media_application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_rule_id
    #   The SIP rule ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteSipRuleRequest AWS API Documentation
    #
    class DeleteSipRuleRequest < Struct.new(
      :sip_rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] app_instance_admin_arn
    #   The ARN of the `AppInstanceAdmin`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeAppInstanceAdminRequest AWS API Documentation
    #
    class DescribeAppInstanceAdminRequest < Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_admin
    #   The ARN and name of the `AppInstanceUser`, the ARN of the
    #   `AppInstance`, and the created and last-updated timestamps. All
    #   timestamps use epoch milliseconds.
    #   @return [Types::AppInstanceAdmin]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeAppInstanceAdminResponse AWS API Documentation
    #
    class DescribeAppInstanceAdminResponse < Struct.new(
      :app_instance_admin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeAppInstanceRequest AWS API Documentation
    #
    class DescribeAppInstanceRequest < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance
    #   The ARN, metadata, created and last-updated timestamps, and the name
    #   of the `AppInstance`. All timestamps use epoch milliseconds.
    #   @return [Types::AppInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeAppInstanceResponse AWS API Documentation
    #
    class DescribeAppInstanceResponse < Struct.new(
      :app_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeAppInstanceUserRequest AWS API Documentation
    #
    class DescribeAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user
    #   The name of the `AppInstanceUser`.
    #   @return [Types::AppInstanceUser]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeAppInstanceUserResponse AWS API Documentation
    #
    class DescribeAppInstanceUserResponse < Struct.new(
      :app_instance_user)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelBanRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelBanResponse AWS API Documentation
    #
    class DescribeChannelBanResponse < Struct.new(
      :channel_ban)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelMembershipForAppInstanceUserRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelMembershipForAppInstanceUserResponse AWS API Documentation
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
    #   The ARN of the member.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelMembershipRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelMembershipResponse AWS API Documentation
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
    #   The ARN of the `AppInstanceUser` in the moderated channel.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelModeratedByAppInstanceUserRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelModeratedByAppInstanceUserResponse AWS API Documentation
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
    #   The ARN of the channel moderator.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelModeratorRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelModeratorResponse AWS API Documentation
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelResponse AWS API Documentation
    #
    class DescribeChannelResponse < Struct.new(
      :channel)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Settings specific to the Amazon Transcribe Medical engine.
    #
    # @!attribute [rw] language_code
    #   The language code specified for the Amazon Transcribe Medical
    #   engine.
    #   @return [String]
    #
    # @!attribute [rw] specialty
    #   The specialty specified for the Amazon Transcribe Medical engine.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of transcription.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary passed to Amazon Transcribe Medical.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region passed to Amazon Transcribe Medical. If you don't
    #   specify a Region, Amazon Chime uses the meeting's Region.
    #   @return [String]
    #
    # @!attribute [rw] content_identification_type
    #   Labels all personally identifiable information (PII) identified in
    #   your transcript. If you don't include `PiiEntityTypes`, all PII is
    #   identified.
    #
    #   You can’t set `ContentIdentificationType` and
    #   `ContentRedactionType`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/EngineTranscribeMedicalSettings AWS API Documentation
    #
    class EngineTranscribeMedicalSettings < Struct.new(
      :language_code,
      :specialty,
      :type,
      :vocabulary_name,
      :region,
      :content_identification_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings specific for Amazon Transcribe as the live transcription
    # engine.
    #
    # If you specify an invalid combination of parameters, a
    # `TranscriptFailed` event will be sent with the contents of the
    # `BadRequestException` generated by Amazon Transcribe. For more
    # information on each parameter and which combinations are valid, refer
    # to the [StartStreamTranscription][1] API in the *Amazon Transcribe
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/APIReference/API_streaming_StartStreamTranscription.html
    #
    # @!attribute [rw] language_code
    #   Specify the language code that represents the language spoken.
    #
    #   If you're unsure of the language spoken in your audio, consider
    #   using `IdentifyLanguage` to enable automatic language
    #   identification.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_method
    #   Specify how you want your vocabulary filter applied to your
    #   transcript.
    #
    #   To replace words with `***`, choose `mask`.
    #
    #   To delete words, choose `remove`.
    #
    #   To flag words without changing them, choose `tag`.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   Specify the name of the custom vocabulary filter that you want to
    #   use when processing your transcription. Note that vocabulary filter
    #   names are case sensitive.
    #
    #   If you use Amazon Transcribe in multiple Regions, the vocabulary
    #   filter must be available in Amazon Transcribe in each Region.
    #
    #   If you include `IdentifyLanguage` and want to use one or more
    #   vocabulary filters with your transcription, use the
    #   `VocabularyFilterNames` parameter instead.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_name
    #   Specify the name of the custom vocabulary that you want to use when
    #   processing your transcription. Note that vocabulary names are case
    #   sensitive.
    #
    #   If you use Amazon Transcribe multiple Regions, the vocabulary must
    #   be available in Amazon Transcribe in each Region.
    #
    #   If you include `IdentifyLanguage` and want to use one or more custom
    #   vocabularies with your transcription, use the `VocabularyNames`
    #   parameter instead.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region in which to use Amazon Transcribe.
    #
    #   If you don't specify a Region, then the `MediaRegion` parameter of
    #   the [CreateMeeting.html][1] API will be used. However, if Amazon
    #   Transcribe is not available in the `MediaRegion`, then a
    #   TranscriptFailed event is sent.
    #
    #   Use `auto` to use Amazon Transcribe in a Region near the meeting’s
    #   `MediaRegion`. For more information, refer to [Choosing a
    #   transcription Region][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeeting.html
    #   [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/transcription-options.html#choose-region
    #   @return [String]
    #
    # @!attribute [rw] enable_partial_results_stabilization
    #   Enables partial result stabilization for your transcription. Partial
    #   result stabilization can reduce latency in your output, but may
    #   impact accuracy.
    #   @return [Boolean]
    #
    # @!attribute [rw] partial_results_stability
    #   Specify the level of stability to use when you enable partial
    #   results stabilization (`EnablePartialResultsStabilization`).
    #
    #   Low stability provides the highest accuracy. High stability
    #   transcribes faster, but with slightly lower accuracy.
    #   @return [String]
    #
    # @!attribute [rw] content_identification_type
    #   Labels all personally identifiable information (PII) identified in
    #   your transcript. If you don't include `PiiEntityTypes`, all PII is
    #   identified.
    #
    #   You can’t set `ContentIdentificationType` and
    #   `ContentRedactionType`.
    #   @return [String]
    #
    # @!attribute [rw] content_redaction_type
    #   Content redaction is performed at the segment level. If you don't
    #   include `PiiEntityTypes`, all PII is redacted.
    #
    #   You can’t set `ContentIdentificationType` and
    #   `ContentRedactionType`.
    #   @return [String]
    #
    # @!attribute [rw] pii_entity_types
    #   Specify which types of personally identifiable information (PII) you
    #   want to redact in your transcript. You can include as many types as
    #   you'd like, or you can select `ALL`.
    #
    #   Values must be comma-separated and can include: `ADDRESS`,
    #   `BANK_ACCOUNT_NUMBER`, `BANK_ROUTING`, `CREDIT_DEBIT_CVV`,
    #   `CREDIT_DEBIT_EXPIRY` `CREDIT_DEBIT_NUMBER`, `EMAIL`,`NAME`,
    #   `PHONE`, `PIN`, `SSN`, or `ALL`.
    #
    #   Note that if you include `PiiEntityTypes`, you must also include
    #   `ContentIdentificationType` or `ContentRedactionType`.
    #
    #   If you include `ContentRedactionType` or
    #   `ContentIdentificationType`, but do not include `PiiEntityTypes`,
    #   all PII is redacted or identified.
    #   @return [String]
    #
    # @!attribute [rw] language_model_name
    #   Specify the name of the custom language model that you want to use
    #   when processing your transcription. Note that language model names
    #   are case sensitive.
    #
    #   The language of the specified language model must match the language
    #   code. If the languages don't match, the custom language model
    #   isn't applied. There are no errors or warnings associated with a
    #   language mismatch.
    #
    #   If you use Amazon Transcribe in multiple Regions, the custom
    #   language model must be available in Amazon Transcribe in each
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] identify_language
    #   Enables automatic language identification for your transcription.
    #
    #   If you include `IdentifyLanguage`, you can optionally use
    #   `LanguageOptions` to include a list of language codes that you think
    #   may be present in your audio stream. Including language options can
    #   improve transcription accuracy.
    #
    #   You can also use `PreferredLanguage` to include a preferred
    #   language. Doing so can help Amazon Transcribe identify the language
    #   faster.
    #
    #   You must include either `LanguageCode` or `IdentifyLanguage`.
    #
    #   Language identification can't be combined with custom language
    #   models or redaction.
    #   @return [Boolean]
    #
    # @!attribute [rw] language_options
    #   Specify two or more language codes that represent the languages you
    #   think may be present in your media; including more than five is not
    #   recommended. If you're unsure what languages are present, do not
    #   include this parameter.
    #
    #   Including language options can improve the accuracy of language
    #   identification.
    #
    #   If you include `LanguageOptions`, you must also include
    #   `IdentifyLanguage`.
    #
    #   You can only include one language dialect per language. For example,
    #   you cannot include `en-US` and `en-AU`.
    #   @return [String]
    #
    # @!attribute [rw] preferred_language
    #   Specify a preferred language from the subset of languages codes you
    #   specified in `LanguageOptions`.
    #
    #   You can only use this parameter if you include `IdentifyLanguage`
    #   and `LanguageOptions`.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_names
    #   Specify the names of the custom vocabularies that you want to use
    #   when processing your transcription. Note that vocabulary names are
    #   case sensitive.
    #
    #   If you use Amazon Transcribe in multiple Regions, the vocabulary
    #   must be available in Amazon Transcribe in each Region.
    #
    #   If you don't include `IdentifyLanguage` and want to use a custom
    #   vocabulary with your transcription, use the `VocabularyName`
    #   parameter instead.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_names
    #   Specify the names of the custom vocabulary filters that you want to
    #   use when processing your transcription. Note that vocabulary filter
    #   names are case sensitive.
    #
    #   If you use Amazon Transcribe in multiple Regions, the vocabulary
    #   filter must be available in Amazon Transcribe in each Region.
    #
    #   If you're *not* including `IdentifyLanguage` and want to use a
    #   custom vocabulary filter with your transcription, use the
    #   `VocabularyFilterName` parameter instead.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/EngineTranscribeSettings AWS API Documentation
    #
    class EngineTranscribeSettings < Struct.new(
      :language_code,
      :vocabulary_filter_method,
      :vocabulary_filter_name,
      :vocabulary_name,
      :region,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types,
      :language_model_name,
      :identify_language,
      :language_options,
      :preferred_language,
      :vocabulary_names,
      :vocabulary_filter_names)
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

    # The client is permanently forbidden from making the request.
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

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAppInstanceRetentionSettingsRequest AWS API Documentation
    #
    class GetAppInstanceRetentionSettingsRequest < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_retention_settings
    #   The retention settings for the `AppInstance`.
    #   @return [Types::AppInstanceRetentionSettings]
    #
    # @!attribute [rw] initiate_deletion_timestamp
    #   The timestamp representing the time at which the specified items are
    #   retained, in Epoch Seconds.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAppInstanceRetentionSettingsResponse AWS API Documentation
    #
    class GetAppInstanceRetentionSettingsResponse < Struct.new(
      :app_instance_retention_settings,
      :initiate_deletion_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAppInstanceStreamingConfigurationsRequest AWS API Documentation
    #
    class GetAppInstanceStreamingConfigurationsRequest < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_streaming_configurations
    #   The streaming settings.
    #   @return [Array<Types::AppInstanceStreamingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAppInstanceStreamingConfigurationsResponse AWS API Documentation
    #
    class GetAppInstanceStreamingConfigurationsResponse < Struct.new(
      :app_instance_streaming_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetChannelMessageRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetChannelMessageResponse AWS API Documentation
    #
    class GetChannelMessageResponse < Struct.new(
      :channel_message)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] media_pipeline_id
    #   The ID of the pipeline that you want to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetMediaCapturePipelineRequest AWS API Documentation
    #
    class GetMediaCapturePipelineRequest < Struct.new(
      :media_pipeline_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_capture_pipeline
    #   The media capture pipeline object.
    #   @return [Types::MediaCapturePipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetMediaCapturePipelineResponse AWS API Documentation
    #
    class GetMediaCapturePipelineResponse < Struct.new(
      :media_capture_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetMessagingSessionEndpointRequest AWS API Documentation
    #
    class GetMessagingSessionEndpointRequest < Aws::EmptyStructure; end

    # @!attribute [rw] endpoint
    #   The endpoint returned in the response.
    #   @return [Types::MessagingSessionEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetMessagingSessionEndpointResponse AWS API Documentation
    #
    class GetMessagingSessionEndpointResponse < Struct.new(
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] sip_media_application_id
    #   The SIP media application ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetSipMediaApplicationLoggingConfigurationRequest AWS API Documentation
    #
    class GetSipMediaApplicationLoggingConfigurationRequest < Struct.new(
      :sip_media_application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_logging_configuration
    #   The actual logging configuration.
    #   @return [Types::SipMediaApplicationLoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetSipMediaApplicationLoggingConfigurationResponse AWS API Documentation
    #
    class GetSipMediaApplicationLoggingConfigurationResponse < Struct.new(
      :sip_media_application_logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_id
    #   The SIP media application ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetSipMediaApplicationRequest AWS API Documentation
    #
    class GetSipMediaApplicationRequest < Struct.new(
      :sip_media_application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application
    #   The SIP media application details.
    #   @return [Types::SipMediaApplication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetSipMediaApplicationResponse AWS API Documentation
    #
    class GetSipMediaApplicationResponse < Struct.new(
      :sip_media_application)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_rule_id
    #   The SIP rule ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetSipRuleRequest AWS API Documentation
    #
    class GetSipRuleRequest < Struct.new(
      :sip_rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_rule
    #   The SIP rule details.
    #   @return [Types::SipRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetSipRuleResponse AWS API Documentation
    #
    class GetSipRuleResponse < Struct.new(
      :sip_rule)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/Identity AWS API Documentation
    #
    class Identity < Struct.new(
      :arn,
      :name)
      SENSITIVE = [:name]
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

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of administrators that you want to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned from previous API requests until the number of
    #   administrators is reached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAppInstanceAdminsRequest AWS API Documentation
    #
    class ListAppInstanceAdminsRequest < Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_admins
    #   The information for each administrator.
    #   @return [Array<Types::AppInstanceAdminSummary>]
    #
    # @!attribute [rw] next_token
    #   The token returned from previous API requests until the number of
    #   administrators is reached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAppInstanceAdminsResponse AWS API Documentation
    #
    class ListAppInstanceAdminsResponse < Struct.new(
      :app_instance_arn,
      :app_instance_admins,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of requests that you want returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested users are
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAppInstanceUsersRequest AWS API Documentation
    #
    class ListAppInstanceUsersRequest < Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_users
    #   The information for each requested `AppInstanceUser`.
    #   @return [Array<Types::AppInstanceUserSummary>]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested users are
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAppInstanceUsersResponse AWS API Documentation
    #
    class ListAppInstanceUsersResponse < Struct.new(
      :app_instance_arn,
      :app_instance_users,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of `AppInstance`s that you want to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API requests until you reach the
    #   maximum number of `AppInstance`s.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAppInstancesRequest AWS API Documentation
    #
    class ListAppInstancesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instances
    #   The information for each `AppInstance`.
    #   @return [Array<Types::AppInstanceSummary>]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API requests until the maximum number
    #   of `AppInstance`s is reached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAppInstancesResponse AWS API Documentation
    #
    class ListAppInstancesResponse < Struct.new(
      :app_instances,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelBansRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelBansResponse AWS API Documentation
    #
    class ListChannelBansResponse < Struct.new(
      :channel_arn,
      :next_token,
      :channel_bans)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelMembershipsForAppInstanceUserRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelMembershipsForAppInstanceUserResponse AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelMembershipsRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelMembershipsResponse AWS API Documentation
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelMessagesRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelMessagesResponse AWS API Documentation
    #
    class ListChannelMessagesResponse < Struct.new(
      :channel_arn,
      :next_token,
      :channel_messages)
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelModeratorsRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelModeratorsResponse AWS API Documentation
    #
    class ListChannelModeratorsResponse < Struct.new(
      :channel_arn,
      :next_token,
      :channel_moderators)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelsModeratedByAppInstanceUserRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelsModeratedByAppInstanceUserResponse AWS API Documentation
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelsRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelsResponse AWS API Documentation
    #
    class ListChannelsResponse < Struct.new(
      :channels,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   Range: 1 - 99.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListMediaCapturePipelinesRequest AWS API Documentation
    #
    class ListMediaCapturePipelinesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_capture_pipelines
    #   The media capture pipeline objects in the list.
    #   @return [Array<Types::MediaCapturePipeline>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListMediaCapturePipelinesResponse AWS API Documentation
    #
    class ListMediaCapturePipelinesResponse < Struct.new(
      :media_capture_pipelines,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Defaults
    #   to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListSipMediaApplicationsRequest AWS API Documentation
    #
    class ListSipMediaApplicationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_applications
    #   List of SIP media applications and application details.
    #   @return [Array<Types::SipMediaApplication>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListSipMediaApplicationsResponse AWS API Documentation
    #
    class ListSipMediaApplicationsResponse < Struct.new(
      :sip_media_applications,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_id
    #   The SIP media application ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListSipRulesRequest AWS API Documentation
    #
    class ListSipRulesRequest < Struct.new(
      :sip_media_application_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_rules
    #   List of SIP rules and rule details.
    #   @return [Array<Types::SipRule>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListSipRulesResponse AWS API Documentation
    #
    class ListSipRulesResponse < Struct.new(
      :sip_rules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_type
    #   The phone number product type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListSupportedPhoneNumberCountriesRequest AWS API Documentation
    #
    class ListSupportedPhoneNumberCountriesRequest < Struct.new(
      :product_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_countries
    #   The supported phone number countries.
    #   @return [Array<Types::PhoneNumberCountry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListSupportedPhoneNumberCountriesResponse AWS API Documentation
    #
    class ListSupportedPhoneNumberCountriesResponse < Struct.new(
      :phone_number_countries)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] enable_sip_logs
    #   Boolean that enables SIP message logs to Amazon CloudWatch logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_media_metric_logs
    #   Boolean that enables logging of detailed media metrics for Voice
    #   Connectors to Amazon CloudWatch logs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/LoggingConfiguration AWS API Documentation
    #
    class LoggingConfiguration < Struct.new(
      :enable_sip_logs,
      :enable_media_metric_logs)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # A media capture pipeline object consisting of an ID, source type,
    # source ARN, a sink type, a sink ARN, and a configuration object.
    #
    # @!attribute [rw] media_pipeline_id
    #   The ID of a media capture pipeline.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Source type from which media artifacts are saved. You must use
    #   `ChimeMeeting`.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   ARN of the source from which the media artifacts will be saved.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the media capture pipeline.
    #   @return [String]
    #
    # @!attribute [rw] sink_type
    #   Destination type to which the media artifacts are saved. You must
    #   use an S3 Bucket.
    #   @return [String]
    #
    # @!attribute [rw] sink_arn
    #   ARN of the destination to which the media artifacts are saved.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the capture pipeline was created, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which the capture pipeline was updated, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] chime_sdk_meeting_configuration
    #   The configuration for a specified media capture pipeline.
    #   `SourceType` must be `ChimeSdkMeeting`.
    #   @return [Types::ChimeSdkMeetingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/MediaCapturePipeline AWS API Documentation
    #
    class MediaCapturePipeline < Struct.new(
      :media_pipeline_id,
      :source_type,
      :source_arn,
      :status,
      :sink_type,
      :sink_arn,
      :created_timestamp,
      :updated_timestamp,
      :chime_sdk_meeting_configuration)
      SENSITIVE = [:source_arn, :sink_arn]
      include Aws::Structure
    end

    # A set of endpoints used by clients to connect to the media service
    # group for an Amazon Chime SDK meeting.
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
    #
    #   **This parameter is is no longer supported and no longer used by the
    #   Amazon Chime SDK.**
    #   @return [String]
    #
    # @!attribute [rw] screen_sharing_url
    #   The screen sharing URL.
    #
    #   **This parameter is is no longer supported and no longer used by the
    #   Amazon Chime SDK.**.
    #   @return [String]
    #
    # @!attribute [rw] screen_viewing_url
    #   The screen viewing URL.
    #
    #   **This parameter is is no longer supported and no longer used by the
    #   Amazon Chime SDK.**
    #   @return [String]
    #
    # @!attribute [rw] signaling_url
    #   The signaling URL.
    #   @return [String]
    #
    # @!attribute [rw] turn_control_url
    #   The turn control URL.
    #
    #   **This parameter is is no longer supported and no longer used by the
    #   Amazon Chime SDK.**
    #   @return [String]
    #
    # @!attribute [rw] event_ingestion_url
    #   The event ingestion URL to which you send client meeting events.
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
      :turn_control_url,
      :event_ingestion_url)
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
    #   The Region in which you create the meeting. Available values:
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

    # The resource target configurations for receiving Amazon Chime SDK
    # meeting and attendee event notifications. The Amazon Chime SDK
    # supports resource targets located in the US East (N. Virginia) AWS
    # Region (`us-east-1`).
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

    # The websocket endpoint used to connect to Amazon Chime SDK messaging.
    #
    # @!attribute [rw] url
    #   The endpoint to which you establish a websocket connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/MessagingSessionEndpoint AWS API Documentation
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
    # <note markdown="1"> The parameters listed below are not required, but you must use at
    # least one.
    #
    #  </note>
    #
    # @!attribute [rw] routes
    #   The call distribution properties defined for your SIP hosts. Valid
    #   range: Minimum value of 1. Maximum value of 20. This parameter is
    #   not required, but you must specify this parameter or `Disabled`.
    #   @return [Array<Types::OriginationRoute>]
    #
    # @!attribute [rw] disabled
    #   When origination settings are disabled, inbound calls are not
    #   enabled for your Amazon Chime Voice Connector. This parameter is not
    #   required, but you must specify this parameter or `Routes`.
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
    # <note markdown="1"> The parameters listed below are not required, but you must use at
    # least one.
    #
    #  </note>
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
    #   calls are redistributed among them based on their relative weight.
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
    # @!attribute [rw] country
    #   The phone number country. Format: ISO 3166-1 alpha-2.
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

    # The phone number country.
    #
    # @!attribute [rw] country_code
    #   The phone number country code. Format: ISO 3166-1 alpha-2.
    #   @return [String]
    #
    # @!attribute [rw] supported_phone_number_types
    #   The supported phone number types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PhoneNumberCountry AWS API Documentation
    #
    class PhoneNumberCountry < Struct.new(
      :country_code,
      :supported_phone_number_types)
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
    #   The phone number order creation time stamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The updated phone number order time stamp, in ISO 8601 format.
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
    #   The created time stamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The updated time stamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] ended_timestamp
    #   The ended time stamp, in ISO 8601 format.
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

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_retention_settings
    #   The time in days to retain data. Data type: number.
    #   @return [Types::AppInstanceRetentionSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutAppInstanceRetentionSettingsRequest AWS API Documentation
    #
    class PutAppInstanceRetentionSettingsRequest < Struct.new(
      :app_instance_arn,
      :app_instance_retention_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_retention_settings
    #   The time in days to retain data. Data type: number.
    #   @return [Types::AppInstanceRetentionSettings]
    #
    # @!attribute [rw] initiate_deletion_timestamp
    #   The time at which the API deletes data.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutAppInstanceRetentionSettingsResponse AWS API Documentation
    #
    class PutAppInstanceRetentionSettingsResponse < Struct.new(
      :app_instance_retention_settings,
      :initiate_deletion_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_streaming_configurations
    #   The streaming configurations set for an `AppInstance`.
    #   @return [Array<Types::AppInstanceStreamingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutAppInstanceStreamingConfigurationsRequest AWS API Documentation
    #
    class PutAppInstanceStreamingConfigurationsRequest < Struct.new(
      :app_instance_arn,
      :app_instance_streaming_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_streaming_configurations
    #   The streaming configurations of an `AppInstance`.
    #   @return [Array<Types::AppInstanceStreamingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutAppInstanceStreamingConfigurationsResponse AWS API Documentation
    #
    class PutAppInstanceStreamingConfigurationsResponse < Struct.new(
      :app_instance_streaming_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   be an HTTPS endpoint or an AWS Lambda function ARN.
    #   @return [Types::EventsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutEventsConfigurationResponse AWS API Documentation
    #
    class PutEventsConfigurationResponse < Struct.new(
      :events_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] sip_media_application_id
    #   The SIP media application ID.
    #   @return [String]
    #
    # @!attribute [rw] sip_media_application_logging_configuration
    #   The actual logging configuration.
    #   @return [Types::SipMediaApplicationLoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutSipMediaApplicationLoggingConfigurationRequest AWS API Documentation
    #
    class PutSipMediaApplicationLoggingConfigurationRequest < Struct.new(
      :sip_media_application_id,
      :sip_media_application_logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_logging_configuration
    #   The logging configuration of the SIP media application.
    #   @return [Types::SipMediaApplicationLoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutSipMediaApplicationLoggingConfigurationResponse AWS API Documentation
    #
    class PutSipMediaApplicationLoggingConfigurationResponse < Struct.new(
      :sip_media_application_logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RedactChannelMessageRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RedactChannelMessageResponse AWS API Documentation
    #
    class RedactChannelMessageResponse < Struct.new(
      :channel_arn,
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   configure an interface that receives events from Amazon Chime.
    #   @return [Types::Bot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RegenerateSecurityTokenResponse AWS API Documentation
    #
    class RegenerateSecurityTokenResponse < Struct.new(
      :bot)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # determine how long to retain items such as chat-room messages and
    # chat-conversation messages.
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

    # The retention settings that determine how long to retain chat-room
    # messages for an Amazon Chime Enterprise account.
    #
    # @!attribute [rw] retention_days
    #   The number of days for which to retain chat-room messages.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RoomRetentionSettings AWS API Documentation
    #
    class RoomRetentionSettings < Struct.new(
      :retention_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] area_code
    #   The area code used to filter results. Only applies to the US.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city used to filter results. Only applies to the US.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country used to filter results. Defaults to the US Format: ISO
    #   3166-1 alpha-2.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state used to filter results. Required only if you provide
    #   `City`. Only applies to the US.
    #   @return [String]
    #
    # @!attribute [rw] toll_free_prefix
    #   The toll-free prefix that you use to filter results. Only applies to
    #   the US.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_type
    #   The phone number type used to filter results. Required for non-US
    #   numbers.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
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
      :phone_number_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of search results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SearchAvailablePhoneNumbersResponse AWS API Documentation
    #
    class SearchAvailablePhoneNumbersResponse < Struct.new(
      :e164_phone_numbers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The video streams to capture for a specified media capture pipeline.
    # The total number of video streams can't exceed 25.
    #
    # @!attribute [rw] attendee_ids
    #   The attendee IDs of the streams selected for a media capture
    #   pipeline.
    #   @return [Array<String>]
    #
    # @!attribute [rw] external_user_ids
    #   The external user IDs of the streams selected for a media capture
    #   pipeline.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SelectedVideoStreams AWS API Documentation
    #
    class SelectedVideoStreams < Struct.new(
      :attendee_ids,
      :external_user_ids)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SendChannelMessageRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SendChannelMessageResponse AWS API Documentation
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

    # The details of the SIP media application, including name and
    # endpoints. An AWS account can have multiple SIP media applications.
    #
    # @!attribute [rw] sip_media_application_id
    #   The SIP media application ID.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region in which the SIP media application is created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the SIP media application.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   List of endpoints for SIP media application. Currently, only one
    #   endpoint per SIP media application is permitted.
    #   @return [Array<Types::SipMediaApplicationEndpoint>]
    #
    # @!attribute [rw] created_timestamp
    #   The SIP media application creation timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The SIP media application updated timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SipMediaApplication AWS API Documentation
    #
    class SipMediaApplication < Struct.new(
      :sip_media_application_id,
      :aws_region,
      :name,
      :endpoints,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `Call` instance for a SIP media application.
    #
    # @!attribute [rw] transaction_id
    #   The transaction ID of a call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SipMediaApplicationCall AWS API Documentation
    #
    class SipMediaApplicationCall < Struct.new(
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint assigned to the SIP media application.
    #
    # @!attribute [rw] lambda_arn
    #   Valid Amazon Resource Name (ARN) of the Lambda function, version, or
    #   alias. The function must be created in the same AWS Region as the
    #   SIP media application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SipMediaApplicationEndpoint AWS API Documentation
    #
    class SipMediaApplicationEndpoint < Struct.new(
      :lambda_arn)
      SENSITIVE = [:lambda_arn]
      include Aws::Structure
    end

    # Logging configuration of the SIP media application.
    #
    # @!attribute [rw] enable_sip_media_application_message_logs
    #   Enables application message logs for the SIP media application.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SipMediaApplicationLoggingConfiguration AWS API Documentation
    #
    class SipMediaApplicationLoggingConfiguration < Struct.new(
      :enable_sip_media_application_message_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SIP rule details, including name, triggers, and target
    # applications. An AWS account can have multiple SIP rules.
    #
    # @!attribute [rw] sip_rule_id
    #   The SIP rule ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the SIP rule.
    #   @return [String]
    #
    # @!attribute [rw] disabled
    #   Indicates whether the SIP rule is enabled or disabled. You must
    #   disable a rule before you can delete it.
    #   @return [Boolean]
    #
    # @!attribute [rw] trigger_type
    #   The type of trigger assigned to the SIP rule in `TriggerValue`,
    #   currently `RequestUriHostname` or `ToPhoneNumber`.
    #   @return [String]
    #
    # @!attribute [rw] trigger_value
    #   If `TriggerType` is `RequestUriHostname`, then the value can be the
    #   outbound host name of the Amazon Chime Voice Connector. If
    #   `TriggerType` is `ToPhoneNumber`, then the value can be a
    #   customer-owned phone number in E164 format. `SipRule` is triggered
    #   when a SIP rule requests host name or `ToPhoneNumber` matches in the
    #   incoming SIP request.
    #   @return [String]
    #
    # @!attribute [rw] target_applications
    #   Target SIP media application and other details, such as priority and
    #   AWS Region, to be specified in the SIP rule. Only one SIP rule per
    #   AWS Region can be provided.
    #   @return [Array<Types::SipRuleTargetApplication>]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the SIP rule was created, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which the SIP rule was last updated, in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SipRule AWS API Documentation
    #
    class SipRule < Struct.new(
      :sip_rule_id,
      :name,
      :disabled,
      :trigger_type,
      :trigger_value,
      :target_applications,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Target SIP media application and other details, such as priority and
    # AWS Region, to be specified in the SIP rule. Only one SIP rule per AWS
    # Region can be provided.
    #
    # @!attribute [rw] sip_media_application_id
    #   The SIP media application ID.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   Priority of the SIP media application in the target list.
    #   @return [Integer]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region of the target application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SipRuleTargetApplication AWS API Documentation
    #
    class SipRuleTargetApplication < Struct.new(
      :sip_media_application_id,
      :priority,
      :aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Source configuration for a specified media capture pipeline.
    #
    # @!attribute [rw] selected_video_streams
    #   The selected video streams to capture for a specified media capture
    #   pipeline. The number of video streams can't exceed 25.
    #   @return [Types::SelectedVideoStreams]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SourceConfiguration AWS API Documentation
    #
    class SourceConfiguration < Struct.new(
      :selected_video_streams)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meeting_id
    #   The unique ID of the meeting being transcribed.
    #   @return [String]
    #
    # @!attribute [rw] transcription_configuration
    #   The configuration for the current transcription operation. Must
    #   contain `EngineTranscribeSettings` or
    #   `EngineTranscribeMedicalSettings`.
    #   @return [Types::TranscriptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/StartMeetingTranscriptionRequest AWS API Documentation
    #
    class StartMeetingTranscriptionRequest < Struct.new(
      :meeting_id,
      :transcription_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/StartMeetingTranscriptionResponse AWS API Documentation
    #
    class StartMeetingTranscriptionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] meeting_id
    #   The unique ID of the meeting for which you stop transcription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/StopMeetingTranscriptionRequest AWS API Documentation
    #
    class StopMeetingTranscriptionRequest < Struct.new(
      :meeting_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/StopMeetingTranscriptionResponse AWS API Documentation
    #
    class StopMeetingTranscriptionResponse < Aws::EmptyStructure; end

    # The streaming configuration associated with an Amazon Chime Voice
    # Connector. Specifies whether media streaming is enabled for sending to
    # Amazon Kinesis, and shows the retention period for the Amazon Kinesis
    # data, in hours.
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

    # The configuration for the current transcription operation. Must
    # contain `EngineTranscribeSettings` or
    # `EngineTranscribeMedicalSettings`.
    #
    # @!attribute [rw] engine_transcribe_settings
    #   The transcription configuration settings passed to Amazon
    #   Transcribe.
    #   @return [Types::EngineTranscribeSettings]
    #
    # @!attribute [rw] engine_transcribe_medical_settings
    #   The transcription configuration settings passed to Amazon Transcribe
    #   Medical.
    #   @return [Types::EngineTranscribeMedicalSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/TranscriptionConfiguration AWS API Documentation
    #
    class TranscriptionConfiguration < Struct.new(
      :engine_transcribe_settings,
      :engine_transcribe_medical_settings)
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

    # @!attribute [rw] account_id
    #   The Amazon Chime account ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the specified Amazon Chime account.
    #   @return [String]
    #
    # @!attribute [rw] default_license
    #   The default license applied when you add users to an Amazon Chime
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAccountRequest AWS API Documentation
    #
    class UpdateAccountRequest < Struct.new(
      :account_id,
      :name,
      :default_license)
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

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that you want to change.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata that you want to change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAppInstanceRequest AWS API Documentation
    #
    class UpdateAppInstanceRequest < Struct.new(
      :app_instance_arn,
      :name,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAppInstanceResponse AWS API Documentation
    #
    class UpdateAppInstanceResponse < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstanceUser`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAppInstanceUserRequest AWS API Documentation
    #
    class UpdateAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAppInstanceUserResponse AWS API Documentation
    #
    class UpdateAppInstanceUserResponse < Struct.new(
      :app_instance_user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateChannelMessageRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateChannelMessageResponse AWS API Documentation
    #
    class UpdateChannelMessageResponse < Struct.new(
      :channel_arn,
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_arn
    #   The ARN of the channel.
    #   @return [String]
    #
    # @!attribute [rw] chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateChannelReadMarkerRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateChannelReadMarkerResponse AWS API Documentation
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
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateChannelRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateChannelResponse AWS API Documentation
    #
    class UpdateChannelResponse < Struct.new(
      :channel_arn)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateGlobalSettingsRequest AWS API Documentation
    #
    class UpdateGlobalSettingsRequest < Struct.new(
      :business_calling,
      :voice_connector)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] sip_media_application_id
    #   The ID of the SIP media application handling the call.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The ID of the call transaction.
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   Arguments made available to the Lambda function as part of the
    #   `CALL_UPDATE_REQUESTED` event. Can contain 0-20 key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateSipMediaApplicationCallRequest AWS API Documentation
    #
    class UpdateSipMediaApplicationCallRequest < Struct.new(
      :sip_media_application_id,
      :transaction_id,
      :arguments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_call
    #   A `Call` instance for a SIP media application.
    #   @return [Types::SipMediaApplicationCall]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateSipMediaApplicationCallResponse AWS API Documentation
    #
    class UpdateSipMediaApplicationCallResponse < Struct.new(
      :sip_media_application_call)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_id
    #   The SIP media application ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the specified SIP media application.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   The new set of endpoints for the specified SIP media application.
    #   @return [Array<Types::SipMediaApplicationEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateSipMediaApplicationRequest AWS API Documentation
    #
    class UpdateSipMediaApplicationRequest < Struct.new(
      :sip_media_application_id,
      :name,
      :endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application
    #   The updated SIP media application details.
    #   @return [Types::SipMediaApplication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateSipMediaApplicationResponse AWS API Documentation
    #
    class UpdateSipMediaApplicationResponse < Struct.new(
      :sip_media_application)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_rule_id
    #   The SIP rule ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the specified SIP rule.
    #   @return [String]
    #
    # @!attribute [rw] disabled
    #   The new value specified to indicate whether the rule is disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] target_applications
    #   The new value of the list of target applications.
    #   @return [Array<Types::SipRuleTargetApplication>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateSipRuleRequest AWS API Documentation
    #
    class UpdateSipRuleRequest < Struct.new(
      :sip_rule_id,
      :name,
      :disabled,
      :target_applications)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_rule
    #   Updated SIP rule details.
    #   @return [Types::SipRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateSipRuleResponse AWS API Documentation
    #
    class UpdateSipRuleResponse < Struct.new(
      :sip_rule)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] street_number
    #   The address street number, such as `200` or `2121`.
    #   @return [String]
    #
    # @!attribute [rw] street_info
    #   The address street information, such as `8th Avenue`.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The address city, such as `Portland`.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The address state, such as `ME`.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The address country, such as `US`.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The address postal code, such as `04352`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ValidateE911AddressRequest AWS API Documentation
    #
    class ValidateE911AddressRequest < Struct.new(
      :aws_account_id,
      :street_number,
      :street_info,
      :city,
      :state,
      :country,
      :postal_code)
      SENSITIVE = [:street_number, :street_info, :city, :state, :country, :postal_code]
      include Aws::Structure
    end

    # @!attribute [rw] validation_result
    #   Number indicating the result of address validation. `0` means the
    #   address was perfect as is and successfully validated. `1` means the
    #   address was corrected. `2` means the address sent was not close
    #   enough and was not validated.
    #   @return [Integer]
    #
    # @!attribute [rw] address_external_id
    #   The ID that represents the address.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The validated address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] candidate_address_list
    #   The list of address suggestions.
    #   @return [Array<Types::CandidateAddress>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ValidateE911AddressResponse AWS API Documentation
    #
    class ValidateE911AddressResponse < Struct.new(
      :validation_result,
      :address_external_id,
      :address,
      :candidate_address_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The video artifact configuration object.
    #
    # @!attribute [rw] state
    #   Indicates whether the video artifact is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] mux_type
    #   The MUX type of the video artifact configuration object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/VideoArtifactsConfiguration AWS API Documentation
    #
    class VideoArtifactsConfiguration < Struct.new(
      :state,
      :mux_type)
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
    # @!attribute [rw] voice_connector_arn
    #   The ARN of the specified Amazon Chime Voice Connector.
    #   @return [String]
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
      :updated_timestamp,
      :voice_connector_arn)
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
    #   The Amazon Chime Voice Connector group creation time stamp, in ISO
    #   8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The updated Amazon Chime Voice Connector group time stamp, in ISO
    #   8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] voice_connector_group_arn
    #   The ARN of the specified Amazon Chime Voice Connector group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/VoiceConnectorGroup AWS API Documentation
    #
    class VoiceConnectorGroup < Struct.new(
      :voice_connector_group_id,
      :name,
      :voice_connector_items,
      :created_timestamp,
      :updated_timestamp,
      :voice_connector_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # For Amazon Chime Voice Connector groups, the Amazon Chime Voice
    # Connectors to which to route inbound calls. Includes priority
    # configuration settings. Limit: 3 `VoiceConnectorItems` per Amazon
    # Chime Voice Connector group.
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
