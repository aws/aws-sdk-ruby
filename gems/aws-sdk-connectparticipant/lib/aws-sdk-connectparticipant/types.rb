# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConnectParticipant
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The case-insensitive input to indicate standard MIME type that
    # describes the format of the file that will be uploaded.
    #
    # @!attribute [rw] content_type
    #   Describes the MIME file type of the attachment. For a list of
    #   supported file types, see [Feature specifications][1] in the *Amazon
    #   Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/feature-limits.html
    #   @return [String]
    #
    # @!attribute [rw] attachment_id
    #   A unique identifier for the attachment.
    #   @return [String]
    #
    # @!attribute [rw] attachment_name
    #   A case-sensitive name of the attachment being uploaded.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/AttachmentItem AWS API Documentation
    #
    class AttachmentItem < Struct.new(
      :content_type,
      :attachment_id,
      :attachment_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The attendee information, including attendee ID and join token.
    #
    # @!attribute [rw] attendee_id
    #   The Amazon Chime SDK attendee ID.
    #   @return [String]
    #
    # @!attribute [rw] join_token
    #   The join token used by the Amazon Chime SDK attendee.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/Attendee AWS API Documentation
    #
    class Attendee < Struct.new(
      :attendee_id,
      :join_token)
      SENSITIVE = [:join_token]
      include Aws::Structure
    end

    # Has audio-specific configurations as the operating parameter for Echo
    # Reduction.
    #
    # @!attribute [rw] echo_reduction
    #   Makes echo reduction available to clients who connect to the
    #   meeting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/AudioFeatures AWS API Documentation
    #
    class AudioFeatures < Struct.new(
      :echo_reduction)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The `sessionId` provided in the `authenticationInitiated` event.
    #   @return [String]
    #
    # @!attribute [rw] connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/CancelParticipantAuthenticationRequest AWS API Documentation
    #
    class CancelParticipantAuthenticationRequest < Struct.new(
      :session_id,
      :connection_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/CancelParticipantAuthenticationResponse AWS API Documentation
    #
    class CancelParticipantAuthenticationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] attachment_ids
    #   A list of unique identifiers for the attachments.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/CompleteAttachmentUploadRequest AWS API Documentation
    #
    class CompleteAttachmentUploadRequest < Struct.new(
      :attachment_ids,
      :client_token,
      :connection_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/CompleteAttachmentUploadResponse AWS API Documentation
    #
    class CompleteAttachmentUploadResponse < Aws::EmptyStructure; end

    # The requested operation conflicts with the current state of a service
    # resource associated with the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Connection credentials.
    #
    # @!attribute [rw] connection_token
    #   The connection token.
    #   @return [String]
    #
    # @!attribute [rw] expiry
    #   The expiration of the token.
    #
    #   It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For
    #   example, 2019-11-08T02:41:28.172Z.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/ConnectionCredentials AWS API Documentation
    #
    class ConnectionCredentials < Struct.new(
      :connection_token,
      :expiry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   Type of connection information required. If you need
    #   `CONNECTION_CREDENTIALS` along with marking participant as
    #   connected, pass `CONNECTION_CREDENTIALS` in `Type`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] participant_token
    #   This is a header parameter.
    #
    #   The ParticipantToken as obtained from [StartChatContact][1] API
    #   response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContact.html
    #   @return [String]
    #
    # @!attribute [rw] connect_participant
    #   Amazon Connect Participant is used to mark the participant as
    #   connected for customer participant in message streaming, as well as
    #   for agent or manager participant in non-streaming chats.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/CreateParticipantConnectionRequest AWS API Documentation
    #
    class CreateParticipantConnectionRequest < Struct.new(
      :type,
      :participant_token,
      :connect_participant)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] websocket
    #   Creates the participant's websocket connection.
    #   @return [Types::Websocket]
    #
    # @!attribute [rw] connection_credentials
    #   Creates the participant's connection credentials. The
    #   authentication token associated with the participant's connection.
    #   @return [Types::ConnectionCredentials]
    #
    # @!attribute [rw] web_rtc_connection
    #   Creates the participant's WebRTC connection data required for the
    #   client application (mobile application or website) to connect to the
    #   call.
    #   @return [Types::WebRTCConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/CreateParticipantConnectionResponse AWS API Documentation
    #
    class CreateParticipantConnectionResponse < Struct.new(
      :websocket,
      :connection_credentials,
      :web_rtc_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] view_token
    #   An encrypted token originating from the interactive message of a
    #   ShowView block operation. Represents the desired view.
    #   @return [String]
    #
    # @!attribute [rw] connection_token
    #   The connection token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/DescribeViewRequest AWS API Documentation
    #
    class DescribeViewRequest < Struct.new(
      :view_token,
      :connection_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] view
    #   A view resource object. Contains metadata and content necessary to
    #   render the view.
    #   @return [Types::View]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/DescribeViewResponse AWS API Documentation
    #
    class DescribeViewResponse < Struct.new(
      :view)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/DisconnectParticipantRequest AWS API Documentation
    #
    class DisconnectParticipantRequest < Struct.new(
      :client_token,
      :connection_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/DisconnectParticipantResponse AWS API Documentation
    #
    class DisconnectParticipantResponse < Aws::EmptyStructure; end

    # @!attribute [rw] attachment_id
    #   A unique identifier for the attachment.
    #   @return [String]
    #
    # @!attribute [rw] connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] url_expiry_in_seconds
    #   The expiration time of the URL in ISO timestamp. It's specified in
    #   ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #   2019-11-08T02:41:28.172Z.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/GetAttachmentRequest AWS API Documentation
    #
    class GetAttachmentRequest < Struct.new(
      :attachment_id,
      :connection_token,
      :url_expiry_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] url
    #   This is the pre-signed URL that can be used for uploading the file
    #   to Amazon S3 when used in response to [StartAttachmentUpload][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_StartAttachmentUpload.html
    #   @return [String]
    #
    # @!attribute [rw] url_expiry
    #   The expiration time of the URL in ISO timestamp. It's specified in
    #   ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #   2019-11-08T02:41:28.172Z.
    #   @return [String]
    #
    # @!attribute [rw] attachment_size_in_bytes
    #   The size of the attachment in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/GetAttachmentResponse AWS API Documentation
    #
    class GetAttachmentResponse < Struct.new(
      :url,
      :url_expiry,
      :attachment_size_in_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The sessionId provided in the authenticationInitiated event.
    #   @return [String]
    #
    # @!attribute [rw] redirect_uri
    #   The URL where the customer will be redirected after Amazon Cognito
    #   authorizes the user.
    #   @return [String]
    #
    # @!attribute [rw] connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/GetAuthenticationUrlRequest AWS API Documentation
    #
    class GetAuthenticationUrlRequest < Struct.new(
      :session_id,
      :redirect_uri,
      :connection_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_url
    #   The URL where the customer will sign in to the identity provider.
    #   This URL contains the authorize endpoint for the Cognito UserPool
    #   used in the authentication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/GetAuthenticationUrlResponse AWS API Documentation
    #
    class GetAuthenticationUrlResponse < Struct.new(
      :authentication_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_id
    #   The contactId from the current contact chain for which transcript is
    #   needed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the page. Default: 10.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token. Use the value returned previously in the next
    #   subsequent request to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] scan_direction
    #   The direction from StartPosition from which to retrieve message.
    #   Default: BACKWARD when no StartPosition is provided, FORWARD with
    #   StartPosition.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for the records. Default: DESCENDING.
    #   @return [String]
    #
    # @!attribute [rw] start_position
    #   A filtering option for where to start.
    #   @return [Types::StartPosition]
    #
    # @!attribute [rw] connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/GetTranscriptRequest AWS API Documentation
    #
    class GetTranscriptRequest < Struct.new(
      :contact_id,
      :max_results,
      :next_token,
      :scan_direction,
      :sort_order,
      :start_position,
      :connection_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] initial_contact_id
    #   The initial contact ID for the contact.
    #   @return [String]
    #
    # @!attribute [rw] transcript
    #   The list of messages in the session.
    #   @return [Array<Types::Item>]
    #
    # @!attribute [rw] next_token
    #   The pagination token. Use the value returned previously in the next
    #   subsequent request to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/GetTranscriptResponse AWS API Documentation
    #
    class GetTranscriptResponse < Struct.new(
      :initial_contact_id,
      :transcript,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception occurs when there is an internal failure in the Amazon
    # Connect service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An item - message or event - that has been sent.
    #
    # @!attribute [rw] absolute_time
    #   The time when the message or event was sent.
    #
    #   It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For
    #   example, 2019-11-08T02:41:28.172Z.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the message or event.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The type of content of the item.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the item.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of the item: message or event.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   The ID of the sender in the session.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The chat display name of the sender.
    #   @return [String]
    #
    # @!attribute [rw] participant_role
    #   The role of the sender. For example, is it a customer, agent, or
    #   system.
    #   @return [String]
    #
    # @!attribute [rw] attachments
    #   Provides information about the attachments.
    #   @return [Array<Types::AttachmentItem>]
    #
    # @!attribute [rw] message_metadata
    #   The metadata related to the message. Currently this supports only
    #   information related to message receipts.
    #   @return [Types::MessageMetadata]
    #
    # @!attribute [rw] related_contact_id
    #   The contactId on which the transcript item was originally sent. This
    #   field is only populated for persistent chats when the transcript
    #   item is from the past chat session. For more information, see
    #   [Enable persistent chat][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The contactId on which the transcript item was originally sent. This
    #   field is populated only when the transcript item is from the current
    #   chat session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/Item AWS API Documentation
    #
    class Item < Struct.new(
      :absolute_time,
      :content,
      :content_type,
      :id,
      :type,
      :participant_id,
      :display_name,
      :participant_role,
      :attachments,
      :message_metadata,
      :related_contact_id,
      :contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration settings of the features available to a meeting.
    #
    # @!attribute [rw] audio
    #   The configuration settings for the audio features available to a
    #   meeting.
    #   @return [Types::AudioFeatures]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/MeetingFeaturesConfiguration AWS API Documentation
    #
    class MeetingFeaturesConfiguration < Struct.new(
      :audio)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata related to a message.
    #
    # @!attribute [rw] message_id
    #   The identifier of the message that contains the metadata
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] receipts
    #   The list of receipt information for a message for different
    #   recipients.
    #   @return [Array<Types::Receipt>]
    #
    # @!attribute [rw] message_processing_status
    #   The status of Message Processing for the message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/MessageMetadata AWS API Documentation
    #
    class MessageMetadata < Struct.new(
      :message_id,
      :receipts,
      :message_processing_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata for chat messages.
    #
    # @!attribute [rw] message_processing_status
    #   The status of Message Processing for the message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/MessageProcessingMetadata AWS API Documentation
    #
    class MessageProcessingMetadata < Struct.new(
      :message_processing_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The receipt for the message delivered to the recipient.
    #
    # @!attribute [rw] delivered_timestamp
    #   The time when the message was delivered to the recipient.
    #   @return [String]
    #
    # @!attribute [rw] read_timestamp
    #   The time when the message was read by the recipient.
    #   @return [String]
    #
    # @!attribute [rw] recipient_participant_id
    #   The identifier of the recipient of the message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/Receipt AWS API Documentation
    #
    class Receipt < Struct.new(
      :delivered_timestamp,
      :read_timestamp,
      :recipient_participant_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Connect resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   The content type of the request. Supported types are:
    #
    #   * application/vnd.amazonaws.connect.event.typing
    #
    #   * application/vnd.amazonaws.connect.event.connection.acknowledged
    #     (is no longer maintained since December 31, 2024)
    #
    #   * application/vnd.amazonaws.connect.event.message.delivered
    #
    #   * application/vnd.amazonaws.connect.event.message.read
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the event to be sent (for example, message text). For
    #   content related to message receipts, this is supported in the form
    #   of a JSON string.
    #
    #   Sample Content:
    #   "\{\\"messageId\\":\\"11111111-aaaa-bbbb-cccc-EXAMPLE01234\\"}"
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/SendEventRequest AWS API Documentation
    #
    class SendEventRequest < Struct.new(
      :content_type,
      :content,
      :client_token,
      :connection_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the response.
    #   @return [String]
    #
    # @!attribute [rw] absolute_time
    #   The time when the event was sent.
    #
    #   It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For
    #   example, 2019-11-08T02:41:28.172Z.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/SendEventResponse AWS API Documentation
    #
    class SendEventResponse < Struct.new(
      :id,
      :absolute_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   The type of the content. Possible types are `text/plain`,
    #   `text/markdown`, `application/json`, and
    #   `application/vnd.amazonaws.connect.message.interactive.response`.
    #
    #   Supported types on the contact are configured through
    #   `SupportedMessagingContentTypes` on [StartChatContact][1] and
    #   [StartOutboundChatContact][2].
    #
    #   For Apple Messages for Business, SMS, and WhatsApp Business
    #   Messaging contacts, only `text/plain` is supported.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContact.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_StartOutboundChatContact.html
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the message.
    #
    #   * For `text/plain` and `text/markdown`, the Length Constraints are
    #     Minimum of 1, Maximum of 1024.
    #
    #   * For `application/json`, the Length Constraints are Minimum of 1,
    #     Maximum of 12000.
    #
    #   * For
    #     `application/vnd.amazonaws.connect.message.interactive.response`,
    #     the Length Constraints are Minimum of 1, Maximum of 12288.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] connection_token
    #   The authentication token associated with the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/SendMessageRequest AWS API Documentation
    #
    class SendMessageRequest < Struct.new(
      :content_type,
      :content,
      :client_token,
      :connection_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the message.
    #   @return [String]
    #
    # @!attribute [rw] absolute_time
    #   The time when the message was sent.
    #
    #   It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For
    #   example, 2019-11-08T02:41:28.172Z.
    #   @return [String]
    #
    # @!attribute [rw] message_metadata
    #   Contains metadata for the message.
    #   @return [Types::MessageProcessingMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/SendMessageResponse AWS API Documentation
    #
    class SendMessageResponse < Struct.new(
      :id,
      :absolute_time,
      :message_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of attachments per contact exceeds the quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   Describes the MIME file type of the attachment. For a list of
    #   supported file types, see [Feature specifications][1] in the *Amazon
    #   Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/feature-limits.html
    #   @return [String]
    #
    # @!attribute [rw] attachment_size_in_bytes
    #   The size of the attachment in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] attachment_name
    #   A case-sensitive name of the attachment being uploaded.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] connection_token
    #   The authentication token associated with the participant's
    #   connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/StartAttachmentUploadRequest AWS API Documentation
    #
    class StartAttachmentUploadRequest < Struct.new(
      :content_type,
      :attachment_size_in_bytes,
      :attachment_name,
      :client_token,
      :connection_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachment_id
    #   A unique identifier for the attachment.
    #   @return [String]
    #
    # @!attribute [rw] upload_metadata
    #   The headers to be provided while uploading the file to the URL.
    #   @return [Types::UploadMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/StartAttachmentUploadResponse AWS API Documentation
    #
    class StartAttachmentUploadResponse < Struct.new(
      :attachment_id,
      :upload_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filtering option for where to start. For example, if you sent 100
    # messages, start with message 50.
    #
    # @!attribute [rw] id
    #   The ID of the message or event where to start.
    #   @return [String]
    #
    # @!attribute [rw] absolute_time
    #   The time in ISO format where to start.
    #
    #   It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For
    #   example, 2019-11-08T02:41:28.172Z.
    #   @return [String]
    #
    # @!attribute [rw] most_recent
    #   The start position of the most recent message where you want to
    #   start.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/StartPosition AWS API Documentation
    #
    class StartPosition < Struct.new(
      :id,
      :absolute_time,
      :most_recent)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Fields to be used while uploading the attachment.
    #
    # @!attribute [rw] url
    #   This is the pre-signed URL that can be used for uploading the file
    #   to Amazon S3 when used in response to [StartAttachmentUpload][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_StartAttachmentUpload.html
    #   @return [String]
    #
    # @!attribute [rw] url_expiry
    #   The expiration time of the URL in ISO timestamp. It's specified in
    #   ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #   2019-11-08T02:41:28.172Z.
    #   @return [String]
    #
    # @!attribute [rw] headers_to_include
    #   The headers to be provided while uploading the file to the URL.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/UploadMetadata AWS API Documentation
    #
    class UploadMetadata < Struct.new(
      :url,
      :url_expiry,
      :headers_to_include)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by Amazon
    # Connect.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A view resource object. Contains metadata and content necessary to
    # render the view.
    #
    # @!attribute [rw] id
    #   The identifier of the view.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the view.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the view.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The current version of the view.
    #   @return [Integer]
    #
    # @!attribute [rw] content
    #   View content containing all content necessary to render a view
    #   except for runtime input data.
    #   @return [Types::ViewContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/View AWS API Documentation
    #
    class View < Struct.new(
      :id,
      :arn,
      :name,
      :version,
      :content)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # View content containing all content necessary to render a view except
    # for runtime input data.
    #
    # @!attribute [rw] input_schema
    #   The schema representing the input data that the view template must
    #   be supplied to render.
    #   @return [String]
    #
    # @!attribute [rw] template
    #   The view template representing the structure of the view.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   A list of actions possible from the view
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/ViewContent AWS API Documentation
    #
    class ViewContent < Struct.new(
      :input_schema,
      :template,
      :actions)
      SENSITIVE = [:input_schema, :template, :actions]
      include Aws::Structure
    end

    # Creates the participant’s WebRTC connection data required for the
    # client application (mobile or web) to connect to the call.
    #
    # @!attribute [rw] attendee
    #   The attendee information, including attendee ID and join token.
    #   @return [Types::Attendee]
    #
    # @!attribute [rw] meeting
    #   A meeting created using the Amazon Chime SDK.
    #   @return [Types::WebRTCMeeting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/WebRTCConnection AWS API Documentation
    #
    class WebRTCConnection < Struct.new(
      :attendee,
      :meeting)
      SENSITIVE = []
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
    # @!attribute [rw] signaling_url
    #   The signaling URL.
    #   @return [String]
    #
    # @!attribute [rw] event_ingestion_url
    #   The event ingestion URL to which you send client meeting events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/WebRTCMediaPlacement AWS API Documentation
    #
    class WebRTCMediaPlacement < Struct.new(
      :audio_host_url,
      :audio_fallback_url,
      :signaling_url,
      :event_ingestion_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A meeting created using the Amazon Chime SDK.
    #
    # @!attribute [rw] media_placement
    #   The media placement for the meeting.
    #   @return [Types::WebRTCMediaPlacement]
    #
    # @!attribute [rw] meeting_features
    #   The configuration settings of the features available to a meeting.
    #   @return [Types::MeetingFeaturesConfiguration]
    #
    # @!attribute [rw] meeting_id
    #   The Amazon Chime SDK meeting ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/WebRTCMeeting AWS API Documentation
    #
    class WebRTCMeeting < Struct.new(
      :media_placement,
      :meeting_features,
      :meeting_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The websocket for the participant's connection.
    #
    # @!attribute [rw] url
    #   The URL of the websocket.
    #   @return [String]
    #
    # @!attribute [rw] connection_expiry
    #   The URL expiration timestamp in ISO date format.
    #
    #   It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For
    #   example, 2019-11-08T02:41:28.172Z.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectparticipant-2018-09-07/Websocket AWS API Documentation
    #
    class Websocket < Struct.new(
      :url,
      :connection_expiry)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

