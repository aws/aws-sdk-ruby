# frozen_string_literal: true

# This is generated code!

module Aws::SocialMessaging
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedByMetaException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute signup_callback
    #   <p>Contains the callback access token.</p>
    #   @return [Types::WhatsAppSignupCallback]
    # @!attribute setup_finalization
    #   <p>A JSON object that contains the phone numbers and WhatsApp Business Account to link to your account.</p>
    #   @return [Types::WhatsAppSetupFinalization]
    class AssociateWhatsAppBusinessAccountInput < Struct.new(
      :signup_callback,
      :setup_finalization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute signup_callback_result
    #   <p>Contains your WhatsApp registration status.</p>
    #   @return [Types::WhatsAppSignupCallbackResult]
    # @!attribute status_code
    #   <p>The status code for the response.</p>
    #   @return [Integer]
    class AssociateWhatsAppBusinessAccountOutput < Struct.new(
      :signup_callback_result,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meta_library_template
    #   <p>The template configuration from Meta's library, including customizations for buttons and body text.</p>
    #   @return [Types::MetaLibraryTemplate]
    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account to associate with this template.</p>
    #   @return [String]
    class CreateWhatsAppMessageTemplateFromLibraryInput < Struct.new(
      :meta_library_template,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meta_template_id
    #   <p>The numeric ID assigned to the template by Meta.</p>
    #   @return [String]
    # @!attribute template_status
    #   <p>The status of the created template (for example, PENDING or APPROVED).</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of the template (for example, UTILITY or MARKETING).</p>
    #   @return [String]
    class CreateWhatsAppMessageTemplateFromLibraryOutput < Struct.new(
      :meta_template_id,
      :template_status,
      :category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_definition
    #   <p>The complete template definition as a JSON blob.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account to associate with this template.</p>
    #   @return [String]
    class CreateWhatsAppMessageTemplateInput < Struct.new(
      :template_definition,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account associated with this media upload.</p>
    #   @return [String]
    # @!attribute source_s3_file
    #   <p>Contains information for the S3 bucket that contains media files.</p>
    #   @return [Types::S3File]
    class CreateWhatsAppMessageTemplateMediaInput < Struct.new(
      :id,
      :source_s3_file,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meta_header_handle
    #   <p>The handle assigned to the uploaded media by Meta, used to reference the media in templates.</p>
    #   @return [String]
    class CreateWhatsAppMessageTemplateMediaOutput < Struct.new(
      :meta_header_handle,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meta_template_id
    #   <p>The numeric ID assigned to the template by Meta.</p>
    #   @return [String]
    # @!attribute template_status
    #   <p>The status of the created template, such as PENDING or APPROVED..</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of the template, such as UTILITY or MARKETING.</p>
    #   @return [String]
    class CreateWhatsAppMessageTemplateOutput < Struct.new(
      :meta_template_id,
      :template_status,
      :category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_id
    #   <p>The unique identifier of the media file to delete. Use the <code>mediaId</code> returned from <a href="https://console.aws.amazon.com/social-messaging/latest/APIReference/API_PostWhatsAppMessageMedia.html">PostWhatsAppMessageMedia</a>.</p>
    #   @return [String]
    # @!attribute origination_phone_number_id
    #   <p>The unique identifier of the originating phone number associated with the media. Phone
    #            number identifiers are formatted as
    #               <code>phone-number-id-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's
    #            id.</p>
    #   @return [String]
    class DeleteWhatsAppMessageMediaInput < Struct.new(
      :media_id,
      :origination_phone_number_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute success
    #   <p>Success indicator for deleting the media file.</p>
    #   @return [Boolean]
    class DeleteWhatsAppMessageMediaOutput < Struct.new(
      :success,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meta_template_id
    #   <p>The numeric ID of the template assigned by Meta.</p>
    #   @return [String]
    # @!attribute delete_all_languages
    #   <p>If true, deletes all language versions of the template.</p>
    #   @return [Boolean]
    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account associated with this template.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the template to delete.</p>
    #   @return [String]
    class DeleteWhatsAppMessageTemplateInput < Struct.new(
      :meta_template_id,
      :delete_all_languages,
      :id,
      :template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWhatsAppMessageTemplateOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when performing an action because a dependency would be broken.</p>
    # @!attribute message
    #   @return [String]
    class DependencyException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of your WhatsApp Business Account. WABA identifiers are formatted as
    #            <code>waba-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html">ListLinkedWhatsAppBusinessAccounts</a> to list all WABAs and their details.</p>
    #   @return [String]
    class DisassociateWhatsAppBusinessAccountInput < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateWhatsAppBusinessAccountOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier, from Amazon Web Services, of the linked WhatsApp Business
    #            Account. WABA identifiers are formatted as
    #            <code>waba-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html">ListLinkedWhatsAppBusinessAccounts</a> to list all WABAs and their details.</p>
    #   @return [String]
    class GetLinkedWhatsAppBusinessAccountInput < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account
    #   <p>The details of the linked WhatsApp Business Account.</p>
    #   @return [Types::LinkedWhatsAppBusinessAccount]
    class GetLinkedWhatsAppBusinessAccountOutput < Struct.new(
      :account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the phone number. Phone number
    #            identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>.
    #            Use <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's
    #            id.</p>
    #   @return [String]
    class GetLinkedWhatsAppBusinessAccountPhoneNumberInput < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number
    #   <p>The details of your WhatsApp phone number.</p>
    #   @return [Types::WhatsAppPhoneNumberDetail]
    # @!attribute linked_whats_app_business_account_id
    #   <p>The WABA identifier linked to the phone number, formatted as
    #            <code>waba-01234567890123456789012345678901</code>.</p>
    #   @return [String]
    class GetLinkedWhatsAppBusinessAccountPhoneNumberOutput < Struct.new(
      :phone_number,
      :linked_whats_app_business_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_id
    #   <p>The unique identifier for the media file.</p>
    #   @return [String]
    # @!attribute origination_phone_number_id
    #   <p>The unique identifier of the originating phone number for the WhatsApp message media.
    #            The phone number identifiers are formatted as
    #               <code>phone-number-id-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's
    #            id.</p>
    #   @return [String]
    # @!attribute metadata_only
    #   <p>Set to <code>True</code> to get only the metadata for the file.</p>
    #   @return [Boolean]
    # @!attribute destination_s3_presigned_url
    #   <p>The presign url of the media file.</p>
    #   @return [Types::S3PresignedUrl]
    # @!attribute destination_s3_file
    #   <p>The <code>bucketName</code> and <code>key</code> of the S3 media file.</p>
    #   @return [Types::S3File]
    class GetWhatsAppMessageMediaInput < Struct.new(
      :media_id,
      :origination_phone_number_id,
      :metadata_only,
      :destination_s3_presigned_url,
      :destination_s3_file,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute mime_type
    #   <p>The MIME type of the media.</p>
    #   @return [String]
    # @!attribute file_size
    #   <p>The file size of the media, in KB.</p>
    #   @return [Integer]
    class GetWhatsAppMessageMediaOutput < Struct.new(
      :mime_type,
      :file_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meta_template_id
    #   <p>The numeric ID of the template assigned by Meta.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account associated with this template.</p>
    #   @return [String]
    class GetWhatsAppMessageTemplateInput < Struct.new(
      :meta_template_id,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template
    #   <p>The complete template definition as a JSON string (maximum 6000 characters).</p>
    #   @return [String]
    class GetWhatsAppMessageTemplateOutput < Struct.new(
      :template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception, or
    #          failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameters provided to the action are not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParametersException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration options for customizing the body content of a template from Meta's library.</p>
    # @!attribute add_contact_number
    #   <p>When true, includes a contact number in the template body.</p>
    #   @return [Boolean]
    # @!attribute add_learn_more_link
    #   <p>When true, includes a "learn more" link in the template body.</p>
    #   @return [Boolean]
    # @!attribute add_security_recommendation
    #   <p>When true, includes security recommendations in the template body.</p>
    #   @return [Boolean]
    # @!attribute add_track_package_link
    #   <p>When true, includes a package tracking link in the template body.</p>
    #   @return [Boolean]
    # @!attribute code_expiration_minutes
    #   <p>The number of minutes until a verification code or OTP expires.</p>
    #   @return [Integer]
    class LibraryTemplateBodyInputs < Struct.new(
      :add_contact_number,
      :add_learn_more_link,
      :add_security_recommendation,
      :add_track_package_link,
      :code_expiration_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration options for customizing buttons in a template from Meta's library.</p>
    # @!attribute type
    #   <p>The type of button (for example, QUICK_REPLY, CALL, or URL).</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number in E.164 format for CALL-type buttons.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL with dynamic parameters for URL-type buttons.</p>
    #   @return [Hash<String, String>]
    # @!attribute otp_type
    #   <p>The type of one-time password for OTP buttons.</p>
    #   @return [String]
    # @!attribute zero_tap_terms_accepted
    #   <p>When true, indicates acceptance of zero-tap terms for the button.</p>
    #   @return [Boolean]
    # @!attribute supported_apps
    #   <p>List of supported applications for this button type.</p>
    #   @return [Array<Hash<String, String>>]
    class LibraryTemplateButtonInput < Struct.new(
      :type,
      :phone_number,
      :url,
      :otp_type,
      :zero_tap_terms_accepted,
      :supported_apps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a button in a template from Meta's library.</p>
    # @!attribute type
    #   <p>The type of button (for example, QUICK_REPLY, CALL, or URL).</p>
    #   @return [String]
    # @!attribute text
    #   <p>The text displayed on the button (maximum 40 characters).</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number in E.164 format for CALL-type buttons.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL for URL-type buttons.</p>
    #   @return [String]
    # @!attribute otp_type
    #   <p>The type of one-time password for OTP buttons.</p>
    #   @return [String]
    # @!attribute zero_tap_terms_accepted
    #   <p>When true, indicates acceptance of zero-tap terms for the button.</p>
    #   @return [Boolean]
    # @!attribute supported_apps
    #   <p>List of supported applications for this button type.</p>
    #   @return [Array<Hash<String, String>>]
    class LibraryTemplateButtonList < Struct.new(
      :type,
      :text,
      :phone_number,
      :url,
      :otp_type,
      :zero_tap_terms_accepted,
      :supported_apps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because it would exceed one or more service quotas or limits.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of your linked WhatsApp Business Account.</p>
    # @!attribute arn
    #   <p>The ARN of the linked WhatsApp Business Account.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the linked WhatsApp Business Account, formatted as <code>waba-01234567890123456789012345678901</code>.</p>
    #   @return [String]
    # @!attribute waba_id
    #   <p>The WhatsApp Business Account ID from meta.</p>
    #   @return [String]
    # @!attribute registration_status
    #   <p>The registration status of the linked WhatsApp Business Account.</p>
    #   @return [String]
    # @!attribute link_date
    #   <p>The date the WhatsApp Business Account was linked.</p>
    #   @return [Time]
    # @!attribute waba_name
    #   <p>The name of the linked WhatsApp Business Account.</p>
    #   @return [String]
    # @!attribute event_destinations
    #   <p>The event destinations for the linked WhatsApp Business Account.</p>
    #   @return [Array<Types::WhatsAppBusinessAccountEventDestination>]
    # @!attribute phone_numbers
    #   <p>The phone numbers associated with the Linked WhatsApp Business Account.</p>
    #   @return [Array<Types::WhatsAppPhoneNumberSummary>]
    class LinkedWhatsAppBusinessAccount < Struct.new(
      :arn,
      :id,
      :waba_id,
      :registration_status,
      :link_date,
      :waba_name,
      :event_destinations,
      :phone_numbers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains your WhatsApp registration status and details of any unregistered WhatsApp
    #          phone number.</p>
    # @!attribute account_name
    #   <p>The name of your account.</p>
    #   @return [String]
    # @!attribute registration_status
    #   <p>The registration status of the linked WhatsApp Business Account.</p>
    #   @return [String]
    # @!attribute unregistered_whats_app_phone_numbers
    #   <p>The details for unregistered WhatsApp phone numbers.</p>
    #   @return [Array<Types::WhatsAppPhoneNumberDetail>]
    # @!attribute waba_id
    #   <p>The Amazon Resource Name (ARN) of the WhatsApp Business Account ID.</p>
    #   @return [String]
    class LinkedWhatsAppBusinessAccountIdMetaData < Struct.new(
      :account_name,
      :registration_status,
      :unregistered_whats_app_phone_numbers,
      :waba_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a linked WhatsApp Business Account.</p>
    # @!attribute arn
    #   <p>The ARN of the linked WhatsApp Business Account.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the linked WhatsApp Business Account, formatted as <code>waba-01234567890123456789012345678901</code>.</p>
    #   @return [String]
    # @!attribute waba_id
    #   <p>The WhatsApp Business Account ID provided by Meta.</p>
    #   @return [String]
    # @!attribute registration_status
    #   <p>The registration status of the linked WhatsApp Business Account.</p>
    #   @return [String]
    # @!attribute link_date
    #   <p>The date the WhatsApp Business Account was linked.</p>
    #   @return [Time]
    # @!attribute waba_name
    #   <p>The name of the linked WhatsApp Business Account.</p>
    #   @return [String]
    # @!attribute event_destinations
    #   <p>The event destinations for the linked WhatsApp Business Account.</p>
    #   @return [Array<Types::WhatsAppBusinessAccountEventDestination>]
    class LinkedWhatsAppBusinessAccountSummary < Struct.new(
      :arn,
      :id,
      :waba_id,
      :registration_status,
      :link_date,
      :waba_name,
      :event_destinations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The next token for pagination.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    class ListLinkedWhatsAppBusinessAccountsInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute linked_accounts
    #   <p>A list of WhatsApp Business Accounts linked to your Amazon Web Services account.</p>
    #   @return [Array<Types::LinkedWhatsAppBusinessAccountSummary>]
    # @!attribute next_token
    #   <p>The next token for pagination.</p>
    #   @return [String]
    class ListLinkedWhatsAppBusinessAccountsOutput < Struct.new(
      :linked_accounts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to retrieve the tags from.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status_code
    #   <p>The status code of the response.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceOutput < Struct.new(
      :status_code,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account to list templates for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page (1-100).</p>
    #   @return [Integer]
    class ListWhatsAppMessageTemplatesInput < Struct.new(
      :id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute templates
    #   <p>A list of template summaries.</p>
    #   @return [Array<Types::TemplateSummary>]
    # @!attribute next_token
    #   <p>The token to retrieve the next page of results, if any.</p>
    #   @return [String]
    class ListWhatsAppMessageTemplatesOutput < Struct.new(
      :templates,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page (1-100).</p>
    #   @return [Integer]
    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account to list library templates for.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Map of filters to apply (searchKey, topic, usecase, industry, language).</p>
    #   @return [Hash<String, String>]
    class ListWhatsAppTemplateLibraryInput < Struct.new(
      :next_token,
      :max_results,
      :id,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute meta_library_templates
    #   <p>A list of templates from Meta's library.</p>
    #   @return [Array<Types::MetaLibraryTemplateDefinition>]
    # @!attribute next_token
    #   <p>The token to retrieve the next page of results, if any.</p>
    #   @return [String]
    class ListWhatsAppTemplateLibraryOutput < Struct.new(
      :meta_library_templates,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a template from Meta's library with customization options.</p>
    # @!attribute template_name
    #   <p>The name to assign to the template.</p>
    #   @return [String]
    # @!attribute library_template_name
    #   <p>The name of the template in Meta's library.</p>
    #   @return [String]
    # @!attribute template_category
    #   <p>The category of the template (for example, UTILITY or MARKETING).</p>
    #   @return [String]
    # @!attribute template_language
    #   <p>The language code for the template (for example, en_US).</p>
    #   @return [String]
    # @!attribute library_template_button_inputs
    #   <p>Button customizations for the template.</p>
    #   @return [Array<Types::LibraryTemplateButtonInput>]
    # @!attribute library_template_body_inputs
    #   <p>Body text customizations for the template.</p>
    #   @return [Types::LibraryTemplateBodyInputs]
    class MetaLibraryTemplate < Struct.new(
      :template_name,
      :library_template_name,
      :template_category,
      :template_language,
      :library_template_button_inputs,
      :library_template_body_inputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the complete structure and content of a template in Meta's library.</p>
    # @!attribute template_name
    #   <p>The name of the template.</p>
    #   @return [String]
    # @!attribute template_language
    #   <p>The language code for the template (for example, en_US).</p>
    #   @return [String]
    # @!attribute template_category
    #   <p>The category of the template (for example, UTILITY or MARKETING).</p>
    #   @return [String]
    # @!attribute template_topic
    #   <p>The topic or subject matter of the template.</p>
    #   @return [String]
    # @!attribute template_use_case
    #   <p>The intended use case for the template.</p>
    #   @return [String]
    # @!attribute template_industry
    #   <p>The industries the template is designed for.</p>
    #   @return [Array<String>]
    # @!attribute template_header
    #   <p>The header text of the template.</p>
    #   @return [String]
    # @!attribute template_body
    #   <p>The body text of the template.</p>
    #   @return [String]
    # @!attribute template_buttons
    #   <p>The buttons included in the template.</p>
    #   @return [Array<Types::LibraryTemplateButtonList>]
    # @!attribute template_id
    #   <p>The ID of the template in Meta's library.</p>
    #   @return [String]
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
      :template_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_phone_number_id
    #   <p>The ID of the phone number to associate with the WhatsApp media file. The phone number
    #            identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>.
    #            Use <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html">GetLinkedWhatsAppBusinessAccount</a>  to find a phone number's
    #            id.</p>
    #   @return [String]
    # @!attribute source_s3_presigned_url
    #   <p>The source presign url of the media file.</p>
    #   @return [Types::S3PresignedUrl]
    # @!attribute source_s3_file
    #   <p>The source S3 url for the media file.</p>
    #   @return [Types::S3File]
    class PostWhatsAppMessageMediaInput < Struct.new(
      :origination_phone_number_id,
      :source_s3_presigned_url,
      :source_s3_file,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute media_id
    #   <p>The unique identifier of the posted WhatsApp message.</p>
    #   @return [String]
    class PostWhatsAppMessageMediaOutput < Struct.new(
      :media_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of your WhatsApp Business Account. WABA identifiers are formatted as
    #            <code>waba-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html">ListLinkedWhatsAppBusinessAccounts</a> to list all WABAs and their details.</p>
    #   @return [String]
    # @!attribute event_destinations
    #   <p>An array of <code>WhatsAppBusinessAccountEventDestination</code> event destinations.</p>
    #   @return [Array<Types::WhatsAppBusinessAccountEventDestination>]
    class PutWhatsAppBusinessAccountEventDestinationsInput < Struct.new(
      :id,
      :event_destinations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutWhatsAppBusinessAccountEventDestinationsOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for the S3 bucket that contains media files.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute bucket_name
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The object key of the media file.</p>
    #   @return [String]
    class S3File < Struct.new(
      :bucket_name,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You can use presigned URLs to grant time-limited access to objects in Amazon S3 without updating your bucket policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-presigned-url.html">Working with presigned URLs</a> in the <i>Amazon S3
    #          User Guide</i>.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute url
    #   <p>The presign url to the object.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>A map of headers and their values. You must specify the <code>Content-Type</code> header when using <code>PostWhatsAppMessageMedia</code>. For a list of common headers, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonRequestHeaders.html">Common Request Headers</a> in the <i>Amazon S3
    #            API Reference</i>
    #            </p>
    #   @return [Hash<String, String>]
    class S3PresignedUrl < Struct.new(
      :url,
      :headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_phone_number_id
    #   <p>The ID of the phone number used to send the WhatsApp message. If you are sending a media
    #            file only the <code>originationPhoneNumberId</code> used to upload the file can be used.
    #            Phone number identifiers are formatted as
    #               <code>phone-number-id-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's
    #            id.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message to send through WhatsApp. The length is in KB. The message field passes through a WhatsApp
    #            Message object, see <a href="https://developers.facebook.com/docs/whatsapp/cloud-api/reference/messages">Messages</a> in the <i>WhatsApp Business Platform Cloud API
    #                  Reference</i>.</p>
    #   @return [String]
    # @!attribute meta_api_version
    #   <p>The API version for the request formatted as <code>v{VersionNumber}</code>. For a list of supported API versions and Amazon Web Services Regions, see <a href="https://docs.aws.amazon.com/general/latest/gr/end-user-messaging.html">
    #                  <i>Amazon Web Services End User Messaging Social API</i> Service Endpoints</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class SendWhatsAppMessageInput < Struct.new(
      :origination_phone_number_id,
      :message,
      :meta_api_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The unique identifier of the message.</p>
    #   @return [String]
    class SendWhatsAppMessageOutput < Struct.new(
      :message_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tag for a resource.</p>
    # @!attribute key
    #   <p>The tag key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status_code
    #   <p>The status code of the tag resource operation.</p>
    #   @return [Integer]
    class TagResourceOutput < Struct.new(
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of a WhatsApp message template's key attributes.</p>
    # @!attribute template_name
    #   <p>The name of the template.</p>
    #   @return [String]
    # @!attribute meta_template_id
    #   <p>The numeric ID assigned to the template by Meta.</p>
    #   @return [String]
    # @!attribute template_status
    #   <p>The current status of the template (for example, APPROVED, PENDING, or REJECTED).</p>
    #   @return [String]
    # @!attribute template_quality_score
    #   <p>The quality score assigned to the template by Meta.</p>
    #   @return [String]
    # @!attribute template_language
    #   <p>The language code of the template (for example, en_US).</p>
    #   @return [String]
    # @!attribute template_category
    #   <p>The category of the template (for example, UTILITY or MARKETING).</p>
    #   @return [String]
    class TemplateSummary < Struct.new(
      :template_name,
      :meta_template_id,
      :template_status,
      :template_quality_score,
      :template_language,
      :template_category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottledRequestException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status_code
    #   <p>The status code of the untag resource operation.</p>
    #   @return [Integer]
    class UntagResourceOutput < Struct.new(
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account associated with this template.</p>
    #   @return [String]
    # @!attribute meta_template_id
    #   <p>The numeric ID of the template assigned by Meta.</p>
    #   @return [String]
    # @!attribute template_category
    #   <p>The new category for the template (for example, UTILITY or MARKETING).</p>
    #   @return [String]
    # @!attribute template_components
    #   <p>The updated components of the template as a JSON blob (maximum 3000 characters).</p>
    #   @return [String]
    class UpdateWhatsAppMessageTemplateInput < Struct.new(
      :id,
      :meta_template_id,
      :template_category,
      :template_components,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateWhatsAppMessageTemplateOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request contains an invalid parameter value. </p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The registration details for a linked phone number.</p>
    # @!attribute id
    #   <p>The unique identifier of the originating phone number associated with the media. Phone
    #            number identifiers are formatted as
    #            <code>phone-number-id-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccountPhoneNumber.html">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's
    #            id.</p>
    #   @return [String]
    # @!attribute two_factor_pin
    #   <p>The PIN to use for two-step verification. To reset your PIN follow the directions in
    #            <a href="https://developers.facebook.com/docs/whatsapp/cloud-api/reference/two-step-verification/#updating-pin">Updating PIN</a> in the <i>WhatsApp Business Platform Cloud API
    #                  Reference</i>.</p>
    #   @return [String]
    # @!attribute data_localization_region
    #   <p>The two letter ISO region for the location of where Meta will store data.</p>
    #            <p class="title">
    #               <b>Asia–Pacific (APAC)</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Australia <b>AU</b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Indonesia <b>ID</b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>India <b>IN</b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Japan <b>JP</b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Singapore <b>SG</b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>South Korea <b>KR</b>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p class="title">
    #               <b>Europe</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Germany <b>DE</b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Switzerland <b>CH</b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>United Kingdom <b>GB</b>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p class="title">
    #               <b>Latin America (LATAM)</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Brazil <b>BR</b>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p class="title">
    #               <b>Middle East and Africa (MEA)</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Bahrain <b>BH</b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>South Africa <b>ZA</b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>United Arab Emirates <b>AE</b>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p class="title">
    #               <b>North America (NORAM)</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Canada <b>CA</b>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key and value pair tags.</p>
    #   @return [Array<Types::Tag>]
    class WabaPhoneNumberSetupFinalization < Struct.new(
      :id,
      :two_factor_pin,
      :data_localization_region,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The registration details for a linked WhatsApp Business Account.</p>
    # @!attribute id
    #   <p>The ID of the linked WhatsApp Business Account, formatted as <code>waba-01234567890123456789012345678901</code>.</p>
    #   @return [String]
    # @!attribute event_destinations
    #   <p>The event destinations for the linked WhatsApp Business Account.</p>
    #   @return [Array<Types::WhatsAppBusinessAccountEventDestination>]
    # @!attribute tags
    #   <p>An array of key and value pair tags.</p>
    #   @return [Array<Types::Tag>]
    class WabaSetupFinalization < Struct.new(
      :id,
      :event_destinations,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on the event destination.</p>
    # @!attribute event_destination_arn
    #   <p>The ARN of the event destination.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management role
    #            that is able to import phone numbers and write events.</p>
    #   @return [String]
    class WhatsAppBusinessAccountEventDestination < Struct.new(
      :event_destination_arn,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of your WhatsApp phone number.</p>
    # @!attribute arn
    #   <p>The ARN of the WhatsApp phone number.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number for sending WhatsApp.</p>
    #   @return [String]
    # @!attribute phone_number_id
    #   <p>The phone number ID. Phone number identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>. </p>
    #   @return [String]
    # @!attribute meta_phone_number_id
    #   <p>The phone number ID from Meta.</p>
    #   @return [String]
    # @!attribute display_phone_number_name
    #   <p>The display name for this phone number.</p>
    #   @return [String]
    # @!attribute display_phone_number
    #   <p>The phone number that appears in the recipients display.</p>
    #   @return [String]
    # @!attribute quality_rating
    #   <p>The quality rating of the phone number.</p>
    #   @return [String]
    # @!attribute data_localization_region
    #   <p>The geographic region where the WhatsApp phone number's data is stored and processed.</p>
    #   @return [String]
    class WhatsAppPhoneNumberDetail < Struct.new(
      :arn,
      :phone_number,
      :phone_number_id,
      :meta_phone_number_id,
      :display_phone_number_name,
      :display_phone_number,
      :quality_rating,
      :data_localization_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a linked phone number.</p>
    # @!attribute arn
    #   <p>The full Amazon Resource Name (ARN) for the phone number.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number associated with the Linked WhatsApp Business Account.</p>
    #   @return [String]
    # @!attribute phone_number_id
    #   <p>The phone number ID. Phone number identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>. </p>
    #   @return [String]
    # @!attribute meta_phone_number_id
    #   <p>The phone number ID from Meta.</p>
    #   @return [String]
    # @!attribute display_phone_number_name
    #   <p>The display name for this phone number.</p>
    #   @return [String]
    # @!attribute display_phone_number
    #   <p>The phone number that appears in the recipients display.</p>
    #   @return [String]
    # @!attribute quality_rating
    #   <p>The quality rating of the phone number. This is from Meta.</p>
    #   @return [String]
    # @!attribute data_localization_region
    #   <p>The geographic region where the WhatsApp phone number's data is stored and processed.</p>
    #   @return [String]
    class WhatsAppPhoneNumberSummary < Struct.new(
      :arn,
      :phone_number,
      :phone_number_id,
      :meta_phone_number_id,
      :display_phone_number_name,
      :display_phone_number,
      :quality_rating,
      :data_localization_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of linking a WhatsApp Business Account to your Amazon Web Services account.</p>
    # @!attribute associate_in_progress_token
    #   <p>An Amazon Web Services access token generated by <code>WhatsAppSignupCallback</code> and used by <code>WhatsAppSetupFinalization</code>.</p>
    #   @return [String]
    # @!attribute phone_numbers
    #   <p>An array of WabaPhoneNumberSetupFinalization objects containing the details of each phone number associated with the WhatsApp Business Account.</p>
    #   @return [Array<Types::WabaPhoneNumberSetupFinalization>]
    # @!attribute phone_number_parent
    #   <p>Used to add a new phone number to an existing WhatsApp Business Account. This field can't be used when the <code>waba</code> field is present.</p>
    #   @return [String]
    # @!attribute waba
    #   <p>Used to create a new WhatsApp Business Account and add a phone number. This field can't be used when the <code>phoneNumberParent</code> field is present.</p>
    #   @return [Types::WabaSetupFinalization]
    class WhatsAppSetupFinalization < Struct.new(
      :associate_in_progress_token,
      :phone_numbers,
      :phone_number_parent,
      :waba,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the <code>accessToken</code> provided by Meta during signup.</p>
    # @!attribute access_token
    #   <p>The access token for your WhatsApp Business Account. The <code>accessToken</code> value is provided by Meta.</p>
    #   @return [String]
    # @!attribute callback_url
    #   <p>The URL where WhatsApp will send callback notifications for this account.</p>
    #   @return [String]
    class WhatsAppSignupCallback < Struct.new(
      :access_token,
      :callback_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the results of WhatsAppSignupCallback.</p>
    # @!attribute associate_in_progress_token
    #   <p>An Amazon Web Services access token generated by <code>WhatsAppSignupCallback</code> and used by <code>WhatsAppSetupFinalization</code>.</p>
    #   @return [String]
    # @!attribute linked_accounts_with_incomplete_setup
    #   <p>A LinkedWhatsAppBusinessAccountIdMetaData object map containing the details of any WhatsAppBusiness accounts that have incomplete setup.</p>
    #   @return [Hash<String, Types::LinkedWhatsAppBusinessAccountIdMetaData>]
    class WhatsAppSignupCallbackResult < Struct.new(
      :associate_in_progress_token,
      :linked_accounts_with_incomplete_setup,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
