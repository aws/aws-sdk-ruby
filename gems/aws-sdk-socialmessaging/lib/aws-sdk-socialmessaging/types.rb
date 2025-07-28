# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SocialMessaging
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/AccessDeniedByMetaException AWS API Documentation
    #
    class AccessDeniedByMetaException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] signup_callback
    #   Contains the callback access token.
    #   @return [Types::WhatsAppSignupCallback]
    #
    # @!attribute [rw] setup_finalization
    #   A JSON object that contains the phone numbers and WhatsApp Business
    #   Account to link to your account.
    #   @return [Types::WhatsAppSetupFinalization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/AssociateWhatsAppBusinessAccountInput AWS API Documentation
    #
    class AssociateWhatsAppBusinessAccountInput < Struct.new(
      :signup_callback,
      :setup_finalization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] signup_callback_result
    #   Contains your WhatsApp registration status.
    #   @return [Types::WhatsAppSignupCallbackResult]
    #
    # @!attribute [rw] status_code
    #   The status code for the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/AssociateWhatsAppBusinessAccountOutput AWS API Documentation
    #
    class AssociateWhatsAppBusinessAccountOutput < Struct.new(
      :signup_callback_result,
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meta_library_template
    #   The template configuration from Meta's library, including
    #   customizations for buttons and body text.
    #   @return [Types::MetaLibraryTemplate]
    #
    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account to associate with this
    #   template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/CreateWhatsAppMessageTemplateFromLibraryInput AWS API Documentation
    #
    class CreateWhatsAppMessageTemplateFromLibraryInput < Struct.new(
      :meta_library_template,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meta_template_id
    #   The numeric ID assigned to the template by Meta.
    #   @return [String]
    #
    # @!attribute [rw] template_status
    #   The status of the created template (for example, PENDING or
    #   APPROVED).
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the template (for example, UTILITY or MARKETING).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/CreateWhatsAppMessageTemplateFromLibraryOutput AWS API Documentation
    #
    class CreateWhatsAppMessageTemplateFromLibraryOutput < Struct.new(
      :meta_template_id,
      :template_status,
      :category)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_definition
    #   The complete template definition as a JSON blob.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account to associate with this
    #   template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/CreateWhatsAppMessageTemplateInput AWS API Documentation
    #
    class CreateWhatsAppMessageTemplateInput < Struct.new(
      :template_definition,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account associated with this media
    #   upload.
    #   @return [String]
    #
    # @!attribute [rw] source_s3_file
    #   Contains information for the S3 bucket that contains media files.
    #   @return [Types::S3File]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/CreateWhatsAppMessageTemplateMediaInput AWS API Documentation
    #
    class CreateWhatsAppMessageTemplateMediaInput < Struct.new(
      :id,
      :source_s3_file)
      SENSITIVE = [:source_s3_file]
      include Aws::Structure
    end

    # @!attribute [rw] meta_header_handle
    #   The handle assigned to the uploaded media by Meta, used to reference
    #   the media in templates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/CreateWhatsAppMessageTemplateMediaOutput AWS API Documentation
    #
    class CreateWhatsAppMessageTemplateMediaOutput < Struct.new(
      :meta_header_handle)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meta_template_id
    #   The numeric ID assigned to the template by Meta.
    #   @return [String]
    #
    # @!attribute [rw] template_status
    #   The status of the created template, such as PENDING or APPROVED..
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the template, such as UTILITY or MARKETING.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/CreateWhatsAppMessageTemplateOutput AWS API Documentation
    #
    class CreateWhatsAppMessageTemplateOutput < Struct.new(
      :meta_template_id,
      :template_status,
      :category)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_id
    #   The unique identifier of the media file to delete. Use the `mediaId`
    #   returned from [PostWhatsAppMessageMedia][1].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/social-messaging/latest/APIReference/API_PostWhatsAppMessageMedia.html
    #   @return [String]
    #
    # @!attribute [rw] origination_phone_number_id
    #   The unique identifier of the originating phone number associated
    #   with the media. Phone number identifiers are formatted as
    #   `phone-number-id-01234567890123456789012345678901`. Use
    #   [GetLinkedWhatsAppBusinessAccount][1] to find a phone number's id.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/DeleteWhatsAppMessageMediaInput AWS API Documentation
    #
    class DeleteWhatsAppMessageMediaInput < Struct.new(
      :media_id,
      :origination_phone_number_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] success
    #   Success indicator for deleting the media file.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/DeleteWhatsAppMessageMediaOutput AWS API Documentation
    #
    class DeleteWhatsAppMessageMediaOutput < Struct.new(
      :success)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meta_template_id
    #   The numeric ID of the template assigned by Meta.
    #   @return [String]
    #
    # @!attribute [rw] delete_all_languages
    #   If true, deletes all language versions of the template.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account associated with this
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the template to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/DeleteWhatsAppMessageTemplateInput AWS API Documentation
    #
    class DeleteWhatsAppMessageTemplateInput < Struct.new(
      :meta_template_id,
      :delete_all_languages,
      :id,
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/DeleteWhatsAppMessageTemplateOutput AWS API Documentation
    #
    class DeleteWhatsAppMessageTemplateOutput < Aws::EmptyStructure; end

    # Thrown when performing an action because a dependency would be broken.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/DependencyException AWS API Documentation
    #
    class DependencyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of your WhatsApp Business Account. WABA
    #   identifiers are formatted as
    #   `waba-01234567890123456789012345678901`. Use
    #   [ListLinkedWhatsAppBusinessAccounts][1] to list all WABAs and their
    #   details.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/DisassociateWhatsAppBusinessAccountInput AWS API Documentation
    #
    class DisassociateWhatsAppBusinessAccountInput < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/DisassociateWhatsAppBusinessAccountOutput AWS API Documentation
    #
    class DisassociateWhatsAppBusinessAccountOutput < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The unique identifier, from Amazon Web Services, of the linked
    #   WhatsApp Business Account. WABA identifiers are formatted as
    #   `waba-01234567890123456789012345678901`. Use
    #   [ListLinkedWhatsAppBusinessAccounts][1] to list all WABAs and their
    #   details.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetLinkedWhatsAppBusinessAccountInput AWS API Documentation
    #
    class GetLinkedWhatsAppBusinessAccountInput < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account
    #   The details of the linked WhatsApp Business Account.
    #   @return [Types::LinkedWhatsAppBusinessAccount]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetLinkedWhatsAppBusinessAccountOutput AWS API Documentation
    #
    class GetLinkedWhatsAppBusinessAccountOutput < Struct.new(
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the phone number. Phone number identifiers
    #   are formatted as `phone-number-id-01234567890123456789012345678901`.
    #   Use [GetLinkedWhatsAppBusinessAccount][1] to find a phone number's
    #   id.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetLinkedWhatsAppBusinessAccountPhoneNumberInput AWS API Documentation
    #
    class GetLinkedWhatsAppBusinessAccountPhoneNumberInput < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number
    #   The details of your WhatsApp phone number.
    #   @return [Types::WhatsAppPhoneNumberDetail]
    #
    # @!attribute [rw] linked_whats_app_business_account_id
    #   The WABA identifier linked to the phone number, formatted as
    #   `waba-01234567890123456789012345678901`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetLinkedWhatsAppBusinessAccountPhoneNumberOutput AWS API Documentation
    #
    class GetLinkedWhatsAppBusinessAccountPhoneNumberOutput < Struct.new(
      :phone_number,
      :linked_whats_app_business_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_id
    #   The unique identifier for the media file.
    #   @return [String]
    #
    # @!attribute [rw] origination_phone_number_id
    #   The unique identifier of the originating phone number for the
    #   WhatsApp message media. The phone number identifiers are formatted
    #   as `phone-number-id-01234567890123456789012345678901`. Use
    #   [GetLinkedWhatsAppBusinessAccount][1] to find a phone number's id.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html
    #   @return [String]
    #
    # @!attribute [rw] metadata_only
    #   Set to `True` to get only the metadata for the file.
    #   @return [Boolean]
    #
    # @!attribute [rw] destination_s3_presigned_url
    #   The presign url of the media file.
    #   @return [Types::S3PresignedUrl]
    #
    # @!attribute [rw] destination_s3_file
    #   The `bucketName` and `key` of the S3 media file.
    #   @return [Types::S3File]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetWhatsAppMessageMediaInput AWS API Documentation
    #
    class GetWhatsAppMessageMediaInput < Struct.new(
      :media_id,
      :origination_phone_number_id,
      :metadata_only,
      :destination_s3_presigned_url,
      :destination_s3_file)
      SENSITIVE = [:destination_s3_presigned_url, :destination_s3_file]
      include Aws::Structure
    end

    # @!attribute [rw] mime_type
    #   The MIME type of the media.
    #   @return [String]
    #
    # @!attribute [rw] file_size
    #   The file size of the media, in KB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetWhatsAppMessageMediaOutput AWS API Documentation
    #
    class GetWhatsAppMessageMediaOutput < Struct.new(
      :mime_type,
      :file_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meta_template_id
    #   The numeric ID of the template assigned by Meta.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account associated with this
    #   template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetWhatsAppMessageTemplateInput AWS API Documentation
    #
    class GetWhatsAppMessageTemplateInput < Struct.new(
      :meta_template_id,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template
    #   The complete template definition as a JSON string (maximum 6000
    #   characters).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetWhatsAppMessageTemplateOutput AWS API Documentation
    #
    class GetWhatsAppMessageTemplateOutput < Struct.new(
      :template)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception, or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameters provided to the action are not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/InvalidParametersException AWS API Documentation
    #
    class InvalidParametersException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration options for customizing the body content of a template
    # from Meta's library.
    #
    # @!attribute [rw] add_contact_number
    #   When true, includes a contact number in the template body.
    #   @return [Boolean]
    #
    # @!attribute [rw] add_learn_more_link
    #   When true, includes a "learn more" link in the template body.
    #   @return [Boolean]
    #
    # @!attribute [rw] add_security_recommendation
    #   When true, includes security recommendations in the template body.
    #   @return [Boolean]
    #
    # @!attribute [rw] add_track_package_link
    #   When true, includes a package tracking link in the template body.
    #   @return [Boolean]
    #
    # @!attribute [rw] code_expiration_minutes
    #   The number of minutes until a verification code or OTP expires.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/LibraryTemplateBodyInputs AWS API Documentation
    #
    class LibraryTemplateBodyInputs < Struct.new(
      :add_contact_number,
      :add_learn_more_link,
      :add_security_recommendation,
      :add_track_package_link,
      :code_expiration_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration options for customizing buttons in a template from
    # Meta's library.
    #
    # @!attribute [rw] type
    #   The type of button (for example, QUICK\_REPLY, CALL, or URL).
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number in E.164 format for CALL-type buttons.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL with dynamic parameters for URL-type buttons.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] otp_type
    #   The type of one-time password for OTP buttons.
    #   @return [String]
    #
    # @!attribute [rw] zero_tap_terms_accepted
    #   When true, indicates acceptance of zero-tap terms for the button.
    #   @return [Boolean]
    #
    # @!attribute [rw] supported_apps
    #   List of supported applications for this button type.
    #   @return [Array<Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/LibraryTemplateButtonInput AWS API Documentation
    #
    class LibraryTemplateButtonInput < Struct.new(
      :type,
      :phone_number,
      :url,
      :otp_type,
      :zero_tap_terms_accepted,
      :supported_apps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a button in a template from Meta's library.
    #
    # @!attribute [rw] type
    #   The type of button (for example, QUICK\_REPLY, CALL, or URL).
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The text displayed on the button (maximum 40 characters).
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number in E.164 format for CALL-type buttons.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL for URL-type buttons.
    #   @return [String]
    #
    # @!attribute [rw] otp_type
    #   The type of one-time password for OTP buttons.
    #   @return [String]
    #
    # @!attribute [rw] zero_tap_terms_accepted
    #   When true, indicates acceptance of zero-tap terms for the button.
    #   @return [Boolean]
    #
    # @!attribute [rw] supported_apps
    #   List of supported applications for this button type.
    #   @return [Array<Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/LibraryTemplateButtonList AWS API Documentation
    #
    class LibraryTemplateButtonList < Struct.new(
      :type,
      :text,
      :phone_number,
      :url,
      :otp_type,
      :zero_tap_terms_accepted,
      :supported_apps)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because it would exceed one or more service
    # quotas or limits.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of your linked WhatsApp Business Account.
    #
    # @!attribute [rw] arn
    #   The ARN of the linked WhatsApp Business Account.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the linked WhatsApp Business Account, formatted as
    #   `waba-01234567890123456789012345678901`.
    #   @return [String]
    #
    # @!attribute [rw] waba_id
    #   The WhatsApp Business Account ID from meta.
    #   @return [String]
    #
    # @!attribute [rw] registration_status
    #   The registration status of the linked WhatsApp Business Account.
    #   @return [String]
    #
    # @!attribute [rw] link_date
    #   The date the WhatsApp Business Account was linked.
    #   @return [Time]
    #
    # @!attribute [rw] waba_name
    #   The name of the linked WhatsApp Business Account.
    #   @return [String]
    #
    # @!attribute [rw] event_destinations
    #   The event destinations for the linked WhatsApp Business Account.
    #   @return [Array<Types::WhatsAppBusinessAccountEventDestination>]
    #
    # @!attribute [rw] phone_numbers
    #   The phone numbers associated with the Linked WhatsApp Business
    #   Account.
    #   @return [Array<Types::WhatsAppPhoneNumberSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/LinkedWhatsAppBusinessAccount AWS API Documentation
    #
    class LinkedWhatsAppBusinessAccount < Struct.new(
      :arn,
      :id,
      :waba_id,
      :registration_status,
      :link_date,
      :waba_name,
      :event_destinations,
      :phone_numbers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains your WhatsApp registration status and details of any
    # unregistered WhatsApp phone number.
    #
    # @!attribute [rw] account_name
    #   The name of your account.
    #   @return [String]
    #
    # @!attribute [rw] registration_status
    #   The registration status of the linked WhatsApp Business Account.
    #   @return [String]
    #
    # @!attribute [rw] unregistered_whats_app_phone_numbers
    #   The details for unregistered WhatsApp phone numbers.
    #   @return [Array<Types::WhatsAppPhoneNumberDetail>]
    #
    # @!attribute [rw] waba_id
    #   The Amazon Resource Name (ARN) of the WhatsApp Business Account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/LinkedWhatsAppBusinessAccountIdMetaData AWS API Documentation
    #
    class LinkedWhatsAppBusinessAccountIdMetaData < Struct.new(
      :account_name,
      :registration_status,
      :unregistered_whats_app_phone_numbers,
      :waba_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a linked WhatsApp Business Account.
    #
    # @!attribute [rw] arn
    #   The ARN of the linked WhatsApp Business Account.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the linked WhatsApp Business Account, formatted as
    #   `waba-01234567890123456789012345678901`.
    #   @return [String]
    #
    # @!attribute [rw] waba_id
    #   The WhatsApp Business Account ID provided by Meta.
    #   @return [String]
    #
    # @!attribute [rw] registration_status
    #   The registration status of the linked WhatsApp Business Account.
    #   @return [String]
    #
    # @!attribute [rw] link_date
    #   The date the WhatsApp Business Account was linked.
    #   @return [Time]
    #
    # @!attribute [rw] waba_name
    #   The name of the linked WhatsApp Business Account.
    #   @return [String]
    #
    # @!attribute [rw] event_destinations
    #   The event destinations for the linked WhatsApp Business Account.
    #   @return [Array<Types::WhatsAppBusinessAccountEventDestination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/LinkedWhatsAppBusinessAccountSummary AWS API Documentation
    #
    class LinkedWhatsAppBusinessAccountSummary < Struct.new(
      :arn,
      :id,
      :waba_id,
      :registration_status,
      :link_date,
      :waba_name,
      :event_destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next token for pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ListLinkedWhatsAppBusinessAccountsInput AWS API Documentation
    #
    class ListLinkedWhatsAppBusinessAccountsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] linked_accounts
    #   A list of WhatsApp Business Accounts linked to your Amazon Web
    #   Services account.
    #   @return [Array<Types::LinkedWhatsAppBusinessAccountSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ListLinkedWhatsAppBusinessAccountsOutput AWS API Documentation
    #
    class ListLinkedWhatsAppBusinessAccountsOutput < Struct.new(
      :linked_accounts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to retrieve the tags
    #   from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   The status code of the response.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :status_code,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account to list templates for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page (1-100).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ListWhatsAppMessageTemplatesInput AWS API Documentation
    #
    class ListWhatsAppMessageTemplatesInput < Struct.new(
      :id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] templates
    #   A list of template summaries.
    #   @return [Array<Types::TemplateSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ListWhatsAppMessageTemplatesOutput AWS API Documentation
    #
    class ListWhatsAppMessageTemplatesOutput < Struct.new(
      :templates,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page (1-100).
    #   @return [Integer]
    #
    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account to list library templates
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Map of filters to apply (searchKey, topic, usecase, industry,
    #   language).
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ListWhatsAppTemplateLibraryInput AWS API Documentation
    #
    class ListWhatsAppTemplateLibraryInput < Struct.new(
      :next_token,
      :max_results,
      :id,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] meta_library_templates
    #   A list of templates from Meta's library.
    #   @return [Array<Types::MetaLibraryTemplateDefinition>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ListWhatsAppTemplateLibraryOutput AWS API Documentation
    #
    class ListWhatsAppTemplateLibraryOutput < Struct.new(
      :meta_library_templates,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a template from Meta's library with customization options.
    #
    # @!attribute [rw] template_name
    #   The name to assign to the template.
    #   @return [String]
    #
    # @!attribute [rw] library_template_name
    #   The name of the template in Meta's library.
    #   @return [String]
    #
    # @!attribute [rw] template_category
    #   The category of the template (for example, UTILITY or MARKETING).
    #   @return [String]
    #
    # @!attribute [rw] template_language
    #   The language code for the template (for example, en\_US).
    #   @return [String]
    #
    # @!attribute [rw] library_template_button_inputs
    #   Button customizations for the template.
    #   @return [Array<Types::LibraryTemplateButtonInput>]
    #
    # @!attribute [rw] library_template_body_inputs
    #   Body text customizations for the template.
    #   @return [Types::LibraryTemplateBodyInputs]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/MetaLibraryTemplate AWS API Documentation
    #
    class MetaLibraryTemplate < Struct.new(
      :template_name,
      :library_template_name,
      :template_category,
      :template_language,
      :library_template_button_inputs,
      :library_template_body_inputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the complete structure and content of a template in Meta's
    # library.
    #
    # @!attribute [rw] template_name
    #   The name of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_language
    #   The language code for the template (for example, en\_US).
    #   @return [String]
    #
    # @!attribute [rw] template_category
    #   The category of the template (for example, UTILITY or MARKETING).
    #   @return [String]
    #
    # @!attribute [rw] template_topic
    #   The topic or subject matter of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_use_case
    #   The intended use case for the template.
    #   @return [String]
    #
    # @!attribute [rw] template_industry
    #   The industries the template is designed for.
    #   @return [Array<String>]
    #
    # @!attribute [rw] template_header
    #   The header text of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   The body text of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_buttons
    #   The buttons included in the template.
    #   @return [Array<Types::LibraryTemplateButtonList>]
    #
    # @!attribute [rw] template_id
    #   The ID of the template in Meta's library.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/MetaLibraryTemplateDefinition AWS API Documentation
    #
    class MetaLibraryTemplateDefinition < Struct.new(
      :template_name,
      :template_language,
      :template_category,
      :template_topic,
      :template_use_case,
      :template_industry,
      :template_header,
      :template_body,
      :template_buttons,
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origination_phone_number_id
    #   The ID of the phone number to associate with the WhatsApp media
    #   file. The phone number identifiers are formatted as
    #   `phone-number-id-01234567890123456789012345678901`. Use
    #   [GetLinkedWhatsAppBusinessAccount][1] to find a phone number's id.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html
    #   @return [String]
    #
    # @!attribute [rw] source_s3_presigned_url
    #   The source presign url of the media file.
    #   @return [Types::S3PresignedUrl]
    #
    # @!attribute [rw] source_s3_file
    #   The source S3 url for the media file.
    #   @return [Types::S3File]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/PostWhatsAppMessageMediaInput AWS API Documentation
    #
    class PostWhatsAppMessageMediaInput < Struct.new(
      :origination_phone_number_id,
      :source_s3_presigned_url,
      :source_s3_file)
      SENSITIVE = [:source_s3_presigned_url, :source_s3_file]
      include Aws::Structure
    end

    # @!attribute [rw] media_id
    #   The unique identifier of the posted WhatsApp message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/PostWhatsAppMessageMediaOutput AWS API Documentation
    #
    class PostWhatsAppMessageMediaOutput < Struct.new(
      :media_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of your WhatsApp Business Account. WABA
    #   identifiers are formatted as
    #   `waba-01234567890123456789012345678901`. Use
    #   [ListLinkedWhatsAppBusinessAccounts][1] to list all WABAs and their
    #   details.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html
    #   @return [String]
    #
    # @!attribute [rw] event_destinations
    #   An array of `WhatsAppBusinessAccountEventDestination` event
    #   destinations.
    #   @return [Array<Types::WhatsAppBusinessAccountEventDestination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/PutWhatsAppBusinessAccountEventDestinationsInput AWS API Documentation
    #
    class PutWhatsAppBusinessAccountEventDestinationsInput < Struct.new(
      :id,
      :event_destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/PutWhatsAppBusinessAccountEventDestinationsOutput AWS API Documentation
    #
    class PutWhatsAppBusinessAccountEventDestinationsOutput < Aws::EmptyStructure; end

    # The resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information for the S3 bucket that contains media files.
    #
    # @!attribute [rw] bucket_name
    #   The bucket name.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The object key of the media file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/S3File AWS API Documentation
    #
    class S3File < Struct.new(
      :bucket_name,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can use presigned URLs to grant time-limited access to objects in
    # Amazon S3 without updating your bucket policy. For more information,
    # see [Working with presigned URLs][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-presigned-url.html
    #
    # @!attribute [rw] url
    #   The presign url to the object.
    #   @return [String]
    #
    # @!attribute [rw] headers
    #   A map of headers and their values. You must specify the
    #   `Content-Type` header when using `PostWhatsAppMessageMedia`. For a
    #   list of common headers, see [Common Request Headers][1] in the
    #   *Amazon S3 API Reference*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonRequestHeaders.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/S3PresignedUrl AWS API Documentation
    #
    class S3PresignedUrl < Struct.new(
      :url,
      :headers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origination_phone_number_id
    #   The ID of the phone number used to send the WhatsApp message. If you
    #   are sending a media file only the `originationPhoneNumberId` used to
    #   upload the file can be used. Phone number identifiers are formatted
    #   as `phone-number-id-01234567890123456789012345678901`. Use
    #   [GetLinkedWhatsAppBusinessAccount][1] to find a phone number's id.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message to send through WhatsApp. The length is in KB. The
    #   message field passes through a WhatsApp Message object, see
    #   [Messages][1] in the *WhatsApp Business Platform Cloud API
    #   Reference*.
    #
    #
    #
    #   [1]: https://developers.facebook.com/docs/whatsapp/cloud-api/reference/messages
    #   @return [String]
    #
    # @!attribute [rw] meta_api_version
    #   The API version for the request formatted as `v{VersionNumber}`. For
    #   a list of supported API versions and Amazon Web Services Regions,
    #   see [ *Amazon Web Services End User Messaging Social API* Service
    #   Endpoints][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/end-user-messaging.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/SendWhatsAppMessageInput AWS API Documentation
    #
    class SendWhatsAppMessageInput < Struct.new(
      :origination_phone_number_id,
      :message,
      :meta_api_version)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # @!attribute [rw] message_id
    #   The unique identifier of the message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/SendWhatsAppMessageOutput AWS API Documentation
    #
    class SendWhatsAppMessageOutput < Struct.new(
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tag for a resource.
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   The status code of the tag resource operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Struct.new(
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of a WhatsApp message template's key attributes.
    #
    # @!attribute [rw] template_name
    #   The name of the template.
    #   @return [String]
    #
    # @!attribute [rw] meta_template_id
    #   The numeric ID assigned to the template by Meta.
    #   @return [String]
    #
    # @!attribute [rw] template_status
    #   The current status of the template (for example, APPROVED, PENDING,
    #   or REJECTED).
    #   @return [String]
    #
    # @!attribute [rw] template_quality_score
    #   The quality score assigned to the template by Meta.
    #   @return [String]
    #
    # @!attribute [rw] template_language
    #   The language code of the template (for example, en\_US).
    #   @return [String]
    #
    # @!attribute [rw] template_category
    #   The category of the template (for example, UTILITY or MARKETING).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/TemplateSummary AWS API Documentation
    #
    class TemplateSummary < Struct.new(
      :template_name,
      :meta_template_id,
      :template_status,
      :template_quality_score,
      :template_language,
      :template_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ThrottledRequestException AWS API Documentation
    #
    class ThrottledRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   The status code of the untag resource operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Struct.new(
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account associated with this
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] meta_template_id
    #   The numeric ID of the template assigned by Meta.
    #   @return [String]
    #
    # @!attribute [rw] template_category
    #   The new category for the template (for example, UTILITY or
    #   MARKETING).
    #   @return [String]
    #
    # @!attribute [rw] template_components
    #   The updated components of the template as a JSON blob (maximum 3000
    #   characters).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/UpdateWhatsAppMessageTemplateInput AWS API Documentation
    #
    class UpdateWhatsAppMessageTemplateInput < Struct.new(
      :id,
      :meta_template_id,
      :template_category,
      :template_components)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/UpdateWhatsAppMessageTemplateOutput AWS API Documentation
    #
    class UpdateWhatsAppMessageTemplateOutput < Aws::EmptyStructure; end

    # The request contains an invalid parameter value.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The registration details for a linked phone number.
    #
    # @!attribute [rw] id
    #   The unique identifier of the originating phone number associated
    #   with the media. Phone number identifiers are formatted as
    #   `phone-number-id-01234567890123456789012345678901`. Use
    #   [GetLinkedWhatsAppBusinessAccount][1] to find a phone number's id.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html
    #   @return [String]
    #
    # @!attribute [rw] two_factor_pin
    #   The PIN to use for two-step verification. To reset your PIN follow
    #   the directions in [Updating PIN][1] in the *WhatsApp Business
    #   Platform Cloud API Reference*.
    #
    #
    #
    #   [1]: https://developers.facebook.com/docs/whatsapp/cloud-api/reference/two-step-verification/#updating-pin
    #   @return [String]
    #
    # @!attribute [rw] data_localization_region
    #   The two letter ISO region for the location of where Meta will store
    #   data.
    #
    #   **Asia–Pacific (APAC)**
    #
    #   * Australia **AU**
    #
    #   * Indonesia **ID**
    #
    #   * India **IN**
    #
    #   * Japan **JP**
    #
    #   * Singapore **SG**
    #
    #   * South Korea **KR**
    #
    #   **Europe**
    #
    #   * Germany **DE**
    #
    #   * Switzerland **CH**
    #
    #   * United Kingdom **GB**
    #
    #   **Latin America (LATAM)**
    #
    #   * Brazil **BR**
    #
    #   ^
    #
    #   **Middle East and Africa (MEA)**
    #
    #   * Bahrain **BH**
    #
    #   * South Africa **ZA**
    #
    #   * United Arab Emirates **AE**
    #
    #   **North America (NORAM)**
    #
    #   * Canada **CA**
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key and value pair tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/WabaPhoneNumberSetupFinalization AWS API Documentation
    #
    class WabaPhoneNumberSetupFinalization < Struct.new(
      :id,
      :two_factor_pin,
      :data_localization_region,
      :tags)
      SENSITIVE = [:two_factor_pin]
      include Aws::Structure
    end

    # The registration details for a linked WhatsApp Business Account.
    #
    # @!attribute [rw] id
    #   The ID of the linked WhatsApp Business Account, formatted as
    #   `waba-01234567890123456789012345678901`.
    #   @return [String]
    #
    # @!attribute [rw] event_destinations
    #   The event destinations for the linked WhatsApp Business Account.
    #   @return [Array<Types::WhatsAppBusinessAccountEventDestination>]
    #
    # @!attribute [rw] tags
    #   An array of key and value pair tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/WabaSetupFinalization AWS API Documentation
    #
    class WabaSetupFinalization < Struct.new(
      :id,
      :event_destinations,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the event destination.
    #
    # @!attribute [rw] event_destination_arn
    #   The ARN of the event destination.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an Identity and Access Management
    #   role that is able to import phone numbers and write events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/WhatsAppBusinessAccountEventDestination AWS API Documentation
    #
    class WhatsAppBusinessAccountEventDestination < Struct.new(
      :event_destination_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of your WhatsApp phone number.
    #
    # @!attribute [rw] arn
    #   The ARN of the WhatsApp phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number for sending WhatsApp.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_id
    #   The phone number ID. Phone number identifiers are formatted as
    #   `phone-number-id-01234567890123456789012345678901`.
    #   @return [String]
    #
    # @!attribute [rw] meta_phone_number_id
    #   The phone number ID from Meta.
    #   @return [String]
    #
    # @!attribute [rw] display_phone_number_name
    #   The display name for this phone number.
    #   @return [String]
    #
    # @!attribute [rw] display_phone_number
    #   The phone number that appears in the recipients display.
    #   @return [String]
    #
    # @!attribute [rw] quality_rating
    #   The quality rating of the phone number.
    #   @return [String]
    #
    # @!attribute [rw] data_localization_region
    #   The geographic region where the WhatsApp phone number's data is
    #   stored and processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/WhatsAppPhoneNumberDetail AWS API Documentation
    #
    class WhatsAppPhoneNumberDetail < Struct.new(
      :arn,
      :phone_number,
      :phone_number_id,
      :meta_phone_number_id,
      :display_phone_number_name,
      :display_phone_number,
      :quality_rating,
      :data_localization_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a linked phone number.
    #
    # @!attribute [rw] arn
    #   The full Amazon Resource Name (ARN) for the phone number.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number associated with the Linked WhatsApp Business
    #   Account.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_id
    #   The phone number ID. Phone number identifiers are formatted as
    #   `phone-number-id-01234567890123456789012345678901`.
    #   @return [String]
    #
    # @!attribute [rw] meta_phone_number_id
    #   The phone number ID from Meta.
    #   @return [String]
    #
    # @!attribute [rw] display_phone_number_name
    #   The display name for this phone number.
    #   @return [String]
    #
    # @!attribute [rw] display_phone_number
    #   The phone number that appears in the recipients display.
    #   @return [String]
    #
    # @!attribute [rw] quality_rating
    #   The quality rating of the phone number. This is from Meta.
    #   @return [String]
    #
    # @!attribute [rw] data_localization_region
    #   The geographic region where the WhatsApp phone number's data is
    #   stored and processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/WhatsAppPhoneNumberSummary AWS API Documentation
    #
    class WhatsAppPhoneNumberSummary < Struct.new(
      :arn,
      :phone_number,
      :phone_number_id,
      :meta_phone_number_id,
      :display_phone_number_name,
      :display_phone_number,
      :quality_rating,
      :data_localization_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of linking a WhatsApp Business Account to your Amazon Web
    # Services account.
    #
    # @!attribute [rw] associate_in_progress_token
    #   An Amazon Web Services access token generated by
    #   `WhatsAppSignupCallback` and used by `WhatsAppSetupFinalization`.
    #   @return [String]
    #
    # @!attribute [rw] phone_numbers
    #   An array of WabaPhoneNumberSetupFinalization objects containing the
    #   details of each phone number associated with the WhatsApp Business
    #   Account.
    #   @return [Array<Types::WabaPhoneNumberSetupFinalization>]
    #
    # @!attribute [rw] phone_number_parent
    #   Used to add a new phone number to an existing WhatsApp Business
    #   Account. This field can't be used when the `waba` field is present.
    #   @return [String]
    #
    # @!attribute [rw] waba
    #   Used to create a new WhatsApp Business Account and add a phone
    #   number. This field can't be used when the `phoneNumberParent` field
    #   is present.
    #   @return [Types::WabaSetupFinalization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/WhatsAppSetupFinalization AWS API Documentation
    #
    class WhatsAppSetupFinalization < Struct.new(
      :associate_in_progress_token,
      :phone_numbers,
      :phone_number_parent,
      :waba)
      SENSITIVE = [:associate_in_progress_token]
      include Aws::Structure
    end

    # Contains the `accessToken` provided by Meta during signup.
    #
    # @!attribute [rw] access_token
    #   The access token for your WhatsApp Business Account. The
    #   `accessToken` value is provided by Meta.
    #   @return [String]
    #
    # @!attribute [rw] callback_url
    #   The URL where WhatsApp will send callback notifications for this
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/WhatsAppSignupCallback AWS API Documentation
    #
    class WhatsAppSignupCallback < Struct.new(
      :access_token,
      :callback_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of WhatsAppSignupCallback.
    #
    # @!attribute [rw] associate_in_progress_token
    #   An Amazon Web Services access token generated by
    #   `WhatsAppSignupCallback` and used by `WhatsAppSetupFinalization`.
    #   @return [String]
    #
    # @!attribute [rw] linked_accounts_with_incomplete_setup
    #   A LinkedWhatsAppBusinessAccountIdMetaData object map containing the
    #   details of any WhatsAppBusiness accounts that have incomplete setup.
    #   @return [Hash<String,Types::LinkedWhatsAppBusinessAccountIdMetaData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/WhatsAppSignupCallbackResult AWS API Documentation
    #
    class WhatsAppSignupCallbackResult < Struct.new(
      :associate_in_progress_token,
      :linked_accounts_with_incomplete_setup)
      SENSITIVE = [:associate_in_progress_token]
      include Aws::Structure
    end

  end
end

