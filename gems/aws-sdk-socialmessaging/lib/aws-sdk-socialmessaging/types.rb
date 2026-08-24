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
    # @!attribute [rw] linked_whats_app_business_account_id
    #   The ID of the WhatsApp Business Account that was linked to your
    #   Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/AssociateWhatsAppBusinessAccountOutput AWS API Documentation
    #
    class AssociateWhatsAppBusinessAccountOutput < Struct.new(
      :signup_callback_result,
      :status_code,
      :linked_whats_app_business_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account to create a dataset for,
    #   formatted as `waba-01234567890123456789012345678901`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/CreateWhatsAppDatasetInput AWS API Documentation
    #
    class CreateWhatsAppDatasetInput < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_id
    #   The Meta-generated dataset ID, a numeric string of 10 to 20 digits.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/CreateWhatsAppDatasetOutput AWS API Documentation
    #
    class CreateWhatsAppDatasetOutput < Struct.new(
      :dataset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account to associate with this Flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_name
    #   The name of the Flow. Must be unique within the WhatsApp Business
    #   Account.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   The categories that classify the business purpose of the Flow. At
    #   least one category is required.
    #   @return [Array<String>]
    #
    # @!attribute [rw] flow_json
    #   The Flow JSON definition that describes the screens, components, and
    #   logic of the Flow. Maximum size is 10 MB.
    #   @return [String]
    #
    # @!attribute [rw] publish
    #   Set to `true` to publish the Flow immediately after creation.
    #   Requires a valid `flowJson` that passes Meta's validation.
    #   @return [Boolean]
    #
    # @!attribute [rw] clone_flow_id
    #   The ID of an existing Flow within the same WhatsApp Business Account
    #   to clone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/CreateWhatsAppFlowInput AWS API Documentation
    #
    class CreateWhatsAppFlowInput < Struct.new(
      :id,
      :flow_name,
      :categories,
      :flow_json,
      :publish,
      :clone_flow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_id
    #   The unique identifier assigned to the Flow by Meta.
    #   @return [String]
    #
    # @!attribute [rw] validation_errors
    #   A list of validation errors returned by Meta, if any. Validation
    #   errors must be resolved before the Flow can be published.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/CreateWhatsAppFlowOutput AWS API Documentation
    #
    class CreateWhatsAppFlowOutput < Struct.new(
      :flow_id,
      :validation_errors)
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

    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account associated with this Flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the Flow to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/DeleteWhatsAppFlowInput AWS API Documentation
    #
    class DeleteWhatsAppFlowInput < Struct.new(
      :id,
      :flow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/DeleteWhatsAppFlowOutput AWS API Documentation
    #
    class DeleteWhatsAppFlowOutput < Aws::EmptyStructure; end

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
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html
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
    #   The ID of the WhatsApp Business Account associated with this Flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the Flow to deprecate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/DeprecateWhatsAppFlowInput AWS API Documentation
    #
    class DeprecateWhatsAppFlowInput < Struct.new(
      :id,
      :flow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/DeprecateWhatsAppFlowOutput AWS API Documentation
    #
    class DeprecateWhatsAppFlowOutput < Aws::EmptyStructure; end

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
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html
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

    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account associated with this Flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the Flow to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetWhatsAppFlowInput AWS API Documentation
    #
    class GetWhatsAppFlowInput < Struct.new(
      :id,
      :flow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_id
    #   The unique identifier of the Flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_name
    #   The name of the Flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_status
    #   The lifecycle status of the Flow. Valid values are DRAFT, PUBLISHED,
    #   DEPRECATED, BLOCKED, and THROTTLED.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   The categories that classify the business purpose of the Flow.
    #   @return [Array<String>]
    #
    # @!attribute [rw] validation_errors
    #   A list of validation errors from Meta, if any.
    #   @return [Array<String>]
    #
    # @!attribute [rw] json_version
    #   The version of the Flow JSON schema used by this Flow (for example,
    #   7.3).
    #   @return [String]
    #
    # @!attribute [rw] data_api_version
    #   The data API version for data exchange endpoint Flows.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_uri
    #   The endpoint URI for data exchange Flows, if configured.
    #   @return [String]
    #
    # @!attribute [rw] preview
    #   The preview URL and its expiration timestamp for testing the Flow.
    #   @return [Types::MetaFlowPreviewInfo]
    #
    # @!attribute [rw] whats_app_business_account
    #   The WhatsApp Business Account information from Meta associated with
    #   this Flow.
    #   @return [Types::MetaFlowWhatsAppBusinessAccountInfo]
    #
    # @!attribute [rw] application
    #   The Meta application information associated with this Flow.
    #   @return [Types::MetaFlowApplicationInfo]
    #
    # @!attribute [rw] health_status
    #   The health status information for this Flow from Meta.
    #   @return [Types::MetaFlowHealthStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetWhatsAppFlowOutput AWS API Documentation
    #
    class GetWhatsAppFlowOutput < Struct.new(
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
      :health_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account associated with this Flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the Flow to preview.
    #   @return [String]
    #
    # @!attribute [rw] invalidate
    #   Set to `true` to force generation of a new preview URL. Use this if
    #   the previous URL has been compromised or you want a fresh expiration
    #   period.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetWhatsAppFlowPreviewInput AWS API Documentation
    #
    class GetWhatsAppFlowPreviewInput < Struct.new(
      :id,
      :flow_id,
      :invalidate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_id
    #   The unique identifier of the Flow.
    #   @return [String]
    #
    # @!attribute [rw] preview
    #   The preview URL and its expiration timestamp.
    #   @return [Types::MetaFlowPreviewInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetWhatsAppFlowPreviewOutput AWS API Documentation
    #
    class GetWhatsAppFlowPreviewOutput < Struct.new(
      :flow_id,
      :preview)
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
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html
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
    #   The size of the media file, in KB.
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
    # @!attribute [rw] template_name
    #   The name of the message template. Use together with
    #   `templateLanguageCode` as an alternative to `metaTemplateId` to
    #   identify a template.
    #   @return [String]
    #
    # @!attribute [rw] template_language_code
    #   The language code of the message template (for example, `en` or
    #   `en_US`). Use together with `templateName` as an alternative to
    #   `metaTemplateId` to identify a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/GetWhatsAppMessageTemplateInput AWS API Documentation
    #
    class GetWhatsAppMessageTemplateInput < Struct.new(
      :meta_template_id,
      :id,
      :template_name,
      :template_language_code)
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
    # @!attribute [rw] marketing_messages_onboarding_status
    #   The onboarding status for the Marketing Messages API. This value is
    #   fetched from Meta and indicates whether the WhatsApp Business
    #   Account is onboarded for Meta's Marketing Messages API.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The Meta Conversions API dataset ID associated with this WhatsApp
    #   Business Account. This value is a numeric string of 10 to 20 digits.
    #   This field is not present when no dataset has been created for this
    #   account.
    #   @return [String]
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
      :marketing_messages_onboarding_status,
      :dataset_id,
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
    # @!attribute [rw] marketing_messages_onboarding_status
    #   The onboarding status for the Marketing Messages API. This value is
    #   fetched from Meta and indicates whether the WhatsApp Business
    #   Account is onboarded for Meta's Marketing Messages API.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The Meta Conversions API dataset ID associated with this WhatsApp
    #   Business Account. This value is a numeric string of 10 to 20 digits.
    #   This field is not present when no dataset has been created for this
    #   account.
    #   @return [String]
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
      :event_destinations,
      :marketing_messages_onboarding_status,
      :dataset_id)
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
    #   The ID of the WhatsApp Business Account associated with this Flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the Flow whose assets to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ListWhatsAppFlowAssetsInput AWS API Documentation
    #
    class ListWhatsAppFlowAssetsInput < Struct.new(
      :id,
      :flow_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_assets
    #   A list of Flow assets with download URLs.
    #   @return [Array<Types::MetaFlowAsset>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ListWhatsAppFlowAssetsOutput AWS API Documentation
    #
    class ListWhatsAppFlowAssetsOutput < Struct.new(
      :flow_assets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account to list Flows for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ListWhatsAppFlowsInput AWS API Documentation
    #
    class ListWhatsAppFlowsInput < Struct.new(
      :id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flows
    #   A list of Flow summaries.
    #   @return [Array<Types::MetaFlowSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/ListWhatsAppFlowsOutput AWS API Documentation
    #
    class ListWhatsAppFlowsOutput < Struct.new(
      :flows,
      :next_token)
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

    # Contains the Meta application metadata associated with a WhatsApp
    # Flow.
    #
    # @!attribute [rw] link
    #   The URL link for the Meta application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Meta application.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the Meta application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/MetaFlowApplicationInfo AWS API Documentation
    #
    class MetaFlowApplicationInfo < Struct.new(
      :link,
      :name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single asset file associated with a WhatsApp Flow,
    # including a presigned download URL.
    #
    # @!attribute [rw] name
    #   The filename of the asset (for example, flow.json).
    #   @return [String]
    #
    # @!attribute [rw] asset_type
    #   The type of asset. Currently the only supported value is FLOW\_JSON.
    #   @return [String]
    #
    # @!attribute [rw] download_url
    #   A presigned URL from Meta for downloading the asset. The URL expires
    #   after a short period.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/MetaFlowAsset AWS API Documentation
    #
    class MetaFlowAsset < Struct.new(
      :name,
      :asset_type,
      :download_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single entity in the health status check for a WhatsApp
    # Flow.
    #
    # @!attribute [rw] entity_type
    #   The type of entity (for example, FLOW, WABA, BUSINESS, or APP).
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the entity.
    #   @return [String]
    #
    # @!attribute [rw] can_send_message
    #   The messaging availability status for this entity (for example,
    #   AVAILABLE, LIMITED, or BLOCKED).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/MetaFlowHealthEntity AWS API Documentation
    #
    class MetaFlowHealthEntity < Struct.new(
      :entity_type,
      :id,
      :can_send_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the overall health status and per-entity breakdown for a
    # WhatsApp Flow.
    #
    # @!attribute [rw] can_send_message
    #   The overall messaging availability status (for example, AVAILABLE,
    #   LIMITED, or BLOCKED).
    #   @return [String]
    #
    # @!attribute [rw] entities
    #   A list of health status entities with per-entity availability
    #   information.
    #   @return [Array<Types::MetaFlowHealthEntity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/MetaFlowHealthStatus AWS API Documentation
    #
    class MetaFlowHealthStatus < Struct.new(
      :can_send_message,
      :entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the preview URL for testing a WhatsApp Flow and its
    # expiration timestamp.
    #
    # @!attribute [rw] preview_url
    #   The web URL for previewing the Flow. Can be shared with stakeholders
    #   for review.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the preview URL expires.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/MetaFlowPreviewInfo AWS API Documentation
    #
    class MetaFlowPreviewInfo < Struct.new(
      :preview_url,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a WhatsApp Flow, including its ID,
    # name, status, and categories.
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the Flow assigned by Meta.
    #   @return [String]
    #
    # @!attribute [rw] flow_name
    #   The name of the Flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_status
    #   The lifecycle status of the Flow (DRAFT, PUBLISHED, DEPRECATED,
    #   BLOCKED, or THROTTLED).
    #   @return [String]
    #
    # @!attribute [rw] flow_categories
    #   The categories that classify the business purpose of the Flow.
    #   @return [Array<String>]
    #
    # @!attribute [rw] validation_errors
    #   A list of validation errors from Meta, if any.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/MetaFlowSummary AWS API Documentation
    #
    class MetaFlowSummary < Struct.new(
      :flow_id,
      :flow_name,
      :flow_status,
      :flow_categories,
      :validation_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains WhatsApp Business Account metadata associated with a Flow, as
    # returned by Meta.
    #
    # @!attribute [rw] id
    #   The WhatsApp Business Account ID from Meta.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the WhatsApp Business Account.
    #   @return [String]
    #
    # @!attribute [rw] currency
    #   The currency code for the WhatsApp Business Account (for example,
    #   USD).
    #   @return [String]
    #
    # @!attribute [rw] timezone_id
    #   The timezone ID for the WhatsApp Business Account.
    #   @return [String]
    #
    # @!attribute [rw] message_template_namespace
    #   The message template namespace for the WhatsApp Business Account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/MetaFlowWhatsAppBusinessAccountInfo AWS API Documentation
    #
    class MetaFlowWhatsAppBusinessAccountInfo < Struct.new(
      :id,
      :name,
      :currency,
      :timezone_id,
      :message_template_namespace)
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
    # @!attribute [rw] template_body_example_params
    #   Example parameter values for the template body, used to demonstrate
    #   how dynamic content appears in the template.
    #   @return [Array<String>]
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
      :template_id,
      :template_body_example_params)
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
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html
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
    #   The ID of the WhatsApp Business Account associated with this Flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the Flow to publish.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/PublishWhatsAppFlowInput AWS API Documentation
    #
    class PublishWhatsAppFlowInput < Struct.new(
      :id,
      :flow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/PublishWhatsAppFlowOutput AWS API Documentation
    #
    class PublishWhatsAppFlowOutput < Aws::EmptyStructure; end

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
    #   The S3 key prefix that defines the storage location of your media
    #   files. The prefix works like a folder path in S3, and is combined
    #   with the WhatsApp mediaId to create the final file path.
    #
    #   For example, if a media file's WhatsApp mediaId is `123.ogg`, and
    #   the key is `audio/example.ogg`, the final file path is
    #   `audio/example.ogg123.ogg`.
    #
    #   For the same mediaId, a key of `audio/` results in the file path
    #   `audio/123.ogg`.
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

    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account associated with the dataset,
    #   formatted as `waba-01234567890123456789012345678901`.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The Meta-generated dataset ID to send the event to.
    #   @return [String]
    #
    # @!attribute [rw] event_data
    #   The raw Meta Conversions API event payload as a JSON blob. See
    #   [Meta's server event parameters][1] for the supported format.
    #
    #
    #
    #   [1]: https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/server-event
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/SendWhatsAppConversionEventInput AWS API Documentation
    #
    class SendWhatsAppConversionEventInput < Struct.new(
      :id,
      :dataset_id,
      :event_data)
      SENSITIVE = [:event_data]
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The unique identifier for the conversion event request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/SendWhatsAppConversionEventOutput AWS API Documentation
    #
    class SendWhatsAppConversionEventOutput < Struct.new(
      :request_id)
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
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html
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
    #   The ID of the WhatsApp Business Account associated with this Flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the Flow whose assets to update.
    #   @return [String]
    #
    # @!attribute [rw] flow_json
    #   The updated Flow JSON definition. Maximum size is 10 MB.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/UpdateWhatsAppFlowAssetsInput AWS API Documentation
    #
    class UpdateWhatsAppFlowAssetsInput < Struct.new(
      :id,
      :flow_id,
      :flow_json)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] validation_errors
    #   A list of validation errors returned by Meta, if any. Validation
    #   errors must be resolved before the Flow can be published.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/UpdateWhatsAppFlowAssetsOutput AWS API Documentation
    #
    class UpdateWhatsAppFlowAssetsOutput < Struct.new(
      :validation_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account associated with this Flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_id
    #   The unique identifier of the Flow to update.
    #   @return [String]
    #
    # @!attribute [rw] flow_name
    #   The updated name for the Flow.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   The updated categories for the Flow.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/UpdateWhatsAppFlowInput AWS API Documentation
    #
    class UpdateWhatsAppFlowInput < Struct.new(
      :id,
      :flow_id,
      :flow_name,
      :categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/UpdateWhatsAppFlowOutput AWS API Documentation
    #
    class UpdateWhatsAppFlowOutput < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the WhatsApp Business Account associated with this
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] meta_template_id
    #   The numeric ID of the template assigned by Meta.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the message template. Use together with
    #   `templateLanguageCode` as an alternative to `metaTemplateId` to
    #   identify a template.
    #   @return [String]
    #
    # @!attribute [rw] template_language_code
    #   The language code of the message template (for example, `en` or
    #   `en_US`). Use together with `templateName` as an alternative to
    #   `metaTemplateId` to identify a template.
    #   @return [String]
    #
    # @!attribute [rw] parameter_format
    #   The format specification for parameters in the template, this can be
    #   either 'named' or 'positional'.
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
    # @!attribute [rw] cta_url_link_tracking_opted_out
    #   When true, disables click tracking for call-to-action URL buttons in
    #   the template.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/UpdateWhatsAppMessageTemplateInput AWS API Documentation
    #
    class UpdateWhatsAppMessageTemplateInput < Struct.new(
      :id,
      :meta_template_id,
      :template_name,
      :template_language_code,
      :parameter_format,
      :template_category,
      :template_components,
      :cta_url_link_tracking_opted_out)
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
    #   `phone-number-id-01234567890123456789012345678901`. Use the
    #   [GetLinkedWhatsAppBusinessAccount][1] API action to find a phone
    #   number's id.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_GetLinkedWhatsAppBusinessAccount.html
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

