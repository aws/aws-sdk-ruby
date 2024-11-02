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
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/LinkedWhatsAppBusinessAccountIdMetaData AWS API Documentation
    #
    class LinkedWhatsAppBusinessAccountIdMetaData < Struct.new(
      :account_name,
      :registration_status,
      :unregistered_whats_app_phone_numbers)
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
    #   The API version for the request formatted as `v\{VersionNumber\}`.
    #   For a list of supported API versions and Amazon Web Services
    #   Regions, see [ *Amazon Web Services End User Messaging Social API*
    #   Service Endpoints][1] in the *Amazon Web Services General
    #   Reference*.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/WhatsAppBusinessAccountEventDestination AWS API Documentation
    #
    class WhatsAppBusinessAccountEventDestination < Struct.new(
      :event_destination_arn)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/WhatsAppPhoneNumberDetail AWS API Documentation
    #
    class WhatsAppPhoneNumberDetail < Struct.new(
      :arn,
      :phone_number,
      :phone_number_id,
      :meta_phone_number_id,
      :display_phone_number_name,
      :display_phone_number,
      :quality_rating)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/WhatsAppPhoneNumberSummary AWS API Documentation
    #
    class WhatsAppPhoneNumberSummary < Struct.new(
      :arn,
      :phone_number,
      :phone_number_id,
      :meta_phone_number_id,
      :display_phone_number_name,
      :display_phone_number,
      :quality_rating)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/socialmessaging-2024-01-01/WhatsAppSignupCallback AWS API Documentation
    #
    class WhatsAppSignupCallback < Struct.new(
      :access_token)
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

