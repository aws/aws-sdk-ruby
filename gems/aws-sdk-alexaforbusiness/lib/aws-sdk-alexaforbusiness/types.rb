# frozen_string_literal: true

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource being created already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AlreadyExistsException AWS API Documentation
    #
    class AlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateContactWithAddressBookResponse AWS API Documentation
    #
    class AssociateContactWithAddressBookResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateDeviceWithNetworkProfileRequest
    #   data as a hash:
    #
    #       {
    #         device_arn: "Arn", # required
    #         network_profile_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] device_arn
    #   The device ARN.
    #   @return [String]
    #
    # @!attribute [rw] network_profile_arn
    #   The ARN of the network profile to associate with a device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateDeviceWithNetworkProfileRequest AWS API Documentation
    #
    class AssociateDeviceWithNetworkProfileRequest < Struct.new(
      :device_arn,
      :network_profile_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateDeviceWithNetworkProfileResponse AWS API Documentation
    #
    class AssociateDeviceWithNetworkProfileResponse < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateSkillWithSkillGroupResponse AWS API Documentation
    #
    class AssociateSkillWithSkillGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateSkillWithUsersRequest
    #   data as a hash:
    #
    #       {
    #         skill_id: "SkillId", # required
    #       }
    #
    # @!attribute [rw] skill_id
    #   The private skill ID you want to make available to enrolled users.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateSkillWithUsersRequest AWS API Documentation
    #
    class AssociateSkillWithUsersRequest < Struct.new(
      :skill_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateSkillWithUsersResponse AWS API Documentation
    #
    class AssociateSkillWithUsersResponse < Aws::EmptyStructure; end

    # The audio message. There is a 1 MB limit on the audio file input and
    # the only supported format is MP3. To convert your MP3 audio files to
    # an Alexa-friendly,
    #
    # required codec version (MPEG version 2) and bit rate (48 kbps), you
    # might use converter software. One option for this is a command-line
    # tool, FFmpeg. For more information, see [FFmpeg][1]. The following
    # command converts the provided &lt;input-file&gt; to an MP3 file that
    # is played in the announcement:
    #
    # `ffmpeg -i <input-file> -ac 2 -codec:a libmp3lame -b:a 48k -ar 16000
    # <output-file.mp3>`
    #
    #
    #
    # [1]: https://www.ffmpeg.org/
    #
    # @note When making an API call, you may pass Audio
    #   data as a hash:
    #
    #       {
    #         locale: "en-US", # required, accepts en-US
    #         location: "AudioLocation", # required
    #       }
    #
    # @!attribute [rw] locale
    #   The locale of the audio message. Currently, en-US is supported.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the audio file. Currently, S3 URLs are supported.
    #   Only S3 locations comprised of safe characters are valid. For more
    #   information, see [Safe Characters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#Safe%20Characters
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Audio AWS API Documentation
    #
    class Audio < Struct.new(
      :locale,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Usage report with specified parameters.
    #
    # @!attribute [rw] status
    #   The status of the report generation execution (RUNNING, SUCCEEDED,
    #   or FAILED).
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The S3 location of the output reports.
    #   @return [Types::BusinessReportS3Location]
    #
    # @!attribute [rw] delivery_time
    #   The time of report delivery.
    #   @return [Time]
    #
    # @!attribute [rw] download_url
    #   The download link where a user can download the report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/BusinessReport AWS API Documentation
    #
    class BusinessReport < Struct.new(
      :status,
      :failure_code,
      :s3_location,
      :delivery_time,
      :download_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The content range of the report.
    #
    # @note When making an API call, you may pass BusinessReportContentRange
    #   data as a hash:
    #
    #       {
    #         interval: "ONE_DAY", # required, accepts ONE_DAY, ONE_WEEK, THIRTY_DAYS
    #       }
    #
    # @!attribute [rw] interval
    #   The interval of the content range.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/BusinessReportContentRange AWS API Documentation
    #
    class BusinessReportContentRange < Struct.new(
      :interval)
      SENSITIVE = []
      include Aws::Structure
    end

    # The recurrence of the reports.
    #
    # @note When making an API call, you may pass BusinessReportRecurrence
    #   data as a hash:
    #
    #       {
    #         start_date: "Date",
    #       }
    #
    # @!attribute [rw] start_date
    #   The start date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/BusinessReportRecurrence AWS API Documentation
    #
    class BusinessReportRecurrence < Struct.new(
      :start_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 location of the output reports.
    #
    # @!attribute [rw] path
    #   The path of the business report.
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   The S3 bucket name of the output reports.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/BusinessReportS3Location AWS API Documentation
    #
    class BusinessReportS3Location < Struct.new(
      :path,
      :bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The schedule of the usage report.
    #
    # @!attribute [rw] schedule_arn
    #   The ARN of the business report schedule.
    #   @return [String]
    #
    # @!attribute [rw] schedule_name
    #   The name identifier of the schedule.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The S3 bucket name of the output reports.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The S3 key where the report is delivered.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the generated report (individual CSV files or zipped
    #   files of individual files).
    #   @return [String]
    #
    # @!attribute [rw] content_range
    #   The content range of the reports.
    #   @return [Types::BusinessReportContentRange]
    #
    # @!attribute [rw] recurrence
    #   The recurrence of the reports.
    #   @return [Types::BusinessReportRecurrence]
    #
    # @!attribute [rw] last_business_report
    #   The details of the last business report delivery for a specified
    #   time interval.
    #   @return [Types::BusinessReport]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/BusinessReportSchedule AWS API Documentation
    #
    class BusinessReportSchedule < Struct.new(
      :schedule_arn,
      :schedule_name,
      :s3_bucket_name,
      :s3_key_prefix,
      :format,
      :content_range,
      :recurrence,
      :last_business_report)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # There is a concurrent modification of resources.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The phone number of the contact. The phone number type defaults to
    #   WORK. You can either specify PhoneNumber or PhoneNumbers. We
    #   recommend that you use PhoneNumbers, which lets you specify the
    #   phone number type and multiple numbers.
    #   @return [String]
    #
    # @!attribute [rw] phone_numbers
    #   The list of phone numbers for the contact.
    #   @return [Array<Types::PhoneNumber>]
    #
    # @!attribute [rw] sip_addresses
    #   The list of SIP addresses for the contact.
    #   @return [Array<Types::SipAddress>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Contact AWS API Documentation
    #
    class Contact < Struct.new(
      :contact_arn,
      :display_name,
      :first_name,
      :last_name,
      :phone_number,
      :phone_numbers,
      :sip_addresses)
      SENSITIVE = [:phone_number]
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
    #   The phone number of the contact. The phone number type defaults to
    #   WORK. You can specify PhoneNumber or PhoneNumbers. We recommend that
    #   you use PhoneNumbers, which lets you specify the phone number type
    #   and multiple numbers.
    #   @return [String]
    #
    # @!attribute [rw] phone_numbers
    #   The list of phone numbers for the contact.
    #   @return [Array<Types::PhoneNumber>]
    #
    # @!attribute [rw] sip_addresses
    #   The list of SIP addresses for the contact.
    #   @return [Array<Types::SipAddress>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ContactData AWS API Documentation
    #
    class ContactData < Struct.new(
      :contact_arn,
      :display_name,
      :first_name,
      :last_name,
      :phone_number,
      :phone_numbers,
      :sip_addresses)
      SENSITIVE = [:phone_number]
      include Aws::Structure
    end

    # The content definition. This can contain only one text, SSML, or audio
    # list object.
    #
    # @note When making an API call, you may pass Content
    #   data as a hash:
    #
    #       {
    #         text_list: [
    #           {
    #             locale: "en-US", # required, accepts en-US
    #             value: "TextValue", # required
    #           },
    #         ],
    #         ssml_list: [
    #           {
    #             locale: "en-US", # required, accepts en-US
    #             value: "SsmlValue", # required
    #           },
    #         ],
    #         audio_list: [
    #           {
    #             locale: "en-US", # required, accepts en-US
    #             location: "AudioLocation", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] text_list
    #   The list of text messages.
    #   @return [Array<Types::Text>]
    #
    # @!attribute [rw] ssml_list
    #   The list of SSML messages.
    #   @return [Array<Types::Ssml>]
    #
    # @!attribute [rw] audio_list
    #   The list of audio messages.
    #   @return [Array<Types::Audio>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Content AWS API Documentation
    #
    class Content < Struct.new(
      :text_list,
      :ssml_list,
      :audio_list)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateBusinessReportScheduleRequest
    #   data as a hash:
    #
    #       {
    #         schedule_name: "BusinessReportScheduleName",
    #         s3_bucket_name: "CustomerS3BucketName",
    #         s3_key_prefix: "S3KeyPrefix",
    #         format: "CSV", # required, accepts CSV, CSV_ZIP
    #         content_range: { # required
    #           interval: "ONE_DAY", # required, accepts ONE_DAY, ONE_WEEK, THIRTY_DAYS
    #         },
    #         recurrence: {
    #           start_date: "Date",
    #         },
    #         client_request_token: "ClientRequestToken",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] schedule_name
    #   The name identifier of the schedule.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The S3 bucket name of the output reports. If this isn't specified,
    #   the report can be retrieved from a download link by calling
    #   ListBusinessReportSchedule.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The S3 key where the report is delivered.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the generated report (individual CSV files or zipped
    #   files of individual files).
    #   @return [String]
    #
    # @!attribute [rw] content_range
    #   The content range of the reports.
    #   @return [Types::BusinessReportContentRange]
    #
    # @!attribute [rw] recurrence
    #   The recurrence of the reports. If this isn't specified, the report
    #   will only be delivered one time when the API is called.
    #   @return [Types::BusinessReportRecurrence]
    #
    # @!attribute [rw] client_request_token
    #   The client request token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the business report schedule.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateBusinessReportScheduleRequest AWS API Documentation
    #
    class CreateBusinessReportScheduleRequest < Struct.new(
      :schedule_name,
      :s3_bucket_name,
      :s3_key_prefix,
      :format,
      :content_range,
      :recurrence,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schedule_arn
    #   The ARN of the business report schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateBusinessReportScheduleResponse AWS API Documentation
    #
    class CreateBusinessReportScheduleResponse < Struct.new(
      :schedule_arn)
      SENSITIVE = []
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
    #           phone_number: "OutboundPhoneNumber", # required
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateContactRequest
    #   data as a hash:
    #
    #       {
    #         display_name: "ContactName",
    #         first_name: "ContactName", # required
    #         last_name: "ContactName",
    #         phone_number: "RawPhoneNumber",
    #         phone_numbers: [
    #           {
    #             number: "RawPhoneNumber", # required
    #             type: "MOBILE", # required, accepts MOBILE, WORK, HOME
    #           },
    #         ],
    #         sip_addresses: [
    #           {
    #             uri: "SipUri", # required
    #             type: "WORK", # required, accepts WORK
    #           },
    #         ],
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
    #   The phone number of the contact in E.164 format. The phone number
    #   type defaults to WORK. You can specify PhoneNumber or PhoneNumbers.
    #   We recommend that you use PhoneNumbers, which lets you specify the
    #   phone number type and multiple numbers.
    #   @return [String]
    #
    # @!attribute [rw] phone_numbers
    #   The list of phone numbers for the contact.
    #   @return [Array<Types::PhoneNumber>]
    #
    # @!attribute [rw] sip_addresses
    #   The list of SIP addresses for the contact.
    #   @return [Array<Types::SipAddress>]
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
      :phone_numbers,
      :sip_addresses,
      :client_request_token)
      SENSITIVE = [:phone_number]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates settings for the end of meeting reminder feature that are
    # applied to a room profile. The end of meeting reminder enables Alexa
    # to remind users when a meeting is ending.
    #
    # @note When making an API call, you may pass CreateEndOfMeetingReminder
    #   data as a hash:
    #
    #       {
    #         reminder_at_minutes: [1], # required
    #         reminder_type: "ANNOUNCEMENT_TIME_CHECK", # required, accepts ANNOUNCEMENT_TIME_CHECK, ANNOUNCEMENT_VARIABLE_TIME_LEFT, CHIME, KNOCK
    #         enabled: false, # required
    #       }
    #
    # @!attribute [rw] reminder_at_minutes
    #   A range of 3 to 15 minutes that determines when the reminder begins.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] reminder_type
    #   The type of sound that users hear during the end of meeting
    #   reminder.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether an end of meeting reminder is enabled or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateEndOfMeetingReminder AWS API Documentation
    #
    class CreateEndOfMeetingReminder < Struct.new(
      :reminder_at_minutes,
      :reminder_type,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGatewayGroupRequest
    #   data as a hash:
    #
    #       {
    #         name: "GatewayGroupName", # required
    #         description: "GatewayGroupDescription",
    #         client_request_token: "ClientRequestToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the gateway group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the gateway group.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateGatewayGroupRequest AWS API Documentation
    #
    class CreateGatewayGroupRequest < Struct.new(
      :name,
      :description,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_group_arn
    #   The ARN of the created gateway group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateGatewayGroupResponse AWS API Documentation
    #
    class CreateGatewayGroupResponse < Struct.new(
      :gateway_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates settings for the instant booking feature that are applied to a
    # room profile. When users start their meeting with Alexa, Alexa
    # automatically books the room for the configured duration if the room
    # is available.
    #
    # @note When making an API call, you may pass CreateInstantBooking
    #   data as a hash:
    #
    #       {
    #         duration_in_minutes: 1, # required
    #         enabled: false, # required
    #       }
    #
    # @!attribute [rw] duration_in_minutes
    #   Duration between 15 and 240 minutes at increments of 15 that
    #   determines how long to book an available room when a meeting is
    #   started with Alexa.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled
    #   Whether instant booking is enabled or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateInstantBooking AWS API Documentation
    #
    class CreateInstantBooking < Struct.new(
      :duration_in_minutes,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates meeting room settings of a room profile.
    #
    # @note When making an API call, you may pass CreateMeetingRoomConfiguration
    #   data as a hash:
    #
    #       {
    #         room_utilization_metrics_enabled: false,
    #         end_of_meeting_reminder: {
    #           reminder_at_minutes: [1], # required
    #           reminder_type: "ANNOUNCEMENT_TIME_CHECK", # required, accepts ANNOUNCEMENT_TIME_CHECK, ANNOUNCEMENT_VARIABLE_TIME_LEFT, CHIME, KNOCK
    #           enabled: false, # required
    #         },
    #         instant_booking: {
    #           duration_in_minutes: 1, # required
    #           enabled: false, # required
    #         },
    #         require_check_in: {
    #           release_after_minutes: 1, # required
    #           enabled: false, # required
    #         },
    #       }
    #
    # @!attribute [rw] room_utilization_metrics_enabled
    #   Whether room utilization metrics are enabled or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] end_of_meeting_reminder
    #   Creates settings for the end of meeting reminder feature that are
    #   applied to a room profile. The end of meeting reminder enables Alexa
    #   to remind users when a meeting is ending.
    #   @return [Types::CreateEndOfMeetingReminder]
    #
    # @!attribute [rw] instant_booking
    #   Settings to automatically book a room for a configured duration if
    #   it's free when joining a meeting with Alexa.
    #   @return [Types::CreateInstantBooking]
    #
    # @!attribute [rw] require_check_in
    #   Settings for requiring a check in when a room is reserved. Alexa can
    #   cancel a room reservation if it's not checked into to make the room
    #   available for others. Users can check in by joining the meeting with
    #   Alexa or an AVS device, or by saying “Alexa, check in.”
    #   @return [Types::CreateRequireCheckIn]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateMeetingRoomConfiguration AWS API Documentation
    #
    class CreateMeetingRoomConfiguration < Struct.new(
      :room_utilization_metrics_enabled,
      :end_of_meeting_reminder,
      :instant_booking,
      :require_check_in)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateNetworkProfileRequest
    #   data as a hash:
    #
    #       {
    #         network_profile_name: "NetworkProfileName", # required
    #         description: "NetworkProfileDescription",
    #         ssid: "NetworkSsid", # required
    #         security_type: "OPEN", # required, accepts OPEN, WEP, WPA_PSK, WPA2_PSK, WPA2_ENTERPRISE
    #         eap_method: "EAP_TLS", # accepts EAP_TLS
    #         current_password: "CurrentWiFiPassword",
    #         next_password: "NextWiFiPassword",
    #         certificate_authority_arn: "Arn",
    #         trust_anchors: ["TrustAnchor"],
    #         client_request_token: "ClientRequestToken", # required
    #       }
    #
    # @!attribute [rw] network_profile_name
    #   The name of the network profile associated with a device.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Detailed information about a device's network profile.
    #   @return [String]
    #
    # @!attribute [rw] ssid
    #   The SSID of the Wi-Fi network.
    #   @return [String]
    #
    # @!attribute [rw] security_type
    #   The security type of the Wi-Fi network. This can be
    #   WPA2\_ENTERPRISE, WPA2\_PSK, WPA\_PSK, WEP, or OPEN.
    #   @return [String]
    #
    # @!attribute [rw] eap_method
    #   The authentication standard that is used in the EAP framework.
    #   Currently, EAP\_TLS is supported.
    #   @return [String]
    #
    # @!attribute [rw] current_password
    #   The current password of the Wi-Fi network.
    #   @return [String]
    #
    # @!attribute [rw] next_password
    #   The next, or subsequent, password of the Wi-Fi network. This
    #   password is asynchronously transmitted to the device and is used
    #   when the password of the network changes to NextPassword.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority_arn
    #   The ARN of the Private Certificate Authority (PCA) created in AWS
    #   Certificate Manager (ACM). This is used to issue certificates to the
    #   devices.
    #   @return [String]
    #
    # @!attribute [rw] trust_anchors
    #   The root certificates of your authentication server that is
    #   installed on your devices and used to trust your authentication
    #   server during EAP negotiation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_request_token
    #   A unique, user-specified identifier for the request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateNetworkProfileRequest AWS API Documentation
    #
    class CreateNetworkProfileRequest < Struct.new(
      :network_profile_name,
      :description,
      :ssid,
      :security_type,
      :eap_method,
      :current_password,
      :next_password,
      :certificate_authority_arn,
      :trust_anchors,
      :client_request_token)
      SENSITIVE = [:current_password, :next_password]
      include Aws::Structure
    end

    # @!attribute [rw] network_profile_arn
    #   The ARN of the network profile associated with a device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateNetworkProfileResponse AWS API Documentation
    #
    class CreateNetworkProfileResponse < Struct.new(
      :network_profile_arn)
      SENSITIVE = []
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
    #         locale: "DeviceLocale",
    #         client_request_token: "ClientRequestToken",
    #         setup_mode_disabled: false,
    #         max_volume_limit: 1,
    #         pstn_enabled: false,
    #         meeting_room_configuration: {
    #           room_utilization_metrics_enabled: false,
    #           end_of_meeting_reminder: {
    #             reminder_at_minutes: [1], # required
    #             reminder_type: "ANNOUNCEMENT_TIME_CHECK", # required, accepts ANNOUNCEMENT_TIME_CHECK, ANNOUNCEMENT_VARIABLE_TIME_LEFT, CHIME, KNOCK
    #             enabled: false, # required
    #           },
    #           instant_booking: {
    #             duration_in_minutes: 1, # required
    #             enabled: false, # required
    #           },
    #           require_check_in: {
    #             release_after_minutes: 1, # required
    #             enabled: false, # required
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
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
    # @!attribute [rw] locale
    #   The locale of the room profile. (This is currently only available to
    #   a limited preview audience.)
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
    # @!attribute [rw] meeting_room_configuration
    #   The meeting room settings of a room profile.
    #   @return [Types::CreateMeetingRoomConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags for the profile.
    #   @return [Array<Types::Tag>]
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
      :locale,
      :client_request_token,
      :setup_mode_disabled,
      :max_volume_limit,
      :pstn_enabled,
      :meeting_room_configuration,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates settings for the require check in feature that are applied to
    # a room profile. Require check in allows a meeting room’s Alexa or AVS
    # device to prompt the user to check in; otherwise, the room will be
    # released.
    #
    # @note When making an API call, you may pass CreateRequireCheckIn
    #   data as a hash:
    #
    #       {
    #         release_after_minutes: 1, # required
    #         enabled: false, # required
    #       }
    #
    # @!attribute [rw] release_after_minutes
    #   Duration between 5 and 20 minutes to determine when to release the
    #   room if it's not checked into.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled
    #   Whether require check in is enabled or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateRequireCheckIn AWS API Documentation
    #
    class CreateRequireCheckIn < Struct.new(
      :release_after_minutes,
      :enabled)
      SENSITIVE = []
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
    #   The profile ARN for the room. This is required.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSkillGroupRequest
    #   data as a hash:
    #
    #       {
    #         skill_group_name: "SkillGroupName", # required
    #         description: "SkillGroupDescription",
    #         client_request_token: "ClientRequestToken",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
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
    # @!attribute [rw] tags
    #   The tags for the skill group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateSkillGroupRequest AWS API Documentation
    #
    class CreateSkillGroupRequest < Struct.new(
      :skill_group_name,
      :description,
      :client_request_token,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteAddressBookResponse AWS API Documentation
    #
    class DeleteAddressBookResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteBusinessReportScheduleRequest
    #   data as a hash:
    #
    #       {
    #         schedule_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] schedule_arn
    #   The ARN of the business report schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteBusinessReportScheduleRequest AWS API Documentation
    #
    class DeleteBusinessReportScheduleRequest < Struct.new(
      :schedule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteBusinessReportScheduleResponse AWS API Documentation
    #
    class DeleteBusinessReportScheduleResponse < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteDeviceResponse AWS API Documentation
    #
    class DeleteDeviceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteDeviceUsageDataRequest
    #   data as a hash:
    #
    #       {
    #         device_arn: "Arn", # required
    #         device_usage_type: "VOICE", # required, accepts VOICE
    #       }
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_usage_type
    #   The type of usage data to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteDeviceUsageDataRequest AWS API Documentation
    #
    class DeleteDeviceUsageDataRequest < Struct.new(
      :device_arn,
      :device_usage_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteDeviceUsageDataResponse AWS API Documentation
    #
    class DeleteDeviceUsageDataResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteGatewayGroupRequest
    #   data as a hash:
    #
    #       {
    #         gateway_group_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] gateway_group_arn
    #   The ARN of the gateway group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteGatewayGroupRequest AWS API Documentation
    #
    class DeleteGatewayGroupRequest < Struct.new(
      :gateway_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteGatewayGroupResponse AWS API Documentation
    #
    class DeleteGatewayGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteNetworkProfileRequest
    #   data as a hash:
    #
    #       {
    #         network_profile_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] network_profile_arn
    #   The ARN of the network profile associated with a device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteNetworkProfileRequest AWS API Documentation
    #
    class DeleteNetworkProfileRequest < Struct.new(
      :network_profile_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteNetworkProfileResponse AWS API Documentation
    #
    class DeleteNetworkProfileResponse < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @!attribute [rw] network_profile_info
    #   Detailed information about a device's network profile.
    #   @return [Types::DeviceNetworkProfileInfo]
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
      :device_status_info,
      :network_profile_info)
      SENSITIVE = []
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
    # @!attribute [rw] network_profile_arn
    #   The ARN of the network profile associated with a device.
    #   @return [String]
    #
    # @!attribute [rw] network_profile_name
    #   The name of the network profile associated with a device.
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
    # @!attribute [rw] created_time
    #   The time (in epoch) when the device data was created.
    #   @return [Time]
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
      :network_profile_arn,
      :network_profile_name,
      :room_arn,
      :room_name,
      :device_status_info,
      :created_time)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about a device's network profile.
    #
    # @!attribute [rw] network_profile_arn
    #   The ARN of the network profile associated with a device.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The ARN of the certificate associated with a device.
    #   @return [String]
    #
    # @!attribute [rw] certificate_expiration_time
    #   The time (in epoch) when the certificate expires.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeviceNetworkProfileInfo AWS API Documentation
    #
    class DeviceNetworkProfileInfo < Struct.new(
      :network_profile_arn,
      :certificate_arn,
      :certificate_expiration_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because this device is no longer registered and
    # therefore no longer managed by this account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeviceNotRegisteredException AWS API Documentation
    #
    class DeviceNotRegisteredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of a device’s status.
    #
    # @!attribute [rw] feature
    #   The list of available features on the device.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The device status detail code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeviceStatusDetail AWS API Documentation
    #
    class DeviceStatusDetail < Struct.new(
      :feature,
      :code)
      SENSITIVE = []
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
    # @!attribute [rw] connection_status_updated_time
    #   The time (in epoch) when the device connection status changed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeviceStatusInfo AWS API Documentation
    #
    class DeviceStatusInfo < Struct.new(
      :device_status_details,
      :connection_status,
      :connection_status_updated_time)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateSkillFromSkillGroupResponse AWS API Documentation
    #
    class DisassociateSkillFromSkillGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateSkillFromUsersRequest
    #   data as a hash:
    #
    #       {
    #         skill_id: "SkillId", # required
    #       }
    #
    # @!attribute [rw] skill_id
    #   The private skill ID you want to make unavailable for enrolled
    #   users.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateSkillFromUsersRequest AWS API Documentation
    #
    class DisassociateSkillFromUsersRequest < Struct.new(
      :skill_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateSkillFromUsersResponse AWS API Documentation
    #
    class DisassociateSkillFromUsersResponse < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateSkillGroupFromRoomResponse AWS API Documentation
    #
    class DisassociateSkillGroupFromRoomResponse < Aws::EmptyStructure; end

    # Settings for the end of meeting reminder feature that are applied to a
    # room profile. The end of meeting reminder enables Alexa to remind
    # users when a meeting is ending.
    #
    # @!attribute [rw] reminder_at_minutes
    #   A range of 3 to 15 minutes that determines when the reminder begins.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] reminder_type
    #   The type of sound that users hear during the end of meeting
    #   reminder.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether an end of meeting reminder is enabled or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/EndOfMeetingReminder AWS API Documentation
    #
    class EndOfMeetingReminder < Struct.new(
      :reminder_at_minutes,
      :reminder_type,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ForgetSmartHomeAppliancesResponse AWS API Documentation
    #
    class ForgetSmartHomeAppliancesResponse < Aws::EmptyStructure; end

    # The details of the gateway.
    #
    # @!attribute [rw] arn
    #   The ARN of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_group_arn
    #   The ARN of the gateway group that the gateway is associated to.
    #   @return [String]
    #
    # @!attribute [rw] software_version
    #   The software version of the gateway. The gateway automatically
    #   updates its software version during normal operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Gateway AWS API Documentation
    #
    class Gateway < Struct.new(
      :arn,
      :name,
      :description,
      :gateway_group_arn,
      :software_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the gateway group.
    #
    # @!attribute [rw] arn
    #   The ARN of the gateway group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the gateway group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the gateway group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GatewayGroup AWS API Documentation
    #
    class GatewayGroup < Struct.new(
      :arn,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of a gateway group.
    #
    # @!attribute [rw] arn
    #   The ARN of the gateway group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the gateway group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the gateway group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GatewayGroupSummary AWS API Documentation
    #
    class GatewayGroupSummary < Struct.new(
      :arn,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of a gateway.
    #
    # @!attribute [rw] arn
    #   The ARN of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_group_arn
    #   The ARN of the gateway group that the gateway is associated to.
    #   @return [String]
    #
    # @!attribute [rw] software_version
    #   The software version of the gateway. The gateway automatically
    #   updates its software version during normal operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GatewaySummary AWS API Documentation
    #
    class GatewaySummary < Struct.new(
      :arn,
      :name,
      :description,
      :gateway_group_arn,
      :software_version)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGatewayGroupRequest
    #   data as a hash:
    #
    #       {
    #         gateway_group_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] gateway_group_arn
    #   The ARN of the gateway group to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetGatewayGroupRequest AWS API Documentation
    #
    class GetGatewayGroupRequest < Struct.new(
      :gateway_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_group
    #   The details of the gateway group.
    #   @return [Types::GatewayGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetGatewayGroupResponse AWS API Documentation
    #
    class GetGatewayGroupResponse < Struct.new(
      :gateway_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGatewayRequest
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The ARN of the gateway to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetGatewayRequest AWS API Documentation
    #
    class GetGatewayRequest < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway
    #   The details of the gateway.
    #   @return [Types::Gateway]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetGatewayResponse AWS API Documentation
    #
    class GetGatewayResponse < Struct.new(
      :gateway)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetInvitationConfigurationRequest AWS API Documentation
    #
    class GetInvitationConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] organization_name
    #   The name of the organization sending the enrollment invite to a
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] contact_email
    #   The email ID of the organization or individual contact that the
    #   enrolled user can use.
    #   @return [String]
    #
    # @!attribute [rw] private_skill_ids
    #   The list of private skill IDs that you want to recommend to the user
    #   to enable in the invitation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetInvitationConfigurationResponse AWS API Documentation
    #
    class GetInvitationConfigurationResponse < Struct.new(
      :organization_name,
      :contact_email,
      :private_skill_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetNetworkProfileRequest
    #   data as a hash:
    #
    #       {
    #         network_profile_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] network_profile_arn
    #   The ARN of the network profile associated with a device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetNetworkProfileRequest AWS API Documentation
    #
    class GetNetworkProfileRequest < Struct.new(
      :network_profile_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_profile
    #   The network profile associated with a device.
    #   @return [Types::NetworkProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetNetworkProfileResponse AWS API Documentation
    #
    class GetNetworkProfileResponse < Struct.new(
      :network_profile)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for the instant booking feature that are applied to a room
    # profile. When users start their meeting with Alexa, Alexa
    # automatically books the room for the configured duration if the room
    # is available.
    #
    # @!attribute [rw] duration_in_minutes
    #   Duration between 15 and 240 minutes at increments of 15 that
    #   determines how long to book an available room when a meeting is
    #   started with Alexa.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled
    #   Whether instant booking is enabled or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/InstantBooking AWS API Documentation
    #
    class InstantBooking < Struct.new(
      :duration_in_minutes,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Certificate Authority can't issue or revoke a certificate.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/InvalidCertificateAuthorityException AWS API Documentation
    #
    class InvalidCertificateAuthorityException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The device is in an invalid state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/InvalidDeviceException AWS API Documentation
    #
    class InvalidDeviceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A password in SecretsManager is in an invalid state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/InvalidSecretsManagerResourceException AWS API Documentation
    #
    class InvalidSecretsManagerResourceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service linked role is locked for deletion.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/InvalidServiceLinkedRoleStateException AWS API Documentation
    #
    class InvalidServiceLinkedRoleStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The attempt to update a user is invalid due to the user's current
    # status.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/InvalidUserStatusException AWS API Documentation
    #
    class InvalidUserStatusException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are performing an action that would put you beyond your account's
    # limits.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBusinessReportSchedulesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token used to list the remaining schedules from the previous API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of schedules listed in the call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListBusinessReportSchedulesRequest AWS API Documentation
    #
    class ListBusinessReportSchedulesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] business_report_schedules
    #   The schedule of the reports.
    #   @return [Array<Types::BusinessReportSchedule>]
    #
    # @!attribute [rw] next_token
    #   The token used to list the remaining schedules from the previous API
    #   call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListBusinessReportSchedulesResponse AWS API Documentation
    #
    class ListBusinessReportSchedulesResponse < Struct.new(
      :business_report_schedules,
      :next_token)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGatewayGroupsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token used to paginate though multiple pages of gateway group
    #   summaries.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of gateway group summaries to return. The default
    #   is 50.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListGatewayGroupsRequest AWS API Documentation
    #
    class ListGatewayGroupsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_groups
    #   The gateway groups in the list.
    #   @return [Array<Types::GatewayGroupSummary>]
    #
    # @!attribute [rw] next_token
    #   The token used to paginate though multiple pages of gateway group
    #   summaries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListGatewayGroupsResponse AWS API Documentation
    #
    class ListGatewayGroupsResponse < Struct.new(
      :gateway_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGatewaysRequest
    #   data as a hash:
    #
    #       {
    #         gateway_group_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] gateway_group_arn
    #   The gateway group ARN for which to list gateways.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token used to paginate though multiple pages of gateway
    #   summaries.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of gateway summaries to return. The default is
    #   50.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListGatewaysRequest AWS API Documentation
    #
    class ListGatewaysRequest < Struct.new(
      :gateway_group_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateways
    #   The gateways in the list.
    #   @return [Array<Types::GatewaySummary>]
    #
    # @!attribute [rw] next_token
    #   The token used to paginate though multiple pages of gateway
    #   summaries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListGatewaysResponse AWS API Documentation
    #
    class ListGatewaysResponse < Struct.new(
      :gateways,
      :next_token)
      SENSITIVE = []
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
    #   @return [String]
    #
    # @!attribute [rw] enablement_type
    #   Whether the skill is enabled under the user's account.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListSkillsRequest AWS API Documentation
    #
    class ListSkillsRequest < Struct.new(
      :skill_group_arn,
      :enablement_type,
      :skill_type,
      :next_token,
      :max_results)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Meeting room settings of a room profile.
    #
    # @!attribute [rw] room_utilization_metrics_enabled
    #   Whether room utilization metrics are enabled or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] end_of_meeting_reminder
    #   Settings for the end of meeting reminder feature that are applied to
    #   a room profile. The end of meeting reminder enables Alexa to remind
    #   users when a meeting is ending.
    #   @return [Types::EndOfMeetingReminder]
    #
    # @!attribute [rw] instant_booking
    #   Settings to automatically book the room if available for a
    #   configured duration when joining a meeting with Alexa.
    #   @return [Types::InstantBooking]
    #
    # @!attribute [rw] require_check_in
    #   Settings for requiring a check in when a room is reserved. Alexa can
    #   cancel a room reservation if it's not checked into. This makes the
    #   room available for others. Users can check in by joining the meeting
    #   with Alexa or an AVS device, or by saying “Alexa, check in.”
    #   @return [Types::RequireCheckIn]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/MeetingRoomConfiguration AWS API Documentation
    #
    class MeetingRoomConfiguration < Struct.new(
      :room_utilization_metrics_enabled,
      :end_of_meeting_reminder,
      :instant_booking,
      :require_check_in)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The name sent in the request is already in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/NameInUseException AWS API Documentation
    #
    class NameInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network profile associated with a device.
    #
    # @!attribute [rw] network_profile_arn
    #   The ARN of the network profile associated with a device.
    #   @return [String]
    #
    # @!attribute [rw] network_profile_name
    #   The name of the network profile associated with a device.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Detailed information about a device's network profile.
    #   @return [String]
    #
    # @!attribute [rw] ssid
    #   The SSID of the Wi-Fi network.
    #   @return [String]
    #
    # @!attribute [rw] security_type
    #   The security type of the Wi-Fi network. This can be
    #   WPA2\_ENTERPRISE, WPA2\_PSK, WPA\_PSK, WEP, or OPEN.
    #   @return [String]
    #
    # @!attribute [rw] eap_method
    #   The authentication standard that is used in the EAP framework.
    #   Currently, EAP\_TLS is supported.
    #   @return [String]
    #
    # @!attribute [rw] current_password
    #   The current password of the Wi-Fi network.
    #   @return [String]
    #
    # @!attribute [rw] next_password
    #   The next, or subsequent, password of the Wi-Fi network. This
    #   password is asynchronously transmitted to the device and is used
    #   when the password of the network changes to NextPassword.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority_arn
    #   The ARN of the Private Certificate Authority (PCA) created in AWS
    #   Certificate Manager (ACM). This is used to issue certificates to the
    #   devices.
    #   @return [String]
    #
    # @!attribute [rw] trust_anchors
    #   The root certificates of your authentication server, which is
    #   installed on your devices and used to trust your authentication
    #   server during EAP negotiation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/NetworkProfile AWS API Documentation
    #
    class NetworkProfile < Struct.new(
      :network_profile_arn,
      :network_profile_name,
      :description,
      :ssid,
      :security_type,
      :eap_method,
      :current_password,
      :next_password,
      :certificate_authority_arn,
      :trust_anchors)
      SENSITIVE = [:current_password, :next_password]
      include Aws::Structure
    end

    # The data associated with a network profile.
    #
    # @!attribute [rw] network_profile_arn
    #   The ARN of the network profile associated with a device.
    #   @return [String]
    #
    # @!attribute [rw] network_profile_name
    #   The name of the network profile associated with a device.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Detailed information about a device's network profile.
    #   @return [String]
    #
    # @!attribute [rw] ssid
    #   The SSID of the Wi-Fi network.
    #   @return [String]
    #
    # @!attribute [rw] security_type
    #   The security type of the Wi-Fi network. This can be
    #   WPA2\_ENTERPRISE, WPA2\_PSK, WPA\_PSK, WEP, or OPEN.
    #   @return [String]
    #
    # @!attribute [rw] eap_method
    #   The authentication standard that is used in the EAP framework.
    #   Currently, EAP\_TLS is supported.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority_arn
    #   The ARN of the Private Certificate Authority (PCA) created in AWS
    #   Certificate Manager (ACM). This is used to issue certificates to the
    #   devices.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/NetworkProfileData AWS API Documentation
    #
    class NetworkProfileData < Struct.new(
      :network_profile_arn,
      :network_profile_name,
      :description,
      :ssid,
      :security_type,
      :eap_method,
      :certificate_authority_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
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
    #         phone_number: "OutboundPhoneNumber", # required
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The phone number for the contact containing the raw number and phone
    # number type.
    #
    # @note When making an API call, you may pass PhoneNumber
    #   data as a hash:
    #
    #       {
    #         number: "RawPhoneNumber", # required
    #         type: "MOBILE", # required, accepts MOBILE, WORK, HOME
    #       }
    #
    # @!attribute [rw] number
    #   The raw value of the phone number.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the phone number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PhoneNumber AWS API Documentation
    #
    class PhoneNumber < Struct.new(
      :number,
      :type)
      SENSITIVE = [:number, :type]
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
    # @!attribute [rw] locale
    #   The locale of a room profile. (This is currently available only to a
    #   limited preview audience.)
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
    # @!attribute [rw] meeting_room_configuration
    #   Meeting room settings of a room profile.
    #   @return [Types::MeetingRoomConfiguration]
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
      :locale,
      :setup_mode_disabled,
      :max_volume_limit,
      :pstn_enabled,
      :address_book_arn,
      :meeting_room_configuration)
      SENSITIVE = []
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
    # @!attribute [rw] locale
    #   The locale of a room profile. (This is currently available only to a
    #   limited preview audience.)
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
      :wake_word,
      :locale)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PutConferencePreferenceResponse AWS API Documentation
    #
    class PutConferencePreferenceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutInvitationConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         organization_name: "OrganizationName", # required
    #         contact_email: "Email",
    #         private_skill_ids: ["SkillId"],
    #       }
    #
    # @!attribute [rw] organization_name
    #   The name of the organization sending the enrollment invite to a
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] contact_email
    #   The email ID of the organization or individual contact that the
    #   enrolled user can use.
    #   @return [String]
    #
    # @!attribute [rw] private_skill_ids
    #   The list of private skill IDs that you want to recommend to the user
    #   to enable in the invitation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PutInvitationConfigurationRequest AWS API Documentation
    #
    class PutInvitationConfigurationRequest < Struct.new(
      :organization_name,
      :contact_email,
      :private_skill_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PutInvitationConfigurationResponse AWS API Documentation
    #
    class PutInvitationConfigurationResponse < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = [:authorization_result]
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
    #         device_serial_number: "DeviceSerialNumberForAVS",
    #         amazon_id: "AmazonId", # required
    #         room_arn: "Arn",
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
    # @!attribute [rw] room_arn
    #   The ARN of the room with which to associate your AVS device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RegisterAVSDeviceRequest AWS API Documentation
    #
    class RegisterAVSDeviceRequest < Struct.new(
      :client_id,
      :user_code,
      :product_id,
      :device_serial_number,
      :amazon_id,
      :room_arn)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RejectSkillResponse AWS API Documentation
    #
    class RejectSkillResponse < Aws::EmptyStructure; end

    # Settings for the require check in feature that are applied to a room
    # profile. Require check in allows a meeting room’s Alexa or AVS device
    # to prompt the user to check in; otherwise, the room will be released.
    #
    # @!attribute [rw] release_after_minutes
    #   Duration between 5 and 20 minutes to determine when to release the
    #   room if it's not checked into.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled
    #   Whether require check in is enabled or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RequireCheckIn AWS API Documentation
    #
    class RequireCheckIn < Struct.new(
      :release_after_minutes,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Another resource is associated with the resource in the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ResourceAssociatedException AWS API Documentation
    #
    class ResourceAssociatedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource in the request is already in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, user-specified identifier for the request that ensures
    #   idempotency.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message,
      :client_request_token)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   RoomName, DeviceType, DeviceSerialNumber, UnassociatedOnly,
    #   ConnectionStatus (ONLINE and OFFLINE), NetworkProfileName,
    #   NetworkProfileArn, Feature, and FailureCode.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort_criteria
    #   The sort order to use in listing the specified set of devices.
    #   Supported sort keys are DeviceName, DeviceStatus, RoomName,
    #   DeviceType, DeviceSerialNumber, ConnectionStatus,
    #   NetworkProfileName, NetworkProfileArn, Feature, and FailureCode.
    #   @return [Array<Types::Sort>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchDevicesRequest AWS API Documentation
    #
    class SearchDevicesRequest < Struct.new(
      :next_token,
      :max_results,
      :filters,
      :sort_criteria)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchNetworkProfilesRequest
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
    # @!attribute [rw] filters
    #   The filters to use to list a specified set of network profiles.
    #   Valid filters are NetworkProfileName, Ssid, and SecurityType.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort_criteria
    #   The sort order to use to list the specified set of network profiles.
    #   Valid sort criteria includes NetworkProfileName, Ssid, and
    #   SecurityType.
    #   @return [Array<Types::Sort>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchNetworkProfilesRequest AWS API Documentation
    #
    class SearchNetworkProfilesRequest < Struct.new(
      :next_token,
      :max_results,
      :filters,
      :sort_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_profiles
    #   The network profiles that meet the specified set of filter criteria,
    #   in sort order. It is a list of NetworkProfileData objects.
    #   @return [Array<Types::NetworkProfileData>]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @!attribute [rw] total_count
    #   The total number of network profiles returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchNetworkProfilesResponse AWS API Documentation
    #
    class SearchNetworkProfilesResponse < Struct.new(
      :network_profiles,
      :next_token,
      :total_count)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SendAnnouncementRequest
    #   data as a hash:
    #
    #       {
    #         room_filters: [ # required
    #           {
    #             key: "FilterKey", # required
    #             values: ["FilterValue"], # required
    #           },
    #         ],
    #         content: { # required
    #           text_list: [
    #             {
    #               locale: "en-US", # required, accepts en-US
    #               value: "TextValue", # required
    #             },
    #           ],
    #           ssml_list: [
    #             {
    #               locale: "en-US", # required, accepts en-US
    #               value: "SsmlValue", # required
    #             },
    #           ],
    #           audio_list: [
    #             {
    #               locale: "en-US", # required, accepts en-US
    #               location: "AudioLocation", # required
    #             },
    #           ],
    #         },
    #         time_to_live_in_seconds: 1,
    #         client_request_token: "ClientRequestToken", # required
    #       }
    #
    # @!attribute [rw] room_filters
    #   The filters to use to send an announcement to a specified list of
    #   rooms. The supported filter keys are RoomName, ProfileName, RoomArn,
    #   and ProfileArn. To send to all rooms, specify an empty RoomFilters
    #   list.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] content
    #   The announcement content. This can contain only one of the three
    #   possible announcement types (text, SSML or audio).
    #   @return [Types::Content]
    #
    # @!attribute [rw] time_to_live_in_seconds
    #   The time to live for an announcement. Default is 300. If delivery
    #   doesn't occur within this time, the announcement is not delivered.
    #   @return [Integer]
    #
    # @!attribute [rw] client_request_token
    #   The unique, user-specified identifier for the request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SendAnnouncementRequest AWS API Documentation
    #
    class SendAnnouncementRequest < Struct.new(
      :room_filters,
      :content,
      :time_to_live_in_seconds,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] announcement_arn
    #   The identifier of the announcement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SendAnnouncementResponse AWS API Documentation
    #
    class SendAnnouncementResponse < Struct.new(
      :announcement_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SendInvitationResponse AWS API Documentation
    #
    class SendInvitationResponse < Aws::EmptyStructure; end

    # The SIP address for the contact containing the URI and SIP address
    # type.
    #
    # @note When making an API call, you may pass SipAddress
    #   data as a hash:
    #
    #       {
    #         uri: "SipUri", # required
    #         type: "WORK", # required, accepts WORK
    #       }
    #
    # @!attribute [rw] uri
    #   The URI for the SIP address.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the SIP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SipAddress AWS API Documentation
    #
    class SipAddress < Struct.new(
      :uri,
      :type)
      SENSITIVE = [:uri, :type]
      include Aws::Structure
    end

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
    #   *This member has been deprecated.*
    #
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The skill must be linked to a third-party account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SkillNotLinkedException AWS API Documentation
    #
    class SkillNotLinkedException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The SSML message. For more information, see [SSML Reference][1].
    #
    #
    #
    # [1]: https://developer.amazon.com/docs/custom-skills/speech-synthesis-markup-language-ssml-reference.html
    #
    # @note When making an API call, you may pass Ssml
    #   data as a hash:
    #
    #       {
    #         locale: "en-US", # required, accepts en-US
    #         value: "SsmlValue", # required
    #       }
    #
    # @!attribute [rw] locale
    #   The locale of the SSML message. Currently, en-US is supported.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the SSML message in the correct SSML format. The audio
    #   tag is not supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Ssml AWS API Documentation
    #
    class Ssml < Struct.new(
      :locale,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartDeviceSyncRequest
    #   data as a hash:
    #
    #       {
    #         room_arn: "Arn",
    #         device_arn: "Arn",
    #         features: ["BLUETOOTH"], # required, accepts BLUETOOTH, VOLUME, NOTIFICATIONS, LISTS, SKILLS, NETWORK_PROFILE, SETTINGS, ALL
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The value of a tag. Tag values are case sensitive and can be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The text message.
    #
    # @note When making an API call, you may pass Text
    #   data as a hash:
    #
    #       {
    #         locale: "en-US", # required, accepts en-US
    #         value: "TextValue", # required
    #       }
    #
    # @!attribute [rw] locale
    #   The locale of the text message. Currently, en-US is supported.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the text message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/Text AWS API Documentation
    #
    class Text < Struct.new(
      :locale,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The caller has no permissions to operate on the resource involved in
    # the API call.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateAddressBookResponse AWS API Documentation
    #
    class UpdateAddressBookResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateBusinessReportScheduleRequest
    #   data as a hash:
    #
    #       {
    #         schedule_arn: "Arn", # required
    #         s3_bucket_name: "CustomerS3BucketName",
    #         s3_key_prefix: "S3KeyPrefix",
    #         format: "CSV", # accepts CSV, CSV_ZIP
    #         schedule_name: "BusinessReportScheduleName",
    #         recurrence: {
    #           start_date: "Date",
    #         },
    #       }
    #
    # @!attribute [rw] schedule_arn
    #   The ARN of the business report schedule.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The S3 location of the output reports.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The S3 key where the report is delivered.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the generated report (individual CSV files or zipped
    #   files of individual files).
    #   @return [String]
    #
    # @!attribute [rw] schedule_name
    #   The name identifier of the schedule.
    #   @return [String]
    #
    # @!attribute [rw] recurrence
    #   The recurrence of the reports.
    #   @return [Types::BusinessReportRecurrence]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateBusinessReportScheduleRequest AWS API Documentation
    #
    class UpdateBusinessReportScheduleRequest < Struct.new(
      :schedule_arn,
      :s3_bucket_name,
      :s3_key_prefix,
      :format,
      :schedule_name,
      :recurrence)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateBusinessReportScheduleResponse AWS API Documentation
    #
    class UpdateBusinessReportScheduleResponse < Aws::EmptyStructure; end

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
    #           phone_number: "OutboundPhoneNumber", # required
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
      SENSITIVE = []
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
    #         phone_number: "RawPhoneNumber",
    #         phone_numbers: [
    #           {
    #             number: "RawPhoneNumber", # required
    #             type: "MOBILE", # required, accepts MOBILE, WORK, HOME
    #           },
    #         ],
    #         sip_addresses: [
    #           {
    #             uri: "SipUri", # required
    #             type: "WORK", # required, accepts WORK
    #           },
    #         ],
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
    #   The updated phone number of the contact. The phone number type
    #   defaults to WORK. You can either specify PhoneNumber or
    #   PhoneNumbers. We recommend that you use PhoneNumbers, which lets you
    #   specify the phone number type and multiple numbers.
    #   @return [String]
    #
    # @!attribute [rw] phone_numbers
    #   The list of phone numbers for the contact.
    #   @return [Array<Types::PhoneNumber>]
    #
    # @!attribute [rw] sip_addresses
    #   The list of SIP addresses for the contact.
    #   @return [Array<Types::SipAddress>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateContactRequest AWS API Documentation
    #
    class UpdateContactRequest < Struct.new(
      :contact_arn,
      :display_name,
      :first_name,
      :last_name,
      :phone_number,
      :phone_numbers,
      :sip_addresses)
      SENSITIVE = [:phone_number]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateDeviceResponse AWS API Documentation
    #
    class UpdateDeviceResponse < Aws::EmptyStructure; end

    # Settings for the end of meeting reminder feature that are applied to a
    # room profile. The end of meeting reminder enables Alexa to remind
    # users when a meeting is ending.
    #
    # @note When making an API call, you may pass UpdateEndOfMeetingReminder
    #   data as a hash:
    #
    #       {
    #         reminder_at_minutes: [1],
    #         reminder_type: "ANNOUNCEMENT_TIME_CHECK", # accepts ANNOUNCEMENT_TIME_CHECK, ANNOUNCEMENT_VARIABLE_TIME_LEFT, CHIME, KNOCK
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] reminder_at_minutes
    #   Updates settings for the end of meeting reminder feature that are
    #   applied to a room profile. The end of meeting reminder enables Alexa
    #   to remind users when a meeting is ending.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] reminder_type
    #   The type of sound that users hear during the end of meeting
    #   reminder.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether an end of meeting reminder is enabled or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateEndOfMeetingReminder AWS API Documentation
    #
    class UpdateEndOfMeetingReminder < Struct.new(
      :reminder_at_minutes,
      :reminder_type,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGatewayGroupRequest
    #   data as a hash:
    #
    #       {
    #         gateway_group_arn: "Arn", # required
    #         name: "GatewayGroupName",
    #         description: "GatewayGroupDescription",
    #       }
    #
    # @!attribute [rw] gateway_group_arn
    #   The ARN of the gateway group to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the gateway group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the gateway group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateGatewayGroupRequest AWS API Documentation
    #
    class UpdateGatewayGroupRequest < Struct.new(
      :gateway_group_arn,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateGatewayGroupResponse AWS API Documentation
    #
    class UpdateGatewayGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateGatewayRequest
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "Arn", # required
    #         name: "GatewayName",
    #         description: "GatewayDescription",
    #         software_version: "GatewayVersion",
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The ARN of the gateway to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] software_version
    #   The updated software version of the gateway. The gateway
    #   automatically updates its software version during normal operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateGatewayRequest AWS API Documentation
    #
    class UpdateGatewayRequest < Struct.new(
      :gateway_arn,
      :name,
      :description,
      :software_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateGatewayResponse AWS API Documentation
    #
    class UpdateGatewayResponse < Aws::EmptyStructure; end

    # Updates settings for the instant booking feature that are applied to a
    # room profile. If instant booking is enabled, Alexa automatically
    # reserves a room if it is free when a user joins a meeting with Alexa.
    #
    # @note When making an API call, you may pass UpdateInstantBooking
    #   data as a hash:
    #
    #       {
    #         duration_in_minutes: 1,
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] duration_in_minutes
    #   Duration between 15 and 240 minutes at increments of 15 that
    #   determines how long to book an available room when a meeting is
    #   started with Alexa.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled
    #   Whether instant booking is enabled or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateInstantBooking AWS API Documentation
    #
    class UpdateInstantBooking < Struct.new(
      :duration_in_minutes,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates meeting room settings of a room profile.
    #
    # @note When making an API call, you may pass UpdateMeetingRoomConfiguration
    #   data as a hash:
    #
    #       {
    #         room_utilization_metrics_enabled: false,
    #         end_of_meeting_reminder: {
    #           reminder_at_minutes: [1],
    #           reminder_type: "ANNOUNCEMENT_TIME_CHECK", # accepts ANNOUNCEMENT_TIME_CHECK, ANNOUNCEMENT_VARIABLE_TIME_LEFT, CHIME, KNOCK
    #           enabled: false,
    #         },
    #         instant_booking: {
    #           duration_in_minutes: 1,
    #           enabled: false,
    #         },
    #         require_check_in: {
    #           release_after_minutes: 1,
    #           enabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] room_utilization_metrics_enabled
    #   Whether room utilization metrics are enabled or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] end_of_meeting_reminder
    #   Settings for the end of meeting reminder feature that are applied to
    #   a room profile. The end of meeting reminder enables Alexa to remind
    #   users when a meeting is ending.
    #   @return [Types::UpdateEndOfMeetingReminder]
    #
    # @!attribute [rw] instant_booking
    #   Settings to automatically book an available room available for a
    #   configured duration when joining a meeting with Alexa.
    #   @return [Types::UpdateInstantBooking]
    #
    # @!attribute [rw] require_check_in
    #   Settings for requiring a check in when a room is reserved. Alexa can
    #   cancel a room reservation if it's not checked into to make the room
    #   available for others. Users can check in by joining the meeting with
    #   Alexa or an AVS device, or by saying “Alexa, check in.”
    #   @return [Types::UpdateRequireCheckIn]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateMeetingRoomConfiguration AWS API Documentation
    #
    class UpdateMeetingRoomConfiguration < Struct.new(
      :room_utilization_metrics_enabled,
      :end_of_meeting_reminder,
      :instant_booking,
      :require_check_in)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateNetworkProfileRequest
    #   data as a hash:
    #
    #       {
    #         network_profile_arn: "Arn", # required
    #         network_profile_name: "NetworkProfileName",
    #         description: "NetworkProfileDescription",
    #         current_password: "CurrentWiFiPassword",
    #         next_password: "NextWiFiPassword",
    #         certificate_authority_arn: "Arn",
    #         trust_anchors: ["TrustAnchor"],
    #       }
    #
    # @!attribute [rw] network_profile_arn
    #   The ARN of the network profile associated with a device.
    #   @return [String]
    #
    # @!attribute [rw] network_profile_name
    #   The name of the network profile associated with a device.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Detailed information about a device's network profile.
    #   @return [String]
    #
    # @!attribute [rw] current_password
    #   The current password of the Wi-Fi network.
    #   @return [String]
    #
    # @!attribute [rw] next_password
    #   The next, or subsequent, password of the Wi-Fi network. This
    #   password is asynchronously transmitted to the device and is used
    #   when the password of the network changes to NextPassword.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority_arn
    #   The ARN of the Private Certificate Authority (PCA) created in AWS
    #   Certificate Manager (ACM). This is used to issue certificates to the
    #   devices.
    #   @return [String]
    #
    # @!attribute [rw] trust_anchors
    #   The root certificate(s) of your authentication server that will be
    #   installed on your devices and used to trust your authentication
    #   server during EAP negotiation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateNetworkProfileRequest AWS API Documentation
    #
    class UpdateNetworkProfileRequest < Struct.new(
      :network_profile_arn,
      :network_profile_name,
      :description,
      :current_password,
      :next_password,
      :certificate_authority_arn,
      :trust_anchors)
      SENSITIVE = [:current_password, :next_password]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateNetworkProfileResponse AWS API Documentation
    #
    class UpdateNetworkProfileResponse < Aws::EmptyStructure; end

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
    #         locale: "DeviceLocale",
    #         setup_mode_disabled: false,
    #         max_volume_limit: 1,
    #         pstn_enabled: false,
    #         meeting_room_configuration: {
    #           room_utilization_metrics_enabled: false,
    #           end_of_meeting_reminder: {
    #             reminder_at_minutes: [1],
    #             reminder_type: "ANNOUNCEMENT_TIME_CHECK", # accepts ANNOUNCEMENT_TIME_CHECK, ANNOUNCEMENT_VARIABLE_TIME_LEFT, CHIME, KNOCK
    #             enabled: false,
    #           },
    #           instant_booking: {
    #             duration_in_minutes: 1,
    #             enabled: false,
    #           },
    #           require_check_in: {
    #             release_after_minutes: 1,
    #             enabled: false,
    #           },
    #         },
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
    # @!attribute [rw] locale
    #   The updated locale for the room profile. (This is currently only
    #   available to a limited preview audience.)
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
    # @!attribute [rw] meeting_room_configuration
    #   The updated meeting room settings of a room profile.
    #   @return [Types::UpdateMeetingRoomConfiguration]
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
      :locale,
      :setup_mode_disabled,
      :max_volume_limit,
      :pstn_enabled,
      :meeting_room_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateProfileResponse AWS API Documentation
    #
    class UpdateProfileResponse < Aws::EmptyStructure; end

    # Updates settings for the require check in feature that are applied to
    # a room profile. Require check in allows a meeting room’s Alexa or AVS
    # device to prompt the user to check in; otherwise, the room will be
    # released.
    #
    # @note When making an API call, you may pass UpdateRequireCheckIn
    #   data as a hash:
    #
    #       {
    #         release_after_minutes: 1,
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] release_after_minutes
    #   Duration between 5 and 20 minutes to determine when to release the
    #   room if it's not checked into.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled
    #   Whether require check in is enabled or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateRequireCheckIn AWS API Documentation
    #
    class UpdateRequireCheckIn < Struct.new(
      :release_after_minutes,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
