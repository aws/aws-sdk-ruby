# frozen_string_literal: true

# This is generated code!

module Aws::SocialMessaging
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedByMetaException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
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
      nil,
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
    # @!attribute linked_whats_app_business_account_id
    #   <p>The ID of the WhatsApp Business Account that was linked to your Amazon Web Services account.</p>
    #   @return [String]
    class AssociateWhatsAppBusinessAccountOutput < Struct.new(
      nil,
      :signup_callback_result,
      :status_code,
      :linked_whats_app_business_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your request has conflicting operations. This can occur if you're trying to perform more than one operation on the same resource at the same time.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account to create a dataset for, formatted as <code>waba-01234567890123456789012345678901</code>.</p>
    #   @return [String]
    class CreateWhatsAppDatasetInput < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p>The Meta-generated dataset ID, a numeric string of 10 to 20 digits.</p>
    #   @return [String]
    class CreateWhatsAppDatasetOutput < Struct.new(
      nil,
      :dataset_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account to associate with this Flow.</p>
    #   @return [String]
    # @!attribute flow_name
    #   <p>The name of the Flow. Must be unique within the WhatsApp Business Account.</p>
    #   @return [String]
    # @!attribute categories
    #   <p>The categories that classify the business purpose of the Flow. At least one category is required.</p>
    #   @return [Array<String>]
    # @!attribute flow_json
    #   <p>The Flow JSON definition that describes the screens, components, and logic of the Flow. Maximum size is 10 MB.</p>
    #   @return [String]
    # @!attribute publish
    #   <p>Set to <code>true</code> to publish the Flow immediately after creation. Requires a valid <code>flowJson</code> that passes Meta's validation.</p>
    #   @return [Boolean]
    # @!attribute clone_flow_id
    #   <p>The ID of an existing Flow within the same WhatsApp Business Account to clone.</p>
    #   @return [String]
    # @!attribute endpoint_uri
    #   <p>The HTTPS endpoint that Meta calls for a data exchange Flow.</p>
    #   @return [String]
    class CreateWhatsAppFlowInput < Struct.new(
      nil,
      :id,
      :flow_name,
      :categories,
      :flow_json,
      :publish,
      :clone_flow_id,
      :endpoint_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_id
    #   <p>The unique identifier assigned to the Flow by Meta.</p>
    #   @return [String]
    # @!attribute validation_errors
    #   <p>A list of validation errors returned by Meta, if any. Validation errors must be resolved before the Flow can be published.</p>
    #   @return [Array<String>]
    class CreateWhatsAppFlowOutput < Struct.new(
      nil,
      :flow_id,
      :validation_errors,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
      :meta_template_id,
      :template_status,
      :category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    #   @return [String]
    # @!attribute flow_id
    #   <p>The unique identifier of the Flow to delete.</p>
    #   @return [String]
    class DeleteWhatsAppFlowInput < Struct.new(
      nil,
      :id,
      :flow_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWhatsAppFlowOutput < Struct.new(
      nil,
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
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's
    #            id.</p>
    #   @return [String]
    class DeleteWhatsAppMessageMediaInput < Struct.new(
      nil,
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
      nil,
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
      nil,
      :meta_template_id,
      :delete_all_languages,
      :id,
      :template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWhatsAppMessageTemplateOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when performing an action because a dependency would be broken.</p>
    # @!attribute message
    #   @return [String]
    class DependencyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    #   @return [String]
    # @!attribute flow_id
    #   <p>The unique identifier of the Flow to deprecate.</p>
    #   @return [String]
    class DeprecateWhatsAppFlowInput < Struct.new(
      nil,
      :id,
      :flow_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeprecateWhatsAppFlowOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of your WhatsApp Business Account. WABA identifiers are formatted as
    #            <code>waba-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_ListLinkedWhatsAppBusinessAccounts.html">ListLinkedWhatsAppBusinessAccounts</a> to list all WABAs
    #            and their details.</p>
    #   @return [String]
    class DisassociateWhatsAppBusinessAccountInput < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateWhatsAppBusinessAccountOutput < Struct.new(
      nil,
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
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account
    #   <p>The details of the linked WhatsApp Business Account.</p>
    #   @return [Types::LinkedWhatsAppBusinessAccount]
    class GetLinkedWhatsAppBusinessAccountOutput < Struct.new(
      nil,
      :account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the phone number. Phone number
    #            identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>.
    #            Use <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html">GetLinkedWhatsAppBusinessAccount</a>
    #            to find a phone number's id.</p>
    #   @return [String]
    class GetLinkedWhatsAppBusinessAccountPhoneNumberInput < Struct.new(
      nil,
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
    # @!attribute call_settings
    #   <p>The calling settings configured for the phone number. This value is absent when calling is not configured.</p>
    #   @return [Types::WhatsAppCallSettings]
    class GetLinkedWhatsAppBusinessAccountPhoneNumberOutput < Struct.new(
      nil,
      :phone_number,
      :linked_whats_app_business_account_id,
      :call_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_phone_number_id
    #   <p>The unique identifier of the phone number whose business public key to retrieve.</p>
    #   @return [String]
    class GetWhatsAppBusinessPublicKeyInput < Struct.new(
      nil,
      :origination_phone_number_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute business_public_key
    #   <p>The stored PEM-encoded 2048-bit RSA public key.</p>
    #   @return [String]
    # @!attribute business_public_key_signature_status
    #   <p>The signature status of the stored business public key. Valid values are VALID and MISMATCH.</p>
    #   @return [String]
    class GetWhatsAppBusinessPublicKeyOutput < Struct.new(
      nil,
      :business_public_key,
      :business_public_key_signature_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_phone_number_id
    #   <p>The unique identifier of the business phone number for which to retrieve the calling permission. The phone number identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>.</p>
    #   @return [String]
    # @!attribute destination_phone_number
    #   <p>The end user's phone number, in E.164 format, for which to retrieve the calling permission.</p>
    #   @return [String]
    # @!attribute end_user_bsuid
    #   <p>The business-scoped user identifier (BSUID) of the end user for which to retrieve the calling permission.</p>
    #   @return [String]
    class GetWhatsAppCallPermissionInput < Struct.new(
      nil,
      :origination_phone_number_id,
      :destination_phone_number,
      :end_user_bsuid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute permission
    #   <p>The current calling permission state for the end user.</p>
    #   @return [Types::WhatsAppCallPermission]
    # @!attribute actions
    #   <p>The calling actions the business can take with the end user, and any limits that apply to each action.</p>
    #   @return [Array<Types::WhatsAppCallPermissionAction>]
    class GetWhatsAppCallPermissionOutput < Struct.new(
      nil,
      :permission,
      :actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    #   @return [String]
    # @!attribute flow_id
    #   <p>The unique identifier of the Flow to retrieve.</p>
    #   @return [String]
    class GetWhatsAppFlowInput < Struct.new(
      nil,
      :id,
      :flow_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_id
    #   <p>The unique identifier of the Flow.</p>
    #   @return [String]
    # @!attribute flow_name
    #   <p>The name of the Flow.</p>
    #   @return [String]
    # @!attribute flow_status
    #   <p>The lifecycle status of the Flow. Valid values are DRAFT, PUBLISHED, DEPRECATED, BLOCKED, and THROTTLED.</p>
    #   @return [String]
    # @!attribute categories
    #   <p>The categories that classify the business purpose of the Flow.</p>
    #   @return [Array<String>]
    # @!attribute validation_errors
    #   <p>A list of validation errors from Meta, if any.</p>
    #   @return [Array<String>]
    # @!attribute json_version
    #   <p>The version of the Flow JSON schema used by this Flow (for example, 7.3).</p>
    #   @return [String]
    # @!attribute data_api_version
    #   <p>The data API version for data exchange endpoint Flows.</p>
    #   @return [String]
    # @!attribute endpoint_uri
    #   <p>The HTTPS endpoint that Meta calls for a data exchange Flow.</p>
    #   @return [String]
    # @!attribute preview
    #   <p>The preview URL and its expiration timestamp for testing the Flow.</p>
    #   @return [Types::MetaFlowPreviewInfo]
    # @!attribute whats_app_business_account
    #   <p>The WhatsApp Business Account information from Meta associated with this Flow.</p>
    #   @return [Types::MetaFlowWhatsAppBusinessAccountInfo]
    # @!attribute application
    #   <p>The Meta application information associated with this Flow.</p>
    #   @return [Types::MetaFlowApplicationInfo]
    # @!attribute health_status
    #   <p>The health status information for this Flow from Meta.</p>
    #   @return [Types::MetaFlowHealthStatus]
    class GetWhatsAppFlowOutput < Struct.new(
      nil,
      :flow_id,
      :flow_name,
      :flow_status,
      :categories,
      :validation_errors,
      :json_version,
      :data_api_version,
      :endpoint_uri,
      :preview,
      :whats_app_business_account,
      :application,
      :health_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    #   @return [String]
    # @!attribute flow_id
    #   <p>The unique identifier of the Flow to preview.</p>
    #   @return [String]
    # @!attribute invalidate
    #   <p>Set to <code>true</code> to force generation of a new preview URL. Use this if the previous URL has been compromised or you want a fresh expiration period.</p>
    #   @return [Boolean]
    class GetWhatsAppFlowPreviewInput < Struct.new(
      nil,
      :id,
      :flow_id,
      :invalidate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_id
    #   <p>The unique identifier of the Flow.</p>
    #   @return [String]
    # @!attribute preview
    #   <p>The preview URL and its expiration timestamp.</p>
    #   @return [Types::MetaFlowPreviewInfo]
    class GetWhatsAppFlowPreviewOutput < Struct.new(
      nil,
      :flow_id,
      :preview,
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
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's
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
      nil,
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
    #   <p>The size of the media file, in KB.</p>
    #   @return [Integer]
    class GetWhatsAppMessageMediaOutput < Struct.new(
      nil,
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
    # @!attribute template_name
    #   <p>The name of the message template. Use together with <code>templateLanguageCode</code> as an alternative to <code>metaTemplateId</code> to identify a template.</p>
    #   @return [String]
    # @!attribute template_language_code
    #   <p>The language code of the message template (for example, <code>en</code> or <code>en_US</code>). Use together with <code>templateName</code> as an alternative to <code>metaTemplateId</code> to identify a template.</p>
    #   @return [String]
    class GetWhatsAppMessageTemplateInput < Struct.new(
      nil,
      :meta_template_id,
      :id,
      :template_name,
      :template_language_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template
    #   <p>The complete template definition as a JSON string (maximum 6000 characters).</p>
    #   @return [String]
    class GetWhatsAppMessageTemplateOutput < Struct.new(
      nil,
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
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameters provided to the action are not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParametersException < Struct.new(
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
    # @!attribute marketing_messages_onboarding_status
    #   <p>The onboarding status for the Marketing Messages API. This value is fetched from Meta and indicates whether the WhatsApp Business Account is onboarded for Meta's Marketing Messages API.</p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p>The Meta Conversions API dataset ID associated with this WhatsApp Business Account. This value is a numeric string of 10 to 20 digits. This field is not present when no dataset has been created for this account.</p>
    #   @return [String]
    # @!attribute phone_numbers
    #   <p>The phone numbers associated with the Linked WhatsApp Business Account.</p>
    #   @return [Array<Types::WhatsAppPhoneNumberSummary>]
    class LinkedWhatsAppBusinessAccount < Struct.new(
      nil,
      :arn,
      :id,
      :waba_id,
      :registration_status,
      :link_date,
      :waba_name,
      :event_destinations,
      :marketing_messages_onboarding_status,
      :dataset_id,
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
      nil,
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
    # @!attribute marketing_messages_onboarding_status
    #   <p>The onboarding status for the Marketing Messages API. This value is fetched from Meta and indicates whether the WhatsApp Business Account is onboarded for Meta's Marketing Messages API.</p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p>The Meta Conversions API dataset ID associated with this WhatsApp Business Account. This value is a numeric string of 10 to 20 digits. This field is not present when no dataset has been created for this account.</p>
    #   @return [String]
    class LinkedWhatsAppBusinessAccountSummary < Struct.new(
      nil,
      :arn,
      :id,
      :waba_id,
      :registration_status,
      :link_date,
      :waba_name,
      :event_destinations,
      :marketing_messages_onboarding_status,
      :dataset_id,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
      :status_code,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    #   @return [String]
    # @!attribute flow_id
    #   <p>The unique identifier of the Flow whose assets to list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListWhatsAppFlowAssetsInput < Struct.new(
      nil,
      :id,
      :flow_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_assets
    #   <p>A list of Flow assets with download URLs.</p>
    #   @return [Array<Types::MetaFlowAsset>]
    # @!attribute next_token
    #   <p>The token to retrieve the next page of results, if any.</p>
    #   @return [String]
    class ListWhatsAppFlowAssetsOutput < Struct.new(
      nil,
      :flow_assets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account to list Flows for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListWhatsAppFlowsInput < Struct.new(
      nil,
      :id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flows
    #   <p>A list of Flow summaries.</p>
    #   @return [Array<Types::MetaFlowSummary>]
    # @!attribute next_token
    #   <p>The token to retrieve the next page of results, if any.</p>
    #   @return [String]
    class ListWhatsAppFlowsOutput < Struct.new(
      nil,
      :flows,
      :next_token,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
      :meta_library_templates,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the Meta application metadata associated with a WhatsApp Flow.</p>
    # @!attribute link
    #   <p>The URL link for the Meta application.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Meta application.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the Meta application.</p>
    #   @return [String]
    class MetaFlowApplicationInfo < Struct.new(
      nil,
      :link,
      :name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single asset file associated with a WhatsApp Flow, including a presigned download URL.</p>
    # @!attribute name
    #   <p>The filename of the asset (for example, flow.json).</p>
    #   @return [String]
    # @!attribute asset_type
    #   <p>The type of asset. Currently the only supported value is FLOW_JSON.</p>
    #   @return [String]
    # @!attribute download_url
    #   <p>A presigned URL from Meta for downloading the asset. The URL expires after a short period.</p>
    #   @return [String]
    class MetaFlowAsset < Struct.new(
      nil,
      :name,
      :asset_type,
      :download_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single entity in the health status check for a WhatsApp Flow.</p>
    # @!attribute entity_type
    #   <p>The type of entity (for example, FLOW, WABA, BUSINESS, or APP).</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the entity.</p>
    #   @return [String]
    # @!attribute can_send_message
    #   <p>The messaging availability status for this entity (for example, AVAILABLE, LIMITED, or BLOCKED).</p>
    #   @return [String]
    class MetaFlowHealthEntity < Struct.new(
      nil,
      :entity_type,
      :id,
      :can_send_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the overall health status and per-entity breakdown for a WhatsApp Flow.</p>
    # @!attribute can_send_message
    #   <p>The overall messaging availability status (for example, AVAILABLE, LIMITED, or BLOCKED).</p>
    #   @return [String]
    # @!attribute entities
    #   <p>A list of health status entities with per-entity availability information.</p>
    #   @return [Array<Types::MetaFlowHealthEntity>]
    class MetaFlowHealthStatus < Struct.new(
      nil,
      :can_send_message,
      :entities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the preview URL for testing a WhatsApp Flow and its expiration timestamp.</p>
    # @!attribute preview_url
    #   <p>The web URL for previewing the Flow. Can be shared with stakeholders for review.</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The timestamp when the preview URL expires.</p>
    #   @return [String]
    class MetaFlowPreviewInfo < Struct.new(
      nil,
      :preview_url,
      :expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a WhatsApp Flow, including its ID, name, status, and categories.</p>
    # @!attribute flow_id
    #   <p>The unique identifier of the Flow assigned by Meta.</p>
    #   @return [String]
    # @!attribute flow_name
    #   <p>The name of the Flow.</p>
    #   @return [String]
    # @!attribute flow_status
    #   <p>The lifecycle status of the Flow (DRAFT, PUBLISHED, DEPRECATED, BLOCKED, or THROTTLED).</p>
    #   @return [String]
    # @!attribute flow_categories
    #   <p>The categories that classify the business purpose of the Flow.</p>
    #   @return [Array<String>]
    # @!attribute validation_errors
    #   <p>A list of validation errors from Meta, if any.</p>
    #   @return [Array<String>]
    class MetaFlowSummary < Struct.new(
      nil,
      :flow_id,
      :flow_name,
      :flow_status,
      :flow_categories,
      :validation_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains WhatsApp Business Account metadata associated with a Flow, as returned by Meta.</p>
    # @!attribute id
    #   <p>The WhatsApp Business Account ID from Meta.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the WhatsApp Business Account.</p>
    #   @return [String]
    # @!attribute currency
    #   <p>The currency code for the WhatsApp Business Account (for example, USD).</p>
    #   @return [String]
    # @!attribute timezone_id
    #   <p>The timezone ID for the WhatsApp Business Account.</p>
    #   @return [String]
    # @!attribute message_template_namespace
    #   <p>The message template namespace for the WhatsApp Business Account.</p>
    #   @return [String]
    class MetaFlowWhatsAppBusinessAccountInfo < Struct.new(
      nil,
      :id,
      :name,
      :currency,
      :timezone_id,
      :message_template_namespace,
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
      nil,
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
    # @!attribute template_body_example_params
    #   <p>Example parameter values for the template body, used to demonstrate how dynamic content appears in the template.</p>
    #   @return [Array<String>]
    class MetaLibraryTemplateDefinition < Struct.new(
      nil,
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
      :template_body_example_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_phone_number_id
    #   <p>The ID of the phone number to associate with the WhatsApp media file. The phone number
    #            identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>.
    #            Use <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html">GetLinkedWhatsAppBusinessAccount</a>
    #            to find a phone number's id.</p>
    #   @return [String]
    # @!attribute source_s3_presigned_url
    #   <p>The source presign url of the media file.</p>
    #   @return [Types::S3PresignedUrl]
    # @!attribute source_s3_file
    #   <p>The source S3 url for the media file.</p>
    #   @return [Types::S3File]
    class PostWhatsAppMessageMediaInput < Struct.new(
      nil,
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
      nil,
      :media_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    #   @return [String]
    # @!attribute flow_id
    #   <p>The unique identifier of the Flow to publish.</p>
    #   @return [String]
    class PublishWhatsAppFlowInput < Struct.new(
      nil,
      :id,
      :flow_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PublishWhatsAppFlowOutput < Struct.new(
      nil,
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
      nil,
      :id,
      :event_destinations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutWhatsAppBusinessAccountEventDestinationsOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_phone_number_id
    #   <p>The unique identifier of the phone number to associate with the business public key.</p>
    #   @return [String]
    # @!attribute business_public_key
    #   <p>The PEM-encoded 2048-bit RSA public key to set. Mutually exclusive with <code>kmsKeyArn</code>.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of a customer managed asymmetric RSA key in Amazon Web Services KMS. Mutually exclusive with <code>businessPublicKey</code>.</p>
    #   @return [String]
    class PutWhatsAppBusinessPublicKeyInput < Struct.new(
      nil,
      :origination_phone_number_id,
      :business_public_key,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutWhatsAppBusinessPublicKeyOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
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
    #   <p>The S3 key prefix that defines the storage location of your media files. The prefix works like a folder path in S3,
    #            and is combined with the WhatsApp mediaId to create the final file path.</p>
    #            <p>For example, if a media file's WhatsApp mediaId is <code>123.ogg</code>, and the key is <code>audio/example.ogg</code>,
    #            the final file path is <code>audio/example.ogg123.ogg</code>.</p>
    #            <p>For the same mediaId, a key of <code>audio/</code> results in the file path <code>audio/123.ogg</code>.</p>
    #   @return [String]
    class S3File < Struct.new(
      nil,
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
      nil,
      :url,
      :headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_phone_number_id
    #   <p>The unique identifier of the origination phone number for the call. The phone number identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>. Use <code>GetLinkedWhatsAppBusinessAccount</code> to find a phone number's ID.</p>
    #   @return [String]
    # @!attribute meta_api_version
    #   <p>The version of the Meta Graph API to use for the request.</p>
    #   @return [String]
    # @!attribute call_event
    #   <p>The call event payload to send, as a JSON blob in the format defined by the Meta calling API.</p>
    #   @return [String]
    class SendWhatsAppCallEventInput < Struct.new(
      nil,
      :origination_phone_number_id,
      :meta_api_version,
      :call_event,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute call_id
    #   <p>The unique identifier that Meta assigns to the call.</p>
    #   @return [String]
    class SendWhatsAppCallEventOutput < Struct.new(
      nil,
      :call_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account associated with the dataset, formatted as <code>waba-01234567890123456789012345678901</code>.</p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p>The Meta-generated dataset ID to send the event to.</p>
    #   @return [String]
    # @!attribute event_data
    #   <p>The raw Meta Conversions API event payload as a JSON blob. See <a href="https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/server-event">Meta's server event parameters</a> for the supported format.</p>
    #   @return [String]
    class SendWhatsAppConversionEventInput < Struct.new(
      nil,
      :id,
      :dataset_id,
      :event_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The unique identifier for the conversion event request.</p>
    #   @return [String]
    class SendWhatsAppConversionEventOutput < Struct.new(
      nil,
      :request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination_phone_number_id
    #   <p>The ID of the phone number used to send the WhatsApp message. If you are sending a media
    #            file only the <code>originationPhoneNumberId</code> used to upload the file can be used.
    #            Phone number identifiers are formatted as
    #               <code>phone-number-id-01234567890123456789012345678901</code>. Use
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html">GetLinkedWhatsAppBusinessAccount</a> to find a phone number's
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the phone number to update. The phone number identifiers are formatted as <code>phone-number-id-01234567890123456789012345678901</code>.</p>
    #   @return [String]
    # @!attribute call_settings
    #   <p>The calling settings to apply to the phone number.</p>
    #   @return [Types::WhatsAppCallSettings]
    class UpdateLinkedWhatsAppBusinessAccountPhoneNumberInput < Struct.new(
      nil,
      :id,
      :call_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>The unique identifier of the phone number that was updated.</p>
    #   @return [String]
    class UpdateLinkedWhatsAppBusinessAccountPhoneNumberOutput < Struct.new(
      nil,
      :phone_number_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    #   @return [String]
    # @!attribute flow_id
    #   <p>The unique identifier of the Flow whose assets to update.</p>
    #   @return [String]
    # @!attribute flow_json
    #   <p>The updated Flow JSON definition. Maximum size is 10 MB.</p>
    #   @return [String]
    class UpdateWhatsAppFlowAssetsInput < Struct.new(
      nil,
      :id,
      :flow_id,
      :flow_json,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute validation_errors
    #   <p>A list of validation errors returned by Meta, if any. Validation errors must be resolved before the Flow can be published.</p>
    #   @return [Array<String>]
    class UpdateWhatsAppFlowAssetsOutput < Struct.new(
      nil,
      :validation_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the WhatsApp Business Account associated with this Flow.</p>
    #   @return [String]
    # @!attribute flow_id
    #   <p>The unique identifier of the Flow to update.</p>
    #   @return [String]
    # @!attribute flow_name
    #   <p>The updated name for the Flow.</p>
    #   @return [String]
    # @!attribute categories
    #   <p>The updated categories for the Flow.</p>
    #   @return [Array<String>]
    # @!attribute endpoint_uri
    #   <p>The updated HTTPS endpoint for a data exchange Flow.</p>
    #   @return [String]
    # @!attribute meta_app_id
    #   <p>The ID of the Meta application to attach to the Flow.</p>
    #   @return [String]
    class UpdateWhatsAppFlowInput < Struct.new(
      nil,
      :id,
      :flow_id,
      :flow_name,
      :categories,
      :endpoint_uri,
      :meta_app_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateWhatsAppFlowOutput < Struct.new(
      nil,
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
    # @!attribute template_name
    #   <p>The name of the message template. Use together with <code>templateLanguageCode</code> as an alternative to <code>metaTemplateId</code> to identify a template.</p>
    #   @return [String]
    # @!attribute template_language_code
    #   <p>The language code of the message template (for example, <code>en</code> or <code>en_US</code>). Use together with <code>templateName</code> as an alternative to <code>metaTemplateId</code> to identify a template.</p>
    #   @return [String]
    # @!attribute parameter_format
    #   <p>The format specification for parameters in the template, this can be either 'named' or 'positional'.</p>
    #   @return [String]
    # @!attribute template_category
    #   <p>The new category for the template (for example, UTILITY or MARKETING).</p>
    #   @return [String]
    # @!attribute template_components
    #   <p>The updated components of the template as a JSON blob (maximum 3000 characters).</p>
    #   @return [String]
    # @!attribute cta_url_link_tracking_opted_out
    #   <p>When true, disables click tracking for call-to-action URL buttons in the template.</p>
    #   @return [Boolean]
    class UpdateWhatsAppMessageTemplateInput < Struct.new(
      nil,
      :id,
      :meta_template_id,
      :template_name,
      :template_language_code,
      :parameter_format,
      :template_category,
      :template_components,
      :cta_url_link_tracking_opted_out,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateWhatsAppMessageTemplateOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request contains an invalid parameter value. </p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The registration details for a linked phone number.</p>
    # @!attribute id
    #   <p>The unique identifier of the originating phone number associated with the media. Phone
    #            number identifiers are formatted as
    #            <code>phone-number-id-01234567890123456789012345678901</code>. Use the
    #            <a href="https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html">GetLinkedWhatsAppBusinessAccount</a>
    #            API action to find a phone number's id.</p>
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
      nil,
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
      nil,
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
      nil,
      :event_destination_arn,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operating hours during which a business phone number accepts WhatsApp calls, including the time zone, weekly schedule, and any holiday overrides.</p>
    # @!attribute enabled
    #   <p>Specifies whether call hours are enforced. When disabled, the business accepts calls at any time.</p>
    #   @return [Boolean]
    # @!attribute timezone
    #   <p>The IANA time zone in which the operating hours are interpreted, such as <code>America/New_York</code>.</p>
    #   @return [String]
    # @!attribute weekly_operating_hours
    #   <p>The weekly schedule of hours during which the business accepts calls.</p>
    #   @return [Array<Types::WhatsAppWeeklyOperatingHoursEntry>]
    # @!attribute holiday_schedule
    #   <p>Date-specific overrides to the weekly operating hours, such as holidays.</p>
    #   @return [Array<Types::WhatsAppHolidayScheduleEntry>]
    class WhatsAppCallHours < Struct.new(
      nil,
      :enabled,
      :timezone,
      :weekly_operating_hours,
      :holiday_schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The current calling permission state for a business phone number and a specific WhatsApp end user.</p>
    # @!attribute status
    #   <p>The permission status for the end user.</p>
    #   @return [String]
    # @!attribute expiration_time
    #   <p>The time when a temporary permission expires. This value is absent for permanent permissions and when there is no permission.</p>
    #   @return [Time]
    class WhatsAppCallPermission < Struct.new(
      nil,
      :status,
      :expiration_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a single calling action the business can take with an end user, including whether the action is currently allowed and any limits that apply to it. Returned as an item in the actions list from <code>GetWhatsAppCallPermission</code>.</p>
    # @!attribute action_name
    #   <p>The name of the calling action.</p>
    #   @return [String]
    # @!attribute can_perform_action
    #   <p>Specifies whether the business can currently perform the action.</p>
    #   @return [Boolean]
    # @!attribute limits
    #   <p>The time-bound limits that apply to the action.</p>
    #   @return [Array<Types::WhatsAppCallPermissionLimit>]
    class WhatsAppCallPermissionAction < Struct.new(
      nil,
      :action_name,
      :can_perform_action,
      :limits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A time-bound restriction on a calling action, such as the number of calls allowed within a time period.</p>
    # @!attribute time_period
    #   <p>The time period over which the limit applies, as an ISO 8601 duration.</p>
    #   @return [String]
    # @!attribute max_allowed
    #   <p>The maximum number of times the action is allowed within the time period.</p>
    #   @return [Integer]
    # @!attribute current_usage
    #   <p>The number of times the action has been used within the current time period.</p>
    #   @return [Integer]
    # @!attribute limit_expiration_time
    #   <p>The time when the limit resets. This value is present only when the current usage has reached the maximum allowed.</p>
    #   @return [Time]
    class WhatsAppCallPermissionLimit < Struct.new(
      nil,
      :time_period,
      :max_allowed,
      :current_usage,
      :limit_expiration_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The calling configuration for a WhatsApp business phone number.</p>
    # @!attribute call_enabled
    #   <p>Specifies whether calling is enabled for the phone number.</p>
    #   @return [Boolean]
    # @!attribute call_hours
    #   <p>The hours during which the business accepts calls on the phone number.</p>
    #   @return [Types::WhatsAppCallHours]
    # @!attribute call_icon_visibility
    #   <p>The visibility setting for the call icon shown to end users in WhatsApp.</p>
    #   @return [String]
    # @!attribute callback_permission_status
    #   <p>The callback permission status for the phone number.</p>
    #   @return [String]
    class WhatsAppCallSettings < Struct.new(
      nil,
      :call_enabled,
      :call_hours,
      :call_icon_visibility,
      :callback_permission_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A date-specific override to the weekly operating hours, such as a holiday.</p>
    # @!attribute date
    #   <p>The date that the override applies to, in ISO 8601 format (<code>YYYY-MM-DD</code>).</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time of day when the business begins accepting calls on the override date.</p>
    #   @return [Types::WhatsAppTimeOfDay]
    # @!attribute end_time
    #   <p>The time of day when the business stops accepting calls on the override date.</p>
    #   @return [Types::WhatsAppTimeOfDay]
    class WhatsAppHolidayScheduleEntry < Struct.new(
      nil,
      :date,
      :start_time,
      :end_time,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
      :associate_in_progress_token,
      :linked_accounts_with_incomplete_setup,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A time of day, expressed as an hour and minute.</p>
    # @!attribute hours
    #   <p>The hour of the day, from 0 to 23.</p>
    #   @return [Integer]
    # @!attribute minutes
    #   <p>The minute of the hour, from 0 to 59.</p>
    #   @return [Integer]
    class WhatsAppTimeOfDay < Struct.new(
      nil,
      :hours,
      :minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single entry in a weekly calling schedule, defining the open and close times for one day of the week.</p>
    # @!attribute day_of_week
    #   <p>The day of the week that the entry applies to.</p>
    #   @return [String]
    # @!attribute open_time
    #   <p>The time of day when the business begins accepting calls.</p>
    #   @return [Types::WhatsAppTimeOfDay]
    # @!attribute close_time
    #   <p>The time of day when the business stops accepting calls.</p>
    #   @return [Types::WhatsAppTimeOfDay]
    class WhatsAppWeeklyOperatingHoursEntry < Struct.new(
      nil,
      :day_of_week,
      :open_time,
      :close_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
